; ModuleID = '/llk/IR/drivers/base/property.c_pt.bc'
source_filename = "../drivers/base/property.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_dev_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_present:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_present\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_present:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_present\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_u8_array\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_u16_array\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_u32_array\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_u64_array\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_string_array:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_string_array\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_string_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_read_string\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22device_property_match_string\22\09\09\09\09\09"
module asm "__kstrtabns_device_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_u8_array\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_u8_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_u16_array\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_u16_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_u32_array\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_u32_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_u64_array\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_u64_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_string_array:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_string_array\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_string_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_read_string\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_read_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_match_string\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_match_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_property_get_reference_args:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_property_get_reference_args\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_property_get_reference_args:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_find_reference:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_find_reference\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_find_reference:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_next_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_next_parent\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_next_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_count_parents:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_count_parents\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_count_parents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_nth_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_nth_parent\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_nth_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_next_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_next_child_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_next_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_next_available_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_next_available_child_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_next_available_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_next_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_next_child_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_next_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_named_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_named_child_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_named_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_named_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_named_child_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_named_child_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_handle_get:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_handle_get\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_handle_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_handle_put:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_handle_put\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_handle_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_device_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_device_is_available\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_device_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_child_node_count:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_child_node_count\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_child_node_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22device_dma_supported\22\09\09\09\09\09"
module asm "__kstrtabns_device_dma_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_dma_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_dma_attr\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_dma_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_phy_mode\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_phy_mode\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_irq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_irq_get\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_irq_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_iomap\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_iomap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_next_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_next_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_next_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_port_parent\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_remote_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_remote_port_parent\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_remote_port_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_remote_port:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_remote_port\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_remote_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_remote_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_remote_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_remote_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_endpoint_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_endpoint_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_endpoint_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_get_endpoint_count:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_get_endpoint_count\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_get_endpoint_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_graph_parse_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_graph_parse_endpoint\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_graph_parse_endpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_get_match_data:\09\09\09\09\09"
module asm "\09.asciz \09\22device_get_match_data\22\09\09\09\09\09"
module asm "__kstrtabns_device_get_match_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_connection_find_match:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_connection_find_match\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_connection_find_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_reference_args = type { ptr, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, ptr }

@__kstrtab_dev_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_fwnode to i32), ptr @__kstrtab_dev_fwnode, ptr @__kstrtabns_dev_fwnode }, section "___ksymtab_gpl+dev_fwnode", align 4
@__kstrtab_device_property_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_present = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_present to i32), ptr @__kstrtab_device_property_present, ptr @__kstrtabns_device_property_present }, section "___ksymtab_gpl+device_property_present", align 4
@__kstrtab_fwnode_property_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_present = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_present to i32), ptr @__kstrtab_fwnode_property_present, ptr @__kstrtabns_fwnode_property_present }, section "___ksymtab_gpl+fwnode_property_present", align 4
@__kstrtab_device_property_read_u8_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_u8_array = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_u8_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_u8_array to i32), ptr @__kstrtab_device_property_read_u8_array, ptr @__kstrtabns_device_property_read_u8_array }, section "___ksymtab_gpl+device_property_read_u8_array", align 4
@__kstrtab_device_property_read_u16_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_u16_array = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_u16_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_u16_array to i32), ptr @__kstrtab_device_property_read_u16_array, ptr @__kstrtabns_device_property_read_u16_array }, section "___ksymtab_gpl+device_property_read_u16_array", align 4
@__kstrtab_device_property_read_u32_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_u32_array = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_u32_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_u32_array to i32), ptr @__kstrtab_device_property_read_u32_array, ptr @__kstrtabns_device_property_read_u32_array }, section "___ksymtab_gpl+device_property_read_u32_array", align 4
@__kstrtab_device_property_read_u64_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_u64_array = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_u64_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_u64_array to i32), ptr @__kstrtab_device_property_read_u64_array, ptr @__kstrtabns_device_property_read_u64_array }, section "___ksymtab_gpl+device_property_read_u64_array", align 4
@__kstrtab_device_property_read_string_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_string_array = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_string_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_string_array to i32), ptr @__kstrtab_device_property_read_string_array, ptr @__kstrtabns_device_property_read_string_array }, section "___ksymtab_gpl+device_property_read_string_array", align 4
@__kstrtab_device_property_read_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_read_string = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_read_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_read_string to i32), ptr @__kstrtab_device_property_read_string, ptr @__kstrtabns_device_property_read_string }, section "___ksymtab_gpl+device_property_read_string", align 4
@__kstrtab_device_property_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_property_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab_device_property_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_property_match_string to i32), ptr @__kstrtab_device_property_match_string, ptr @__kstrtabns_device_property_match_string }, section "___ksymtab_gpl+device_property_match_string", align 4
@__kstrtab_fwnode_property_read_u8_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_u8_array = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_u8_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_u8_array to i32), ptr @__kstrtab_fwnode_property_read_u8_array, ptr @__kstrtabns_fwnode_property_read_u8_array }, section "___ksymtab_gpl+fwnode_property_read_u8_array", align 4
@__kstrtab_fwnode_property_read_u16_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_u16_array = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_u16_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_u16_array to i32), ptr @__kstrtab_fwnode_property_read_u16_array, ptr @__kstrtabns_fwnode_property_read_u16_array }, section "___ksymtab_gpl+fwnode_property_read_u16_array", align 4
@__kstrtab_fwnode_property_read_u32_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_u32_array = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_u32_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_u32_array to i32), ptr @__kstrtab_fwnode_property_read_u32_array, ptr @__kstrtabns_fwnode_property_read_u32_array }, section "___ksymtab_gpl+fwnode_property_read_u32_array", align 4
@__kstrtab_fwnode_property_read_u64_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_u64_array = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_u64_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_u64_array to i32), ptr @__kstrtab_fwnode_property_read_u64_array, ptr @__kstrtabns_fwnode_property_read_u64_array }, section "___ksymtab_gpl+fwnode_property_read_u64_array", align 4
@__kstrtab_fwnode_property_read_string_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_string_array = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_string_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_string_array to i32), ptr @__kstrtab_fwnode_property_read_string_array, ptr @__kstrtabns_fwnode_property_read_string_array }, section "___ksymtab_gpl+fwnode_property_read_string_array", align 4
@__kstrtab_fwnode_property_read_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_read_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_read_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_read_string to i32), ptr @__kstrtab_fwnode_property_read_string, ptr @__kstrtabns_fwnode_property_read_string }, section "___ksymtab_gpl+fwnode_property_read_string", align 4
@__kstrtab_fwnode_property_match_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_match_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_match_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_match_string to i32), ptr @__kstrtab_fwnode_property_match_string, ptr @__kstrtabns_fwnode_property_match_string }, section "___ksymtab_gpl+fwnode_property_match_string", align 4
@__kstrtab_fwnode_property_get_reference_args = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_property_get_reference_args = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_property_get_reference_args = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_property_get_reference_args to i32), ptr @__kstrtab_fwnode_property_get_reference_args, ptr @__kstrtabns_fwnode_property_get_reference_args }, section "___ksymtab_gpl+fwnode_property_get_reference_args", align 4
@__kstrtab_fwnode_find_reference = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_find_reference = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_find_reference = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_find_reference to i32), ptr @__kstrtab_fwnode_find_reference, ptr @__kstrtabns_fwnode_find_reference }, section "___ksymtab_gpl+fwnode_find_reference", align 4
@__kstrtab_fwnode_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_name to i32), ptr @__kstrtab_fwnode_get_name, ptr @__kstrtabns_fwnode_get_name }, section "___ksymtab_gpl+fwnode_get_name", align 4
@__kstrtab_fwnode_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_parent to i32), ptr @__kstrtab_fwnode_get_parent, ptr @__kstrtabns_fwnode_get_parent }, section "___ksymtab_gpl+fwnode_get_parent", align 4
@__kstrtab_fwnode_get_next_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_next_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_next_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_next_parent to i32), ptr @__kstrtab_fwnode_get_next_parent, ptr @__kstrtabns_fwnode_get_next_parent }, section "___ksymtab_gpl+fwnode_get_next_parent", align 4
@__kstrtab_fwnode_count_parents = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_count_parents = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_count_parents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_count_parents to i32), ptr @__kstrtab_fwnode_count_parents, ptr @__kstrtabns_fwnode_count_parents }, section "___ksymtab_gpl+fwnode_count_parents", align 4
@__kstrtab_fwnode_get_nth_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_nth_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_nth_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_nth_parent to i32), ptr @__kstrtab_fwnode_get_nth_parent, ptr @__kstrtabns_fwnode_get_nth_parent }, section "___ksymtab_gpl+fwnode_get_nth_parent", align 4
@__kstrtab_fwnode_get_next_child_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_next_child_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_next_child_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_next_child_node to i32), ptr @__kstrtab_fwnode_get_next_child_node, ptr @__kstrtabns_fwnode_get_next_child_node }, section "___ksymtab_gpl+fwnode_get_next_child_node", align 4
@__kstrtab_fwnode_get_next_available_child_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_next_available_child_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_next_available_child_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_next_available_child_node to i32), ptr @__kstrtab_fwnode_get_next_available_child_node, ptr @__kstrtabns_fwnode_get_next_available_child_node }, section "___ksymtab_gpl+fwnode_get_next_available_child_node", align 4
@__kstrtab_device_get_next_child_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_next_child_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_next_child_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_next_child_node to i32), ptr @__kstrtab_device_get_next_child_node, ptr @__kstrtabns_device_get_next_child_node }, section "___ksymtab_gpl+device_get_next_child_node", align 4
@__kstrtab_fwnode_get_named_child_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_named_child_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_named_child_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_named_child_node to i32), ptr @__kstrtab_fwnode_get_named_child_node, ptr @__kstrtabns_fwnode_get_named_child_node }, section "___ksymtab_gpl+fwnode_get_named_child_node", align 4
@__kstrtab_device_get_named_child_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_named_child_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_named_child_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_named_child_node to i32), ptr @__kstrtab_device_get_named_child_node, ptr @__kstrtabns_device_get_named_child_node }, section "___ksymtab_gpl+device_get_named_child_node", align 4
@__kstrtab_fwnode_handle_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_handle_get = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_handle_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_handle_get to i32), ptr @__kstrtab_fwnode_handle_get, ptr @__kstrtabns_fwnode_handle_get }, section "___ksymtab_gpl+fwnode_handle_get", align 4
@__kstrtab_fwnode_handle_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_handle_put = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_handle_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_handle_put to i32), ptr @__kstrtab_fwnode_handle_put, ptr @__kstrtabns_fwnode_handle_put }, section "___ksymtab_gpl+fwnode_handle_put", align 4
@__kstrtab_fwnode_device_is_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_device_is_available = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_device_is_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_device_is_available to i32), ptr @__kstrtab_fwnode_device_is_available, ptr @__kstrtabns_fwnode_device_is_available }, section "___ksymtab_gpl+fwnode_device_is_available", align 4
@__kstrtab_device_get_child_node_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_child_node_count = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_child_node_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_child_node_count to i32), ptr @__kstrtab_device_get_child_node_count, ptr @__kstrtabns_device_get_child_node_count }, section "___ksymtab_gpl+device_get_child_node_count", align 4
@__kstrtab_device_dma_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_dma_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_device_dma_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_dma_supported to i32), ptr @__kstrtab_device_dma_supported, ptr @__kstrtabns_device_dma_supported }, section "___ksymtab_gpl+device_dma_supported", align 4
@__kstrtab_device_get_dma_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_dma_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_dma_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_dma_attr to i32), ptr @__kstrtab_device_get_dma_attr, ptr @__kstrtabns_device_get_dma_attr }, section "___ksymtab_gpl+device_get_dma_attr", align 4
@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@__kstrtab_fwnode_get_phy_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_phy_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_phy_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_phy_mode to i32), ptr @__kstrtab_fwnode_get_phy_mode, ptr @__kstrtabns_fwnode_get_phy_mode }, section "___ksymtab_gpl+fwnode_get_phy_mode", align 4
@__kstrtab_device_get_phy_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_phy_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_phy_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_phy_mode to i32), ptr @__kstrtab_device_get_phy_mode, ptr @__kstrtabns_device_get_phy_mode }, section "___ksymtab_gpl+device_get_phy_mode", align 4
@__kstrtab_fwnode_irq_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_irq_get = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_irq_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_irq_get to i32), ptr @__kstrtab_fwnode_irq_get, ptr @__kstrtabns_fwnode_irq_get }, section "___ksymtab+fwnode_irq_get", align 4
@__kstrtab_fwnode_iomap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_iomap = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_iomap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_iomap to i32), ptr @__kstrtab_fwnode_iomap, ptr @__kstrtabns_fwnode_iomap }, section "___ksymtab+fwnode_iomap", align 4
@__kstrtab_fwnode_graph_get_next_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_next_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_next_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_next_endpoint to i32), ptr @__kstrtab_fwnode_graph_get_next_endpoint, ptr @__kstrtabns_fwnode_graph_get_next_endpoint }, section "___ksymtab_gpl+fwnode_graph_get_next_endpoint", align 4
@__kstrtab_fwnode_graph_get_port_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_port_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_port_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_port_parent to i32), ptr @__kstrtab_fwnode_graph_get_port_parent, ptr @__kstrtabns_fwnode_graph_get_port_parent }, section "___ksymtab_gpl+fwnode_graph_get_port_parent", align 4
@__kstrtab_fwnode_graph_get_remote_port_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_remote_port_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_remote_port_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_remote_port_parent to i32), ptr @__kstrtab_fwnode_graph_get_remote_port_parent, ptr @__kstrtabns_fwnode_graph_get_remote_port_parent }, section "___ksymtab_gpl+fwnode_graph_get_remote_port_parent", align 4
@__kstrtab_fwnode_graph_get_remote_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_remote_port = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_remote_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_remote_port to i32), ptr @__kstrtab_fwnode_graph_get_remote_port, ptr @__kstrtabns_fwnode_graph_get_remote_port }, section "___ksymtab_gpl+fwnode_graph_get_remote_port", align 4
@__kstrtab_fwnode_graph_get_remote_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_remote_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_remote_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_remote_endpoint to i32), ptr @__kstrtab_fwnode_graph_get_remote_endpoint, ptr @__kstrtabns_fwnode_graph_get_remote_endpoint }, section "___ksymtab_gpl+fwnode_graph_get_remote_endpoint", align 4
@__kstrtab_fwnode_graph_get_endpoint_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_endpoint_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_endpoint_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_endpoint_by_id to i32), ptr @__kstrtab_fwnode_graph_get_endpoint_by_id, ptr @__kstrtabns_fwnode_graph_get_endpoint_by_id }, section "___ksymtab_gpl+fwnode_graph_get_endpoint_by_id", align 4
@__kstrtab_fwnode_graph_get_endpoint_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_get_endpoint_count = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_get_endpoint_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_get_endpoint_count to i32), ptr @__kstrtab_fwnode_graph_get_endpoint_count, ptr @__kstrtabns_fwnode_graph_get_endpoint_count }, section "___ksymtab_gpl+fwnode_graph_get_endpoint_count", align 4
@__kstrtab_fwnode_graph_parse_endpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_graph_parse_endpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_graph_parse_endpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_graph_parse_endpoint to i32), ptr @__kstrtab_fwnode_graph_parse_endpoint, ptr @__kstrtabns_fwnode_graph_parse_endpoint }, section "___ksymtab+fwnode_graph_parse_endpoint", align 4
@__kstrtab_device_get_match_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_get_match_data = external dso_local constant [0 x i8], align 1
@__ksymtab_device_get_match_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_get_match_data to i32), ptr @__kstrtab_device_get_match_data, ptr @__kstrtabns_device_get_match_data }, section "___ksymtab_gpl+device_get_match_data", align 4
@__kstrtab_fwnode_connection_find_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_connection_find_match = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_connection_find_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_connection_find_match to i32), ptr @__kstrtab_fwnode_connection_find_match, ptr @__kstrtabns_fwnode_connection_find_match }, section "___ksymtab_gpl+fwnode_connection_find_match", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab_dev_fwnode, ptr @__ksymtab_device_dma_supported, ptr @__ksymtab_device_get_child_node_count, ptr @__ksymtab_device_get_dma_attr, ptr @__ksymtab_device_get_match_data, ptr @__ksymtab_device_get_named_child_node, ptr @__ksymtab_device_get_next_child_node, ptr @__ksymtab_device_get_phy_mode, ptr @__ksymtab_device_property_match_string, ptr @__ksymtab_device_property_present, ptr @__ksymtab_device_property_read_string, ptr @__ksymtab_device_property_read_string_array, ptr @__ksymtab_device_property_read_u16_array, ptr @__ksymtab_device_property_read_u32_array, ptr @__ksymtab_device_property_read_u64_array, ptr @__ksymtab_device_property_read_u8_array, ptr @__ksymtab_fwnode_connection_find_match, ptr @__ksymtab_fwnode_count_parents, ptr @__ksymtab_fwnode_device_is_available, ptr @__ksymtab_fwnode_find_reference, ptr @__ksymtab_fwnode_get_name, ptr @__ksymtab_fwnode_get_named_child_node, ptr @__ksymtab_fwnode_get_next_available_child_node, ptr @__ksymtab_fwnode_get_next_child_node, ptr @__ksymtab_fwnode_get_next_parent, ptr @__ksymtab_fwnode_get_nth_parent, ptr @__ksymtab_fwnode_get_parent, ptr @__ksymtab_fwnode_get_phy_mode, ptr @__ksymtab_fwnode_graph_get_endpoint_by_id, ptr @__ksymtab_fwnode_graph_get_endpoint_count, ptr @__ksymtab_fwnode_graph_get_next_endpoint, ptr @__ksymtab_fwnode_graph_get_port_parent, ptr @__ksymtab_fwnode_graph_get_remote_endpoint, ptr @__ksymtab_fwnode_graph_get_remote_port, ptr @__ksymtab_fwnode_graph_get_remote_port_parent, ptr @__ksymtab_fwnode_graph_parse_endpoint, ptr @__ksymtab_fwnode_handle_get, ptr @__ksymtab_fwnode_handle_put, ptr @__ksymtab_fwnode_iomap, ptr @__ksymtab_fwnode_irq_get, ptr @__ksymtab_fwnode_property_get_reference_args, ptr @__ksymtab_fwnode_property_match_string, ptr @__ksymtab_fwnode_property_present, ptr @__ksymtab_fwnode_property_read_string, ptr @__ksymtab_fwnode_property_read_string_array, ptr @__ksymtab_fwnode_property_read_u16_array, ptr @__ksymtab_fwnode_property_read_u32_array, ptr @__ksymtab_fwnode_property_read_u64_array, ptr @__ksymtab_fwnode_property_read_u8_array], section "llvm.metadata"
@switch.table.fwnode_get_phy_mode = private unnamed_addr constant [30 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.31, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dev_fwnode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @device_property_present(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call zeroext i1 %20(ptr noundef nonnull %12, ptr noundef %1) #9
  br i1 %23, label %41, label %24

24:                                               ; preds = %22, %18, %14
  %25 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %41, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  %30 = or i1 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.fwnode_handle, ptr %27, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.fwnode_operations, ptr %33, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call zeroext i1 %37(ptr noundef nonnull %27, ptr noundef %1) #9
  br label %41

41:                                               ; preds = %39, %35, %31, %26, %24, %22, %11
  %42 = phi i1 [ false, %24 ], [ false, %26 ], [ true, %22 ], [ %40, %39 ], [ false, %35 ], [ false, %31 ], [ false, %11 ]
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fwnode_property_present(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_operations, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call zeroext i1 %10(ptr noundef nonnull %0, ptr noundef %1) #9
  br i1 %13, label %31, label %14

14:                                               ; preds = %12, %8, %4
  %15 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %31, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.fwnode_handle, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fwnode_operations, ptr %23, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i1 %27(ptr noundef nonnull %17, ptr noundef %1) #9
  br label %31

31:                                               ; preds = %29, %25, %21, %16, %14, %12, %2
  %32 = phi i1 [ false, %14 ], [ false, %16 ], [ true, %12 ], [ %30, %29 ], [ false, %25 ], [ false, %21 ], [ false, %2 ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_u8_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %14, ptr noundef %1, i32 noundef 1, ptr noundef %2, i32 noundef %3) #9
  %26 = icmp eq i32 %25, -22
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %30, ptr noundef %1, i32 noundef 1, ptr noundef %2, i32 noundef %3) #9
  br label %44

44:                                               ; preds = %42, %38, %34, %29, %27, %24, %20, %16, %13
  %45 = phi i32 [ -22, %27 ], [ -22, %29 ], [ %25, %24 ], [ %43, %42 ], [ -6, %38 ], [ -6, %34 ], [ -22, %13 ], [ -6, %20 ], [ -6, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_u8_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp eq i32 %15, -22
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %34, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %20, ptr noundef %1, i32 noundef 1, ptr noundef %2, i32 noundef %3) #9
  br label %34

34:                                               ; preds = %32, %28, %24, %19, %17, %14, %10, %6, %4
  %35 = phi i32 [ -22, %17 ], [ -22, %19 ], [ %15, %14 ], [ %33, %32 ], [ -6, %28 ], [ -6, %24 ], [ -22, %4 ], [ -6, %10 ], [ -6, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_u16_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %14, ptr noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef %3) #9
  %26 = icmp eq i32 %25, -22
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %30, ptr noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef %3) #9
  br label %44

44:                                               ; preds = %42, %38, %34, %29, %27, %24, %20, %16, %13
  %45 = phi i32 [ -22, %27 ], [ -22, %29 ], [ %25, %24 ], [ %43, %42 ], [ -6, %38 ], [ -6, %34 ], [ -22, %13 ], [ -6, %20 ], [ -6, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_u16_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp eq i32 %15, -22
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %34, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %20, ptr noundef %1, i32 noundef 2, ptr noundef %2, i32 noundef %3) #9
  br label %34

34:                                               ; preds = %32, %28, %24, %19, %17, %14, %10, %6, %4
  %35 = phi i32 [ -22, %17 ], [ -22, %19 ], [ %15, %14 ], [ %33, %32 ], [ -6, %28 ], [ -6, %24 ], [ -22, %4 ], [ -6, %10 ], [ -6, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_u32_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %14, ptr noundef %1, i32 noundef 4, ptr noundef %2, i32 noundef %3) #9
  %26 = icmp eq i32 %25, -22
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %30, ptr noundef %1, i32 noundef 4, ptr noundef %2, i32 noundef %3) #9
  br label %44

44:                                               ; preds = %42, %38, %34, %29, %27, %24, %20, %16, %13
  %45 = phi i32 [ -22, %27 ], [ -22, %29 ], [ %25, %24 ], [ %43, %42 ], [ -6, %38 ], [ -6, %34 ], [ -22, %13 ], [ -6, %20 ], [ -6, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp eq i32 %15, -22
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %34, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %20, ptr noundef %1, i32 noundef 4, ptr noundef %2, i32 noundef %3) #9
  br label %34

34:                                               ; preds = %32, %28, %24, %19, %17, %14, %10, %6, %4
  %35 = phi i32 [ -22, %17 ], [ -22, %19 ], [ %15, %14 ], [ %33, %32 ], [ -6, %28 ], [ -6, %24 ], [ -22, %4 ], [ -6, %10 ], [ -6, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_u64_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %14, ptr noundef %1, i32 noundef 8, ptr noundef %2, i32 noundef %3) #9
  %26 = icmp eq i32 %25, -22
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %30, ptr noundef %1, i32 noundef 8, ptr noundef %2, i32 noundef %3) #9
  br label %44

44:                                               ; preds = %42, %38, %34, %29, %27, %24, %20, %16, %13
  %45 = phi i32 [ -22, %27 ], [ -22, %29 ], [ %25, %24 ], [ %43, %42 ], [ -6, %38 ], [ -6, %34 ], [ -22, %13 ], [ -6, %20 ], [ -6, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_u64_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 8, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp eq i32 %15, -22
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %34, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %20, ptr noundef %1, i32 noundef 8, ptr noundef %2, i32 noundef %3) #9
  br label %34

34:                                               ; preds = %32, %28, %24, %19, %17, %14, %10, %6, %4
  %35 = phi i32 [ -22, %17 ], [ -22, %19 ], [ %15, %14 ], [ %33, %32 ], [ -6, %28 ], [ -6, %24 ], [ -22, %4 ], [ -6, %10 ], [ -6, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_string_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %26 = icmp eq i32 %25, -22
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %14, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.fwnode_handle, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %30, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %44

44:                                               ; preds = %42, %38, %34, %29, %27, %24, %20, %16, %13
  %45 = phi i32 [ -22, %27 ], [ -22, %29 ], [ %25, %24 ], [ %43, %42 ], [ -6, %38 ], [ -6, %34 ], [ -22, %13 ], [ -6, %20 ], [ -6, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_string_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  %16 = icmp eq i32 %15, -22
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %34, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 4
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2, i32 noundef %3) #9
  br label %34

34:                                               ; preds = %32, %28, %24, %19, %17, %14, %10, %6, %4
  %35 = phi i32 [ -22, %17 ], [ -22, %19 ], [ %15, %14 ], [ %33, %32 ], [ -6, %28 ], [ -6, %24 ], [ -22, %4 ], [ -6, %10 ], [ -6, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_read_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  br label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fwnode_handle, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fwnode_operations, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  %25 = icmp eq i32 %24, -22
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %43, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %13, align 4
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.fwnode_handle, ptr %29, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fwnode_operations, ptr %35, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = tail call i32 %39(ptr noundef nonnull %29, ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  br label %43

43:                                               ; preds = %41, %37, %33, %28, %26, %23, %19, %15, %12
  %44 = phi i32 [ -22, %26 ], [ -22, %28 ], [ %24, %23 ], [ %42, %41 ], [ -6, %37 ], [ -6, %33 ], [ -22, %12 ], [ -6, %19 ], [ -6, %15 ]
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 0) #9
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_read_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fwnode_operations, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  %15 = icmp eq i32 %14, -22
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fwnode_handle, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fwnode_operations, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %19, ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  br label %33

33:                                               ; preds = %31, %27, %23, %18, %16, %13, %9, %5, %3
  %34 = phi i32 [ -22, %16 ], [ -22, %18 ], [ %14, %13 ], [ %32, %31 ], [ -6, %27 ], [ -6, %23 ], [ -22, %3 ], [ -6, %9 ], [ -6, %5 ]
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0)
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_property_match_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 3
  br label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  %14 = tail call i32 @fwnode_property_match_string(ptr noundef %13, ptr noundef %1, ptr noundef %2)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_match_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %81, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fwnode_operations, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %81, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef 0) #9
  %15 = icmp eq i32 %14, -22
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %81, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 4
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %81, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.fwnode_handle, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %81, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fwnode_operations, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %81, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %19, ptr noundef %1, ptr noundef null, i32 noundef 0) #9
  br label %33

33:                                               ; preds = %31, %13
  %34 = phi i32 [ %14, %13 ], [ %32, %31 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %81, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %36
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 4) #9
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %81, label %41, !prof !8

41:                                               ; preds = %38
  %42 = extractvalue { i32, i1 } %39, 0
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %81, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %79, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.fwnode_operations, ptr %46, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %48
  %53 = tail call i32 %50(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %43, i32 noundef %34) #9
  %54 = icmp eq i32 %53, -22
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %79, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %0, align 4
  %59 = icmp eq ptr %58, null
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  %61 = or i1 %59, %60
  br i1 %61, label %79, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.fwnode_handle, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.fwnode_operations, ptr %64, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %66
  %71 = tail call i32 %68(ptr noundef nonnull %58, ptr noundef %1, ptr noundef nonnull %43, i32 noundef %34) #9
  br label %72

72:                                               ; preds = %70, %52
  %73 = phi i32 [ %53, %52 ], [ %71, %70 ]
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @match_string(ptr noundef nonnull %43, i32 noundef %34, ptr noundef %2) #9
  %77 = icmp slt i32 %76, 0
  %78 = select i1 %77, i32 -61, i32 %76
  br label %79

79:                                               ; preds = %75, %72, %66, %62, %57, %55, %48, %45
  %80 = phi i32 [ %73, %72 ], [ %78, %75 ], [ -6, %45 ], [ -6, %48 ], [ -6, %62 ], [ -6, %66 ], [ -22, %57 ], [ -22, %55 ]
  tail call void @kfree(ptr noundef nonnull %43) #9
  br label %81

81:                                               ; preds = %79, %41, %38, %36, %33, %27, %23, %18, %16, %9, %5, %3
  %82 = phi i32 [ %80, %79 ], [ %34, %33 ], [ -61, %36 ], [ -12, %41 ], [ -6, %5 ], [ -6, %9 ], [ -22, %3 ], [ -6, %23 ], [ -6, %27 ], [ -22, %18 ], [ -22, %16 ], [ -12, %38 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_property_get_reference_args(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #2 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fwnode_operations, ptr %10, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16, %12, %8
  %20 = phi i32 [ %17, %16 ], [ -6, %8 ], [ -6, %12 ]
  %21 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.fwnode_handle, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.fwnode_operations, ptr %29, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 %33(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #9
  br label %37

37:                                               ; preds = %35, %31, %27, %22, %19, %16, %6
  %38 = phi i32 [ %20, %19 ], [ %20, %22 ], [ %17, %16 ], [ %36, %35 ], [ -6, %31 ], [ -6, %27 ], [ -22, %6 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_find_reference(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.fwnode_reference_args, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = call i32 %12(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14, %10, %6
  %18 = phi i32 [ %15, %14 ], [ -6, %6 ], [ -6, %10 ]
  %19 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = icmp eq ptr %21, null
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %24 = or i1 %22, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.fwnode_handle, ptr %21, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fwnode_operations, ptr %27, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = call i32 %31(ptr noundef nonnull %21, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #9
  br label %35

35:                                               ; preds = %33, %14
  %36 = phi i32 [ %15, %14 ], [ %34, %33 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %29, %25, %20, %17, %3
  %39 = phi i32 [ %36, %35 ], [ -22, %3 ], [ -6, %25 ], [ -6, %29 ], [ %18, %20 ], [ %18, %17 ]
  %40 = inttoptr i32 %39 to ptr
  br label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr %4, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %40, %38 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  ret ptr %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_name(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_name_prefix(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_parent(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_next_parent(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = load ptr, ptr %4, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %12, %11 ], [ null, %7 ]
  %17 = phi ptr [ %13, %11 ], [ %5, %7 ]
  %18 = getelementptr inbounds %struct.fwnode_operations, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void %19(ptr noundef nonnull %0) #9
  br label %22

22:                                               ; preds = %21, %15, %11, %3, %1
  %23 = phi ptr [ %12, %11 ], [ %16, %15 ], [ %16, %21 ], [ null, %1 ], [ null, %3 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fwnode_handle_put(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef nonnull %0) #9
  br label %12

12:                                               ; preds = %11, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_next_parent_dev(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr %8(ptr noundef nonnull %0) #9
  br label %12

12:                                               ; preds = %10, %7, %3, %1
  br label %13

13:                                               ; preds = %38, %12
  %14 = phi ptr [ %36, %38 ], [ %0, %12 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = tail call ptr %22(ptr noundef nonnull %14) #9
  %26 = load ptr, ptr %17, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %25, %24 ], [ null, %20 ]
  %30 = phi ptr [ %26, %24 ], [ %18, %20 ]
  %31 = getelementptr inbounds %struct.fwnode_operations, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void %32(ptr noundef nonnull %14) #9
  br label %35

35:                                               ; preds = %34, %28, %24
  %36 = phi ptr [ %25, %24 ], [ %29, %28 ], [ %29, %34 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fwnode_handle, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call ptr @get_device(ptr noundef %40) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %13, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.fwnode_handle, ptr %36, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.fwnode_operations, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef nonnull %36) #9
  br label %52

52:                                               ; preds = %51, %47, %43, %35, %16, %13
  %53 = phi ptr [ %41, %43 ], [ %41, %47 ], [ %41, %51 ], [ null, %35 ], [ null, %13 ], [ null, %16 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_handle_get(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr %8(ptr noundef nonnull %0) #9
  br label %12

12:                                               ; preds = %10, %7, %3, %1
  %13 = phi ptr [ %11, %10 ], [ %0, %7 ], [ %0, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_count_parents(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %37, %11
  %15 = phi i32 [ %39, %37 ], [ 0, %11 ]
  %16 = phi ptr [ %38, %37 ], [ %12, %11 ]
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = add i32 %15, 1
  br label %41

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %24(ptr noundef nonnull %16) #9
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %27, %26 ], [ null, %22 ]
  %32 = phi ptr [ %28, %26 ], [ %18, %22 ]
  %33 = getelementptr inbounds %struct.fwnode_operations, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef nonnull %16) #9
  br label %37

37:                                               ; preds = %36, %30, %26
  %38 = phi ptr [ %27, %26 ], [ %31, %30 ], [ %31, %36 ]
  %39 = add i32 %15, 1
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %14

41:                                               ; preds = %37, %20, %11, %7, %3, %1
  %42 = phi i32 [ 0, %11 ], [ %21, %20 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %39, %37 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_nth_parent(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %8, %4
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %36, %13
  %16 = phi i32 [ %38, %36 ], [ 0, %13 ]
  %17 = phi ptr [ %37, %36 ], [ %0, %13 ]
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.fwnode_operations, ptr %19, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call ptr %23(ptr noundef nonnull %17) #9
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %21
  %30 = phi ptr [ %26, %25 ], [ null, %21 ]
  %31 = phi ptr [ %27, %25 ], [ %19, %21 ]
  %32 = getelementptr inbounds %struct.fwnode_operations, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  tail call void %33(ptr noundef nonnull %17) #9
  br label %36

36:                                               ; preds = %35, %29, %25
  %37 = phi ptr [ %26, %25 ], [ %30, %29 ], [ %30, %35 ]
  %38 = add nuw i32 %16, 1
  %39 = icmp ult i32 %38, %1
  %40 = icmp ne ptr %37, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %15, label %42

42:                                               ; preds = %36, %15, %13, %2
  %43 = phi ptr [ %0, %13 ], [ null, %2 ], [ null, %15 ], [ %37, %36 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fwnode_is_ancestor_of(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %50, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr %11(ptr noundef nonnull %1) #9
  br label %15

15:                                               ; preds = %13, %10, %6
  br label %16

16:                                               ; preds = %47, %15
  %17 = phi ptr [ %48, %47 ], [ %1, %15 ]
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fwnode_operations, ptr %21, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %23
  tail call void %25(ptr noundef nonnull %0) #9
  br label %50

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.fwnode_handle, ptr %17, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.fwnode_operations, ptr %30, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = tail call ptr %34(ptr noundef nonnull %17) #9
  %38 = load ptr, ptr %29, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36, %32
  %41 = phi ptr [ %37, %36 ], [ null, %32 ]
  %42 = phi ptr [ %38, %36 ], [ %30, %32 ]
  %43 = getelementptr inbounds %struct.fwnode_operations, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void %44(ptr noundef nonnull %17) #9
  br label %47

47:                                               ; preds = %46, %40, %36
  %48 = phi ptr [ %37, %36 ], [ %41, %40 ], [ %41, %46 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %16

50:                                               ; preds = %47, %28, %27, %23, %19, %2
  %51 = phi i1 [ false, %2 ], [ true, %19 ], [ true, %23 ], [ true, %27 ], [ false, %47 ], [ false, %28 ]
  ret i1 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_next_child_node(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_operations, ptr %6, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr %10(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_next_available_child_node(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %25, %4
  %7 = phi ptr [ %15, %25 ], [ %1, %4 ]
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.fwnode_operations, ptr %8, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = tail call ptr %12(ptr noundef nonnull %0, ptr noundef %7) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fwnode_handle, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fwnode_operations, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call zeroext i1 %23(ptr noundef nonnull %15) #9
  br i1 %26, label %27, label %6

27:                                               ; preds = %25, %21, %17, %14, %10, %6, %2
  %28 = phi ptr [ null, %2 ], [ %15, %17 ], [ %15, %21 ], [ null, %6 ], [ null, %10 ], [ %15, %25 ], [ null, %14 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @fwnode_device_is_available(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i1 %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi i1 [ %12, %11 ], [ true, %7 ], [ true, %3 ], [ true, %1 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_get_next_child_node(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12, ptr noundef %1) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %22, %18, %14
  %26 = load ptr, ptr %12, align 4
  %27 = icmp eq ptr %26, null
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fwnode_handle, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fwnode_operations, ptr %32, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call ptr %36(ptr noundef nonnull %26, ptr noundef %1) #9
  br label %40

40:                                               ; preds = %38, %34, %30, %25, %22, %11
  %41 = phi ptr [ %23, %22 ], [ null, %25 ], [ null, %11 ], [ %39, %38 ], [ null, %34 ], [ null, %30 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_named_child_node(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_operations, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr %10(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %4 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_get_named_child_node(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 3
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12, ptr noundef %1) #9
  br label %24

24:                                               ; preds = %22, %18, %14, %11
  %25 = phi ptr [ %23, %22 ], [ null, %18 ], [ null, %14 ], [ null, %11 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_get_child_node_count(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %85, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fwnode_operations, ptr %15, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr %19(ptr noundef nonnull %11, ptr noundef null) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21, %17, %13
  %25 = load ptr, ptr %11, align 4
  %26 = icmp eq ptr %25, null
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %28 = or i1 %26, %27
  br i1 %28, label %85, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.fwnode_handle, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %85, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fwnode_operations, ptr %31, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %85, label %37

37:                                               ; preds = %33
  %38 = tail call ptr %35(ptr noundef nonnull %25, ptr noundef null) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %85, label %40

40:                                               ; preds = %37, %21
  %41 = phi ptr [ %38, %37 ], [ %22, %21 ]
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  br label %43

43:                                               ; preds = %82, %40
  %44 = phi i32 [ 0, %40 ], [ %46, %82 ]
  %45 = phi ptr [ %41, %40 ], [ %83, %82 ]
  %46 = add i32 %44, 1
  %47 = load ptr, ptr %2, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.device_node, ptr %47, i32 0, i32 3
  br label %53

51:                                               ; preds = %43
  %52 = load ptr, ptr %42, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.fwnode_handle, ptr %54, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.fwnode_operations, ptr %58, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call ptr %62(ptr noundef nonnull %54, ptr noundef nonnull %45) #9
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %82

67:                                               ; preds = %64, %60, %56
  %68 = load ptr, ptr %54, align 4
  %69 = icmp eq ptr %68, null
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  %71 = or i1 %69, %70
  br i1 %71, label %85, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.fwnode_handle, ptr %68, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.fwnode_operations, ptr %74, i32 0, i32 10
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = tail call ptr %78(ptr noundef nonnull %68, ptr noundef nonnull %45) #9
  br label %82

82:                                               ; preds = %80, %64
  %83 = phi ptr [ %65, %64 ], [ %81, %80 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %43

85:                                               ; preds = %82, %76, %72, %67, %53, %37, %33, %29, %24, %10
  %86 = phi i32 [ 0, %37 ], [ 0, %24 ], [ 0, %10 ], [ 0, %33 ], [ 0, %29 ], [ %46, %82 ], [ %46, %67 ], [ %46, %53 ], [ %46, %76 ], [ %46, %72 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @device_dma_supported(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @of_fwnode_ops
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ %18, %15 ], [ false, %10 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_get_dma_attr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @of_fwnode_ops
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %11, i32 -12
  %21 = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %20) #9
  %22 = select i1 %21, i32 2, i32 1
  br label %23

23:                                               ; preds = %19, %15, %10
  %24 = phi i32 [ %22, %19 ], [ 0, %15 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_get_phy_mode(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %62, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_operations, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = call i32 %10(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1) #9
  %14 = icmp eq i32 %13, -22
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.fwnode_handle, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fwnode_operations, ptr %24, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = call i32 %28(ptr noundef nonnull %18, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i32 [ %13, %12 ], [ %31, %30 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %32, %26, %22, %17, %15, %8
  %36 = load ptr, ptr %5, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %36, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %38
  %43 = call i32 %40(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1) #9
  %44 = icmp eq i32 %43, -22
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %62, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %0, align 4
  %49 = icmp eq ptr %48, null
  %50 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %51 = or i1 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.fwnode_handle, ptr %48, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.fwnode_operations, ptr %54, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 %58(ptr noundef nonnull %48, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1) #9
  br label %62

62:                                               ; preds = %60, %56, %52, %47, %45, %42, %38, %35, %4, %1
  %63 = phi i32 [ -22, %45 ], [ -22, %47 ], [ %43, %42 ], [ %61, %60 ], [ -6, %56 ], [ -6, %52 ], [ -6, %38 ], [ -6, %35 ], [ -22, %1 ], [ -6, %4 ]
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 0) #9
  %65 = icmp slt i32 %63, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %62, %32
  %67 = load ptr, ptr %2, align 4
  br label %68

68:                                               ; preds = %78, %66
  %69 = phi i32 [ 0, %66 ], [ %79, %78 ]
  %70 = icmp ult i32 %69, 30
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds [30 x ptr], ptr @switch.table.fwnode_get_phy_mode, i32 0, i32 %69
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi ptr [ %73, %71 ], [ @.str.32, %68 ]
  %76 = call i32 @strcasecmp(ptr noundef %67, ptr noundef nonnull %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = add nuw nsw i32 %69, 1
  %80 = icmp eq i32 %79, 30
  br i1 %80, label %81, label %68

81:                                               ; preds = %78, %74, %62
  %82 = phi i32 [ %64, %62 ], [ -19, %78 ], [ %69, %74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %82
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_get_phy_mode(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = tail call i32 @fwnode_get_phy_mode(ptr noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_irq_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = tail call i32 @of_irq_get(ptr noundef %11, i32 noundef %1) #9
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_iomap(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_fwnode_ops
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = tail call ptr @of_iomap(ptr noundef %11, i32 noundef %1) #9
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef %0, ptr noundef %1) #2 {
  br label %3

3:                                                ; preds = %56, %2
  %4 = phi ptr [ %0, %2 ], [ %57, %56 ]
  %5 = phi ptr [ %1, %2 ], [ null, %56 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fwnode_operations, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = tail call ptr %13(ptr noundef nonnull %5) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.fwnode_operations, ptr %20, i32 0, i32 15
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = tail call ptr %24(ptr noundef nonnull %16) #9
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26, %22
  %31 = phi ptr [ %27, %26 ], [ null, %22 ]
  %32 = phi ptr [ %28, %26 ], [ %20, %22 ]
  %33 = getelementptr inbounds %struct.fwnode_operations, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef nonnull %16) #9
  br label %37

37:                                               ; preds = %36, %30, %26, %3
  %38 = phi ptr [ %4, %3 ], [ %27, %26 ], [ %31, %30 ], [ %31, %36 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.fwnode_handle, ptr %38, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.fwnode_operations, ptr %42, i32 0, i32 13
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = tail call ptr %46(ptr noundef nonnull %38, ptr noundef %5) #9
  %50 = icmp eq ptr %49, null
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %44, %40
  %54 = phi ptr [ %49, %48 ], [ null, %44 ], [ null, %40 ]
  %55 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %38, align 4
  %58 = icmp eq ptr %57, null
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %3

61:                                               ; preds = %56, %53, %48, %37, %18, %15, %11, %7
  %62 = phi ptr [ %54, %53 ], [ %54, %56 ], [ %49, %48 ], [ null, %37 ], [ null, %15 ], [ null, %11 ], [ null, %7 ], [ null, %18 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_port_parent(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12) #9
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %23, %22 ], [ null, %18 ]
  %28 = phi ptr [ %24, %22 ], [ %16, %18 ]
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef nonnull %12) #9
  br label %33

33:                                               ; preds = %32, %26, %22, %14, %11, %7, %3, %1
  %34 = phi ptr [ %23, %22 ], [ %27, %26 ], [ %27, %32 ], [ null, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ], [ null, %14 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_remote_port_parent(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %53, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %53, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fwnode_handle, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fwnode_operations, ptr %27, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call ptr %31(ptr noundef nonnull %23) #9
  %35 = load ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %34, %33 ], [ null, %29 ]
  %39 = phi ptr [ %35, %33 ], [ %27, %29 ]
  %40 = getelementptr inbounds %struct.fwnode_operations, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef nonnull %23) #9
  br label %44

44:                                               ; preds = %43, %37, %33, %25, %22, %18
  %45 = phi ptr [ %34, %33 ], [ %38, %37 ], [ %38, %43 ], [ null, %22 ], [ null, %18 ], [ null, %25 ]
  %46 = load ptr, ptr %15, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fwnode_operations, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void %50(ptr noundef nonnull %12) #9
  br label %53

53:                                               ; preds = %52, %48, %44, %14, %11, %7, %3, %1
  %54 = phi ptr [ %45, %44 ], [ %45, %48 ], [ %45, %52 ], [ null, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ], [ null, %14 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi ptr [ %12, %11 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_remote_port(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12) #9
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %23, %22 ], [ null, %18 ]
  %28 = phi ptr [ %24, %22 ], [ %16, %18 ]
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef nonnull %12) #9
  br label %33

33:                                               ; preds = %32, %26, %22, %14, %11, %7, %3, %1
  %34 = phi ptr [ %23, %22 ], [ %27, %26 ], [ %27, %32 ], [ null, %11 ], [ null, %14 ], [ null, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_graph_get_endpoint_by_id(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.fwnode_endpoint, align 4
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %3, 2
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.fwnode_endpoint, ptr %5, i32 0, i32 1
  br label %11

11:                                               ; preds = %126, %4
  %12 = phi ptr [ null, %4 ], [ %76, %126 ]
  %13 = phi ptr [ null, %4 ], [ %127, %126 ]
  %14 = phi i32 [ 0, %4 ], [ %128, %126 ]
  br label %15

15:                                               ; preds = %68, %11
  %16 = phi ptr [ %0, %11 ], [ %69, %68 ]
  %17 = phi ptr [ %12, %11 ], [ null, %68 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %129, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.fwnode_operations, ptr %21, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %129, label %27

27:                                               ; preds = %23
  %28 = call ptr %25(ptr noundef nonnull %17) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %129, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.fwnode_handle, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %129, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fwnode_operations, ptr %32, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = call ptr %36(ptr noundef nonnull %28) #9
  %40 = load ptr, ptr %31, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %39, %38 ], [ null, %34 ]
  %44 = phi ptr [ %40, %38 ], [ %32, %34 ]
  %45 = getelementptr inbounds %struct.fwnode_operations, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void %46(ptr noundef nonnull %28) #9
  br label %49

49:                                               ; preds = %48, %42, %38, %15
  %50 = phi ptr [ %16, %15 ], [ %39, %38 ], [ %43, %42 ], [ %43, %48 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %129, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.fwnode_handle, ptr %50, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.fwnode_operations, ptr %54, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = call ptr %58(ptr noundef nonnull %50, ptr noundef %17) #9
  %62 = icmp eq ptr %61, null
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  %64 = or i1 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60, %56, %52
  %66 = phi ptr [ %61, %60 ], [ null, %56 ], [ null, %52 ]
  %67 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %50, align 4
  %70 = icmp eq ptr %69, null
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %15

73:                                               ; preds = %68, %65
  %74 = icmp eq ptr %66, null
  br i1 %74, label %129, label %75

75:                                               ; preds = %73, %60
  %76 = phi ptr [ %66, %73 ], [ %61, %60 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false)
  br i1 %9, label %77, label %79

77:                                               ; preds = %75
  %78 = call fastcc zeroext i1 @fwnode_graph_remote_available(ptr noundef nonnull %76)
  br i1 %78, label %79, label %126

79:                                               ; preds = %77, %75
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #9
  %80 = getelementptr inbounds %struct.fwnode_handle, ptr %76, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %126, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.fwnode_operations, ptr %81, i32 0, i32 16
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %126, label %87

87:                                               ; preds = %83
  %88 = call i32 %85(ptr noundef nonnull %76, ptr noundef nonnull %5) #9
  %89 = icmp sgt i32 %88, -1
  %90 = load i32, ptr %5, align 4
  %91 = icmp eq i32 %90, %1
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %126

93:                                               ; preds = %87
  %94 = load i32, ptr %10, align 4
  %95 = icmp eq i32 %94, %2
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %129

97:                                               ; preds = %93
  %98 = icmp ult i32 %94, %2
  %99 = select i1 %7, i1 true, i1 %98
  br i1 %99, label %126, label %100

100:                                              ; preds = %97
  %101 = icmp ne ptr %13, null
  %102 = icmp ult i32 %14, %94
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %126, label %104

104:                                              ; preds = %100
  %105 = icmp eq ptr %13, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.fwnode_handle, ptr %13, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.fwnode_operations, ptr %108, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void %112(ptr noundef nonnull %13) #9
  br label %115

115:                                              ; preds = %114, %110, %106, %104
  %116 = load ptr, ptr %80, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %116, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = call ptr %119(ptr noundef nonnull %76) #9
  br label %123

123:                                              ; preds = %121, %118, %115
  %124 = phi ptr [ %122, %121 ], [ %76, %118 ], [ %76, %115 ]
  %125 = load i32, ptr %10, align 4
  br label %126

126:                                              ; preds = %123, %100, %97, %87, %83, %79, %77
  %127 = phi ptr [ %124, %123 ], [ %13, %77 ], [ %13, %87 ], [ %13, %97 ], [ %13, %100 ], [ %13, %83 ], [ %13, %79 ]
  %128 = phi i32 [ %125, %123 ], [ %14, %77 ], [ %14, %87 ], [ %14, %97 ], [ %14, %100 ], [ %14, %83 ], [ %14, %79 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  br label %11

129:                                              ; preds = %96, %73, %49, %30, %27, %23, %19
  %130 = phi ptr [ %76, %96 ], [ %13, %49 ], [ %13, %27 ], [ %13, %23 ], [ %13, %19 ], [ %13, %30 ], [ %13, %73 ]
  ret ptr %130
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @fwnode_graph_remote_available(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_operations, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %7
  %12 = tail call ptr %9(ptr noundef nonnull %0) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %74, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %74, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fwnode_handle, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fwnode_operations, ptr %27, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call ptr %31(ptr noundef nonnull %23) #9
  %35 = load ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %34, %33 ], [ null, %29 ]
  %39 = phi ptr [ %35, %33 ], [ %27, %29 ]
  %40 = getelementptr inbounds %struct.fwnode_operations, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef nonnull %23) #9
  br label %44

44:                                               ; preds = %43, %37, %33, %25, %22, %18
  %45 = phi ptr [ %34, %33 ], [ %38, %37 ], [ %38, %43 ], [ null, %22 ], [ null, %18 ], [ null, %25 ]
  %46 = load ptr, ptr %15, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fwnode_operations, ptr %46, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void %50(ptr noundef nonnull %12) #9
  br label %53

53:                                               ; preds = %52, %48, %44
  %54 = icmp eq ptr %45, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.fwnode_handle, ptr %45, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fwnode_operations, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = tail call zeroext i1 %61(ptr noundef nonnull %45) #9
  %65 = load ptr, ptr %56, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ %64, %63 ], [ true, %59 ]
  %69 = phi ptr [ %65, %63 ], [ %57, %59 ]
  %70 = getelementptr inbounds %struct.fwnode_operations, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  tail call void %71(ptr noundef nonnull %45) #9
  br label %74

74:                                               ; preds = %73, %67, %63, %55, %53, %14, %11, %7, %3, %1
  %75 = phi i1 [ %64, %63 ], [ %68, %67 ], [ %68, %73 ], [ true, %53 ], [ true, %11 ], [ true, %7 ], [ true, %3 ], [ true, %1 ], [ true, %14 ], [ true, %55 ]
  ret i1 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_graph_parse_endpoint(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %1, i8 0, i32 12, i1 false)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.fwnode_operations, ptr %6, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi i32 [ %13, %12 ], [ -6, %8 ], [ -6, %4 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_graph_get_endpoint_count(ptr noundef %0, i32 noundef %1) #2 {
  %3 = and i32 %1, 2
  %4 = icmp eq i32 %3, 0
  br label %5

5:                                                ; preds = %74, %2
  %6 = phi ptr [ %71, %74 ], [ null, %2 ]
  %7 = phi i32 [ %75, %74 ], [ 0, %2 ]
  br label %8

8:                                                ; preds = %72, %5
  %9 = phi ptr [ %71, %72 ], [ %6, %5 ]
  br label %10

10:                                               ; preds = %63, %8
  %11 = phi ptr [ %0, %8 ], [ %64, %63 ]
  %12 = phi ptr [ %9, %8 ], [ null, %63 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_operations, ptr %16, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %76, label %22

22:                                               ; preds = %18
  %23 = tail call ptr %20(ptr noundef nonnull %12) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fwnode_handle, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %76, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fwnode_operations, ptr %27, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = tail call ptr %31(ptr noundef nonnull %23) #9
  %35 = load ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %29
  %38 = phi ptr [ %34, %33 ], [ null, %29 ]
  %39 = phi ptr [ %35, %33 ], [ %27, %29 ]
  %40 = getelementptr inbounds %struct.fwnode_operations, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void %41(ptr noundef nonnull %23) #9
  br label %44

44:                                               ; preds = %43, %37, %33, %10
  %45 = phi ptr [ %11, %10 ], [ %34, %33 ], [ %38, %37 ], [ %38, %43 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %76, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.fwnode_handle, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.fwnode_operations, ptr %49, i32 0, i32 13
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = tail call ptr %53(ptr noundef nonnull %45, ptr noundef %12) #9
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55, %51, %47
  %61 = phi ptr [ %56, %55 ], [ null, %51 ], [ null, %47 ]
  %62 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %45, align 4
  %65 = icmp eq ptr %64, null
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  %67 = or i1 %65, %66
  br i1 %67, label %68, label %10

68:                                               ; preds = %63, %60
  %69 = icmp eq ptr %61, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %68, %55
  %71 = phi ptr [ %61, %68 ], [ %56, %55 ]
  br i1 %4, label %72, label %74

72:                                               ; preds = %70
  %73 = tail call fastcc zeroext i1 @fwnode_graph_remote_available(ptr noundef nonnull %71)
  br i1 %73, label %74, label %8

74:                                               ; preds = %72, %70
  %75 = add i32 %7, 1
  br label %5

76:                                               ; preds = %68, %44, %25, %22, %18, %14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_get_match_data(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.fwnode_operations, ptr %14, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %28

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.fwnode_operations, ptr %18, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %26, %24 ], [ %22, %20 ]
  %30 = phi ptr [ %10, %24 ], [ %7, %20 ]
  %31 = tail call ptr %29(ptr noundef nonnull %30, ptr noundef %0) #9
  br label %32

32:                                               ; preds = %28, %24, %20, %16, %12, %9, %5
  %33 = phi ptr [ %31, %28 ], [ null, %20 ], [ null, %12 ], [ null, %5 ], [ null, %9 ], [ null, %16 ], [ null, %24 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_connection_find_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) #2 {
  %5 = alloca %struct.fwnode_reference_args, align 8
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %223

9:                                                ; preds = %67, %4
  %10 = phi ptr [ %68, %67 ], [ %0, %4 ]
  %11 = phi ptr [ %69, %67 ], [ null, %4 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %166, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fwnode_operations, ptr %15, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %166, label %21

21:                                               ; preds = %17
  %22 = tail call ptr %19(ptr noundef nonnull %11) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %166, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.fwnode_handle, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %166, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.fwnode_operations, ptr %26, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call ptr %30(ptr noundef nonnull %22) #9
  %34 = load ptr, ptr %25, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %33, %32 ], [ null, %28 ]
  %38 = phi ptr [ %34, %32 ], [ %26, %28 ]
  %39 = getelementptr inbounds %struct.fwnode_operations, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %40(ptr noundef nonnull %22) #9
  br label %43

43:                                               ; preds = %42, %36, %32, %9
  %44 = phi ptr [ %10, %9 ], [ %33, %32 ], [ %37, %36 ], [ %37, %42 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %166, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.fwnode_handle, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.fwnode_operations, ptr %48, i32 0, i32 13
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = tail call ptr %52(ptr noundef nonnull %44, ptr noundef %11) #9
  %56 = icmp eq ptr %55, null
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %54, %50, %46
  %60 = phi ptr [ %55, %54 ], [ null, %50 ], [ null, %46 ]
  %61 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %44, align 4
  %64 = icmp eq ptr %63, null
  %65 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %66 = or i1 %64, %65
  br i1 %66, label %70, label %67

67:                                               ; preds = %154, %142, %138, %135, %62
  %68 = phi ptr [ %63, %62 ], [ %0, %154 ], [ %0, %142 ], [ %0, %138 ], [ %0, %135 ]
  %69 = phi ptr [ null, %62 ], [ %73, %154 ], [ %73, %142 ], [ %73, %138 ], [ %73, %135 ]
  br label %9

70:                                               ; preds = %62, %59
  %71 = icmp eq ptr %60, null
  br i1 %71, label %166, label %72

72:                                               ; preds = %70, %54
  %73 = phi ptr [ %60, %70 ], [ %55, %54 ]
  %74 = getelementptr inbounds %struct.fwnode_handle, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %143, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.fwnode_operations, ptr %75, i32 0, i32 14
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %143, label %81

81:                                               ; preds = %77
  %82 = tail call ptr %79(ptr noundef nonnull %73) #9
  %83 = icmp eq ptr %82, null
  br i1 %83, label %143, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.fwnode_handle, ptr %82, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %143, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.fwnode_operations, ptr %86, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %114, label %92

92:                                               ; preds = %88
  %93 = tail call ptr %90(ptr noundef nonnull %82) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.fwnode_handle, ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.fwnode_operations, ptr %97, i32 0, i32 15
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = tail call ptr %101(ptr noundef nonnull %93) #9
  %105 = load ptr, ptr %96, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %103, %99
  %108 = phi ptr [ %104, %103 ], [ null, %99 ]
  %109 = phi ptr [ %105, %103 ], [ %97, %99 ]
  %110 = getelementptr inbounds %struct.fwnode_operations, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  tail call void %111(ptr noundef nonnull %93) #9
  br label %114

114:                                              ; preds = %113, %107, %103, %95, %92, %88
  %115 = phi ptr [ %104, %103 ], [ %108, %107 ], [ %108, %113 ], [ null, %92 ], [ null, %88 ], [ null, %95 ]
  %116 = load ptr, ptr %85, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.fwnode_operations, ptr %116, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void %120(ptr noundef nonnull %82) #9
  br label %123

123:                                              ; preds = %122, %118, %114
  %124 = icmp eq ptr %115, null
  br i1 %124, label %143, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.fwnode_handle, ptr %115, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.fwnode_operations, ptr %127, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %129
  %134 = tail call zeroext i1 %131(ptr noundef nonnull %115) #9
  br i1 %134, label %145, label %135

135:                                              ; preds = %133
  %136 = load ptr, ptr %126, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %67, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.fwnode_operations, ptr %136, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %67, label %142

142:                                              ; preds = %138
  tail call void %140(ptr noundef nonnull %115) #9
  br label %67

143:                                              ; preds = %123, %84, %81, %77, %72
  %144 = tail call ptr %3(ptr noundef null, ptr noundef %1, ptr noundef %2) #9
  br label %154

145:                                              ; preds = %133, %129, %125
  %146 = tail call ptr %3(ptr noundef nonnull %115, ptr noundef %1, ptr noundef %2) #9
  %147 = load ptr, ptr %126, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.fwnode_operations, ptr %147, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void %151(ptr noundef nonnull %115) #9
  br label %154

154:                                              ; preds = %153, %149, %145, %143
  %155 = phi ptr [ %146, %145 ], [ %146, %149 ], [ %146, %153 ], [ %144, %143 ]
  %156 = icmp eq ptr %155, null
  br i1 %156, label %67, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.fwnode_handle, ptr %73, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %223, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.fwnode_operations, ptr %159, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %223, label %165

165:                                              ; preds = %161
  tail call void %163(ptr noundef nonnull %73) #9
  br label %223

166:                                              ; preds = %70, %43, %24, %21, %17, %13
  %167 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %168 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br label %169

169:                                              ; preds = %220, %166
  %170 = phi i32 [ 0, %166 ], [ %222, %220 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i32 72, i1 false) #9, !annotation !9
  %171 = load ptr, ptr %167, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.fwnode_operations, ptr %171, i32 0, i32 12
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = call i32 %175(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %170, ptr noundef nonnull %5) #9
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %177, %173, %169
  %181 = phi i32 [ %178, %177 ], [ -6, %169 ], [ -6, %173 ]
  br i1 %168, label %200, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %0, align 4
  %184 = icmp eq ptr %183, null
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  %186 = or i1 %184, %185
  br i1 %186, label %200, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.fwnode_handle, ptr %183, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.fwnode_operations, ptr %189, i32 0, i32 12
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = call i32 %193(ptr noundef nonnull %183, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %170, ptr noundef nonnull %5) #9
  br label %197

197:                                              ; preds = %195, %177
  %198 = phi i32 [ %178, %177 ], [ %196, %195 ]
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197, %191, %187, %182, %180
  %201 = phi i32 [ %198, %197 ], [ -6, %187 ], [ -6, %191 ], [ %181, %182 ], [ %181, %180 ]
  %202 = inttoptr i32 %201 to ptr
  br label %205

203:                                              ; preds = %197
  %204 = load ptr, ptr %5, align 8
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi ptr [ %202, %200 ], [ %204, %203 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  %207 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %223, label %208

208:                                              ; preds = %205
  %209 = call ptr %3(ptr noundef %206, ptr noundef null, ptr noundef %2) #9
  %210 = icmp eq ptr %206, null
  br i1 %210, label %220, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.fwnode_handle, ptr %206, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.fwnode_operations, ptr %213, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  call void %217(ptr noundef nonnull %206) #9
  br label %220

220:                                              ; preds = %219, %215, %211, %208
  %221 = icmp eq ptr %209, null
  %222 = add i32 %170, 1
  br i1 %221, label %169, label %223

223:                                              ; preds = %220, %205, %165, %161, %157, %4
  %224 = phi ptr [ null, %4 ], [ %155, %157 ], [ %155, %161 ], [ %155, %165 ], [ null, %205 ], [ %209, %220 ]
  ret ptr %224
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
