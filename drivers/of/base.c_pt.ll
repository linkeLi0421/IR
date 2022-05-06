; ModuleID = '/llk/IR/drivers/of/base.c_pt.bc'
source_filename = "../drivers/of/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_root:\09\09\09\09\09"
module asm "\09.asciz \09\22of_root\22\09\09\09\09\09"
module asm "__kstrtabns_of_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_chosen:\09\09\09\09\09"
module asm "\09.asciz \09\22of_chosen\22\09\09\09\09\09"
module asm "__kstrtabns_of_chosen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_node_name_eq:\09\09\09\09\09"
module asm "\09.asciz \09\22of_node_name_eq\22\09\09\09\09\09"
module asm "__kstrtabns_of_node_name_eq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_node_name_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22of_node_name_prefix\22\09\09\09\09\09"
module asm "__kstrtabns_of_node_name_prefix:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_n_addr_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22of_n_addr_cells\22\09\09\09\09\09"
module asm "__kstrtabns_of_n_addr_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_n_size_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22of_n_size_cells\22\09\09\09\09\09"
module asm "__kstrtabns_of_n_size_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_property:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_property\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_all_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_all_nodes\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_all_nodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_property\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_cpu_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_cpu_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_cpu_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_cpu_node_to_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_cpu_node_to_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_cpu_node_to_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_cpu_state_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_cpu_state_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_cpu_state_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_is_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_is_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_is_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_machine_is_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22of_machine_is_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_of_machine_is_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_is_available\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_is_big_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_is_big_endian\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_is_big_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_next_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_next_parent\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_next_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_next_child:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_next_child\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_next_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_next_available_child:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_next_available_child\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_next_available_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_next_cpu_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_next_cpu_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_next_cpu_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_compatible_child:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_compatible_child\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_compatible_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_child_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_child_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_child_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_node_opts_by_path:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_node_opts_by_path\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_node_opts_by_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_node_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_node_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_node_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_node_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_node_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_node_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_compatible_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_compatible_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_compatible_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_node_with_property:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_node_with_property\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_node_with_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_match_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_match_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_match_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_matching_node_and_match:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_matching_node_and_match\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_matching_node_and_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_modalias_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_modalias_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_modalias_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_node_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_node_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_node_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phandle_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phandle_iterator_init\22\09\09\09\09\09"
module asm "__kstrtabns_of_phandle_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_phandle_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22of_phandle_iterator_next\22\09\09\09\09\09"
module asm "__kstrtabns_of_phandle_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___of_parse_phandle_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22__of_parse_phandle_with_args\22\09\09\09\09\09"
module asm "__kstrtabns___of_parse_phandle_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_parse_phandle_with_args_map:\09\09\09\09\09"
module asm "\09.asciz \09\22of_parse_phandle_with_args_map\22\09\09\09\09\09"
module asm "__kstrtabns_of_parse_phandle_with_args_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_count_phandle_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22of_count_phandle_with_args\22\09\09\09\09\09"
module asm "__kstrtabns_of_count_phandle_with_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_add_property:\09\09\09\09\09"
module asm "\09.asciz \09\22of_add_property\22\09\09\09\09\09"
module asm "__kstrtabns_of_add_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_remove_property:\09\09\09\09\09"
module asm "\09.asciz \09\22of_remove_property\22\09\09\09\09\09"
module asm "__kstrtabns_of_remove_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_alias_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_alias_get_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_alias_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_alias_get_alias_list:\09\09\09\09\09"
module asm "\09.asciz \09\22of_alias_get_alias_list\22\09\09\09\09\09"
module asm "__kstrtabns_of_alias_get_alias_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_alias_get_highest_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_alias_get_highest_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_alias_get_highest_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_console_check:\09\09\09\09\09"
module asm "\09.asciz \09\22of_console_check\22\09\09\09\09\09"
module asm "__kstrtabns_of_console_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_map_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_map_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_map_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.alias_prop = type { %struct.list_head, ptr, ptr, i32, [0 x i8] }

@aliases_lookup = dso_local global %struct.list_head { ptr @aliases_lookup, ptr @aliases_lookup }, align 4
@of_root = dso_local global ptr null, align 4
@__kstrtab_of_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_root = external dso_local constant [0 x i8], align 1
@__ksymtab_of_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_root to i32), ptr @__kstrtab_of_root, ptr @__kstrtabns_of_root }, section "___ksymtab+of_root", align 4
@of_chosen = dso_local global ptr null, align 4
@__kstrtab_of_chosen = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_chosen = external dso_local constant [0 x i8], align 1
@__ksymtab_of_chosen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_chosen to i32), ptr @__kstrtab_of_chosen, ptr @__kstrtabns_of_chosen }, section "___ksymtab+of_chosen", align 4
@of_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_mutex, i64 12), ptr getelementptr (i8, ptr @of_mutex, i64 12) } }, align 4
@devtree_lock = dso_local global %struct.raw_spinlock zeroinitializer, align 4
@__kstrtab_of_node_name_eq = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_node_name_eq = external dso_local constant [0 x i8], align 1
@__ksymtab_of_node_name_eq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_node_name_eq to i32), ptr @__kstrtab_of_node_name_eq, ptr @__kstrtabns_of_node_name_eq }, section "___ksymtab+of_node_name_eq", align 4
@__kstrtab_of_node_name_prefix = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_node_name_prefix = external dso_local constant [0 x i8], align 1
@__ksymtab_of_node_name_prefix = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_node_name_prefix to i32), ptr @__kstrtab_of_node_name_prefix, ptr @__kstrtabns_of_node_name_prefix }, section "___ksymtab+of_node_name_prefix", align 4
@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@__kstrtab_of_n_addr_cells = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_n_addr_cells = external dso_local constant [0 x i8], align 1
@__ksymtab_of_n_addr_cells = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_n_addr_cells to i32), ptr @__kstrtab_of_n_addr_cells, ptr @__kstrtabns_of_n_addr_cells }, section "___ksymtab+of_n_addr_cells", align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@__kstrtab_of_n_size_cells = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_n_size_cells = external dso_local constant [0 x i8], align 1
@__ksymtab_of_n_size_cells = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_n_size_cells to i32), ptr @__kstrtab_of_n_size_cells, ptr @__kstrtabns_of_n_size_cells }, section "___ksymtab+of_n_size_cells", align 4
@phandle_cache = internal unnamed_addr global [128 x ptr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"devicetree\00", align 1
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@of_kset = dso_local local_unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"\013OF: failed to register existing nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"device-tree\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"/sys/firmware/devicetree/base\00", align 1
@__kstrtab_of_find_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_property = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_property to i32), ptr @__kstrtab_of_find_property, ptr @__kstrtabns_of_find_property }, section "___ksymtab+of_find_property", align 4
@__kstrtab_of_find_all_nodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_all_nodes = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_all_nodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_all_nodes to i32), ptr @__kstrtab_of_find_all_nodes, ptr @__kstrtabns_of_find_all_nodes }, section "___ksymtab+of_find_all_nodes", align 4
@__kstrtab_of_get_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_property = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_property to i32), ptr @__kstrtab_of_get_property, ptr @__kstrtabns_of_get_property }, section "___ksymtab+of_get_property", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_of_get_cpu_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_cpu_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_cpu_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_cpu_node to i32), ptr @__kstrtab_of_get_cpu_node, ptr @__kstrtabns_of_get_cpu_node }, section "___ksymtab+of_get_cpu_node", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_of_cpu_node_to_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_cpu_node_to_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_cpu_node_to_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_cpu_node_to_id to i32), ptr @__kstrtab_of_cpu_node_to_id, ptr @__kstrtabns_of_cpu_node_to_id }, section "___ksymtab+of_cpu_node_to_id", align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"domain-idle-states\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"cpu-idle-states\00", align 1
@__kstrtab_of_get_cpu_state_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_cpu_state_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_cpu_state_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_cpu_state_node to i32), ptr @__kstrtab_of_get_cpu_state_node, ptr @__kstrtabns_of_get_cpu_state_node }, section "___ksymtab+of_get_cpu_state_node", align 4
@__kstrtab_of_device_is_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_is_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_is_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_is_compatible to i32), ptr @__kstrtab_of_device_is_compatible, ptr @__kstrtabns_of_device_is_compatible }, section "___ksymtab+of_device_is_compatible", align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__kstrtab_of_machine_is_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_machine_is_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_of_machine_is_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_machine_is_compatible to i32), ptr @__kstrtab_of_machine_is_compatible, ptr @__kstrtabns_of_machine_is_compatible }, section "___ksymtab+of_machine_is_compatible", align 4
@__kstrtab_of_device_is_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_is_available = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_is_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_is_available to i32), ptr @__kstrtab_of_device_is_available, ptr @__kstrtabns_of_device_is_available }, section "___ksymtab+of_device_is_available", align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@__kstrtab_of_device_is_big_endian = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_is_big_endian = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_is_big_endian = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_is_big_endian to i32), ptr @__kstrtab_of_device_is_big_endian, ptr @__kstrtabns_of_device_is_big_endian }, section "___ksymtab+of_device_is_big_endian", align 4
@__kstrtab_of_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_parent to i32), ptr @__kstrtab_of_get_parent, ptr @__kstrtabns_of_get_parent }, section "___ksymtab+of_get_parent", align 4
@__kstrtab_of_get_next_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_next_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_next_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_next_parent to i32), ptr @__kstrtab_of_get_next_parent, ptr @__kstrtabns_of_get_next_parent }, section "___ksymtab+of_get_next_parent", align 4
@__kstrtab_of_get_next_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_next_child = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_next_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_next_child to i32), ptr @__kstrtab_of_get_next_child, ptr @__kstrtabns_of_get_next_child }, section "___ksymtab+of_get_next_child", align 4
@__kstrtab_of_get_next_available_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_next_available_child = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_next_available_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_next_available_child to i32), ptr @__kstrtab_of_get_next_available_child, ptr @__kstrtabns_of_get_next_available_child }, section "___ksymtab+of_get_next_available_child", align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@__kstrtab_of_get_next_cpu_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_next_cpu_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_next_cpu_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_next_cpu_node to i32), ptr @__kstrtab_of_get_next_cpu_node, ptr @__kstrtabns_of_get_next_cpu_node }, section "___ksymtab+of_get_next_cpu_node", align 4
@__kstrtab_of_get_compatible_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_compatible_child = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_compatible_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_compatible_child to i32), ptr @__kstrtab_of_get_compatible_child, ptr @__kstrtabns_of_get_compatible_child }, section "___ksymtab+of_get_compatible_child", align 4
@__kstrtab_of_get_child_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_child_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_child_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_child_by_name to i32), ptr @__kstrtab_of_get_child_by_name, ptr @__kstrtabns_of_get_child_by_name }, section "___ksymtab+of_get_child_by_name", align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"/:\00", align 1
@of_aliases = dso_local local_unnamed_addr global ptr null, align 4
@__kstrtab_of_find_node_opts_by_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_node_opts_by_path = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_node_opts_by_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_node_opts_by_path to i32), ptr @__kstrtab_of_find_node_opts_by_path, ptr @__kstrtabns_of_find_node_opts_by_path }, section "___ksymtab+of_find_node_opts_by_path", align 4
@__kstrtab_of_find_node_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_node_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_node_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_node_by_name to i32), ptr @__kstrtab_of_find_node_by_name, ptr @__kstrtabns_of_find_node_by_name }, section "___ksymtab+of_find_node_by_name", align 4
@__kstrtab_of_find_node_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_node_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_node_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_node_by_type to i32), ptr @__kstrtab_of_find_node_by_type, ptr @__kstrtabns_of_find_node_by_type }, section "___ksymtab+of_find_node_by_type", align 4
@__kstrtab_of_find_compatible_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_compatible_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_compatible_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_compatible_node to i32), ptr @__kstrtab_of_find_compatible_node, ptr @__kstrtabns_of_find_compatible_node }, section "___ksymtab+of_find_compatible_node", align 4
@__kstrtab_of_find_node_with_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_node_with_property = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_node_with_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_node_with_property to i32), ptr @__kstrtab_of_find_node_with_property, ptr @__kstrtabns_of_find_node_with_property }, section "___ksymtab+of_find_node_with_property", align 4
@__kstrtab_of_match_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_match_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_match_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_match_node to i32), ptr @__kstrtab_of_match_node, ptr @__kstrtabns_of_match_node }, section "___ksymtab+of_match_node", align 4
@__kstrtab_of_find_matching_node_and_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_matching_node_and_match = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_matching_node_and_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_matching_node_and_match to i32), ptr @__kstrtab_of_find_matching_node_and_match, ptr @__kstrtabns_of_find_matching_node_and_match }, section "___ksymtab+of_find_matching_node_and_match", align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@__kstrtab_of_modalias_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_modalias_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_modalias_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_modalias_node to i32), ptr @__kstrtab_of_modalias_node, ptr @__kstrtabns_of_modalias_node }, section "___ksymtab_gpl+of_modalias_node", align 4
@__kstrtab_of_find_node_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_node_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_node_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_node_by_phandle to i32), ptr @__kstrtab_of_find_node_by_phandle, ptr @__kstrtabns_of_find_node_by_phandle }, section "___ksymtab+of_find_node_by_phandle", align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"%s %pOF\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"\01c%c%08x\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@__kstrtab_of_phandle_iterator_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phandle_iterator_init = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phandle_iterator_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phandle_iterator_init to i32), ptr @__kstrtab_of_phandle_iterator_init, ptr @__kstrtabns_of_phandle_iterator_init }, section "___ksymtab_gpl+of_phandle_iterator_init", align 4
@.str.20 = private unnamed_addr constant [39 x i8] c"\013OF: %pOF: could not find phandle %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"\013OF: %pOF: could not get %s for %pOF\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\013OF: %pOF: %s = %d found %td\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"\013OF: %pOF: phandle %s needs %d, found %td\0A\00", align 1
@__kstrtab_of_phandle_iterator_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_phandle_iterator_next = external dso_local constant [0 x i8], align 1
@__ksymtab_of_phandle_iterator_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_phandle_iterator_next to i32), ptr @__kstrtab_of_phandle_iterator_next, ptr @__kstrtabns_of_phandle_iterator_next }, section "___ksymtab_gpl+of_phandle_iterator_next", align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"drivers/of/base.c\00", align 1
@__kstrtab___of_parse_phandle_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns___of_parse_phandle_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab___of_parse_phandle_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__of_parse_phandle_with_args to i32), ptr @__kstrtab___of_parse_phandle_with_args, ptr @__kstrtabns___of_parse_phandle_with_args }, section "___ksymtab+__of_parse_phandle_with_args", align 4
@of_parse_phandle_with_args_map.dummy_mask = internal unnamed_addr constant [17 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@of_parse_phandle_with_args_map.dummy_pass = internal unnamed_addr constant [17 x i32] zeroinitializer, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"#%s-cells\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%s-map\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"%s-map-mask\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%s-map-pass-thru\00", align 1
@__kstrtab_of_parse_phandle_with_args_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_parse_phandle_with_args_map = external dso_local constant [0 x i8], align 1
@__ksymtab_of_parse_phandle_with_args_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_parse_phandle_with_args_map to i32), ptr @__kstrtab_of_parse_phandle_with_args_map, ptr @__kstrtabns_of_parse_phandle_with_args_map }, section "___ksymtab+of_parse_phandle_with_args_map", align 4
@__kstrtab_of_count_phandle_with_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_count_phandle_with_args = external dso_local constant [0 x i8], align 1
@__ksymtab_of_count_phandle_with_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_count_phandle_with_args to i32), ptr @__kstrtab_of_count_phandle_with_args, ptr @__kstrtabns_of_count_phandle_with_args }, section "___ksymtab+of_count_phandle_with_args", align 4
@__kstrtab_of_add_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_add_property = external dso_local constant [0 x i8], align 1
@__ksymtab_of_add_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_add_property to i32), ptr @__kstrtab_of_add_property, ptr @__kstrtabns_of_add_property }, section "___ksymtab_gpl+of_add_property", align 4
@__kstrtab_of_remove_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_remove_property = external dso_local constant [0 x i8], align 1
@__ksymtab_of_remove_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_remove_property to i32), ptr @__kstrtab_of_remove_property, ptr @__kstrtabns_of_remove_property }, section "___ksymtab_gpl+of_remove_property", align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"/aliases\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"/chosen@0\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@of_stdout_options = internal global ptr null, align 4
@of_stdout = dso_local local_unnamed_addr global ptr null, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@__kstrtab_of_alias_get_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_alias_get_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_alias_get_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_alias_get_id to i32), ptr @__kstrtab_of_alias_get_id, ptr @__kstrtabns_of_alias_get_id }, section "___ksymtab_gpl+of_alias_get_id", align 4
@.str.37 = private unnamed_addr constant [41 x i8] c"\014OF: %s: ID %d >= than bitmap field %d\0A\00", align 1
@__func__.of_alias_get_alias_list = private unnamed_addr constant [24 x i8] c"of_alias_get_alias_list\00", align 1
@__kstrtab_of_alias_get_alias_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_alias_get_alias_list = external dso_local constant [0 x i8], align 1
@__ksymtab_of_alias_get_alias_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_alias_get_alias_list to i32), ptr @__kstrtab_of_alias_get_alias_list, ptr @__kstrtabns_of_alias_get_alias_list }, section "___ksymtab_gpl+of_alias_get_alias_list", align 4
@__kstrtab_of_alias_get_highest_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_alias_get_highest_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_alias_get_highest_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_alias_get_highest_id to i32), ptr @__kstrtab_of_alias_get_highest_id, ptr @__kstrtabns_of_alias_get_highest_id }, section "___ksymtab_gpl+of_alias_get_highest_id", align 4
@console_set_on_cmdline = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_of_console_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_console_check = external dso_local constant [0 x i8], align 1
@__ksymtab_of_console_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_console_check to i32), ptr @__kstrtab_of_console_check, ptr @__kstrtabns_of_console_check }, section "___ksymtab_gpl+of_console_check", align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"l2-cache\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"next-level-cache\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"cache-level\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"\013OF: %pOF: Error: Bad %s length: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [76 x i8] c"\013OF: %pOF: Invalid %s translation - %s-mask (0x%x) ignores id-base (0x%x)\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"\016OF: %pOF: no %s translation for id 0x%x on %pOF\0A\00", align 1
@__kstrtab_of_map_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_map_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_map_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_map_id to i32), ptr @__kstrtab_of_map_id, ptr @__kstrtabns_of_map_id }, section "___ksymtab_gpl+of_map_id", align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"fail-\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab___of_parse_phandle_with_args, ptr @__ksymtab_of_add_property, ptr @__ksymtab_of_alias_get_alias_list, ptr @__ksymtab_of_alias_get_highest_id, ptr @__ksymtab_of_alias_get_id, ptr @__ksymtab_of_chosen, ptr @__ksymtab_of_console_check, ptr @__ksymtab_of_count_phandle_with_args, ptr @__ksymtab_of_cpu_node_to_id, ptr @__ksymtab_of_device_is_available, ptr @__ksymtab_of_device_is_big_endian, ptr @__ksymtab_of_device_is_compatible, ptr @__ksymtab_of_find_all_nodes, ptr @__ksymtab_of_find_compatible_node, ptr @__ksymtab_of_find_matching_node_and_match, ptr @__ksymtab_of_find_node_by_name, ptr @__ksymtab_of_find_node_by_phandle, ptr @__ksymtab_of_find_node_by_type, ptr @__ksymtab_of_find_node_opts_by_path, ptr @__ksymtab_of_find_node_with_property, ptr @__ksymtab_of_find_property, ptr @__ksymtab_of_get_child_by_name, ptr @__ksymtab_of_get_compatible_child, ptr @__ksymtab_of_get_cpu_node, ptr @__ksymtab_of_get_cpu_state_node, ptr @__ksymtab_of_get_next_available_child, ptr @__ksymtab_of_get_next_child, ptr @__ksymtab_of_get_next_cpu_node, ptr @__ksymtab_of_get_next_parent, ptr @__ksymtab_of_get_parent, ptr @__ksymtab_of_get_property, ptr @__ksymtab_of_machine_is_compatible, ptr @__ksymtab_of_map_id, ptr @__ksymtab_of_match_node, ptr @__ksymtab_of_modalias_node, ptr @__ksymtab_of_n_addr_cells, ptr @__ksymtab_of_n_size_cells, ptr @__ksymtab_of_node_name_eq, ptr @__ksymtab_of_node_name_prefix, ptr @__ksymtab_of_parse_phandle_with_args_map, ptr @__ksymtab_of_phandle_iterator_init, ptr @__ksymtab_of_phandle_iterator_next, ptr @__ksymtab_of_remove_property, ptr @__ksymtab_of_root], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_node_name_eq(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @strrchr(ptr noundef %6, i32 noundef 47) #16
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 1
  %10 = select i1 %8, ptr %6, ptr %9
  %11 = tail call ptr @strchrnul(ptr noundef %10, i32 noundef 64) #16
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %10 to i32
  %14 = sub i32 %12, %13
  %15 = tail call i32 @strlen(ptr noundef %1)
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = tail call i32 @strncmp(ptr noundef %10, ptr noundef %1, i32 noundef %14)
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %17, %4, %2
  %21 = phi i1 [ false, %2 ], [ false, %4 ], [ %19, %17 ]
  ret i1 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @of_node_name_prefix(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @strrchr(ptr noundef %6, i32 noundef 47) #16
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 1
  %10 = select i1 %8, ptr %6, ptr %9
  %11 = tail call i32 @strlen(ptr noundef %1)
  %12 = tail call i32 @strncmp(ptr noundef %10, ptr noundef %1, i32 noundef %11)
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %4, %2
  %15 = phi i1 [ %13, %4 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_bus_n_addr_cells(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4

14:                                               ; preds = %10, %8, %1
  %15 = phi i32 [ %9, %8 ], [ 1, %1 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_n_addr_cells(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %14, %1
  %9 = phi ptr [ %16, %14 ], [ %6, %1 ]
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, ptr %2, align 4
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8

18:                                               ; preds = %14, %12, %1
  %19 = phi i32 [ %13, %12 ], [ 1, %1 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_bus_n_size_cells(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i32, ptr %2, align 4
  br label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4

14:                                               ; preds = %10, %8, %1
  %15 = phi i32 [ %9, %8 ], [ 1, %1 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_n_size_cells(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %14, %1
  %9 = phi ptr [ %16, %14 ], [ %6, %1 ]
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, ptr %2, align 4
  br label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8

18:                                               ; preds = %14, %12, %1
  %19 = phi i32 [ %13, %12 ], [ 1, %1 ], [ 1, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__of_phandle_cache_inv_entry(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = mul i32 %0, 1640531527
  %5 = lshr i32 %4, 25
  %6 = getelementptr [128 x ptr], ptr @phandle_cache, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store ptr null, ptr %6, align 4
  br label %14

14:                                               ; preds = %13, %9, %3, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_core_init() local_unnamed_addr #6 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %1 = load ptr, ptr @firmware_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef %1) #16
  store ptr %2, ptr @of_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #17
  br label %43

6:                                                ; preds = %0
  %7 = load ptr, ptr @of_root, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %35, %6
  %10 = phi ptr [ %36, %35 ], [ %7, %6 ]
  %11 = tail call i32 @__of_attach_node_sysfs(ptr noundef nonnull %10) #16
  %12 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = mul i32 %13, 1640531527
  %17 = lshr i32 %16, 25
  %18 = getelementptr [128 x ptr], ptr @phandle_cache, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store ptr %10, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %15, %9
  %23 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %29, %26 ], [ %10, %22 ]
  %28 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ne ptr %29, null
  %31 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %26, label %35

35:                                               ; preds = %26, %22
  %36 = phi ptr [ %24, %22 ], [ %32, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9

38:                                               ; preds = %35, %6
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  %39 = load ptr, ptr @of_root, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @proc_symlink(ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull @.str.5) #16
  br label %43

43:                                               ; preds = %41, %38, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__of_find_all_nodes(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %13, %3
  %8 = phi ptr [ %10, %13 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 8
  br i1 %11, label %16, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %12, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %7, label %19

16:                                               ; preds = %7, %1
  %17 = phi ptr [ @of_root, %1 ], [ %12, %7 ]
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi ptr [ %5, %3 ], [ %18, %16 ], [ %14, %13 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_attach_node_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_property(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %20, %6
  %11 = phi ptr [ %22, %20 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %1) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = icmp eq ptr %2, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10

24:                                               ; preds = %20, %17, %15, %6, %3
  %25 = phi ptr [ null, %3 ], [ %11, %15 ], [ %11, %17 ], [ null, %6 ], [ null, %20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_all_nodes(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %14, %4
  %9 = phi ptr [ %11, %14 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 8
  br i1 %12, label %17, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %13, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %8, label %20

17:                                               ; preds = %8, %1
  %18 = phi ptr [ @of_root, %1 ], [ %13, %8 ]
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %14, %4
  %21 = phi ptr [ %6, %4 ], [ %19, %17 ], [ %15, %14 ]
  %22 = tail call ptr @of_node_get(ptr noundef %21) #16
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %2) #16
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_get_property(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %19, %5
  %10 = phi ptr [ %21, %19 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %1) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = icmp eq ptr %2, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.property, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4
  br label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.property, ptr %10, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %9

23:                                               ; preds = %16, %14
  %24 = getelementptr inbounds %struct.property, ptr %10, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19, %5, %3
  %27 = phi ptr [ %25, %23 ], [ null, %3 ], [ null, %5 ], [ null, %19 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_property(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %20, %6
  %11 = phi ptr [ %22, %20 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %1) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = icmp eq ptr %2, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  br label %25

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10

24:                                               ; preds = %20, %6, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  br label %28

25:                                               ; preds = %17, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  %26 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi ptr [ %27, %25 ], [ null, %24 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @of_get_cpu_hwid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %0, ptr %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %15, %2
  %10 = phi ptr [ %17, %15 ], [ %7, %2 ]
  %11 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #16
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  br label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9

19:                                               ; preds = %15, %13, %2
  %20 = phi i32 [ %14, %13 ], [ 1, %2 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %21 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %22 = icmp eq ptr %0, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %32, %23
  %28 = phi ptr [ %34, %32 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @strcmp(ptr noundef %29, ptr noundef nonnull dereferenceable(4) @.str.6) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27

36:                                               ; preds = %32, %23, %19
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %21) #16
  br label %65

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %21) #16
  %40 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ne ptr %41, null
  %43 = icmp ne i32 %20, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = shl i32 %1, 2
  %47 = add i32 %46, 4
  %48 = mul i32 %47, %20
  %49 = icmp ugt i32 %48, %39
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = mul i32 %20, %1
  %52 = getelementptr i32, ptr %41, i32 %51
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i64 [ %62, %53 ], [ 0, %50 ]
  %55 = phi i32 [ %57, %53 ], [ %20, %50 ]
  %56 = phi ptr [ %63, %53 ], [ %52, %50 ]
  %57 = add i32 %55, -1
  %58 = shl i64 %54, 32
  %59 = load i32, ptr %56, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #16
  %61 = zext i32 %60 to i64
  %62 = or i64 %58, %61
  %63 = getelementptr i32, ptr %56, i32 1
  %64 = icmp eq i32 %57, 0
  br i1 %64, label %65, label %53

65:                                               ; preds = %53, %45, %37, %36
  %66 = phi i64 [ -1, %45 ], [ -1, %37 ], [ -1, %36 ], [ %62, %53 ]
  ret i64 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_match_cpu_phys_id(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = icmp eq i32 %3, %0
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_find_n_match_cpu_physical_id(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr %0, ptr %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %16, %3
  %11 = phi ptr [ %18, %16 ], [ %8, %3 ]
  %12 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #16
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10

20:                                               ; preds = %16, %14, %3
  %21 = phi i32 [ %15, %14 ], [ 1, %3 ], [ 1, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %22 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %23 = icmp eq ptr %0, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %42, label %28

28:                                               ; preds = %38, %24
  %29 = phi ptr [ %40, %38 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(4) @.str.6) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.property, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %22) #16
  %36 = getelementptr inbounds %struct.property, ptr %29, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  br label %43

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.property, ptr %29, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %28

42:                                               ; preds = %38, %24, %20
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %22) #16
  br label %43

43:                                               ; preds = %42, %33
  %44 = phi i32 [ 0, %42 ], [ %35, %33 ]
  %45 = phi ptr [ null, %42 ], [ %37, %33 ]
  %46 = icmp ne ptr %45, null
  %47 = icmp ne i32 %21, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = call zeroext i1 @arch_match_cpu_phys_id(i32 noundef %1, i64 noundef 0) #16
  br i1 %50, label %81, label %51

51:                                               ; preds = %49, %43
  %52 = select i1 %46, i1 %47, i1 false
  br i1 %52, label %53, label %81

53:                                               ; preds = %51
  %54 = shl i32 %21, 2
  %55 = udiv i32 %44, %54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %77, %53
  %58 = phi i32 [ %79, %77 ], [ 0, %53 ]
  %59 = phi ptr [ %78, %77 ], [ %45, %53 ]
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i64 [ %69, %60 ], [ 0, %57 ]
  %62 = phi i32 [ %64, %60 ], [ %21, %57 ]
  %63 = phi ptr [ %70, %60 ], [ %59, %57 ]
  %64 = add i32 %62, -1
  %65 = shl i64 %61, 32
  %66 = load i32, ptr %63, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #16
  %68 = zext i32 %67 to i64
  %69 = or i64 %65, %68
  %70 = getelementptr i32, ptr %63, i32 1
  %71 = icmp eq i32 %64, 0
  br i1 %71, label %72, label %60

72:                                               ; preds = %60
  %73 = call zeroext i1 @arch_match_cpu_phys_id(i32 noundef %1, i64 noundef %69) #16
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = icmp eq ptr %2, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %74
  store i32 %58, ptr %2, align 4
  br label %81

77:                                               ; preds = %72
  %78 = getelementptr i32, ptr %59, i32 %21
  %79 = add nuw nsw i32 %58, 1
  %80 = icmp eq i32 %79, %55
  br i1 %80, label %81, label %57

81:                                               ; preds = %77, %76, %74, %53, %51, %49
  %82 = phi i1 [ true, %49 ], [ false, %51 ], [ true, %76 ], [ true, %74 ], [ false, %53 ], [ false, %77 ]
  ret i1 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_cpu_node(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_get_next_cpu_node(ptr noundef null)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %9, %8 ], [ %3, %2 ]
  %7 = tail call zeroext i1 @arch_find_n_match_cpu_physical_id(ptr noundef nonnull %6, i32 noundef %0, ptr noundef %1)
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5

11:                                               ; preds = %8, %5, %2
  %12 = phi ptr [ null, %2 ], [ null, %8 ], [ %6, %5 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_next_cpu_node(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  br label %14

7:                                                ; preds = %1
  %8 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.13, ptr noundef null) #16
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @of_node_put(ptr noundef nonnull %8) #16
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %4, %3 ], [ %9, %11 ]
  %16 = phi ptr [ %6, %3 ], [ %13, %11 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %83, label %18

18:                                               ; preds = %79, %14
  %19 = phi ptr [ %81, %79 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %28, %18
  %24 = phi ptr [ %30, %28 ], [ %21, %18 ]
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(7) @.str.44) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.property, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %23

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.property, ptr %24, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @strcmp(ptr noundef nonnull %34, ptr noundef nonnull dereferenceable(5) @.str.47) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @strncmp(ptr noundef nonnull %34, ptr noundef nonnull dereferenceable(6) @.str.48, i32 noundef 5) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %39, %32, %28, %18
  %43 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @strrchr(ptr noundef %44, i32 noundef 47) #16
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 1
  %48 = select i1 %46, ptr %44, ptr %47
  %49 = tail call ptr @strchrnul(ptr noundef %48, i32 noundef 64) #16
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %48 to i32
  %52 = sub i32 %50, %51
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = tail call i32 @strncmp(ptr noundef %48, ptr noundef nonnull dereferenceable(4) @.str.14, i32 noundef 3) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54, %42
  %58 = load ptr, ptr %20, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %65, %57
  %61 = phi ptr [ %67, %65 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @strcmp(ptr noundef %62, ptr noundef nonnull dereferenceable(12) @.str.49) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.property, ptr %61, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %60

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.property, ptr %61, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @strcmp(ptr noundef nonnull %71, ptr noundef nonnull dereferenceable(4) @.str.14) #16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %54
  %77 = tail call ptr @of_node_get(ptr noundef nonnull %19) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %73, %69, %65, %57, %39, %36
  %80 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %18

83:                                               ; preds = %79, %76, %14, %7
  %84 = phi i32 [ %15, %14 ], [ %9, %7 ], [ %15, %76 ], [ %15, %79 ]
  %85 = phi ptr [ null, %14 ], [ null, %7 ], [ null, %79 ], [ %19, %76 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %84) #16
  ret ptr %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_cpu_node_to_id(ptr noundef readnone %0) #0 {
  br label %2

2:                                                ; preds = %23, %1
  %3 = phi i32 [ -1, %1 ], [ %4, %23 ]
  %4 = tail call i32 @cpumask_next(i32 noundef %3, ptr noundef nonnull @__cpu_possible_mask) #18
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = tail call ptr @get_cpu_device(i32 noundef %4) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %16, %10
  %14 = phi ptr [ %17, %16 ], [ %11, %10 ]
  %15 = tail call zeroext i1 @arch_find_n_match_cpu_physical_id(ptr noundef nonnull %14, i32 noundef %4, ptr noundef null) #16
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %14) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %13

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @of_node_get(ptr noundef %21) #16
  br label %23

23:                                               ; preds = %19, %16, %13, %10
  %24 = phi ptr [ %22, %19 ], [ null, %10 ], [ null, %16 ], [ %14, %13 ]
  %25 = icmp eq ptr %24, %0
  tail call void @of_node_put(ptr noundef %24) #16
  br i1 %25, label %26, label %2

26:                                               ; preds = %23, %2
  %27 = phi i32 [ %4, %23 ], [ -19, %2 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_cpu_state_node(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !8
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #16, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %4) #16
  %11 = icmp ne i32 %10, 0
  %12 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  %13 = load ptr, ptr %5, align 4
  call void @of_node_put(ptr noundef %13) #16
  %14 = icmp eq ptr %12, null
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !8
  %17 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %3) #16
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %3, align 4
  %20 = select i1 %18, ptr %19, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  br label %21

21:                                               ; preds = %16, %8
  %22 = phi ptr [ %20, %16 ], [ %12, %8 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #16
  ret ptr %22
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_is_compatible(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__of_device_is_compatible(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %20, %11
  %16 = phi ptr [ %22, %20 ], [ %13, %11 ]
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(11) @.str.16) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.property, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %15

24:                                               ; preds = %20, %15, %11, %9
  %25 = phi ptr [ null, %9 ], [ null, %11 ], [ %16, %15 ], [ null, %20 ]
  %26 = tail call ptr @of_prop_next_string(ptr noundef %25, ptr noundef null) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %96, label %28

28:                                               ; preds = %33, %24
  %29 = phi i32 [ %35, %33 ], [ 0, %24 ]
  %30 = phi ptr [ %34, %33 ], [ %26, %24 ]
  %31 = tail call i32 @strcasecmp(ptr noundef nonnull %30, ptr noundef nonnull %1)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @of_prop_next_string(ptr noundef %25, ptr noundef nonnull %30) #16
  %35 = add i32 %29, 1
  %36 = icmp eq ptr %34, null
  br i1 %36, label %96, label %28

37:                                               ; preds = %28
  %38 = mul i32 %29, -4
  %39 = add i32 %38, 1073741823
  br label %40

40:                                               ; preds = %37, %6, %4
  %41 = phi i32 [ %39, %37 ], [ 0, %6 ], [ 0, %4 ]
  %42 = icmp eq ptr %2, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = load i8, ptr %2, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = icmp eq ptr %0, null
  br i1 %47, label %96, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %57, %48
  %53 = phi ptr [ %59, %57 ], [ %50, %48 ]
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef nonnull dereferenceable(12) @.str.49) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.property, ptr %53, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %52

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.property, ptr %53, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %96, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @strcmp(ptr noundef nonnull %63, ptr noundef nonnull %2) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = add i32 %41, 2
  br label %70

70:                                               ; preds = %68, %43, %40
  %71 = phi i32 [ %69, %68 ], [ %41, %43 ], [ %41, %40 ]
  %72 = icmp eq ptr %3, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %3, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %73
  %77 = icmp eq ptr %0, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = tail call ptr @strrchr(ptr noundef %80, i32 noundef 47) #16
  %82 = icmp eq ptr %81, null
  %83 = getelementptr i8, ptr %81, i32 1
  %84 = select i1 %82, ptr %80, ptr %83
  %85 = tail call ptr @strchrnul(ptr noundef %84, i32 noundef 64) #16
  %86 = ptrtoint ptr %85 to i32
  %87 = ptrtoint ptr %84 to i32
  %88 = sub i32 %86, %87
  %89 = tail call i32 @strlen(ptr noundef nonnull %3) #16
  %90 = icmp eq i32 %89, %88
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = tail call i32 @strncmp(ptr noundef %84, ptr noundef nonnull %3, i32 noundef %88) #16
  %93 = icmp eq i32 %92, 0
  %94 = add i32 %71, 1
  %95 = select i1 %93, i32 %94, i32 0
  br label %96

96:                                               ; preds = %91, %78, %76, %73, %70, %65, %61, %57, %48, %46, %33, %24
  %97 = phi i32 [ 0, %65 ], [ %71, %73 ], [ %71, %70 ], [ 0, %61 ], [ 0, %46 ], [ 0, %48 ], [ 0, %76 ], [ 0, %78 ], [ %95, %91 ], [ 0, %24 ], [ 0, %57 ], [ 0, %33 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_device_compatible_match(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %15, %7 ], [ %5, %4 ]
  %9 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %10 = phi ptr [ %14, %7 ], [ %1, %4 ]
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %12 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef %0, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %11) #16
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %9)
  %14 = getelementptr ptr, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %4, %2
  %18 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %13, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_machine_is_compatible(ptr noundef %0) #0 {
  %2 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.11, ptr noundef null) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %6 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef nonnull %2, ptr noundef %0, ptr noundef null, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %5) #16
  tail call void @of_node_put(ptr noundef nonnull %2) #16
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_device_is_available(ptr noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %13, %4
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(7) @.str.44) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %8

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(5) @.str.45) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @strcmp(ptr noundef nonnull %19, ptr noundef nonnull dereferenceable(3) @.str.46) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31, %28, %25, %17, %13, %4, %1
  %33 = phi i1 [ false, %31 ], [ false, %1 ], [ true, %17 ], [ true, %28 ], [ true, %25 ], [ true, %4 ], [ true, %13 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %2) #16
  ret i1 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_device_is_big_endian(ptr noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %13, %4
  %9 = phi ptr [ %15, %13 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(11) @.str.12) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8

17:                                               ; preds = %13, %8, %4, %1
  %18 = phi ptr [ null, %1 ], [ null, %4 ], [ null, %13 ], [ %9, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %2) #16
  %19 = icmp ne ptr %18, null
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_parent(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_node_get(ptr noundef %6) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_next_parent(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_node_get(ptr noundef %6) #16
  tail call void @of_node_put(ptr noundef nonnull %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_next_child(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 8
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @of_node_get(ptr noundef %10) #16
  tail call void @of_node_put(ptr noundef %1) #16
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi ptr [ %10, %5 ], [ null, %2 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_next_available_child(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 8
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %43, %4
  %13 = phi ptr [ %45, %43 ], [ %10, %4 ]
  %14 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %22, %12
  %18 = phi ptr [ %24, %22 ], [ %15, %12 ]
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull dereferenceable(7) @.str.44) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.property, ptr %18, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %17

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.property, ptr %18, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.property, ptr %18, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef nonnull dereferenceable(5) @.str.45) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull %28, ptr noundef nonnull dereferenceable(3) @.str.46) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %34, %26, %22, %12
  %41 = tail call ptr @of_node_get(ptr noundef nonnull %13) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37, %30
  %44 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %12

47:                                               ; preds = %43, %40, %4
  %48 = phi ptr [ null, %4 ], [ %13, %40 ], [ null, %43 ]
  tail call void @of_node_put(ptr noundef %1) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %5) #16
  br label %49

49:                                               ; preds = %47, %2
  %50 = phi ptr [ %48, %47 ], [ null, %2 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_compatible_child(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @of_node_get(ptr noundef %8) #16
  tail call void @of_node_put(ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %16, %6
  %12 = phi ptr [ %19, %16 ], [ %8, %6 ]
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %14 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef nonnull %12, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %13) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %18 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @of_node_get(ptr noundef %19) #16
  tail call void @of_node_put(ptr noundef nonnull %12) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %17) #16
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %11

22:                                               ; preds = %16, %11, %6, %5
  %23 = phi ptr [ null, %6 ], [ null, %5 ], [ %12, %11 ], [ null, %16 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_get_child_by_name(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  br label %34

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @of_node_get(ptr noundef %8) #16
  tail call void @of_node_put(ptr noundef null) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  %10 = icmp eq ptr %8, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %28, %6
  %12 = phi ptr [ %31, %28 ], [ %8, %6 ]
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @strrchr(ptr noundef %14, i32 noundef 47) #16
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 1
  %18 = select i1 %16, ptr %14, ptr %17
  %19 = tail call ptr @strchrnul(ptr noundef %18, i32 noundef 64) #16
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %18 to i32
  %22 = sub i32 %20, %21
  %23 = tail call i32 @strlen(ptr noundef %1) #16
  %24 = icmp eq i32 %23, %22
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = tail call i32 @strncmp(ptr noundef %18, ptr noundef %1, i32 noundef %22) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25, %11
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %30 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @of_node_get(ptr noundef %31) #16
  tail call void @of_node_put(ptr noundef nonnull %12) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %29) #16
  %33 = icmp eq ptr %31, null
  br i1 %33, label %34, label %11

34:                                               ; preds = %28, %25, %6, %5
  %35 = phi ptr [ null, %6 ], [ null, %5 ], [ %12, %25 ], [ null, %28 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_find_node_by_path(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @strcspn(ptr noundef %1, ptr noundef nonnull @.str.15)
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq ptr %0, null
  %6 = or i1 %4, %5
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @of_node_get(ptr noundef %9) #16
  tail call void @of_node_put(ptr noundef null) #16
  %11 = icmp eq ptr %9, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %25, %7
  %13 = phi ptr [ %27, %25 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @strrchr(ptr noundef %15, i32 noundef 47) #16
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 1
  %19 = select i1 %17, ptr %15, ptr %18
  %20 = tail call i32 @strncmp(ptr noundef %1, ptr noundef %19, i32 noundef %3)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = tail call i32 @strlen(ptr noundef %19)
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %30, label %25

25:                                               ; preds = %22, %12
  %26 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @of_node_get(ptr noundef %27) #16
  tail call void @of_node_put(ptr noundef nonnull %13) #16
  %29 = icmp eq ptr %27, null
  br i1 %29, label %30, label %12

30:                                               ; preds = %25, %22, %7, %2
  %31 = phi ptr [ null, %2 ], [ null, %7 ], [ null, %25 ], [ %13, %22 ]
  ret ptr %31
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__of_find_node_by_full_path(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @strchr(ptr noundef %1, i32 noundef 58)
  %4 = icmp ne ptr %3, null
  br label %5

5:                                                ; preds = %12, %2
  %6 = phi ptr [ %1, %2 ], [ %15, %12 ]
  %7 = phi ptr [ %0, %2 ], [ %14, %12 ]
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = load i8, ptr %6, align 1
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %6, i32 1
  %14 = tail call ptr @__of_find_node_by_path(ptr noundef nonnull %7, ptr noundef %13)
  tail call void @of_node_put(ptr noundef nonnull %7) #16
  %15 = tail call ptr @strchrnul(ptr noundef %13, i32 noundef 47) #16
  %16 = icmp ult ptr %3, %15
  %17 = select i1 %4, i1 %16, i1 false
  br i1 %17, label %18, label %5

18:                                               ; preds = %12, %9, %5
  %19 = phi ptr [ %14, %12 ], [ %7, %9 ], [ null, %5 ]
  ret ptr %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_node_opts_by_path(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = tail call ptr @strchr(ptr noundef %0, i32 noundef 58)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, null
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = select i1 %6, ptr null, ptr %7
  store ptr %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %5, %2
  %10 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(2) @.str.11)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr @of_root, align 4
  %14 = tail call ptr @of_node_get(ptr noundef %13) #16
  br label %77

15:                                               ; preds = %9
  %16 = load i8, ptr %0, align 1
  %17 = icmp eq i8 %16, 47
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %20 = load ptr, ptr @of_root, align 4
  %21 = tail call ptr @of_node_get(ptr noundef %20) #16
  br label %56

22:                                               ; preds = %15
  %23 = icmp eq ptr %3, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call ptr @strchrnul(ptr noundef %0, i32 noundef 47) #16
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %3, %22 ], [ %25, %24 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %0 to i32
  %30 = sub i32 %28, %29
  %31 = load ptr, ptr @of_aliases, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %77, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %77, label %37

37:                                               ; preds = %45, %33
  %38 = phi ptr [ %47, %45 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strlen(ptr noundef %39)
  %41 = icmp eq i32 %40, %30
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = tail call i32 @strncmp(ptr noundef %39, ptr noundef %0, i32 noundef %30)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds %struct.property, ptr %38, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %77, label %37

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.property, ptr %38, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr @of_find_node_opts_by_path(ptr noundef %51, ptr noundef null) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %49
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  br label %56

56:                                               ; preds = %54, %18
  %57 = phi i32 [ %55, %54 ], [ %19, %18 ]
  %58 = phi ptr [ %27, %54 ], [ %0, %18 ]
  %59 = phi ptr [ %52, %54 ], [ %21, %18 ]
  %60 = tail call ptr @strchr(ptr noundef %58, i32 noundef 58) #16
  %61 = icmp ne ptr %60, null
  br label %62

62:                                               ; preds = %69, %56
  %63 = phi ptr [ %58, %56 ], [ %72, %69 ]
  %64 = phi ptr [ %59, %56 ], [ %71, %69 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = load i8, ptr %63, align 1
  %68 = icmp eq i8 %67, 47
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = getelementptr i8, ptr %63, i32 1
  %71 = tail call ptr @__of_find_node_by_path(ptr noundef nonnull %64, ptr noundef %70) #16
  tail call void @of_node_put(ptr noundef nonnull %64) #16
  %72 = tail call ptr @strchrnul(ptr noundef %70, i32 noundef 47) #16
  %73 = icmp ult ptr %60, %72
  %74 = select i1 %61, i1 %73, i1 false
  br i1 %74, label %75, label %62

75:                                               ; preds = %69, %66, %62
  %76 = phi ptr [ %71, %69 ], [ %64, %66 ], [ null, %62 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %57) #16
  br label %77

77:                                               ; preds = %75, %49, %45, %33, %26, %12
  %78 = phi ptr [ %14, %12 ], [ %76, %75 ], [ null, %49 ], [ null, %26 ], [ null, %33 ], [ null, %45 ]
  ret ptr %78
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_node_by_name(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %15, %5
  %10 = phi ptr [ %12, %15 ], [ %0, %5 ]
  %11 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 8
  br i1 %13, label %18, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %22

18:                                               ; preds = %9, %2
  %19 = phi ptr [ @of_root, %2 ], [ %14, %9 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %18, %15, %5
  %23 = phi ptr [ %7, %5 ], [ %20, %18 ], [ %16, %15 ]
  br label %24

24:                                               ; preds = %57, %22
  %25 = phi ptr [ %58, %57 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @strrchr(ptr noundef %27, i32 noundef 47) #16
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 1
  %31 = select i1 %29, ptr %27, ptr %30
  %32 = tail call ptr @strchrnul(ptr noundef %31, i32 noundef 64) #16
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %31 to i32
  %35 = sub i32 %33, %34
  %36 = tail call i32 @strlen(ptr noundef %1) #16
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = tail call i32 @strncmp(ptr noundef %31, ptr noundef %1, i32 noundef %35) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call ptr @of_node_get(ptr noundef nonnull %25) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41, %38, %24
  %45 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %48, %44
  %49 = phi ptr [ %51, %48 ], [ %25, %44 ]
  %50 = getelementptr inbounds %struct.device_node, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ne ptr %51, null
  %53 = getelementptr inbounds %struct.device_node, ptr %49, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %48, label %57

57:                                               ; preds = %48, %44
  %58 = phi ptr [ %46, %44 ], [ %54, %48 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %24

60:                                               ; preds = %57, %41, %18
  %61 = phi ptr [ null, %18 ], [ %25, %41 ], [ null, %57 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_node_by_type(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %15, %5
  %10 = phi ptr [ %12, %15 ], [ %0, %5 ]
  %11 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 8
  br i1 %13, label %18, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %22

18:                                               ; preds = %9, %2
  %19 = phi ptr [ @of_root, %2 ], [ %14, %9 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %66, label %22

22:                                               ; preds = %18, %15, %5
  %23 = phi ptr [ %20, %18 ], [ %7, %5 ], [ %16, %15 ]
  %24 = icmp ne ptr %1, null
  br label %25

25:                                               ; preds = %63, %22
  %26 = phi ptr [ %23, %22 ], [ %64, %63 ]
  %27 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %35, %25
  %31 = phi ptr [ %37, %35 ], [ %28, %25 ]
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(12) @.str.49) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.property, ptr %31, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %30

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.property, ptr %31, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ne ptr %41, null
  %43 = and i1 %24, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = tail call i32 @strcmp(ptr noundef nonnull %41, ptr noundef nonnull %1) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = tail call ptr @of_node_get(ptr noundef nonnull %26) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %47, %44, %39, %35, %25
  %51 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %54, %50
  %55 = phi ptr [ %57, %54 ], [ %26, %50 ]
  %56 = getelementptr inbounds %struct.device_node, ptr %55, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ne ptr %57, null
  %59 = getelementptr inbounds %struct.device_node, ptr %55, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %58, i1 %61, i1 false
  br i1 %62, label %54, label %63

63:                                               ; preds = %54, %50
  %64 = phi ptr [ %52, %50 ], [ %60, %54 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %25

66:                                               ; preds = %63, %47, %18
  %67 = phi ptr [ null, %18 ], [ %26, %47 ], [ null, %63 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_compatible_node(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %16, %6
  %11 = phi ptr [ %13, %16 ], [ %0, %6 ]
  %12 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 8
  br i1 %14, label %19, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %15, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %10, label %23

19:                                               ; preds = %10, %3
  %20 = phi ptr [ @of_root, %3 ], [ %15, %10 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %19, %16, %6
  %24 = phi ptr [ %8, %6 ], [ %21, %19 ], [ %17, %16 ]
  br label %25

25:                                               ; preds = %45, %23
  %26 = phi ptr [ %46, %45 ], [ %24, %23 ]
  %27 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef nonnull %26, ptr noundef %2, ptr noundef %1, ptr noundef null)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @of_node_get(ptr noundef nonnull %26) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %39, %36 ], [ %26, %32 ]
  %38 = getelementptr inbounds %struct.device_node, ptr %37, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %39, null
  %41 = getelementptr inbounds %struct.device_node, ptr %37, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %36, label %45

45:                                               ; preds = %36, %32
  %46 = phi ptr [ %34, %32 ], [ %42, %36 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %25

48:                                               ; preds = %45, %29, %19
  %49 = phi ptr [ null, %19 ], [ %26, %29 ], [ null, %45 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_node_with_property(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %15, %5
  %10 = phi ptr [ %12, %15 ], [ %0, %5 ]
  %11 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 8
  br i1 %13, label %18, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %9, label %22

18:                                               ; preds = %9, %2
  %19 = phi ptr [ @of_root, %2 ], [ %14, %9 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %56, label %22

22:                                               ; preds = %18, %15, %5
  %23 = phi ptr [ %7, %5 ], [ %20, %18 ], [ %16, %15 ]
  br label %24

24:                                               ; preds = %53, %22
  %25 = phi ptr [ %54, %53 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %33

29:                                               ; preds = %33
  %30 = getelementptr inbounds %struct.property, ptr %34, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29, %24
  %34 = phi ptr [ %31, %29 ], [ %27, %24 ]
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %29

38:                                               ; preds = %33
  %39 = tail call ptr @of_node_get(ptr noundef nonnull %25) #16
  br label %56

40:                                               ; preds = %29, %24
  %41 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %47, %44 ], [ %25, %40 ]
  %46 = getelementptr inbounds %struct.device_node, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ne ptr %47, null
  %49 = getelementptr inbounds %struct.device_node, ptr %45, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = select i1 %48, i1 %51, i1 false
  br i1 %52, label %44, label %53

53:                                               ; preds = %44, %40
  %54 = phi ptr [ %42, %40 ], [ %50, %44 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %24

56:                                               ; preds = %53, %38, %18
  %57 = phi ptr [ %25, %38 ], [ null, %18 ], [ null, %53 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_match_node(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %19, %2
  %6 = phi ptr [ %26, %19 ], [ %0, %2 ]
  %7 = phi ptr [ %24, %19 ], [ null, %2 ]
  %8 = phi i32 [ %25, %19 ], [ 0, %2 ]
  %9 = load i8, ptr %6, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 1
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15, %11, %5
  %20 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 1
  %22 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef %1, ptr noundef %20, ptr noundef %21, ptr noundef %6) #16
  %23 = icmp sgt i32 %22, %8
  %24 = select i1 %23, ptr %6, ptr %7
  %25 = tail call i32 @llvm.smax.i32(i32 %22, i32 %8) #16
  %26 = getelementptr %struct.of_device_id, ptr %6, i32 1
  br label %5

27:                                               ; preds = %15, %2
  %28 = phi ptr [ null, %2 ], [ %7, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_matching_node_and_match(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %19, %9
  %14 = phi ptr [ %16, %19 ], [ %0, %9 ]
  %15 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 8
  br i1 %17, label %22, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %13, label %26

22:                                               ; preds = %13, %6
  %23 = phi ptr [ @of_root, %6 ], [ %18, %13 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %76, label %26

26:                                               ; preds = %22, %19, %9
  %27 = phi ptr [ %24, %22 ], [ %11, %9 ], [ %20, %19 ]
  %28 = icmp eq ptr %1, null
  br label %29

29:                                               ; preds = %73, %26
  %30 = phi ptr [ %27, %26 ], [ %74, %73 ]
  br i1 %28, label %60, label %31

31:                                               ; preds = %45, %29
  %32 = phi ptr [ %52, %45 ], [ %1, %29 ]
  %33 = phi ptr [ %50, %45 ], [ null, %29 ]
  %34 = phi i32 [ %51, %45 ], [ 0, %29 ]
  %35 = load i8, ptr %32, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41, %37, %31
  %46 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 2
  %47 = getelementptr inbounds %struct.of_device_id, ptr %32, i32 0, i32 1
  %48 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef nonnull %30, ptr noundef %46, ptr noundef %47, ptr noundef %32) #16
  %49 = icmp sgt i32 %48, %34
  %50 = select i1 %49, ptr %32, ptr %33
  %51 = tail call i32 @llvm.smax.i32(i32 %48, i32 %34) #16
  %52 = getelementptr %struct.of_device_id, ptr %32, i32 1
  br label %31

53:                                               ; preds = %41
  %54 = icmp eq ptr %33, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %53
  %56 = tail call ptr @of_node_get(ptr noundef nonnull %30) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  br i1 %4, label %76, label %59

59:                                               ; preds = %58
  store ptr %33, ptr %2, align 4
  br label %76

60:                                               ; preds = %55, %53, %29
  %61 = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %64, %60
  %65 = phi ptr [ %67, %64 ], [ %30, %60 ]
  %66 = getelementptr inbounds %struct.device_node, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ne ptr %67, null
  %69 = getelementptr inbounds %struct.device_node, ptr %65, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %64, label %73

73:                                               ; preds = %64, %60
  %74 = phi ptr [ %62, %60 ], [ %70, %64 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %29

76:                                               ; preds = %73, %59, %58, %22
  %77 = phi ptr [ %30, %58 ], [ %30, %59 ], [ null, %22 ], [ null, %73 ]
  tail call void @of_node_put(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %7) #16
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_modalias_node(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %15, %6
  %11 = phi ptr [ %17, %15 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(11) @.str.16) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10

19:                                               ; preds = %15, %6, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  br label %35

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %4) #16
  %23 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @strlen(ptr noundef nonnull %24)
  %28 = icmp ugt i32 %27, %22
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @strchr(ptr noundef nonnull %24, i32 noundef 44)
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 1
  %33 = select i1 %31, ptr %24, ptr %32
  %34 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef %33, i32 noundef %2) #16
  br label %35

35:                                               ; preds = %29, %26, %20, %19
  %36 = phi i32 [ 0, %29 ], [ -19, %26 ], [ -19, %20 ], [ -19, %19 ]
  ret i32 %36
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_node_by_phandle(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = mul i32 %0, 1640531527
  %5 = lshr i32 %4, 25
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %7 = getelementptr [128 x ptr], ptr @phandle_cache, i32 0, i32 %5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %44, label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr @of_root, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %41, %14
  %18 = phi ptr [ %42, %41 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 10
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store ptr %18, ptr %7, align 4
  br label %44

28:                                               ; preds = %22, %17
  %29 = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %32, %28
  %33 = phi ptr [ %35, %32 ], [ %18, %28 ]
  %34 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %32, label %41

41:                                               ; preds = %32, %28
  %42 = phi ptr [ %30, %28 ], [ %38, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %17

44:                                               ; preds = %41, %27, %14, %10
  %45 = phi ptr [ %18, %27 ], [ %8, %10 ], [ null, %14 ], [ null, %41 ]
  %46 = tail call ptr @of_node_get(ptr noundef %45) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %6) #16
  br label %47

47:                                               ; preds = %44, %1
  %48 = phi ptr [ %45, %44 ], [ null, %1 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_print_phandle_args(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %0, ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %15, %8 ], [ 0, %2 ]
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 58, i32 44
  %12 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13) #17
  %15 = add nuw nsw i32 %9, 1
  %16 = load i32, ptr %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %8, label %18

18:                                               ; preds = %8, %2
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_phandle_iterator_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4) #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %0, i8 0, i32 36, i1 false)
  %6 = icmp sgt i32 %4, -1
  %7 = icmp ne ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %11 = icmp eq ptr %1, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %21, %12
  %17 = phi ptr [ %23, %21 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @strcmp(ptr noundef %18, ptr noundef %2) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16

25:                                               ; preds = %21, %12, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %10) #16
  br label %40

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %10) #16
  %29 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %26
  store ptr %3, ptr %0, align 4
  %33 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 1
  store i32 %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 2
  store ptr %1, ptr %34, align 4
  %35 = lshr i32 %28, 2
  %36 = getelementptr i32, ptr %30, i32 %35
  %37 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 3
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 4
  store ptr %30, ptr %38, align 4
  %39 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 5
  store ptr %30, ptr %39, align 4
  br label %40

40:                                               ; preds = %32, %26, %25, %5
  %41 = phi i32 [ 0, %32 ], [ -22, %5 ], [ -2, %26 ], [ -2, %25 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_phandle_iterator_next(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @of_node_put(ptr noundef nonnull %4) #16
  store ptr null, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %11
  %18 = getelementptr i32, ptr %13, i32 1
  store ptr %18, ptr %8, align 4
  %19 = load i32, ptr %13, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  %21 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 7
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @of_find_node_by_phandle(i32 noundef %20)
  store ptr %24, ptr %3, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %24, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %21, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %31, i32 noundef %32) #17
  br label %88

34:                                               ; preds = %27
  %35 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, ptr %2, align 4
  br label %53

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 %41, ptr %2, align 4
  br label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %0, align 4
  %48 = load ptr, ptr %3, align 4
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %46, ptr noundef %47, ptr noundef %48) #17
  br label %88

50:                                               ; preds = %23
  %51 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %50, %43, %37
  %54 = phi i32 [ %38, %37 ], [ %41, %43 ], [ %52, %50 ]
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr i32, ptr %55, i32 %54
  %57 = load ptr, ptr %14, align 4
  %58 = icmp ugt ptr %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %53
  %60 = load ptr, ptr %0, align 4
  %61 = icmp eq ptr %60, null
  %62 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  br i1 %61, label %70, label %64

64:                                               ; preds = %59
  %65 = ptrtoint ptr %57 to i32
  %66 = ptrtoint ptr %55 to i32
  %67 = sub i32 %65, %66
  %68 = ashr exact i32 %67, 2
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %63, ptr noundef nonnull %60, i32 noundef %54, i32 noundef %68) #17
  br label %88

70:                                               ; preds = %59
  %71 = load ptr, ptr %3, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.device_node, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi ptr [ %75, %73 ], [ @.str.50, %70 ]
  %78 = ptrtoint ptr %57 to i32
  %79 = ptrtoint ptr %55 to i32
  %80 = sub i32 %78, %79
  %81 = ashr exact i32 %80, 2
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %63, ptr noundef %77, i32 noundef %54, i32 noundef %81) #17
  br label %88

83:                                               ; preds = %53, %17
  %84 = phi i32 [ %54, %53 ], [ 0, %17 ]
  %85 = phi ptr [ %55, %53 ], [ %18, %17 ]
  %86 = getelementptr i32, ptr %85, i32 %84
  store ptr %86, ptr %12, align 4
  %87 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 6
  store i32 %84, ptr %87, align 4
  br label %92

88:                                               ; preds = %76, %64, %44, %29
  %89 = load ptr, ptr %3, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @of_node_put(ptr noundef nonnull %89) #16
  store ptr null, ptr %3, align 4
  br label %92

92:                                               ; preds = %91, %88, %83, %11, %7
  %93 = phi i32 [ 0, %83 ], [ -2, %11 ], [ -2, %7 ], [ -22, %91 ], [ -22, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_phandle_iterator_args(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1414, i32 noundef 9, ptr noundef null) #16
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call i32 @llvm.smin.i32(i32 %5, i32 %2)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.of_phandle_iterator, ptr %0, i32 0, i32 5
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %20, %13 ]
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr i32, ptr %15, i32 1
  store ptr %16, ptr %12, align 4
  %17 = load i32, ptr %15, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #16
  %19 = getelementptr i32, ptr %1, i32 %14
  store i32 %18, ptr %19, align 4
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %22, label %13

22:                                               ; preds = %13, %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca %struct.of_phandle_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  %8 = icmp slt i32 %4, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i32 36, i1 false) #16
  %10 = icmp sgt i32 %3, -1
  %11 = icmp ne ptr %2, null
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %15 = icmp eq ptr %0, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %25, %16
  %21 = phi ptr [ %27, %25 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef %1) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20

29:                                               ; preds = %25, %16, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %14) #16
  br label %44

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %14) #16
  %33 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  store ptr %2, ptr %7, align 4
  %37 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 1
  store i32 %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 2
  store ptr %0, ptr %38, align 4
  %39 = lshr i32 %32, 2
  %40 = getelementptr i32, ptr %34, i32 %39
  %41 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 4
  store ptr %34, ptr %42, align 4
  %43 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 5
  store ptr %34, ptr %43, align 4
  br label %44

44:                                               ; preds = %36, %30, %29, %9
  %45 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %7)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %85, %44
  %48 = phi i32 [ %86, %85 ], [ 0, %44 ]
  %49 = icmp eq i32 %48, %4
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %50
  %55 = icmp eq ptr %5, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 2
  %58 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 16
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1414, i32 noundef 9, ptr noundef null) #16
  br label %64

62:                                               ; preds = %56
  %63 = icmp sgt i32 %59, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 16, %61 ], [ %59, %62 ]
  %66 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %68, %64
  %69 = phi ptr [ %67, %64 ], [ %71, %68 ]
  %70 = phi i32 [ 0, %64 ], [ %75, %68 ]
  %71 = getelementptr i32, ptr %69, i32 1
  %72 = load i32, ptr %69, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #16
  %74 = getelementptr i32, ptr %57, i32 %70
  store i32 %73, ptr %74, align 4
  %75 = add nuw nsw i32 %70, 1
  %76 = icmp eq i32 %75, %65
  br i1 %76, label %77, label %68

77:                                               ; preds = %68, %62
  %78 = phi i32 [ %59, %62 ], [ %65, %68 ]
  %79 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 8
  %80 = load ptr, ptr %79, align 4
  store ptr %80, ptr %5, align 4
  %81 = getelementptr inbounds %struct.of_phandle_args, ptr %5, i32 0, i32 1
  store i32 %78, ptr %81, align 4
  br label %93

82:                                               ; preds = %54
  %83 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  tail call void @of_node_put(ptr noundef %84) #16
  br label %93

85:                                               ; preds = %47
  %86 = add i32 %48, 1
  %87 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %7)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %47, label %89

89:                                               ; preds = %85, %50, %44
  %90 = phi i32 [ -2, %50 ], [ %45, %44 ], [ %87, %85 ]
  %91 = getelementptr inbounds %struct.of_phandle_iterator, ptr %7, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  tail call void @of_node_put(ptr noundef %92) #16
  br label %93

93:                                               ; preds = %89, %82, %77, %6
  %94 = phi i32 [ %90, %89 ], [ -22, %6 ], [ 0, %82 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_parse_phandle_with_args_map(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca [16 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = icmp slt i32 %3, 0
  br i1 %9, label %203, label %10

10:                                               ; preds = %5
  %11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %2) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %203, label %13

13:                                               ; preds = %10
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.26, ptr noundef %2) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %199, label %16

16:                                               ; preds = %13
  %17 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %2) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %199, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %2) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %199, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, i32 noundef -1, i32 noundef %3, ptr noundef %4)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %199

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 4
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #16
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 0) #16
  %29 = icmp slt i32 %27, 0
  br i1 %29, label %195, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %41, %30
  %34 = icmp eq ptr %26, null
  br i1 %34, label %195, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %37 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %38 = getelementptr inbounds %struct.device_node, ptr %26, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %66, label %49

41:                                               ; preds = %41, %30
  %42 = phi i32 [ %47, %41 ], [ 0, %30 ]
  %43 = getelementptr %struct.of_phandle_args, ptr %4, i32 0, i32 2, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr [16 x i32], ptr %6, i32 0, i32 %42
  store i32 %45, ptr %46, align 4
  %47 = add nuw i32 %42, 1
  %48 = icmp eq i32 %47, %31
  br i1 %48, label %33, label %41

49:                                               ; preds = %190, %35
  %50 = phi ptr [ %193, %190 ], [ %39, %35 ]
  %51 = phi ptr [ %192, %190 ], [ %38, %35 ]
  %52 = phi i32 [ %191, %190 ], [ %37, %35 ]
  %53 = phi ptr [ %134, %190 ], [ %26, %35 ]
  %54 = phi ptr [ %134, %190 ], [ null, %35 ]
  %55 = phi ptr [ %165, %190 ], [ %6, %35 ]
  %56 = phi i32 [ 0, %190 ], [ -22, %35 ]
  br label %57

57:                                               ; preds = %62, %49
  %58 = phi ptr [ %64, %62 ], [ %50, %49 ]
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 @strcmp(ptr noundef %59, ptr noundef nonnull %14) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.property, ptr %58, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %57

66:                                               ; preds = %190, %62, %35
  %67 = phi i32 [ %37, %35 ], [ %52, %62 ], [ %191, %190 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %67) #16
  br label %199

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.property, ptr %58, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %52) #16
  %71 = getelementptr inbounds %struct.property, ptr %58, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %199, label %74

74:                                               ; preds = %68
  %75 = lshr i32 %70, 2
  %76 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %77 = load ptr, ptr %51, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %87, %74
  %80 = phi ptr [ %89, %87 ], [ %77, %74 ]
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @strcmp(ptr noundef %81, ptr noundef nonnull %17) #16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %76) #16
  %85 = getelementptr inbounds %struct.property, ptr %80, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  br label %92

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.property, ptr %80, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %79

91:                                               ; preds = %87, %74
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %76) #16
  br label %92

92:                                               ; preds = %91, %84
  %93 = phi ptr [ %86, %84 ], [ null, %91 ]
  %94 = icmp eq ptr %93, null
  %95 = select i1 %94, ptr @of_parse_phandle_with_args_map.dummy_mask, ptr %93
  %96 = load i32, ptr %7, align 4
  %97 = add i32 %96, 1
  %98 = icmp ugt i32 %75, %97
  br i1 %98, label %99, label %195

99:                                               ; preds = %148, %92
  %100 = phi i32 [ %151, %148 ], [ %96, %92 ]
  %101 = phi i32 [ 0, %148 ], [ %56, %92 ]
  %102 = phi ptr [ %149, %148 ], [ %72, %92 ]
  %103 = phi ptr [ %134, %148 ], [ %54, %92 ]
  %104 = phi i32 [ %150, %148 ], [ %75, %92 ]
  %105 = icmp eq i32 %100, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %99
  %107 = shl i32 %100, 2
  %108 = getelementptr i8, ptr %102, i32 %107
  br label %109

109:                                              ; preds = %109, %106
  %110 = phi i32 [ %123, %109 ], [ 1, %106 ]
  %111 = phi i32 [ %124, %109 ], [ 0, %106 ]
  %112 = phi ptr [ %115, %109 ], [ %102, %106 ]
  %113 = getelementptr i32, ptr %55, i32 %111
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr i32, ptr %112, i32 1
  %116 = load i32, ptr %112, align 4
  %117 = xor i32 %116, %114
  %118 = getelementptr i32, ptr %95, i32 %111
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %117, %119
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = and i32 %110, %122
  %124 = add nuw i32 %111, 1
  %125 = icmp eq i32 %124, %100
  br i1 %125, label %126, label %109

126:                                              ; preds = %109
  %127 = sub i32 %104, %100
  br label %128

128:                                              ; preds = %126, %99
  %129 = phi i32 [ %104, %99 ], [ %127, %126 ]
  %130 = phi ptr [ %102, %99 ], [ %108, %126 ]
  %131 = phi i32 [ 1, %99 ], [ %123, %126 ]
  call void @of_node_put(ptr noundef %103) #16
  %132 = load i32, ptr %130, align 4
  %133 = call i32 @llvm.bswap.i32(i32 %132) #16
  %134 = call ptr @of_find_node_by_phandle(i32 noundef %133)
  %135 = getelementptr i32, ptr %130, i32 1
  %136 = add i32 %129, -1
  %137 = icmp eq ptr %134, null
  br i1 %137, label %195, label %138

138:                                              ; preds = %128
  %139 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %134)
  %140 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %134, ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #16
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %195

142:                                              ; preds = %138
  %143 = load i32, ptr %8, align 4
  %144 = icmp ugt i32 %143, 16
  br i1 %144, label %145, label %146, !prof !9

145:                                              ; preds = %142
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1611, i32 noundef 9, ptr noundef null) #16
  br label %195

146:                                              ; preds = %142
  %147 = icmp ult i32 %136, %143
  br i1 %147, label %195, label %148

148:                                              ; preds = %146
  %149 = getelementptr i32, ptr %135, i32 %143
  %150 = sub i32 %136, %143
  %151 = load i32, ptr %7, align 4
  %152 = add i32 %151, 1
  %153 = icmp ugt i32 %150, %152
  %154 = icmp eq i32 %131, 0
  %155 = xor i1 %139, true
  %156 = select i1 %155, i1 true, i1 %154
  %157 = select i1 %153, i1 %156, i1 false
  br i1 %157, label %99, label %158

158:                                              ; preds = %148
  br i1 %156, label %195, label %159

159:                                              ; preds = %158
  %160 = call ptr @of_get_property(ptr noundef nonnull %53, ptr noundef nonnull %20, ptr noundef null)
  %161 = icmp eq ptr %160, null
  %162 = select i1 %161, ptr @of_parse_phandle_with_args_map.dummy_pass, ptr %160
  %163 = load i32, ptr %8, align 4
  %164 = sub i32 0, %163
  %165 = getelementptr i32, ptr %149, i32 %164
  %166 = icmp eq i32 %163, 0
  br i1 %166, label %190, label %167

167:                                              ; preds = %159
  %168 = load i32, ptr %7, align 4
  br label %169

169:                                              ; preds = %184, %167
  %170 = phi i32 [ 0, %167 ], [ %188, %184 ]
  %171 = getelementptr i32, ptr %165, i32 %170
  %172 = load i32, ptr %171, align 4
  %173 = icmp ult i32 %170, %168
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = getelementptr i32, ptr %162, i32 %170
  %176 = load i32, ptr %175, align 4
  %177 = xor i32 %176, -1
  %178 = and i32 %172, %177
  %179 = getelementptr %struct.of_phandle_args, ptr %4, i32 0, i32 2, i32 %170
  %180 = load i32, ptr %179, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180)
  %182 = and i32 %181, %176
  %183 = or i32 %182, %178
  br label %184

184:                                              ; preds = %174, %169
  %185 = phi i32 [ %183, %174 ], [ %172, %169 ]
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  %187 = getelementptr %struct.of_phandle_args, ptr %4, i32 0, i32 2, i32 %170
  store i32 %186, ptr %187, align 4
  %188 = add nuw i32 %170, 1
  %189 = icmp eq i32 %188, %163
  br i1 %189, label %190, label %169

190:                                              ; preds = %184, %159
  store i32 %163, ptr %7, align 4
  store i32 %163, ptr %36, align 4
  store ptr %134, ptr %4, align 4
  call void @of_node_put(ptr noundef nonnull %53) #16
  %191 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %192 = getelementptr inbounds %struct.device_node, ptr %134, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %66, label %49

195:                                              ; preds = %158, %146, %145, %138, %128, %92, %33, %25
  %196 = phi ptr [ %26, %25 ], [ %53, %145 ], [ null, %33 ], [ %53, %138 ], [ %53, %146 ], [ %53, %128 ], [ %53, %158 ], [ %53, %92 ]
  %197 = phi ptr [ null, %25 ], [ %134, %145 ], [ null, %33 ], [ null, %128 ], [ %134, %146 ], [ %134, %138 ], [ %54, %92 ], [ %134, %158 ]
  %198 = phi i32 [ %28, %25 ], [ 0, %145 ], [ -22, %33 ], [ %101, %128 ], [ 0, %146 ], [ %140, %138 ], [ %56, %92 ], [ 0, %158 ]
  call void @of_node_put(ptr noundef %196) #16
  call void @of_node_put(ptr noundef %197) #16
  br label %199

199:                                              ; preds = %195, %68, %66, %22, %19, %16, %13
  %200 = phi ptr [ %17, %22 ], [ %17, %195 ], [ %17, %19 ], [ null, %16 ], [ null, %13 ], [ %17, %66 ], [ %17, %68 ]
  %201 = phi ptr [ %20, %22 ], [ %20, %195 ], [ null, %19 ], [ null, %16 ], [ null, %13 ], [ %20, %66 ], [ %20, %68 ]
  %202 = phi i32 [ %23, %22 ], [ %198, %195 ], [ -12, %19 ], [ -12, %16 ], [ -12, %13 ], [ 0, %66 ], [ 0, %68 ]
  call void @kfree(ptr noundef %200) #16
  call void @kfree(ptr noundef %14) #16
  call void @kfree(ptr noundef nonnull %11) #16
  call void @kfree(ptr noundef %201) #16
  br label %203

203:                                              ; preds = %199, %10, %5
  %204 = phi i32 [ %202, %199 ], [ -22, %5 ], [ -12, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_count_phandle_with_args(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.of_phandle_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #16
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %28, %26 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %1) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %7) #16
  %21 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = lshr i32 %20, 2
  %25 = select i1 %23, i32 -2, i32 %24
  br label %69

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13

30:                                               ; preds = %26, %9, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %7) #16
  br label %69

31:                                               ; preds = %3
  %32 = getelementptr inbounds i8, ptr %4, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %32, i8 0, i32 12, i1 false) #16
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %34 = icmp eq ptr %0, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %44, %35
  %40 = phi ptr [ %46, %44 ], [ %37, %35 ]
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @strcmp(ptr noundef %41, ptr noundef %1) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.property, ptr %40, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %39

48:                                               ; preds = %44, %35, %31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %33) #16
  br label %69

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.property, ptr %40, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %33) #16
  %52 = getelementptr inbounds %struct.property, ptr %40, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %49
  store ptr %2, ptr %4, align 4
  %56 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 1
  store i32 -1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 2
  store ptr %0, ptr %57, align 4
  %58 = lshr i32 %51, 2
  %59 = getelementptr i32, ptr %53, i32 %58
  %60 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 3
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 4
  store ptr %53, ptr %61, align 4
  %62 = getelementptr inbounds %struct.of_phandle_iterator, ptr %4, i32 0, i32 5
  store ptr %53, ptr %62, align 4
  br label %63

63:                                               ; preds = %66, %55
  %64 = phi i32 [ 0, %55 ], [ %67, %66 ]
  %65 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %4)
  switch i32 %65, label %68 [
    i32 0, label %66
    i32 -2, label %69
  ]

66:                                               ; preds = %63
  %67 = add i32 %64, 1
  br label %63

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %63, %49, %48, %30, %18
  %70 = phi i32 [ -2, %49 ], [ -2, %48 ], [ -2, %30 ], [ %25, %18 ], [ %65, %68 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #16
  ret i32 %70
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_add_property(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  br label %13

9:                                                ; preds = %13
  %10 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %5, %7 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %9

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 3
  br label %20

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %4, %2 ], [ %19, %18 ]
  store ptr %1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ 0, %20 ], [ -17, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_add_property(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %4 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  br label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.property, ptr %15, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %6, %8 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %10

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.property, ptr %15, i32 0, i32 3
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ %5, %2 ], [ %20, %19 ]
  store ptr %1, ptr %22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  %23 = tail call i32 @__of_add_property_sysfs(ptr noundef %0, ptr noundef %1) #16
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  %24 = tail call i32 @of_property_notify(i32 noundef 3, ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  br label %26

25:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %3) #16
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i32 [ -17, %25 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_add_property_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_notify(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_remove_property(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %3, %2 ], [ %10, %4 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %6, %1
  %9 = or i1 %7, %8
  %10 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 3
  br i1 %9, label %11, label %4

11:                                               ; preds = %4
  br i1 %7, label %17, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %13, align 4
  store ptr %1, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = phi i32 [ 0, %12 ], [ -19, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_remove_property(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %6 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %6, %4 ], [ %13, %7 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %1
  %12 = or i1 %10, %11
  %13 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 3
  br i1 %12, label %14, label %7

14:                                               ; preds = %7
  br i1 %10, label %21, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %8, align 4
  %18 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %16, align 4
  store ptr %1, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %5) #16
  tail call void @__of_remove_property_sysfs(ptr noundef %0, ptr noundef nonnull %1) #16
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  %20 = tail call i32 @of_property_notify(i32 noundef 4, ptr noundef %0, ptr noundef nonnull %1, ptr noundef null) #16
  br label %22

21:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %5) #16
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  br label %22

22:                                               ; preds = %21, %15, %2
  %23 = phi i32 [ -19, %2 ], [ -19, %21 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_remove_property_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__of_update_property(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %5, align 4
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = load ptr, ptr %19, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %19, %12 ], [ %5, %7 ]
  %18 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %12

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  br label %23

23:                                               ; preds = %21, %7
  %24 = phi ptr [ %5, %7 ], [ %19, %21 ]
  %25 = phi ptr [ %4, %7 ], [ %22, %21 ]
  store ptr %24, ptr %2, align 4
  %26 = getelementptr inbounds %struct.property, ptr %24, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr %27, ptr %28, align 4
  store ptr %1, ptr %25, align 4
  %29 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %26, align 4
  store ptr %24, ptr %29, align 4
  br label %36

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi ptr [ %4, %3 ], [ %32, %31 ]
  store ptr null, ptr %2, align 4
  %35 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr null, ptr %35, align 4
  store ptr %1, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %23
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_update_property(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 4
  %12 = load ptr, ptr %8, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %11) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %19

15:                                               ; preds = %19
  %16 = load ptr, ptr %22, align 4
  %17 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %11) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %10
  %20 = phi ptr [ %22, %15 ], [ %8, %10 ]
  %21 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %15

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 3
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi ptr [ %8, %10 ], [ %22, %24 ]
  %28 = phi ptr [ %7, %10 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.property, ptr %27, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  store ptr %1, ptr %28, align 4
  %32 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %29, align 4
  store ptr %27, ptr %32, align 4
  br label %39

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 3
  br label %36

36:                                               ; preds = %34, %5
  %37 = phi ptr [ %7, %5 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.property, ptr %1, i32 0, i32 3
  store ptr null, ptr %38, align 4
  store ptr %1, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %26
  %40 = phi ptr [ null, %36 ], [ %27, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %6) #16
  tail call void @__of_update_property_sysfs(ptr noundef %0, ptr noundef %1, ptr noundef %40) #16
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  %41 = tail call i32 @of_property_notify(i32 noundef 5, ptr noundef %0, ptr noundef %1, ptr noundef %40) #16
  br label %42

42:                                               ; preds = %39, %2
  %43 = phi i32 [ 0, %39 ], [ -22, %2 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__of_update_property_sysfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_alias_scan(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.29, ptr noundef null) #16
  store ptr %4, ptr @of_aliases, align 4
  %5 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.30, ptr noundef null) #16
  store ptr %5, ptr @of_chosen, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.31, ptr noundef null) #16
  store ptr %8, ptr @of_chosen, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %8, %7 ], [ %5, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4
  %12 = call i32 @of_property_read_string(ptr noundef nonnull %11, ptr noundef nonnull @.str.32, ptr noundef nonnull %2) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @of_chosen, align 4
  %16 = call i32 @of_property_read_string(ptr noundef %15, ptr noundef nonnull @.str.33, ptr noundef nonnull %2) #16
  br label %17

17:                                               ; preds = %14, %10
  %18 = load ptr, ptr %2, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull %18, ptr noundef nonnull @of_stdout_options)
  store ptr %21, ptr @of_stdout, align 4
  br label %22

22:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %23

23:                                               ; preds = %22, %7
  %24 = load ptr, ptr @of_aliases, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %83, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.device_node, ptr %24, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %83, label %30

30:                                               ; preds = %79, %26
  %31 = phi ptr [ %81, %79 ], [ %28, %26 ]
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @strlen(ptr noundef %32)
  %34 = getelementptr i8, ptr %32, i32 %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !8
  %35 = load ptr, ptr %31, align 4
  %36 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(5) @.str.34)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %30
  %39 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(8) @.str.35)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %79, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(14) @.str.36)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.property, ptr %31, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = call ptr @of_find_node_opts_by_path(ptr noundef %46, ptr noundef null) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %79, label %49

49:                                               ; preds = %49, %44
  %50 = phi ptr [ %51, %49 ], [ %34, %44 ]
  %51 = getelementptr i8, ptr %50, i32 -1
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -48
  %55 = icmp ult i32 %54, 10
  %56 = icmp ugt ptr %50, %32
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %49, label %58

58:                                               ; preds = %49
  %59 = ptrtoint ptr %50 to i32
  %60 = ptrtoint ptr %32 to i32
  %61 = sub i32 %59, %60
  %62 = call i32 @kstrtoint(ptr noundef %50, i32 noundef 10, ptr noundef nonnull %3) #16
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = add i32 %61, 21
  %66 = zext i32 %65 to i64
  %67 = call ptr %0(i64 noundef %66, i64 noundef 4) #16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %67, i8 0, i32 %65, i1 false)
  %70 = getelementptr inbounds %struct.alias_prop, ptr %67, i32 0, i32 1
  store ptr %32, ptr %70, align 4
  %71 = load i32, ptr %3, align 4
  %72 = getelementptr inbounds %struct.alias_prop, ptr %67, i32 0, i32 2
  store ptr %47, ptr %72, align 4
  %73 = getelementptr inbounds %struct.alias_prop, ptr %67, i32 0, i32 3
  store i32 %71, ptr %73, align 4
  %74 = getelementptr inbounds %struct.alias_prop, ptr %67, i32 0, i32 4
  %75 = call ptr @strncpy(ptr noundef %74, ptr noundef %32, i32 noundef %61) #16
  %76 = getelementptr %struct.alias_prop, ptr %67, i32 0, i32 4, i32 %61
  store i8 0, ptr %76, align 1
  %77 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @aliases_lookup, i32 0, i32 1), align 4
  store ptr %67, ptr getelementptr inbounds (%struct.list_head, ptr @aliases_lookup, i32 0, i32 1), align 4
  store ptr @aliases_lookup, ptr %67, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %77, ptr %78, align 4
  store volatile ptr %67, ptr %77, align 4
  br label %79

79:                                               ; preds = %69, %64, %58, %44, %41, %38, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %80 = getelementptr inbounds %struct.property, ptr %31, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %30

83:                                               ; preds = %79, %26, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_alias_get_id(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %3 = load ptr, ptr @aliases_lookup, align 4
  %4 = icmp eq ptr %3, @aliases_lookup
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %2
  %6 = phi ptr [ %18, %17 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.alias_prop, ptr %6, i32 0, i32 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.alias_prop, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.alias_prop, ptr %6, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  br label %20

17:                                               ; preds = %10, %5
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, @aliases_lookup
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %14, %2
  %21 = phi i32 [ %16, %14 ], [ -19, %2 ], [ -19, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_alias_get_alias_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, 31
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %2, i8 0, i32 %7, i1 false) #16
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %8 = load ptr, ptr @aliases_lookup, align 4
  %9 = icmp eq ptr %8, @aliases_lookup
  br i1 %9, label %58, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %0, null
  br label %12

12:                                               ; preds = %54, %10
  %13 = phi ptr [ %8, %10 ], [ %56, %54 ]
  %14 = phi i32 [ 0, %10 ], [ %55, %54 ]
  %15 = getelementptr inbounds %struct.alias_prop, ptr %13, i32 0, i32 4
  %16 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %1)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.alias_prop, ptr %13, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  br i1 %11, label %22, label %23

22:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %21) #16
  br label %54

23:                                               ; preds = %37, %18
  %24 = phi ptr [ %44, %37 ], [ %0, %18 ]
  %25 = phi ptr [ %42, %37 ], [ null, %18 ]
  %26 = phi i32 [ %43, %37 ], [ 0, %18 ]
  %27 = load i8, ptr %24, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33, %29, %23
  %38 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 2
  %39 = getelementptr inbounds %struct.of_device_id, ptr %24, i32 0, i32 1
  %40 = tail call fastcc i32 @__of_device_is_compatible(ptr noundef %20, ptr noundef %38, ptr noundef %39, ptr noundef %24) #16
  %41 = icmp sgt i32 %40, %26
  %42 = select i1 %41, ptr %24, ptr %25
  %43 = tail call i32 @llvm.smax.i32(i32 %40, i32 %26) #16
  %44 = getelementptr %struct.of_device_id, ptr %24, i32 1
  br label %23

45:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %21) #16
  %46 = icmp eq ptr %25, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.alias_prop, ptr %13, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, %3
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.of_alias_get_alias_list, i32 noundef %49, i32 noundef %3) #17
  br label %54

53:                                               ; preds = %47
  tail call void @_set_bit(i32 noundef %49, ptr noundef %2) #16
  br label %54

54:                                               ; preds = %53, %51, %45, %22, %12
  %55 = phi i32 [ -75, %51 ], [ %14, %53 ], [ %14, %45 ], [ %14, %12 ], [ %14, %22 ]
  %56 = load ptr, ptr %13, align 4
  %57 = icmp eq ptr %56, @aliases_lookup
  br i1 %57, label %58, label %12

58:                                               ; preds = %54, %4
  %59 = phi i32 [ 0, %4 ], [ %55, %54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_alias_get_highest_id(ptr nocapture noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @of_mutex) #16
  %2 = load ptr, ptr @aliases_lookup, align 4
  %3 = icmp eq ptr %2, @aliases_lookup
  br i1 %3, label %18, label %4

4:                                                ; preds = %14, %1
  %5 = phi ptr [ %16, %14 ], [ %2, %1 ]
  %6 = phi i32 [ %15, %14 ], [ -19, %1 ]
  %7 = getelementptr inbounds %struct.alias_prop, ptr %5, i32 0, i32 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alias_prop, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %6)
  br label %14

14:                                               ; preds = %10, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %10 ]
  %16 = load ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, @aliases_lookup
  br i1 %17, label %18, label %4

18:                                               ; preds = %14, %1
  %19 = phi i32 [ -19, %1 ], [ %15, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_mutex) #16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_console_check(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @of_stdout, align 4
  %7 = icmp ne ptr %6, %0
  %8 = load i32, ptr @console_set_on_cmdline, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @of_stdout_options, align 4
  %13 = tail call i32 @add_preferred_console(ptr noundef %1, i32 noundef %2, ptr noundef %12) #16
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %11, %5, %3
  %16 = phi i1 [ %14, %11 ], [ false, %5 ], [ false, %3 ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_preferred_console(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_next_cache_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !8
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #16
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #16, !annotation !8
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #16
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %2, align 4
  %13 = select i1 %11, ptr %12, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi ptr [ %6, %1 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_find_last_cache_level(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4
  %5 = tail call ptr @get_cpu_device(i32 noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = tail call ptr @of_get_next_cpu_node(ptr noundef null) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %13, %7
  %11 = phi ptr [ %14, %13 ], [ %8, %7 ]
  %12 = tail call zeroext i1 @arch_find_n_match_cpu_physical_id(ptr noundef nonnull %11, i32 noundef %0, ptr noundef null) #16
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @of_get_next_cpu_node(ptr noundef nonnull %11) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %10

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @of_node_get(ptr noundef %18) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %16, %10
  %22 = phi ptr [ %19, %16 ], [ %11, %10 ]
  br label %23

23:                                               ; preds = %34, %21
  %24 = phi ptr [ %35, %34 ], [ %22, %21 ]
  call void @of_node_put(ptr noundef nonnull %24) #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #16, !annotation !8
  %25 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %24, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #16
  %26 = icmp ne i32 %25, 0
  %27 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #16, !annotation !8
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %24, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #16
  %32 = icmp eq i32 %31, 0
  %33 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #16
  br i1 %32, label %34, label %37

34:                                               ; preds = %30, %23
  %35 = phi ptr [ %27, %23 ], [ %33, %30 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23

37:                                               ; preds = %34, %30, %16, %13, %7
  %38 = phi ptr [ null, %16 ], [ null, %7 ], [ %24, %34 ], [ %24, %30 ], [ null, %13 ]
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.40, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #16
  %40 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_map_id(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %127

11:                                               ; preds = %6
  %12 = icmp ne ptr %4, null
  %13 = icmp ne ptr %5, null
  %14 = or i1 %12, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %11
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @devtree_lock) #16
  %17 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %25, %15
  %21 = phi ptr [ %27, %25 ], [ %18, %15 ]
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull %2) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %20

29:                                               ; preds = %25, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %16) #16
  br label %36

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @devtree_lock, i32 noundef %16) #16
  %33 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %29
  br i1 %12, label %127, label %37

37:                                               ; preds = %36
  store i32 %1, ptr %5, align 4
  br label %127

38:                                               ; preds = %30
  %39 = icmp ne i32 %32, 0
  %40 = and i32 %32, 15
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %32) #17
  br label %127

45:                                               ; preds = %38
  store i32 -1, ptr %7, align 4
  %46 = icmp eq ptr %3, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #16
  %49 = load i32, ptr %7, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %49, %47 ], [ -1, %45 ]
  %52 = and i32 %51, %1
  %53 = icmp sgt i32 %32, 0
  br i1 %53, label %54, label %120

54:                                               ; preds = %50
  %55 = xor i1 %13, true
  %56 = load i32, ptr %34, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #16
  %58 = xor i32 %51, -1
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = getelementptr i32, ptr %34, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63) #16
  br label %69

65:                                               ; preds = %108, %54
  %66 = phi i32 [ %51, %54 ], [ %111, %108 ]
  %67 = phi i32 [ %57, %54 ], [ %113, %108 ]
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2, i32 noundef %66, i32 noundef %67) #17
  br label %127

69:                                               ; preds = %108, %61
  %70 = phi i32 [ %64, %61 ], [ %116, %108 ]
  %71 = phi i32 [ %57, %61 ], [ %113, %108 ]
  %72 = phi i32 [ %32, %61 ], [ %110, %108 ]
  %73 = phi ptr [ %34, %61 ], [ %109, %108 ]
  %74 = getelementptr i32, ptr %73, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i32, ptr %73, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77) #16
  %79 = icmp uge i32 %52, %71
  %80 = add i32 %78, %71
  %81 = icmp ult i32 %52, %80
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %106

83:                                               ; preds = %69
  %84 = call ptr @of_find_node_by_phandle(i32 noundef %70)
  %85 = icmp eq ptr %84, null
  br i1 %85, label %127, label %86

86:                                               ; preds = %83
  br i1 %12, label %87, label %97

87:                                               ; preds = %86
  %88 = load ptr, ptr %4, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  call void @of_node_put(ptr noundef nonnull %84) #16
  %91 = load ptr, ptr %4, align 4
  br label %93

92:                                               ; preds = %87
  store ptr %84, ptr %4, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi ptr [ %84, %92 ], [ %91, %90 ]
  %95 = icmp ne ptr %94, %84
  %96 = or i1 %95, %55
  br i1 %96, label %105, label %99

97:                                               ; preds = %86
  %98 = call i32 @llvm.bswap.i32(i32 %75) #16
  br i1 %13, label %101, label %127

99:                                               ; preds = %93
  %100 = call i32 @llvm.bswap.i32(i32 %75) #16
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %100, %99 ], [ %98, %97 ]
  %103 = sub i32 %52, %71
  %104 = add i32 %103, %102
  store i32 %104, ptr %5, align 4
  br label %127

105:                                              ; preds = %93
  br i1 %95, label %106, label %127

106:                                              ; preds = %105, %69
  %107 = icmp sgt i32 %72, 16
  br i1 %107, label %108, label %120

108:                                              ; preds = %106
  %109 = getelementptr i32, ptr %73, i32 4
  %110 = add nsw i32 %72, -16
  %111 = load i32, ptr %7, align 4
  %112 = load i32, ptr %109, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #16
  %114 = getelementptr i32, ptr %73, i32 5
  %115 = load i32, ptr %114, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #16
  %117 = xor i32 %111, -1
  %118 = and i32 %113, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %69, label %65

120:                                              ; preds = %106, %50
  br i1 %12, label %121, label %123

121:                                              ; preds = %120
  %122 = load ptr, ptr %4, align 4
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi ptr [ null, %120 ], [ %122, %121 ]
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %1, ptr noundef %124) #17
  br i1 %13, label %126, label %127

126:                                              ; preds = %123
  store i32 %1, ptr %5, align 4
  br label %127

127:                                              ; preds = %126, %123, %105, %101, %97, %83, %65, %43, %37, %36, %11, %6
  %128 = phi i32 [ -22, %43 ], [ 0, %37 ], [ -22, %11 ], [ -22, %6 ], [ -19, %36 ], [ 0, %126 ], [ 0, %123 ], [ 0, %97 ], [ 0, %101 ], [ -14, %65 ], [ -19, %83 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %128
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
