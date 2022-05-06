; ModuleID = '/llk/IR/kernel/irq/irqdomain.c_pt.bc'
source_filename = "../kernel/irq/irqdomain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irqchip_fwnode_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22irqchip_fwnode_ops\22\09\09\09\09\09"
module asm "__kstrtabns_irqchip_fwnode_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_domain_alloc_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_domain_alloc_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns___irq_domain_alloc_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_free_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_free_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_free_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_domain_add:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_domain_add\22\09\09\09\09\09"
module asm "__kstrtabns___irq_domain_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_remove\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_update_bus_token:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_update_bus_token\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_update_bus_token:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_create_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_create_simple\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_create_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_add_legacy:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_add_legacy\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_add_legacy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_create_legacy:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_create_legacy\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_create_legacy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_find_matching_fwspec:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_find_matching_fwspec\22\09\09\09\09\09"
module asm "__kstrtabns_irq_find_matching_fwspec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_check_msi_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_check_msi_remap\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_check_msi_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_set_default_host:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_set_default_host\22\09\09\09\09\09"
module asm "__kstrtabns_irq_set_default_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_get_default_host:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_get_default_host\22\09\09\09\09\09"
module asm "__kstrtabns_irq_get_default_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_associate:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_associate\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_associate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_associate_many:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_associate_many\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_associate_many:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_create_mapping_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_create_mapping_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_irq_create_mapping_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phandle_args_to_fwspec:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phandle_args_to_fwspec\22\09\09\09\09\09"
module asm "__kstrtabns_of_phandle_args_to_fwspec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_create_fwspec_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_create_fwspec_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_irq_create_fwspec_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_create_of_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_create_of_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_irq_create_of_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_dispose_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_dispose_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_irq_dispose_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_resolve_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_resolve_mapping\22\09\09\09\09\09"
module asm "__kstrtabns___irq_resolve_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_xlate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_xlate_onecell\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_xlate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_xlate_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_xlate_twocell\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_xlate_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_xlate_onetwocell:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_xlate_onetwocell\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_xlate_onetwocell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_simple_ops\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_simple_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_translate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_translate_onecell\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_translate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_translate_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_translate_twocell\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_translate_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_reset_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_reset_irq_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_reset_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_create_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_create_hierarchy\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_create_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_disconnect_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_disconnect_hierarchy\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_disconnect_hierarchy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_get_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_get_irq_data\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_get_irq_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_set_hwirq_and_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_set_hwirq_and_chip\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_set_hwirq_and_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_set_info:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_set_info\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_set_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_free_irqs_common:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_free_irqs_common\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_free_irqs_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___irq_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22__irq_domain_alloc_irqs\22\09\09\09\09\09"
module asm "__kstrtabns___irq_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_push_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_push_irq\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_push_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_pop_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_pop_irq\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_pop_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_alloc_irqs_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_alloc_irqs_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_alloc_irqs_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_domain_free_irqs_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_domain_free_irqs_parent\22\09\09\09\09\09"
module asm "__kstrtabns_irq_domain_free_irqs_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irqchip_fwid = type { %struct.fwnode_handle, i32, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@irqchip_fwnode_ops = dso_local constant %struct.fwnode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irqchip_fwnode_get_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_irqchip_fwnode_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_irqchip_fwnode_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_irqchip_fwnode_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irqchip_fwnode_ops to i32), ptr @__kstrtab_irqchip_fwnode_ops, ptr @__kstrtabns_irqchip_fwnode_ops }, section "___ksymtab_gpl+irqchip_fwnode_ops", align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"irqchip@%pa\00", align 1
@__kstrtab___irq_domain_alloc_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_domain_alloc_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_domain_alloc_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_domain_alloc_fwnode to i32), ptr @__kstrtab___irq_domain_alloc_fwnode, ptr @__kstrtabns___irq_domain_alloc_fwnode }, section "___ksymtab_gpl+__irq_domain_alloc_fwnode", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"kernel/irq/irqdomain.c\00", align 1
@__kstrtab_irq_domain_free_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_free_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_free_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_free_fwnode to i32), ptr @__kstrtab_irq_domain_free_fwnode, ptr @__kstrtabns_irq_domain_free_fwnode }, section "___ksymtab_gpl+irq_domain_free_fwnode", align 4
@__irq_domain_add.unknown_domains = internal global %struct.atomic_t zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%pfw\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\013irq: Invalid fwnode type for irqdomain\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"unknown-%d\00", align 1
@__irq_domain_add.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"&domain->revmap_mutex\00", align 1
@irq_domain_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @irq_domain_mutex, i64 12), ptr getelementptr (i8, ptr @irq_domain_mutex, i64 12) } }, align 4
@irq_domain_list = internal global %struct.list_head { ptr @irq_domain_list, ptr @irq_domain_list }, align 4
@__kstrtab___irq_domain_add = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_domain_add = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_domain_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_domain_add to i32), ptr @__kstrtab___irq_domain_add, ptr @__kstrtabns___irq_domain_add }, section "___ksymtab_gpl+__irq_domain_add", align 4
@irq_default_domain = internal unnamed_addr global ptr null, align 4
@__kstrtab_irq_domain_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_remove to i32), ptr @__kstrtab_irq_domain_remove, ptr @__kstrtabns_irq_domain_remove }, section "___ksymtab_gpl+irq_domain_remove", align 4
@__kstrtab_irq_domain_update_bus_token = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_update_bus_token = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_update_bus_token = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_update_bus_token to i32), ptr @__kstrtab_irq_domain_update_bus_token, ptr @__kstrtabns_irq_domain_update_bus_token }, section "___ksymtab_gpl+irq_domain_update_bus_token", align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"\016irq: Cannot allocate irq_descs @ IRQ%d, assuming pre-allocated\0A\00", align 1
@__kstrtab_irq_domain_create_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_create_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_create_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_create_simple to i32), ptr @__kstrtab_irq_domain_create_simple, ptr @__kstrtabns_irq_domain_create_simple }, section "___ksymtab_gpl+irq_domain_create_simple", align 4
@__kstrtab_irq_domain_add_legacy = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_add_legacy = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_add_legacy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_add_legacy to i32), ptr @__kstrtab_irq_domain_add_legacy, ptr @__kstrtabns_irq_domain_add_legacy }, section "___ksymtab_gpl+irq_domain_add_legacy", align 4
@__kstrtab_irq_domain_create_legacy = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_create_legacy = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_create_legacy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_create_legacy to i32), ptr @__kstrtab_irq_domain_create_legacy, ptr @__kstrtabns_irq_domain_create_legacy }, section "___ksymtab_gpl+irq_domain_create_legacy", align 4
@__kstrtab_irq_find_matching_fwspec = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_find_matching_fwspec = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_find_matching_fwspec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_find_matching_fwspec to i32), ptr @__kstrtab_irq_find_matching_fwspec, ptr @__kstrtabns_irq_find_matching_fwspec }, section "___ksymtab_gpl+irq_find_matching_fwspec", align 4
@__kstrtab_irq_domain_check_msi_remap = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_check_msi_remap = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_check_msi_remap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_check_msi_remap to i32), ptr @__kstrtab_irq_domain_check_msi_remap, ptr @__kstrtabns_irq_domain_check_msi_remap }, section "___ksymtab_gpl+irq_domain_check_msi_remap", align 4
@__kstrtab_irq_set_default_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_set_default_host = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_set_default_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_set_default_host to i32), ptr @__kstrtab_irq_set_default_host, ptr @__kstrtabns_irq_set_default_host }, section "___ksymtab_gpl+irq_set_default_host", align 4
@__kstrtab_irq_get_default_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_get_default_host = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_get_default_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_get_default_host to i32), ptr @__kstrtab_irq_get_default_host, ptr @__kstrtabns_irq_get_default_host }, section "___ksymtab_gpl+irq_get_default_host", align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"error: hwirq 0x%x is too large for %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"error: virq%i is not allocated\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"error: virq%i is already associated\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"\016irq: %s didn't like hwirq-0x%lx to VIRQ%i mapping (rc=%d)\0A\00", align 1
@__kstrtab_irq_domain_associate = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_associate = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_associate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_associate to i32), ptr @__kstrtab_irq_domain_associate, ptr @__kstrtabns_irq_domain_associate }, section "___ksymtab_gpl+irq_domain_associate", align 4
@__kstrtab_irq_domain_associate_many = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_associate_many = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_associate_many = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_associate_many to i32), ptr @__kstrtab_irq_domain_associate_many, ptr @__kstrtabns_irq_domain_associate_many }, section "___ksymtab_gpl+irq_domain_associate_many", align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"%s(, %lx) called with NULL domain\0A\00", align 1
@__func__.irq_create_mapping_affinity = private unnamed_addr constant [28 x i8] c"irq_create_mapping_affinity\00", align 1
@__kstrtab_irq_create_mapping_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_create_mapping_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_create_mapping_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_create_mapping_affinity to i32), ptr @__kstrtab_irq_create_mapping_affinity, ptr @__kstrtabns_irq_create_mapping_affinity }, section "___ksymtab_gpl+irq_create_mapping_affinity", align 4
@__kstrtab_of_phandle_args_to_fwspec = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phandle_args_to_fwspec = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phandle_args_to_fwspec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phandle_args_to_fwspec to i32), ptr @__kstrtab_of_phandle_args_to_fwspec, ptr @__kstrtabns_of_phandle_args_to_fwspec }, section "___ksymtab_gpl+of_phandle_args_to_fwspec", align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"\014irq: no irq domain found for %s !\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"\014irq: type mismatch, failed to map hwirq-%lu for %s!\0A\00", align 1
@__kstrtab_irq_create_fwspec_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_create_fwspec_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_create_fwspec_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_create_fwspec_mapping to i32), ptr @__kstrtab_irq_create_fwspec_mapping, ptr @__kstrtabns_irq_create_fwspec_mapping }, section "___ksymtab_gpl+irq_create_fwspec_mapping", align 4
@__kstrtab_irq_create_of_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_create_of_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_create_of_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_create_of_mapping to i32), ptr @__kstrtab_irq_create_of_mapping, ptr @__kstrtabns_irq_create_of_mapping }, section "___ksymtab_gpl+irq_create_of_mapping", align 4
@__kstrtab_irq_dispose_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_dispose_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_dispose_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_dispose_mapping to i32), ptr @__kstrtab_irq_dispose_mapping, ptr @__kstrtabns_irq_dispose_mapping }, section "___ksymtab_gpl+irq_dispose_mapping", align 4
@__kstrtab___irq_resolve_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_resolve_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_resolve_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_resolve_mapping to i32), ptr @__kstrtab___irq_resolve_mapping, ptr @__kstrtabns___irq_resolve_mapping }, section "___ksymtab_gpl+__irq_resolve_mapping", align 4
@__kstrtab_irq_domain_xlate_onecell = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_xlate_onecell = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_xlate_onecell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_xlate_onecell to i32), ptr @__kstrtab_irq_domain_xlate_onecell, ptr @__kstrtabns_irq_domain_xlate_onecell }, section "___ksymtab_gpl+irq_domain_xlate_onecell", align 4
@__kstrtab_irq_domain_xlate_twocell = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_xlate_twocell = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_xlate_twocell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_xlate_twocell to i32), ptr @__kstrtab_irq_domain_xlate_twocell, ptr @__kstrtabns_irq_domain_xlate_twocell }, section "___ksymtab_gpl+irq_domain_xlate_twocell", align 4
@__kstrtab_irq_domain_xlate_onetwocell = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_xlate_onetwocell = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_xlate_onetwocell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_xlate_onetwocell to i32), ptr @__kstrtab_irq_domain_xlate_onetwocell, ptr @__kstrtabns_irq_domain_xlate_onetwocell }, section "___ksymtab_gpl+irq_domain_xlate_onetwocell", align 4
@irq_domain_simple_ops = dso_local constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_irq_domain_simple_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_simple_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_simple_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_simple_ops to i32), ptr @__kstrtab_irq_domain_simple_ops, ptr @__kstrtabns_irq_domain_simple_ops }, section "___ksymtab_gpl+irq_domain_simple_ops", align 4
@__kstrtab_irq_domain_translate_onecell = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_translate_onecell = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_translate_onecell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_translate_onecell to i32), ptr @__kstrtab_irq_domain_translate_onecell, ptr @__kstrtabns_irq_domain_translate_onecell }, section "___ksymtab_gpl+irq_domain_translate_onecell", align 4
@__kstrtab_irq_domain_translate_twocell = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_translate_twocell = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_translate_twocell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_translate_twocell to i32), ptr @__kstrtab_irq_domain_translate_twocell, ptr @__kstrtabns_irq_domain_translate_twocell }, section "___ksymtab_gpl+irq_domain_translate_twocell", align 4
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@no_irq_chip = external dso_local global %struct.irq_chip, align 4
@__kstrtab_irq_domain_reset_irq_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_reset_irq_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_reset_irq_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_reset_irq_data to i32), ptr @__kstrtab_irq_domain_reset_irq_data, ptr @__kstrtabns_irq_domain_reset_irq_data }, section "___ksymtab_gpl+irq_domain_reset_irq_data", align 4
@__kstrtab_irq_domain_create_hierarchy = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_create_hierarchy = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_create_hierarchy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_create_hierarchy to i32), ptr @__kstrtab_irq_domain_create_hierarchy, ptr @__kstrtabns_irq_domain_create_hierarchy }, section "___ksymtab_gpl+irq_domain_create_hierarchy", align 4
@__kstrtab_irq_domain_disconnect_hierarchy = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_disconnect_hierarchy = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_disconnect_hierarchy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_disconnect_hierarchy to i32), ptr @__kstrtab_irq_domain_disconnect_hierarchy, ptr @__kstrtabns_irq_domain_disconnect_hierarchy }, section "___ksymtab_gpl+irq_domain_disconnect_hierarchy", align 4
@__kstrtab_irq_domain_get_irq_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_get_irq_data = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_get_irq_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_get_irq_data to i32), ptr @__kstrtab_irq_domain_get_irq_data, ptr @__kstrtabns_irq_domain_get_irq_data }, section "___ksymtab_gpl+irq_domain_get_irq_data", align 4
@__kstrtab_irq_domain_set_hwirq_and_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_set_hwirq_and_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_set_hwirq_and_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_set_hwirq_and_chip to i32), ptr @__kstrtab_irq_domain_set_hwirq_and_chip, ptr @__kstrtabns_irq_domain_set_hwirq_and_chip }, section "___ksymtab_gpl+irq_domain_set_hwirq_and_chip", align 4
@__kstrtab_irq_domain_set_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_set_info = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_set_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_set_info to i32), ptr @__kstrtab_irq_domain_set_info, ptr @__kstrtabns_irq_domain_set_info }, section "___ksymtab+irq_domain_set_info", align 4
@__kstrtab_irq_domain_free_irqs_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_free_irqs_common = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_free_irqs_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_free_irqs_common to i32), ptr @__kstrtab_irq_domain_free_irqs_common, ptr @__kstrtabns_irq_domain_free_irqs_common }, section "___ksymtab_gpl+irq_domain_free_irqs_common", align 4
@.str.16 = private unnamed_addr constant [37 x i8] c"domain is NULL; cannot allocate IRQ\0A\00", align 1
@__kstrtab___irq_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns___irq_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab___irq_domain_alloc_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__irq_domain_alloc_irqs to i32), ptr @__kstrtab___irq_domain_alloc_irqs, ptr @__kstrtabns___irq_domain_alloc_irqs }, section "___ksymtab_gpl+__irq_domain_alloc_irqs", align 4
@__kstrtab_irq_domain_push_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_push_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_push_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_push_irq to i32), ptr @__kstrtab_irq_domain_push_irq, ptr @__kstrtabns_irq_domain_push_irq }, section "___ksymtab_gpl+irq_domain_push_irq", align 4
@__kstrtab_irq_domain_pop_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_pop_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_pop_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_pop_irq to i32), ptr @__kstrtab_irq_domain_pop_irq, ptr @__kstrtabns_irq_domain_pop_irq }, section "___ksymtab_gpl+irq_domain_pop_irq", align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"NULL pointer, cannot free irq\0A\00", align 1
@__kstrtab_irq_domain_alloc_irqs_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_alloc_irqs_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_alloc_irqs_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_alloc_irqs_parent to i32), ptr @__kstrtab_irq_domain_alloc_irqs_parent, ptr @__kstrtabns_irq_domain_alloc_irqs_parent }, section "___ksymtab_gpl+irq_domain_alloc_irqs_parent", align 4
@__kstrtab_irq_domain_free_irqs_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_domain_free_irqs_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_domain_free_irqs_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_domain_free_irqs_parent to i32), ptr @__kstrtab_irq_domain_free_irqs_parent, ptr @__kstrtabns_irq_domain_free_irqs_parent }, section "___ksymtab_gpl+irq_domain_free_irqs_parent", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"virq%i doesn't exist; cannot disassociate\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\016irq: IRQ%d: trimming hierarchy from %s\0A\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab___irq_domain_add, ptr @__ksymtab___irq_domain_alloc_fwnode, ptr @__ksymtab___irq_domain_alloc_irqs, ptr @__ksymtab___irq_resolve_mapping, ptr @__ksymtab_irq_create_fwspec_mapping, ptr @__ksymtab_irq_create_mapping_affinity, ptr @__ksymtab_irq_create_of_mapping, ptr @__ksymtab_irq_dispose_mapping, ptr @__ksymtab_irq_domain_add_legacy, ptr @__ksymtab_irq_domain_alloc_irqs_parent, ptr @__ksymtab_irq_domain_associate, ptr @__ksymtab_irq_domain_associate_many, ptr @__ksymtab_irq_domain_check_msi_remap, ptr @__ksymtab_irq_domain_create_hierarchy, ptr @__ksymtab_irq_domain_create_legacy, ptr @__ksymtab_irq_domain_create_simple, ptr @__ksymtab_irq_domain_disconnect_hierarchy, ptr @__ksymtab_irq_domain_free_fwnode, ptr @__ksymtab_irq_domain_free_irqs_common, ptr @__ksymtab_irq_domain_free_irqs_parent, ptr @__ksymtab_irq_domain_get_irq_data, ptr @__ksymtab_irq_domain_pop_irq, ptr @__ksymtab_irq_domain_push_irq, ptr @__ksymtab_irq_domain_remove, ptr @__ksymtab_irq_domain_reset_irq_data, ptr @__ksymtab_irq_domain_set_hwirq_and_chip, ptr @__ksymtab_irq_domain_set_info, ptr @__ksymtab_irq_domain_simple_ops, ptr @__ksymtab_irq_domain_translate_onecell, ptr @__ksymtab_irq_domain_translate_twocell, ptr @__ksymtab_irq_domain_update_bus_token, ptr @__ksymtab_irq_domain_xlate_onecell, ptr @__ksymtab_irq_domain_xlate_onetwocell, ptr @__ksymtab_irq_domain_xlate_twocell, ptr @__ksymtab_irq_find_matching_fwspec, ptr @__ksymtab_irq_get_default_host, ptr @__ksymtab_irq_set_default_host, ptr @__ksymtab_irqchip_fwnode_ops, ptr @__ksymtab_of_phandle_args_to_fwspec], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @irqchip_fwnode_get_name(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irqchip_fwid, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__irq_domain_alloc_fwnode(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 44) #15
  switch i32 %0, label %11 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %4
  %8 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %2) #16
  br label %13

9:                                                ; preds = %4
  %10 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %2, i32 noundef %1) #16
  br label %13

11:                                               ; preds = %4
  %12 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %3) #16
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %15 = icmp ne ptr %6, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @kfree(ptr noundef %6) #16
  tail call void @kfree(ptr noundef %14) #16
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.irqchip_fwid, ptr %6, i32 0, i32 1
  store i32 %0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.irqchip_fwid, ptr %6, i32 0, i32 2
  store ptr %14, ptr %21, align 4
  %22 = getelementptr inbounds %struct.irqchip_fwid, ptr %6, i32 0, i32 3
  store ptr %3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 1
  store ptr @irqchip_fwnode_ops, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 4
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 4, i32 1
  store ptr %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 3
  store volatile ptr %26, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 3, i32 1
  store ptr %26, ptr %27, align 8
  br label %28

28:                                               ; preds = %19, %18
  %29 = phi ptr [ %6, %19 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_free_fwnode(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @irqchip_fwnode_ops
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %3, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 117, i32 noundef 9, ptr noundef null) #16
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irqchip_fwid, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #16
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__irq_domain_add(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 150, i32 noundef 9, ptr noundef null) #16
  br label %102

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, null
  %11 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #16
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %16 = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 84) #16
  %17 = select i1 %14, i32 -1, i32 %16
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %102, label %20

20:                                               ; preds = %9
  br i1 %10, label %42, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @irqchip_fwnode_ops
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.irqchip_fwid, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = icmp ult i32 %28, 2
  %30 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 6
  store ptr %0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.irqchip_fwid, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  br i1 %29, label %33, label %56

33:                                               ; preds = %25
  %34 = tail call noalias ptr @kstrdup(ptr noundef %32, i32 noundef 3264) #16
  %35 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  store ptr %34, ptr %35, align 8
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  tail call void @kfree(ptr noundef nonnull %18) #16
  br label %102

38:                                               ; preds = %21
  %39 = xor i1 %12, true
  %40 = icmp eq ptr %23, @of_fwnode_ops
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %20
  %43 = tail call zeroext i1 @is_software_node(ptr noundef %0) #16
  br i1 %43, label %44, label %52

44:                                               ; preds = %42, %38
  %45 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %0) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %18) #16
  br label %102

48:                                               ; preds = %44
  %49 = tail call ptr @strreplace(ptr noundef nonnull %45, i8 noundef zeroext 47, i8 noundef zeroext 58) #16
  %50 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  store ptr %45, ptr %50, align 8
  %51 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 6
  store ptr %0, ptr %51, align 4
  br label %72

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %76

56:                                               ; preds = %25
  %57 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  store ptr %32, ptr %57, align 8
  %58 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  %59 = icmp eq ptr %32, null
  br i1 %59, label %62, label %76

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 1
  br i1 %10, label %65, label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ %58, %56 ]
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi ptr [ %63, %62 ], [ %61, %60 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @__irq_domain_add.unknown_domains) #16, !srcloc !11
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__irq_domain_add.unknown_domains, ptr nonnull @__irq_domain_add.unknown_domains, i32 1, ptr nonnull elementtype(i32) @__irq_domain_add.unknown_domains) #16, !srcloc !12
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %69 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %68) #16
  store ptr %69, ptr %66, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call void @kfree(ptr noundef nonnull %18) #16
  br label %102

72:                                               ; preds = %65, %48, %33
  %73 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 2
  store i32 %75, ptr %73, align 4
  br label %76

76:                                               ; preds = %72, %56, %52
  %77 = tail call ptr @fwnode_handle_get(ptr noundef %0) #16
  br i1 %12, label %82, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 5
  %80 = load i8, ptr %79, align 4
  %81 = or i8 %80, 4
  store i8 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %78, %76
  %83 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 12
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 12, i32 1
  store i32 3264, ptr %84, align 8
  %85 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 12, i32 2
  store ptr null, ptr %85, align 4
  %86 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %86, ptr noundef nonnull @.str.7, ptr noundef nonnull @__irq_domain_add.__key) #16
  %87 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 2
  store ptr %4, ptr %87, align 4
  %88 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 3
  store ptr %5, ptr %88, align 16
  %89 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 10
  store i32 %2, ptr %89, align 4
  %90 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 11
  store i32 %1, ptr %90, align 16
  %91 = getelementptr inbounds %struct.irq_domain_ops, ptr %4, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, 1
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %94, %82
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %99 = load ptr, ptr @irq_domain_list, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %18, ptr %100, align 4
  store ptr %99, ptr %18, align 64
  %101 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr @irq_domain_list, ptr %101, align 4
  store volatile ptr %18, ptr @irq_domain_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %102

102:                                              ; preds = %98, %71, %47, %37, %9, %8
  %103 = phi ptr [ null, %8 ], [ %18, %98 ], [ null, %71 ], [ null, %37 ], [ null, %9 ], [ null, %47 ]
  ret ptr %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_software_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_remove(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %2 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 12, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 253, i32 noundef 9, ptr noundef null) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = load ptr, ptr @irq_default_domain, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %14, !prof !14

13:                                               ; preds = %6
  store ptr null, ptr @irq_default_domain, align 4
  br label %14

14:                                               ; preds = %13, %6
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  %15 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, -5
  store i8 %23, ptr %21, align 4
  %24 = load ptr, ptr %15, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %16, %14 ], [ %24, %20 ]
  tail call void @fwnode_handle_put(ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #16
  br label %34

34:                                               ; preds = %31, %25
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @irq_set_default_host(ptr noundef %0) #5 {
  store ptr %0, ptr @irq_default_domain, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_update_bus_token(ptr nocapture noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef %1) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %17) #16
  br label %20

18:                                               ; preds = %11
  %19 = or i32 %13, 2
  store i32 %19, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  store ptr %9, ptr %7, align 4
  br label %21

21:                                               ; preds = %20, %6
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_domain_create_simple(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = tail call ptr @__irq_domain_add(ptr noundef %0, i32 noundef %1, i32 noundef %1, i32 noundef 0, ptr noundef %3, ptr noundef %4)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i32 %2, 0
  %9 = or i1 %8, %7
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @__irq_alloc_descs(i32 noundef %2, i32 noundef %2, i32 noundef %1, i32 noundef -1, ptr noundef null, ptr noundef null) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %2) #18
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %21, %17 ], [ 0, %15 ]
  %19 = add i32 %18, %2
  %20 = tail call i32 @irq_domain_associate(ptr noundef %6, i32 noundef %19, i32 noundef %18) #16
  %21 = add nuw nsw i32 %18, 1
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %15, %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_associate_many(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %11, %6 ], [ 0, %4 ]
  %8 = add i32 %7, %1
  %9 = add i32 %7, %2
  %10 = tail call i32 @irq_domain_associate(ptr noundef %0, i32 noundef %8, i32 noundef %9)
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_domain_add_legacy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  %10 = add i32 %3, %1
  %11 = tail call ptr @__irq_domain_add(ptr noundef %9, i32 noundef %10, i32 noundef %10, i32 noundef 0, ptr noundef %4, ptr noundef %5) #16
  %12 = icmp ne ptr %11, null
  %13 = icmp sgt i32 %1, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %22

15:                                               ; preds = %15, %6
  %16 = phi i32 [ %20, %15 ], [ 0, %6 ]
  %17 = add i32 %16, %2
  %18 = add i32 %16, %3
  %19 = tail call i32 @irq_domain_associate(ptr noundef nonnull %11, i32 noundef %17, i32 noundef %18) #16
  %20 = add nuw nsw i32 %16, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %15

22:                                               ; preds = %15, %6
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_domain_create_legacy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = add i32 %3, %1
  %8 = tail call ptr @__irq_domain_add(ptr noundef %0, i32 noundef %7, i32 noundef %7, i32 noundef 0, ptr noundef %4, ptr noundef %5)
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %19

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %17, %12 ], [ 0, %6 ]
  %14 = add i32 %13, %2
  %15 = add i32 %13, %3
  %16 = tail call i32 @irq_domain_associate(ptr noundef nonnull %8, i32 noundef %14, i32 noundef %15) #16
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %6
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_find_matching_fwspec(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %4 = getelementptr inbounds %struct.irq_fwspec, ptr %0, i32 0, i32 1
  %5 = icmp eq ptr %3, null
  %6 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 1
  %9 = getelementptr i8, ptr %3, i32 -12
  %10 = icmp eq i32 %1, 0
  br label %11

11:                                               ; preds = %51, %2
  %12 = phi ptr [ @irq_domain_list, %2 ], [ %13, %51 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @irq_domain_list
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_domain_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 %19(ptr noundef %13, ptr noundef %0, i32 noundef %1) #16
  br label %51

26:                                               ; preds = %21, %15
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  br i1 %7, label %34, label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr %8, align 4
  %32 = icmp eq ptr %31, @of_fwnode_ops
  %33 = select i1 %32, ptr %9, ptr null
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi ptr [ null, %29 ], [ %33, %30 ]
  %36 = tail call i32 %27(ptr noundef %13, ptr noundef %35, i32 noundef %1) #16
  br label %51

37:                                               ; preds = %26
  br i1 %5, label %48, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp ne ptr %40, %3
  %42 = or i1 %41, %10
  %43 = xor i1 %41, true
  br i1 %42, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %1
  br label %48

48:                                               ; preds = %44, %38, %37
  %49 = phi i1 [ %43, %38 ], [ false, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %48, %34, %24
  %52 = phi i32 [ %25, %24 ], [ %36, %34 ], [ %50, %48 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %11, label %54

54:                                               ; preds = %51, %11
  %55 = phi ptr [ null, %11 ], [ %13, %51 ]
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_domain_check_msi_remap() #1 {
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %1 = load ptr, ptr @irq_domain_list, align 4
  %2 = icmp eq ptr %1, @irq_domain_list
  br i1 %2, label %27, label %3

3:                                                ; preds = %24, %0
  %4 = phi ptr [ %25, %24 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %4, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %9
  %12 = and i32 %6, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %19, %11
  %15 = phi ptr [ %17, %19 ], [ %4, %11 ]
  %16 = getelementptr inbounds %struct.irq_domain, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.irq_domain, ptr %17, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %14, label %24

24:                                               ; preds = %19, %11, %3
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, @irq_domain_list
  br i1 %26, label %27, label %3

27:                                               ; preds = %24, %14, %9, %0
  %28 = phi i1 [ true, %0 ], [ false, %14 ], [ true, %24 ], [ false, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  ret i1 %28
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_domain_hierarchical_is_msi_remap(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %9, %1
  %4 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %9, %3
  %14 = xor i1 %8, true
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i1 [ false, %1 ], [ %14, %13 ]
  ret i1 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @irq_get_default_host() #7 {
  %1 = load ptr, ptr @irq_default_domain, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_associate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %2
  br i1 %7, label %11, label %8, !prof !9

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 569, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %2, ptr noundef %10) #16
  br label %58

11:                                               ; preds = %3
  %12 = icmp eq ptr %4, null
  br i1 %12, label %13, label %14, !prof !14

13:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 571, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %1) #16
  br label %58

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %1) #16
  br label %58

19:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %20 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  store ptr %0, ptr %15, align 4
  %21 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_domain_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  switch i32 %27, label %28 [
    i32 0, label %33
    i32 -1, label %32
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %30, i32 noundef %2, i32 noundef %1, i32 noundef %27) #18
  br label %32

32:                                               ; preds = %28, %26
  store ptr null, ptr %15, align 4
  store i32 0, ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %58

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.irq_chip, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %34, align 4
  br label %44

44:                                               ; preds = %41, %37, %33, %19
  %45 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %48) #16
  %49 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %2
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %53 = getelementptr %struct.irq_domain, ptr %0, i32 0, i32 14, i32 %2
  store volatile ptr %4, ptr %53, align 4
  br label %57

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 12
  %56 = tail call i32 @radix_tree_insert(ptr noundef %55, i32 noundef %2, ptr noundef nonnull %4) #16
  br label %57

57:                                               ; preds = %54, %52
  tail call void @mutex_unlock(ptr noundef %48) #16
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 2048, i32 noundef 0) #16
  br label %58

58:                                               ; preds = %57, %32, %18, %13, %8
  %59 = phi i32 [ -22, %8 ], [ -22, %13 ], [ -22, %18 ], [ %27, %32 ], [ 0, %57 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_create_mapping_affinity(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @irq_default_domain, align 4
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 695, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.irq_create_mapping_affinity, i32 noundef %1) #16
  br label %49

9:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %10 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr %struct.irq_domain, ptr %6, i32 0, i32 14, i32 %1
  %15 = load volatile ptr, ptr %14, align 4
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 12
  %18 = tail call ptr @radix_tree_lookup(ptr noundef %17, i32 noundef %1) #16
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %15, %13 ], [ %18, %16 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !14

22:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.irq_data, ptr %20, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.irq_data, ptr %20, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq ptr %25, null
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %28, i1 true, i1 %29
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br i1 %30, label %31, label %49

31:                                               ; preds = %23, %22
  %32 = load i32, ptr @nr_irqs, align 4
  %33 = urem i32 %1, %32
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 1, i32 %33
  %36 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef %35, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef %2) #16
  %37 = icmp slt i32 %36, 1
  %38 = icmp ugt i32 %35, 1
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 1, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef %2) #16
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi i32 [ %41, %40 ], [ %36, %31 ]
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @irq_domain_associate(ptr noundef nonnull %6, i32 noundef %43, i32 noundef %1)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @irq_free_descs(i32 noundef %43, i32 noundef 1) #16
  br label %49

49:                                               ; preds = %48, %45, %42, %23, %8
  %50 = phi i32 [ 0, %8 ], [ 0, %48 ], [ %27, %23 ], [ 0, %42 ], [ %43, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_alloc_descs(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = icmp sgt i32 %0, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @__irq_alloc_descs(i32 noundef %0, i32 noundef %0, i32 noundef %1, i32 noundef %3, ptr noundef null, ptr noundef %4) #16
  br label %20

9:                                                ; preds = %5
  %10 = load i32, ptr @nr_irqs, align 4
  %11 = urem i32 %2, %10
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 %11
  %14 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef %13, i32 noundef %1, i32 noundef %3, ptr noundef null, ptr noundef %4) #16
  %15 = icmp slt i32 %14, 1
  %16 = icmp ugt i32 %13, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 1, i32 noundef %1, i32 noundef %3, ptr noundef null, ptr noundef %4) #16
  br label %20

20:                                               ; preds = %18, %9, %7
  %21 = phi i32 [ %8, %7 ], [ %19, %18 ], [ %14, %9 ]
  ret i32 %21
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_phandle_args_to_fwspec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %7 = select i1 %5, ptr null, ptr %6
  store ptr %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %4
  %11 = phi i32 [ %15, %10 ], [ 0, %4 ]
  %12 = getelementptr i32, ptr %1, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 %11
  store i32 %13, ptr %14, align 4
  %15 = add nuw i32 %11, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_create_fwspec_mapping(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @irq_find_matching_fwspec(ptr noundef %0, i32 noundef 1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %79

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %11 = getelementptr inbounds %struct.irq_fwspec, ptr %0, i32 0, i32 1
  %12 = icmp eq ptr %10, null
  %13 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %10, i32 0, i32 1
  %16 = getelementptr i8, ptr %10, i32 -12
  br label %17

17:                                               ; preds = %51, %9
  %18 = phi ptr [ @irq_domain_list, %9 ], [ %19, %51 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @irq_domain_list
  br i1 %20, label %54, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_domain, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_domain_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call i32 %25(ptr noundef %19, ptr noundef %0, i32 noundef 0) #16
  br label %51

32:                                               ; preds = %27, %21
  %33 = load ptr, ptr %23, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  br i1 %14, label %40, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %15, align 4
  %38 = icmp eq ptr %37, @of_fwnode_ops
  %39 = select i1 %38, ptr %16, ptr null
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi ptr [ null, %35 ], [ %39, %36 ]
  %42 = tail call i32 %33(ptr noundef %19, ptr noundef %41, i32 noundef 0) #16
  br label %51

43:                                               ; preds = %32
  br i1 %12, label %48, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.irq_domain, ptr %19, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %10
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i1 [ %47, %44 ], [ false, %43 ]
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %48, %40, %30
  %52 = phi i32 [ %31, %30 ], [ %42, %40 ], [ %50, %48 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %17, label %54

54:                                               ; preds = %51, %17
  %55 = phi ptr [ null, %17 ], [ %19, %51 ]
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %58

56:                                               ; preds = %1
  %57 = load ptr, ptr @irq_default_domain, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi ptr [ %55, %54 ], [ %57, %56 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 4
  %63 = icmp eq ptr %62, null
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %65 = or i1 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.fwnode_handle, ptr %62, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp ne ptr %68, @of_fwnode_ops
  %70 = getelementptr i8, ptr %62, i32 -12
  %71 = icmp eq ptr %70, null
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %62, i32 -4
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %66, %61
  %77 = phi ptr [ %75, %73 ], [ @.str.18, %66 ], [ @.str.18, %61 ]
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %77) #18
  br label %235

79:                                               ; preds = %58, %6
  %80 = phi ptr [ %59, %58 ], [ %7, %6 ]
  %81 = getelementptr inbounds %struct.irq_domain, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.irq_domain_ops, ptr %82, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = call i32 %84(ptr noundef nonnull %80, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %112

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.irq_domain_ops, ptr %82, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %109, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %0, align 4
  %94 = icmp eq ptr %93, null
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %96 = or i1 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.fwnode_handle, ptr %93, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, @of_fwnode_ops
  %101 = getelementptr i8, ptr %93, i32 -12
  %102 = select i1 %100, ptr %101, ptr null
  br label %103

103:                                              ; preds = %97, %92
  %104 = phi ptr [ null, %92 ], [ %102, %97 ]
  %105 = getelementptr inbounds %struct.irq_fwspec, ptr %0, i32 0, i32 2
  %106 = getelementptr inbounds %struct.irq_fwspec, ptr %0, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = call i32 %90(ptr noundef nonnull %80, ptr noundef %104, ptr noundef %105, i32 noundef %107, ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  br label %112

109:                                              ; preds = %88
  %110 = getelementptr inbounds %struct.irq_fwspec, ptr %0, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  store i32 %111, ptr %2, align 4
  br label %121

112:                                              ; preds = %103, %86
  %113 = phi i32 [ %87, %86 ], [ %108, %103 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %235

115:                                              ; preds = %112
  %116 = load i32, ptr %3, align 4
  %117 = icmp ult i32 %116, 16
  br i1 %117, label %121, label %118, !prof !9

118:                                              ; preds = %115
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 789, i32 noundef 9, ptr noundef null) #16
  %119 = load i32, ptr %3, align 4
  %120 = and i32 %119, 15
  store i32 %120, ptr %3, align 4
  br label %121

121:                                              ; preds = %118, %115, %109
  %122 = load i32, ptr %2, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %123 = getelementptr inbounds %struct.irq_domain, ptr %80, i32 0, i32 11
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, %122
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = getelementptr %struct.irq_domain, ptr %80, i32 0, i32 14, i32 %122
  %128 = load volatile ptr, ptr %127, align 4
  br label %132

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.irq_domain, ptr %80, i32 0, i32 12
  %131 = call ptr @radix_tree_lookup(ptr noundef %130, i32 noundef %122) #16
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi ptr [ %128, %126 ], [ %131, %129 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135, !prof !14

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.irq_data, ptr %133, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.irq_data, ptr %133, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq ptr %137, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %132
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %200

142:                                              ; preds = %135
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %143 = icmp eq i32 %139, 0
  br i1 %143, label %200, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %3, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %235, label %147

147:                                              ; preds = %144
  %148 = call ptr @irq_get_irq_data(i32 noundef %139) #16
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.irq_data, ptr %148, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 15
  %155 = icmp eq i32 %145, %154
  br i1 %155, label %235, label %156

156:                                              ; preds = %150, %147
  %157 = call ptr @irq_get_irq_data(i32 noundef %139) #16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.irq_data, ptr %157, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %181

165:                                              ; preds = %159, %156
  %166 = call ptr @irq_get_irq_data(i32 noundef %139) #16
  %167 = icmp eq ptr %166, null
  br i1 %167, label %235, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr %3, align 4
  %170 = getelementptr inbounds %struct.irq_data, ptr %166, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, -16
  store i32 %173, ptr %171, align 4
  %174 = and i32 %169, 15
  %175 = load ptr, ptr %170, align 4
  %176 = load i32, ptr %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, ptr %175, align 4
  %178 = load ptr, ptr %170, align 4
  %179 = load i32, ptr %178, align 4
  %180 = or i32 %179, 33554432
  store i32 %180, ptr %178, align 4
  br label %235

181:                                              ; preds = %159
  %182 = load i32, ptr %2, align 4
  %183 = load ptr, ptr %0, align 4
  %184 = icmp eq ptr %183, null
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  %186 = or i1 %184, %185
  br i1 %186, label %197, label %187

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.fwnode_handle, ptr %183, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp ne ptr %189, @of_fwnode_ops
  %191 = getelementptr i8, ptr %183, i32 -12
  %192 = icmp eq ptr %191, null
  %193 = select i1 %190, i1 true, i1 %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %187
  %195 = getelementptr i8, ptr %183, i32 -4
  %196 = load ptr, ptr %195, align 4
  br label %197

197:                                              ; preds = %194, %187, %181
  %198 = phi ptr [ %196, %194 ], [ @.str.18, %187 ], [ @.str.18, %181 ]
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %182, ptr noundef %198) #18
  br label %235

200:                                              ; preds = %142, %141
  %201 = getelementptr inbounds %struct.irq_domain, ptr %80, i32 0, i32 4
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = call i32 @__irq_domain_alloc_irqs(ptr noundef nonnull %80, i32 noundef -1, i32 noundef 1, i32 noundef -1, ptr noundef %0, i1 noundef zeroext false, ptr noundef null) #16
  %207 = icmp slt i32 %206, 1
  br i1 %207, label %235, label %212

208:                                              ; preds = %200
  %209 = load i32, ptr %2, align 4
  %210 = call i32 @irq_create_mapping_affinity(ptr noundef nonnull %80, i32 noundef %209, ptr noundef null) #16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %235, label %212

212:                                              ; preds = %208, %205
  %213 = phi i32 [ %206, %205 ], [ %210, %208 ]
  %214 = call ptr @irq_get_irq_data(i32 noundef %213) #16
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load i32, ptr %201, align 4
  %218 = and i32 %217, 1
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  call void @irq_domain_free_irqs(i32 noundef %213, i32 noundef 1)
  br label %235

221:                                              ; preds = %216
  call void @irq_dispose_mapping(i32 noundef %213)
  br label %235

222:                                              ; preds = %212
  %223 = load i32, ptr %3, align 4
  %224 = getelementptr inbounds %struct.irq_data, ptr %214, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = load i32, ptr %225, align 4
  %227 = and i32 %226, -16
  store i32 %227, ptr %225, align 4
  %228 = and i32 %223, 15
  %229 = load ptr, ptr %224, align 4
  %230 = load i32, ptr %229, align 4
  %231 = or i32 %230, %228
  store i32 %231, ptr %229, align 4
  %232 = load ptr, ptr %224, align 4
  %233 = load i32, ptr %232, align 4
  %234 = or i32 %233, 33554432
  store i32 %234, ptr %232, align 4
  br label %235

235:                                              ; preds = %222, %221, %220, %208, %205, %197, %168, %165, %150, %144, %112, %76
  %236 = phi i32 [ %139, %168 ], [ 0, %197 ], [ %213, %222 ], [ 0, %76 ], [ 0, %112 ], [ %139, %150 ], [ %139, %144 ], [ 0, %165 ], [ 0, %205 ], [ 0, %208 ], [ 0, %221 ], [ 0, %220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %236
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_free_irqs(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.irq_domain, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_domain_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %9, %5, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1693, i32 noundef 9, ptr noundef nonnull @.str.17) #16
  br label %95

16:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %94

19:                                               ; preds = %46, %16
  %20 = phi i32 [ %47, %46 ], [ 0, %16 ]
  %21 = add i32 %20, %0
  tail call void @irq_modify_status(i32 noundef %21, i32 noundef 0, i32 noundef 2048) #16
  tail call void @irq_set_chip_and_handler_name(i32 noundef %21, ptr noundef null, ptr noundef null, ptr noundef null) #16
  tail call void @synchronize_irq(i32 noundef %21) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %22 = tail call ptr @irq_get_irq_data(i32 noundef %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %42, %19
  %25 = phi ptr [ %44, %42 ], [ %22, %19 ]
  %26 = getelementptr inbounds %struct.irq_data, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.irq_data, ptr %25, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_domain, ptr %27, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.irq_domain, ptr %27, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %33) #16
  %34 = getelementptr inbounds %struct.irq_domain, ptr %27, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %29
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = getelementptr %struct.irq_domain, ptr %27, i32 0, i32 14, i32 %29
  store volatile ptr null, ptr %38, align 4
  br label %42

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.irq_domain, ptr %27, i32 0, i32 12
  %41 = tail call ptr @radix_tree_delete(ptr noundef %40, i32 noundef %29) #16
  br label %42

42:                                               ; preds = %39, %37
  tail call void @mutex_unlock(ptr noundef %33) #16
  %43 = getelementptr inbounds %struct.irq_data, ptr %25, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %24

46:                                               ; preds = %42, %19
  %47 = add nuw i32 %20, 1
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %49, label %19

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 4
  %51 = getelementptr inbounds %struct.irq_domain, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.irq_domain_ops, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %74, %49
  %57 = phi i32 [ %75, %74 ], [ 0, %49 ]
  %58 = add i32 %57, %0
  %59 = tail call ptr @irq_get_irq_data(i32 noundef %58) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %66, %56
  %62 = phi ptr [ %68, %66 ], [ %59, %56 ]
  %63 = getelementptr inbounds %struct.irq_data, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %50
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.irq_data, ptr %62, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %61

70:                                               ; preds = %61
  %71 = load ptr, ptr %51, align 4
  %72 = getelementptr inbounds %struct.irq_domain_ops, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %50, i32 noundef %58, i32 noundef 1) #16
  br label %74

74:                                               ; preds = %70, %66, %56
  %75 = add nuw i32 %57, 1
  %76 = icmp eq i32 %75, %1
  br i1 %76, label %77, label %56

77:                                               ; preds = %74, %49
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br i1 %17, label %94, label %78

78:                                               ; preds = %91, %77
  %79 = phi i32 [ %92, %91 ], [ 0, %77 ]
  %80 = add i32 %79, %0
  %81 = tail call ptr @irq_get_irq_data(i32 noundef %80) #16
  %82 = getelementptr inbounds %struct.irq_data, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  store ptr null, ptr %82, align 4
  %84 = getelementptr inbounds %struct.irq_data, ptr %81, i32 0, i32 5
  store ptr null, ptr %84, align 4
  %85 = icmp eq ptr %83, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %86, %78
  %87 = phi ptr [ %89, %86 ], [ %83, %78 ]
  %88 = getelementptr inbounds %struct.irq_data, ptr %87, i32 0, i32 6
  %89 = load ptr, ptr %88, align 4
  tail call void @kfree(ptr noundef nonnull %87) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %86

91:                                               ; preds = %86, %78
  %92 = add nuw i32 %79, 1
  %93 = icmp eq i32 %92, %1
  br i1 %93, label %94, label %78

94:                                               ; preds = %91, %77, %18
  tail call void @irq_free_descs(i32 noundef %0, i32 noundef %1) #16
  br label %95

95:                                               ; preds = %94, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_dispose_mapping(i32 noundef %0) #1 {
  %2 = tail call ptr @irq_get_irq_data(i32 noundef %0) #16
  %3 = icmp ne i32 %0, 0
  %4 = icmp ne ptr %2, null
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.irq_data, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 875, i32 noundef 9, ptr noundef null) #16
  br label %49

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @irq_domain_free_irqs(i32 noundef %0, i32 noundef 1)
  br label %49

17:                                               ; preds = %11
  %18 = tail call ptr @irq_get_irq_data(i32 noundef %0) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.irq_data, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %25, label %24, !prof !9

24:                                               ; preds = %20, %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 537, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %0) #16
  br label %48

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.irq_data, ptr %18, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @irq_modify_status(i32 noundef %0, i32 noundef 0, i32 noundef 2048) #16
  tail call void @irq_set_chip_and_handler_name(i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef null) #16
  tail call void @synchronize_irq(i32 noundef %0) #16
  %28 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_domain_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  tail call void %31(ptr noundef nonnull %8, i32 noundef %0) #16
  br label %34

34:                                               ; preds = %33, %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !20
  store ptr null, ptr %21, align 4
  store i32 0, ptr %26, align 4
  %35 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %38) #16
  %39 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, %27
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = getelementptr %struct.irq_domain, ptr %8, i32 0, i32 14, i32 %27
  store volatile ptr null, ptr %43, align 4
  br label %47

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 12
  %46 = tail call ptr @radix_tree_delete(ptr noundef %45, i32 noundef %27) #16
  br label %47

47:                                               ; preds = %44, %42
  tail call void @mutex_unlock(ptr noundef %38) #16
  br label %48

48:                                               ; preds = %47, %24
  tail call void @irq_free_descs(i32 noundef %0, i32 noundef 1) #16
  br label %49

49:                                               ; preds = %48, %16, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_create_of_mapping(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.irq_fwspec, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 64, i1 false), !annotation !18
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %4, null
  %8 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  store ptr %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %2, i32 0, i32 1
  store i32 %6, ptr %10, align 4
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %14 = getelementptr inbounds i8, ptr %2, i32 8
  %15 = shl nuw i32 %6, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %14, ptr align 4 %13, i32 %15, i1 false)
  br label %16

16:                                               ; preds = %12, %1
  %17 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__irq_resolve_mapping(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #1 {
  %4 = icmp eq ptr %0, null
  %5 = load ptr, ptr @irq_default_domain, align 4
  %6 = select i1 %4, ptr %5, ptr %0
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %9 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr %struct.irq_domain, ptr %6, i32 0, i32 14, i32 %1
  %14 = load volatile ptr, ptr %13, align 4
  br label %18

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 12
  %17 = tail call ptr @radix_tree_lookup(ptr noundef %16, i32 noundef %1) #16
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %14, %12 ], [ %17, %15 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !14

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %2, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %25, %21, %18
  %29 = phi ptr [ %23, %25 ], [ %23, %21 ], [ null, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi ptr [ %29, %28 ], [ null, %3 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_domain_get_irq_data(ptr noundef readnone %0, i32 noundef %1) #1 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %12, %10 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %10, %5, %2
  %15 = phi ptr [ null, %2 ], [ null, %10 ], [ %6, %5 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_xlate_onecell(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #1 {
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 946, i32 noundef 9, ptr noundef null) #16
  br label %11

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr %4, align 4
  store i32 0, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_xlate_twocell(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #1 {
  %7 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false)
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = shl nuw i32 %3, 2
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %7, ptr align 4 %2, i32 %10, i1 false)
  %11 = icmp slt i32 %3, 2
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %9, %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1034, i32 noundef 9, ptr noundef null) #16
  br label %18

13:                                               ; preds = %9
  %14 = load i32, ptr %7, align 4
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 15
  store i32 %17, ptr %5, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ -22, %12 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_translate_twocell(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1034, i32 noundef 9, ptr noundef null) #16
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  %12 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 15
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_xlate_onetwocell(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #1 {
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 988, i32 noundef 9, ptr noundef null) #16
  br label %18

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4
  store i32 %10, ptr %4, align 4
  %11 = icmp eq i32 %3, 1
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr i32, ptr %2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 15
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %15, %12 ], [ 0, %9 ]
  store i32 %17, ptr %5, align 4
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ -22, %8 ], [ 0, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_translate_onecell(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #16
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  store i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ -22, %8 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @irq_domain_reset_irq_data(ptr nocapture noundef writeonly %0) #10 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  store ptr @no_irq_chip, ptr %3, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @irq_domain_create_hierarchy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @__irq_domain_add(ptr noundef %3, i32 noundef %2, i32 noundef %2, i32 noundef 0, ptr noundef %4, ptr noundef %5) #16
  br label %12

10:                                               ; preds = %6
  %11 = tail call ptr @__irq_domain_add(ptr noundef %3, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef %4, ptr noundef %5) #16
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 9
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_domain, ptr %13, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %1
  store i32 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %12
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_disconnect_hierarchy(ptr noundef readnone %0, i32 noundef %1) #1 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %10, %2
  %6 = phi ptr [ %12, %10 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %5

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.irq_data, ptr %6, i32 0, i32 4
  store ptr inttoptr (i32 -107 to ptr), ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = phi i32 [ 0, %14 ], [ -22, %2 ], [ -22, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %15, %13 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %8

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 2
  store i32 %2, ptr %18, align 4
  %19 = icmp eq ptr %3, null
  %20 = select i1 %19, ptr @no_irq_chip, ptr %3
  %21 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 7
  store ptr %4, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %13, %5
  %24 = phi i32 [ 0, %17 ], [ -2, %5 ], [ -2, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_set_info(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #1 {
  %9 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %16, %8
  %12 = phi ptr [ %18, %16 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %11

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = icmp eq ptr %3, null
  %23 = select i1 %22, ptr @no_irq_chip, ptr %3
  %24 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 7
  store ptr %4, ptr %25, align 4
  br label %26

26:                                               ; preds = %20, %16, %8
  tail call void @__irq_set_handler(i32 noundef %1, ptr noundef %5, i32 noundef 0, ptr noundef %7) #16
  %27 = tail call i32 @irq_set_handler_data(i32 noundef %1, ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_free_irqs_common(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %23, %3
  %6 = phi i32 [ %24, %23 ], [ 0, %3 ]
  %7 = add i32 %6, %1
  %8 = tail call ptr @irq_get_irq_data(i32 noundef %7) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %15, %5
  %11 = phi ptr [ %17, %15 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %10

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 4
  store ptr @no_irq_chip, ptr %21, align 4
  %22 = getelementptr inbounds %struct.irq_data, ptr %11, i32 0, i32 7
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %19, %15, %5
  %24 = add nuw i32 %6, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %5

26:                                               ; preds = %23, %3
  %27 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.irq_domain, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.irq_domain_ops, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ne ptr %34, null
  %36 = icmp ne i32 %2, 0
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %59

38:                                               ; preds = %56, %30
  %39 = phi i32 [ %57, %56 ], [ 0, %30 ]
  %40 = add i32 %39, %1
  %41 = tail call ptr @irq_get_irq_data(i32 noundef %40) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %48, %38
  %44 = phi ptr [ %50, %48 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.irq_data, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %28
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.irq_data, ptr %44, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %43

52:                                               ; preds = %43
  %53 = load ptr, ptr %31, align 4
  %54 = getelementptr inbounds %struct.irq_domain_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef nonnull %28, i32 noundef %40, i32 noundef 1) #16
  br label %56

56:                                               ; preds = %52, %48, %38
  %57 = add nuw i32 %39, 1
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %59, label %38

59:                                               ; preds = %56, %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_free_irqs_parent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_domain_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = icmp ne i32 %2, 0
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %36

15:                                               ; preds = %33, %7
  %16 = phi i32 [ %34, %33 ], [ 0, %7 ]
  %17 = add i32 %16, %1
  %18 = tail call ptr @irq_get_irq_data(i32 noundef %17) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %25, %15
  %21 = phi ptr [ %27, %25 ], [ %18, %15 ]
  %22 = getelementptr inbounds %struct.irq_data, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %5
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.irq_data, ptr %21, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %20

29:                                               ; preds = %20
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr inbounds %struct.irq_domain_ops, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %5, i32 noundef %17, i32 noundef 1) #16
  br label %33

33:                                               ; preds = %29, %25, %15
  %34 = add nuw i32 %16, 1
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %36, label %15

36:                                               ; preds = %33, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_free_irqs_top(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %9, %5 ], [ 0, %3 ]
  %7 = add i32 %6, %1
  %8 = tail call i32 @irq_set_handler_data(i32 noundef %7, ptr noundef null) #16
  tail call void @__irq_set_handler(i32 noundef %7, ptr noundef null, i32 noundef 0, ptr noundef null) #16
  %9 = add nuw i32 %6, 1
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %11, label %5

11:                                               ; preds = %5, %3
  tail call void @irq_domain_free_irqs_common(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_alloc_irqs_hierarchy(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_domain_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -38, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__irq_domain_alloc_irqs(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) #1 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load ptr, ptr @irq_default_domain, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !14

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1456, i32 noundef 9, ptr noundef nonnull @.str.16) #16
  br label %203

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %0, %7 ], [ %10, %9 ]
  %15 = icmp sgt i32 %1, -1
  %16 = and i1 %15, %5
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  br i1 %15, label %18, label %20

18:                                               ; preds = %17
  %19 = tail call i32 @__irq_alloc_descs(i32 noundef %1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %6) #16
  br label %22

20:                                               ; preds = %17
  %21 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %6) #16
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %203, label %25

25:                                               ; preds = %22, %13
  %26 = phi i32 [ %23, %22 ], [ %1, %13 ]
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %76, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 9
  br label %30

30:                                               ; preds = %73, %28
  %31 = phi i32 [ 0, %28 ], [ %74, %73 ]
  %32 = add i32 %31, %26
  %33 = tail call ptr @irq_get_irq_data(i32 noundef %32) #16
  %34 = getelementptr inbounds %struct.irq_data, ptr %33, i32 0, i32 5
  store ptr %14, ptr %34, align 4
  %35 = load ptr, ptr %29, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %73, label %37

37:                                               ; preds = %43, %30
  %38 = phi ptr [ %53, %43 ], [ %35, %30 ]
  %39 = phi ptr [ %41, %43 ], [ %33, %30 ]
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 32) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.irq_data, ptr %39, i32 0, i32 6
  store ptr %41, ptr %44, align 4
  %45 = getelementptr inbounds %struct.irq_data, ptr %39, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.irq_data, ptr %41, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.irq_data, ptr %39, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.irq_data, ptr %41, i32 0, i32 3
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.irq_data, ptr %41, i32 0, i32 5
  store ptr %38, ptr %51, align 4
  %52 = getelementptr inbounds %struct.irq_domain, ptr %38, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %37

55:                                               ; preds = %37
  %56 = icmp eq i32 %31, -1
  br i1 %56, label %201, label %57

57:                                               ; preds = %70, %55
  %58 = phi i32 [ %71, %70 ], [ 0, %55 ]
  %59 = add i32 %58, %26
  %60 = tail call ptr @irq_get_irq_data(i32 noundef %59) #16
  %61 = getelementptr inbounds %struct.irq_data, ptr %60, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  store ptr null, ptr %61, align 4
  %63 = getelementptr inbounds %struct.irq_data, ptr %60, i32 0, i32 5
  store ptr null, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %65, %57
  %66 = phi ptr [ %68, %65 ], [ %62, %57 ]
  %67 = getelementptr inbounds %struct.irq_data, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  tail call void @kfree(ptr noundef nonnull %66) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %65

70:                                               ; preds = %65, %57
  %71 = add nuw i32 %58, 1
  %72 = icmp eq i32 %58, %31
  br i1 %72, label %201, label %57

73:                                               ; preds = %43, %30
  %74 = add nuw i32 %31, 1
  %75 = icmp eq i32 %74, %2
  br i1 %75, label %76, label %30

76:                                               ; preds = %73, %25
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  %77 = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.irq_domain_ops, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %183, label %82

82:                                               ; preds = %76
  %83 = tail call i32 %80(ptr noundef %14, i32 noundef %26, i32 noundef %2, ptr noundef %4) #16
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %183, label %85

85:                                               ; preds = %82
  br i1 %27, label %182, label %87

86:                                               ; preds = %138
  br i1 %27, label %182, label %141

87:                                               ; preds = %138, %85
  %88 = phi i32 [ %139, %138 ], [ 0, %85 ]
  %89 = add i32 %88, %26
  %90 = tail call ptr @irq_get_irq_data(i32 noundef %89) #16
  %91 = getelementptr inbounds %struct.irq_data, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  %95 = or i1 %93, %94
  br i1 %95, label %183, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.irq_data, ptr %90, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %138, label %100

100:                                              ; preds = %116, %96
  %101 = phi ptr [ %119, %116 ], [ %98, %96 ]
  %102 = phi ptr [ %101, %116 ], [ %90, %96 ]
  %103 = phi ptr [ %117, %116 ], [ null, %96 ]
  %104 = getelementptr inbounds %struct.irq_data, ptr %101, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = icmp ne ptr %105, null
  %107 = icmp ne ptr %103, null
  %108 = select i1 %106, i1 %107, i1 false
  %109 = xor i1 %108, true
  %110 = select i1 %106, i1 true, i1 %107
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %112, label %183

112:                                              ; preds = %100
  %113 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %112
  %115 = icmp eq ptr %105, inttoptr (i32 -107 to ptr)
  br i1 %115, label %116, label %183

116:                                              ; preds = %114, %112
  %117 = phi ptr [ %103, %112 ], [ %102, %114 ]
  %118 = getelementptr inbounds %struct.irq_data, ptr %101, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %100

121:                                              ; preds = %116
  %122 = icmp eq ptr %117, null
  br i1 %122, label %138, label %123

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.irq_data, ptr %117, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.irq_data, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.irq_domain, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %89, ptr noundef %129) #18
  %131 = load ptr, ptr %124, align 4
  store ptr null, ptr %124, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %133, %123
  %134 = phi ptr [ %136, %133 ], [ %131, %123 ]
  %135 = getelementptr inbounds %struct.irq_data, ptr %134, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  tail call void @kfree(ptr noundef nonnull %134) #16
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %133

138:                                              ; preds = %133, %123, %121, %96
  %139 = add nuw i32 %88, 1
  %140 = icmp eq i32 %139, %2
  br i1 %140, label %86, label %87

141:                                              ; preds = %179, %86
  %142 = phi i32 [ %180, %179 ], [ 0, %86 ]
  %143 = add i32 %142, %26
  %144 = tail call ptr @irq_get_irq_data(i32 noundef %143) #16
  %145 = icmp eq ptr %144, null
  br i1 %145, label %179, label %146

146:                                              ; preds = %175, %141
  %147 = phi ptr [ %177, %175 ], [ %144, %141 ]
  %148 = getelementptr inbounds %struct.irq_data, ptr %147, i32 0, i32 5
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.irq_domain, ptr %149, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 4
  %153 = getelementptr inbounds %struct.irq_data, ptr %147, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.irq_domain, ptr %149, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %155) #16
  %156 = getelementptr inbounds %struct.irq_domain, ptr %149, i32 0, i32 11
  %157 = load i32, ptr %156, align 4
  %158 = icmp ugt i32 %157, %154
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %160 = getelementptr %struct.irq_domain, ptr %149, i32 0, i32 14, i32 %154
  store volatile ptr %147, ptr %160, align 4
  br label %164

161:                                              ; preds = %146
  %162 = getelementptr inbounds %struct.irq_domain, ptr %149, i32 0, i32 12
  %163 = tail call i32 @radix_tree_insert(ptr noundef %162, i32 noundef %154, ptr noundef nonnull %147) #16
  br label %164

164:                                              ; preds = %161, %159
  tail call void @mutex_unlock(ptr noundef %155) #16
  %165 = getelementptr inbounds %struct.irq_domain, ptr %149, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.irq_data, ptr %147, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.irq_chip, ptr %170, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  store ptr %174, ptr %165, align 4
  br label %175

175:                                              ; preds = %172, %168, %164
  %176 = getelementptr inbounds %struct.irq_data, ptr %147, i32 0, i32 6
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %146

179:                                              ; preds = %175, %141
  tail call void @irq_modify_status(i32 noundef %143, i32 noundef 2048, i32 noundef 0) #16
  %180 = add nuw i32 %142, 1
  %181 = icmp eq i32 %180, %2
  br i1 %181, label %182, label %141

182:                                              ; preds = %179, %86, %85
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %203

183:                                              ; preds = %114, %100, %87, %82, %76
  %184 = phi i32 [ %83, %82 ], [ -38, %76 ], [ -22, %114 ], [ -22, %100 ], [ -22, %87 ]
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br i1 %27, label %201, label %185

185:                                              ; preds = %198, %183
  %186 = phi i32 [ %199, %198 ], [ 0, %183 ]
  %187 = add i32 %186, %26
  %188 = tail call ptr @irq_get_irq_data(i32 noundef %187) #16
  %189 = getelementptr inbounds %struct.irq_data, ptr %188, i32 0, i32 6
  %190 = load ptr, ptr %189, align 4
  store ptr null, ptr %189, align 4
  %191 = getelementptr inbounds %struct.irq_data, ptr %188, i32 0, i32 5
  store ptr null, ptr %191, align 4
  %192 = icmp eq ptr %190, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %193, %185
  %194 = phi ptr [ %196, %193 ], [ %190, %185 ]
  %195 = getelementptr inbounds %struct.irq_data, ptr %194, i32 0, i32 6
  %196 = load ptr, ptr %195, align 4
  tail call void @kfree(ptr noundef nonnull %194) #16
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %193

198:                                              ; preds = %193, %185
  %199 = add nuw i32 %186, 1
  %200 = icmp eq i32 %199, %2
  br i1 %200, label %201, label %185

201:                                              ; preds = %198, %183, %70, %55
  %202 = phi i32 [ -12, %55 ], [ %184, %183 ], [ %184, %198 ], [ -12, %70 ]
  tail call void @irq_free_descs(i32 noundef %26, i32 noundef %2) #16
  br label %203

203:                                              ; preds = %201, %182, %22, %12
  %204 = phi i32 [ -22, %12 ], [ %202, %201 ], [ %26, %182 ], [ %23, %22 ]
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_push_irq(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %5 = tail call ptr @irq_to_desc(i32 noundef %1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %84, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 4
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1558, i32 noundef 9, ptr noundef null) #16
  br label %84

12:                                               ; preds = %7
  %13 = icmp eq ptr %0, null
  br i1 %13, label %84, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !14

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1564, i32 noundef 9, ptr noundef null) #16
  br label %84

20:                                               ; preds = %14
  %21 = icmp eq ptr %4, null
  br i1 %21, label %84, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %24, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 32) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 4 dereferenceable(32) %4, i32 32, i1 false)
  %33 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 6
  store ptr %30, ptr %33, align 4
  store ptr %0, ptr %25, align 4
  store i32 0, ptr %4, align 4
  %34 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 4
  store ptr null, ptr %35, align 4
  %36 = getelementptr inbounds %struct.irq_data, ptr %4, i32 0, i32 7
  store ptr null, ptr %36, align 4
  %37 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.irq_domain_ops, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = tail call i32 %40(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, ptr noundef %2) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %32
  %46 = phi i32 [ %43, %42 ], [ -38, %32 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %30, i32 32, i1 false)
  tail call void @kfree(ptr noundef nonnull %30) #16
  br label %82

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.irq_domain, ptr %49, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %50) #16
  %51 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = load ptr, ptr %48, align 4
  %54 = getelementptr inbounds %struct.irq_domain, ptr %53, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %58 = load ptr, ptr %48, align 4
  %59 = load i32, ptr %51, align 8
  %60 = getelementptr %struct.irq_domain, ptr %58, i32 0, i32 14, i32 %59
  store volatile ptr %30, ptr %60, align 4
  br label %68

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.irq_domain, ptr %53, i32 0, i32 12
  %63 = tail call ptr @radix_tree_lookup_slot(ptr noundef %62, i32 noundef %52) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %48, align 4
  %67 = getelementptr inbounds %struct.irq_domain, ptr %66, i32 0, i32 12
  tail call void @radix_tree_replace_slot(ptr noundef %67, ptr noundef nonnull %63, ptr noundef nonnull %30) #16
  br label %68

68:                                               ; preds = %65, %61, %57
  %69 = load ptr, ptr %48, align 4
  %70 = getelementptr inbounds %struct.irq_domain, ptr %69, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %70) #16
  %71 = load i32, ptr %34, align 4
  %72 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %72) #16
  %73 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, %71
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  %77 = getelementptr %struct.irq_domain, ptr %0, i32 0, i32 14, i32 %71
  store volatile ptr %4, ptr %77, align 4
  br label %81

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 12
  %80 = tail call i32 @radix_tree_insert(ptr noundef %79, i32 noundef %71, ptr noundef nonnull %4) #16
  br label %81

81:                                               ; preds = %78, %76
  tail call void @mutex_unlock(ptr noundef %72) #16
  br label %82

82:                                               ; preds = %81, %45
  %83 = phi i32 [ 0, %81 ], [ %46, %45 ]
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  br label %84

84:                                               ; preds = %82, %28, %22, %20, %19, %12, %11, %3
  %85 = phi i32 [ -16, %11 ], [ -22, %19 ], [ %83, %82 ], [ -22, %3 ], [ -22, %12 ], [ -22, %20 ], [ -22, %22 ], [ -12, %28 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_pop_irq(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %4 = tail call ptr @irq_to_desc(i32 noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %97, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.irq_desc, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1640, i32 noundef 9, ptr noundef null) #16
  br label %97

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  %13 = icmp eq ptr %3, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %97, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %23, %15
  %19 = phi ptr [ %25, %23 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.irq_data, ptr %19, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18

27:                                               ; preds = %23, %18
  %28 = phi ptr [ null, %23 ], [ %19, %18 ]
  %29 = icmp eq ptr %3, %28
  br i1 %29, label %31, label %30, !prof !9

30:                                               ; preds = %27, %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1652, i32 noundef 9, ptr noundef null) #16
  br label %97

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1655, i32 noundef 9, ptr noundef null) #16
  br label %97

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !14

40:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1659, i32 noundef 9, ptr noundef null) #16
  br label %97

41:                                               ; preds = %36
  tail call void @mutex_lock(ptr noundef nonnull @irq_domain_mutex) #16
  store ptr null, ptr %37, align 4
  %42 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %44) #16
  %45 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, %43
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = getelementptr %struct.irq_domain, ptr %0, i32 0, i32 14, i32 %43
  store volatile ptr null, ptr %49, align 4
  br label %53

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 12
  %52 = tail call ptr @radix_tree_delete(ptr noundef %51, i32 noundef %43) #16
  br label %53

53:                                               ; preds = %50, %48
  tail call void @mutex_unlock(ptr noundef %44) #16
  %54 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.irq_domain_ops, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %75, label %59

59:                                               ; preds = %53
  %60 = tail call ptr @irq_get_irq_data(i32 noundef %1) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %67, %59
  %63 = phi ptr [ %69, %67 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.irq_data, ptr %63, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.irq_data, ptr %63, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %62

71:                                               ; preds = %62
  %72 = load ptr, ptr %54, align 4
  %73 = getelementptr inbounds %struct.irq_domain_ops, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %0, i32 noundef %1, i32 noundef 1) #16
  br label %75

75:                                               ; preds = %71, %67, %59, %53
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %38, i32 32, i1 false)
  %76 = load ptr, ptr %32, align 4
  %77 = getelementptr inbounds %struct.irq_domain, ptr %76, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %77) #16
  %78 = load i32, ptr %42, align 4
  %79 = load ptr, ptr %32, align 4
  %80 = getelementptr inbounds %struct.irq_domain, ptr %79, i32 0, i32 11
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  %84 = load ptr, ptr %32, align 4
  %85 = load i32, ptr %42, align 4
  %86 = getelementptr %struct.irq_domain, ptr %84, i32 0, i32 14, i32 %85
  store volatile ptr %3, ptr %86, align 4
  br label %94

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.irq_domain, ptr %79, i32 0, i32 12
  %89 = tail call ptr @radix_tree_lookup_slot(ptr noundef %88, i32 noundef %78) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %32, align 4
  %93 = getelementptr inbounds %struct.irq_domain, ptr %92, i32 0, i32 12
  tail call void @radix_tree_replace_slot(ptr noundef %93, ptr noundef nonnull %89, ptr noundef %3) #16
  br label %94

94:                                               ; preds = %91, %87, %83
  %95 = load ptr, ptr %32, align 4
  %96 = getelementptr inbounds %struct.irq_domain, ptr %95, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %96) #16
  tail call void @mutex_unlock(ptr noundef nonnull @irq_domain_mutex) #16
  tail call void @kfree(ptr noundef nonnull %38) #16
  br label %97

97:                                               ; preds = %94, %40, %35, %30, %11, %10, %2
  %98 = phi i32 [ -16, %10 ], [ -22, %30 ], [ -22, %35 ], [ -22, %40 ], [ 0, %94 ], [ -22, %2 ], [ -22, %11 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_alloc_irqs_parent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_domain_ops, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef nonnull %6, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  br label %16

16:                                               ; preds = %14, %8, %4
  %17 = phi i32 [ -38, %4 ], [ %15, %14 ], [ -38, %8 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_domain_activate_irq(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @__irq_domain_activate_irq(ptr noundef %0, i1 noundef zeroext %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 4
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %5, %2 ]
  %16 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %17 = or i32 %15, 512
  store i32 %17, ptr %16, align 4
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ 0, %14 ], [ %9, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__irq_domain_activate_irq(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @__irq_domain_activate_irq(ptr noundef nonnull %10, i1 noundef zeroext %1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_domain_ops, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef nonnull %6, ptr noundef nonnull %0, i1 noundef zeroext %1) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %39, %24
  %28 = phi ptr [ %41, %39 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.irq_data, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.irq_domain, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.irq_domain_ops, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void %36(ptr noundef nonnull %30, ptr noundef nonnull %28) #16
  br label %39

39:                                               ; preds = %38, %32
  %40 = getelementptr inbounds %struct.irq_data, ptr %28, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27

43:                                               ; preds = %39, %27, %24, %21, %15, %12, %4, %2
  %44 = phi i32 [ 0, %4 ], [ 0, %2 ], [ %13, %12 ], [ %22, %24 ], [ 0, %21 ], [ 0, %15 ], [ %22, %27 ], [ %22, %39 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_domain_deactivate_irq(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %21, %1
  %8 = phi ptr [ %23, %21 ], [ %0, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.irq_data, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.irq_domain_ops, ptr %16, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void %18(ptr noundef nonnull %12, ptr noundef nonnull %8) #16
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %struct.irq_data, ptr %8, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7

25:                                               ; preds = %21, %10, %7
  %26 = load ptr, ptr %2, align 4
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -513
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup_slot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_replace_slot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148155435}
!11 = !{i64 555418, i64 2148045389, i64 2148045415, i64 2148045462, i64 2148045484, i64 2148045512, i64 2148045532}
!12 = !{i64 2148058285, i64 2148058317, i64 2148058346, i64 2148058380, i64 2148058411, i64 2148058434}
!13 = !{i64 2148155638}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2152959167}
!16 = !{i64 2149547715}
!17 = !{i64 2149547932}
!18 = !{!"auto-init"}
!19 = !{i64 2153014361}
!20 = !{i64 2152962558}
!21 = !{i64 2153032414}
