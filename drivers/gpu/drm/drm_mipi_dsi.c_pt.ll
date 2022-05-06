; ModuleID = '/llk/IR/drivers/gpu/drm/drm_mipi_dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_mipi_dsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_mipi_dsi_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_mipi_dsi_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_mipi_dsi_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_device_register_full\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mipi_dsi_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mipi_dsi_device_register_full\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mipi_dsi_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_mipi_dsi_host_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_mipi_dsi_host_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_mipi_dsi_host_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_host_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_host_register\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_host_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_host_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_host_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_host_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_detach\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mipi_dsi_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mipi_dsi_attach\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mipi_dsi_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_packet_format_is_short:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_packet_format_is_short\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_packet_format_is_short:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_packet_format_is_long:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_packet_format_is_long\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_packet_format_is_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_create_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_create_packet\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_create_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_shutdown_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_shutdown_peripheral\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_shutdown_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_turn_on_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_turn_on_peripheral\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_turn_on_peripheral:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_set_maximum_return_packet_size:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_set_maximum_return_packet_size\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_set_maximum_return_packet_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_compression_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_compression_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_compression_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_picture_parameter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_picture_parameter_set\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_picture_parameter_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_generic_write\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_generic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_generic_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_generic_read\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_generic_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_write_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_write_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_write_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_write\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_read\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_nop:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_nop\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_nop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_soft_reset\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_get_power_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_get_power_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_get_power_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_get_pixel_format:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_get_pixel_format\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_get_pixel_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_enter_sleep_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_enter_sleep_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_enter_sleep_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_exit_sleep_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_exit_sleep_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_exit_sleep_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_display_off:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_display_off\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_display_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_display_on:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_display_on\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_display_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_column_address:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_column_address\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_column_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_page_address\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_tear_off:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_tear_off\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_tear_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_tear_on:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_tear_on\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_tear_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_pixel_format:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_pixel_format\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_pixel_format:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_tear_scanline:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_tear_scanline\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_tear_scanline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_set_display_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_set_display_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_set_display_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_dcs_get_display_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_dcs_get_display_brightness\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_dcs_get_display_brightness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_driver_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_driver_register_full\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_driver_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mipi_dsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mipi_dsi_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mipi_dsi_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }

@mipi_dsi_bus_type = internal global %struct.bus_type { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dsi_device_match, ptr @mipi_dsi_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mipi_dsi_device_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_of_find_mipi_dsi_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_mipi_dsi_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_mipi_dsi_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_mipi_dsi_device_by_node to i32), ptr @__kstrtab_of_find_mipi_dsi_device_by_node, ptr @__kstrtabns_of_find_mipi_dsi_device_by_node }, section "___ksymtab+of_find_mipi_dsi_device_by_node", align 4
@.str = private unnamed_addr constant [52 x i8] c"[drm] *ERROR* invalid mipi_dsi_device_info pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[drm] *ERROR* invalid virtual channel: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"[drm] *ERROR* failed to allocate DSI device %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[drm] *ERROR* failed to add DSI device %d\0A\00", align 1
@__kstrtab_mipi_dsi_device_register_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_device_register_full = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_device_register_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_device_register_full to i32), ptr @__kstrtab_mipi_dsi_device_register_full, ptr @__kstrtabns_mipi_dsi_device_register_full }, section "___ksymtab+mipi_dsi_device_register_full", align 4
@__kstrtab_mipi_dsi_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_device_unregister to i32), ptr @__kstrtab_mipi_dsi_device_unregister, ptr @__kstrtabns_mipi_dsi_device_unregister }, section "___ksymtab+mipi_dsi_device_unregister", align 4
@__kstrtab_devm_mipi_dsi_device_register_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mipi_dsi_device_register_full = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mipi_dsi_device_register_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mipi_dsi_device_register_full to i32), ptr @__kstrtab_devm_mipi_dsi_device_register_full, ptr @__kstrtabns_devm_mipi_dsi_device_register_full }, section "___ksymtab_gpl+devm_mipi_dsi_device_register_full", align 4
@host_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @host_lock, i64 12), ptr getelementptr (i8, ptr @host_lock, i64 12) } }, align 4
@host_list = internal global %struct.list_head { ptr @host_list, ptr @host_list }, align 4
@__kstrtab_of_find_mipi_dsi_host_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_mipi_dsi_host_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_mipi_dsi_host_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_mipi_dsi_host_by_node to i32), ptr @__kstrtab_of_find_mipi_dsi_host_by_node, ptr @__kstrtabns_of_find_mipi_dsi_host_by_node }, section "___ksymtab+of_find_mipi_dsi_host_by_node", align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_mipi_dsi_host_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_host_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_host_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_host_register to i32), ptr @__kstrtab_mipi_dsi_host_register, ptr @__kstrtabns_mipi_dsi_host_register }, section "___ksymtab+mipi_dsi_host_register", align 4
@__kstrtab_mipi_dsi_host_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_host_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_host_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_host_unregister to i32), ptr @__kstrtab_mipi_dsi_host_unregister, ptr @__kstrtabns_mipi_dsi_host_unregister }, section "___ksymtab+mipi_dsi_host_unregister", align 4
@__kstrtab_mipi_dsi_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_attach to i32), ptr @__kstrtab_mipi_dsi_attach, ptr @__kstrtabns_mipi_dsi_attach }, section "___ksymtab+mipi_dsi_attach", align 4
@__kstrtab_mipi_dsi_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_detach to i32), ptr @__kstrtab_mipi_dsi_detach, ptr @__kstrtabns_mipi_dsi_detach }, section "___ksymtab+mipi_dsi_detach", align 4
@__kstrtab_devm_mipi_dsi_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mipi_dsi_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mipi_dsi_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mipi_dsi_attach to i32), ptr @__kstrtab_devm_mipi_dsi_attach, ptr @__kstrtabns_devm_mipi_dsi_attach }, section "___ksymtab_gpl+devm_mipi_dsi_attach", align 4
@__kstrtab_mipi_dsi_packet_format_is_short = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_packet_format_is_short = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_packet_format_is_short = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_packet_format_is_short to i32), ptr @__kstrtab_mipi_dsi_packet_format_is_short, ptr @__kstrtabns_mipi_dsi_packet_format_is_short }, section "___ksymtab+mipi_dsi_packet_format_is_short", align 4
@__kstrtab_mipi_dsi_packet_format_is_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_packet_format_is_long = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_packet_format_is_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_packet_format_is_long to i32), ptr @__kstrtab_mipi_dsi_packet_format_is_long, ptr @__kstrtabns_mipi_dsi_packet_format_is_long }, section "___ksymtab+mipi_dsi_packet_format_is_long", align 4
@__kstrtab_mipi_dsi_create_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_create_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_create_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_create_packet to i32), ptr @__kstrtab_mipi_dsi_create_packet, ptr @__kstrtabns_mipi_dsi_create_packet }, section "___ksymtab+mipi_dsi_create_packet", align 4
@__kstrtab_mipi_dsi_shutdown_peripheral = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_shutdown_peripheral = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_shutdown_peripheral = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_shutdown_peripheral to i32), ptr @__kstrtab_mipi_dsi_shutdown_peripheral, ptr @__kstrtabns_mipi_dsi_shutdown_peripheral }, section "___ksymtab+mipi_dsi_shutdown_peripheral", align 4
@__kstrtab_mipi_dsi_turn_on_peripheral = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_turn_on_peripheral = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_turn_on_peripheral = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_turn_on_peripheral to i32), ptr @__kstrtab_mipi_dsi_turn_on_peripheral, ptr @__kstrtabns_mipi_dsi_turn_on_peripheral }, section "___ksymtab+mipi_dsi_turn_on_peripheral", align 4
@__kstrtab_mipi_dsi_set_maximum_return_packet_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_set_maximum_return_packet_size = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_set_maximum_return_packet_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_set_maximum_return_packet_size to i32), ptr @__kstrtab_mipi_dsi_set_maximum_return_packet_size, ptr @__kstrtabns_mipi_dsi_set_maximum_return_packet_size }, section "___ksymtab+mipi_dsi_set_maximum_return_packet_size", align 4
@__kstrtab_mipi_dsi_compression_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_compression_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_compression_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_compression_mode to i32), ptr @__kstrtab_mipi_dsi_compression_mode, ptr @__kstrtabns_mipi_dsi_compression_mode }, section "___ksymtab+mipi_dsi_compression_mode", align 4
@__kstrtab_mipi_dsi_picture_parameter_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_picture_parameter_set = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_picture_parameter_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_picture_parameter_set to i32), ptr @__kstrtab_mipi_dsi_picture_parameter_set, ptr @__kstrtabns_mipi_dsi_picture_parameter_set }, section "___ksymtab+mipi_dsi_picture_parameter_set", align 4
@__kstrtab_mipi_dsi_generic_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_generic_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_generic_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_generic_write to i32), ptr @__kstrtab_mipi_dsi_generic_write, ptr @__kstrtabns_mipi_dsi_generic_write }, section "___ksymtab+mipi_dsi_generic_write", align 4
@__kstrtab_mipi_dsi_generic_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_generic_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_generic_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_generic_read to i32), ptr @__kstrtab_mipi_dsi_generic_read, ptr @__kstrtabns_mipi_dsi_generic_read }, section "___ksymtab+mipi_dsi_generic_read", align 4
@__kstrtab_mipi_dsi_dcs_write_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_write_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_write_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_write_buffer to i32), ptr @__kstrtab_mipi_dsi_dcs_write_buffer, ptr @__kstrtabns_mipi_dsi_dcs_write_buffer }, section "___ksymtab+mipi_dsi_dcs_write_buffer", align 4
@__kstrtab_mipi_dsi_dcs_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_write to i32), ptr @__kstrtab_mipi_dsi_dcs_write, ptr @__kstrtabns_mipi_dsi_dcs_write }, section "___ksymtab+mipi_dsi_dcs_write", align 4
@__kstrtab_mipi_dsi_dcs_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_read to i32), ptr @__kstrtab_mipi_dsi_dcs_read, ptr @__kstrtabns_mipi_dsi_dcs_read }, section "___ksymtab+mipi_dsi_dcs_read", align 4
@__kstrtab_mipi_dsi_dcs_nop = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_nop = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_nop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_nop to i32), ptr @__kstrtab_mipi_dsi_dcs_nop, ptr @__kstrtabns_mipi_dsi_dcs_nop }, section "___ksymtab+mipi_dsi_dcs_nop", align 4
@__kstrtab_mipi_dsi_dcs_soft_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_soft_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_soft_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_soft_reset to i32), ptr @__kstrtab_mipi_dsi_dcs_soft_reset, ptr @__kstrtabns_mipi_dsi_dcs_soft_reset }, section "___ksymtab+mipi_dsi_dcs_soft_reset", align 4
@__kstrtab_mipi_dsi_dcs_get_power_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_get_power_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_get_power_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_get_power_mode to i32), ptr @__kstrtab_mipi_dsi_dcs_get_power_mode, ptr @__kstrtabns_mipi_dsi_dcs_get_power_mode }, section "___ksymtab+mipi_dsi_dcs_get_power_mode", align 4
@__kstrtab_mipi_dsi_dcs_get_pixel_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_get_pixel_format = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_get_pixel_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_get_pixel_format to i32), ptr @__kstrtab_mipi_dsi_dcs_get_pixel_format, ptr @__kstrtabns_mipi_dsi_dcs_get_pixel_format }, section "___ksymtab+mipi_dsi_dcs_get_pixel_format", align 4
@__kstrtab_mipi_dsi_dcs_enter_sleep_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_enter_sleep_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_enter_sleep_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_enter_sleep_mode to i32), ptr @__kstrtab_mipi_dsi_dcs_enter_sleep_mode, ptr @__kstrtabns_mipi_dsi_dcs_enter_sleep_mode }, section "___ksymtab+mipi_dsi_dcs_enter_sleep_mode", align 4
@__kstrtab_mipi_dsi_dcs_exit_sleep_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_exit_sleep_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_exit_sleep_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_exit_sleep_mode to i32), ptr @__kstrtab_mipi_dsi_dcs_exit_sleep_mode, ptr @__kstrtabns_mipi_dsi_dcs_exit_sleep_mode }, section "___ksymtab+mipi_dsi_dcs_exit_sleep_mode", align 4
@__kstrtab_mipi_dsi_dcs_set_display_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_display_off = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_display_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_display_off to i32), ptr @__kstrtab_mipi_dsi_dcs_set_display_off, ptr @__kstrtabns_mipi_dsi_dcs_set_display_off }, section "___ksymtab+mipi_dsi_dcs_set_display_off", align 4
@__kstrtab_mipi_dsi_dcs_set_display_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_display_on = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_display_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_display_on to i32), ptr @__kstrtab_mipi_dsi_dcs_set_display_on, ptr @__kstrtabns_mipi_dsi_dcs_set_display_on }, section "___ksymtab+mipi_dsi_dcs_set_display_on", align 4
@__kstrtab_mipi_dsi_dcs_set_column_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_column_address = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_column_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_column_address to i32), ptr @__kstrtab_mipi_dsi_dcs_set_column_address, ptr @__kstrtabns_mipi_dsi_dcs_set_column_address }, section "___ksymtab+mipi_dsi_dcs_set_column_address", align 4
@__kstrtab_mipi_dsi_dcs_set_page_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_page_address = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_page_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_page_address to i32), ptr @__kstrtab_mipi_dsi_dcs_set_page_address, ptr @__kstrtabns_mipi_dsi_dcs_set_page_address }, section "___ksymtab+mipi_dsi_dcs_set_page_address", align 4
@__kstrtab_mipi_dsi_dcs_set_tear_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_tear_off = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_tear_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_tear_off to i32), ptr @__kstrtab_mipi_dsi_dcs_set_tear_off, ptr @__kstrtabns_mipi_dsi_dcs_set_tear_off }, section "___ksymtab+mipi_dsi_dcs_set_tear_off", align 4
@__kstrtab_mipi_dsi_dcs_set_tear_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_tear_on = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_tear_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_tear_on to i32), ptr @__kstrtab_mipi_dsi_dcs_set_tear_on, ptr @__kstrtabns_mipi_dsi_dcs_set_tear_on }, section "___ksymtab+mipi_dsi_dcs_set_tear_on", align 4
@__kstrtab_mipi_dsi_dcs_set_pixel_format = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_pixel_format = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_pixel_format = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_pixel_format to i32), ptr @__kstrtab_mipi_dsi_dcs_set_pixel_format, ptr @__kstrtabns_mipi_dsi_dcs_set_pixel_format }, section "___ksymtab+mipi_dsi_dcs_set_pixel_format", align 4
@__kstrtab_mipi_dsi_dcs_set_tear_scanline = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_tear_scanline = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_tear_scanline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_tear_scanline to i32), ptr @__kstrtab_mipi_dsi_dcs_set_tear_scanline, ptr @__kstrtabns_mipi_dsi_dcs_set_tear_scanline }, section "___ksymtab+mipi_dsi_dcs_set_tear_scanline", align 4
@__kstrtab_mipi_dsi_dcs_set_display_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_set_display_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_set_display_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_set_display_brightness to i32), ptr @__kstrtab_mipi_dsi_dcs_set_display_brightness, ptr @__kstrtabns_mipi_dsi_dcs_set_display_brightness }, section "___ksymtab+mipi_dsi_dcs_set_display_brightness", align 4
@__kstrtab_mipi_dsi_dcs_get_display_brightness = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_dcs_get_display_brightness = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_dcs_get_display_brightness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_dcs_get_display_brightness to i32), ptr @__kstrtab_mipi_dsi_dcs_get_display_brightness, ptr @__kstrtabns_mipi_dsi_dcs_get_display_brightness }, section "___ksymtab+mipi_dsi_dcs_get_display_brightness", align 4
@__kstrtab_mipi_dsi_driver_register_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_driver_register_full = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_driver_register_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_driver_register_full to i32), ptr @__kstrtab_mipi_dsi_driver_register_full, ptr @__kstrtabns_mipi_dsi_driver_register_full }, section "___ksymtab+mipi_dsi_driver_register_full", align 4
@__kstrtab_mipi_dsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mipi_dsi_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mipi_dsi_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mipi_dsi_driver_unregister to i32), ptr @__kstrtab_mipi_dsi_driver_unregister, ptr @__kstrtabns_mipi_dsi_driver_unregister }, section "___ksymtab+mipi_dsi_driver_unregister", align 4
@__initcall__kmod_drm_mipi_dsi__261_1290_mipi_dsi_bus_init2 = internal global ptr @mipi_dsi_bus_init, section ".initcall2.init", align 4
@__UNIQUE_ID_author262 = internal constant [56 x i8] c"drm_mipi_dsi.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [38 x i8] c"drm_mipi_dsi.description=MIPI DSI Bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [47 x i8] c"drm_mipi_dsi.file=drivers/gpu/drm/drm_mipi_dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [47 x i8] c"drm_mipi_dsi.license=GPL and additional rights\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"mipi-dsi\00", align 1
@mipi_dsi_device_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_generic_suspend, ptr @pm_generic_resume, ptr @pm_generic_freeze, ptr @pm_generic_thaw, ptr @pm_generic_poweroff, ptr @pm_generic_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mipi-dsi:\00", align 1
@mipi_dsi_device_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @mipi_dsi_dev_release, ptr null }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"[drm] *ERROR* modalias failure on %pOF\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"[drm] *ERROR* device node %pOF has no valid reg property: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__initcall__kmod_drm_mipi_dsi__261_1290_mipi_dsi_bus_init2, ptr @__ksymtab_devm_mipi_dsi_attach, ptr @__ksymtab_devm_mipi_dsi_device_register_full, ptr @__ksymtab_mipi_dsi_attach, ptr @__ksymtab_mipi_dsi_compression_mode, ptr @__ksymtab_mipi_dsi_create_packet, ptr @__ksymtab_mipi_dsi_dcs_enter_sleep_mode, ptr @__ksymtab_mipi_dsi_dcs_exit_sleep_mode, ptr @__ksymtab_mipi_dsi_dcs_get_display_brightness, ptr @__ksymtab_mipi_dsi_dcs_get_pixel_format, ptr @__ksymtab_mipi_dsi_dcs_get_power_mode, ptr @__ksymtab_mipi_dsi_dcs_nop, ptr @__ksymtab_mipi_dsi_dcs_read, ptr @__ksymtab_mipi_dsi_dcs_set_column_address, ptr @__ksymtab_mipi_dsi_dcs_set_display_brightness, ptr @__ksymtab_mipi_dsi_dcs_set_display_off, ptr @__ksymtab_mipi_dsi_dcs_set_display_on, ptr @__ksymtab_mipi_dsi_dcs_set_page_address, ptr @__ksymtab_mipi_dsi_dcs_set_pixel_format, ptr @__ksymtab_mipi_dsi_dcs_set_tear_off, ptr @__ksymtab_mipi_dsi_dcs_set_tear_on, ptr @__ksymtab_mipi_dsi_dcs_set_tear_scanline, ptr @__ksymtab_mipi_dsi_dcs_soft_reset, ptr @__ksymtab_mipi_dsi_dcs_write, ptr @__ksymtab_mipi_dsi_dcs_write_buffer, ptr @__ksymtab_mipi_dsi_detach, ptr @__ksymtab_mipi_dsi_device_register_full, ptr @__ksymtab_mipi_dsi_device_unregister, ptr @__ksymtab_mipi_dsi_driver_register_full, ptr @__ksymtab_mipi_dsi_driver_unregister, ptr @__ksymtab_mipi_dsi_generic_read, ptr @__ksymtab_mipi_dsi_generic_write, ptr @__ksymtab_mipi_dsi_host_register, ptr @__ksymtab_mipi_dsi_host_unregister, ptr @__ksymtab_mipi_dsi_packet_format_is_long, ptr @__ksymtab_mipi_dsi_packet_format_is_short, ptr @__ksymtab_mipi_dsi_picture_parameter_set, ptr @__ksymtab_mipi_dsi_set_maximum_return_packet_size, ptr @__ksymtab_mipi_dsi_shutdown_peripheral, ptr @__ksymtab_mipi_dsi_turn_on_peripheral, ptr @__ksymtab_of_find_mipi_dsi_device_by_node, ptr @__ksymtab_of_find_mipi_dsi_host_by_node], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_mipi_dsi_device_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @bus_find_device(ptr noundef nonnull @mipi_dsi_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_of_node) #14
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -8
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mipi_dsi_device_register_full(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #15
  br label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mipi_dsi_device_info, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %8) #15
  br label %51

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 528) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  store ptr %0, ptr %14, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 1
  %18 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 1, i32 5
  store ptr @mipi_dsi_bus_type, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 1, i32 4
  store ptr @mipi_dsi_device_type, ptr %21, align 8
  tail call void @device_initialize(ptr noundef %17) #14
  %22 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %27

23:                                               ; preds = %16, %12
  %24 = phi ptr [ %14, %16 ], [ inttoptr (i32 -12 to ptr), %12 ]
  %25 = load ptr, ptr %0, align 4
  %26 = ptrtoint ptr %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef %26) #15
  br label %51

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.mipi_dsi_device_info, ptr %1, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 1, i32 25
  store ptr %29, ptr %30, align 8
  %31 = load i32, ptr %7, align 4
  %32 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 2
  %34 = tail call i32 @strlcpy(ptr noundef %33, ptr noundef nonnull %1, i32 noundef 20) #14
  %35 = load ptr, ptr %14, align 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load ptr, ptr %36, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi ptr [ %41, %40 ], [ %38, %27 ]
  %44 = load i32, ptr %32, align 4
  %45 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %43, i32 noundef %44) #14
  %46 = tail call i32 @device_add(ptr noundef %17) #14
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.3, i32 noundef %46) #15
  tail call void @kfree(ptr noundef nonnull %14) #14
  %50 = inttoptr i32 %46 to ptr
  br label %51

51:                                               ; preds = %48, %42, %23, %10, %4
  %52 = phi ptr [ inttoptr (i32 -22 to ptr), %10 ], [ %24, %23 ], [ %50, %48 ], [ inttoptr (i32 -22 to ptr), %4 ], [ %14, %42 ]
  ret ptr %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mipi_dsi_device_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @mipi_dsi_device_register_full(ptr noundef %1, ptr noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_mipi_dsi_device_unregister, ptr noundef %4) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mipi_dsi_device, ptr %4, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %10) #14
  %11 = inttoptr i32 %7 to ptr
  br label %12

12:                                               ; preds = %9, %6, %3
  %13 = phi ptr [ %11, %9 ], [ %4, %3 ], [ %4, %6 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_mipi_dsi_device_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 1
  tail call void @device_unregister(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @host_lock) #14
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @host_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @host_list
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %2

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %4, i32 -8
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @host_lock) #14
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_host_register(ptr noundef %0) #0 {
  %2 = alloca %struct.mipi_dsi_device_info, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_next_available_child(ptr noundef %6, ptr noundef null) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mipi_dsi_device_info, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mipi_dsi_device_info, ptr %2, i32 0, i32 2
  br label %12

12:                                               ; preds = %31, %9
  %13 = phi ptr [ %7, %9 ], [ %35, %31 ]
  %14 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.4, ptr noundef null) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = call i32 @of_modalias_node(ptr noundef nonnull %13, ptr noundef nonnull %2, i32 noundef 20) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull %13) #15
  br label %30

21:                                               ; preds = %16
  %22 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #14
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull %13, i32 noundef %22) #15
  br label %30

26:                                               ; preds = %21
  %27 = load i32, ptr %3, align 4
  store i32 %27, ptr %10, align 4
  %28 = call ptr @of_node_get(ptr noundef nonnull %13) #14
  store ptr %28, ptr %11, align 4
  %29 = call ptr @mipi_dsi_device_register_full(ptr noundef %0, ptr noundef nonnull %2) #14
  br label %30

30:                                               ; preds = %26, %24, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #14
  br label %31

31:                                               ; preds = %30, %12
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 25
  %34 = load ptr, ptr %33, align 8
  %35 = call ptr @of_get_next_available_child(ptr noundef %34, ptr noundef nonnull %13) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %12

37:                                               ; preds = %31, %1
  call void @mutex_lock(ptr noundef nonnull @host_lock) #14
  %38 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @host_list, i32 0, i32 1), align 4
  store ptr %38, ptr getelementptr inbounds (%struct.list_head, ptr @host_list, i32 0, i32 1), align 4
  store ptr @host_list, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 2, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %38, ptr %39, align 4
  call void @mutex_unlock(ptr noundef nonnull @host_lock) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mipi_dsi_host_unregister(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 @device_for_each_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @mipi_dsi_remove_device_fn) #14
  tail call void @mutex_lock(ptr noundef nonnull @host_lock) #14
  %4 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.mipi_dsi_host, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @host_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mipi_dsi_remove_device_fn(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @device_unregister(ptr noundef %0) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_attach(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mipi_dsi_host, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 %7(ptr noundef %2, ptr noundef %0) #14
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = phi i32 [ %10, %9 ], [ -38, %6 ], [ -38, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_detach(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mipi_dsi_host, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %2, ptr noundef %0) #14
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = phi i32 [ %11, %10 ], [ -38, %6 ], [ -38, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_mipi_dsi_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8
  %4 = getelementptr inbounds %struct.mipi_dsi_host, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = tail call i32 %8(ptr noundef %3, ptr noundef %1) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_mipi_dsi_detach, ptr noundef %1) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_host, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef %17, ptr noundef %1) #14
  br label %27

27:                                               ; preds = %25, %21, %16, %13, %10, %7, %2
  %28 = phi i32 [ %11, %10 ], [ %14, %25 ], [ %14, %21 ], [ %14, %16 ], [ 0, %13 ], [ -38, %7 ], [ -38, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_mipi_dsi_detach(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.mipi_dsi_host, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %2, ptr noundef %0) #14
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext %0) #5 {
  switch i8 %0, label %2 [
    i8 1, label %3
    i8 17, label %3
    i8 33, label %3
    i8 49, label %3
    i8 7, label %3
    i8 8, label %3
    i8 2, label %3
    i8 18, label %3
    i8 34, label %3
    i8 50, label %3
    i8 3, label %3
    i8 19, label %3
    i8 35, label %3
    i8 4, label %3
    i8 20, label %3
    i8 36, label %3
    i8 5, label %3
    i8 21, label %3
    i8 6, label %3
    i8 22, label %3
    i8 55, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %0) #5 {
  switch i8 %0, label %2 [
    i8 9, label %3
    i8 25, label %3
    i8 41, label %3
    i8 57, label %3
    i8 10, label %3
    i8 11, label %3
    i8 12, label %3
    i8 28, label %3
    i8 44, label %3
    i8 13, label %3
    i8 29, label %3
    i8 61, label %3
    i8 14, label %3
    i8 30, label %3
    i8 46, label %3
    i8 62, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %4 = phi i1 [ false, %2 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ], [ true, %1 ]
  ret i1 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @mipi_dsi_create_packet(ptr noundef %0, ptr noundef readonly %1) #6 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %60

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = tail call zeroext i1 @mipi_dsi_packet_format_is_short(i8 noundef zeroext %8)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %8)
  br i1 %11, label %12, label %60

12:                                               ; preds = %10, %6
  %13 = load i8, ptr %1, align 4
  %14 = icmp ugt i8 %13, 3
  br i1 %14, label %60, label %15

15:                                               ; preds = %12
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %16 = load i8, ptr %1, align 4
  %17 = shl i8 %16, 6
  %18 = load i8, ptr %7, align 1
  %19 = and i8 %18, 63
  %20 = or i8 %19, %17
  %21 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %0, i32 0, i32 1
  store i8 %20, ptr %21, align 4
  %22 = load i8, ptr %7, align 1
  %23 = tail call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %22)
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = getelementptr %struct.mipi_dsi_packet, ptr %0, i32 0, i32 1, i32 1
  store i8 %27, ptr %28, align 1
  %29 = load i32, ptr %25, align 4
  %30 = lshr i32 %29, 8
  %31 = trunc i32 %30 to i8
  %32 = getelementptr %struct.mipi_dsi_packet, ptr %0, i32 0, i32 1, i32 2
  store i8 %31, ptr %32, align 2
  %33 = load i32, ptr %25, align 4
  %34 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %0, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mipi_dsi_packet, ptr %0, i32 0, i32 3
  store ptr %36, ptr %37, align 4
  %38 = add i32 %33, 4
  br label %58

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = load i8, ptr %41, align 1
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi i8 [ %46, %45 ], [ 0, %39 ]
  %49 = getelementptr %struct.mipi_dsi_packet, ptr %0, i32 0, i32 1, i32 1
  store i8 %48, ptr %49, align 1
  %50 = load i32, ptr %42, align 4
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %41, i32 1
  %54 = load i8, ptr %53, align 1
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi i8 [ %54, %52 ], [ 0, %47 ]
  %57 = getelementptr %struct.mipi_dsi_packet, ptr %0, i32 0, i32 1, i32 2
  store i8 %56, ptr %57, align 2
  br label %58

58:                                               ; preds = %55, %24
  %59 = phi i32 [ 4, %55 ], [ %38, %24 ]
  store i32 %59, ptr %0, align 4
  br label %60

60:                                               ; preds = %58, %12, %10, %2
  %61 = phi i32 [ 0, %58 ], [ -22, %2 ], [ -22, %10 ], [ -22, %12 ]
  ret i32 %61
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_shutdown_peripheral(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 1
  store i8 34, ptr %7, align 1
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store i8 0, ptr %3, align 1
  %11 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %11, align 1
  store ptr %3, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i16 2, ptr %8, align 2
  br label %28

28:                                               ; preds = %27, %22
  %29 = call i32 %20(ptr noundef %14, ptr noundef nonnull %2) #14
  br label %30

30:                                               ; preds = %28, %18, %1
  %31 = phi i32 [ %29, %28 ], [ -38, %18 ], [ -38, %1 ]
  %32 = call i32 @llvm.smin.i32(i32 %31, i32 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_turn_on_peripheral(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [2 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 1
  store i8 50, ptr %7, align 1
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store i8 0, ptr %3, align 1
  %11 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %11, align 1
  store ptr %3, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i16 2, ptr %8, align 2
  br label %28

28:                                               ; preds = %27, %22
  %29 = call i32 %20(ptr noundef %14, ptr noundef nonnull %2) #14
  br label %30

30:                                               ; preds = %28, %18, %1
  %31 = phi i32 [ %29, %28 ], [ -38, %18 ], [ -38, %1 ]
  %32 = call i32 @llvm.smin.i32(i32 %31, i32 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_set_maximum_return_packet_size(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  %5 = trunc i16 %1 to i8
  store i8 %5, ptr %3, align 2
  %6 = getelementptr inbounds i8, ptr %3, i32 1
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  %9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  store i8 55, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  store i16 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_host, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i16 2, ptr %13, align 2
  br label %32

32:                                               ; preds = %31, %26
  %33 = call i32 %24(ptr noundef %18, ptr noundef nonnull %4) #14
  br label %34

34:                                               ; preds = %32, %22, %2
  %35 = phi i32 [ %33, %32 ], [ -38, %22 ], [ -38, %2 ]
  %36 = call i32 @llvm.smin.i32(i32 %35, i32 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_compression_mode(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #14
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %3, align 2
  %6 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  store i8 7, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %15, align 4
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_host, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i16 2, ptr %11, align 2
  br label %30

30:                                               ; preds = %29, %24
  %31 = call i32 %22(ptr noundef %16, ptr noundef nonnull %4) #14
  br label %32

32:                                               ; preds = %30, %20, %2
  %33 = phi i32 [ %31, %30 ], [ -38, %20 ], [ -38, %2 ]
  %34 = call i32 @llvm.smin.i32(i32 %33, i32 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #14
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_picture_parameter_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 1
  store i8 10, ptr %7, align 1
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 2
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 3
  store i32 128, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 4
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 6
  store ptr null, ptr %12, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_host, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i16 2, ptr %8, align 2
  br label %27

27:                                               ; preds = %26, %21
  %28 = call i32 %19(ptr noundef %13, ptr noundef nonnull %3) #14
  br label %29

29:                                               ; preds = %27, %17, %2
  %30 = phi i32 [ %28, %27 ], [ -38, %17 ], [ -38, %2 ]
  %31 = call i32 @llvm.smin.i32(i32 %30, i32 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_generic_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %13, align 4
  %14 = icmp ult i32 %2, 3
  %15 = trunc i32 %2 to i8
  %16 = shl i8 %15, 4
  %17 = or i8 %16, 3
  %18 = select i1 %14, i8 %17, i8 41
  store i8 %18, ptr %8, align 1
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.mipi_dsi_host, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %21, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i16 2, ptr %9, align 2
  br label %33

33:                                               ; preds = %32, %27
  %34 = call i32 %25(ptr noundef %19, ptr noundef nonnull %4) #14
  br label %35

35:                                               ; preds = %33, %23, %3
  %36 = phi i32 [ %34, %33 ], [ -38, %23 ], [ -38, %3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_generic_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 3
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 4
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 5
  store i32 %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 6
  store ptr %3, ptr %14, align 4
  %15 = icmp ult i32 %2, 3
  br i1 %15, label %16, label %37

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 1
  %18 = trunc i32 %2 to i8
  %19 = shl i8 %18, 4
  %20 = or i8 %19, 4
  store i8 %20, ptr %17, align 1
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_host, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i16 2, ptr %10, align 2
  br label %35

35:                                               ; preds = %34, %29
  %36 = call i32 %27(ptr noundef %21, ptr noundef nonnull %6) #14
  br label %37

37:                                               ; preds = %35, %25, %16, %5
  %38 = phi i32 [ -22, %5 ], [ %36, %35 ], [ -38, %25 ], [ -38, %16 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #14
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_write_buffer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %13, align 4
  switch i32 %2, label %15 [
    i32 0, label %34
    i32 1, label %16
    i32 2, label %14
  ]

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %14, %3
  %17 = phi i8 [ 57, %15 ], [ 21, %14 ], [ 5, %3 ]
  store i8 %17, ptr %8, align 1
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_host, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i16 2, ptr %9, align 2
  br label %32

32:                                               ; preds = %31, %26
  %33 = call i32 %24(ptr noundef %18, ptr noundef nonnull %4) #14
  br label %34

34:                                               ; preds = %32, %22, %16, %3
  %35 = phi i32 [ -22, %3 ], [ %33, %32 ], [ -38, %22 ], [ -38, %16 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.mipi_dsi_msg, align 4
  %6 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = add i32 %3, 1
  %8 = icmp ugt i32 %3, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3264) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %10, %9 ], [ %6, %4 ]
  store i8 %1, ptr %13, align 8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %13, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %16, ptr nonnull align 1 %2, i32 %3, i1 false)
  br label %17

17:                                               ; preds = %15, %12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %5, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 3
  store i32 %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 4
  store ptr %13, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 5
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %5, i32 0, i32 6
  store ptr null, ptr %26, align 4
  switch i32 %3, label %28 [
    i32 -1, label %47
    i32 0, label %29
    i32 1, label %27
  ]

27:                                               ; preds = %17
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %27, %17
  %30 = phi i8 [ 57, %28 ], [ 21, %27 ], [ 5, %17 ]
  store i8 %30, ptr %21, align 1
  %31 = load ptr, ptr %0, align 8
  %32 = getelementptr inbounds %struct.mipi_dsi_host, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i16 2, ptr %22, align 2
  br label %45

45:                                               ; preds = %44, %39
  %46 = call i32 %37(ptr noundef %31, ptr noundef nonnull %5) #14
  br label %47

47:                                               ; preds = %45, %35, %29, %17
  %48 = phi i32 [ -22, %17 ], [ %46, %45 ], [ -38, %35 ], [ -38, %29 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  %49 = icmp eq ptr %13, %6
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @kfree(ptr noundef %13) #14
  br label %51

51:                                               ; preds = %50, %47, %9
  %52 = phi i32 [ -12, %9 ], [ %48, %50 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.mipi_dsi_msg, align 4
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 1
  store i8 6, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 2
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 4
  store ptr %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 5
  store i32 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %6, i32 0, i32 6
  store ptr %2, ptr %15, align 4
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_host, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i16 2, ptr %11, align 2
  br label %30

30:                                               ; preds = %29, %24
  %31 = call i32 %22(ptr noundef %16, ptr noundef nonnull %6) #14
  br label %32

32:                                               ; preds = %30, %20, %4
  %33 = phi i32 [ %31, %30 ], [ -38, %20 ], [ -38, %4 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #14
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_nop(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_soft_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 1, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_get_power_mode(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 10, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  store i8 6, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  store i16 2, ptr %9, align 2
  br label %29

28:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %34

29:                                               ; preds = %27, %22
  %30 = call i32 %20(ptr noundef %14, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %31 = icmp slt i32 %30, 1
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %32, i32 -61, i32 %30
  br i1 %31, label %34, label %36

34:                                               ; preds = %29, %28
  %35 = phi i32 [ -38, %28 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_get_pixel_format(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 12, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  store i8 6, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  store i16 2, ptr %9, align 2
  br label %29

28:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %34

29:                                               ; preds = %27, %22
  %30 = call i32 %20(ptr noundef %14, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %31 = icmp slt i32 %30, 1
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %32, i32 -61, i32 %30
  br i1 %31, label %34, label %36

34:                                               ; preds = %29, %28
  %35 = phi i32 [ -38, %28 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 16, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 17, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_display_off(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 40, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_display_on(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 41, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_column_address(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.mipi_dsi_msg, align 4
  %5 = alloca [8 x i8], align 8
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  %8 = trunc i16 %1 to i8
  %9 = lshr i16 %2, 8
  %10 = trunc i16 %9 to i8
  %11 = trunc i16 %2 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 42, ptr %5, align 8, !annotation !8
  %12 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %7, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %8, ptr %13, align 2
  %14 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %10, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %11, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  store i32 14592, ptr %4, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %23, align 4
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_host, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  store i16 2, ptr %19, align 2
  br label %39

38:                                               ; preds = %28, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %42

39:                                               ; preds = %37, %32
  %40 = call i32 %30(ptr noundef %24, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %38
  %43 = phi i32 [ -38, %38 ], [ %40, %39 ]
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %43, %42 ], [ 0, %39 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_page_address(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %struct.mipi_dsi_msg, align 4
  %5 = alloca [8 x i8], align 8
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  %8 = trunc i16 %1 to i8
  %9 = lshr i16 %2, 8
  %10 = trunc i16 %9 to i8
  %11 = trunc i16 %2 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 43, ptr %5, align 8, !annotation !8
  %12 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %7, ptr %12, align 1
  %13 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %8, ptr %13, align 2
  %14 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 %10, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 %11, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  store i32 14592, ptr %4, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr null, ptr %23, align 4
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.mipi_dsi_host, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  store i16 2, ptr %19, align 2
  br label %39

38:                                               ; preds = %28, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %42

39:                                               ; preds = %37, %32
  %40 = call i32 %30(ptr noundef %24, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %38
  %43 = phi i32 [ -38, %38 ], [ %40, %39 ]
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %43, %42 ], [ 0, %39 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_tear_off(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.mipi_dsi_msg, align 4
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 52, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  store i32 1280, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 3
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 4
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 5
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %2, i32 0, i32 6
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_host, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  store i16 2, ptr %7, align 2
  br label %27

26:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %30

27:                                               ; preds = %25, %20
  %28 = call i32 %18(ptr noundef %12, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %26
  %31 = phi i32 [ -38, %26 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.mipi_dsi_msg, align 4
  %4 = alloca [8 x i8], align 8
  %5 = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 53, ptr %4, align 8, !annotation !8
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  store i32 5376, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  store i8 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 3
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 4
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 5
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 6
  store ptr null, ptr %14, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.mipi_dsi_host, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  store i16 2, ptr %10, align 2
  br label %30

29:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %33

30:                                               ; preds = %28, %23
  %31 = call i32 %21(ptr noundef %15, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %29
  %34 = phi i32 [ -38, %29 ], [ %31, %30 ]
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ 0, %30 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_pixel_format(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.mipi_dsi_msg, align 4
  %4 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 58, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  store i32 5376, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 3
  store i32 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 4
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 5
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 6
  store ptr null, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  store i16 2, ptr %9, align 2
  br label %29

28:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %32

29:                                               ; preds = %27, %22
  %30 = call i32 %20(ptr noundef %14, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %28
  %33 = phi i32 [ -38, %28 ], [ %30, %29 ]
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ 0, %29 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_tear_scanline(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca %struct.mipi_dsi_msg, align 4
  %4 = alloca [8 x i8], align 8
  %5 = lshr i16 %1, 8
  %6 = trunc i16 %5 to i8
  %7 = trunc i16 %1 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 68, ptr %4, align 8, !annotation !8
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %6, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %7, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  store i32 14592, ptr %3, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 3
  store i32 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 4
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 6
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_host, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  store i16 2, ptr %13, align 2
  br label %33

32:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %36

33:                                               ; preds = %31, %26
  %34 = call i32 %24(ptr noundef %18, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %32
  %37 = phi i32 [ -38, %32 ], [ %34, %33 ]
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_set_display_brightness(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca %struct.mipi_dsi_msg, align 4
  %4 = alloca [8 x i8], align 8
  %5 = trunc i16 %1 to i8
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 81, ptr %4, align 8, !annotation !8
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %5, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %7, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #14
  store i32 14592, ptr %3, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 3
  store i32 3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 4
  store ptr %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 5
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %3, i32 0, i32 6
  store ptr null, ptr %17, align 4
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.mipi_dsi_host, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  store i16 2, ptr %13, align 2
  br label %33

32:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %36

33:                                               ; preds = %31, %26
  %34 = call i32 %24(ptr noundef %18, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %32
  %37 = phi i32 [ -38, %32 ], [ %34, %33 ]
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ 0, %33 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_dcs_get_display_brightness(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.mipi_dsi_msg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 82, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 1
  store i8 6, ptr %8, align 1
  %9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 2
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 4
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 5
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %4, i32 0, i32 6
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.mipi_dsi_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.mipi_dsi_host_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  store i16 2, ptr %9, align 2
  br label %29

28:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %34

29:                                               ; preds = %27, %22
  %30 = call i32 %20(ptr noundef %14, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %31 = icmp slt i32 %30, 1
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %32, i32 -61, i32 %30
  br i1 %31, label %34, label %36

34:                                               ; preds = %29, %28
  %35 = phi i32 [ -38, %28 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mipi_dsi_driver_register_full(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @mipi_dsi_bus_type, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 8
  store ptr @mipi_dsi_drv_probe, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 10
  store ptr @mipi_dsi_drv_remove, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 11
  store ptr @mipi_dsi_drv_shutdown, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = tail call i32 @driver_register(ptr noundef %0) #14
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mipi_dsi_drv_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %4) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mipi_dsi_drv_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %4) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mipi_dsi_drv_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = getelementptr inbounds %struct.mipi_dsi_driver, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mipi_dsi_driver_unregister(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mipi_dsi_bus_init() #9 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @mipi_dsi_bus_type) #14
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mipi_dsi_device_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_match_device(ptr noundef %4, ptr noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 472
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ 1, %2 ], [ %12, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mipi_dsi_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #14
  %4 = icmp eq i32 %3, -19
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 472
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %6) #14
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_freeze(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_thaw(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_poweroff(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_restore(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mipi_dsi_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  tail call void @of_node_put(ptr noundef %4) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_modalias_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

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
