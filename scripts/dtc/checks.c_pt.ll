; ModuleID = '/llk/IR/scripts/dtc/checks.c_pt.bc'
source_filename = "../scripts/dtc/checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { ptr, ptr, ptr, i8, i8, i32, i8, i32, ptr }
%struct.bus_type = type { ptr }
%struct.provider = type { ptr, ptr, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }
%struct.property = type { i8, ptr, %struct.data, ptr, ptr, ptr }
%struct.data = type { i32, ptr, ptr }
%struct.srcpos = type { i32, i32, i32, i32, ptr, ptr }
%struct.label = type { i8, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"no_\00", align 1
@check_table = internal unnamed_addr constant [89 x ptr] [ptr @duplicate_node_names, ptr @duplicate_property_names, ptr @node_name_chars, ptr @node_name_format, ptr @property_name_chars, ptr @name_is_string, ptr @name_properties, ptr @node_name_vs_property_name, ptr @duplicate_label, ptr @explicit_phandles, ptr @phandle_references, ptr @path_references, ptr @omit_unused_nodes, ptr @address_cells_is_cell, ptr @size_cells_is_cell, ptr @device_type_is_string, ptr @model_is_string, ptr @status_is_string, ptr @label_is_string, ptr @compatible_is_string_list, ptr @names_is_string_list, ptr @property_name_chars_strict, ptr @node_name_chars_strict, ptr @addr_size_cells, ptr @reg_format, ptr @ranges_format, ptr @dma_ranges_format, ptr @unit_address_vs_reg, ptr @unit_address_format, ptr @pci_bridge, ptr @pci_device_reg, ptr @pci_device_bus_num, ptr @simple_bus_bridge, ptr @simple_bus_reg, ptr @i2c_bus_bridge, ptr @i2c_bus_reg, ptr @spi_bus_bridge, ptr @spi_bus_reg, ptr @avoid_default_addr_size, ptr @avoid_unnecessary_addr_size, ptr @unique_unit_address, ptr @unique_unit_address_if_enabled, ptr @obsolete_chosen_interrupt_controller, ptr @chosen_node_is_root, ptr @chosen_node_bootargs, ptr @chosen_node_stdout_path, ptr @clocks_property, ptr @clocks_is_cell, ptr @cooling_device_property, ptr @cooling_device_is_cell, ptr @dmas_property, ptr @dmas_is_cell, ptr @hwlocks_property, ptr @hwlocks_is_cell, ptr @interrupts_extended_property, ptr @interrupts_extended_is_cell, ptr @io_channels_property, ptr @io_channels_is_cell, ptr @iommus_property, ptr @iommus_is_cell, ptr @mboxes_property, ptr @mboxes_is_cell, ptr @msi_parent_property, ptr @msi_parent_is_cell, ptr @mux_controls_property, ptr @mux_controls_is_cell, ptr @phys_property, ptr @phys_is_cell, ptr @power_domains_property, ptr @power_domains_is_cell, ptr @pwms_property, ptr @pwms_is_cell, ptr @resets_property, ptr @resets_is_cell, ptr @sound_dai_property, ptr @sound_dai_is_cell, ptr @thermal_sensors_property, ptr @thermal_sensors_is_cell, ptr @deprecated_gpio_property, ptr @gpios_property, ptr @interrupts_property, ptr @interrupt_provider, ptr @interrupt_map, ptr @alias_paths, ptr @graph_nodes, ptr @graph_child_address, ptr @graph_port, ptr @graph_endpoint, ptr @always_fail], align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"Unrecognized check name \22%s\22\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"ERROR: Input tree has errors, aborting (use -f to force output)\0A\00", align 1
@quiet = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Warning: Input tree has errors, output forced\0A\00", align 1
@duplicate_node_names = internal global %struct.check { ptr @.str.5, ptr @check_duplicate_node_names, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_node_names_prereqs }, align 8
@duplicate_property_names = internal global %struct.check { ptr @.str.17, ptr @check_duplicate_property_names, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_property_names_prereqs }, align 8
@node_name_chars = internal global %struct.check { ptr @.str.19, ptr @check_node_name_chars, ptr @.str.20, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @node_name_chars_prereqs }, align 8
@node_name_format = internal global %struct.check { ptr @.str.22, ptr @check_node_name_format, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @node_name_format_prereqs }, align 8
@property_name_chars = internal global %struct.check { ptr @.str.24, ptr @check_property_name_chars, ptr @.str.25, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @property_name_chars_prereqs }, align 8
@name_is_string = internal global %struct.check { ptr @.str.27, ptr @check_is_string, ptr @.str.28, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @name_is_string_prereqs }, align 8
@name_properties = internal global %struct.check { ptr @.str.30, ptr @check_name_properties, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @name_properties_prereqs }, align 8
@node_name_vs_property_name = internal global %struct.check { ptr @.str.32, ptr @check_node_name_vs_property_name, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @node_name_vs_property_name_prereqs }, align 8
@duplicate_label = internal global %struct.check { ptr @.str.34, ptr @check_duplicate_label_node, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @duplicate_label_prereqs }, align 8
@explicit_phandles = internal global %struct.check { ptr @.str.40, ptr @check_explicit_phandles, ptr null, i8 0, i8 1, i32 0, i8 0, i32 0, ptr @explicit_phandles_prereqs }, align 8
@phandle_references = internal global %struct.check { ptr @.str.51, ptr @fixup_phandle_references, ptr null, i8 0, i8 1, i32 0, i8 0, i32 2, ptr @phandle_references_prereqs }, align 8
@path_references = internal global %struct.check { ptr @.str.54, ptr @fixup_path_references, ptr null, i8 0, i8 1, i32 0, i8 0, i32 1, ptr @path_references_prereqs }, align 8
@omit_unused_nodes = internal global %struct.check { ptr @.str.56, ptr @fixup_omit_unused_nodes, ptr null, i8 0, i8 1, i32 0, i8 0, i32 2, ptr @omit_unused_nodes_prereqs }, align 8
@address_cells_is_cell = internal global %struct.check { ptr @.str.57, ptr @check_is_cell, ptr @.str.58, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @address_cells_is_cell_prereqs }, align 8
@size_cells_is_cell = internal global %struct.check { ptr @.str.60, ptr @check_is_cell, ptr @.str.61, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @size_cells_is_cell_prereqs }, align 8
@device_type_is_string = internal global %struct.check { ptr @.str.62, ptr @check_is_string, ptr @.str.63, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @device_type_is_string_prereqs }, align 8
@model_is_string = internal global %struct.check { ptr @.str.64, ptr @check_is_string, ptr @.str.65, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @model_is_string_prereqs }, align 8
@status_is_string = internal global %struct.check { ptr @.str.66, ptr @check_is_string, ptr @.str.67, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @status_is_string_prereqs }, align 8
@label_is_string = internal global %struct.check { ptr @.str.68, ptr @check_is_string, ptr @.str.69, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @label_is_string_prereqs }, align 8
@compatible_is_string_list = internal global %struct.check { ptr @.str.70, ptr @check_is_string_list, ptr @.str.71, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @compatible_is_string_list_prereqs }, align 8
@names_is_string_list = internal global %struct.check { ptr @.str.73, ptr @check_names_is_string_list, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @names_is_string_list_prereqs }, align 8
@property_name_chars_strict = internal global %struct.check { ptr @.str.75, ptr @check_property_name_chars_strict, ptr @.str.76, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @property_name_chars_strict_prereqs }, align 8
@node_name_chars_strict = internal global %struct.check { ptr @.str.78, ptr @check_node_name_chars_strict, ptr @.str.76, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @node_name_chars_strict_prereqs }, align 8
@addr_size_cells = internal global %struct.check { ptr @.str.80, ptr @fixup_addr_size_cells, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @addr_size_cells_prereqs }, align 8
@reg_format = internal global %struct.check { ptr @.str.81, ptr @check_reg_format, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @reg_format_prereqs }, align 8
@ranges_format = internal global %struct.check { ptr @.str.86, ptr @check_ranges_format, ptr @.str.87, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @ranges_format_prereqs }, align 8
@dma_ranges_format = internal global %struct.check { ptr @.str.92, ptr @check_ranges_format, ptr @.str.93, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @dma_ranges_format_prereqs }, align 8
@unit_address_vs_reg = internal global %struct.check { ptr @.str.94, ptr @check_unit_address_vs_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @unit_address_vs_reg_prereqs }, align 8
@unit_address_format = internal global %struct.check { ptr @.str.98, ptr @check_unit_address_format, ptr null, i8 1, i8 0, i32 0, i8 0, i32 3, ptr @unit_address_format_prereqs }, align 8
@pci_bridge = internal global %struct.check { ptr @.str.102, ptr @check_pci_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_bridge_prereqs }, align 8
@pci_device_reg = internal global %struct.check { ptr @.str.114, ptr @check_pci_device_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_device_reg_prereqs }, align 8
@pci_device_bus_num = internal global %struct.check { ptr @.str.121, ptr @check_pci_device_bus_num, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pci_device_bus_num_prereqs }, align 8
@simple_bus_bridge = internal global %struct.check { ptr @.str.123, ptr @check_simple_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @simple_bus_bridge_prereqs }, align 8
@simple_bus_reg = internal global %struct.check { ptr @.str.125, ptr @check_simple_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @simple_bus_reg_prereqs }, align 8
@i2c_bus_bridge = internal global %struct.check { ptr @.str.129, ptr @check_i2c_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @i2c_bus_bridge_prereqs }, align 8
@i2c_bus_reg = internal global %struct.check { ptr @.str.135, ptr @check_i2c_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @i2c_bus_reg_prereqs }, align 8
@spi_bus_bridge = internal global %struct.check { ptr @.str.140, ptr @check_spi_bus_bridge, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @spi_bus_bridge_prereqs }, align 8
@spi_bus_reg = internal global %struct.check { ptr @.str.148, ptr @check_spi_bus_reg, ptr null, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @spi_bus_reg_prereqs }, align 8
@avoid_default_addr_size = internal global %struct.check { ptr @.str.150, ptr @check_avoid_default_addr_size, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @avoid_default_addr_size_prereqs }, align 8
@avoid_unnecessary_addr_size = internal global %struct.check { ptr @.str.153, ptr @check_avoid_unnecessary_addr_size, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @avoid_unnecessary_addr_size_prereqs }, align 8
@unique_unit_address = internal global %struct.check { ptr @.str.155, ptr @check_unique_unit_address, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @unique_unit_address_prereqs }, align 8
@unique_unit_address_if_enabled = internal global %struct.check { ptr @.str.158, ptr @check_unique_unit_address_if_enabled, ptr null, i8 0, i8 0, i32 0, i8 0, i32 1, ptr @unique_unit_address_if_enabled_prereqs }, align 8
@obsolete_chosen_interrupt_controller = internal global %struct.check { ptr @.str.159, ptr @check_obsolete_chosen_interrupt_controller, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @obsolete_chosen_interrupt_controller_prereqs }, align 8
@chosen_node_is_root = internal global %struct.check { ptr @.str.163, ptr @check_chosen_node_is_root, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_is_root_prereqs }, align 8
@chosen_node_bootargs = internal global %struct.check { ptr @.str.166, ptr @check_chosen_node_bootargs, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_bootargs_prereqs }, align 8
@chosen_node_stdout_path = internal global %struct.check { ptr @.str.168, ptr @check_chosen_node_stdout_path, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @chosen_node_stdout_path_prereqs }, align 8
@clocks_property = internal global %struct.check { ptr @.str.172, ptr @check_provider_cells_property, ptr @clocks_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @clocks_property_prereqs }, align 8
@clocks_is_cell = internal global %struct.check { ptr @.str.180, ptr @check_is_cell, ptr @.str.179, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @clocks_is_cell_prereqs }, align 8
@cooling_device_property = internal global %struct.check { ptr @.str.181, ptr @check_provider_cells_property, ptr @cooling_device_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @cooling_device_property_prereqs }, align 8
@cooling_device_is_cell = internal global %struct.check { ptr @.str.184, ptr @check_is_cell, ptr @.str.183, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @cooling_device_is_cell_prereqs }, align 8
@dmas_property = internal global %struct.check { ptr @.str.185, ptr @check_provider_cells_property, ptr @dmas_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @dmas_property_prereqs }, align 8
@dmas_is_cell = internal global %struct.check { ptr @.str.188, ptr @check_is_cell, ptr @.str.187, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @dmas_is_cell_prereqs }, align 8
@hwlocks_property = internal global %struct.check { ptr @.str.189, ptr @check_provider_cells_property, ptr @hwlocks_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @hwlocks_property_prereqs }, align 8
@hwlocks_is_cell = internal global %struct.check { ptr @.str.192, ptr @check_is_cell, ptr @.str.191, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @hwlocks_is_cell_prereqs }, align 8
@interrupts_extended_property = internal global %struct.check { ptr @.str.193, ptr @check_provider_cells_property, ptr @interrupts_extended_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @interrupts_extended_property_prereqs }, align 8
@interrupts_extended_is_cell = internal global %struct.check { ptr @.str.196, ptr @check_is_cell, ptr @.str.195, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @interrupts_extended_is_cell_prereqs }, align 8
@io_channels_property = internal global %struct.check { ptr @.str.197, ptr @check_provider_cells_property, ptr @io_channels_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @io_channels_property_prereqs }, align 8
@io_channels_is_cell = internal global %struct.check { ptr @.str.200, ptr @check_is_cell, ptr @.str.199, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @io_channels_is_cell_prereqs }, align 8
@iommus_property = internal global %struct.check { ptr @.str.201, ptr @check_provider_cells_property, ptr @iommus_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @iommus_property_prereqs }, align 8
@iommus_is_cell = internal global %struct.check { ptr @.str.204, ptr @check_is_cell, ptr @.str.203, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @iommus_is_cell_prereqs }, align 8
@mboxes_property = internal global %struct.check { ptr @.str.205, ptr @check_provider_cells_property, ptr @mboxes_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @mboxes_property_prereqs }, align 8
@mboxes_is_cell = internal global %struct.check { ptr @.str.208, ptr @check_is_cell, ptr @.str.207, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @mboxes_is_cell_prereqs }, align 8
@msi_parent_property = internal global %struct.check { ptr @.str.209, ptr @check_provider_cells_property, ptr @msi_parent_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @msi_parent_property_prereqs }, align 8
@msi_parent_is_cell = internal global %struct.check { ptr @.str.212, ptr @check_is_cell, ptr @.str.211, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @msi_parent_is_cell_prereqs }, align 8
@mux_controls_property = internal global %struct.check { ptr @.str.213, ptr @check_provider_cells_property, ptr @mux_controls_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @mux_controls_property_prereqs }, align 8
@mux_controls_is_cell = internal global %struct.check { ptr @.str.216, ptr @check_is_cell, ptr @.str.215, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @mux_controls_is_cell_prereqs }, align 8
@phys_property = internal global %struct.check { ptr @.str.217, ptr @check_provider_cells_property, ptr @phys_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @phys_property_prereqs }, align 8
@phys_is_cell = internal global %struct.check { ptr @.str.220, ptr @check_is_cell, ptr @.str.219, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @phys_is_cell_prereqs }, align 8
@power_domains_property = internal global %struct.check { ptr @.str.221, ptr @check_provider_cells_property, ptr @power_domains_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @power_domains_property_prereqs }, align 8
@power_domains_is_cell = internal global %struct.check { ptr @.str.224, ptr @check_is_cell, ptr @.str.223, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @power_domains_is_cell_prereqs }, align 8
@pwms_property = internal global %struct.check { ptr @.str.225, ptr @check_provider_cells_property, ptr @pwms_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @pwms_property_prereqs }, align 8
@pwms_is_cell = internal global %struct.check { ptr @.str.228, ptr @check_is_cell, ptr @.str.227, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @pwms_is_cell_prereqs }, align 8
@resets_property = internal global %struct.check { ptr @.str.229, ptr @check_provider_cells_property, ptr @resets_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @resets_property_prereqs }, align 8
@resets_is_cell = internal global %struct.check { ptr @.str.232, ptr @check_is_cell, ptr @.str.231, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @resets_is_cell_prereqs }, align 8
@sound_dai_property = internal global %struct.check { ptr @.str.233, ptr @check_provider_cells_property, ptr @sound_dai_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @sound_dai_property_prereqs }, align 8
@sound_dai_is_cell = internal global %struct.check { ptr @.str.236, ptr @check_is_cell, ptr @.str.235, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @sound_dai_is_cell_prereqs }, align 8
@thermal_sensors_property = internal global %struct.check { ptr @.str.237, ptr @check_provider_cells_property, ptr @thermal_sensors_provider, i8 1, i8 0, i32 0, i8 0, i32 2, ptr @thermal_sensors_property_prereqs }, align 8
@thermal_sensors_is_cell = internal global %struct.check { ptr @.str.240, ptr @check_is_cell, ptr @.str.239, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @thermal_sensors_is_cell_prereqs }, align 8
@deprecated_gpio_property = internal global %struct.check { ptr @.str.241, ptr @check_deprecated_gpio_property, ptr null, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @deprecated_gpio_property_prereqs }, align 8
@gpios_property = internal global %struct.check { ptr @.str.248, ptr @check_gpios_property, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @gpios_property_prereqs }, align 8
@interrupts_property = internal global %struct.check { ptr @.str.251, ptr @check_interrupts_property, ptr @phandle_references, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @interrupts_property_prereqs }, align 8
@interrupt_provider = internal global %struct.check { ptr @.str.261, ptr @check_interrupt_provider, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @interrupt_provider_prereqs }, align 8
@interrupt_map = internal global %struct.check { ptr @.str.264, ptr @check_interrupt_map, ptr null, i8 1, i8 0, i32 0, i8 0, i32 3, ptr @interrupt_map_prereqs }, align 8
@alias_paths = internal global %struct.check { ptr @.str.272, ptr @check_alias_paths, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @alias_paths_prereqs }, align 8
@graph_nodes = internal global %struct.check { ptr @.str.277, ptr @check_graph_nodes, ptr null, i8 1, i8 0, i32 0, i8 0, i32 0, ptr @graph_nodes_prereqs }, align 8
@graph_child_address = internal global %struct.check { ptr @.str.283, ptr @check_graph_child_address, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_child_address_prereqs }, align 8
@graph_port = internal global %struct.check { ptr @.str.285, ptr @check_graph_port, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_port_prereqs }, align 8
@graph_endpoint = internal global %struct.check { ptr @.str.292, ptr @check_graph_endpoint, ptr null, i8 1, i8 0, i32 0, i8 0, i32 1, ptr @graph_endpoint_prereqs }, align 8
@always_fail = internal global %struct.check { ptr @.str.296, ptr @check_always_fail, ptr null, i8 0, i8 0, i32 0, i8 0, i32 0, ptr @always_fail_prereqs }, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"duplicate_node_names\00", align 1
@duplicate_node_names_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"Duplicate node name\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"<stdout>\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c": %s (%s): \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%s:%s: \00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  also defined at %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"duplicate_property_names\00", align 1
@duplicate_property_names_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.18 = private unnamed_addr constant [24 x i8] c"Duplicate property name\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"node_name_chars\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,._+-@\00", align 1
@node_name_chars_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [32 x i8] c"Bad character '%c' in node name\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"node_name_format\00", align 1
@node_name_format_prereqs = internal global [1 x ptr] [ptr @node_name_chars], align 8
@.str.23 = private unnamed_addr constant [37 x i8] c"multiple '@' characters in node name\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"property_name_chars\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,._+*#?-\00", align 1
@property_name_chars_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"Bad character '%c' in property name\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"name_is_string\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@name_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.29 = private unnamed_addr constant [25 x i8] c"property is not a string\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"name_properties\00", align 1
@name_properties_prereqs = internal global [1 x ptr] [ptr @name_is_string], align 8
@.str.31 = private unnamed_addr constant [62 x i8] c"\22name\22 property is incorrect (\22%s\22 instead of base node name)\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"node_name_vs_property_name\00", align 1
@node_name_vs_property_name_prereqs = internal global [1 x ptr] [ptr @node_name_chars], align 8
@.str.33 = private unnamed_addr constant [37 x i8] c"node name and property name conflict\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"duplicate_label\00", align 1
@duplicate_label_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.35 = private unnamed_addr constant [50 x i8] c"Duplicate label '%s' on %s%s%s%s%s and %s%s%s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"value of \00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"' in \00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"explicit_phandles\00", align 1
@explicit_phandles_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [15 x i8] c"!node->phandle\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"../scripts/dtc/checks.c\00", align 1
@__PRETTY_FUNCTION__.check_explicit_phandles = private unnamed_addr constant [78 x i8] c"void check_explicit_phandles(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"linux,phandle\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"mismatching 'phandle' and 'linux,phandle' properties\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"duplicated phandle 0x%x (seen before at %s)\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"bad length (%d) %s property\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"m->offset == 0\00", align 1
@__PRETTY_FUNCTION__.check_phandle_prop = private unnamed_addr constant [89 x i8] c"cell_t check_phandle_prop(struct check *, struct dt_info *, struct node *, const char *)\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"%s is a reference to another node\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"bad value (0x%x) in %s property\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"phandle_references\00", align 1
@phandle_references_prereqs = internal global [2 x ptr] [ptr @duplicate_node_names, ptr @explicit_phandles], align 16
@.str.52 = private unnamed_addr constant [44 x i8] c"m->offset + sizeof(cell_t) <= prop->val.len\00", align 1
@__PRETTY_FUNCTION__.fixup_phandle_references = private unnamed_addr constant [79 x i8] c"void fixup_phandle_references(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Reference to non-existent node or label \22%s\22\0A\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"path_references\00", align 1
@path_references_prereqs = internal global [1 x ptr] [ptr @duplicate_node_names], align 8
@.str.55 = private unnamed_addr constant [27 x i8] c"m->offset <= prop->val.len\00", align 1
@__PRETTY_FUNCTION__.fixup_path_references = private unnamed_addr constant [76 x i8] c"void fixup_path_references(struct check *, struct dt_info *, struct node *)\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"omit_unused_nodes\00", align 1
@omit_unused_nodes_prereqs = internal global [2 x ptr] [ptr @phandle_references, ptr @path_references], align 16
@generate_symbols = external local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [22 x i8] c"address_cells_is_cell\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@address_cells_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [30 x i8] c"property is not a single cell\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"size_cells_is_cell\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@size_cells_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.62 = private unnamed_addr constant [22 x i8] c"device_type_is_string\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@device_type_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.64 = private unnamed_addr constant [16 x i8] c"model_is_string\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@model_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.66 = private unnamed_addr constant [17 x i8] c"status_is_string\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@status_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.68 = private unnamed_addr constant [16 x i8] c"label_is_string\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@label_is_string_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.70 = private unnamed_addr constant [26 x i8] c"compatible_is_string_list\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@compatible_is_string_list_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.72 = private unnamed_addr constant [30 x i8] c"property is not a string list\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"names_is_string_list\00", align 1
@names_is_string_list_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.74 = private unnamed_addr constant [7 x i8] c"-names\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"property_name_chars_strict\00", align 1
@.str.76 = private unnamed_addr constant [65 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789,-\00", align 1
@property_name_chars_strict_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.77 = private unnamed_addr constant [48 x i8] c"Character '%c' not recommended in property name\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"node_name_chars_strict\00", align 1
@node_name_chars_strict_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.79 = private unnamed_addr constant [44 x i8] c"Character '%c' not recommended in node name\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"addr_size_cells\00", align 1
@addr_size_cells_prereqs = internal global [2 x ptr] [ptr @address_cells_is_cell, ptr @size_cells_is_cell], align 16
@.str.81 = private unnamed_addr constant [11 x i8] c"reg_format\00", align 1
@reg_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.82 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"Root node has a \22reg\22 property\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"property is empty\00", align 1
@.str.85 = private unnamed_addr constant [81 x i8] c"property has invalid length (%d bytes) (#address-cells == %d, #size-cells == %d)\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"ranges_format\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@ranges_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.88 = private unnamed_addr constant [30 x i8] c"Root node has a \22%s\22 property\00", align 1
@.str.89 = private unnamed_addr constant [69 x i8] c"empty \22%s\22 property but its #address-cells (%d) differs from %s (%d)\00", align 1
@.str.90 = private unnamed_addr constant [66 x i8] c"empty \22%s\22 property but its #size-cells (%d) differs from %s (%d)\00", align 1
@.str.91 = private unnamed_addr constant [121 x i8] c"\22%s\22 property has invalid length (%d bytes) (parent #address-cells == %d, child #address-cells == %d, #size-cells == %d)\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"dma_ranges_format\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"dma-ranges\00", align 1
@dma_ranges_format_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.94 = private unnamed_addr constant [20 x i8] c"unit_address_vs_reg\00", align 1
@unit_address_vs_reg_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.95 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.96 = private unnamed_addr constant [52 x i8] c"node has a reg or ranges property, but no unit name\00", align 1
@.str.97 = private unnamed_addr constant [52 x i8] c"node has a unit name, but no reg or ranges property\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"unit_address_format\00", align 1
@unit_address_format_prereqs = internal global [3 x ptr] [ptr @node_name_format, ptr @pci_bridge, ptr @simple_bus_bridge], align 16
@.str.99 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"unit name should not have leading \220x\22\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"unit name should not have leading 0s\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"pci_bridge\00", align 1
@pci_bridge_prereqs = internal global [2 x ptr] [ptr @device_type_is_string, ptr @addr_size_cells], align 16
@.str.103 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@pci_bus = internal constant %struct.bus_type { ptr @.str.113 }, align 8
@.str.104 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.105 = private unnamed_addr constant [33 x i8] c"node name is not \22pci\22 or \22pcie\22\00", align 1
@.str.106 = private unnamed_addr constant [48 x i8] c"missing ranges for PCI bridge (or not a bridge)\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"incorrect #address-cells for PCI bridge\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"incorrect #size-cells for PCI bridge\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"value must be 2 cells\00", align 1
@.str.111 = private unnamed_addr constant [48 x i8] c"1st cell must be less than or equal to 2nd cell\00", align 1
@.str.112 = private unnamed_addr constant [41 x i8] c"maximum bus number must be less than 256\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"pci_device_reg\00", align 1
@pci_device_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @pci_bridge], align 16
@.str.115 = private unnamed_addr constant [53 x i8] c"PCI reg config space address cells 2 and 3 must be 0\00", align 1
@.str.116 = private unnamed_addr constant [43 x i8] c"PCI reg address is not configuration space\00", align 1
@.str.117 = private unnamed_addr constant [55 x i8] c"PCI reg config space address register number must be 0\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"%x,%x\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"PCI unit address format error, expected \22%s\22\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"pci_device_bus_num\00", align 1
@pci_device_bus_num_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @pci_bridge], align 16
@.str.122 = private unnamed_addr constant [51 x i8] c"PCI bus number %d out of range, expected (%d - %d)\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"simple_bus_bridge\00", align 1
@simple_bus_bridge_prereqs = internal global [2 x ptr] [ptr @addr_size_cells, ptr @compatible_is_string_list], align 16
@.str.124 = private unnamed_addr constant [11 x i8] c"simple-bus\00", align 1
@simple_bus = internal constant %struct.bus_type { ptr @.str.124 }, align 8
@.str.125 = private unnamed_addr constant [15 x i8] c"simple_bus_reg\00", align 1
@simple_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @simple_bus_bridge], align 16
@.str.126 = private unnamed_addr constant [37 x i8] c"missing or empty reg/ranges property\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.128 = private unnamed_addr constant [52 x i8] c"simple-bus unit address format error, expected \22%s\22\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"i2c_bus_bridge\00", align 1
@i2c_bus_bridge_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.130 = private unnamed_addr constant [8 x i8] c"i2c-bus\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"i2c-arb\00", align 1
@i2c_bus = internal constant %struct.bus_type { ptr @.str.130 }, align 8
@.str.132 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"incorrect #address-cells for I2C bus\00", align 1
@.str.134 = private unnamed_addr constant [34 x i8] c"incorrect #size-cells for I2C bus\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"i2c_bus_reg\00", align 1
@i2c_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @i2c_bus_bridge], align 16
@.str.136 = private unnamed_addr constant [30 x i8] c"missing or empty reg property\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"I2C bus unit address format error, expected \22%s\22\00", align 1
@.str.138 = private unnamed_addr constant [50 x i8] c"I2C address must be less than 10-bits, got \220x%x\22\00", align 1
@.str.139 = private unnamed_addr constant [115 x i8] c"I2C address must be less than 7-bits, got \220x%x\22. Set I2C_TEN_BIT_ADDRESS for 10 bit addresses or fix the property\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"spi_bus_bridge\00", align 1
@spi_bus_bridge_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.141 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spi_bus = internal constant %struct.bus_type { ptr @.str.147 }, align 8
@.str.142 = private unnamed_addr constant [5 x i8] c"spi-\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"node name for SPI buses should be 'spi'\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"incorrect #address-cells for SPI bus\00", align 1
@.str.146 = private unnamed_addr constant [34 x i8] c"incorrect #size-cells for SPI bus\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"spi-bus\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"spi_bus_reg\00", align 1
@spi_bus_reg_prereqs = internal global [2 x ptr] [ptr @reg_format, ptr @spi_bus_bridge], align 16
@.str.149 = private unnamed_addr constant [49 x i8] c"SPI bus unit address format error, expected \22%s\22\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"avoid_default_addr_size\00", align 1
@avoid_default_addr_size_prereqs = internal global [1 x ptr] [ptr @addr_size_cells], align 8
@.str.151 = private unnamed_addr constant [40 x i8] c"Relying on default #address-cells value\00", align 1
@.str.152 = private unnamed_addr constant [37 x i8] c"Relying on default #size-cells value\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"avoid_unnecessary_addr_size\00", align 1
@avoid_unnecessary_addr_size_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.154 = private unnamed_addr constant [80 x i8] c"unnecessary #address-cells/#size-cells without \22ranges\22 or child \22reg\22 property\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"unique_unit_address\00", align 1
@unique_unit_address_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.156 = private unnamed_addr constant [46 x i8] c"duplicate unit-address (also used in node %s)\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.158 = private unnamed_addr constant [31 x i8] c"unique_unit_address_if_enabled\00", align 1
@unique_unit_address_if_enabled_prereqs = internal global [1 x ptr] [ptr @avoid_default_addr_size], align 8
@.str.159 = private unnamed_addr constant [37 x i8] c"obsolete_chosen_interrupt_controller\00", align 1
@obsolete_chosen_interrupt_controller_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.160 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.162 = private unnamed_addr constant [53 x i8] c"/chosen has obsolete \22interrupt-controller\22 property\00", align 1
@.str.163 = private unnamed_addr constant [20 x i8] c"chosen_node_is_root\00", align 1
@chosen_node_is_root_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.164 = private unnamed_addr constant [7 x i8] c"chosen\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c"chosen node must be at root node\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"chosen_node_bootargs\00", align 1
@chosen_node_bootargs_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [9 x i8] c"bootargs\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"chosen_node_stdout_path\00", align 1
@chosen_node_stdout_path_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.169 = private unnamed_addr constant [12 x i8] c"stdout-path\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"linux,stdout-path\00", align 1
@.str.171 = private unnamed_addr constant [26 x i8] c"Use 'stdout-path' instead\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"clocks_property\00", align 1
@clocks_provider = internal global %struct.provider { ptr @.str.178, ptr @.str.179, i8 0 }, align 8
@clocks_property_prereqs = internal global [2 x ptr] [ptr @clocks_is_cell, ptr @phandle_references], align 16
@.str.173 = private unnamed_addr constant [56 x i8] c"property size (%d) is invalid, expected multiple of %zu\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"cell %d is not a phandle reference\00", align 1
@.str.175 = private unnamed_addr constant [41 x i8] c"Could not get phandle node for (cell %d)\00", align 1
@.str.176 = private unnamed_addr constant [71 x i8] c"Missing property '%s' in node %s or bad phandle (referred from %s[%d])\00", align 1
@.str.177 = private unnamed_addr constant [46 x i8] c"property size (%d) too small for cell size %d\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"clocks_is_cell\00", align 1
@clocks_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.181 = private unnamed_addr constant [24 x i8] c"cooling_device_property\00", align 1
@cooling_device_provider = internal global %struct.provider { ptr @.str.182, ptr @.str.183, i8 0 }, align 8
@cooling_device_property_prereqs = internal global [2 x ptr] [ptr @cooling_device_is_cell, ptr @phandle_references], align 16
@.str.182 = private unnamed_addr constant [15 x i8] c"cooling-device\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"cooling_device_is_cell\00", align 1
@cooling_device_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.185 = private unnamed_addr constant [14 x i8] c"dmas_property\00", align 1
@dmas_provider = internal global %struct.provider { ptr @.str.186, ptr @.str.187, i8 0 }, align 8
@dmas_property_prereqs = internal global [2 x ptr] [ptr @dmas_is_cell, ptr @phandle_references], align 16
@.str.186 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"dmas_is_cell\00", align 1
@dmas_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.189 = private unnamed_addr constant [17 x i8] c"hwlocks_property\00", align 1
@hwlocks_provider = internal global %struct.provider { ptr @.str.190, ptr @.str.191, i8 0 }, align 8
@hwlocks_property_prereqs = internal global [2 x ptr] [ptr @hwlocks_is_cell, ptr @phandle_references], align 16
@.str.190 = private unnamed_addr constant [8 x i8] c"hwlocks\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"#hwlock-cells\00", align 1
@.str.192 = private unnamed_addr constant [16 x i8] c"hwlocks_is_cell\00", align 1
@hwlocks_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.193 = private unnamed_addr constant [29 x i8] c"interrupts_extended_property\00", align 1
@interrupts_extended_provider = internal global %struct.provider { ptr @.str.194, ptr @.str.195, i8 0 }, align 8
@interrupts_extended_property_prereqs = internal global [2 x ptr] [ptr @interrupts_extended_is_cell, ptr @phandle_references], align 16
@.str.194 = private unnamed_addr constant [20 x i8] c"interrupts-extended\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"interrupts_extended_is_cell\00", align 1
@interrupts_extended_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.197 = private unnamed_addr constant [21 x i8] c"io_channels_property\00", align 1
@io_channels_provider = internal global %struct.provider { ptr @.str.198, ptr @.str.199, i8 0 }, align 8
@io_channels_property_prereqs = internal global [2 x ptr] [ptr @io_channels_is_cell, ptr @phandle_references], align 16
@.str.198 = private unnamed_addr constant [12 x i8] c"io-channels\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"#io-channel-cells\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"io_channels_is_cell\00", align 1
@io_channels_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.201 = private unnamed_addr constant [16 x i8] c"iommus_property\00", align 1
@iommus_provider = internal global %struct.provider { ptr @.str.202, ptr @.str.203, i8 0 }, align 8
@iommus_property_prereqs = internal global [2 x ptr] [ptr @iommus_is_cell, ptr @phandle_references], align 16
@.str.202 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"#iommu-cells\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"iommus_is_cell\00", align 1
@iommus_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.205 = private unnamed_addr constant [16 x i8] c"mboxes_property\00", align 1
@mboxes_provider = internal global %struct.provider { ptr @.str.206, ptr @.str.207, i8 0 }, align 8
@mboxes_property_prereqs = internal global [2 x ptr] [ptr @mboxes_is_cell, ptr @phandle_references], align 16
@.str.206 = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"mboxes_is_cell\00", align 1
@mboxes_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.209 = private unnamed_addr constant [20 x i8] c"msi_parent_property\00", align 1
@msi_parent_provider = internal global %struct.provider { ptr @.str.210, ptr @.str.211, i8 1 }, align 8
@msi_parent_property_prereqs = internal global [2 x ptr] [ptr @msi_parent_is_cell, ptr @phandle_references], align 16
@.str.210 = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"#msi-cells\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"msi_parent_is_cell\00", align 1
@msi_parent_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.213 = private unnamed_addr constant [22 x i8] c"mux_controls_property\00", align 1
@mux_controls_provider = internal global %struct.provider { ptr @.str.214, ptr @.str.215, i8 0 }, align 8
@mux_controls_property_prereqs = internal global [2 x ptr] [ptr @mux_controls_is_cell, ptr @phandle_references], align 16
@.str.214 = private unnamed_addr constant [13 x i8] c"mux-controls\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"#mux-control-cells\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"mux_controls_is_cell\00", align 1
@mux_controls_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.217 = private unnamed_addr constant [14 x i8] c"phys_property\00", align 1
@phys_provider = internal global %struct.provider { ptr @.str.218, ptr @.str.219, i8 0 }, align 8
@phys_property_prereqs = internal global [2 x ptr] [ptr @phys_is_cell, ptr @phandle_references], align 16
@.str.218 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"#phy-cells\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"phys_is_cell\00", align 1
@phys_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.221 = private unnamed_addr constant [23 x i8] c"power_domains_property\00", align 1
@power_domains_provider = internal global %struct.provider { ptr @.str.222, ptr @.str.223, i8 0 }, align 8
@power_domains_property_prereqs = internal global [2 x ptr] [ptr @power_domains_is_cell, ptr @phandle_references], align 16
@.str.222 = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"power_domains_is_cell\00", align 1
@power_domains_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.225 = private unnamed_addr constant [14 x i8] c"pwms_property\00", align 1
@pwms_provider = internal global %struct.provider { ptr @.str.226, ptr @.str.227, i8 0 }, align 8
@pwms_property_prereqs = internal global [2 x ptr] [ptr @pwms_is_cell, ptr @phandle_references], align 16
@.str.226 = private unnamed_addr constant [5 x i8] c"pwms\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"#pwm-cells\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"pwms_is_cell\00", align 1
@pwms_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.229 = private unnamed_addr constant [16 x i8] c"resets_property\00", align 1
@resets_provider = internal global %struct.provider { ptr @.str.230, ptr @.str.231, i8 0 }, align 8
@resets_property_prereqs = internal global [2 x ptr] [ptr @resets_is_cell, ptr @phandle_references], align 16
@.str.230 = private unnamed_addr constant [7 x i8] c"resets\00", align 1
@.str.231 = private unnamed_addr constant [13 x i8] c"#reset-cells\00", align 1
@.str.232 = private unnamed_addr constant [15 x i8] c"resets_is_cell\00", align 1
@resets_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.233 = private unnamed_addr constant [19 x i8] c"sound_dai_property\00", align 1
@sound_dai_provider = internal global %struct.provider { ptr @.str.234, ptr @.str.235, i8 0 }, align 8
@sound_dai_property_prereqs = internal global [2 x ptr] [ptr @sound_dai_is_cell, ptr @phandle_references], align 16
@.str.234 = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1
@.str.236 = private unnamed_addr constant [18 x i8] c"sound_dai_is_cell\00", align 1
@sound_dai_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.237 = private unnamed_addr constant [25 x i8] c"thermal_sensors_property\00", align 1
@thermal_sensors_provider = internal global %struct.provider { ptr @.str.238, ptr @.str.239, i8 0 }, align 8
@thermal_sensors_property_prereqs = internal global [2 x ptr] [ptr @thermal_sensors_is_cell, ptr @phandle_references], align 16
@.str.238 = private unnamed_addr constant [16 x i8] c"thermal-sensors\00", align 1
@.str.239 = private unnamed_addr constant [22 x i8] c"#thermal-sensor-cells\00", align 1
@.str.240 = private unnamed_addr constant [24 x i8] c"thermal_sensors_is_cell\00", align 1
@thermal_sensors_is_cell_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.241 = private unnamed_addr constant [25 x i8] c"deprecated_gpio_property\00", align 1
@deprecated_gpio_property_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.242 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.243 = private unnamed_addr constant [50 x i8] c"'[*-]gpio' is deprecated, use '[*-]gpios' instead\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c",nr-gpios\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"-gpios\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.247 = private unnamed_addr constant [6 x i8] c"-gpio\00", align 1
@.str.248 = private unnamed_addr constant [15 x i8] c"gpios_property\00", align 1
@gpios_property_prereqs = internal global [1 x ptr] [ptr @phandle_references], align 8
@.str.249 = private unnamed_addr constant [9 x i8] c"gpio-hog\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@.str.251 = private unnamed_addr constant [20 x i8] c"interrupts_property\00", align 1
@interrupts_property_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.252 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.253 = private unnamed_addr constant [47 x i8] c"size (%d) is invalid, expected multiple of %zu\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"Invalid phandle\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"Bad phandle\00", align 1
@.str.257 = private unnamed_addr constant [55 x i8] c"Missing interrupt-controller or interrupt-map property\00", align 1
@.str.258 = private unnamed_addr constant [25 x i8] c"Missing interrupt-parent\00", align 1
@.str.259 = private unnamed_addr constant [38 x i8] c"size is (%d), expected multiple of %d\00", align 1
@.str.260 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.261 = private unnamed_addr constant [19 x i8] c"interrupt_provider\00", align 1
@interrupt_provider_prereqs = internal global [1 x ptr] [ptr @interrupts_extended_is_cell], align 8
@.str.262 = private unnamed_addr constant [49 x i8] c"Missing '#interrupt-cells' in interrupt provider\00", align 1
@.str.263 = private unnamed_addr constant [64 x i8] c"'#interrupt-cells' found, but node is not an interrupt provider\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"interrupt_map\00", align 1
@interrupt_map_prereqs = internal global [3 x ptr] [ptr @phandle_references, ptr @addr_size_cells, ptr @interrupt_provider], align 16
@.str.265 = private unnamed_addr constant [51 x i8] c"Missing '#address-cells' in interrupt-map provider\00", align 1
@.str.266 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.267 = private unnamed_addr constant [44 x i8] c"property size (%d) is invalid, expected %zu\00", align 1
@.str.268 = private unnamed_addr constant [45 x i8] c"property size (%d) too small, expected > %zu\00", align 1
@.str.269 = private unnamed_addr constant [30 x i8] c"Cell %zu is not a phandle(%d)\00", align 1
@.str.270 = private unnamed_addr constant [46 x i8] c"Could not get phandle(%d) node for (cell %zu)\00", align 1
@.str.271 = private unnamed_addr constant [97 x i8] c"Missing property '#interrupt-cells' in node %s or bad phandle (referred from interrupt-map[%zu])\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"alias_paths\00", align 1
@alias_paths_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.273 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.274 = private unnamed_addr constant [42 x i8] c"aliases property is not a valid node (%s)\00", align 1
@.str.275 = private unnamed_addr constant [38 x i8] c"abcdefghijklmnopqrstuvwxyz0123456789-\00", align 1
@.str.276 = private unnamed_addr constant [58 x i8] c"aliases property name must include only lowercase and '-'\00", align 1
@.str.277 = private unnamed_addr constant [12 x i8] c"graph_nodes\00", align 1
@graph_nodes_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.278 = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@graph_port_bus = internal constant %struct.bus_type { ptr @.str.281 }, align 8
@.str.280 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@graph_ports_bus = internal constant %struct.bus_type { ptr @.str.282 }, align 8
@.str.281 = private unnamed_addr constant [11 x i8] c"graph-port\00", align 1
@.str.282 = private unnamed_addr constant [12 x i8] c"graph-ports\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"graph_child_address\00", align 1
@graph_child_address_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.284 = private unnamed_addr constant [84 x i8] c"graph node has single child node '%s', #address-cells/#size-cells are not necessary\00", align 1
@.str.285 = private unnamed_addr constant [11 x i8] c"graph_port\00", align 1
@graph_port_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.286 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.287 = private unnamed_addr constant [38 x i8] c"graph port node name should be 'port'\00", align 1
@.str.288 = private unnamed_addr constant [36 x i8] c"graph node malformed 'reg' property\00", align 1
@.str.289 = private unnamed_addr constant [45 x i8] c"graph node unit address error, expected \22%s\22\00", align 1
@.str.290 = private unnamed_addr constant [45 x i8] c"graph node '#address-cells' is %d, must be 1\00", align 1
@.str.291 = private unnamed_addr constant [42 x i8] c"graph node '#size-cells' is %d, must be 0\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"graph_endpoint\00", align 1
@graph_endpoint_prereqs = internal global [1 x ptr] [ptr @graph_nodes], align 8
@.str.293 = private unnamed_addr constant [46 x i8] c"graph endpoint node name should be 'endpoint'\00", align 1
@.str.294 = private unnamed_addr constant [51 x i8] c"graph connection to node '%s' is not bidirectional\00", align 1
@.str.295 = private unnamed_addr constant [27 x i8] c"graph phandle is not valid\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"always_fail\00", align 1
@always_fail_prereqs = internal global [0 x ptr] zeroinitializer, align 8
@.str.297 = private unnamed_addr constant [18 x i8] c"always_fail check\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.299 = private unnamed_addr constant [15 x i8] c"!c->inprogress\00", align 1
@__PRETTY_FUNCTION__.run_check = private unnamed_addr constant [50 x i8] c"_Bool run_check(struct check *, struct dt_info *)\00", align 1
@.str.300 = private unnamed_addr constant [25 x i8] c"Failed prerequisite '%s'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @parse_checks_option(i1 noundef zeroext %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(4) @.str.1, i64 noundef 3) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 3
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %2, %6 ]
  %13 = phi i1 [ false, %9 ], [ true, %6 ]
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, 89
  br i1 %16, label %27, label %17

17:                                               ; preds = %14, %11
  %18 = phi i64 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = load ptr, ptr %20, align 8, !tbaa !9
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %12) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14

24:                                               ; preds = %17
  br i1 %13, label %25, label %26

25:                                               ; preds = %24
  tail call fastcc void @enable_warning_error(ptr noundef nonnull %20, i1 noundef zeroext %0, i1 noundef zeroext %1)
  br label %28

26:                                               ; preds = %24
  tail call fastcc void @disable_warning_error(ptr noundef nonnull %20, i1 noundef zeroext %0, i1 noundef zeroext %1)
  br label %28

27:                                               ; preds = %14
  tail call void (ptr, ...) @die(ptr undef, ptr noundef %12) #18
  unreachable

28:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @enable_warning_error(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 {
  br i1 %1, label %4, label %8

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !13, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4, %3
  br i1 %2, label %9, label %28

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 1, !tbaa !15, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9, %4
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 8
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !17
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  tail call fastcc void @enable_warning_error(ptr noundef %23, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %24 = add nuw nsw i64 %20, 1
  %25 = load i32, ptr %14, align 4, !tbaa !16
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %19, label %28

28:                                               ; preds = %19, %13, %9, %8
  %29 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %30 = load i8, ptr %29, align 8, !tbaa !13, !range !14
  %31 = icmp ne i8 %30, 0
  %32 = or i1 %31, %1
  %33 = zext i1 %32 to i8
  store i8 %33, ptr %29, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %35 = load i8, ptr %34, align 1, !tbaa !15, !range !14
  %36 = icmp ne i8 %35, 0
  %37 = or i1 %36, %2
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %34, align 1, !tbaa !15
  ret void
}

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc void @disable_warning_error(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #3 {
  br i1 %1, label %4, label %8

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !13, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4, %3
  br i1 %2, label %9, label %40

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %10, align 1, !tbaa !15, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %9, %4
  br label %14

14:                                               ; preds = %37, %13
  %15 = phi i64 [ %38, %37 ], [ 0, %13 ]
  %16 = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.check, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !16
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.check, ptr %17, i64 0, i32 8
  br label %23

23:                                               ; preds = %32, %21
  %24 = phi i32 [ %19, %21 ], [ %33, %32 ]
  %25 = phi i64 [ 0, %21 ], [ %34, %32 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !17
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  tail call fastcc void @disable_warning_error(ptr noundef nonnull %17, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %31 = load i32, ptr %18, align 4, !tbaa !16
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %30 ]
  %34 = add nuw nsw i64 %25, 1
  %35 = sext i32 %33 to i64
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %23, label %37

37:                                               ; preds = %32, %14
  %38 = add nuw nsw i64 %15, 1
  %39 = icmp eq i64 %38, 89
  br i1 %39, label %40, label %14

40:                                               ; preds = %37, %9, %8
  %41 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %42 = load i8, ptr %41, align 8, !tbaa !13, !range !14
  %43 = icmp ne i8 %42, 0
  %44 = xor i1 %1, true
  %45 = and i1 %43, %44
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %41, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %48 = load i8, ptr %47, align 1, !tbaa !15, !range !14
  %49 = icmp ne i8 %48, 0
  %50 = xor i1 %2, true
  %51 = and i1 %49, %50
  %52 = zext i1 %51 to i8
  store i8 %52, ptr %47, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture readnone %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = call i64 @fwrite(ptr nonnull @.str.298, i64 13, i64 1, ptr %3) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #20
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef 1) #21
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @process_checks(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %22, %2
  %4 = phi i64 [ 0, %2 ], [ %24, %22 ]
  %5 = phi i32 [ 0, %2 ], [ %23, %22 ]
  %6 = getelementptr inbounds [89 x ptr], ptr @check_table, i64 0, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.check, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !13, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.check, ptr %7, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !15, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11, %3
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call fastcc zeroext i1 @run_check(ptr noundef nonnull %7, ptr noundef %1)
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i1 [ true, %15 ], [ %18, %17 ]
  %21 = zext i1 %20 to i32
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %21, %19 ], [ %5, %11 ]
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 89
  br i1 %25, label %26, label %3

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %26
  br i1 %0, label %32, label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @stderr, align 8, !tbaa !5
  %31 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 64, i64 1, ptr %30) #20
  tail call void @exit(i32 noundef 2) #21
  unreachable

32:                                               ; preds = %28
  %33 = load i32, ptr @quiet, align 4, !tbaa !18
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr @stderr, align 8, !tbaa !5
  %37 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 46, i64 1, ptr %36) #20
  br label %38

38:                                               ; preds = %35, %32, %26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @run_check(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 6
  %6 = load i8, ptr %5, align 8, !tbaa !21, !range !14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.42, i32 noundef 160, ptr noundef nonnull @__PRETTY_FUNCTION__.run_check) #21
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  store i8 1, ptr %5, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !16
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 8
  br label %19

19:                                               ; preds = %39, %17
  %20 = phi i64 [ 0, %17 ], [ %40, %39 ]
  %21 = phi i8 [ 0, %17 ], [ %30, %39 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !17
  %23 = getelementptr inbounds ptr, ptr %22, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i8 %21, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i1 @run_check(ptr noundef %24, ptr noundef %1)
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i1 [ true, %19 ], [ %27, %26 ]
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.check, ptr %24, i64 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !22
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  store i32 1, ptr %10, align 4, !tbaa !22
  %35 = load ptr, ptr %18, align 8, !tbaa !17
  %36 = getelementptr inbounds ptr, ptr %35, i64 %20
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = load ptr, ptr %37, align 8, !tbaa !9
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.300, ptr noundef %38)
  br label %39

39:                                               ; preds = %34, %28
  %40 = add nuw nsw i64 %20, 1
  %41 = load i32, ptr %14, align 4, !tbaa !16
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %19, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %10, align 4, !tbaa !22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %13
  %48 = phi i8 [ %30, %44 ], [ 0, %13 ]
  tail call fastcc void @check_nodes_props(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %4)
  %49 = load i32, ptr %10, align 4, !tbaa !22
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 2, ptr %10, align 4, !tbaa !22
  store i8 0, ptr %5, align 8, !tbaa !21
  br label %61

52:                                               ; preds = %47, %44, %9
  %53 = phi i32 [ %49, %47 ], [ %45, %44 ], [ %11, %9 ]
  %54 = phi i8 [ %48, %47 ], [ %30, %44 ], [ 0, %9 ]
  store i8 0, ptr %5, align 8, !tbaa !21
  %55 = icmp eq i32 %53, 2
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %58 = load i8, ptr %57, align 1, !tbaa !15, !range !14
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i8 %54, i8 1
  br label %61

61:                                               ; preds = %56, %52, %51
  %62 = phi i8 [ %54, %52 ], [ %60, %56 ], [ %48, %51 ]
  %63 = icmp ne i8 %62, 0
  ret i1 %63
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_node_names(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %31, %7
  %10 = phi ptr [ %5, %7 ], [ %33, %31 ]
  %11 = load i8, ptr %10, align 8, !tbaa !23, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 1
  br label %19

19:                                               ; preds = %27, %17
  %20 = phi ptr [ %15, %17 ], [ %29, %27 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !26
  %22 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %23) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 3, ptr %8, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %20, ptr noundef null, ptr noundef nonnull @.str.6)
  br label %27

27:                                               ; preds = %26, %19
  %28 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19

31:                                               ; preds = %27, %13, %9
  %32 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9

35:                                               ; preds = %31, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef %4, ...) unnamed_addr #6 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 3
  %9 = load i8, ptr %8, align 8, !tbaa !13, !range !14
  %10 = icmp ne i8 %9, 0
  %11 = load i32, ptr @quiet, align 4
  %12 = icmp slt i32 %11, 1
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %16 = load i8, ptr %15, align 1, !tbaa !15, !range !14
  %17 = icmp ne i8 %16, 0
  %18 = icmp slt i32 %11, 2
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %84

20:                                               ; preds = %14, %5
  %21 = icmp eq ptr %3, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22, %20
  %27 = icmp eq ptr %2, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 13
  %30 = load ptr, ptr %29, align 8, !tbaa !30
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %22
  %33 = phi ptr [ %30, %28 ], [ %24, %22 ]
  %34 = tail call ptr @srcpos_string(ptr noundef nonnull %33) #19
  %35 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, ptr noundef %34) #19
  call void @free(ptr noundef %34) #19
  br label %45

36:                                               ; preds = %28, %26
  %37 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !31
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(2) @.str.8) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.9) #19
  br label %45

43:                                               ; preds = %36
  %44 = call i32 (ptr, ptr, ...) @xasprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, ptr noundef %38) #19
  br label %45

45:                                               ; preds = %43, %41, %32
  %46 = phi i1 [ false, %41 ], [ false, %43 ], [ true, %32 ]
  %47 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 4
  %48 = load i8, ptr %47, align 1, !tbaa !15, !range !14
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, ptr @.str.12, ptr @.str.11
  %51 = load ptr, ptr %0, align 8, !tbaa !9
  %52 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.10, ptr noundef nonnull %50, ptr noundef %51) #19
  %53 = icmp eq ptr %2, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !32
  br i1 %21, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !33
  %60 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, ptr noundef %56, ptr noundef %59) #19
  br label %63

61:                                               ; preds = %54
  %62 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef %56) #19
  br label %63

63:                                               ; preds = %61, %57, %45
  call void @llvm.va_start(ptr nonnull %6)
  %64 = call i32 @xavsprintf_append(ptr noundef nonnull %7, ptr noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.va_end(ptr nonnull %6)
  %65 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.15) #19
  %66 = and i1 %21, %46
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 13
  %69 = load ptr, ptr %68, align 8, !tbaa !30
  %70 = getelementptr inbounds %struct.srcpos, ptr %69, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %73, %67
  %74 = phi ptr [ %78, %73 ], [ %71, %67 ]
  %75 = call ptr @srcpos_string(ptr noundef nonnull %74) #19
  %76 = call i32 (ptr, ptr, ...) @xasprintf_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, ptr noundef %75) #19
  call void @free(ptr noundef %75) #19
  %77 = getelementptr inbounds %struct.srcpos, ptr %74, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %73

80:                                               ; preds = %73, %67, %63
  %81 = load ptr, ptr %7, align 8, !tbaa !5
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %83 = call i32 @fputs(ptr noundef %81, ptr noundef %82) #20
  br label %84

84:                                               ; preds = %80, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret void
}

declare ptr @srcpos_string(ptr noundef) local_unnamed_addr #7

declare i32 @xasprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i32 @xasprintf_append(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

declare i32 @xavsprintf_append(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_property_names(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %5, %7 ], [ %36, %34 ]
  %11 = load i8, ptr %10, align 8, !tbaa !36, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !37
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 1
  br label %19

19:                                               ; preds = %30, %17
  %20 = phi ptr [ %15, %17 ], [ %32, %30 ]
  %21 = load i8, ptr %20, align 8, !tbaa !36, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load ptr, ptr %18, align 8, !tbaa !33
  %25 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %26) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 3, ptr %8, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull @.str.18)
  br label %30

30:                                               ; preds = %29, %23, %19
  %31 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !37
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %19

34:                                               ; preds = %30, %13, %9
  %35 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %9

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_node_name_chars(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call i64 @strspn(ptr noundef %5, ptr noundef %7) #17
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #17
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %12, align 4, !tbaa !22
  %13 = getelementptr inbounds i8, ptr %5, i64 %8
  %14 = load i8, ptr %13, align 1, !tbaa !39
  %15 = sext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef %15)
  br label %16

16:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @check_node_name_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_unitname(ptr noundef %2) #19
  %5 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 64) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %8, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.23)
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @get_unitname(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_property_name_chars(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %25, %7
  %11 = phi ptr [ %5, %7 ], [ %27, %25 ]
  %12 = load i8, ptr %11, align 8, !tbaa !36, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = load ptr, ptr %8, align 8, !tbaa !38
  %18 = tail call i64 @strspn(ptr noundef %16, ptr noundef %17) #17
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #17
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  store i32 3, ptr %9, align 4, !tbaa !22
  %22 = getelementptr inbounds i8, ptr %16, i64 %18
  %23 = load i8, ptr %22, align 1, !tbaa !39
  %24 = sext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull @.str.26, i32 noundef %24)
  br label %25

25:                                               ; preds = %21, %14, %10
  %26 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10

29:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_is_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %10 = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %9) #19
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %12, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.29)
  br label %13

13:                                               ; preds = %11, %8, %3
  ret void
}

declare ptr @get_property(ptr noundef, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @data_is_one_string(ptr noundef byval(%struct.data) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_name_properties(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.property, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.28) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %17

12:                                               ; preds = %17
  %13 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(5) @.str.28) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %7
  %18 = phi ptr [ %20, %12 ], [ %5, %7 ]
  %19 = getelementptr inbounds %struct.property, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %12

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.property, ptr %18, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi ptr [ %5, %7 ], [ %20, %22 ]
  %26 = phi ptr [ %4, %7 ], [ %23, %22 ]
  %27 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !41
  %32 = add i32 %31, 1
  %33 = icmp eq i32 %29, %32
  %34 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  br i1 %33, label %36, label %42

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  %39 = sext i32 %31 to i64
  %40 = tail call i32 @bcmp(ptr %35, ptr %38, i64 %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36, %24
  %43 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %43, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef %35)
  br label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.property, ptr %25, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !37
  store ptr %46, ptr %26, align 8, !tbaa !5
  %47 = load ptr, ptr %27, align 8, !tbaa !33
  tail call void @free(ptr noundef %47) #19
  tail call void @data_free(ptr noundef nonnull byval(%struct.data) align 8 %28) #19
  tail call void @free(ptr noundef nonnull %25) #19
  br label %48

48:                                               ; preds = %44, %42, %17, %3
  ret void
}

declare void @data_free(ptr noundef byval(%struct.data) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_node_name_vs_property_name(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call ptr @get_property(ptr noundef nonnull %5, ptr noundef %9) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %13, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.33)
  br label %14

14:                                               ; preds = %12, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_duplicate_label_node(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %14, %3
  %8 = phi ptr [ %16, %14 ], [ %5, %3 ]
  %9 = load i8, ptr %8, align 8, !tbaa !44, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.label, ptr %8, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  tail call fastcc void @check_duplicate_label(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %2, ptr noundef null, ptr noundef null)
  br label %14

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.label, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %56, %18
  %23 = phi ptr [ %58, %56 ], [ %20, %18 ]
  %24 = load i8, ptr %23, align 8, !tbaa !36, !range !14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %41, %26
  %33 = icmp eq ptr %28, null
  br i1 %33, label %56, label %45

34:                                               ; preds = %41, %26
  %35 = phi ptr [ %43, %41 ], [ %30, %26 ]
  %36 = load i8, ptr %35, align 8, !tbaa !44, !range !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.label, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  tail call fastcc void @check_duplicate_label(ptr noundef %0, ptr noundef %1, ptr noundef %40, ptr noundef %2, ptr noundef nonnull %23, ptr noundef null)
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %struct.label, ptr %35, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %32, label %34

45:                                               ; preds = %52, %32
  %46 = phi ptr [ %54, %52 ], [ %28, %32 ]
  %47 = load i32, ptr %46, align 8, !tbaa !48
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.marker, ptr %46, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !50
  tail call fastcc void @check_duplicate_label(ptr noundef %0, ptr noundef %1, ptr noundef %51, ptr noundef %2, ptr noundef nonnull %23, ptr noundef nonnull %46)
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.marker, ptr %46, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %45

56:                                               ; preds = %52, %32, %22
  %57 = getelementptr inbounds %struct.property, ptr %23, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %22

60:                                               ; preds = %56, %18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_duplicate_label(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef readnone %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr null, ptr %8, align 8, !tbaa !5
  %11 = tail call ptr @get_node_by_label(ptr noundef %10, ptr noundef %2) #19
  store ptr %11, ptr %7, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = call ptr @get_property_by_label(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %7) #19
  store ptr %14, ptr %8, align 8, !tbaa !5
  %15 = load ptr, ptr %7, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = call ptr @get_marker_label(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %19 = load ptr, ptr %7, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8
  br label %23

23:                                               ; preds = %21, %13, %6
  %24 = phi ptr [ %14, %13 ], [ null, %6 ], [ %22, %21 ]
  %25 = phi ptr [ null, %13 ], [ null, %6 ], [ %18, %21 ]
  %26 = phi ptr [ %15, %13 ], [ %11, %6 ], [ %19, %21 ]
  %27 = icmp eq ptr %26, %3
  %28 = icmp eq ptr %24, %4
  %29 = select i1 %27, i1 %28, i1 false
  %30 = icmp eq ptr %25, %5
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %58, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %33, align 4, !tbaa !22
  %34 = icmp eq ptr %5, null
  %35 = select i1 %34, ptr @.str.37, ptr @.str.36
  %36 = icmp eq ptr %4, null
  %37 = select i1 %36, ptr @.str.37, ptr @.str.38
  br i1 %36, label %41, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi ptr [ @.str.37, %32 ], [ @.str.39, %38 ]
  %43 = phi ptr [ @.str.37, %32 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !32
  %46 = icmp eq ptr %25, null
  %47 = select i1 %46, ptr @.str.37, ptr @.str.36
  %48 = icmp eq ptr %24, null
  %49 = select i1 %48, ptr @.str.37, ptr @.str.38
  br i1 %48, label %53, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.property, ptr %24, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !33
  br label %53

53:                                               ; preds = %50, %41
  %54 = phi ptr [ @.str.37, %41 ], [ @.str.39, %50 ]
  %55 = phi ptr [ @.str.37, %41 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !32
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef %2, ptr noundef nonnull %35, ptr noundef nonnull %37, ptr noundef %43, ptr noundef nonnull %42, ptr noundef %45, ptr noundef nonnull %47, ptr noundef nonnull %49, ptr noundef %55, ptr noundef nonnull %54, ptr noundef %57)
  br label %58

58:                                               ; preds = %53, %23, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret void
}

declare ptr @get_node_by_label(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @get_property_by_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @get_marker_label(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_explicit_phandles(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 540, ptr noundef nonnull @__PRETTY_FUNCTION__.check_explicit_phandles) #21
  unreachable

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @check_phandle_prop(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.43)
  %12 = tail call fastcc i32 @check_phandle_prop(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.44)
  %13 = icmp ne i32 %11, 0
  %14 = icmp ne i32 %12, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %10
  %17 = select i1 %14, i1 %13, i1 false
  %18 = xor i1 %17, true
  %19 = icmp eq i32 %11, %12
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %22, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.45)
  br label %23

23:                                               ; preds = %21, %16
  %24 = icmp eq i32 %12, 0
  %25 = select i1 %24, i1 true, i1 %13
  %26 = select i1 %25, i32 %11, i32 %12
  %27 = tail call ptr @get_node_by_phandle(ptr noundef %5, i32 noundef %26) #19
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %2
  %30 = or i1 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %32, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef %26, ptr noundef %34)
  br label %36

35:                                               ; preds = %23
  store i32 %26, ptr %6, align 4, !tbaa !52
  br label %36

36:                                               ; preds = %35, %31, %10
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @check_phandle_prop(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call ptr @get_property(ptr noundef %2, ptr noundef %3) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %14, align 4, !tbaa !22
  %15 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @.str.47, i32 noundef %11, ptr noundef %16)
  br label %51

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %39, %17
  %22 = phi ptr [ %41, %39 ], [ %19, %17 ]
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @__assert_fail(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.42, i32 noundef 505, ptr noundef nonnull @__PRETTY_FUNCTION__.check_phandle_prop) #21
  unreachable

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !50
  %33 = tail call ptr @get_node_by_ref(ptr noundef %6, ptr noundef %32) #19
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %36, align 4, !tbaa !22
  %37 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef %38)
  br label %51

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %21

43:                                               ; preds = %39, %17
  %44 = tail call i32 @propval_cell(ptr noundef nonnull %7) #19
  %45 = add i32 %44, -1
  %46 = icmp ult i32 %45, -2
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %48, align 4, !tbaa !22
  %49 = getelementptr inbounds %struct.property, ptr %7, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @.str.50, i32 noundef %44, ptr noundef %50)
  br label %51

51:                                               ; preds = %47, %43, %35, %30, %13, %4
  %52 = phi i32 [ 0, %13 ], [ 0, %47 ], [ 0, %4 ], [ 0, %35 ], [ 0, %30 ], [ %44, %43 ]
  ret i32 %52
}

declare ptr @get_node_by_phandle(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @get_node_by_ref(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @propval_cell(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @fixup_phandle_references(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %11

11:                                               ; preds = %63, %9
  %12 = phi ptr [ %7, %9 ], [ %65, %63 ]
  %13 = load i8, ptr %12, align 8, !tbaa !36, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.property, ptr %12, i64 0, i32 2
  %17 = getelementptr inbounds %struct.property, ptr %12, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.property, ptr %12, i64 0, i32 2, i32 1
  br label %22

22:                                               ; preds = %59, %20
  %23 = phi ptr [ %18, %20 ], [ %61, %59 ]
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = zext i32 %28 to i64
  %30 = add nuw nsw i64 %29, 4
  %31 = load i32, ptr %16, align 8, !tbaa !40
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  tail call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.42, i32 noundef 614, ptr noundef nonnull @__PRETTY_FUNCTION__.fixup_phandle_references) #21
  unreachable

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = tail call ptr @get_node_by_ref(ptr noundef %5, ptr noundef %37) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, ptr %1, align 8, !tbaa !54
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  store i32 3, ptr %10, align 4, !tbaa !22
  %45 = load ptr, ptr %36, align 8, !tbaa !50
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef %45)
  br label %59

46:                                               ; preds = %40
  %47 = load ptr, ptr %21, align 8, !tbaa !42
  %48 = load i32, ptr %27, align 4, !tbaa !53
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  store i32 -1, ptr %50, align 4, !tbaa !18
  br label %59

51:                                               ; preds = %35
  %52 = tail call i32 @get_node_phandle(ptr noundef %5, ptr noundef nonnull %38) #19
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #19
  %54 = load ptr, ptr %21, align 8, !tbaa !42
  %55 = load i32, ptr %27, align 4, !tbaa !53
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  store i32 %53, ptr %57, align 4, !tbaa !18
  %58 = tail call ptr @reference_node(ptr noundef nonnull %38) #19
  br label %59

59:                                               ; preds = %51, %46, %44, %22
  %60 = getelementptr inbounds %struct.marker, ptr %23, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22

63:                                               ; preds = %59, %15, %11
  %64 = getelementptr inbounds %struct.property, ptr %12, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %11

67:                                               ; preds = %63, %3
  ret void
}

declare i32 @get_node_phandle(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @reference_node(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @fixup_path_references(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.data, align 8
  %5 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %49, %10
  %13 = phi ptr [ %8, %10 ], [ %51, %49 ]
  %14 = load i8, ptr %13, align 8, !tbaa !36, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 2
  %18 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %45, %16
  %22 = phi ptr [ %47, %45 ], [ %19, %16 ]
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !53
  %28 = load i32, ptr %17, align 8, !tbaa !40
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @__assert_fail(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.42, i32 noundef 649, ptr noundef nonnull @__PRETTY_FUNCTION__.fixup_path_references) #21
  unreachable

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = call ptr @get_node_by_ref(ptr noundef %6, ptr noundef %33) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  store i32 3, ptr %11, align 4, !tbaa !22
  %37 = load ptr, ptr %32, align 8, !tbaa !50
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef %37)
  br label %45

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.node, ptr %34, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #17
  %42 = trunc i64 %41 to i32
  %43 = add i32 %42, 1
  call void @data_insert_at_marker(ptr nonnull sret(%struct.data) align 8 %4, ptr noundef nonnull byval(%struct.data) align 8 %17, ptr noundef nonnull %22, ptr noundef %40, i32 noundef %43) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %44 = call ptr @reference_node(ptr noundef nonnull %34) #19
  br label %45

45:                                               ; preds = %38, %36, %21
  %46 = getelementptr inbounds %struct.marker, ptr %22, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %21

49:                                               ; preds = %45, %16, %12
  %50 = getelementptr inbounds %struct.property, ptr %13, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %12

53:                                               ; preds = %49, %3
  ret void
}

declare void @data_insert_at_marker(ptr sret(%struct.data) align 8, ptr noundef byval(%struct.data) align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal void @fixup_omit_unused_nodes(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @generate_symbols, align 4, !tbaa !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6, %3
  %11 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 14
  %12 = load i8, ptr %11, align 8, !tbaa !57, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 15
  %16 = load i8, ptr %15, align 1, !tbaa !58, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @delete_node(ptr noundef nonnull %2) #19
  br label %19

19:                                               ; preds = %18, %14, %10, %6
  ret void
}

declare void @delete_node(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_is_cell(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %13, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.59)
  br label %14

14:                                               ; preds = %12, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_is_string_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  br label %15

15:                                               ; preds = %24, %12
  %16 = phi ptr [ %28, %24 ], [ %14, %12 ]
  %17 = phi i32 [ %26, %24 ], [ %10, %12 ]
  %18 = zext i32 %17 to i64
  %19 = tail call i64 @strnlen(ptr noundef %16, i64 noundef %18) #17
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %23, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.72)
  br label %30

24:                                               ; preds = %15
  %25 = add nsw i32 %20, 1
  %26 = sub nsw i32 %17, %25
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %16, i64 %27
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %15, label %30

30:                                               ; preds = %24, %22, %8, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strnlen(ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @check_names_is_string_list(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %50, %7
  %11 = phi ptr [ %5, %7 ], [ %52, %50 ]
  %12 = load i8, ptr %11, align 8, !tbaa !36, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #17
  %18 = trunc i64 %17 to i32
  %19 = icmp ult i32 %18, 6
  br i1 %19, label %50, label %20

20:                                               ; preds = %14
  %21 = and i64 %17, 4294967295
  %22 = getelementptr inbounds i8, ptr %16, i64 -6
  %23 = getelementptr inbounds i8, ptr %22, i64 %21
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.74) #17
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %20
  store ptr %16, ptr %8, align 8, !tbaa !38
  %27 = tail call ptr @get_property(ptr noundef %2, ptr noundef %16) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.property, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !40
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.property, ptr %27, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  br label %36

36:                                               ; preds = %44, %33
  %37 = phi ptr [ %48, %44 ], [ %35, %33 ]
  %38 = phi i32 [ %46, %44 ], [ %31, %33 ]
  %39 = zext i32 %38 to i64
  %40 = tail call i64 @strnlen(ptr noundef %37, i64 noundef %39) #17
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 3, ptr %9, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %27, ptr noundef nonnull @.str.72) #19
  br label %50

44:                                               ; preds = %36
  %45 = add nsw i32 %41, 1
  %46 = sub nsw i32 %38, %45
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, ptr %37, i64 %47
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %36, label %50

50:                                               ; preds = %44, %43, %29, %26, %20, %14, %10
  %51 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %10

54:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_property_name_chars_strict(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %10

10:                                               ; preds = %48, %7
  %11 = phi ptr [ %5, %7 ], [ %50, %48 ]
  %12 = load i8, ptr %11, align 8, !tbaa !36, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = load ptr, ptr %8, align 8, !tbaa !38
  %18 = tail call i64 @strspn(ptr noundef %16, ptr noundef %17) #17
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #17
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %48, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(12) @.str.63) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %16, i64 %18
  %26 = load i8, ptr %25, align 1, !tbaa !39
  %27 = icmp eq i8 %26, 35
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = icmp eq i64 %18, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = add i64 %18, -1
  %32 = getelementptr inbounds i8, ptr %16, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !39
  %34 = icmp eq i8 %33, 44
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %28
  %36 = add i64 %18, 1
  %37 = getelementptr inbounds i8, ptr %16, i64 %36
  %38 = tail call i64 @strspn(ptr noundef %37, ptr noundef %17) #17
  br label %39

39:                                               ; preds = %35, %30, %24
  %40 = phi ptr [ %37, %35 ], [ %16, %30 ], [ %16, %24 ]
  %41 = phi i64 [ %38, %35 ], [ %18, %30 ], [ %18, %24 ]
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #17
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  store i32 3, ptr %9, align 4, !tbaa !22
  %45 = getelementptr inbounds i8, ptr %40, i64 %41
  %46 = load i8, ptr %45, align 1, !tbaa !39
  %47 = sext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull @.str.77, i32 noundef %47)
  br label %48

48:                                               ; preds = %44, %39, %21, %14, %10
  %49 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %10

52:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_node_name_chars_strict(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call i64 @strspn(ptr noundef %5, ptr noundef %7) #17
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !41
  %12 = icmp sgt i32 %11, %9
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %14, align 4, !tbaa !22
  %15 = shl i64 %8, 32
  %16 = ashr exact i64 %15, 32
  %17 = getelementptr inbounds i8, ptr %5, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !39
  %19 = sext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef %19)
  br label %20

20:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fixup_addr_size_cells(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  store i32 -1, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  store i32 -1, ptr %5, align 4, !tbaa !60
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.58) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @propval_cell(ptr noundef nonnull %6) #19
  store i32 %9, ptr %4, align 8, !tbaa !59
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.61) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @propval_cell(ptr noundef nonnull %11) #19
  store i32 %14, ptr %5, align 4, !tbaa !60
  br label %15

15:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_reg_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.82) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %11, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.83)
  br label %41

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !40
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %17, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @.str.84)
  %18 = load ptr, ptr %7, align 8, !tbaa !43
  %19 = load i32, ptr %13, align 8, !tbaa !40
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %19, %16 ], [ %14, %12 ]
  %22 = phi ptr [ %18, %16 ], [ %8, %12 ]
  %23 = getelementptr inbounds %struct.node, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = icmp eq i32 %24, -1
  %26 = select i1 %25, i32 2, i32 %24
  %27 = getelementptr inbounds %struct.node, ptr %22, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = icmp eq i32 %28, -1
  %30 = select i1 %29, i32 1, i32 %28
  %31 = add nsw i32 %30, %26
  %32 = shl i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %20
  %35 = srem i32 %21, %32
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi i32 [ %35, %34 ], [ %21, %20 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %40, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, i32 noundef %21, i32 noundef %26, i32 noundef %30)
  br label %41

41:                                               ; preds = %39, %36, %10, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_ranges_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %57, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %13, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.88, ptr noundef %5)
  br label %57

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, -1
  %18 = select i1 %17, i32 2, i32 %16
  %19 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = icmp eq i32 %20, -1
  %22 = select i1 %21, i32 1, i32 %20
  %23 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = icmp eq i32 %24, -1
  %26 = select i1 %25, i32 2, i32 %24
  %27 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !60
  %29 = icmp eq i32 %28, -1
  %30 = select i1 %29, i32 1, i32 %28
  %31 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !40
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %14
  %35 = icmp eq i32 %18, %26
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %37, align 4, !tbaa !22
  %38 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.89, ptr noundef %5, i32 noundef %26, ptr noundef %39, i32 noundef %18)
  br label %40

40:                                               ; preds = %36, %34
  %41 = icmp eq i32 %22, %30
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %43, align 4, !tbaa !22
  %44 = load ptr, ptr %9, align 8, !tbaa !43
  %45 = getelementptr inbounds %struct.node, ptr %44, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.90, ptr noundef %5, i32 noundef %30, ptr noundef %46, i32 noundef %22)
  br label %57

47:                                               ; preds = %14
  %48 = add nsw i32 %26, %18
  %49 = add nsw i32 %48, %30
  %50 = shl i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = srem i32 %32, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %47
  %56 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %56, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.91, ptr noundef %5, i32 noundef %32, i32 noundef %18, i32 noundef %26, i32 noundef %30)
  br label %57

57:                                               ; preds = %55, %52, %42, %40, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unit_address_vs_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_unitname(ptr noundef %2) #19
  %5 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.82) #19
  %6 = tail call ptr @get_subnode(ptr noundef %2, ptr noundef nonnull @.str.95) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = icmp eq ptr %5, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.87) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.property, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %8
  %18 = load i8, ptr %4, align 1, !tbaa !39
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %26

20:                                               ; preds = %13, %10
  %21 = load i8, ptr %4, align 1, !tbaa !39
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ @.str.96, %17 ], [ @.str.97, %20 ]
  %25 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %25, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %24)
  br label %26

26:                                               ; preds = %23, %20, %17, %3
  ret void
}

declare ptr @get_subnode(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_unit_address_format(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_unitname(ptr noundef %2) #19
  %5 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.node, ptr %6, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %8, %3
  %13 = load i8, ptr %4, align 1, !tbaa !39
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef nonnull %4, ptr noundef nonnull dereferenceable(3) @.str.99, i64 noundef 2) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %19, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.100)
  %20 = getelementptr inbounds i8, ptr %4, i64 2
  %21 = load i8, ptr %20, align 1, !tbaa !39
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i8 [ %21, %18 ], [ %13, %15 ]
  %24 = phi ptr [ %20, %18 ], [ %4, %15 ]
  %25 = icmp eq i8 %23, 48
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = tail call ptr @__ctype_b_loc() #22
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !39
  %31 = sext i8 %30 to i64
  %32 = getelementptr inbounds i16, ptr %28, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !62
  %34 = and i16 %33, 4096
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %37, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.101)
  br label %38

38:                                               ; preds = %36, %26, %22, %12, %8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal void @check_pci_bridge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.63) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.103) #17
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %70

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @pci_bus, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !41
  switch i32 %14, label %25 [
    i32 3, label %15
    i32 4, label %20
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %17, ptr noundef nonnull dereferenceable(3) @.str.103, i64 3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %25

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !26
  %23 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %22, ptr noundef nonnull dereferenceable(4) @.str.104, i64 4)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %15, %11
  %26 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %26, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.105)
  br label %27

27:                                               ; preds = %25, %20, %15
  %28 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.87) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %31, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.106)
  br label %32

32:                                               ; preds = %30, %27
  %33 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %37, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.107)
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %40 = load i32, ptr %39, align 4, !tbaa !60
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %43, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.108)
  br label %44

44:                                               ; preds = %42, %38
  %45 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.109) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %70, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !40
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.property, ptr %45, i64 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = load i32, ptr %53, align 4, !tbaa !18
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #19
  %56 = getelementptr inbounds i32, ptr %53, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !18
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #19
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %61, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %45, ptr noundef nonnull @.str.111)
  %62 = load i32, ptr %56, align 4, !tbaa !18
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #19
  br label %64

64:                                               ; preds = %60, %51
  %65 = phi i32 [ %63, %60 ], [ %58, %51 ]
  %66 = icmp ugt i32 %65, 255
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %47
  %68 = phi ptr [ @.str.110, %47 ], [ @.str.112, %64 ]
  %69 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %69, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %45, ptr noundef nonnull %68)
  br label %70

70:                                               ; preds = %67, %64, %44, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_pci_device_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [5 x i8], align 1
  %5 = tail call ptr @get_unitname(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, @pci_bus
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = getelementptr inbounds i32, ptr %18, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds i32, ptr %18, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %16
  %27 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull @.str.115)
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, ptr %18, align 4, !tbaa !18
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #19
  %31 = lshr i32 %30, 11
  %32 = and i32 %31, 31
  %33 = lshr i32 %30, 8
  %34 = and i32 %33, 7
  %35 = icmp ult i32 %30, 16777216
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %37, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull @.str.116)
  br label %38

38:                                               ; preds = %36, %28
  %39 = and i32 %30, 255
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %42, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull @.str.117)
  br label %43

43:                                               ; preds = %41, %38
  %44 = icmp eq i32 %34, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 5, ptr noundef nonnull @.str.118, i32 noundef %32) #19
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %4) #17
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45, %43
  %50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 5, ptr noundef nonnull @.str.119, i32 noundef %32, i32 noundef %34) #19
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %4) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %54, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull %4)
  br label %55

55:                                               ; preds = %53, %49, %45, %13, %9, %3
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @check_pci_device_bus_num(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %5, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, @pci_bus
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %39, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.property, ptr %12, i64 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = load i32, ptr %16, align 4, !tbaa !18
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = load ptr, ptr %4, align 8, !tbaa !43
  %21 = tail call ptr @get_property(ptr noundef %20, ptr noundef nonnull @.str.109) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.property, ptr %21, i64 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = load i32, ptr %25, align 4, !tbaa !18
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #19
  %28 = getelementptr inbounds i32, ptr %25, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !18
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #19
  br label %31

31:                                               ; preds = %23, %14
  %32 = phi i32 [ %27, %23 ], [ 0, %14 ]
  %33 = phi i32 [ %30, %23 ], [ 0, %14 ]
  %34 = icmp ult i32 %19, %32
  %35 = icmp ugt i32 %19, %33
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %38, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %21, ptr noundef nonnull @.str.122, i32 noundef %19, i32 noundef %32, i32 noundef %33)
  br label %39

39:                                               ; preds = %37, %31, %11, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_simple_bus_bridge(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.71) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.property, ptr %4, i64 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = load i32, ptr %7, align 8, !tbaa !40
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = ptrtoint ptr %12 to i64
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %9, %14 ], [ %25, %20 ]
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(11) @.str.124) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i64
  %22 = sub i64 %15, %21
  %23 = tail call i64 @strnlen(ptr noundef %17, i64 noundef %22) #17
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i8, ptr %17, i64 %24
  %26 = icmp ult ptr %25, %12
  br i1 %26, label %16, label %29

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @simple_bus, ptr %28, align 8, !tbaa !61
  br label %29

29:                                               ; preds = %27, %20, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_simple_bus_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [17 x i8], align 16
  %5 = tail call ptr @get_unitname(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %102, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, @simple_bus
  br i1 %12, label %13, label %102

13:                                               ; preds = %9
  %14 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  br label %35

19:                                               ; preds = %13
  %20 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.87) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !59
  %31 = icmp eq i32 %30, -1
  %32 = select i1 %31, i32 2, i32 %30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %28, i64 %33
  br label %35

35:                                               ; preds = %26, %16
  %36 = phi ptr [ %18, %16 ], [ %34, %26 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35, %22, %19
  %39 = load ptr, ptr %6, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.node, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %102, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  %45 = load ptr, ptr %44, align 8, !tbaa !61
  %46 = icmp eq ptr %45, @simple_bus
  br i1 %46, label %102, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %48, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.126)
  br label %102

49:                                               ; preds = %35
  %50 = load ptr, ptr %6, align 8, !tbaa !43
  %51 = getelementptr inbounds %struct.node, ptr %50, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !59
  %53 = icmp eq i32 %52, -1
  %54 = select i1 %53, i32 2, i32 %52
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %95, label %56

56:                                               ; preds = %49
  %57 = add i32 %54, -1
  %58 = and i32 %54, 3
  %59 = icmp ult i32 %57, 3
  br i1 %59, label %78, label %60

60:                                               ; preds = %56
  %61 = and i32 %54, -4
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi ptr [ %36, %60 ], [ %65, %62 ]
  %64 = phi i32 [ 0, %60 ], [ %66, %62 ]
  %65 = getelementptr inbounds i32, ptr %63, i64 4
  %66 = add i32 %64, 4
  %67 = icmp eq i32 %66, %61
  br i1 %67, label %68, label %62

68:                                               ; preds = %62
  %69 = getelementptr inbounds i32, ptr %63, i64 3
  %70 = load i32, ptr %69, align 4, !tbaa !18
  %71 = zext i32 %70 to i64
  %72 = shl nuw i64 %71, 32
  %73 = getelementptr inbounds i32, ptr %63, i64 2
  %74 = load i32, ptr %73, align 4, !tbaa !18
  %75 = zext i32 %74 to i64
  %76 = or i64 %72, %75
  %77 = call i64 @llvm.bswap.i64(i64 %76)
  br label %78

78:                                               ; preds = %68, %56
  %79 = phi i64 [ undef, %56 ], [ %77, %68 ]
  %80 = phi ptr [ %36, %56 ], [ %65, %68 ]
  %81 = phi i64 [ 0, %56 ], [ %77, %68 ]
  %82 = icmp eq i32 %58, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %83, %78
  %84 = phi ptr [ %88, %83 ], [ %80, %78 ]
  %85 = phi i64 [ %92, %83 ], [ %81, %78 ]
  %86 = phi i32 [ %93, %83 ], [ 0, %78 ]
  %87 = shl i64 %85, 32
  %88 = getelementptr inbounds i32, ptr %84, i64 1
  %89 = load i32, ptr %84, align 4, !tbaa !18
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #19
  %91 = zext i32 %90 to i64
  %92 = or i64 %87, %91
  %93 = add i32 %86, 1
  %94 = icmp eq i32 %93, %58
  br i1 %94, label %95, label %83, !llvm.loop !64

95:                                               ; preds = %83, %78, %49
  %96 = phi i64 [ 0, %49 ], [ %79, %78 ], [ %92, %83 ]
  %97 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 17, ptr noundef nonnull @.str.127, i64 noundef %96) #19
  %98 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %4) #17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %101, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull %4)
  br label %102

102:                                              ; preds = %100, %95, %47, %43, %38, %9, %3
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_i2c_bus_bridge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !41
  switch i32 %5, label %49 [
    i32 7, label %6
    i32 3, label %18
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.130, i64 7)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %8, ptr noundef nonnull dereferenceable(7) @.str.131, i64 7)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @i2c_bus, ptr %15, align 8, !tbaa !61
  %16 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !66
  br label %34

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !26
  %21 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %20, ptr noundef nonnull dereferenceable(3) @.str.132, i64 3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %30, %27 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.node, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27

32:                                               ; preds = %27, %23
  %33 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @i2c_bus, ptr %33, align 8, !tbaa !61
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi ptr [ %25, %32 ], [ %17, %14 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !59
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %42, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.133)
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %45 = load i32, ptr %44, align 4, !tbaa !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %48, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.134)
  br label %49

49:                                               ; preds = %47, %43, %34, %18, %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_i2c_bus_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [17 x i8], align 16
  %5 = tail call ptr @get_unitname(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %55, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, @i2c_bus
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  %14 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %21, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.136)
  br label %55

22:                                               ; preds = %16
  %23 = load i32, ptr %18, align 4, !tbaa !18
  %24 = and i32 %23, -65
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 17, ptr noundef nonnull @.str.118, i32 noundef %25) #19
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %4) #17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %30, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %4)
  br label %31

31:                                               ; preds = %29, %22
  %32 = getelementptr inbounds %struct.property, ptr %14, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !40
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %37

37:                                               ; preds = %52, %35
  %38 = phi ptr [ %18, %35 ], [ %40, %52 ]
  %39 = phi i32 [ %33, %35 ], [ %53, %52 ]
  %40 = getelementptr inbounds i32, ptr %38, i64 1
  %41 = load i32, ptr %38, align 4, !tbaa !18
  %42 = call i32 @llvm.bswap.i32(i32 %41) #19
  %43 = and i32 %42, -1073741825
  %44 = icmp sgt i32 %42, -1
  %45 = and i32 %42, 1073740800
  %46 = icmp eq i32 %45, 0
  %47 = or i1 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = icmp ugt i32 %43, 127
  br i1 %49, label %50, label %52

50:                                               ; preds = %48, %37
  %51 = phi ptr [ @.str.138, %37 ], [ @.str.139, %48 ]
  store i32 3, ptr %36, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %14, ptr noundef nonnull %51, i32 noundef %43)
  br label %52

52:                                               ; preds = %50, %48
  %53 = add nsw i32 %39, -4
  %54 = icmp sgt i32 %39, 4
  br i1 %54, label %37, label %55

55:                                               ; preds = %52, %31, %20, %9, %3
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_spi_bus_bridge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %9, ptr noundef nonnull dereferenceable(3) @.str.141, i64 3)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @spi_bus, ptr %13, align 8, !tbaa !61
  br label %66

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %20 = load i32, ptr %19, align 4, !tbaa !60
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  br label %28

28:                                               ; preds = %53, %26
  %29 = phi ptr [ %24, %26 ], [ %55, %53 ]
  %30 = load i8, ptr %29, align 8, !tbaa !23, !range !14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %46, %32
  %37 = phi ptr [ %48, %46 ], [ %34, %32 ]
  %38 = load i8, ptr %37, align 8, !tbaa !36, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.property, ptr %37, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !33
  %43 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %42, ptr noundef nonnull dereferenceable(4) @.str.142, i64 4)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store ptr @spi_bus, ptr %27, align 8, !tbaa !61
  br label %57

46:                                               ; preds = %40, %36
  %47 = getelementptr inbounds %struct.property, ptr %37, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %36

50:                                               ; preds = %46, %32
  %51 = load ptr, ptr %27, align 8, !tbaa !61
  %52 = icmp eq ptr %51, @spi_bus
  br i1 %52, label %57, label %53

53:                                               ; preds = %50, %28
  %54 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %28

57:                                               ; preds = %53, %50, %45, %22
  %58 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !61
  %60 = icmp eq ptr %59, @spi_bus
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %65, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.143)
  br label %66

66:                                               ; preds = %64, %61, %57, %12
  %67 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = icmp eq ptr %68, @spi_bus
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !66
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.144) #19
  %76 = icmp eq ptr %75, null
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !59
  %80 = icmp eq i32 %79, -1
  %81 = select i1 %80, i32 2, i32 %79
  %82 = icmp eq i32 %81, %77
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %84, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.145)
  br label %85

85:                                               ; preds = %83, %74
  %86 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %87 = load i32, ptr %86, align 4, !tbaa !60
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %90, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.146)
  br label %91

91:                                               ; preds = %89, %85, %70, %66, %18, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_spi_bus_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [9 x i8], align 1
  %5 = tail call ptr @get_unitname(ptr noundef %2) #19
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #19
  %6 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.node, ptr %7, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = icmp eq ptr %11, @spi_bus
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = tail call ptr @get_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.144) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.property, ptr %17, i64 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16
  %24 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %24, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.136)
  br label %33

25:                                               ; preds = %19
  %26 = load i32, ptr %21, align 4, !tbaa !18
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #19
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 9, ptr noundef nonnull @.str.118, i32 noundef %27) #19
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %4) #17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %32, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull %4)
  br label %33

33:                                               ; preds = %31, %25, %23, %13, %9, %3
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_avoid_default_addr_size(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %9 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.87) #19
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load ptr, ptr %4, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.node, ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %19, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.151)
  %20 = load ptr, ptr %4, align 8, !tbaa !43
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %20, %18 ], [ %14, %13 ]
  %23 = getelementptr inbounds %struct.node, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 4, !tbaa !60
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.152)
  br label %28

28:                                               ; preds = %26, %21, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_avoid_unnecessary_addr_size(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.87) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %31, %18
  %23 = phi i8 [ %32, %31 ], [ 0, %18 ]
  %24 = phi ptr [ %34, %31 ], [ %20, %18 ]
  %25 = load i8, ptr %24, align 8, !tbaa !23, !range !14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call ptr @get_property(ptr noundef nonnull %24, ptr noundef nonnull @.str.82) #19
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %23, i8 1
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i8 [ %23, %22 ], [ %30, %27 ]
  %33 = getelementptr inbounds %struct.node, ptr %24, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22

36:                                               ; preds = %31
  %37 = and i8 %32, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %40, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.154)
  br label %41

41:                                               ; preds = %39, %36, %18, %15, %11, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unique_unit_address(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @check_unique_unit_address_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_unique_unit_address_common(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %18

18:                                               ; preds = %65, %16
  %19 = phi ptr [ %14, %16 ], [ %67, %65 ]
  %20 = load i8, ptr %19, align 8, !tbaa !23, !range !14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = tail call ptr @get_unitname(ptr noundef nonnull %19) #19
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %65, label %26

26:                                               ; preds = %22
  br i1 %3, label %27, label %35

27:                                               ; preds = %26
  %28 = tail call ptr @get_property(ptr noundef nonnull %19, ptr noundef nonnull @.str.67) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.property, ptr %28, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.157, ptr noundef nonnull dereferenceable(1) %32) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %65, label %35

35:                                               ; preds = %30, %27, %26
  %36 = load ptr, ptr %13, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %65, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 6
  br label %40

40:                                               ; preds = %61, %38
  %41 = phi ptr [ %36, %38 ], [ %63, %61 ]
  %42 = load i8, ptr %41, align 8, !tbaa !23, !range !14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = tail call ptr @get_unitname(ptr noundef nonnull %41) #19
  %46 = icmp eq ptr %19, %41
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  br i1 %3, label %48, label %56

48:                                               ; preds = %47
  %49 = tail call ptr @get_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.67) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.property, ptr %49, i64 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.157, ptr noundef nonnull dereferenceable(1) %53) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51, %48, %47
  %57 = tail call i32 @strcmp(ptr noundef nonnull %23, ptr noundef nonnull dereferenceable(1) %45) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  store i32 3, ptr %17, align 4, !tbaa !22
  %60 = load ptr, ptr %39, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef %60)
  br label %61

61:                                               ; preds = %59, %56, %51, %40
  %62 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %40

65:                                               ; preds = %61, %44, %35, %30, %22, %18
  %66 = getelementptr inbounds %struct.node, ptr %19, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !25
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %18

69:                                               ; preds = %65, %12, %8, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_unique_unit_address_if_enabled(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @check_unique_unit_address_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_obsolete_chosen_interrupt_controller(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = tail call ptr @get_node_by_path(ptr noundef %2, ptr noundef nonnull @.str.160) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.161) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %14, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull @.str.162)
  br label %15

15:                                               ; preds = %13, %10, %7, %3
  ret void
}

declare ptr @get_node_by_path(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_is_root(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %15, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.165)
  br label %16

16:                                               ; preds = %14, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_bootargs(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.167) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.property, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef %13) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 2
  %19 = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %18) #19
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %21, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %15, ptr noundef nonnull @.str.29) #19
  br label %22

22:                                               ; preds = %20, %17, %11, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_chosen_node_stdout_path(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(7) @.str.164) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.169) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.170) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %15, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef nonnull @.str.171)
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %9, %8 ], [ %12, %14 ]
  %18 = getelementptr inbounds %struct.property, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !38
  %21 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef %19) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.property, ptr %21, i64 0, i32 2
  %25 = tail call zeroext i1 @data_is_one_string(ptr noundef nonnull byval(%struct.data) align 8 %24) #19
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %27, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %21, ptr noundef nonnull @.str.29) #19
  br label %28

28:                                               ; preds = %26, %23, %16, %11, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_provider_cells_property(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call ptr @get_property(ptr noundef %2, ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call fastcc void @check_property_phandle_args(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %5)
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_property_phandle_args(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %5
  %13 = icmp ult i32 %9, 4
  br i1 %13, label %88, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 2, i32 2
  %16 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.provider, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.provider, ptr %4, i64 0, i32 2
  br label %21

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %20, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.173, i32 noundef %9, i64 noundef 4)
  br label %88

21:                                               ; preds = %82, %14
  %22 = phi i64 [ 0, %14 ], [ %83, %82 ]
  %23 = phi i32 [ 0, %14 ], [ %84, %82 ]
  %24 = tail call i32 @propval_cell_n(ptr noundef nonnull %3, i32 noundef %23) #19
  %25 = add i32 %24, -1
  %26 = icmp ult i32 %25, -2
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = load ptr, ptr %15, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %27
  %31 = shl nuw nsw i64 %22, 2
  br label %32

32:                                               ; preds = %41, %30
  %33 = phi ptr [ %28, %30 ], [ %43, %41 ]
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.marker, ptr %33, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = zext i32 %38 to i64
  %40 = icmp eq i64 %31, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.marker, ptr %33, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %32

45:                                               ; preds = %41
  store i32 3, ptr %16, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.174, i32 noundef %23)
  br label %46

46:                                               ; preds = %45, %36, %27
  %47 = tail call ptr @get_node_by_phandle(ptr noundef %7, i32 noundef %24) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 3, ptr %16, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @.str.175, i32 noundef %23)
  br label %88

50:                                               ; preds = %46
  %51 = load ptr, ptr %17, align 8, !tbaa !69
  %52 = tail call ptr @get_property(ptr noundef nonnull %47, ptr noundef %51) #19
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @propval_cell(ptr noundef nonnull %52) #19
  br label %65

56:                                               ; preds = %50
  %57 = load i8, ptr %18, align 8, !tbaa !70, !range !14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  store i32 3, ptr %16, align 4, !tbaa !22
  %60 = load ptr, ptr %17, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.node, ptr %47, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !32
  %63 = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !33
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef %60, ptr noundef %62, ptr noundef %64, i32 noundef %23)
  br label %88

65:                                               ; preds = %56, %54
  %66 = phi i32 [ %55, %54 ], [ 0, %56 ]
  %67 = load i32, ptr %8, align 8, !tbaa !40
  %68 = zext i32 %67 to i64
  %69 = add i32 %23, 1
  %70 = add i32 %69, %66
  %71 = zext i32 %70 to i64
  %72 = shl nuw nsw i64 %71, 2
  %73 = icmp ugt i64 %72, %68
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  store i32 3, ptr %16, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.177, i32 noundef %67, i32 noundef %66)
  br label %82

75:                                               ; preds = %21
  %76 = load i32, ptr %1, align 8, !tbaa !54
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = add nuw i32 %23, 1
  %81 = zext i32 %80 to i64
  br label %82

82:                                               ; preds = %79, %74, %65
  %83 = phi i64 [ %81, %79 ], [ %71, %65 ], [ %71, %74 ]
  %84 = phi i32 [ %80, %79 ], [ %70, %65 ], [ %70, %74 ]
  %85 = load i32, ptr %8, align 8, !tbaa !40
  %86 = lshr i32 %85, 2
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %21, label %88

88:                                               ; preds = %82, %75, %59, %49, %19, %12
  ret void
}

declare i32 @propval_cell_n(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal void @check_deprecated_gpio_property(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %28, %7
  %10 = phi ptr [ %5, %7 ], [ %30, %28 ]
  %11 = load i8, ptr %10, align 8, !tbaa !36, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = tail call fastcc zeroext i1 @prop_is_gpio(ptr noundef nonnull %10)
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #17
  %19 = and i64 %18, 4294967292
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = and i64 %18, 4294967295
  %23 = getelementptr inbounds i8, ptr %17, i64 -4
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(5) @.str.242) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 3, ptr %8, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull @.str.243)
  br label %28

28:                                               ; preds = %27, %21, %15, %13, %9
  %29 = getelementptr inbounds %struct.property, ptr %10, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9

32:                                               ; preds = %28, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc zeroext i1 @prop_is_gpio(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.property, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %5 = trunc i64 %4 to i32
  %6 = icmp ult i32 %5, 9
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = and i64 %4, 4294967295
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 -9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(10) @.str.244) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %15

13:                                               ; preds = %1
  %14 = icmp ult i32 %5, 6
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %7
  %16 = and i64 %4, 4294967295
  %17 = getelementptr inbounds i8, ptr %3, i64 %16
  %18 = getelementptr inbounds i8, ptr %17, i64 -6
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(7) @.str.245) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %15, %13
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(6) @.str.246) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = icmp ult i32 %5, 5
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = and i64 %4, 4294967295
  %28 = getelementptr inbounds i8, ptr %3, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 -5
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(6) @.str.247) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26, %24
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(5) @.str.242) #17
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %26, %21, %15, %7
  %36 = phi i1 [ false, %7 ], [ true, %26 ], [ true, %21 ], [ true, %15 ], [ %34, %32 ]
  ret i1 %36
}

; Function Attrs: nounwind uwtable
define internal void @check_gpios_property(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.provider, align 8
  %5 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.249) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.provider, ptr %4, i64 0, i32 1
  %13 = getelementptr inbounds %struct.provider, ptr %4, i64 0, i32 2
  br label %14

14:                                               ; preds = %24, %11
  %15 = phi ptr [ %9, %11 ], [ %26, %24 ]
  %16 = load i8, ptr %15, align 8, !tbaa !36, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %19 = tail call fastcc zeroext i1 @prop_is_gpio(ptr noundef nonnull %15)
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !33
  store ptr %22, ptr %4, align 8, !tbaa !67
  store ptr @.str.250, ptr %12, align 8, !tbaa !69
  store i8 0, ptr %13, align 8, !tbaa !70
  call fastcc void @check_property_phandle_args(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %4)
  br label %23

23:                                               ; preds = %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.property, ptr %15, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14

28:                                               ; preds = %24, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupts_property(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.252) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %72, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !40
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %14, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.253, i32 noundef %10, i64 noundef 4)
  br label %15

15:                                               ; preds = %13, %8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %19

19:                                               ; preds = %51, %17
  %20 = phi ptr [ %2, %17 ], [ %53, %51 ]
  %21 = icmp eq ptr %20, %2
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @get_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.161) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = tail call ptr @get_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.260) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %25, %19
  %29 = tail call ptr @get_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.254) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @propval_cell(ptr noundef nonnull %29) #19
  %33 = add i32 %32, -1
  %34 = icmp ult i32 %33, -2
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %1, align 8, !tbaa !54
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  store i32 3, ptr %18, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %20, ptr noundef nonnull %29, ptr noundef nonnull @.str.255)
  br label %55

40:                                               ; preds = %31
  %41 = tail call ptr @get_node_by_phandle(ptr noundef %5, i32 noundef %32) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 3, ptr %18, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %20, ptr noundef nonnull %29, ptr noundef nonnull @.str.256)
  br label %72

44:                                               ; preds = %40
  %45 = tail call ptr @get_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.161) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = tail call ptr @get_property(ptr noundef nonnull %41, ptr noundef nonnull @.str.260) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  store i32 3, ptr %18, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %41, ptr noundef null, ptr noundef nonnull @.str.257)
  br label %57

51:                                               ; preds = %28
  %52 = getelementptr inbounds %struct.node, ptr %20, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !43
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %19

55:                                               ; preds = %51, %39, %15
  %56 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %56, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.258)
  br label %72

57:                                               ; preds = %50, %47, %44, %25, %22
  %58 = phi ptr [ %41, %50 ], [ %41, %47 ], [ %41, %44 ], [ %20, %25 ], [ %20, %22 ]
  %59 = tail call ptr @get_property(ptr noundef nonnull %58, ptr noundef nonnull @.str.195) #19
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @propval_cell(ptr noundef nonnull %59) #19
  %63 = load i32, ptr %9, align 8, !tbaa !40
  %64 = shl i32 %62, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = srem i32 %63, %64
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ %63, %61 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  store i32 3, ptr %18, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %59, ptr noundef nonnull @.str.259, i32 noundef %63, i32 noundef %64)
  br label %72

72:                                               ; preds = %71, %68, %57, %55, %43, %35, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupt_provider(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.161) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.260) #19
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i1 [ false, %3 ], [ %8, %6 ]
  %11 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.195) #19
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = select i1 %10, i1 %12, i1 false
  br i1 %15, label %16, label %19

16:                                               ; preds = %14, %9
  %17 = phi ptr [ @.str.262, %9 ], [ @.str.263, %14 ]
  %18 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %18, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull %17)
  br label %19

19:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_interrupt_map(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.260) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %86, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %13, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.265)
  br label %86

14:                                               ; preds = %8
  %15 = zext i32 %10 to i64
  %16 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.195) #19
  %17 = tail call i32 @propval_cell(ptr noundef %16) #19
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, %15
  %20 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.266) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.property, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %19, 2
  %27 = icmp eq i64 %26, %25
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %29, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %20, ptr noundef nonnull @.str.267, i32 noundef %24, i64 noundef %26)
  br label %30

30:                                               ; preds = %28, %22, %14
  %31 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !40
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %36, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.173, i32 noundef %32, i64 noundef 4)
  br label %86

37:                                               ; preds = %30
  %38 = lshr i32 %32, 2
  %39 = zext i32 %38 to i64
  %40 = icmp ult i32 %32, 4
  br i1 %40, label %86, label %41

41:                                               ; preds = %81, %37
  %42 = phi i64 [ %84, %81 ], [ 0, %37 ]
  %43 = add i64 %42, %19
  %44 = icmp ult i64 %43, %39
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %46, align 4, !tbaa !22
  %47 = load i32, ptr %31, align 8, !tbaa !40
  %48 = shl i64 %43, 2
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.268, i32 noundef %47, i64 noundef %48)
  br label %86

49:                                               ; preds = %41
  %50 = trunc i64 %43 to i32
  %51 = tail call i32 @propval_cell_n(ptr noundef nonnull %6, i32 noundef %50) #19
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, -2
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %1, align 8, !tbaa !54
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %59, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.269, i64 noundef %43, i32 noundef %51)
  br label %86

60:                                               ; preds = %49
  %61 = tail call ptr @get_node_by_phandle(ptr noundef %5, i32 noundef %51) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %64, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @.str.270, i32 noundef %51, i64 noundef %43)
  br label %86

65:                                               ; preds = %60
  %66 = tail call ptr @get_property(ptr noundef nonnull %61, ptr noundef nonnull @.str.195) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @propval_cell(ptr noundef nonnull %66) #19
  %70 = zext i32 %69 to i64
  %71 = tail call ptr @get_property(ptr noundef nonnull %61, ptr noundef nonnull @.str.58) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %81, label %77

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %74, align 4, !tbaa !22
  %75 = getelementptr inbounds %struct.node, ptr %61, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.271, ptr noundef %76, i64 noundef %43)
  br label %86

77:                                               ; preds = %68
  %78 = tail call i32 @propval_cell(ptr noundef nonnull %71) #19
  %79 = zext i32 %78 to i64
  %80 = add nuw nsw i64 %79, %70
  br label %81

81:                                               ; preds = %77, %68
  %82 = phi i64 [ %80, %77 ], [ %70, %68 ]
  %83 = add nuw i64 %43, 1
  %84 = add i64 %83, %82
  %85 = icmp ult i64 %84, %39
  br i1 %85, label %41, label %86

86:                                               ; preds = %81, %73, %63, %58, %54, %45, %37, %35, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_alias_paths(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.273) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %45, %12
  %16 = phi ptr [ %10, %12 ], [ %47, %45 ]
  %17 = load i8, ptr %16, align 8, !tbaa !36, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.property, ptr %16, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(8) @.str.43) #17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(14) @.str.44) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.property, ptr %16, i64 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %13, align 8, !tbaa !19
  %33 = tail call ptr @get_node_by_path(ptr noundef %32, ptr noundef nonnull %29) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load ptr, ptr %28, align 8, !tbaa !42
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi ptr [ %36, %35 ], [ null, %27 ]
  store i32 3, ptr %14, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %16, ptr noundef nonnull @.str.274, ptr noundef %38)
  br label %45

39:                                               ; preds = %31
  %40 = load ptr, ptr %20, align 8, !tbaa !33
  %41 = tail call i64 @strspn(ptr noundef %40, ptr noundef nonnull @.str.275) #17
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #17
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 3, ptr %14, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.276)
  br label %45

45:                                               ; preds = %44, %39, %37, %24, %19, %15
  %46 = getelementptr inbounds %struct.property, ptr %16, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15

49:                                               ; preds = %45, %8, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_nodes(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %43, %3
  %8 = phi ptr [ %45, %43 ], [ %5, %3 ]
  %9 = load i8, ptr %8, align 8, !tbaa !23, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !41
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %17, ptr noundef nonnull dereferenceable(8) @.str.278, i64 8)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %11
  %21 = tail call ptr @get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.279) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %15
  %24 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  store ptr @graph_port_bus, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.node, ptr %26, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(6) @.str.280) #17
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.82) #19
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %25, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi ptr [ %39, %38 ], [ %26, %30 ]
  %42 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 12
  store ptr @graph_ports_bus, ptr %42, align 8, !tbaa !61
  br label %47

43:                                               ; preds = %20, %7
  %44 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7

47:                                               ; preds = %43, %40, %35, %23, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_child_address(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, @graph_ports_bus
  %7 = icmp eq ptr %5, @graph_port_bus
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %29, %26 ], [ %11, %9 ]
  %15 = phi i32 [ %27, %26 ], [ 0, %9 ]
  %16 = load i8, ptr %14, align 8, !tbaa !23, !range !14
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = tail call ptr @get_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.82) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @propval_cell(ptr noundef nonnull %19) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21, %18
  %25 = add nsw i32 %15, 1
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ %15, %13 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.node, ptr %14, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %13

31:                                               ; preds = %26
  %32 = icmp eq i32 %27, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !59
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %38, align 4, !tbaa !22
  %39 = load ptr, ptr %10, align 8, !tbaa !66
  %40 = getelementptr inbounds %struct.node, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.284, ptr noundef %41)
  br label %42

42:                                               ; preds = %37, %33, %31, %21, %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_port(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, @graph_port_bus
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %13, ptr noundef nonnull dereferenceable(4) @.str.286, i64 4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %7
  %17 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %17, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.287)
  br label %18

18:                                               ; preds = %16, %11
  tail call fastcc void @check_graph_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %19

19:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_graph_reg(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #19
  %5 = tail call ptr @get_unitname(ptr noundef %2) #19
  %6 = tail call ptr @get_property(ptr noundef %2, ptr noundef nonnull @.str.82) #19
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %51

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %19, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.288)
  br label %51

20:                                               ; preds = %14
  %21 = tail call i32 @propval_cell(ptr noundef nonnull %6) #19
  %22 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %4, i64 noundef 9, ptr noundef nonnull @.str.118, i32 noundef %21) #19
  %23 = call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %26, align 4, !tbaa !22
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.289, ptr noundef nonnull %4)
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.node, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %34, align 4, !tbaa !22
  %35 = call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.58) #19
  %36 = load ptr, ptr %28, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.node, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !59
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %35, ptr noundef nonnull @.str.290, i32 noundef %38)
  %39 = load ptr, ptr %28, align 8, !tbaa !43
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi ptr [ %39, %33 ], [ %29, %27 ]
  %42 = getelementptr inbounds %struct.node, ptr %41, i64 0, i32 10
  %43 = load i32, ptr %42, align 4, !tbaa !60
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %46, align 4, !tbaa !22
  %47 = call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.61) #19
  %48 = load ptr, ptr %28, align 8, !tbaa !43
  %49 = getelementptr inbounds %struct.node, ptr %48, i64 0, i32 10
  %50 = load i32, ptr %49, align 4, !tbaa !60
  call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %47, ptr noundef nonnull @.str.291, i32 noundef %50)
  br label %51

51:                                               ; preds = %45, %40, %18, %3
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_graph_endpoint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, ptr %5, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, @graph_port_bus
  br i1 %10, label %11, label %56

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !41
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %17, ptr noundef nonnull dereferenceable(8) @.str.278, i64 8)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %21, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.293)
  br label %22

22:                                               ; preds = %20, %15
  tail call fastcc void @check_graph_reg(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  %23 = tail call ptr @get_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.279) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @propval_cell(ptr noundef nonnull %23) #19
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, -2
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dt_info, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = tail call ptr @get_node_by_phandle(ptr noundef %31, i32 noundef %26) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %35, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %23, ptr noundef nonnull @.str.295) #19
  br label %56

36:                                               ; preds = %29
  %37 = tail call ptr @get_property(ptr noundef nonnull %32, ptr noundef nonnull @.str.279) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @propval_cell(ptr noundef nonnull %37) #19
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, -2
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load ptr, ptr %30, align 8, !tbaa !19
  %45 = tail call ptr @get_node_by_phandle(ptr noundef %44, i32 noundef %40) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %48, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %32, ptr noundef nonnull %37, ptr noundef nonnull @.str.295) #19
  br label %49

49:                                               ; preds = %47, %43, %39, %36
  %50 = phi ptr [ null, %36 ], [ null, %39 ], [ null, %47 ], [ %45, %43 ]
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %53, align 4, !tbaa !22
  %54 = getelementptr inbounds %struct.node, ptr %32, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !32
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull @.str.294, ptr noundef %55)
  br label %56

56:                                               ; preds = %52, %49, %34, %25, %22, %7, %3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @check_always_fail(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #6 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 5
  store i32 3, ptr %4, align 4, !tbaa !22
  tail call void (ptr, ptr, ptr, ptr, ptr, ...) @check_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.297)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @check_nodes_props(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.check, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #19
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.node, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %17, %8
  %13 = phi ptr [ %19, %17 ], [ %10, %8 ]
  %14 = load i8, ptr %13, align 8, !tbaa !23, !range !14
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call fastcc void @check_nodes_props(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %13)
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.node, ptr %13, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12

21:                                               ; preds = %17, %8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #16

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"check", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !11, i64 25, !7, i64 28, !11, i64 32, !12, i64 36, !6, i64 40}
!11 = !{!"_Bool", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!10, !11, i64 24}
!14 = !{i8 0, i8 2}
!15 = !{!10, !11, i64 25}
!16 = !{!10, !12, i64 36}
!17 = !{!10, !6, i64 40}
!18 = !{!12, !12, i64 0}
!19 = !{!20, !6, i64 24}
!20 = !{!"dt_info", !12, i64 0, !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 32}
!21 = !{!10, !11, i64 32}
!22 = !{!10, !7, i64 28}
!23 = !{!24, !11, i64 0}
!24 = !{!"node", !11, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !6, i64 72, !6, i64 80, !6, i64 88, !11, i64 96, !11, i64 97}
!25 = !{!24, !6, i64 40}
!26 = !{!24, !6, i64 8}
!27 = !{!28, !6, i64 56}
!28 = !{!"property", !11, i64 0, !6, i64 8, !29, i64 16, !6, i64 40, !6, i64 48, !6, i64 56}
!29 = !{!"data", !12, i64 0, !6, i64 8, !6, i64 16}
!30 = !{!24, !6, i64 88}
!31 = !{!20, !6, i64 32}
!32 = !{!24, !6, i64 48}
!33 = !{!28, !6, i64 8}
!34 = !{!35, !6, i64 24}
!35 = !{!"srcpos", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !6, i64 16, !6, i64 24}
!36 = !{!28, !11, i64 0}
!37 = !{!28, !6, i64 40}
!38 = !{!10, !6, i64 16}
!39 = !{!7, !7, i64 0}
!40 = !{!28, !12, i64 16}
!41 = !{!24, !12, i64 56}
!42 = !{!28, !6, i64 24}
!43 = !{!24, !6, i64 32}
!44 = !{!45, !11, i64 0}
!45 = !{!"label", !11, i64 0, !6, i64 8, !6, i64 16}
!46 = !{!45, !6, i64 8}
!47 = !{!28, !6, i64 32}
!48 = !{!49, !7, i64 0}
!49 = !{!"marker", !7, i64 0, !12, i64 4, !6, i64 8, !6, i64 16}
!50 = !{!49, !6, i64 8}
!51 = !{!49, !6, i64 16}
!52 = !{!24, !12, i64 60}
!53 = !{!49, !12, i64 4}
!54 = !{!20, !12, i64 0}
!55 = !{i64 0, i64 4, !18, i64 8, i64 8, !5, i64 16, i64 8, !5}
!56 = !{!24, !6, i64 72}
!57 = !{!24, !11, i64 96}
!58 = !{!24, !11, i64 97}
!59 = !{!24, !12, i64 64}
!60 = !{!24, !12, i64 68}
!61 = !{!24, !6, i64 80}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !7, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = !{!24, !6, i64 24}
!67 = !{!68, !6, i64 0}
!68 = !{!"provider", !6, i64 0, !6, i64 8, !11, i64 16}
!69 = !{!68, !6, i64 8}
!70 = !{!68, !11, i64 16}
!71 = !{!10, !6, i64 8}
