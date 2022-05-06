; ModuleID = '/llk/IR/drivers/of/property.c_pt.bc'
source_filename = "../drivers/of/property.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_is_present:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_is_present\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_is_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_count_elems_of_size:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_count_elems_of_size\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_count_elems_of_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_u32_index:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_u32_index\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_u32_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_u64_index:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_u64_index\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_u64_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_variable_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_variable_u8_array\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_variable_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_variable_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_variable_u16_array\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_variable_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_variable_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_variable_u32_array\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_variable_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_u64\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_variable_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_variable_u64_array\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_variable_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_string\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_match_string\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_property_read_string_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22of_property_read_string_helper\22\09\09\09\09\09"
module asm "__kstrtabns_of_property_read_string_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_prop_next_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22of_prop_next_u32\22\09\09\09\09\09"
module asm "__kstrtabns_of_prop_next_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_prop_next_string:\09\09\09\09\09"
module asm "\09.asciz \09\22of_prop_next_string\22\09\09\09\09\09"
module asm "__kstrtabns_of_prop_next_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_parse_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_parse_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_parse_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_port_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_port_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_port_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_next_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_next_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_next_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_endpoint_by_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_endpoint_by_regs\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_endpoint_by_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_remote_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_remote_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_remote_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_port_parent\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_remote_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_remote_port_parent\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_remote_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_remote_port:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_remote_port\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_remote_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_endpoint_count:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_endpoint_count\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_endpoint_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_graph_get_remote_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_graph_get_remote_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_graph_get_remote_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_fwnode_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22of_fwnode_ops\22\09\09\09\09\09"
module asm "__kstrtabns_of_fwnode_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.supplier_bindings = type { ptr, i8, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, ptr }

@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@__kstrtab_of_graph_is_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_is_present = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_is_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_is_present to i32), ptr @__kstrtab_of_graph_is_present, ptr @__kstrtabns_of_graph_is_present }, section "___ksymtab+of_graph_is_present", align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"\013OF: size of %s in node %pOF is not a multiple of %d\0A\00", align 1
@__kstrtab_of_property_count_elems_of_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_count_elems_of_size = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_count_elems_of_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_count_elems_of_size to i32), ptr @__kstrtab_of_property_count_elems_of_size, ptr @__kstrtabns_of_property_count_elems_of_size }, section "___ksymtab_gpl+of_property_count_elems_of_size", align 4
@__kstrtab_of_property_read_u32_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_u32_index = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_u32_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_u32_index to i32), ptr @__kstrtab_of_property_read_u32_index, ptr @__kstrtabns_of_property_read_u32_index }, section "___ksymtab_gpl+of_property_read_u32_index", align 4
@__kstrtab_of_property_read_u64_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_u64_index = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_u64_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_u64_index to i32), ptr @__kstrtab_of_property_read_u64_index, ptr @__kstrtabns_of_property_read_u64_index }, section "___ksymtab_gpl+of_property_read_u64_index", align 4
@__kstrtab_of_property_read_variable_u8_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_variable_u8_array = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_variable_u8_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_variable_u8_array to i32), ptr @__kstrtab_of_property_read_variable_u8_array, ptr @__kstrtabns_of_property_read_variable_u8_array }, section "___ksymtab_gpl+of_property_read_variable_u8_array", align 4
@__kstrtab_of_property_read_variable_u16_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_variable_u16_array = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_variable_u16_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_variable_u16_array to i32), ptr @__kstrtab_of_property_read_variable_u16_array, ptr @__kstrtabns_of_property_read_variable_u16_array }, section "___ksymtab_gpl+of_property_read_variable_u16_array", align 4
@__kstrtab_of_property_read_variable_u32_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_variable_u32_array = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_variable_u32_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_variable_u32_array to i32), ptr @__kstrtab_of_property_read_variable_u32_array, ptr @__kstrtabns_of_property_read_variable_u32_array }, section "___ksymtab_gpl+of_property_read_variable_u32_array", align 4
@__kstrtab_of_property_read_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_u64 to i32), ptr @__kstrtab_of_property_read_u64, ptr @__kstrtabns_of_property_read_u64 }, section "___ksymtab_gpl+of_property_read_u64", align 4
@__kstrtab_of_property_read_variable_u64_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_variable_u64_array = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_variable_u64_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_variable_u64_array to i32), ptr @__kstrtab_of_property_read_variable_u64_array, ptr @__kstrtabns_of_property_read_variable_u64_array }, section "___ksymtab_gpl+of_property_read_variable_u64_array", align 4
@__kstrtab_of_property_read_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_string = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_string to i32), ptr @__kstrtab_of_property_read_string, ptr @__kstrtabns_of_property_read_string }, section "___ksymtab_gpl+of_property_read_string", align 4
@__kstrtab_of_property_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_match_string to i32), ptr @__kstrtab_of_property_match_string, ptr @__kstrtabns_of_property_match_string }, section "___ksymtab_gpl+of_property_match_string", align 4
@__kstrtab_of_property_read_string_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_property_read_string_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_of_property_read_string_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_property_read_string_helper to i32), ptr @__kstrtab_of_property_read_string_helper, ptr @__kstrtabns_of_property_read_string_helper }, section "___ksymtab_gpl+of_property_read_string_helper", align 4
@__kstrtab_of_prop_next_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_prop_next_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_of_prop_next_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_prop_next_u32 to i32), ptr @__kstrtab_of_prop_next_u32, ptr @__kstrtabns_of_prop_next_u32 }, section "___ksymtab_gpl+of_prop_next_u32", align 4
@__kstrtab_of_prop_next_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_prop_next_string = external dso_local constant [0 x i8], align 1
@__ksymtab_of_prop_next_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_prop_next_string to i32), ptr @__kstrtab_of_prop_next_string, ptr @__kstrtabns_of_prop_next_string }, section "___ksymtab_gpl+of_prop_next_string", align 4
@of_graph_parse_endpoint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"drivers/of/property.c\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s(): endpoint %pOF has no parent node\0A\00", align 1
@__func__.of_graph_parse_endpoint = private unnamed_addr constant [24 x i8] c"of_graph_parse_endpoint\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_of_graph_parse_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_parse_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_parse_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_parse_endpoint to i32), ptr @__kstrtab_of_graph_parse_endpoint, ptr @__kstrtabns_of_graph_parse_endpoint }, section "___ksymtab+of_graph_parse_endpoint", align 4
@__kstrtab_of_graph_get_port_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_port_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_port_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_port_by_id to i32), ptr @__kstrtab_of_graph_get_port_by_id, ptr @__kstrtabns_of_graph_get_port_by_id }, section "___ksymtab+of_graph_get_port_by_id", align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"\013OF: graph: no port node found in %pOF\0A\00", align 1
@of_graph_get_next_endpoint.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.of_graph_get_next_endpoint = private unnamed_addr constant [27 x i8] c"of_graph_get_next_endpoint\00", align 1
@__kstrtab_of_graph_get_next_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_next_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_next_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_next_endpoint to i32), ptr @__kstrtab_of_graph_get_next_endpoint, ptr @__kstrtabns_of_graph_get_next_endpoint }, section "___ksymtab+of_graph_get_next_endpoint", align 4
@__kstrtab_of_graph_get_endpoint_by_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_endpoint_by_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_endpoint_by_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_endpoint_by_regs to i32), ptr @__kstrtab_of_graph_get_endpoint_by_regs, ptr @__kstrtabns_of_graph_get_endpoint_by_regs }, section "___ksymtab+of_graph_get_endpoint_by_regs", align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@__kstrtab_of_graph_get_remote_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_remote_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_remote_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_remote_endpoint to i32), ptr @__kstrtab_of_graph_get_remote_endpoint, ptr @__kstrtabns_of_graph_get_remote_endpoint }, section "___ksymtab+of_graph_get_remote_endpoint", align 4
@__kstrtab_of_graph_get_port_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_port_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_port_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_port_parent to i32), ptr @__kstrtab_of_graph_get_port_parent, ptr @__kstrtabns_of_graph_get_port_parent }, section "___ksymtab+of_graph_get_port_parent", align 4
@__kstrtab_of_graph_get_remote_port_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_remote_port_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_remote_port_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_remote_port_parent to i32), ptr @__kstrtab_of_graph_get_remote_port_parent, ptr @__kstrtabns_of_graph_get_remote_port_parent }, section "___ksymtab+of_graph_get_remote_port_parent", align 4
@__kstrtab_of_graph_get_remote_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_remote_port = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_remote_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_remote_port to i32), ptr @__kstrtab_of_graph_get_remote_port, ptr @__kstrtabns_of_graph_get_remote_port }, section "___ksymtab+of_graph_get_remote_port", align 4
@__kstrtab_of_graph_get_endpoint_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_endpoint_count = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_endpoint_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_endpoint_count to i32), ptr @__kstrtab_of_graph_get_endpoint_count, ptr @__kstrtabns_of_graph_get_endpoint_count }, section "___ksymtab+of_graph_get_endpoint_count", align 4
@__kstrtab_of_graph_get_remote_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_graph_get_remote_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_graph_get_remote_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_graph_get_remote_node to i32), ptr @__kstrtab_of_graph_get_remote_node, ptr @__kstrtabns_of_graph_get_remote_node }, section "___ksymtab+of_graph_get_remote_node", align 4
@of_fwnode_ops = dso_local constant %struct.fwnode_operations { ptr @of_fwnode_get, ptr @of_fwnode_put, ptr @of_fwnode_device_is_available, ptr @of_fwnode_device_get_match_data, ptr @of_fwnode_property_present, ptr @of_fwnode_property_read_int_array, ptr @of_fwnode_property_read_string_array, ptr @of_fwnode_get_name, ptr @of_fwnode_get_name_prefix, ptr @of_fwnode_get_parent, ptr @of_fwnode_get_next_child_node, ptr @of_fwnode_get_named_child_node, ptr @of_fwnode_get_reference_args, ptr @of_fwnode_graph_get_next_endpoint, ptr @of_fwnode_graph_get_remote_endpoint, ptr @of_fwnode_graph_get_port_parent, ptr @of_fwnode_graph_parse_endpoint, ptr @of_fwnode_add_links }, align 4
@__kstrtab_of_fwnode_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_fwnode_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_of_fwnode_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_fwnode_ops to i32), ptr @__kstrtab_of_fwnode_ops, ptr @__kstrtabns_of_fwnode_ops }, section "___ksymtab_gpl+of_fwnode_ops", align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@of_supplier_bindings = internal unnamed_addr constant [34 x %struct.supplier_bindings] [%struct.supplier_bindings { ptr @parse_clocks, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_interconnects, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_iommus, i8 1, i8 0 }, %struct.supplier_bindings { ptr @parse_iommu_maps, i8 1, i8 0 }, %struct.supplier_bindings { ptr @parse_mboxes, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_io_channels, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_interrupt_parent, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_dmas, i8 1, i8 0 }, %struct.supplier_bindings { ptr @parse_power_domains, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_hwlocks, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_extcon, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_nvmem_cells, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_phys, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_wakeup_parent, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl0, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl1, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl2, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl3, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl4, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl5, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl6, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl7, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_pinctrl8, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_remote_endpoint, i8 0, i8 1 }, %struct.supplier_bindings { ptr @parse_pwms, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_resets, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_leds, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_backlight, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_gpio_compat, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_interrupts, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_regulators, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_gpio, i8 0, i8 0 }, %struct.supplier_bindings { ptr @parse_gpios, i8 0, i8 0 }, %struct.supplier_bindings zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"iommu-map\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"io-channel\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"hwlocks\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"#hwlock-cells\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"wakeup-parent\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"pinctrl-1\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"pinctrl-2\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"pinctrl-3\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"pinctrl-4\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"pinctrl-5\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"pinctrl-6\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"pinctrl-7\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"pinctrl-8\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"pwms\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"#pwm-cells\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"leds\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"-supply\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"-gpio\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c",nr-gpios\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"-gpios\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_of_fwnode_ops, ptr @__ksymtab_of_graph_get_endpoint_by_regs, ptr @__ksymtab_of_graph_get_endpoint_count, ptr @__ksymtab_of_graph_get_next_endpoint, ptr @__ksymtab_of_graph_get_port_by_id, ptr @__ksymtab_of_graph_get_port_parent, ptr @__ksymtab_of_graph_get_remote_endpoint, ptr @__ksymtab_of_graph_get_remote_node, ptr @__ksymtab_of_graph_get_remote_port, ptr @__ksymtab_of_graph_get_remote_port_parent, ptr @__ksymtab_of_graph_is_present, ptr @__ksymtab_of_graph_parse_endpoint, ptr @__ksymtab_of_prop_next_string, ptr @__ksymtab_of_prop_next_u32, ptr @__ksymtab_of_property_count_elems_of_size, ptr @__ksymtab_of_property_match_string, ptr @__ksymtab_of_property_read_string, ptr @__ksymtab_of_property_read_string_helper, ptr @__ksymtab_of_property_read_u32_index, ptr @__ksymtab_of_property_read_u64, ptr @__ksymtab_of_property_read_u64_index, ptr @__ksymtab_of_property_read_variable_u16_array, ptr @__ksymtab_of_property_read_variable_u32_array, ptr @__ksymtab_of_property_read_variable_u64_array, ptr @__ksymtab_of_property_read_variable_u8_array], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @of_graph_is_present(ptr noundef %0) #0 {
  %2 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str) #11
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr %0, ptr %2
  %5 = tail call ptr @of_get_child_by_name(ptr noundef %4, ptr noundef nonnull @.str.1) #11
  tail call void @of_node_put(ptr noundef %2) #11
  tail call void @of_node_put(ptr noundef %5) #11
  %6 = icmp ne ptr %5, null
  ret i1 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_count_elems_of_size(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = freeze i32 %12
  %14 = sdiv i32 %13, %2
  %15 = mul i32 %14, %2
  %16 = sub i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %0, i32 noundef %2) #12
  br label %20

20:                                               ; preds = %18, %10, %6, %3
  %21 = phi i32 [ -22, %18 ], [ -22, %3 ], [ -61, %6 ], [ %14, %10 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = shl i32 %2, 2
  %6 = add i32 %5, 4
  %7 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %6
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %13, %9, %4
  %20 = phi ptr [ %11, %17 ], [ inttoptr (i32 -75 to ptr), %13 ], [ inttoptr (i32 -61 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %4 ]
  %21 = ptrtoint ptr %20 to i32
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr i32, ptr %11, i32 %2
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  store i32 %25, ptr %3, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_u64_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = shl i32 %2, 3
  %6 = add i32 %5, 8
  %7 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, %6
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %17, %13, %9, %4
  %20 = phi ptr [ %11, %17 ], [ inttoptr (i32 -75 to ptr), %13 ], [ inttoptr (i32 -61 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %4 ]
  %21 = ptrtoint ptr %20 to i32
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr i64, ptr %11, i32 %2
  %24 = load i64, ptr %23, align 8
  %25 = tail call i64 @llvm.bswap.i64(i64 %24) #11
  store i64 %25, ptr %3, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_variable_u8_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %3
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = icmp ne i32 %4, 0
  %18 = icmp ugt i32 %14, %4
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %20, %16, %12, %8, %5
  %23 = phi ptr [ %10, %20 ], [ inttoptr (i32 -75 to ptr), %16 ], [ inttoptr (i32 -75 to ptr), %12 ], [ inttoptr (i32 -61 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %5 ]
  %24 = ptrtoint ptr %23 to i32
  br label %38

25:                                               ; preds = %20
  %26 = icmp eq i32 %4, 0
  %27 = select i1 %26, i32 %3, i32 %14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %34, %29 ], [ %10, %25 ]
  %31 = phi i32 [ %33, %29 ], [ %27, %25 ]
  %32 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %33 = add i32 %31, -1
  %34 = getelementptr i8, ptr %30, i32 1
  %35 = load i8, ptr %30, align 1
  %36 = getelementptr i8, ptr %32, i32 1
  store i8 %35, ptr %32, align 1
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %25, %22
  %39 = phi i32 [ %24, %22 ], [ 0, %25 ], [ %27, %29 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_variable_u16_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl i32 %3, 1
  %7 = shl i32 %4, 1
  %8 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = icmp ne i32 %7, 0
  %20 = icmp ugt i32 %16, %7
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %22, %18, %14, %10, %5
  %25 = phi ptr [ %12, %22 ], [ inttoptr (i32 -75 to ptr), %18 ], [ inttoptr (i32 -75 to ptr), %14 ], [ inttoptr (i32 -61 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %5 ]
  %26 = ptrtoint ptr %25 to i32
  br label %42

27:                                               ; preds = %22
  %28 = icmp eq i32 %4, 0
  %29 = lshr i32 %16, 1
  %30 = select i1 %28, i32 %3, i32 %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %32, %27
  %33 = phi ptr [ %37, %32 ], [ %12, %27 ]
  %34 = phi i32 [ %36, %32 ], [ %30, %27 ]
  %35 = phi ptr [ %40, %32 ], [ %2, %27 ]
  %36 = add i32 %34, -1
  %37 = getelementptr i16, ptr %33, i32 1
  %38 = load i16, ptr %33, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #11
  %40 = getelementptr i16, ptr %35, i32 1
  store i16 %39, ptr %35, align 2
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %42, label %32

42:                                               ; preds = %32, %27, %24
  %43 = phi i32 [ %26, %24 ], [ 0, %27 ], [ %30, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl i32 %3, 2
  %7 = shl i32 %4, 2
  %8 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = icmp ne i32 %7, 0
  %20 = icmp ugt i32 %16, %7
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %22, %18, %14, %10, %5
  %25 = phi ptr [ %12, %22 ], [ inttoptr (i32 -75 to ptr), %18 ], [ inttoptr (i32 -75 to ptr), %14 ], [ inttoptr (i32 -61 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %5 ]
  %26 = ptrtoint ptr %25 to i32
  br label %42

27:                                               ; preds = %22
  %28 = icmp eq i32 %4, 0
  %29 = lshr i32 %16, 2
  %30 = select i1 %28, i32 %3, i32 %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %32, %27
  %33 = phi ptr [ %37, %32 ], [ %12, %27 ]
  %34 = phi i32 [ %36, %32 ], [ %30, %27 ]
  %35 = phi ptr [ %40, %32 ], [ %2, %27 ]
  %36 = add i32 %34, -1
  %37 = getelementptr i32, ptr %33, i32 1
  %38 = load i32, ptr %33, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = getelementptr i32, ptr %35, i32 1
  store i32 %39, ptr %35, align 4
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %42, label %32

42:                                               ; preds = %32, %27, %24
  %43 = phi i32 [ %26, %24 ], [ 0, %27 ], [ %30, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_u64(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %14, %10, %6, %3
  %17 = phi ptr [ %8, %14 ], [ inttoptr (i32 -75 to ptr), %10 ], [ inttoptr (i32 -61 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %3 ]
  %18 = ptrtoint ptr %17 to i32
  br label %28

19:                                               ; preds = %14
  %20 = load i32, ptr %8, align 4
  %21 = getelementptr i32, ptr %8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = zext i32 %20 to i64
  %24 = zext i32 %22 to i64
  %25 = shl nuw i64 %24, 32
  %26 = or i64 %25, %23
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #11
  store i64 %27, ptr %2, align 8
  br label %28

28:                                               ; preds = %19, %16
  %29 = phi i32 [ %18, %16 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_variable_u64_array(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl i32 %3, 3
  %7 = shl i32 %4, 3
  %8 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %8, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %6
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = icmp ne i32 %7, 0
  %20 = icmp ugt i32 %16, %7
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %22, %18, %14, %10, %5
  %25 = phi ptr [ %12, %22 ], [ inttoptr (i32 -75 to ptr), %18 ], [ inttoptr (i32 -75 to ptr), %14 ], [ inttoptr (i32 -61 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %5 ]
  %26 = ptrtoint ptr %25 to i32
  br label %48

27:                                               ; preds = %22
  %28 = icmp eq i32 %4, 0
  %29 = lshr i32 %16, 3
  %30 = select i1 %28, i32 %3, i32 %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %32, %27
  %33 = phi ptr [ %46, %32 ], [ %12, %27 ]
  %34 = phi i32 [ %36, %32 ], [ %30, %27 ]
  %35 = phi ptr [ %45, %32 ], [ %2, %27 ]
  %36 = add i32 %34, -1
  %37 = load i32, ptr %33, align 4
  %38 = getelementptr i32, ptr %33, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %37 to i64
  %41 = zext i32 %39 to i64
  %42 = shl nuw i64 %41, 32
  %43 = or i64 %42, %40
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #11
  %45 = getelementptr i64, ptr %35, i32 1
  store i64 %44, ptr %35, align 8
  %46 = getelementptr i32, ptr %33, i32 2
  %47 = icmp eq i32 %36, 0
  br i1 %47, label %48, label %32

48:                                               ; preds = %32, %27, %24
  %49 = phi i32 [ %26, %24 ], [ 0, %27 ], [ %30, %32 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @strnlen(ptr noundef nonnull %8, i32 noundef %12)
  %14 = icmp ult i32 %13, %12
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr %8, ptr %2, align 4
  br label %16

16:                                               ; preds = %15, %10, %6, %3
  %17 = phi i32 [ 0, %15 ], [ -22, %3 ], [ -61, %6 ], [ -84, %10 ]
  ret i32 %17
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_match_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.property, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = ptrtoint ptr %13 to i32
  %15 = icmp ult ptr %8, %13
  br i1 %15, label %16, label %31

16:                                               ; preds = %28, %10
  %17 = phi ptr [ %23, %28 ], [ %8, %10 ]
  %18 = phi i32 [ %29, %28 ], [ 0, %10 ]
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %14, %19
  %21 = tail call i32 @strnlen(ptr noundef %17, i32 noundef %20)
  %22 = add i32 %21, 1
  %23 = getelementptr i8, ptr %17, i32 %22
  %24 = icmp ugt ptr %23, %13
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @strcmp(ptr noundef %2, ptr noundef %17)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = add i32 %18, 1
  %30 = icmp ult ptr %23, %13
  br i1 %30, label %16, label %31

31:                                               ; preds = %28, %25, %16, %10, %6, %3
  %32 = phi i32 [ -22, %3 ], [ -61, %6 ], [ -61, %10 ], [ -84, %16 ], [ %18, %25 ], [ -61, %28 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef %1, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %10, i32 %14
  %16 = icmp ult ptr %10, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = add i32 %4, %3
  %19 = ptrtoint ptr %15 to i32
  br label %20

20:                                               ; preds = %39, %17
  %21 = phi ptr [ %10, %17 ], [ %32, %39 ]
  %22 = phi i32 [ 0, %17 ], [ %41, %39 ]
  %23 = phi ptr [ %2, %17 ], [ %40, %39 ]
  %24 = icmp eq ptr %23, null
  %25 = icmp ult i32 %22, %18
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %20
  %28 = ptrtoint ptr %21 to i32
  %29 = sub i32 %19, %28
  %30 = tail call i32 @strnlen(ptr noundef %21, i32 noundef %29)
  %31 = add i32 %30, 1
  %32 = getelementptr i8, ptr %21, i32 %31
  %33 = icmp ugt ptr %32, %15
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  br i1 %24, label %39, label %35

35:                                               ; preds = %34
  %36 = icmp slt i32 %22, %4
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = getelementptr ptr, ptr %23, i32 1
  store ptr %21, ptr %23, align 4
  br label %39

39:                                               ; preds = %37, %35, %34
  %40 = phi ptr [ %38, %37 ], [ %23, %35 ], [ null, %34 ]
  %41 = add i32 %22, 1
  %42 = icmp ult ptr %32, %15
  br i1 %42, label %20, label %43

43:                                               ; preds = %39, %20, %12
  %44 = phi i32 [ 0, %12 ], [ %22, %20 ], [ %41, %39 ]
  %45 = sub i32 %44, %4
  %46 = icmp slt i32 %45, 1
  %47 = select i1 %46, i32 -61, i32 %45
  br label %48

48:                                               ; preds = %43, %27, %8, %5
  %49 = phi i32 [ %47, %43 ], [ -22, %5 ], [ -61, %8 ], [ -84, %27 ]
  ret i32 %49
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @of_prop_next_u32(ptr noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %18

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %1, i32 4
  %12 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = icmp ult ptr %11, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10, %7
  %19 = phi ptr [ %11, %10 ], [ %9, %7 ]
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %18, %10, %3
  %23 = phi ptr [ %19, %18 ], [ null, %3 ], [ null, %10 ]
  ret ptr %23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @of_prop_next_string(ptr noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %20

9:                                                ; preds = %4
  %10 = tail call i32 @strlen(ptr noundef nonnull %1)
  %11 = add i32 %10, 1
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.property, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = icmp ult ptr %12, %17
  %19 = select i1 %18, ptr %12, ptr null
  br label %20

20:                                               ; preds = %9, %6, %2
  %21 = phi ptr [ %8, %6 ], [ null, %2 ], [ %19, %9 ]
  ret ptr %21
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_graph_parse_endpoint(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @of_graph_parse_endpoint.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  store i1 true, ptr @of_graph_parse_endpoint.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 580, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.of_graph_parse_endpoint, ptr noundef %0) #11
  br label %9

9:                                                ; preds = %8, %2
  store i64 0, ptr %1, align 4
  %10 = getelementptr inbounds %struct.of_endpoint, ptr %1, i32 0, i32 2
  store ptr %0, ptr %10, align 4
  %11 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.property, ptr %11, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 4
  %21 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %15, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %23, %17, %13, %9
  %27 = getelementptr inbounds %struct.of_endpoint, ptr %1, i32 0, i32 1
  %28 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.property, ptr %28, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %36, 4
  %38 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %32, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  store i32 %42, ptr %27, align 4
  br label %43

43:                                               ; preds = %40, %34, %30, %26
  tail call void @of_node_put(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_port_by_id(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @of_get_child_by_name(ptr noundef %0, ptr noundef nonnull @.str) #11
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %0, ptr %3
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %30, %2
  %9 = phi ptr [ %31, %30 ], [ %6, %2 ]
  %10 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #11
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.property, ptr %12, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 4
  %22 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %16, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  br label %27

27:                                               ; preds = %24, %18, %14, %11
  %28 = phi i32 [ 0, %11 ], [ 0, %14 ], [ 0, %18 ], [ %26, %24 ]
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %8
  %31 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %9) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8

33:                                               ; preds = %30, %27, %2
  %34 = phi ptr [ null, %2 ], [ %9, %27 ], [ null, %30 ]
  tail call void @of_node_put(ptr noundef %3) #11
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %0, ptr noundef nonnull @.str) #11
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %0, ptr %7
  %10 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %9, ptr noundef nonnull @.str.1) #11
  tail call void @of_node_put(ptr noundef %7) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #12
  br label %40

14:                                               ; preds = %4
  %15 = tail call ptr @of_get_parent(ptr noundef nonnull %1) #11
  %16 = icmp eq ptr %15, null
  %17 = load i1, ptr @of_graph_get_next_endpoint.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %14
  store i1 true, ptr @of_graph_get_next_endpoint.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 669, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.of_graph_get_next_endpoint, ptr noundef nonnull %1) #11
  br label %21

21:                                               ; preds = %20, %14
  br i1 %16, label %40, label %22

22:                                               ; preds = %21, %6
  %23 = phi ptr [ %15, %21 ], [ %10, %6 ]
  %24 = phi ptr [ %0, %21 ], [ %9, %6 ]
  %25 = tail call ptr @of_get_next_child(ptr noundef nonnull %23, ptr noundef %1) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %30

27:                                               ; preds = %37
  %28 = tail call ptr @of_get_next_child(ptr noundef nonnull %35, ptr noundef null) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %23, %22 ], [ %35, %27 ]
  %32 = phi ptr [ %25, %22 ], [ %28, %27 ]
  tail call void @of_node_put(ptr noundef nonnull %31) #11
  br label %40

33:                                               ; preds = %39, %22
  %34 = phi ptr [ %35, %39 ], [ %23, %22 ]
  %35 = tail call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %34) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %35, ptr noundef nonnull @.str.1) #11
  br i1 %38, label %27, label %39

39:                                               ; preds = %37, %27
  br label %33

40:                                               ; preds = %33, %30, %21, %12, %2
  %41 = phi ptr [ %32, %30 ], [ null, %2 ], [ null, %12 ], [ null, %21 ], [ null, %33 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !9
  %5 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef null)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, -1
  %9 = icmp eq i32 %2, -1
  %10 = getelementptr inbounds %struct.of_endpoint, ptr %4, i32 0, i32 1
  br label %11

11:                                               ; preds = %21, %7
  %12 = phi ptr [ %5, %7 ], [ %22, %21 ]
  %13 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %12, ptr noundef nonnull %4)
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, %1
  %16 = select i1 %8, i1 true, i1 %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, ptr %10, align 4
  %19 = icmp eq i32 %18, %2
  %20 = select i1 %9, i1 true, i1 %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %11
  %22 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef nonnull %12)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11

24:                                               ; preds = %21, %17, %3
  %25 = phi ptr [ null, %3 ], [ null, %21 ], [ %12, %17 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_remote_endpoint(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !9
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_port_parent(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @of_node_get(ptr noundef nonnull %0) #11
  %5 = tail call ptr @of_get_next_parent(ptr noundef nonnull %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @of_get_next_parent(ptr noundef nonnull %5) #11
  %9 = tail call zeroext i1 @of_node_name_eq(ptr noundef %8, ptr noundef nonnull @.str) #11
  %10 = xor i1 %9, true
  %11 = icmp eq ptr %8, null
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @of_get_next_parent(ptr noundef nonnull %8) #11
  br label %15

15:                                               ; preds = %13, %7, %3, %1
  %16 = phi ptr [ null, %1 ], [ %5, %3 ], [ %8, %7 ], [ %14, %13 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_remote_port_parent(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !9
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  %6 = select i1 %4, ptr %5, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = call ptr @of_node_get(ptr noundef nonnull %6) #11
  %10 = call ptr @of_get_next_parent(ptr noundef nonnull %5) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = call ptr @of_get_next_parent(ptr noundef nonnull %10) #11
  %14 = call zeroext i1 @of_node_name_eq(ptr noundef %13, ptr noundef nonnull @.str) #11
  %15 = xor i1 %14, true
  %16 = icmp eq ptr %13, null
  %17 = or i1 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call ptr @of_get_next_parent(ptr noundef nonnull %13) #11
  br label %20

20:                                               ; preds = %18, %12, %8, %1
  %21 = phi ptr [ null, %1 ], [ %10, %8 ], [ %13, %12 ], [ %19, %18 ]
  call void @of_node_put(ptr noundef %6) #11
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_remote_port(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !9
  %3 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %4 = icmp ne i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call ptr @of_get_next_parent(ptr noundef nonnull %5) #11
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi ptr [ %9, %8 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_graph_get_endpoint_count(ptr noundef %0) #0 {
  %2 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef null)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %7 = add i32 %5, 1
  %8 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef nonnull %6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_graph_get_remote_node(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_endpoint, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #11, !annotation !9
  %5 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef null) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, -1
  %9 = icmp eq i32 %2, -1
  %10 = getelementptr inbounds %struct.of_endpoint, ptr %4, i32 0, i32 1
  br label %11

11:                                               ; preds = %21, %7
  %12 = phi ptr [ %5, %7 ], [ %22, %21 ]
  %13 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %12, ptr noundef nonnull %4) #11
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, %1
  %16 = select i1 %8, i1 true, i1 %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, ptr %10, align 4
  %19 = icmp eq i32 %18, %2
  %20 = select i1 %9, i1 true, i1 %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %11
  %22 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %0, ptr noundef nonnull %12) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11

24:                                               ; preds = %21, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  br label %31

25:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  %26 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %12)
  tail call void @of_node_put(ptr noundef nonnull %12) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %26) #11
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void @of_node_put(ptr noundef nonnull %26) #11
  br label %31

31:                                               ; preds = %30, %28, %25, %24
  %32 = phi ptr [ null, %30 ], [ null, %25 ], [ %26, %28 ], [ null, %24 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = tail call ptr @of_node_get(ptr noundef %12) #11
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @of_fwnode_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  tail call void @of_node_put(ptr noundef %12) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @of_fwnode_device_is_available(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = tail call zeroext i1 @of_device_is_available(ptr noundef %12) #11
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_device_get_match_data(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %1) #11
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @of_fwnode_property_present(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef %1, ptr noundef null) #11
  %15 = icmp ne ptr %14, null
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fwnode_property_read_int_array(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  %13 = getelementptr i8, ptr %0, i32 -12
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi ptr [ null, %5 ], [ %14, %9 ]
  %17 = icmp eq ptr %3, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef %1, ptr noundef null) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %172, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.property, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %172, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.property, ptr %19, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = freeze i32 %27
  %29 = sdiv i32 %28, %2
  %30 = mul i32 %29, %2
  %31 = sub i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %172, label %33

33:                                               ; preds = %25
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %16, i32 noundef %2) #12
  br label %172

35:                                               ; preds = %15
  switch i32 %2, label %172 [
    i32 1, label %36
    i32 2, label %67
    i32 4, label %100
    i32 8, label %133
  ]

36:                                               ; preds = %35
  %37 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef %1, ptr noundef null) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.property, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.property, ptr %37, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %4
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %47, %43, %39, %36
  %50 = phi ptr [ %41, %47 ], [ inttoptr (i32 -75 to ptr), %43 ], [ inttoptr (i32 -61 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %36 ]
  %51 = ptrtoint ptr %50 to i32
  br label %63

52:                                               ; preds = %47
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %54, %52
  %55 = phi ptr [ %59, %54 ], [ %41, %52 ]
  %56 = phi i32 [ %58, %54 ], [ %4, %52 ]
  %57 = phi ptr [ %61, %54 ], [ %3, %52 ]
  %58 = add i32 %56, -1
  %59 = getelementptr i8, ptr %55, i32 1
  %60 = load i8, ptr %55, align 1
  %61 = getelementptr i8, ptr %57, i32 1
  store i8 %60, ptr %57, align 1
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %49
  %64 = phi i32 [ %51, %49 ], [ %4, %54 ]
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %172

66:                                               ; preds = %63, %52
  br label %172

67:                                               ; preds = %35
  %68 = shl i32 %4, 1
  %69 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef %1, ptr noundef null) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.property, ptr %69, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.property, ptr %69, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, %68
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %84

81:                                               ; preds = %79, %75, %71, %67
  %82 = phi ptr [ %73, %79 ], [ inttoptr (i32 -75 to ptr), %75 ], [ inttoptr (i32 -61 to ptr), %71 ], [ inttoptr (i32 -22 to ptr), %67 ]
  %83 = ptrtoint ptr %82 to i32
  br label %96

84:                                               ; preds = %79
  %85 = icmp eq i32 %4, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %86, %84
  %87 = phi ptr [ %91, %86 ], [ %73, %84 ]
  %88 = phi i32 [ %90, %86 ], [ %4, %84 ]
  %89 = phi ptr [ %94, %86 ], [ %3, %84 ]
  %90 = add i32 %88, -1
  %91 = getelementptr i16, ptr %87, i32 1
  %92 = load i16, ptr %87, align 2
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #11
  %94 = getelementptr i16, ptr %89, i32 1
  store i16 %93, ptr %89, align 2
  %95 = icmp eq i32 %90, 0
  br i1 %95, label %96, label %86

96:                                               ; preds = %86, %81
  %97 = phi i32 [ %83, %81 ], [ %4, %86 ]
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %172

99:                                               ; preds = %96, %84
  br label %172

100:                                              ; preds = %35
  %101 = shl i32 %4, 2
  %102 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef %1, ptr noundef null) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.property, ptr %102, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.property, ptr %102, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp ult i32 %110, %101
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %117

114:                                              ; preds = %112, %108, %104, %100
  %115 = phi ptr [ %106, %112 ], [ inttoptr (i32 -75 to ptr), %108 ], [ inttoptr (i32 -61 to ptr), %104 ], [ inttoptr (i32 -22 to ptr), %100 ]
  %116 = ptrtoint ptr %115 to i32
  br label %129

117:                                              ; preds = %112
  %118 = icmp eq i32 %4, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %119, %117
  %120 = phi ptr [ %124, %119 ], [ %106, %117 ]
  %121 = phi i32 [ %123, %119 ], [ %4, %117 ]
  %122 = phi ptr [ %127, %119 ], [ %3, %117 ]
  %123 = add i32 %121, -1
  %124 = getelementptr i32, ptr %120, i32 1
  %125 = load i32, ptr %120, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #11
  %127 = getelementptr i32, ptr %122, i32 1
  store i32 %126, ptr %122, align 4
  %128 = icmp eq i32 %123, 0
  br i1 %128, label %129, label %119

129:                                              ; preds = %119, %114
  %130 = phi i32 [ %116, %114 ], [ %4, %119 ]
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %132, label %172

132:                                              ; preds = %129, %117
  br label %172

133:                                              ; preds = %35
  %134 = shl i32 %4, 3
  %135 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef %1, ptr noundef null) #11
  %136 = icmp eq ptr %135, null
  br i1 %136, label %147, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.property, ptr %135, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.property, ptr %135, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %143, %134
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %150

147:                                              ; preds = %145, %141, %137, %133
  %148 = phi ptr [ %139, %145 ], [ inttoptr (i32 -75 to ptr), %141 ], [ inttoptr (i32 -61 to ptr), %137 ], [ inttoptr (i32 -22 to ptr), %133 ]
  %149 = ptrtoint ptr %148 to i32
  br label %168

150:                                              ; preds = %145
  %151 = icmp eq i32 %4, 0
  br i1 %151, label %171, label %152

152:                                              ; preds = %152, %150
  %153 = phi ptr [ %166, %152 ], [ %139, %150 ]
  %154 = phi i32 [ %156, %152 ], [ %4, %150 ]
  %155 = phi ptr [ %165, %152 ], [ %3, %150 ]
  %156 = add i32 %154, -1
  %157 = load i32, ptr %153, align 4
  %158 = getelementptr i32, ptr %153, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = zext i32 %157 to i64
  %161 = zext i32 %159 to i64
  %162 = shl nuw i64 %161, 32
  %163 = or i64 %162, %160
  %164 = tail call i64 @llvm.bswap.i64(i64 %163) #11
  %165 = getelementptr i64, ptr %155, i32 1
  store i64 %164, ptr %155, align 8
  %166 = getelementptr i32, ptr %153, i32 2
  %167 = icmp eq i32 %156, 0
  br i1 %167, label %168, label %152

168:                                              ; preds = %152, %147
  %169 = phi i32 [ %149, %147 ], [ %4, %152 ]
  %170 = icmp sgt i32 %169, -1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %150
  br label %172

172:                                              ; preds = %171, %168, %132, %129, %99, %96, %66, %63, %35, %33, %25, %21, %18
  %173 = phi i32 [ -6, %35 ], [ -22, %33 ], [ -22, %18 ], [ -61, %21 ], [ 0, %66 ], [ %64, %63 ], [ 0, %99 ], [ %97, %96 ], [ 0, %132 ], [ %130, %129 ], [ 0, %171 ], [ %169, %168 ], [ %29, %25 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fwnode_property_read_string_array(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @of_fwnode_ops
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = select i1 %11, ptr %12, ptr null
  br label %14

14:                                               ; preds = %8, %4
  %15 = phi ptr [ null, %4 ], [ %13, %8 ]
  %16 = icmp eq ptr %2, null
  %17 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef %1, ptr noundef null) #11
  %18 = icmp eq ptr %17, null
  br i1 %16, label %58, label %19

19:                                               ; preds = %14
  br i1 %18, label %85, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %85, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %22, i32 %26
  %28 = icmp ult ptr %22, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  br label %31

31:                                               ; preds = %50, %29
  %32 = phi ptr [ %22, %29 ], [ %43, %50 ]
  %33 = phi i32 [ 0, %29 ], [ %52, %50 ]
  %34 = phi ptr [ %2, %29 ], [ %51, %50 ]
  %35 = icmp eq ptr %34, null
  %36 = icmp ult i32 %33, %3
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = ptrtoint ptr %32 to i32
  %40 = sub i32 %30, %39
  %41 = tail call i32 @strnlen(ptr noundef %32, i32 noundef %40) #11
  %42 = add i32 %41, 1
  %43 = getelementptr i8, ptr %32, i32 %42
  %44 = icmp ugt ptr %43, %27
  br i1 %44, label %85, label %45

45:                                               ; preds = %38
  br i1 %35, label %50, label %46

46:                                               ; preds = %45
  %47 = icmp slt i32 %33, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = getelementptr ptr, ptr %34, i32 1
  store ptr %32, ptr %34, align 4
  br label %50

50:                                               ; preds = %48, %46, %45
  %51 = phi ptr [ %49, %48 ], [ %34, %46 ], [ null, %45 ]
  %52 = add i32 %33, 1
  %53 = icmp ult ptr %43, %27
  br i1 %53, label %31, label %54

54:                                               ; preds = %50, %31
  %55 = phi i32 [ %33, %31 ], [ %52, %50 ]
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %85

57:                                               ; preds = %54, %24
  br label %85

58:                                               ; preds = %14
  br i1 %18, label %85, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %85, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %61, i32 %65
  %67 = icmp ult ptr %61, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = ptrtoint ptr %66 to i32
  br label %70

70:                                               ; preds = %79, %68
  %71 = phi ptr [ %61, %68 ], [ %77, %79 ]
  %72 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %69, %73
  %75 = tail call i32 @strnlen(ptr noundef %71, i32 noundef %74) #11
  %76 = add i32 %75, 1
  %77 = getelementptr i8, ptr %71, i32 %76
  %78 = icmp ugt ptr %77, %66
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = add i32 %72, 1
  %81 = icmp ult ptr %77, %66
  br i1 %81, label %70, label %82

82:                                               ; preds = %79
  %83 = icmp ugt i32 %72, 2147483646
  br i1 %83, label %84, label %85

84:                                               ; preds = %82, %63
  br label %85

85:                                               ; preds = %84, %82, %70, %59, %58, %57, %54, %38, %20, %19
  %86 = phi i32 [ -22, %19 ], [ -61, %20 ], [ -61, %57 ], [ %55, %54 ], [ -22, %58 ], [ -61, %59 ], [ -61, %84 ], [ %80, %82 ], [ -84, %70 ], [ -84, %38 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @of_fwnode_get_name(ptr noundef readonly %0) #8 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @strrchr(ptr noundef %14, i32 noundef 47) #11
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 1
  %18 = select i1 %16, ptr %14, ptr %17
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal nonnull ptr @of_fwnode_get_name_prefix(ptr noundef readonly %0) #9 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.8, ptr @.str.9
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_get_parent(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = tail call ptr @of_get_parent(ptr noundef %12) #11
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_get_next_child_node(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = icmp eq ptr %1, null
  %15 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @of_fwnode_ops
  %21 = getelementptr i8, ptr %1, i32 -12
  %22 = select i1 %20, ptr %21, ptr null
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi ptr [ null, %12 ], [ %22, %17 ]
  %25 = tail call ptr @of_get_next_available_child(ptr noundef %13, ptr noundef %24) #11
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 3
  %28 = select i1 %26, ptr null, ptr %27
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_get_named_child_node(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = tail call ptr @of_get_next_available_child(ptr noundef %13, ptr noundef null) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %21, %12
  %17 = phi ptr [ %22, %21 ], [ %14, %12 ]
  %18 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %17, ptr noundef %1) #11
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 3
  br label %24

21:                                               ; preds = %16
  %22 = tail call ptr @of_get_next_available_child(ptr noundef %13, ptr noundef nonnull %17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16

24:                                               ; preds = %21, %19, %12
  %25 = phi ptr [ %20, %19 ], [ null, %12 ], [ null, %21 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fwnode_get_reference_args(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false), !annotation !9
  %8 = icmp eq ptr %2, null
  %9 = icmp eq ptr %0, null
  %10 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %8, label %22, label %12

12:                                               ; preds = %6
  br i1 %11, label %19, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @of_fwnode_ops
  %17 = getelementptr i8, ptr %0, i32 -12
  %18 = select i1 %16, ptr %17, ptr null
  br label %19

19:                                               ; preds = %13, %12
  %20 = phi ptr [ null, %12 ], [ %18, %13 ]
  %21 = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef %1, ptr noundef nonnull %2, i32 noundef -1, i32 noundef %4, ptr noundef nonnull %7) #11
  br label %32

22:                                               ; preds = %6
  br i1 %11, label %29, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, @of_fwnode_ops
  %27 = getelementptr i8, ptr %0, i32 -12
  %28 = select i1 %26, ptr %27, ptr null
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi ptr [ null, %22 ], [ %28, %23 ]
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef %30, ptr noundef %1, ptr noundef null, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %7) #11
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi i32 [ %21, %19 ], [ %31, %29 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %109, label %35

35:                                               ; preds = %32
  %36 = icmp eq ptr %5, null
  br i1 %36, label %109, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fwnode_reference_args, ptr %5, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %7, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.device_node, ptr %41, i32 0, i32 3
  %44 = select i1 %42, ptr null, ptr %43
  store ptr %44, ptr %5, align 8
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 0
  store i64 0, ptr %47, align 8
  br label %54

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 0
  %50 = load i32, ptr %49, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 0
  store i64 %51, ptr %52, align 8
  %53 = icmp eq i32 %39, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48, %46
  %55 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 1
  store i64 0, ptr %55, align 8
  br label %62

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 1
  store i64 %59, ptr %60, align 8
  %61 = icmp ugt i32 %39, 2
  br i1 %61, label %64, label %62

62:                                               ; preds = %56, %54
  %63 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 2
  store i64 0, ptr %63, align 8
  br label %70

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 2
  store i64 %67, ptr %68, align 8
  %69 = icmp eq i32 %39, 3
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %62
  %71 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 3
  store i64 0, ptr %71, align 8
  br label %78

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 3
  store i64 %75, ptr %76, align 8
  %77 = icmp ugt i32 %39, 4
  br i1 %77, label %80, label %78

78:                                               ; preds = %72, %70
  %79 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 4
  store i64 0, ptr %79, align 8
  br label %86

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 4
  store i64 %83, ptr %84, align 8
  %85 = icmp eq i32 %39, 5
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %78
  %87 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 5
  store i64 0, ptr %87, align 8
  br label %94

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 5
  store i64 %91, ptr %92, align 8
  %93 = icmp ugt i32 %39, 6
  br i1 %93, label %96, label %94

94:                                               ; preds = %88, %86
  %95 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 6
  store i64 0, ptr %95, align 8
  br label %105

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 6
  store i64 %99, ptr %100, align 8
  %101 = icmp eq i32 %39, 7
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 7
  %104 = load i32, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %96, %94
  %106 = phi i32 [ %104, %102 ], [ 0, %96 ], [ 0, %94 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr %struct.fwnode_reference_args, ptr %5, i32 0, i32 2, i32 7
  store i64 %107, ptr %108, align 8
  br label %109

109:                                              ; preds = %105, %35, %32
  %110 = phi i32 [ %33, %32 ], [ 0, %35 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #11
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_graph_get_next_endpoint(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = icmp eq ptr %1, null
  %15 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @of_fwnode_ops
  %21 = getelementptr i8, ptr %1, i32 -12
  %22 = select i1 %20, ptr %21, ptr null
  br label %23

23:                                               ; preds = %17, %12
  %24 = phi ptr [ null, %12 ], [ %22, %17 ]
  %25 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %13, ptr noundef %24)
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.device_node, ptr %25, i32 0, i32 3
  %28 = select i1 %26, ptr null, ptr %27
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_graph_get_remote_endpoint(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ null, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #11, !annotation !9
  %14 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #11
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %2, align 4
  %17 = select i1 %15, ptr %16, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #11
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.device_node, ptr %17, i32 0, i32 3
  %20 = select i1 %18, ptr null, ptr %19
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_fwnode_graph_get_port_parent(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = select i1 %8, ptr %9, ptr null
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = tail call ptr @of_get_parent(ptr noundef %12) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %13, ptr noundef nonnull @.str) #11
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  br label %24

19:                                               ; preds = %15
  %20 = tail call ptr @of_get_next_parent(ptr noundef nonnull %13) #11
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 3
  %23 = select i1 %21, ptr null, ptr %22
  br label %24

24:                                               ; preds = %19, %17, %11
  %25 = phi ptr [ %23, %19 ], [ %18, %17 ], [ null, %11 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fwnode_graph_parse_endpoint(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  %10 = getelementptr i8, ptr %0, i32 -12
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = tail call ptr @of_get_parent(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.fwnode_endpoint, ptr %1, i32 0, i32 2
  store ptr %0, ptr %15, align 4
  %16 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.property, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.property, ptr %16, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 4
  %26 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %20, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  store i32 %30, ptr %1, align 4
  br label %31

31:                                               ; preds = %28, %22, %18, %12
  %32 = getelementptr inbounds %struct.fwnode_endpoint, ptr %1, i32 0, i32 1
  %33 = tail call ptr @of_find_property(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef null) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.property, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.property, ptr %33, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 4
  %43 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %37, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #11
  store i32 %47, ptr %32, align 4
  br label %48

48:                                               ; preds = %45, %39, %35, %31
  tail call void @of_node_put(ptr noundef %14) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_fwnode_add_links(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %131, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @of_fwnode_ops
  %9 = getelementptr i8, ptr %0, i32 -12
  %10 = icmp eq ptr %9, null
  %11 = or i1 %10, %8
  br i1 %11, label %131, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %131, label %16

16:                                               ; preds = %127, %12
  %17 = phi ptr [ %129, %127 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %124, %16
  %20 = phi i32 [ 0, %16 ], [ %125, %124 ]
  %21 = phi ptr [ @of_supplier_bindings, %16 ], [ %126, %124 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %127, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.supplier_bindings, ptr %21, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !10
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %32

28:                                               ; preds = %37
  %29 = getelementptr %struct.supplier_bindings, ptr %33, i32 1, i32 1
  %30 = load i8, ptr %29, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28, %24
  %33 = phi ptr [ %38, %28 ], [ %21, %24 ]
  %34 = tail call zeroext i1 @fw_devlink_is_strict() #11
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 4
  br label %41

37:                                               ; preds = %32
  %38 = getelementptr %struct.supplier_bindings, ptr %33, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %127, label %28

41:                                               ; preds = %35, %28, %24
  %42 = phi ptr [ %33, %35 ], [ %21, %24 ], [ %38, %28 ]
  %43 = phi ptr [ %36, %35 ], [ %22, %24 ], [ %39, %28 ]
  %44 = tail call ptr %43(ptr noundef %9, ptr noundef %18, i32 noundef %20) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %124, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.supplier_bindings, ptr %42, i32 0, i32 2
  br label %48

48:                                               ; preds = %120, %46
  %49 = phi ptr [ %44, %46 ], [ %122, %120 ]
  %50 = phi i32 [ %20, %46 ], [ %74, %120 ]
  %51 = load i8, ptr %47, align 1, !range !10
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @of_get_parent(ptr noundef %9) #11
  %55 = tail call ptr @of_node_get(ptr noundef %54) #11
  %56 = icmp eq ptr %54, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %65, %53
  %58 = phi ptr [ %66, %65 ], [ %54, %53 ]
  %59 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %58) #11
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  tail call void @of_node_put(ptr noundef nonnull %58) #11
  br label %61

61:                                               ; preds = %60, %57
  %62 = phi ptr [ %58, %57 ], [ null, %60 ]
  %63 = tail call ptr @of_find_property(ptr noundef %62, ptr noundef nonnull @.str.58, ptr noundef null) #11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = tail call ptr @of_get_next_parent(ptr noundef %62) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %57

68:                                               ; preds = %65, %61, %53
  %69 = phi ptr [ null, %53 ], [ null, %65 ], [ %62, %61 ]
  tail call void @of_node_put(ptr noundef %54) #11
  br label %72

70:                                               ; preds = %48
  %71 = tail call ptr @of_node_get(ptr noundef %9) #11
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi ptr [ %69, %68 ], [ %71, %70 ]
  %74 = add i32 %50, 1
  %75 = tail call ptr @of_node_get(ptr noundef nonnull %49) #11
  br label %76

76:                                               ; preds = %85, %72
  %77 = phi ptr [ %87, %85 ], [ %49, %72 ]
  %78 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %77) #11
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = tail call ptr @of_find_property(ptr noundef nonnull %77, ptr noundef nonnull @.str.58, ptr noundef null) #11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %89

82:                                               ; preds = %76
  tail call void @of_node_put(ptr noundef nonnull %77) #11
  %83 = tail call ptr @of_find_property(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef null) #11
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %120

85:                                               ; preds = %82, %79
  %86 = phi ptr [ null, %82 ], [ %77, %79 ]
  %87 = tail call ptr @of_get_next_parent(ptr noundef %86) #11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %120, label %76

89:                                               ; preds = %79
  %90 = tail call ptr @of_node_get(ptr noundef nonnull %77) #11
  br label %91

91:                                               ; preds = %94, %89
  %92 = phi ptr [ %95, %94 ], [ %77, %89 ]
  %93 = icmp eq ptr %92, %73
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = tail call ptr @of_get_next_parent(ptr noundef nonnull %92) #11
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %91

97:                                               ; preds = %91
  tail call void @of_node_put(ptr noundef nonnull %73) #11
  br label %119

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 3
  %100 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 3, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = tail call ptr @get_device(ptr noundef %101) #11
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 10
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.device_node, ptr %77, i32 0, i32 3, i32 5
  %111 = load i8, ptr %110, align 4
  %112 = and i8 %111, 2
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109, %98
  tail call void @put_device(ptr noundef %102) #11
  %115 = icmp eq ptr %73, null
  %116 = getelementptr inbounds %struct.device_node, ptr %73, i32 0, i32 3
  %117 = select i1 %115, ptr null, ptr %116
  %118 = tail call i32 @fwnode_link_add(ptr noundef %117, ptr noundef %99) #11
  br label %119

119:                                              ; preds = %114, %109, %104, %97
  tail call void @of_node_put(ptr noundef nonnull %77) #11
  br label %120

120:                                              ; preds = %119, %85, %82
  tail call void @of_node_put(ptr noundef nonnull %49) #11
  tail call void @of_node_put(ptr noundef %73) #11
  %121 = load ptr, ptr %42, align 4
  %122 = tail call ptr %121(ptr noundef %9, ptr noundef %18, i32 noundef %74) #11
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %48

124:                                              ; preds = %120, %41
  %125 = phi i32 [ %20, %41 ], [ %74, %120 ]
  %126 = getelementptr %struct.supplier_bindings, ptr %42, i32 1
  br i1 %45, label %19, label %127

127:                                              ; preds = %124, %37, %19
  %128 = getelementptr inbounds %struct.property, ptr %17, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %16

131:                                              ; preds = %127, %12, %5, %1
  %132 = phi i32 [ -22, %5 ], [ -22, %1 ], [ 0, %12 ], [ 0, %127 ]
  ret i32 %132
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fw_devlink_is_strict() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_clocks(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.10) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_interconnects(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.12) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_iommus(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.14) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_iommu_maps(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.16)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = shl i32 %2, 2
  %9 = or i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %10 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %9, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %4, align 4
  %13 = select i1 %11, ptr %12, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi ptr [ %13, %7 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_mboxes(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.17) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_io_channels(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.19) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_interrupt_parent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(17) @.str.21) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_dmas(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.22) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_power_domains(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.24) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_hwlocks(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(8) @.str.26) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_extcon(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.28) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_nvmem_cells(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(12) @.str.29) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_phys(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.30) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_wakeup_parent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(14) @.str.32) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl0(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.33) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl1(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.34) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl2(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.35) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl3(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.36) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl4(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.37) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl5(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.38) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl6(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.39) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl7(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.40) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pinctrl8(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.41) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_remote_endpoint(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(16) @.str.7) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_pwms(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.42) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_resets(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.44) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_leds(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.46) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_backlight(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.47) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %4, align 4
  %11 = select i1 %9, ptr %10, ptr null
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi ptr [ null, %3 ], [ %11, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_gpio_compat(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.48)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.49)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7, %3
  %11 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef null) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %4, align 4
  %17 = select i1 %15, ptr %16, ptr null
  br label %18

18:                                               ; preds = %13, %10, %7
  %19 = phi ptr [ null, %7 ], [ null, %10 ], [ %17, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_interrupts(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(11) @.str.52)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(20) @.str.53)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %3
  %11 = call i32 @of_irq_parse_one(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr %4, align 4
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi ptr [ %14, %10 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_regulators(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strlen(ptr noundef %1) #11
  %6 = icmp ugt i32 %5, 7
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 %5
  %9 = getelementptr i8, ptr %8, i32 -7
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(8) @.str.54) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #11
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %4, align 4
  %16 = select i1 %14, ptr %15, ptr null
  br label %17

17:                                               ; preds = %12, %7, %3
  %18 = phi ptr [ null, %7 ], [ %16, %12 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_gpio(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %5 = tail call i32 @strlen(ptr noundef %1) #11
  %6 = icmp ugt i32 %5, 5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 %5
  %9 = getelementptr i8, ptr %8, i32 -5
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.55) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %4, align 4
  %16 = select i1 %14, ptr %15, ptr null
  br label %17

17:                                               ; preds = %12, %7, %3
  %18 = phi ptr [ null, %7 ], [ %16, %12 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @parse_gpios(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = tail call i32 @strlen(ptr noundef %1) #11
  %6 = icmp ugt i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %1, i32 %5
  %9 = getelementptr i8, ptr %8, i32 -9
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(10) @.str.56) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  br label %15

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #11, !annotation !9
  %14 = icmp ugt i32 %5, 6
  br i1 %14, label %15, label %25

15:                                               ; preds = %13, %12
  %16 = getelementptr i8, ptr %1, i32 %5
  %17 = getelementptr i8, ptr %16, i32 -6
  %18 = tail call i32 @strcmp(ptr noundef %17, ptr noundef nonnull dereferenceable(7) @.str.57) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef -1, i32 noundef %2, ptr noundef nonnull %4) #11
  %22 = icmp eq i32 %21, 0
  %23 = load ptr, ptr %4, align 4
  %24 = select i1 %22, ptr %23, ptr null
  br label %25

25:                                               ; preds = %20, %15, %13
  %26 = phi ptr [ null, %15 ], [ %24, %20 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #11
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi ptr [ %26, %25 ], [ null, %7 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_link_add(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
