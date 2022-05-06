; ModuleID = '/llk/IR/drivers/gpio/gpiolib.c_pt.bc'
source_filename = "../drivers/gpio/gpiolib.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_to_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_to_desc\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_to_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_get_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_get_desc\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_get_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_desc_to_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22desc_to_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_desc_to_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_to_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_to_chip\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_to_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_direction:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_direction\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_direction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_line_is_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_line_is_valid\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_line_is_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_add_data_with_key:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_add_data_with_key\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_add_data_with_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_get_data:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_get_data\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_get_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_remove\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_find:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_find\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irqchip_irq_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irqchip_irq_valid\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irqchip_irq_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_populate_parent_fwspec_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_populate_parent_fwspec_twocell\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_populate_parent_fwspec_twocell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_populate_parent_fwspec_fourcell:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_populate_parent_fwspec_fourcell\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_populate_parent_fwspec_fourcell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irq_map:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irq_map\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irq_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irq_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irq_unmap\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irq_unmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irq_domain_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irq_domain_activate\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irq_domain_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irq_domain_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irq_domain_deactivate\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irq_domain_deactivate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_irqchip_add_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_irqchip_add_domain\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_irqchip_add_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_generic_request:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_generic_request\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_generic_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_generic_free:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_generic_free\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_generic_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_generic_config:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_generic_config\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_generic_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_add_pingroup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_add_pingroup_range\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_add_pingroup_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_add_pin_range:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_add_pin_range\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_add_pin_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_remove_pin_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_remove_pin_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_remove_pin_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_is_requested:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_is_requested\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_is_requested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_request_own_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_request_own_desc\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_request_own_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_free_own_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_free_own_desc\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_free_own_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_direction_input:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_direction_input\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_direction_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_direction_output_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_direction_output_raw\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_direction_output_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_direction_output:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_direction_output\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_direction_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_debounce\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_transitory:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_transitory\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_transitory:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_is_active_low:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_is_active_low\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_is_active_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_toggle_active_low:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_toggle_active_low\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_toggle_active_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_raw_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_raw_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_raw_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_raw_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_raw_array_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_raw_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_array_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_raw_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_raw_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_raw_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_raw_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_raw_array_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_raw_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_array_value\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_array_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_consumer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_consumer_name\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_consumer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_to_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_to_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_to_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_lock_as_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_lock_as_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_lock_as_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_unlock_as_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_unlock_as_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_unlock_as_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_disable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_disable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_enable_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_enable_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_line_is_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_line_is_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_line_is_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_reqres_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_reqres_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_reqres_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_relres_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_relres_irq\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_relres_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_line_is_open_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_line_is_open_drain\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_line_is_open_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_line_is_open_source:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_line_is_open_source\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_line_is_open_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiochip_line_is_persistent:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiochip_line_is_persistent\22\09\09\09\09\09"
module asm "__kstrtabns_gpiochip_line_is_persistent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_raw_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_raw_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_raw_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_raw_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_raw_array_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_raw_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_array_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_raw_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_raw_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_raw_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_raw_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_raw_array_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_raw_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_set_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_set_array_value_cansleep\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_set_array_value_cansleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_add_lookup_table:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_add_lookup_table\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_add_lookup_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_remove_lookup_table:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_remove_lookup_table\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_remove_lookup_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_add_hogs:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_add_hogs\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_add_hogs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_remove_hogs:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_remove_hogs\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_remove_hogs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_gpiod_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_gpiod_get_index\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_gpiod_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_count:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_count\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_optional\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_index\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_named_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_named_gpiod\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_named_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_index_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_index_optional\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_index_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_get_array_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_get_array_optional\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_get_array_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_put:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_put\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpiod_put_array:\09\09\09\09\09"
module asm "\09.asciz \09\22gpiod_put_array\22\09\09\09\09\09"
module asm "__kstrtabns_gpiod_put_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_gpio_direction = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_gpio_value = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.gpio_desc = type { ptr, i32, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.96, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.96 = type { ptr }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.gpiod_hog = type { %struct.list_head, ptr, i16, ptr, i32, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_pin_range = type { %struct.list_head, ptr, %struct.pinctrl_gpio_range }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gpio_array = type { ptr, i32, ptr, ptr, ptr, [0 x i32] }
%struct.gpiod_lookup_table = type { %struct.list_head, ptr, [0 x %struct.gpiod_lookup] }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.92, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.93, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.94, ptr, %struct.address_space, %struct.list_head, %union.anon.95, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.93 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.94 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.95 = type { ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_gpio_direction = internal constant [15 x i8] c"gpio_direction\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gpio_direction = dso_local global %struct.static_call_key { ptr @__traceiter_gpio_direction }, align 4
@__tracepoint_gpio_direction = dso_local global %struct.tracepoint { ptr @__tpstrtab_gpio_direction, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_gpio_direction, ptr null, ptr @__traceiter_gpio_direction, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gpio_direction = internal constant ptr @__tracepoint_gpio_direction, section "__tracepoints_ptrs", align 4
@__tpstrtab_gpio_value = internal constant [11 x i8] c"gpio_value\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_gpio_value = dso_local global %struct.static_call_key { ptr @__traceiter_gpio_value }, align 4
@__tracepoint_gpio_value = dso_local global %struct.tracepoint { ptr @__tpstrtab_gpio_value, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_gpio_value, ptr null, ptr @__traceiter_gpio_value, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_gpio_value = internal constant ptr @__tracepoint_gpio_value, section "__tracepoints_ptrs", align 4
@trace_event_fields_gpio_direction = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.35, %union.anon { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon { %struct.anon { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon { %struct.anon { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_gpio_direction = internal global %struct.trace_event_class { ptr @.str.36, ptr @trace_event_raw_event_gpio_direction, ptr @perf_trace_gpio_direction, ptr @trace_event_reg, ptr @trace_event_fields_gpio_direction, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gpio_direction, i64 24), ptr getelementptr (i8, ptr @event_class_gpio_direction, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gpio_direction = internal global %struct.trace_event_functions { ptr @trace_raw_output_gpio_direction, ptr null, ptr null, ptr null }, align 4
@print_fmt_gpio_direction = internal global [59 x i8] c"\22%u %3s (%d)\22, REC->gpio, REC->in ? \22in\22 : \22out\22, REC->err\00", align 1
@event_gpio_direction = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gpio_direction, %union.anon.0 { ptr @__tracepoint_gpio_direction }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gpio_direction }, ptr @print_fmt_gpio_direction, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_gpio_direction = internal global ptr @event_gpio_direction, section "_ftrace_events", align 4
@trace_event_fields_gpio_value = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.35, %union.anon { %struct.anon { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon { %struct.anon { ptr @.str.42, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_gpio_value = internal global %struct.trace_event_class { ptr @.str.36, ptr @trace_event_raw_event_gpio_value, ptr @perf_trace_gpio_value, ptr @trace_event_reg, ptr @trace_event_fields_gpio_value, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_gpio_value, i64 24), ptr getelementptr (i8, ptr @event_class_gpio_value, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_gpio_value = internal global %struct.trace_event_functions { ptr @trace_raw_output_gpio_value, ptr null, ptr null, ptr null }, align 4
@print_fmt_gpio_value = internal global [61 x i8] c"\22%u %3s %d\22, REC->gpio, REC->get ? \22get\22 : \22set\22, REC->value\00", align 1
@event_gpio_value = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_gpio_value, %union.anon.0 { ptr @__tracepoint_gpio_value }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_gpio_value }, ptr @print_fmt_gpio_value, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_gpio_value = internal global ptr @event_gpio_value, section "_ftrace_events", align 4
@gpio_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@gpio_devices = dso_local global %struct.list_head { ptr @gpio_devices, ptr @gpio_devices }, align 4
@.str = private unnamed_addr constant [19 x i8] c"\014invalid GPIO %d\0A\00", align 1
@__kstrtab_gpio_to_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_to_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_to_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_to_desc to i32), ptr @__kstrtab_gpio_to_desc, ptr @__kstrtabns_gpio_to_desc }, section "___ksymtab_gpl+gpio_to_desc", align 4
@__kstrtab_gpiochip_get_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_get_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_get_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_get_desc to i32), ptr @__kstrtab_gpiochip_get_desc, ptr @__kstrtabns_gpiochip_get_desc }, section "___ksymtab_gpl+gpiochip_get_desc", align 4
@__kstrtab_desc_to_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_desc_to_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_desc_to_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @desc_to_gpio to i32), ptr @__kstrtab_desc_to_gpio, ptr @__kstrtabns_desc_to_gpio }, section "___ksymtab_gpl+desc_to_gpio", align 4
@__kstrtab_gpiod_to_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_to_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_to_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_to_chip to i32), ptr @__kstrtab_gpiod_to_chip, ptr @__kstrtabns_gpiod_to_chip }, section "___ksymtab_gpl+gpiod_to_chip", align 4
@__kstrtab_gpiod_get_direction = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_direction = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_direction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_direction to i32), ptr @__kstrtab_gpiod_get_direction, ptr @__kstrtabns_gpiod_get_direction }, section "___ksymtab_gpl+gpiod_get_direction", align 4
@__kstrtab_gpiochip_line_is_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_line_is_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_line_is_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_line_is_valid to i32), ptr @__kstrtab_gpiochip_line_is_valid, ptr @__kstrtabns_gpiochip_line_is_valid }, section "___ksymtab_gpl+gpiochip_line_is_valid", align 4
@gpio_bus_type = internal global %struct.bus_type { ptr @.str.36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@gpio_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"gpiochip%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"(%s): tried to insert a GPIO chip with zero lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"(%s): line cnt %u is greater than fast path cnt %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gpiochip_add_data_with_key.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"&(&gdev->notifier)->rwsem\00", align 1
@gpiolib_initialized = internal unnamed_addr global i1 false, align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: GPIOs %d..%d (%s) failed to register, %d\0A\00", align 1
@__func__.gpiochip_add_data_with_key = private unnamed_addr constant [27 x i8] c"gpiochip_add_data_with_key\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@__kstrtab_gpiochip_add_data_with_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_add_data_with_key = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_add_data_with_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_add_data_with_key to i32), ptr @__kstrtab_gpiochip_add_data_with_key, ptr @__kstrtabns_gpiochip_add_data_with_key }, section "___ksymtab_gpl+gpiochip_add_data_with_key", align 4
@__kstrtab_gpiochip_get_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_get_data = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_get_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_get_data to i32), ptr @__kstrtab_gpiochip_get_data, ptr @__kstrtabns_gpiochip_get_data }, section "___ksymtab_gpl+gpiochip_get_data", align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"REMOVING GPIOCHIP WITH GPIOS STILL REQUESTED\0A\00", align 1
@__kstrtab_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_remove to i32), ptr @__kstrtab_gpiochip_remove, ptr @__kstrtabns_gpiochip_remove }, section "___ksymtab_gpl+gpiochip_remove", align 4
@__kstrtab_gpiochip_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_find = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_find to i32), ptr @__kstrtab_gpiochip_find, ptr @__kstrtabns_gpiochip_find }, section "___ksymtab_gpl+gpiochip_find", align 4
@__kstrtab_gpiochip_irqchip_irq_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irqchip_irq_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irqchip_irq_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irqchip_irq_valid to i32), ptr @__kstrtab_gpiochip_irqchip_irq_valid, ptr @__kstrtabns_gpiochip_irqchip_irq_valid }, section "___ksymtab_gpl+gpiochip_irqchip_irq_valid", align 4
@__kstrtab_gpiochip_populate_parent_fwspec_twocell = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_populate_parent_fwspec_twocell = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_populate_parent_fwspec_twocell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_populate_parent_fwspec_twocell to i32), ptr @__kstrtab_gpiochip_populate_parent_fwspec_twocell, ptr @__kstrtabns_gpiochip_populate_parent_fwspec_twocell }, section "___ksymtab_gpl+gpiochip_populate_parent_fwspec_twocell", align 4
@__kstrtab_gpiochip_populate_parent_fwspec_fourcell = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_populate_parent_fwspec_fourcell = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_populate_parent_fwspec_fourcell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_populate_parent_fwspec_fourcell to i32), ptr @__kstrtab_gpiochip_populate_parent_fwspec_fourcell, ptr @__kstrtabns_gpiochip_populate_parent_fwspec_fourcell }, section "___ksymtab_gpl+gpiochip_populate_parent_fwspec_fourcell", align 4
@__kstrtab_gpiochip_irq_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irq_map = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irq_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irq_map to i32), ptr @__kstrtab_gpiochip_irq_map, ptr @__kstrtabns_gpiochip_irq_map }, section "___ksymtab_gpl+gpiochip_irq_map", align 4
@__kstrtab_gpiochip_irq_unmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irq_unmap = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irq_unmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irq_unmap to i32), ptr @__kstrtab_gpiochip_irq_unmap, ptr @__kstrtabns_gpiochip_irq_unmap }, section "___ksymtab_gpl+gpiochip_irq_unmap", align 4
@__kstrtab_gpiochip_irq_domain_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irq_domain_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irq_domain_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irq_domain_activate to i32), ptr @__kstrtab_gpiochip_irq_domain_activate, ptr @__kstrtabns_gpiochip_irq_domain_activate }, section "___ksymtab_gpl+gpiochip_irq_domain_activate", align 4
@__kstrtab_gpiochip_irq_domain_deactivate = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irq_domain_deactivate = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irq_domain_deactivate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irq_domain_deactivate to i32), ptr @__kstrtab_gpiochip_irq_domain_deactivate, ptr @__kstrtabns_gpiochip_irq_domain_deactivate }, section "___ksymtab_gpl+gpiochip_irq_domain_deactivate", align 4
@__kstrtab_gpiochip_irqchip_add_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_irqchip_add_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_irqchip_add_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_irqchip_add_domain to i32), ptr @__kstrtab_gpiochip_irqchip_add_domain, ptr @__kstrtabns_gpiochip_irqchip_add_domain }, section "___ksymtab_gpl+gpiochip_irqchip_add_domain", align 4
@__kstrtab_gpiochip_generic_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_generic_request = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_generic_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_generic_request to i32), ptr @__kstrtab_gpiochip_generic_request, ptr @__kstrtabns_gpiochip_generic_request }, section "___ksymtab_gpl+gpiochip_generic_request", align 4
@__kstrtab_gpiochip_generic_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_generic_free = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_generic_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_generic_free to i32), ptr @__kstrtab_gpiochip_generic_free, ptr @__kstrtabns_gpiochip_generic_free }, section "___ksymtab_gpl+gpiochip_generic_free", align 4
@__kstrtab_gpiochip_generic_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_generic_config = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_generic_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_generic_config to i32), ptr @__kstrtab_gpiochip_generic_config, ptr @__kstrtabns_gpiochip_generic_config }, section "___ksymtab_gpl+gpiochip_generic_config", align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"(%s): failed to allocate pin ranges\0A\00", align 1
@__kstrtab_gpiochip_add_pingroup_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_add_pingroup_range = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_add_pingroup_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_add_pingroup_range to i32), ptr @__kstrtab_gpiochip_add_pingroup_range, ptr @__kstrtabns_gpiochip_add_pingroup_range }, section "___ksymtab_gpl+gpiochip_add_pingroup_range", align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"(%s): could not create pin range\0A\00", align 1
@__kstrtab_gpiochip_add_pin_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_add_pin_range = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_add_pin_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_add_pin_range to i32), ptr @__kstrtab_gpiochip_add_pin_range, ptr @__kstrtabns_gpiochip_add_pin_range }, section "___ksymtab_gpl+gpiochip_add_pin_range", align 4
@__kstrtab_gpiochip_remove_pin_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_remove_pin_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_remove_pin_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_remove_pin_ranges to i32), ptr @__kstrtab_gpiochip_remove_pin_ranges, ptr @__kstrtabns_gpiochip_remove_pin_ranges }, section "___ksymtab_gpl+gpiochip_remove_pin_ranges", align 4
@__func__.gpiod_request = private unnamed_addr constant [14 x i8] c"gpiod_request\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"drivers/gpio/gpiolib.c\00", align 1
@__kstrtab_gpiochip_is_requested = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_is_requested = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_is_requested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_is_requested to i32), ptr @__kstrtab_gpiochip_is_requested, ptr @__kstrtabns_gpiochip_is_requested }, section "___ksymtab_gpl+gpiochip_is_requested", align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"(%s): failed to get GPIO descriptor\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"(%s): setup of own GPIO %s failed\0A\00", align 1
@__kstrtab_gpiochip_request_own_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_request_own_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_request_own_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_request_own_desc to i32), ptr @__kstrtab_gpiochip_request_own_desc, ptr @__kstrtabns_gpiochip_request_own_desc }, section "___ksymtab_gpl+gpiochip_request_own_desc", align 4
@__kstrtab_gpiochip_free_own_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_free_own_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_free_own_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_free_own_desc to i32), ptr @__kstrtab_gpiochip_free_own_desc, ptr @__kstrtabns_gpiochip_free_own_desc }, section "___ksymtab_gpl+gpiochip_free_own_desc", align 4
@__func__.gpiod_direction_input = private unnamed_addr constant [22 x i8] c"gpiod_direction_input\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"\014gpio-%d (%s): %s: missing get() but have direction_input()\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"\014gpio-%d (%s): %s: missing direction_input() operation and line is output\0A\00", align 1
@__kstrtab_gpiod_direction_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_direction_input = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_direction_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_direction_input to i32), ptr @__kstrtab_gpiod_direction_input, ptr @__kstrtabns_gpiod_direction_input }, section "___ksymtab_gpl+gpiod_direction_input", align 4
@__func__.gpiod_direction_output_raw = private unnamed_addr constant [27 x i8] c"gpiod_direction_output_raw\00", align 1
@__kstrtab_gpiod_direction_output_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_direction_output_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_direction_output_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_direction_output_raw to i32), ptr @__kstrtab_gpiod_direction_output_raw, ptr @__kstrtabns_gpiod_direction_output_raw }, section "___ksymtab_gpl+gpiod_direction_output_raw", align 4
@__func__.gpiod_direction_output = private unnamed_addr constant [23 x i8] c"gpiod_direction_output\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"\013gpio-%d (%s): %s: tried to set a GPIO tied to an IRQ as output\0A\00", align 1
@__kstrtab_gpiod_direction_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_direction_output = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_direction_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_direction_output to i32), ptr @__kstrtab_gpiod_direction_output, ptr @__kstrtabns_gpiod_direction_output }, section "___ksymtab_gpl+gpiod_direction_output", align 4
@__func__.gpiod_set_config = private unnamed_addr constant [17 x i8] c"gpiod_set_config\00", align 1
@__kstrtab_gpiod_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_config to i32), ptr @__kstrtab_gpiod_set_config, ptr @__kstrtabns_gpiod_set_config }, section "___ksymtab_gpl+gpiod_set_config", align 4
@__kstrtab_gpiod_set_debounce = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_debounce = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_debounce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_debounce to i32), ptr @__kstrtab_gpiod_set_debounce, ptr @__kstrtabns_gpiod_set_debounce }, section "___ksymtab_gpl+gpiod_set_debounce", align 4
@__func__.gpiod_set_transitory = private unnamed_addr constant [21 x i8] c"gpiod_set_transitory\00", align 1
@__kstrtab_gpiod_set_transitory = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_transitory = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_transitory = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_transitory to i32), ptr @__kstrtab_gpiod_set_transitory, ptr @__kstrtabns_gpiod_set_transitory }, section "___ksymtab_gpl+gpiod_set_transitory", align 4
@__func__.gpiod_is_active_low = private unnamed_addr constant [20 x i8] c"gpiod_is_active_low\00", align 1
@__kstrtab_gpiod_is_active_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_is_active_low = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_is_active_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_is_active_low to i32), ptr @__kstrtab_gpiod_is_active_low, ptr @__kstrtabns_gpiod_is_active_low }, section "___ksymtab_gpl+gpiod_is_active_low", align 4
@__func__.gpiod_toggle_active_low = private unnamed_addr constant [24 x i8] c"gpiod_toggle_active_low\00", align 1
@__kstrtab_gpiod_toggle_active_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_toggle_active_low = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_toggle_active_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_toggle_active_low to i32), ptr @__kstrtab_gpiod_toggle_active_low, ptr @__kstrtabns_gpiod_toggle_active_low }, section "___ksymtab_gpl+gpiod_toggle_active_low", align 4
@__func__.gpiod_get_raw_value = private unnamed_addr constant [20 x i8] c"gpiod_get_raw_value\00", align 1
@__kstrtab_gpiod_get_raw_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_raw_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_raw_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_raw_value to i32), ptr @__kstrtab_gpiod_get_raw_value, ptr @__kstrtabns_gpiod_get_raw_value }, section "___ksymtab_gpl+gpiod_get_raw_value", align 4
@__func__.gpiod_get_value = private unnamed_addr constant [16 x i8] c"gpiod_get_value\00", align 1
@__kstrtab_gpiod_get_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_value to i32), ptr @__kstrtab_gpiod_get_value, ptr @__kstrtabns_gpiod_get_value }, section "___ksymtab_gpl+gpiod_get_value", align 4
@__kstrtab_gpiod_get_raw_array_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_raw_array_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_raw_array_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_raw_array_value to i32), ptr @__kstrtab_gpiod_get_raw_array_value, ptr @__kstrtabns_gpiod_get_raw_array_value }, section "___ksymtab_gpl+gpiod_get_raw_array_value", align 4
@__kstrtab_gpiod_get_array_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_array_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_array_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_array_value to i32), ptr @__kstrtab_gpiod_get_array_value, ptr @__kstrtabns_gpiod_get_array_value }, section "___ksymtab_gpl+gpiod_get_array_value", align 4
@__func__.gpiod_set_raw_value = private unnamed_addr constant [20 x i8] c"gpiod_set_raw_value\00", align 1
@__kstrtab_gpiod_set_raw_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_raw_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_raw_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_raw_value to i32), ptr @__kstrtab_gpiod_set_raw_value, ptr @__kstrtabns_gpiod_set_raw_value }, section "___ksymtab_gpl+gpiod_set_raw_value", align 4
@__func__.gpiod_set_value = private unnamed_addr constant [16 x i8] c"gpiod_set_value\00", align 1
@__kstrtab_gpiod_set_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_value to i32), ptr @__kstrtab_gpiod_set_value, ptr @__kstrtabns_gpiod_set_value }, section "___ksymtab_gpl+gpiod_set_value", align 4
@__kstrtab_gpiod_set_raw_array_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_raw_array_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_raw_array_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_raw_array_value to i32), ptr @__kstrtab_gpiod_set_raw_array_value, ptr @__kstrtabns_gpiod_set_raw_array_value }, section "___ksymtab_gpl+gpiod_set_raw_array_value", align 4
@__kstrtab_gpiod_set_array_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_array_value = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_array_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_array_value to i32), ptr @__kstrtab_gpiod_set_array_value, ptr @__kstrtabns_gpiod_set_array_value }, section "___ksymtab_gpl+gpiod_set_array_value", align 4
@__func__.gpiod_cansleep = private unnamed_addr constant [15 x i8] c"gpiod_cansleep\00", align 1
@__kstrtab_gpiod_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_cansleep to i32), ptr @__kstrtab_gpiod_cansleep, ptr @__kstrtabns_gpiod_cansleep }, section "___ksymtab_gpl+gpiod_cansleep", align 4
@__func__.gpiod_set_consumer_name = private unnamed_addr constant [24 x i8] c"gpiod_set_consumer_name\00", align 1
@__kstrtab_gpiod_set_consumer_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_consumer_name = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_consumer_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_consumer_name to i32), ptr @__kstrtab_gpiod_set_consumer_name, ptr @__kstrtabns_gpiod_set_consumer_name }, section "___ksymtab_gpl+gpiod_set_consumer_name", align 4
@__kstrtab_gpiod_to_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_to_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_to_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_to_irq to i32), ptr @__kstrtab_gpiod_to_irq, ptr @__kstrtabns_gpiod_to_irq }, section "___ksymtab_gpl+gpiod_to_irq", align 4
@.str.19 = private unnamed_addr constant [37 x i8] c"(%s): %s: cannot get GPIO direction\0A\00", align 1
@__func__.gpiochip_lock_as_irq = private unnamed_addr constant [21 x i8] c"gpiochip_lock_as_irq\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"(%s): %s: tried to flag a GPIO set as output for IRQ\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@__kstrtab_gpiochip_lock_as_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_lock_as_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_lock_as_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_lock_as_irq to i32), ptr @__kstrtab_gpiochip_lock_as_irq, ptr @__kstrtabns_gpiochip_lock_as_irq }, section "___ksymtab_gpl+gpiochip_lock_as_irq", align 4
@__kstrtab_gpiochip_unlock_as_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_unlock_as_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_unlock_as_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_unlock_as_irq to i32), ptr @__kstrtab_gpiochip_unlock_as_irq, ptr @__kstrtabns_gpiochip_unlock_as_irq }, section "___ksymtab_gpl+gpiochip_unlock_as_irq", align 4
@__kstrtab_gpiochip_disable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_disable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_disable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_disable_irq to i32), ptr @__kstrtab_gpiochip_disable_irq, ptr @__kstrtabns_gpiochip_disable_irq }, section "___ksymtab_gpl+gpiochip_disable_irq", align 4
@__kstrtab_gpiochip_enable_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_enable_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_enable_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_enable_irq to i32), ptr @__kstrtab_gpiochip_enable_irq, ptr @__kstrtabns_gpiochip_enable_irq }, section "___ksymtab_gpl+gpiochip_enable_irq", align 4
@__kstrtab_gpiochip_line_is_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_line_is_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_line_is_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_line_is_irq to i32), ptr @__kstrtab_gpiochip_line_is_irq, ptr @__kstrtabns_gpiochip_line_is_irq }, section "___ksymtab_gpl+gpiochip_line_is_irq", align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"(%s): unable to lock HW IRQ %u for IRQ\0A\00", align 1
@__kstrtab_gpiochip_reqres_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_reqres_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_reqres_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_reqres_irq to i32), ptr @__kstrtab_gpiochip_reqres_irq, ptr @__kstrtabns_gpiochip_reqres_irq }, section "___ksymtab_gpl+gpiochip_reqres_irq", align 4
@__kstrtab_gpiochip_relres_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_relres_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_relres_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_relres_irq to i32), ptr @__kstrtab_gpiochip_relres_irq, ptr @__kstrtabns_gpiochip_relres_irq }, section "___ksymtab_gpl+gpiochip_relres_irq", align 4
@__kstrtab_gpiochip_line_is_open_drain = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_line_is_open_drain = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_line_is_open_drain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_line_is_open_drain to i32), ptr @__kstrtab_gpiochip_line_is_open_drain, ptr @__kstrtabns_gpiochip_line_is_open_drain }, section "___ksymtab_gpl+gpiochip_line_is_open_drain", align 4
@__kstrtab_gpiochip_line_is_open_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_line_is_open_source = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_line_is_open_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_line_is_open_source to i32), ptr @__kstrtab_gpiochip_line_is_open_source, ptr @__kstrtabns_gpiochip_line_is_open_source }, section "___ksymtab_gpl+gpiochip_line_is_open_source", align 4
@__kstrtab_gpiochip_line_is_persistent = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiochip_line_is_persistent = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiochip_line_is_persistent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiochip_line_is_persistent to i32), ptr @__kstrtab_gpiochip_line_is_persistent, ptr @__kstrtabns_gpiochip_line_is_persistent }, section "___ksymtab_gpl+gpiochip_line_is_persistent", align 4
@__func__.gpiod_get_raw_value_cansleep = private unnamed_addr constant [29 x i8] c"gpiod_get_raw_value_cansleep\00", align 1
@__kstrtab_gpiod_get_raw_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_raw_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_raw_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_raw_value_cansleep to i32), ptr @__kstrtab_gpiod_get_raw_value_cansleep, ptr @__kstrtabns_gpiod_get_raw_value_cansleep }, section "___ksymtab_gpl+gpiod_get_raw_value_cansleep", align 4
@__func__.gpiod_get_value_cansleep = private unnamed_addr constant [25 x i8] c"gpiod_get_value_cansleep\00", align 1
@__kstrtab_gpiod_get_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_value_cansleep to i32), ptr @__kstrtab_gpiod_get_value_cansleep, ptr @__kstrtabns_gpiod_get_value_cansleep }, section "___ksymtab_gpl+gpiod_get_value_cansleep", align 4
@__kstrtab_gpiod_get_raw_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_raw_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_raw_array_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_raw_array_value_cansleep to i32), ptr @__kstrtab_gpiod_get_raw_array_value_cansleep, ptr @__kstrtabns_gpiod_get_raw_array_value_cansleep }, section "___ksymtab_gpl+gpiod_get_raw_array_value_cansleep", align 4
@__kstrtab_gpiod_get_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_array_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_array_value_cansleep to i32), ptr @__kstrtab_gpiod_get_array_value_cansleep, ptr @__kstrtabns_gpiod_get_array_value_cansleep }, section "___ksymtab_gpl+gpiod_get_array_value_cansleep", align 4
@__func__.gpiod_set_raw_value_cansleep = private unnamed_addr constant [29 x i8] c"gpiod_set_raw_value_cansleep\00", align 1
@__kstrtab_gpiod_set_raw_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_raw_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_raw_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_raw_value_cansleep to i32), ptr @__kstrtab_gpiod_set_raw_value_cansleep, ptr @__kstrtabns_gpiod_set_raw_value_cansleep }, section "___ksymtab_gpl+gpiod_set_raw_value_cansleep", align 4
@__func__.gpiod_set_value_cansleep = private unnamed_addr constant [25 x i8] c"gpiod_set_value_cansleep\00", align 1
@__kstrtab_gpiod_set_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_value_cansleep to i32), ptr @__kstrtab_gpiod_set_value_cansleep, ptr @__kstrtabns_gpiod_set_value_cansleep }, section "___ksymtab_gpl+gpiod_set_value_cansleep", align 4
@__kstrtab_gpiod_set_raw_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_raw_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_raw_array_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_raw_array_value_cansleep to i32), ptr @__kstrtab_gpiod_set_raw_array_value_cansleep, ptr @__kstrtabns_gpiod_set_raw_array_value_cansleep }, section "___ksymtab_gpl+gpiod_set_raw_array_value_cansleep", align 4
@gpio_lookup_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gpio_lookup_lock, i64 12), ptr getelementptr (i8, ptr @gpio_lookup_lock, i64 12) } }, align 4
@gpio_lookup_list = internal global %struct.list_head { ptr @gpio_lookup_list, ptr @gpio_lookup_list }, align 4
@__kstrtab_gpiod_set_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_set_array_value_cansleep = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_set_array_value_cansleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_set_array_value_cansleep to i32), ptr @__kstrtab_gpiod_set_array_value_cansleep, ptr @__kstrtabns_gpiod_set_array_value_cansleep }, section "___ksymtab_gpl+gpiod_set_array_value_cansleep", align 4
@__kstrtab_gpiod_add_lookup_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_add_lookup_table = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_add_lookup_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_add_lookup_table to i32), ptr @__kstrtab_gpiod_add_lookup_table, ptr @__kstrtabns_gpiod_add_lookup_table }, section "___ksymtab_gpl+gpiod_add_lookup_table", align 4
@__kstrtab_gpiod_remove_lookup_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_remove_lookup_table = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_remove_lookup_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_remove_lookup_table to i32), ptr @__kstrtab_gpiod_remove_lookup_table, ptr @__kstrtabns_gpiod_remove_lookup_table }, section "___ksymtab_gpl+gpiod_remove_lookup_table", align 4
@gpio_machine_hogs_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gpio_machine_hogs_mutex, i64 12), ptr getelementptr (i8, ptr @gpio_machine_hogs_mutex, i64 12) } }, align 4
@gpio_machine_hogs = internal global %struct.list_head { ptr @gpio_machine_hogs, ptr @gpio_machine_hogs }, align 4
@__kstrtab_gpiod_add_hogs = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_add_hogs = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_add_hogs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_add_hogs to i32), ptr @__kstrtab_gpiod_add_hogs, ptr @__kstrtabns_gpiod_add_hogs }, section "___ksymtab_gpl+gpiod_add_hogs", align 4
@__kstrtab_gpiod_remove_hogs = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_remove_hogs = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_remove_hogs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_remove_hogs to i32), ptr @__kstrtab_gpiod_remove_hogs, ptr @__kstrtabns_gpiod_remove_hogs }, section "___ksymtab_gpl+gpiod_remove_hogs", align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@__kstrtab_fwnode_gpiod_get_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_gpiod_get_index = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_gpiod_get_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_gpiod_get_index to i32), ptr @__kstrtab_fwnode_gpiod_get_index, ptr @__kstrtabns_fwnode_gpiod_get_index }, section "___ksymtab_gpl+fwnode_gpiod_get_index", align 4
@__kstrtab_gpiod_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_count = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_count to i32), ptr @__kstrtab_gpiod_count, ptr @__kstrtabns_gpiod_count }, section "___ksymtab_gpl+gpiod_count", align 4
@__kstrtab_gpiod_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get to i32), ptr @__kstrtab_gpiod_get, ptr @__kstrtabns_gpiod_get }, section "___ksymtab_gpl+gpiod_get", align 4
@__kstrtab_gpiod_get_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_optional to i32), ptr @__kstrtab_gpiod_get_optional, ptr @__kstrtabns_gpiod_get_optional }, section "___ksymtab_gpl+gpiod_get_optional", align 4
@.str.25 = private unnamed_addr constant [88 x i8] c"\014gpio-%d (%s): enforced open drain please flag it properly in DT/ACPI DSDT/board file\0A\00", align 1
@.str.26 = private unnamed_addr constant [75 x i8] c"\013gpio-%d (%s): both pull-up and pull-down enabled, invalid configuration\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"nonexclusive access to GPIO for %s\0A\00", align 1
@__kstrtab_gpiod_get_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_index = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_index to i32), ptr @__kstrtab_gpiod_get_index, ptr @__kstrtabns_gpiod_get_index }, section "___ksymtab_gpl+gpiod_get_index", align 4
@__kstrtab_fwnode_get_named_gpiod = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_named_gpiod = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_named_gpiod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_named_gpiod to i32), ptr @__kstrtab_fwnode_get_named_gpiod, ptr @__kstrtabns_fwnode_get_named_gpiod }, section "___ksymtab_gpl+fwnode_get_named_gpiod", align 4
@__kstrtab_gpiod_get_index_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_index_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_index_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_index_optional to i32), ptr @__kstrtab_gpiod_get_index_optional, ptr @__kstrtabns_gpiod_get_index_optional }, section "___ksymtab_gpl+gpiod_get_index_optional", align 4
@.str.28 = private unnamed_addr constant [58 x i8] c"\013requesting hog GPIO %s (chip %s, offset %d) failed, %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\016gpio-%d (%s): hogged as %s%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"/high\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"/low\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_gpiod_get_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_array to i32), ptr @__kstrtab_gpiod_get_array, ptr @__kstrtabns_gpiod_get_array }, section "___ksymtab_gpl+gpiod_get_array", align 4
@__kstrtab_gpiod_get_array_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_get_array_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_get_array_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_get_array_optional to i32), ptr @__kstrtab_gpiod_get_array_optional, ptr @__kstrtabns_gpiod_get_array_optional }, section "___ksymtab_gpl+gpiod_get_array_optional", align 4
@__kstrtab_gpiod_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_put = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_put to i32), ptr @__kstrtab_gpiod_put, ptr @__kstrtabns_gpiod_put }, section "___ksymtab_gpl+gpiod_put", align 4
@__kstrtab_gpiod_put_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpiod_put_array = external dso_local constant [0 x i8], align 1
@__ksymtab_gpiod_put_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpiod_put_array to i32), ptr @__kstrtab_gpiod_put_array, ptr @__kstrtabns_gpiod_put_array }, section "___ksymtab_gpl+gpiod_put_array", align 4
@__initcall__kmod_gpiolib__252_4383_gpiolib_dev_init1 = internal global ptr @gpiolib_dev_init, section ".initcall1.init", align 4
@__initcall__kmod_gpiolib__253_4510_gpiolib_debugfs_init4 = internal global ptr @gpiolib_debugfs_init, section ".initcall4.init", align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.36 = private constant [5 x i8] c"gpio\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"%u %3s (%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"%u %3s %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"\013%s: cannot find free range\0A\00", align 1
@__func__.gpiochip_find_base = private unnamed_addr constant [19 x i8] c"gpiochip_find_base\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"GPIO integer space overlap, cannot add chip\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"Detected name collision for GPIO name '%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"gpio-line-names\00", align 1
@.str.50 = private unnamed_addr constant [87 x i8] c"gpio-line-names too short (length %d), cannot map names for the gpiochip at offset %u\0A\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"failed to read GPIO line names\0A\00", align 1
@gpio_devt = internal global i32 0, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.52 = private unnamed_addr constant [67 x i8] c"(%s): you cannot have chained interrupts on a chip that may sleep\0A\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"%pfw: Ignoring %u default trigger\0A\00", align 1
@.str.54 = private unnamed_addr constant [62 x i8] c"(%s): to_irq is redefined in %s and you shouldn't rely on it\0A\00", align 1
@__func__.gpiochip_add_irqchip = private unnamed_addr constant [21 x i8] c"gpiochip_add_irqchip\00", align 1
@gpiochip_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @gpiochip_irq_map, ptr @gpiochip_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [36 x i8] c"(%s): missing irqdomain vital data\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"(%s): can't look up hwirq %lu\0A\00", align 1
@.str.57 = private unnamed_addr constant [56 x i8] c"(%s): failed to allocate parent hwirq %d for hwirq %lu\0A\00", align 1
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.58 = private unnamed_addr constant [31 x i8] c"(%s): skip set-up on hwirq %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [85 x i8] c"(%s): can not allocate irq for GPIO line %d parent hwirq %d in hierarchy domain: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"(%s): %s unknown fwnode type proceed anyway\0A\00", align 1
@__func__.gpiochip_set_hierarchical_irqchip = private unnamed_addr constant [34 x i8] c"gpiochip_set_hierarchical_irqchip\00", align 1
@.str.61 = private unnamed_addr constant [87 x i8] c"(%s): detected irqchip that is shared with multiple gpiochips: please fix the driver.\0A\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"\014%s: invalid GPIO (errorpointer)\0A\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"\014%s: invalid GPIO (no device)\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"%s: backing chip is gone\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.66 = private unnamed_addr constant [69 x i8] c"\014gpio-%d (%s): %s: missing set() and direction_output() operations\0A\00", align 1
@__func__.gpiod_direction_output_raw_commit = private unnamed_addr constant [34 x i8] c"gpiod_direction_output_raw_commit\00", align 1
@.str.67 = private unnamed_addr constant [58 x i8] c"\014gpio-%d (%s): %s: missing direction_output() operation\0A\00", align 1
@.str.68 = private unnamed_addr constant [62 x i8] c"\013gpio-%d (%s): %s: Error in set_value for open drain err %d\0A\00", align 1
@__func__.gpio_set_open_drain_value_commit = private unnamed_addr constant [33 x i8] c"gpio_set_open_drain_value_commit\00", align 1
@.str.69 = private unnamed_addr constant [63 x i8] c"\013gpio-%d (%s): %s: Error in set_value for open source err %d\0A\00", align 1
@__func__.gpio_set_open_source_value_commit = private unnamed_addr constant [34 x i8] c"gpio_set_open_source_value_commit\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"(%s): %s: unable to get GPIO desc: %ld\0A\00", align 1
@__func__.gpiochip_machine_hog = private unnamed_addr constant [21 x i8] c"gpiochip_machine_hog\00", align 1
@.str.71 = private unnamed_addr constant [57 x i8] c"\013gpio-%d (%s): %s: unable to hog GPIO line (%s:%u): %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.73 = private unnamed_addr constant [37 x i8] c"cannot find GPIO line %s, deferring\0A\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"cannot find GPIO chip %s, deferring\0A\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"requested GPIO %u (%u) is out of range [0..%u] for chip %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"\013gpiolib: could not register GPIO bus type\0A\00", align 1
@gpio_stub_drv = internal global %struct.device_driver { ptr @.str.80, ptr @gpio_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @gpio_stub_drv_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.77 = private unnamed_addr constant [48 x i8] c"\013gpiolib: could not register GPIO stub driver\0A\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"gpiochip\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"\013gpiolib: failed to allocate char dev region\0A\00", align 1
@gpio_of_notifier = external dso_local global %struct.notifier_block, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c"gpio_stub_drv\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Failed to initialize gpio device (%d)\0A\00", align 1
@gpiolib_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @gpiolib_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gpiolib_sops = internal constant %struct.seq_operations { ptr @gpiolib_seq_start, ptr @gpiolib_seq_stop, ptr @gpiolib_seq_next, ptr @gpiolib_seq_show }, align 4
@.str.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"%s%s: (dangling chip)\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"%s%s: GPIOs %d-%d\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c", parent: %s/%s\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"no-bus\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c", can sleep\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c" gpio-%-3d (%-20.20s)\0A\00", align 1
@.str.91 = private unnamed_addr constant [42 x i8] c" gpio-%-3d (%-20.20s|%-20.20s) %s %s %s%s\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"?  \00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"IRQ \00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"ACTIVE LOW\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @__event_gpio_direction, ptr @__event_gpio_value, ptr @__initcall__kmod_gpiolib__252_4383_gpiolib_dev_init1, ptr @__initcall__kmod_gpiolib__253_4510_gpiolib_debugfs_init4, ptr @__ksymtab_desc_to_gpio, ptr @__ksymtab_fwnode_get_named_gpiod, ptr @__ksymtab_fwnode_gpiod_get_index, ptr @__ksymtab_gpio_to_desc, ptr @__ksymtab_gpiochip_add_data_with_key, ptr @__ksymtab_gpiochip_add_pin_range, ptr @__ksymtab_gpiochip_add_pingroup_range, ptr @__ksymtab_gpiochip_disable_irq, ptr @__ksymtab_gpiochip_enable_irq, ptr @__ksymtab_gpiochip_find, ptr @__ksymtab_gpiochip_free_own_desc, ptr @__ksymtab_gpiochip_generic_config, ptr @__ksymtab_gpiochip_generic_free, ptr @__ksymtab_gpiochip_generic_request, ptr @__ksymtab_gpiochip_get_data, ptr @__ksymtab_gpiochip_get_desc, ptr @__ksymtab_gpiochip_irq_domain_activate, ptr @__ksymtab_gpiochip_irq_domain_deactivate, ptr @__ksymtab_gpiochip_irq_map, ptr @__ksymtab_gpiochip_irq_unmap, ptr @__ksymtab_gpiochip_irqchip_add_domain, ptr @__ksymtab_gpiochip_irqchip_irq_valid, ptr @__ksymtab_gpiochip_is_requested, ptr @__ksymtab_gpiochip_line_is_irq, ptr @__ksymtab_gpiochip_line_is_open_drain, ptr @__ksymtab_gpiochip_line_is_open_source, ptr @__ksymtab_gpiochip_line_is_persistent, ptr @__ksymtab_gpiochip_line_is_valid, ptr @__ksymtab_gpiochip_lock_as_irq, ptr @__ksymtab_gpiochip_populate_parent_fwspec_fourcell, ptr @__ksymtab_gpiochip_populate_parent_fwspec_twocell, ptr @__ksymtab_gpiochip_relres_irq, ptr @__ksymtab_gpiochip_remove, ptr @__ksymtab_gpiochip_remove_pin_ranges, ptr @__ksymtab_gpiochip_reqres_irq, ptr @__ksymtab_gpiochip_request_own_desc, ptr @__ksymtab_gpiochip_unlock_as_irq, ptr @__ksymtab_gpiod_add_hogs, ptr @__ksymtab_gpiod_add_lookup_table, ptr @__ksymtab_gpiod_cansleep, ptr @__ksymtab_gpiod_count, ptr @__ksymtab_gpiod_direction_input, ptr @__ksymtab_gpiod_direction_output, ptr @__ksymtab_gpiod_direction_output_raw, ptr @__ksymtab_gpiod_get, ptr @__ksymtab_gpiod_get_array, ptr @__ksymtab_gpiod_get_array_optional, ptr @__ksymtab_gpiod_get_array_value, ptr @__ksymtab_gpiod_get_array_value_cansleep, ptr @__ksymtab_gpiod_get_direction, ptr @__ksymtab_gpiod_get_index, ptr @__ksymtab_gpiod_get_index_optional, ptr @__ksymtab_gpiod_get_optional, ptr @__ksymtab_gpiod_get_raw_array_value, ptr @__ksymtab_gpiod_get_raw_array_value_cansleep, ptr @__ksymtab_gpiod_get_raw_value, ptr @__ksymtab_gpiod_get_raw_value_cansleep, ptr @__ksymtab_gpiod_get_value, ptr @__ksymtab_gpiod_get_value_cansleep, ptr @__ksymtab_gpiod_is_active_low, ptr @__ksymtab_gpiod_put, ptr @__ksymtab_gpiod_put_array, ptr @__ksymtab_gpiod_remove_hogs, ptr @__ksymtab_gpiod_remove_lookup_table, ptr @__ksymtab_gpiod_set_array_value, ptr @__ksymtab_gpiod_set_array_value_cansleep, ptr @__ksymtab_gpiod_set_config, ptr @__ksymtab_gpiod_set_consumer_name, ptr @__ksymtab_gpiod_set_debounce, ptr @__ksymtab_gpiod_set_raw_array_value, ptr @__ksymtab_gpiod_set_raw_array_value_cansleep, ptr @__ksymtab_gpiod_set_raw_value, ptr @__ksymtab_gpiod_set_raw_value_cansleep, ptr @__ksymtab_gpiod_set_transitory, ptr @__ksymtab_gpiod_set_value, ptr @__ksymtab_gpiod_set_value_cansleep, ptr @__ksymtab_gpiod_to_chip, ptr @__ksymtab_gpiod_to_irq, ptr @__ksymtab_gpiod_toggle_active_low, ptr @__tracepoint_gpio_direction, ptr @__tracepoint_gpio_value, ptr @__tracepoint_ptr_gpio_direction, ptr @__tracepoint_ptr_gpio_value, ptr @event_class_gpio_direction, ptr @event_class_gpio_value, ptr @event_gpio_direction, ptr @event_gpio_value], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_gpio_direction(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_gpio_value(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #18
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gpio_direction(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #18
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_gpio_direction(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #18
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #18
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #18
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_gpio_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #18
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #18
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_gpio_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #18
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #18
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #18
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #18
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpio_to_desc(i32 noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %3 = load ptr, ptr @gpio_devices, align 4
  %4 = icmp eq ptr %3, @gpio_devices
  br i1 %4, label %26, label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %6, i32 -12
  %12 = load i16, ptr %11, align 8
  %13 = zext i16 %12 to i32
  %14 = add i32 %8, %13
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %6, i32 -16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %2) #18
  %18 = getelementptr i8, ptr %6, i32 -20
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %17, align 4
  %21 = sub i32 %0, %20
  %22 = getelementptr %struct.gpio_desc, ptr %19, i32 %21
  br label %30

23:                                               ; preds = %10, %5
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, @gpio_devices
  br i1 %25, label %26, label %5

26:                                               ; preds = %23, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %2) #18
  %27 = icmp ult i32 %0, 2048
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #19
  br label %30

30:                                               ; preds = %28, %26, %16
  %31 = phi ptr [ %22, %16 ], [ null, %28 ], [ null, %26 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @gpiochip_get_desc(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi ptr [ %12, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @desc_to_gpio(ptr noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gpio_device, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %2, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = sdiv exact i32 %9, 24
  %11 = add i32 %10, %4
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @gpiod_to_chip(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3, %1
  %10 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_direction(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load ptr, ptr null, align 2147483648
  br label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %5, %3
  %12 = phi ptr [ %6, %8 ], [ null, %5 ], [ %4, %3 ]
  %13 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %0 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = sdiv exact i32 %18, 24
  %20 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %11
  %25 = load volatile i32, ptr %20, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %11
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %13, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %13, i32 noundef %19) #18
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @_set_bit(i32 noundef 1, ptr noundef %20) #18
  br label %39

38:                                               ; preds = %35
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %20) #18
  br label %39

39:                                               ; preds = %38, %37, %32, %28, %24
  %40 = phi i32 [ 0, %24 ], [ -524, %28 ], [ %33, %32 ], [ 0, %37 ], [ 1, %38 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_line_is_valid(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !10

6:                                                ; preds = %2
  %7 = lshr i32 %1, 5
  %8 = getelementptr i32, ptr %4, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i1 [ %13, %6 ], [ true, %2 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_add_data_with_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @dev_fwnode(ptr noundef nonnull %13) #18
  br label %17

17:                                               ; preds = %15, %11, %4
  %18 = phi ptr [ %16, %15 ], [ null, %11 ], [ %9, %4 ]
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 616) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %327, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1
  %24 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1, i32 5
  store ptr @gpio_bus_type, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 5
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  store ptr %20, ptr %29, align 4
  tail call void @of_gpio_dev_init(ptr noundef %0, ptr noundef nonnull %20) #18
  %30 = tail call ptr @dev_fwnode(ptr noundef %23) #18
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr %18, ptr %30
  %33 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1, i32 26
  store ptr %32, ptr %33, align 4
  %34 = tail call i32 @ida_alloc_range(ptr noundef nonnull @gpio_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #18
  store i32 %34, ptr %20, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %311, label %36

36:                                               ; preds = %22
  %37 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %34) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %308

39:                                               ; preds = %36
  tail call void @device_initialize(ptr noundef %23) #18
  %40 = load ptr, ptr %25, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.device_driver, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 4
  store ptr %48, ptr %49, align 8
  br label %57

50:                                               ; preds = %42, %39
  %51 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 4
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  store ptr %52, ptr %54, align 8
  br label %57

56:                                               ; preds = %50
  store ptr null, ptr %54, align 8
  br label %57

57:                                               ; preds = %56, %55, %46
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = mul nuw nsw i32 %60, 24
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #21
  %63 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 6
  store ptr %62, ptr %63, align 8
  %64 = icmp eq ptr %62, null
  br i1 %64, label %299, label %65

65:                                               ; preds = %57
  %66 = load i16, ptr %58, align 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = call i32 @device_property_read_u32_array(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, i32 noundef 1) #18
  switch i32 %69, label %296 [
    i32 -61, label %70
    i32 0, label %71
  ]

70:                                               ; preds = %68
  store i32 0, ptr %5, align 4
  store i16 0, ptr %58, align 4
  br label %75

71:                                               ; preds = %68
  %72 = load i32, ptr %5, align 4
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %58, align 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %70
  %76 = load ptr, ptr %29, align 4
  %77 = getelementptr inbounds %struct.gpio_device, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.3, ptr noundef %78) #19
  br label %296

79:                                               ; preds = %71, %65
  %80 = phi i16 [ %73, %71 ], [ %66, %65 ]
  %81 = icmp ugt i16 %80, 512
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = zext i16 %80 to i32
  %84 = load ptr, ptr %29, align 4
  %85 = getelementptr inbounds %struct.gpio_device, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.4, ptr noundef %86, i32 noundef %83, i32 noundef 512) #19
  br label %87

87:                                               ; preds = %82, %79
  %88 = load ptr, ptr %0, align 4
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr @.str.5, ptr %88
  %91 = call ptr @kstrdup_const(ptr noundef %90, i32 noundef 3264) #18
  %92 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 9
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %296, label %94

94:                                               ; preds = %87
  %95 = load i16, ptr %58, align 4
  %96 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 8
  store i16 %95, ptr %96, align 8
  %97 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 10
  store ptr %1, ptr %97, align 8
  %98 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %99 = icmp slt i32 %7, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i16, ptr %58, align 4
  %102 = zext i16 %101 to i32
  %103 = call fastcc i32 @gpiochip_find_base(i32 noundef %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %292, label %105

105:                                              ; preds = %100
  store i32 %103, ptr %6, align 4
  br label %106

106:                                              ; preds = %105, %94
  %107 = phi i32 [ %103, %105 ], [ %7, %94 ]
  %108 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 7
  store i32 %107, ptr %108, align 4
  %109 = load volatile ptr, ptr @gpio_devices, align 4
  %110 = icmp eq ptr %109, @gpio_devices
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11
  %113 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_devices, i32 0, i32 1), align 4
  store ptr %112, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_devices, i32 0, i32 1), align 4
  store ptr @gpio_devices, ptr %112, align 4
  %114 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11, i32 1
  store ptr %113, ptr %114, align 8
  store volatile ptr %112, ptr %113, align 4
  br label %164

115:                                              ; preds = %106
  %116 = load i16, ptr %96, align 8
  %117 = zext i16 %116 to i32
  %118 = add nuw i32 %107, %117
  %119 = getelementptr i8, ptr %109, i32 -16
  %120 = load i32, ptr %119, align 4
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11
  %124 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %123, ptr %124, align 4
  store ptr %109, ptr %123, align 4
  %125 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11, i32 1
  store ptr @gpio_devices, ptr %125, align 8
  store volatile ptr %123, ptr @gpio_devices, align 4
  br label %164

126:                                              ; preds = %115
  %127 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_devices, i32 0, i32 1), align 4
  %128 = getelementptr i8, ptr %127, i32 -16
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr i8, ptr %127, i32 -12
  %131 = load i16, ptr %130, align 8
  %132 = zext i16 %131 to i32
  %133 = add i32 %129, %132
  %134 = icmp sgt i32 %133, %107
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load ptr, ptr %109, align 4
  %137 = icmp eq ptr %136, @gpio_devices
  br i1 %137, label %167, label %141

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11
  store ptr %139, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_devices, i32 0, i32 1), align 4
  store ptr @gpio_devices, ptr %139, align 4
  %140 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11, i32 1
  store ptr %127, ptr %140, align 8
  store volatile ptr %139, ptr %127, align 4
  br label %164

141:                                              ; preds = %161, %135
  %142 = phi i32 [ %163, %161 ], [ %120, %135 ]
  %143 = phi ptr [ %159, %161 ], [ %136, %135 ]
  %144 = phi ptr [ %143, %161 ], [ %109, %135 ]
  %145 = getelementptr i8, ptr %144, i32 -12
  %146 = load i16, ptr %145, align 8
  %147 = zext i16 %146 to i32
  %148 = add i32 %142, %147
  %149 = icmp sgt i32 %148, %107
  br i1 %149, label %158, label %150

150:                                              ; preds = %141
  %151 = getelementptr i8, ptr %143, i32 -16
  %152 = load i32, ptr %151, align 4
  %153 = icmp sgt i32 %118, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11
  %156 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  store ptr %155, ptr %156, align 4
  store ptr %143, ptr %155, align 4
  %157 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11, i32 1
  store ptr %144, ptr %157, align 8
  store volatile ptr %155, ptr %144, align 4
  br label %164

158:                                              ; preds = %150, %141
  %159 = load ptr, ptr %143, align 4
  %160 = icmp eq ptr %159, @gpio_devices
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = getelementptr i8, ptr %143, i32 -16
  %163 = load i32, ptr %162, align 4
  br label %141

164:                                              ; preds = %154, %138, %122, %111
  %165 = load i16, ptr %58, align 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %176, label %168

167:                                              ; preds = %158, %135
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47) #19
  br label %292

168:                                              ; preds = %168, %164
  %169 = phi i32 [ %172, %168 ], [ 0, %164 ]
  %170 = load ptr, ptr %63, align 8
  %171 = getelementptr %struct.gpio_desc, ptr %170, i32 %169
  store ptr %20, ptr %171, align 4
  %172 = add nuw nsw i32 %169, 1
  %173 = load i16, ptr %58, align 4
  %174 = zext i16 %173 to i32
  %175 = icmp ult i32 %172, %174
  br i1 %175, label %168, label %176

176:                                              ; preds = %168, %164
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %98) #18
  %177 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 12
  call void @__init_rwsem(ptr noundef %177, ptr noundef nonnull @.str.6, ptr noundef nonnull @gpiochip_add_data_with_key.__key) #18
  %178 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 12, i32 1
  store ptr null, ptr %178, align 4
  %179 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 13
  store volatile ptr %179, ptr %179, align 8
  %180 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 13, i32 1
  store ptr %179, ptr %180, align 4
  %181 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 22
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %176
  call fastcc void @gpiochip_set_desc_names(ptr noundef %0)
  br label %185

185:                                              ; preds = %184, %176
  %186 = call fastcc i32 @devprop_gpiochip_set_names(ptr noundef %0)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %284

188:                                              ; preds = %185
  %189 = call fastcc i32 @gpiochip_alloc_valid_mask(ptr noundef %0)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %284

191:                                              ; preds = %188
  %192 = call i32 @of_gpiochip_add(ptr noundef %0) #18
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %280

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 17
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %205, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %200 = load ptr, ptr %199, align 4
  %201 = load i16, ptr %58, align 4
  %202 = zext i16 %201 to i32
  %203 = call i32 %196(ptr noundef %0, ptr noundef %200, i32 noundef %202) #18
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %278

205:                                              ; preds = %198, %194
  %206 = load i16, ptr %58, align 4
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %245, label %208

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 7
  %210 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %211 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 8
  br label %212

212:                                              ; preds = %240, %208
  %213 = phi i32 [ 0, %208 ], [ %241, %240 ]
  %214 = load ptr, ptr %63, align 8
  %215 = load ptr, ptr %209, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %234, label %217

217:                                              ; preds = %212
  %218 = load ptr, ptr %210, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220, !prof !10

220:                                              ; preds = %217
  %221 = lshr i32 %213, 5
  %222 = getelementptr i32, ptr %218, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %213, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %223, %225
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %220, %217
  %229 = getelementptr %struct.gpio_desc, ptr %214, i32 %213, i32 1
  %230 = call i32 %215(ptr noundef %0, i32 noundef %213) #18
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  call void @_set_bit(i32 noundef 1, ptr noundef %229) #18
  br label %240

233:                                              ; preds = %228
  call void @_clear_bit(i32 noundef 1, ptr noundef %229) #18
  br label %240

234:                                              ; preds = %220, %212
  %235 = getelementptr %struct.gpio_desc, ptr %214, i32 %213, i32 1
  %236 = load ptr, ptr %211, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  call void @_set_bit(i32 noundef 1, ptr noundef %235) #18
  br label %240

239:                                              ; preds = %234
  call void @_clear_bit(i32 noundef 1, ptr noundef %235) #18
  br label %240

240:                                              ; preds = %239, %238, %233, %232
  %241 = add nuw nsw i32 %213, 1
  %242 = load i16, ptr %58, align 4
  %243 = zext i16 %242 to i32
  %244 = icmp ult i32 %241, %243
  br i1 %244, label %212, label %245

245:                                              ; preds = %240, %205
  %246 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 18
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = call i32 %247(ptr noundef %0) #18
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %249, %245
  call fastcc void @machine_gpiochip_add(ptr noundef %0)
  %253 = call fastcc i32 @gpiochip_irqchip_init_valid_mask(ptr noundef %0)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %278

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 20
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = call i32 %257(ptr noundef %0) #18
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %259, %255
  %263 = call fastcc i32 @gpiochip_add_irqchip(ptr noundef %0, ptr noundef %2, ptr noundef %3)
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %262
  %266 = load i1, ptr @gpiolib_initialized, align 1
  br i1 %266, label %267, label %327

267:                                              ; preds = %265
  %268 = load i32, ptr @gpio_devt, align 4
  %269 = call i32 @gpiolib_cdev_register(ptr noundef %20, i32 noundef %268) #18
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1, i32 33
  store ptr @gpiodevice_release, ptr %272, align 4
  br label %327

273:                                              ; preds = %267
  call fastcc void @gpiochip_irqchip_remove(ptr noundef %0)
  br label %274

274:                                              ; preds = %273, %262
  %275 = phi i32 [ %263, %262 ], [ %269, %273 ]
  %276 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  %277 = load ptr, ptr %276, align 4
  call void @bitmap_free(ptr noundef %277) #18
  store ptr null, ptr %276, align 4
  br label %278

278:                                              ; preds = %274, %259, %252, %249, %198
  %279 = phi i32 [ %203, %198 ], [ %250, %249 ], [ %253, %252 ], [ %260, %259 ], [ %275, %274 ]
  call fastcc void @gpiochip_free_hogs(ptr noundef %0)
  call void @of_gpiochip_remove(ptr noundef %0) #18
  br label %280

280:                                              ; preds = %278, %191
  %281 = phi i32 [ %192, %191 ], [ %279, %278 ]
  call void @gpiochip_remove_pin_ranges(ptr noundef %0)
  %282 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %283 = load ptr, ptr %282, align 4
  call void @bitmap_free(ptr noundef %283) #18
  store ptr null, ptr %282, align 4
  br label %284

284:                                              ; preds = %280, %188, %185
  %285 = phi i32 [ %186, %185 ], [ %189, %188 ], [ %281, %280 ]
  %286 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %287 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11
  %288 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 11, i32 1
  %289 = load ptr, ptr %288, align 8
  %290 = load ptr, ptr %287, align 4
  %291 = getelementptr inbounds %struct.list_head, ptr %290, i32 0, i32 1
  store ptr %289, ptr %291, align 4
  store volatile ptr %290, ptr %289, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %287, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %288, align 8
  br label %292

292:                                              ; preds = %284, %167, %100
  %293 = phi i32 [ %286, %284 ], [ %98, %167 ], [ %98, %100 ]
  %294 = phi i32 [ %285, %284 ], [ -16, %167 ], [ %103, %100 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %293) #18
  %295 = load ptr, ptr %92, align 4
  call void @kfree_const(ptr noundef %295) #18
  br label %296

296:                                              ; preds = %292, %87, %75, %68
  %297 = phi i32 [ -22, %75 ], [ %294, %292 ], [ %69, %68 ], [ -12, %87 ]
  %298 = load ptr, ptr %63, align 8
  call void @kfree(ptr noundef %298) #18
  br label %299

299:                                              ; preds = %296, %57
  %300 = phi i32 [ %297, %296 ], [ -12, %57 ]
  %301 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 1, i32 3
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load ptr, ptr %23, align 8
  br label %306

306:                                              ; preds = %304, %299
  %307 = phi ptr [ %305, %304 ], [ %302, %299 ]
  call void @kfree(ptr noundef %307) #18
  br label %308

308:                                              ; preds = %306, %36
  %309 = phi i32 [ %37, %36 ], [ %300, %306 ]
  %310 = load i32, ptr %20, align 8
  call void @ida_free(ptr noundef nonnull @gpio_ida, i32 noundef %310) #18
  br label %311

311:                                              ; preds = %308, %22
  %312 = phi i32 [ %309, %308 ], [ %34, %22 ]
  %313 = icmp eq i32 %312, -517
  br i1 %313, label %326, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 7
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr inbounds %struct.gpio_device, ptr %20, i32 0, i32 8
  %318 = load i16, ptr %317, align 8
  %319 = zext i16 %318 to i32
  %320 = add i32 %316, -1
  %321 = add i32 %320, %319
  %322 = load ptr, ptr %0, align 4
  %323 = icmp eq ptr %322, null
  %324 = select i1 %323, ptr @.str.8, ptr %322
  %325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gpiochip_add_data_with_key, i32 noundef %316, i32 noundef %321, ptr noundef %324, i32 noundef %312) #19
  br label %326

326:                                              ; preds = %314, %311
  call void @kfree(ptr noundef nonnull %20) #18
  br label %327

327:                                              ; preds = %326, %271, %265, %17
  %328 = phi i32 [ %312, %326 ], [ -12, %17 ], [ 0, %265 ], [ 0, %271 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %328
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_gpio_dev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiochip_find_base(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_devices, i32 0, i32 1), align 4
  %3 = sub i32 2048, %0
  %4 = icmp eq ptr %2, @gpio_devices
  br i1 %4, label %20, label %10

5:                                                ; preds = %10
  %6 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = sub i32 %14, %0
  %9 = icmp eq ptr %7, @gpio_devices
  br i1 %9, label %20, label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %8, %5 ], [ %3, %1 ]
  %12 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %13 = getelementptr i8, ptr %12, i32 -16
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load i16, ptr %15, align 8
  %17 = zext i16 %16 to i32
  %18 = add i32 %14, %17
  %19 = icmp sgt i32 %18, %11
  br i1 %19, label %5, label %20

20:                                               ; preds = %10, %5, %1
  %21 = phi i32 [ %3, %1 ], [ %11, %10 ], [ %8, %5 ]
  %22 = icmp ult i32 %21, 2048
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.gpiochip_find_base) #19
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ -28, %23 ], [ %21, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpiochip_set_desc_names(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 22
  %9 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  br label %15

10:                                               ; preds = %56
  %11 = icmp eq i16 %58, 0
  br i1 %11, label %72, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 22
  %14 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  br label %61

15:                                               ; preds = %56, %7
  %16 = phi i32 [ 0, %7 ], [ %57, %56 ]
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %23 = load ptr, ptr @gpio_devices, align 4
  %24 = icmp eq ptr %23, @gpio_devices
  br i1 %24, label %48, label %28

25:                                               ; preds = %45, %28
  %26 = load ptr, ptr %29, align 4
  %27 = icmp eq ptr %26, @gpio_devices
  br i1 %27, label %48, label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %30 = getelementptr i8, ptr %29, i32 -12
  %31 = load i16, ptr %30, align 8
  %32 = zext i16 %31 to i32
  %33 = icmp eq i16 %31, 0
  br i1 %33, label %25, label %34

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %29, i32 -20
  %36 = load ptr, ptr %35, align 8
  br label %37

37:                                               ; preds = %45, %34
  %38 = phi i32 [ 0, %34 ], [ %46, %45 ]
  %39 = getelementptr %struct.gpio_desc, ptr %36, i32 %38, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @strcmp(ptr noundef nonnull %40, ptr noundef nonnull %19) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %37
  %46 = add nuw nsw i32 %38, 1
  %47 = icmp eq i32 %46, %32
  br i1 %47, label %25, label %37

48:                                               ; preds = %25, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %22) #18
  br label %56

49:                                               ; preds = %42
  %50 = getelementptr %struct.gpio_desc, ptr %36, i32 %38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %22) #18
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %8, align 4
  %54 = getelementptr ptr, ptr %53, i32 %16
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef %55) #19
  br label %56

56:                                               ; preds = %52, %49, %48, %15
  %57 = add i32 %16, 1
  %58 = load i16, ptr %4, align 4
  %59 = zext i16 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %10, label %15

61:                                               ; preds = %61, %12
  %62 = phi i32 [ 0, %12 ], [ %68, %61 ]
  %63 = load ptr, ptr %13, align 4
  %64 = getelementptr ptr, ptr %63, i32 %62
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %14, align 8
  %67 = getelementptr %struct.gpio_desc, ptr %66, i32 %62, i32 3
  store ptr %65, ptr %67, align 4
  %68 = add i32 %62, 1
  %69 = load i16, ptr %4, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %61

72:                                               ; preds = %61, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devprop_gpiochip_set_names(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  %5 = tail call ptr @dev_fwnode(ptr noundef %4) #18
  %6 = tail call i32 @fwnode_property_read_string_array(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef null, i32 noundef 0) #18
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 21
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ugt i32 %6, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.50, i32 noundef %6, i32 noundef %11) #19
  br label %58

14:                                               ; preds = %8
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #18
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %58, label %17, !prof !11

17:                                               ; preds = %14
  %18 = extractvalue { i32, i1 } %15, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @fwnode_property_read_string_array(ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull %19, i32 noundef %6) #18
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.51) #19
  tail call void @kfree(ptr noundef nonnull %19) #18
  br label %58

25:                                               ; preds = %21
  %26 = load i16, ptr %9, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ugt i32 %6, %27
  %29 = select i1 %28, i32 %27, i32 0
  %30 = sub nsw i32 %6, %29
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @llvm.smin.i32(i32 %30, i32 %33)
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  br label %38

38:                                               ; preds = %55, %36
  %39 = phi i16 [ %26, %36 ], [ %56, %55 ]
  %40 = phi i32 [ 0, %36 ], [ %53, %55 ]
  %41 = zext i16 %39 to i32
  %42 = add nuw nsw i32 %40, %41
  %43 = getelementptr ptr, ptr %19, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i8, ptr %44, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %37, align 8
  %51 = getelementptr %struct.gpio_desc, ptr %50, i32 %40, i32 3
  store ptr %44, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %46, %38
  %53 = add nuw nsw i32 %40, 1
  %54 = icmp eq i32 %53, %34
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i16, ptr %9, align 2
  br label %38

57:                                               ; preds = %52, %25
  tail call void @kfree(ptr noundef nonnull %19) #18
  br label %58

58:                                               ; preds = %57, %24, %17, %14, %13, %1
  %59 = phi i32 [ 0, %13 ], [ %22, %24 ], [ 0, %57 ], [ 0, %1 ], [ -12, %17 ], [ -12, %14 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiochip_alloc_valid_mask(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @of_gpio_need_valid_mask(ptr noundef %0) #18
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3, %1
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = tail call ptr @bitmap_alloc(i32 noundef %10, i32 noundef 3264) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load i16, ptr %8, align 4
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 31
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 16380
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %11, i8 -1, i32 %18, i1 false) #18
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i32 [ -12, %7 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  store ptr %11, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ 0, %3 ], [ %20, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_gpiochip_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @machine_gpiochip_add(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  %2 = load ptr, ptr @gpio_machine_hogs, align 4
  %3 = icmp eq ptr %2, @gpio_machine_hogs
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.gpiod_hog, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call fastcc void @gpiochip_machine_hog(ptr noundef %0, ptr noundef %5)
  br label %12

12:                                               ; preds = %11, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @gpio_machine_hogs
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiochip_irqchip_init_valid_mask(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = tail call ptr @bitmap_alloc(i32 noundef %8, i32 noundef 3264) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  store ptr null, ptr %12, align 4
  br label %23

13:                                               ; preds = %5
  %14 = load i16, ptr %6, align 4
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, 31
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 16380
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %9, i8 -1, i32 %18, i1 false) #18
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  store ptr %9, ptr %19, align 4
  %20 = load ptr, ptr %2, align 4
  %21 = load i16, ptr %6, align 4
  %22 = zext i16 %21 to i32
  tail call void %20(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %22) #18
  br label %23

23:                                               ; preds = %13, %11, %1
  %24 = phi i32 [ 0, %13 ], [ 0, %1 ], [ -12, %11 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiochip_add_irqchip(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpio_device, ptr %8, i32 0, i32 1
  %10 = tail call ptr @dev_fwnode(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %225, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 23
  %20 = load i8, ptr %19, align 4, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.gpio_device, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef %25) #19
  br label %225

26:                                               ; preds = %18, %14
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne ptr %10, null
  %30 = icmp ne i32 %28, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef nonnull %10, i32 noundef %28) #18
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ 0, %32 ], [ %28, %26 ]
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.gpio_device, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.54, ptr noundef %41, ptr noundef nonnull @__func__.gpiochip_add_irqchip) #19
  br label %42

42:                                               ; preds = %38, %33
  store ptr @gpiochip_to_irq, ptr %35, align 4
  store i32 %34, ptr %27, align 4
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 11
  store ptr %1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 12
  store ptr %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %138, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.gpio_device, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.55, ptr noundef %59) #19
  br label %225

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store ptr @gpiochip_child_offset_to_irq_noop, ptr %61, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store ptr @gpiochip_populate_parent_fwspec_twocell, ptr %66, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8
  %72 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8, i32 7
  store ptr @gpiochip_irq_domain_activate, ptr %72, align 4
  %73 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8, i32 8
  store ptr @gpiochip_irq_domain_deactivate, ptr %73, align 4
  %74 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8, i32 5
  store ptr @gpiochip_hierarchy_irq_domain_alloc, ptr %74, align 4
  %75 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8, i32 6
  store ptr @irq_domain_free_irqs_common, ptr %75, align 4
  %76 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 8, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  store ptr @gpiochip_hierarchy_irq_domain_translate, ptr %76, align 4
  br label %80

80:                                               ; preds = %79, %70
  %81 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = tail call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %46, i32 noundef 0, i32 noundef %83, ptr noundef nonnull %54, ptr noundef %71, ptr noundef %0) #18
  %85 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %225, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %53, align 4
  %89 = icmp eq ptr %88, null
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %91 = or i1 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.fwnode_handle, ptr %88, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, @of_fwnode_ops
  br i1 %95, label %151, label %96

96:                                               ; preds = %92, %87
  br i1 %89, label %134, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.fwnode_handle, ptr %88, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, @irqchip_fwnode_ops
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load i16, ptr %81, align 4
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.irq_fwspec, ptr %4, i32 0, i32 2
  %106 = getelementptr inbounds %struct.irq_fwspec, ptr %4, i32 0, i32 2, i32 1
  %107 = getelementptr inbounds %struct.irq_fwspec, ptr %4, i32 0, i32 1
  br label %108

108:                                              ; preds = %129, %104
  %109 = phi i32 [ 0, %104 ], [ %130, %129 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #18, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !9
  %110 = load ptr, ptr %49, align 4
  %111 = call i32 %110(ptr noundef %0, i32 noundef %109, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr inbounds %struct.gpio_device, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.58, ptr noundef %116, i32 noundef %109) #19
  br label %129

117:                                              ; preds = %108
  %118 = load ptr, ptr %53, align 4
  store ptr %118, ptr %4, align 4
  %119 = load ptr, ptr %61, align 4
  %120 = call i32 %119(ptr noundef %0, i32 noundef %109) #18
  store i32 %120, ptr %105, align 4
  store i32 1, ptr %106, align 4
  store i32 2, ptr %107, align 4
  %121 = load ptr, ptr %85, align 4
  %122 = call i32 @__irq_domain_alloc_irqs(ptr noundef %121, i32 noundef -1, i32 noundef 1, i32 noundef -1, ptr noundef nonnull %4, i1 noundef zeroext false, ptr noundef null) #18
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load ptr, ptr %7, align 4
  %126 = getelementptr inbounds %struct.gpio_device, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %0, align 4
  %128 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.59, ptr noundef %127, i32 noundef %109, i32 noundef %128, i32 noundef %122) #19
  br label %129

129:                                              ; preds = %124, %117, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #18
  %130 = add nuw nsw i32 %109, 1
  %131 = load i16, ptr %81, align 4
  %132 = zext i16 %131 to i32
  %133 = icmp ult i32 %130, %132
  br i1 %133, label %108, label %134

134:                                              ; preds = %129, %101, %97, %96
  %135 = load ptr, ptr %7, align 4
  %136 = getelementptr inbounds %struct.gpio_device, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.60, ptr noundef %137, ptr noundef nonnull @__func__.gpiochip_set_hierarchical_irqchip) #19
  br label %151

138:                                              ; preds = %42
  %139 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %140 = load i16, ptr %139, align 4
  %141 = zext i16 %140 to i32
  %142 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 23
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  %147 = select i1 %146, ptr @gpiochip_domain_ops, ptr %145
  %148 = tail call ptr @irq_domain_create_simple(ptr noundef %10, i32 noundef %141, i32 noundef %143, ptr noundef %147, ptr noundef %0) #18
  %149 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  store ptr %148, ptr %149, align 4
  %150 = icmp eq ptr %148, null
  br i1 %150, label %225, label %151

151:                                              ; preds = %138, %134, %92
  %152 = load ptr, ptr %15, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %182, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 15
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %182, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 19
  %160 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 14
  %161 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 16
  br label %162

162:                                              ; preds = %173, %158
  %163 = phi i32 [ 0, %158 ], [ %179, %173 ]
  %164 = load i8, ptr %159, align 1, !range !13
  %165 = icmp eq i8 %164, 0
  %166 = load ptr, ptr %160, align 4
  br i1 %165, label %170, label %167

167:                                              ; preds = %162
  %168 = getelementptr ptr, ptr %166, i32 %163
  %169 = load ptr, ptr %168, align 4
  br label %173

170:                                              ; preds = %162
  %171 = icmp eq ptr %166, null
  %172 = select i1 %171, ptr %0, ptr %166
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi ptr [ %169, %167 ], [ %172, %170 ]
  %175 = load ptr, ptr %161, align 4
  %176 = getelementptr i32, ptr %175, i32 %163
  %177 = load i32, ptr %176, align 4
  %178 = load ptr, ptr %15, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %177, ptr noundef %178, ptr noundef %174) #18
  %179 = add nuw i32 %163, 1
  %180 = load i32, ptr %155, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %162, label %182

182:                                              ; preds = %173, %154, %151
  %183 = load ptr, ptr %11, align 4
  %184 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 22
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 23
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store ptr @gpiochip_irq_reqres, ptr %184, align 4
  store ptr @gpiochip_irq_relres, ptr %188, align 4
  br label %192

192:                                              ; preds = %191, %187, %182
  %193 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 24
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196, !prof !10

196:                                              ; preds = %192
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1483, i32 noundef 9, ptr noundef null) #18
  br label %225

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, @gpiochip_irq_enable
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 7
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, @gpiochip_irq_mask
  br i1 %204, label %205, label %209

205:                                              ; preds = %201, %197
  %206 = load ptr, ptr %7, align 4
  %207 = getelementptr inbounds %struct.gpio_device, ptr %206, i32 0, i32 1
  %208 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %207, ptr noundef nonnull @.str.61, ptr noundef %208) #19
  br label %225

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 5
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 25
  store ptr %211, ptr %214, align 4
  store ptr @gpiochip_irq_disable, ptr %210, align 4
  br label %217

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 27
  store ptr %203, ptr %216, align 4
  store ptr @gpiochip_irq_mask, ptr %202, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = load ptr, ptr %198, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  store ptr %218, ptr %193, align 4
  store ptr @gpiochip_irq_enable, ptr %198, align 4
  br label %225

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.irq_chip, ptr %183, i32 0, i32 9
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 26
  store ptr %223, ptr %224, align 4
  store ptr @gpiochip_irq_unmask, ptr %222, align 4
  br label %225

225:                                              ; preds = %221, %220, %205, %196, %138, %80, %56, %22, %3
  %226 = phi i32 [ -22, %22 ], [ 0, %3 ], [ -22, %138 ], [ -22, %56 ], [ -12, %80 ], [ 0, %196 ], [ 0, %205 ], [ 0, %220 ], [ 0, %221 ]
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpiochip_irqchip_remove(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 16
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ 0, %14 ], [ %21, %16 ]
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i32, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %20, ptr noundef null, ptr noundef null) #18
  %21 = add nuw i32 %17, 1
  %22 = load i32, ptr %11, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %16, label %24

24:                                               ; preds = %16, %10, %6, %1
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %75, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  br label %35

35:                                               ; preds = %66, %32
  %36 = phi i16 [ %30, %32 ], [ %67, %66 ]
  %37 = phi i32 [ 0, %32 ], [ %68, %66 ]
  %38 = load ptr, ptr %33, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40, !prof !10

40:                                               ; preds = %35
  %41 = lshr i32 %37, 5
  %42 = getelementptr i32, ptr %38, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %37, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %40, %35
  %49 = load ptr, ptr %34, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51, !prof !10

51:                                               ; preds = %48
  %52 = lshr i32 %37, 5
  %53 = getelementptr i32, ptr %49, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %37, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %51, %48
  %60 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !9
  %61 = call ptr @__irq_resolve_mapping(ptr noundef %60, i32 noundef %37, ptr noundef nonnull %2) #18
  %62 = icmp eq ptr %61, null
  %63 = load i32, ptr %2, align 4
  %64 = select i1 %62, i32 0, i32 %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @irq_dispose_mapping(i32 noundef %64) #18
  %65 = load i16, ptr %29, align 4
  br label %66

66:                                               ; preds = %59, %51, %40
  %67 = phi i16 [ %36, %40 ], [ %36, %51 ], [ %65, %59 ]
  %68 = add nuw nsw i32 %37, 1
  %69 = zext i16 %67 to i32
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %35, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr %25, align 4
  br label %73

73:                                               ; preds = %71, %28
  %74 = phi ptr [ %72, %71 ], [ %26, %28 ]
  call void @irq_domain_remove(ptr noundef %74) #18
  br label %75

75:                                               ; preds = %73, %24
  br i1 %5, label %92, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 22
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, @gpiochip_irq_reqres
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  store ptr null, ptr %77, align 4
  %81 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 23
  store ptr null, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 4
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, @gpiochip_irq_enable
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 24
  %88 = load ptr, ptr %87, align 4
  store ptr %88, ptr %83, align 4
  %89 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 25
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 5
  store ptr %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %86, %82, %75
  %93 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 24
  store ptr null, ptr %93, align 4
  %94 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 25
  store ptr null, ptr %94, align 4
  store ptr null, ptr %3, align 4
  %95 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  %96 = load ptr, ptr %95, align 4
  call void @bitmap_free(ptr noundef %96) #18
  store ptr null, ptr %95, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpiochip_free_hogs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %23, %5
  %8 = phi i16 [ %3, %5 ], [ %24, %23 ]
  %9 = phi i32 [ 0, %5 ], [ %25, %23 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.gpio_device, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.gpio_desc, ptr %12, i32 %9, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr %struct.gpio_desc, ptr %12, i32 %9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %18) #18
  %22 = load i16, ptr %2, align 4
  br label %23

23:                                               ; preds = %20, %17, %7
  %24 = phi i16 [ %22, %20 ], [ %8, %17 ], [ %8, %7 ]
  %25 = add nuw nsw i32 %9, 1
  %26 = zext i16 %24 to i32
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %7, label %28

28:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_remove_pin_ranges(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %17, label %7

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
  %13 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2
  tail call void @pinctrl_remove_gpio_range(ptr noundef %14, ptr noundef %15) #18
  tail call void @kfree(ptr noundef %8) #18
  %16 = icmp eq ptr %9, %4
  br i1 %16, label %17, label %7

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @gpiochip_get_data(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %28, %1
  %8 = phi ptr [ %29, %28 ], [ %3, %1 ]
  %9 = phi i16 [ %24, %28 ], [ %5, %1 ]
  %10 = phi i32 [ %25, %28 ], [ 0, %1 ]
  %11 = getelementptr inbounds %struct.gpio_device, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.gpio_desc, ptr %12, i32 %10, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr %struct.gpio_desc, ptr %12, i32 %10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %18) #18
  %22 = load i16, ptr %4, align 4
  br label %23

23:                                               ; preds = %20, %17, %7
  %24 = phi i16 [ %22, %20 ], [ %9, %17 ], [ %9, %7 ]
  %25 = add nuw nsw i32 %10, 1
  %26 = zext i16 %24 to i32
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 4
  br label %7

30:                                               ; preds = %23, %1
  %31 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  store ptr null, ptr %31, align 4
  tail call fastcc void @gpiochip_irqchip_remove(ptr noundef %0)
  tail call void @of_gpiochip_remove(ptr noundef %0) #18
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.gpio_device, ptr %32, i32 0, i32 13
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %46, label %36

36:                                               ; preds = %36, %30
  %37 = phi ptr [ %38, %36 ], [ %34, %30 ]
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  %42 = getelementptr inbounds %struct.gpio_pin_range, ptr %37, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.gpio_pin_range, ptr %37, i32 0, i32 2
  tail call void @pinctrl_remove_gpio_range(ptr noundef %43, ptr noundef %44) #18
  tail call void @kfree(ptr noundef %37) #18
  %45 = icmp eq ptr %38, %33
  br i1 %45, label %46, label %36

46:                                               ; preds = %36, %30
  %47 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %48 = load ptr, ptr %47, align 4
  tail call void @bitmap_free(ptr noundef %48) #18
  store ptr null, ptr %47, align 4
  %49 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 10
  store ptr null, ptr %49, align 8
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %51 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 8
  %52 = load i16, ptr %51, align 8
  %53 = zext i16 %52 to i32
  %54 = icmp eq i16 %52, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %46
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr inbounds %struct.gpio_device, ptr %56, i32 0, i32 8
  %58 = load i16, ptr %57, align 8
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.gpio_device, ptr %56, i32 0, i32 6
  br label %61

61:                                               ; preds = %77, %55
  %62 = phi i32 [ 0, %55 ], [ %78, %77 ]
  %63 = icmp ult i32 %62, %59
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load ptr, ptr %60, align 8
  %66 = getelementptr %struct.gpio_desc, ptr %65, i32 %62
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = getelementptr %struct.gpio_desc, ptr %65, i32 %62, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.gpio_desc, ptr %65, i32 %62, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %68, %64, %61
  %78 = add nuw nsw i32 %62, 1
  %79 = icmp eq i32 %78, %53
  br i1 %79, label %80, label %61

80:                                               ; preds = %77, %73, %46
  %81 = phi i32 [ 0, %46 ], [ %62, %73 ], [ %53, %77 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %50) #18
  %82 = load i16, ptr %51, align 8
  %83 = zext i16 %82 to i32
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %86, ptr noundef nonnull @.str.9) #19
  br label %87

87:                                               ; preds = %85, %80
  tail call void @gpiolib_cdev_unregister(ptr noundef %3) #18
  %88 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 1
  tail call void @put_device(ptr noundef %88) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @gpiochip_is_requested(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %14, %9, %2
  %23 = phi ptr [ %21, %19 ], [ null, %9 ], [ null, %14 ], [ null, %2 ]
  ret ptr %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiolib_cdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiochip_find(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %4 = load ptr, ptr @gpio_devices, align 4
  %5 = icmp eq ptr %4, @gpio_devices
  br i1 %5, label %20, label %6

6:                                                ; preds = %17, %2
  %7 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 -24
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %1(ptr noundef nonnull %9, ptr noundef %0) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %7, i32 -24
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %11, %6
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @gpio_devices
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %14, %2
  %21 = phi ptr [ %16, %14 ], [ null, %2 ], [ null, %17 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %3) #18
  ret ptr %21
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_irqchip_irq_valid(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !10

6:                                                ; preds = %2
  %7 = lshr i32 %1, 5
  %8 = getelementptr i32, ptr %4, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !10

18:                                               ; preds = %14
  %19 = lshr i32 %1, 5
  %20 = getelementptr i32, ptr %16, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %1, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %18, %14, %6
  %27 = phi i1 [ %25, %18 ], [ false, %6 ], [ true, %14 ]
  ret i1 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @gpiochip_populate_parent_fwspec_twocell(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 72) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_domain, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 %1, ptr %13, align 8
  %14 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %2, ptr %14, align 4
  br label %15

15:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @gpiochip_populate_parent_fwspec_fourcell(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 72) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_domain, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 0, ptr %13, align 8
  %14 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 2
  store i32 0, ptr %15, align 8
  %16 = getelementptr %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 3
  store i32 %2, ptr %16, align 4
  br label %17

17:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !10

9:                                                ; preds = %3
  %10 = lshr i32 %2, 5
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %2, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %9, %3
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21, !prof !10

21:                                               ; preds = %17
  %22 = lshr i32 %2, 5
  %23 = getelementptr i32, ptr %19, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %2, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %21, %17
  %30 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #18
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 9
  %34 = load ptr, ptr %33, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %32, ptr noundef %34, ptr noundef null) #18
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 18
  %36 = load i8, ptr %35, align 4, !range !13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #18
  br label %39

39:                                               ; preds = %38, %29
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #18
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 16
  %45 = load ptr, ptr %44, align 4
  br label %52

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = getelementptr i32, ptr %48, i32 %2
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi ptr [ %51, %50 ], [ %45, %43 ]
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @irq_set_parent(i32 noundef %1, i32 noundef %54) #18
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52, %46
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 10
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call i32 @irq_set_irq_type(i32 noundef %1, i32 noundef %59) #18
  br label %63

63:                                               ; preds = %61, %57, %52, %21, %9
  %64 = phi i32 [ -6, %21 ], [ %55, %52 ], [ 0, %61 ], [ 0, %57 ], [ -6, %9 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_parent(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_irq_unmap(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 37, i32 18
  %6 = load i8, ptr %5, align 4, !range !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 32768, i32 noundef 0) #18
  br label %9

9:                                                ; preds = %8, %2
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %10 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_irq_domain_activate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %5, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_lock_as_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %12, %9 ], [ inttoptr (i32 -22 to ptr), %2 ]
  %16 = ptrtoint ptr %15 to i32
  br label %88

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 23
  %19 = load i8, ptr %18, align 4, !range !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %12, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = load ptr, ptr null, align 2147483648
  br label %35

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gpio_device, ptr %30, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %29, %27
  %36 = phi ptr [ %30, %32 ], [ null, %29 ], [ %28, %27 ]
  %37 = phi ptr [ %34, %32 ], [ null, %29 ], [ null, %27 ]
  %38 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %12 to i32
  %41 = ptrtoint ptr %39 to i32
  %42 = sub i32 %40, %41
  %43 = sdiv exact i32 %42, 24
  %44 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %35
  %49 = load volatile i32, ptr %44, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %48, %35
  %53 = getelementptr inbounds %struct.gpio_chip, ptr %37, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = tail call i32 %54(ptr noundef %37, i32 noundef %43) #18
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load ptr, ptr %3, align 4
  br label %65

61:                                               ; preds = %56
  %62 = icmp eq i32 %57, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  tail call void @_set_bit(i32 noundef 1, ptr noundef %44) #18
  br label %70

64:                                               ; preds = %61
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %44) #18
  br label %70

65:                                               ; preds = %59, %52
  %66 = phi ptr [ %4, %52 ], [ %60, %59 ]
  %67 = phi i32 [ -524, %52 ], [ %57, %59 ]
  %68 = getelementptr inbounds %struct.gpio_device, ptr %66, i32 0, i32 1
  %69 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.19, ptr noundef %69, ptr noundef nonnull @__func__.gpiochip_lock_as_irq) #19
  br label %88

70:                                               ; preds = %64, %63, %48, %21, %17
  %71 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %70
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.gpio_device, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.20, ptr noundef %82, ptr noundef nonnull @__func__.gpiochip_lock_as_irq) #19
  br label %88

83:                                               ; preds = %75, %70
  tail call void @_set_bit(i32 noundef 9, ptr noundef %71) #18
  tail call void @_set_bit(i32 noundef 10, ptr noundef %71) #18
  %84 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store ptr @.str.21, ptr %84, align 4
  br label %88

88:                                               ; preds = %87, %83, %79, %65, %14
  %89 = phi i32 [ %16, %14 ], [ -5, %79 ], [ %67, %65 ], [ 0, %87 ], [ 0, %83 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_irq_domain_deactivate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpio_device, ptr %8, i32 0, i32 8
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gpio_device, ptr %8, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr %struct.gpio_desc, ptr %15, i32 %6
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.gpio_desc, ptr %15, i32 %6, i32 1
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %19) #18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %19) #18
  %20 = getelementptr %struct.gpio_desc, ptr %15, i32 %6, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @strcmp(ptr noundef nonnull %21, ptr noundef nonnull dereferenceable(10) @.str.21) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store ptr null, ptr %20, align 4
  br label %27

27:                                               ; preds = %26, %23, %18, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_unlock_as_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %15) #18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %15) #18
  %16 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.21)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr null, ptr %16, align 4
  br label %23

23:                                               ; preds = %22, %19, %14, %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @gpiochip_irqchip_add_domain(ptr nocapture noundef writeonly %0, ptr noundef %1) #6 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 15
  store ptr @gpiochip_to_irq, ptr %5, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  store ptr %1, ptr %6, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiochip_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 38
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !10

9:                                                ; preds = %2
  %10 = lshr i32 %1, 5
  %11 = getelementptr i32, ptr %7, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %1, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %9, %2
  %18 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21, !prof !10

21:                                               ; preds = %17
  %22 = lshr i32 %1, 5
  %23 = getelementptr i32, ptr %19, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %1, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %21, %17
  %30 = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #18
  %35 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %35, i8 0, i32 56, i1 false), !annotation !9
  %36 = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  store ptr %37, ptr %3, align 4
  %38 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  store i32 2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %0, i32 noundef %1) #18
  %42 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  store i32 0, ptr %43, align 4
  %44 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #18
  br label %47

45:                                               ; preds = %29
  %46 = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %1, ptr noundef null) #18
  br label %47

47:                                               ; preds = %45, %34, %21, %9
  %48 = phi i32 [ %44, %34 ], [ %46, %45 ], [ -6, %21 ], [ -6, %9 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_generic_request(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 13
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  %12 = tail call i32 @pinctrl_gpio_request(i32 noundef %11) #18
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %12, %8 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_generic_free(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 13
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %1
  tail call void @pinctrl_gpio_free(i32 noundef %11) #18
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_generic_config(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_device, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %1
  %9 = tail call i32 @pinctrl_gpio_set_config(i32 noundef %8, i32 noundef %2) #18
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_set_config(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_add_pingroup_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 48) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.gpio_device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef %13) #19
  br label %35

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 2
  store i32 %2, ptr %15, align 8
  %16 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 7
  store ptr %0, ptr %16, align 4
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %2
  %22 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 1
  store ptr %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 6
  %25 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2, i32 5
  %26 = tail call i32 @pinctrl_get_group_pins(ptr noundef %1, ptr noundef %3, ptr noundef %24, ptr noundef %25) #18
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %14
  tail call void @kfree(ptr noundef nonnull %8) #18
  br label %35

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.gpio_pin_range, ptr %8, i32 0, i32 2
  tail call void @pinctrl_add_gpio_range(ptr noundef %1, ptr noundef %30) #18
  %31 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 13
  %32 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 13, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %8, ptr %32, align 4
  store ptr %31, ptr %8, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %33, ptr %34, align 4
  store volatile ptr %8, ptr %33, align 4
  br label %35

35:                                               ; preds = %29, %28, %10
  %36 = phi i32 [ %26, %28 ], [ 0, %29 ], [ -12, %10 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_get_group_pins(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_add_pin_range(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 48) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef %14) #19
  br label %40

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2
  %17 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 2
  store i32 %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 7
  store ptr %0, ptr %18, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %2
  %24 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 4
  store i32 %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 2, i32 5
  store i32 %4, ptr %26, align 4
  %27 = tail call ptr @pinctrl_find_and_add_gpio_range(ptr noundef %1, ptr noundef %16) #18
  %28 = getelementptr inbounds %struct.gpio_pin_range, ptr %9, i32 0, i32 1
  store ptr %27, ptr %28, align 8
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = ptrtoint ptr %27 to i32
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.gpio_device, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, ptr noundef %34) #19
  tail call void @kfree(ptr noundef nonnull %9) #18
  br label %40

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 13
  %37 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 13, i32 1
  %38 = load ptr, ptr %37, align 4
  store ptr %9, ptr %37, align 4
  store ptr %36, ptr %9, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %9, ptr %38, align 4
  br label %40

40:                                               ; preds = %35, %30, %11
  %41 = phi i32 [ %31, %30 ], [ 0, %35 ], [ -12, %11 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_and_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_remove_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_request(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_request) #19
  br label %36

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_request) #19
  br label %36

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_request) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi ptr [ %22, %21 ], [ %7, %11 ]
  %25 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call zeroext i1 @try_module_get(ptr noundef %26) #18
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @gpiod_request_commit(ptr noundef nonnull %0, ptr noundef %1)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %25, align 8
  tail call void @module_put(ptr noundef %32) #18
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 1
  %35 = tail call ptr @get_device(ptr noundef %34) #18
  br label %36

36:                                               ; preds = %33, %31, %23, %17, %15, %9, %2
  %37 = phi i32 [ %19, %17 ], [ %29, %31 ], [ 0, %33 ], [ -517, %23 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiod_request_commit(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 3264) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %101, label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %8, %7 ], [ null, %2 ]
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %13 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %13) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %98

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, null
  %18 = select i1 %17, ptr @.str.16, ptr %11
  %19 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %12) #18
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = ptrtoint ptr %0 to i32
  %28 = ptrtoint ptr %26 to i32
  %29 = sub i32 %27, %28
  %30 = sdiv exact i32 %29, 24
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 38
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34, !prof !10

34:                                               ; preds = %23
  %35 = lshr i32 %30, 5
  %36 = getelementptr i32, ptr %32, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %30, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  br label %49

44:                                               ; preds = %34, %23
  %45 = load ptr, ptr %20, align 4
  %46 = tail call i32 %45(ptr noundef %5, i32 noundef %30) #18
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %47, %44 ]
  %51 = phi i32 [ -22, %42 ], [ %46, %44 ]
  store ptr null, ptr %19, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %13) #18
  br label %98

52:                                               ; preds = %44, %16
  %53 = phi i32 [ %47, %44 ], [ %12, %16 ]
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %96, label %57

57:                                               ; preds = %52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %53) #18
  %58 = icmp eq ptr %0, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = load ptr, ptr null, align 2147483648
  br label %67

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.gpio_device, ptr %62, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %61, %59
  %68 = phi ptr [ %62, %64 ], [ null, %61 ], [ %60, %59 ]
  %69 = phi ptr [ %66, %64 ], [ null, %61 ], [ null, %59 ]
  %70 = getelementptr inbounds %struct.gpio_device, ptr %68, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = ptrtoint ptr %0 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = sdiv exact i32 %74, 24
  %76 = load volatile i32, ptr %13, align 4
  %77 = and i32 %76, 128
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %67
  %80 = load volatile i32, ptr %13, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79, %67
  %84 = getelementptr inbounds %struct.gpio_chip, ptr %69, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef %69, i32 noundef %75) #18
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = icmp eq i32 %88, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %90
  tail call void @_set_bit(i32 noundef 1, ptr noundef %13) #18
  br label %94

93:                                               ; preds = %90
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %13) #18
  br label %94

94:                                               ; preds = %93, %92, %87, %83, %79
  %95 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  br label %96

96:                                               ; preds = %94, %52
  %97 = phi i32 [ %95, %94 ], [ %53, %52 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %97) #18
  br label %101

98:                                               ; preds = %49, %10
  %99 = phi i32 [ %51, %49 ], [ -16, %10 ]
  %100 = phi i32 [ %50, %49 ], [ %12, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %100) #18
  tail call void @kfree_const(ptr noundef %11) #18
  br label %101

101:                                              ; preds = %98, %96, %7
  %102 = phi i32 [ %99, %98 ], [ 0, %96 ], [ -12, %7 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %0)
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void @module_put(ptr noundef %11) #18
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  tail call void @put_device(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %8, %6, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gpiod_free_commit(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %2) #18
  %17 = load ptr, ptr %13, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.gpio_device, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = ptrtoint ptr %0 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = sdiv exact i32 %23, 24
  tail call void %17(ptr noundef nonnull %5, i32 noundef %24) #18
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  br label %26

26:                                               ; preds = %16, %12
  %27 = phi i32 [ %25, %16 ], [ %2, %12 ]
  %28 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree_const(ptr noundef %29) #18
  store ptr null, ptr %28, align 4
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %8) #18
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %8) #18
  %30 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 4
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 5
  store volatile i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %7, %1
  %33 = phi i32 [ %27, %26 ], [ %2, %7 ], [ %2, %1 ]
  %34 = phi i1 [ true, %26 ], [ false, %7 ], [ false, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %33) #18
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.gpio_device, ptr %35, i32 0, i32 12
  %37 = tail call i32 @blocking_notifier_call_chain(ptr noundef %36, i32 noundef 2, ptr noundef %0) #18
  ret i1 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiochip_request_own_desc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 8
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.gpio_desc, ptr %14, i32 %1
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %15, %12 ], [ inttoptr (i32 -22 to ptr), %5 ]
  %19 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef %20) #19
  br label %35

21:                                               ; preds = %12
  %22 = tail call fastcc i32 @gpiod_request_commit(ptr noundef %15, ptr noundef %2)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = inttoptr i32 %22 to ptr
  br label %35

26:                                               ; preds = %21
  %27 = tail call i32 @gpiod_configure_flags(ptr noundef %15, ptr undef, i32 noundef %3, i32 noundef %4)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.gpio_device, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14, ptr noundef %32, ptr noundef %2) #19
  %33 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef %15)
  %34 = inttoptr i32 %27 to ptr
  br label %35

35:                                               ; preds = %29, %26, %24, %17
  %36 = phi ptr [ %18, %17 ], [ %25, %24 ], [ %34, %29 ], [ %15, %26 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_configure_flags(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %2, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 6, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %4
  %10 = and i32 %2, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 7, ptr noundef %13) #18
  br label %34

14:                                               ; preds = %9
  %15 = and i32 %3, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 7, ptr noundef %18) #18
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.gpio_device, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %19, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %0 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = sdiv exact i32 %26, 24
  %28 = add i32 %27, %21
  %29 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.16, ptr %30
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %28, ptr noundef %32) #19
  br label %34

34:                                               ; preds = %17, %14, %12
  %35 = and i32 %2, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %38) #18
  br label %39

39:                                               ; preds = %37, %34
  %40 = and i32 %2, 48
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.gpio_device, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.gpio_device, ptr %43, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %0 to i32
  %49 = ptrtoint ptr %47 to i32
  %50 = sub i32 %48, %49
  %51 = sdiv exact i32 %50, 24
  %52 = add i32 %51, %45
  %53 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.16, ptr %54
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %52, ptr noundef %56) #19
  br label %83

58:                                               ; preds = %39
  %59 = and i32 %2, 48
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = and i32 %2, 16
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 14, i32 13
  %65 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %64, ptr noundef %65) #18
  br label %66

66:                                               ; preds = %61, %58
  %67 = and i32 %2, 8
  %68 = icmp ne i32 %67, 0
  %69 = tail call i32 @gpiod_set_transitory(ptr noundef %0, i1 noundef zeroext %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = and i32 %3, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = and i32 %3, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = lshr i32 %3, 2
  %79 = and i32 %78, 1
  %80 = tail call i32 @gpiod_direction_output(ptr noundef %0, i32 noundef %79)
  br label %83

81:                                               ; preds = %74
  %82 = tail call i32 @gpiod_direction_input(ptr noundef %0)
  br label %83

83:                                               ; preds = %81, %77, %71, %66, %42
  %84 = phi i32 [ -22, %42 ], [ %69, %66 ], [ 0, %71 ], [ %80, %77 ], [ %82, %81 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_free_own_desc(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %0)
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpio_set_debounce_timeout(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  %11 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %12 to i32
  %14 = sub i32 %10, %13
  %15 = sdiv exact i32 %14, 24
  %16 = shl i32 %1, 8
  %17 = or i32 %16, 11
  %18 = tail call i32 %7(ptr noundef %5, i32 noundef %15, i32 noundef %17) #18
  %19 = icmp eq i32 %18, -524
  br i1 %19, label %20, label %21

20:                                               ; preds = %9, %2
  br label %21

21:                                               ; preds = %20, %9
  %22 = phi i32 [ 0, %20 ], [ %18, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_direction_input(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %159, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_direction_input) #19
  br label %159

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_direction_input) #19
  br label %159

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_direction_input) #19
  %18 = ptrtoint ptr %0 to i32
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %159, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %26 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %29, label %33, label %49

33:                                               ; preds = %24
  br i1 %32, label %50, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = ptrtoint ptr %0 to i32
  %40 = ptrtoint ptr %38 to i32
  %41 = sub i32 %39, %40
  %42 = sdiv exact i32 %41, 24
  %43 = add i32 %42, %36
  %44 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.16, ptr %45
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %43, ptr noundef %47, ptr noundef nonnull @__func__.gpiod_direction_input) #19
  br label %159

49:                                               ; preds = %24
  br i1 %32, label %50, label %78

50:                                               ; preds = %49, %33
  %51 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = ptrtoint ptr %0 to i32
  %58 = ptrtoint ptr %56 to i32
  %59 = sub i32 %57, %58
  %60 = sdiv exact i32 %59, 24
  %61 = tail call i32 %52(ptr noundef %25, i32 noundef %60) #18
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %87, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr inbounds %struct.gpio_device, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.gpio_device, ptr %64, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %68 to i32
  %70 = sub i32 %57, %69
  %71 = sdiv exact i32 %70, 24
  %72 = add i32 %71, %66
  %73 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr @.str.16, ptr %74
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %72, ptr noundef %76, ptr noundef nonnull @__func__.gpiod_direction_input) #19
  br label %159

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 6
  %80 = load ptr, ptr %79, align 8
  %81 = ptrtoint ptr %0 to i32
  %82 = ptrtoint ptr %80 to i32
  %83 = sub i32 %81, %82
  %84 = sdiv exact i32 %83, 24
  %85 = tail call i32 %31(ptr noundef %25, i32 noundef %84) #18
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %78, %54, %50
  %88 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %88) #18
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 32768
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load volatile i32, ptr %88, align 4
  %94 = and i32 %93, 8192
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load volatile i32, ptr %88, align 4
  %98 = and i32 %97, 16384
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %96, %92, %87
  %101 = phi i32 [ 1, %87 ], [ 5, %92 ], [ 3, %96 ]
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.gpio_device, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.gpio_chip, ptr %104, i32 0, i32 14
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %121, label %108

108:                                              ; preds = %100
  %109 = add nsw i32 %101, -3
  %110 = icmp ult i32 %109, 4
  %111 = ptrtoint ptr %0 to i32
  %112 = getelementptr inbounds %struct.gpio_device, ptr %102, i32 0, i32 6
  %113 = load ptr, ptr %112, align 8
  %114 = ptrtoint ptr %113 to i32
  %115 = sub i32 %111, %114
  %116 = sdiv exact i32 %115, 24
  %117 = select i1 %110, i32 256, i32 0
  %118 = or i32 %117, %101
  %119 = tail call i32 %106(ptr noundef %104, i32 noundef %116, i32 noundef %118) #18
  %120 = icmp eq i32 %119, -524
  br i1 %120, label %121, label %122

121:                                              ; preds = %108, %100
  br label %122

122:                                              ; preds = %121, %108, %96, %78
  %123 = phi i32 [ %85, %78 ], [ 0, %96 ], [ 0, %121 ], [ %119, %108 ]
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.gpio_device, ptr %124, i32 0, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.gpio_device, ptr %124, i32 0, i32 6
  %128 = load ptr, ptr %127, align 8
  %129 = ptrtoint ptr %0 to i32
  %130 = ptrtoint ptr %128 to i32
  %131 = sub i32 %129, %130
  %132 = sdiv exact i32 %131, 24
  %133 = add i32 %132, %126
  %134 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 1), align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %122
  %137 = tail call ptr @llvm.thread.pointer() #18
  %138 = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 5
  %141 = getelementptr i32, ptr @__cpu_online_mask, i32 %140
  %142 = load volatile i32, ptr %141, align 4
  %143 = and i32 %139, 31
  %144 = shl nuw i32 1, %143
  %145 = and i32 %144, %142
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %136
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %148 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 7), align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %150, %147
  %151 = phi ptr [ %155, %150 ], [ %148, %147 ]
  %152 = load volatile ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.tracepoint_func, ptr %151, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  tail call void %152(ptr noundef %154, i32 noundef %133, i32 noundef 1, i32 noundef %123) #18
  %155 = getelementptr %struct.tracepoint_func, ptr %151, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %150

158:                                              ; preds = %150, %147
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %159

159:                                              ; preds = %158, %136, %122, %63, %34, %16, %14, %8, %1
  %160 = phi i32 [ -5, %63 ], [ -5, %34 ], [ %18, %16 ], [ %123, %122 ], [ %123, %136 ], [ %123, %158 ], [ 0, %1 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %160
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_direction_output_raw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_direction_output_raw) #19
  br label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_direction_output_raw) #19
  br label %23

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_direction_output_raw) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %11
  %22 = tail call fastcc i32 @gpiod_direction_output_raw_commit(ptr noundef nonnull %0, i32 noundef %1)
  br label %23

23:                                               ; preds = %21, %17, %15, %9, %2
  %24 = phi i32 [ %19, %17 ], [ %22, %21 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpiod_direction_output_raw_commit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne i32 %1, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %10, label %14, label %30

14:                                               ; preds = %2
  br i1 %13, label %15, label %73

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %0 to i32
  %21 = ptrtoint ptr %19 to i32
  %22 = sub i32 %20, %21
  %23 = sdiv exact i32 %22, 24
  %24 = add i32 %23, %17
  %25 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.16, ptr %26
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %24, ptr noundef %28, ptr noundef nonnull @__func__.gpiod_direction_output_raw_commit) #19
  br label %158

30:                                               ; preds = %2
  br i1 %13, label %31, label %73

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %0 to i32
  br label %64

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %0 to i32
  %41 = ptrtoint ptr %39 to i32
  %42 = sub i32 %40, %41
  %43 = sdiv exact i32 %42, 24
  %44 = tail call i32 %33(ptr noundef %5, i32 noundef %43) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load ptr, ptr %8, align 4
  %48 = load ptr, ptr %0, align 4
  br label %64

49:                                               ; preds = %37
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.gpio_device, ptr %50, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.gpio_device, ptr %50, i32 0, i32 6
  %54 = load ptr, ptr %53, align 8
  %55 = ptrtoint ptr %54 to i32
  %56 = sub i32 %40, %55
  %57 = sdiv exact i32 %56, 24
  %58 = add i32 %57, %52
  %59 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str.16, ptr %60
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %58, ptr noundef %62, ptr noundef nonnull @__func__.gpiod_direction_output_raw_commit) #19
  br label %158

64:                                               ; preds = %46, %35
  %65 = phi i32 [ %36, %35 ], [ %40, %46 ]
  %66 = phi ptr [ %3, %35 ], [ %48, %46 ]
  %67 = phi ptr [ %9, %35 ], [ %47, %46 ]
  %68 = getelementptr inbounds %struct.gpio_device, ptr %66, i32 0, i32 6
  %69 = load ptr, ptr %68, align 8
  %70 = ptrtoint ptr %69 to i32
  %71 = sub i32 %65, %70
  %72 = sdiv exact i32 %71, 24
  tail call void %67(ptr noundef %5, i32 noundef %72, i32 noundef %7) #18
  br label %82

73:                                               ; preds = %30, %14
  %74 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %0 to i32
  %77 = ptrtoint ptr %75 to i32
  %78 = sub i32 %76, %77
  %79 = sdiv exact i32 %78, 24
  %80 = tail call i32 %12(ptr noundef %5, i32 noundef %79, i32 noundef %7) #18
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73, %64
  %83 = phi i32 [ %65, %64 ], [ %76, %73 ]
  %84 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %84) #18
  br label %85

85:                                               ; preds = %82, %73
  %86 = phi i32 [ %83, %82 ], [ %76, %73 ]
  %87 = phi i32 [ 0, %82 ], [ %80, %73 ]
  %88 = load ptr, ptr %0, align 4
  %89 = getelementptr inbounds %struct.gpio_device, ptr %88, i32 0, i32 7
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.gpio_device, ptr %88, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8
  %93 = ptrtoint ptr %92 to i32
  %94 = sub i32 %86, %93
  %95 = sdiv exact i32 %94, 24
  %96 = add i32 %95, %90
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %131

99:                                               ; preds = %85
  %100 = tail call ptr @llvm.thread.pointer() #18
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %111 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %113, %110
  %114 = phi ptr [ %118, %113 ], [ %111, %110 ]
  %115 = load volatile ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.tracepoint_func, ptr %114, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void %115(ptr noundef %117, i32 noundef %96, i32 noundef 0, i32 noundef %7) #18
  %118 = getelementptr %struct.tracepoint_func, ptr %114, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %113

121:                                              ; preds = %113, %110
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 6
  %126 = load ptr, ptr %125, align 8
  %127 = ptrtoint ptr %126 to i32
  %128 = sub i32 %86, %127
  %129 = sdiv exact i32 %128, 24
  %130 = add i32 %129, %124
  br label %131

131:                                              ; preds = %121, %99, %85
  %132 = phi i32 [ %96, %85 ], [ %96, %99 ], [ %130, %121 ]
  %133 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 1), align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = tail call ptr @llvm.thread.pointer() #18
  %137 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 8
  %139 = lshr i32 %138, 5
  %140 = getelementptr i32, ptr @__cpu_online_mask, i32 %139
  %141 = load volatile i32, ptr %140, align 4
  %142 = and i32 %138, 31
  %143 = shl nuw i32 1, %142
  %144 = and i32 %143, %141
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %135
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %147 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 7), align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %157, label %149

149:                                              ; preds = %149, %146
  %150 = phi ptr [ %154, %149 ], [ %147, %146 ]
  %151 = load volatile ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.tracepoint_func, ptr %150, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  tail call void %151(ptr noundef %153, i32 noundef %132, i32 noundef 0, i32 noundef %87) #18
  %154 = getelementptr %struct.tracepoint_func, ptr %150, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %149

157:                                              ; preds = %149, %146
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %158

158:                                              ; preds = %157, %135, %131, %49, %15
  %159 = phi i32 [ -5, %49 ], [ -5, %15 ], [ %87, %131 ], [ %87, %135 ], [ %87, %157 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_direction_output(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %146, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_direction_output) #19
  br label %146

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_direction_output) #19
  br label %146

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_direction_output) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %146, label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  %26 = icmp eq i32 %1, 0
  %27 = icmp ne i32 %1, 0
  %28 = select i1 %25, i1 %27, i1 %26
  %29 = zext i1 %28 to i32
  %30 = load volatile i32, ptr %22, align 4
  %31 = and i32 %30, 512
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %21
  %34 = load volatile i32, ptr %22, align 4
  %35 = and i32 %34, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.gpio_device, ptr %38, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.gpio_device, ptr %38, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = ptrtoint ptr %0 to i32
  %44 = ptrtoint ptr %42 to i32
  %45 = sub i32 %43, %44
  %46 = sdiv exact i32 %45, 24
  %47 = add i32 %46, %40
  %48 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str.16, ptr %49
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %47, ptr noundef %51, ptr noundef nonnull @__func__.gpiod_direction_output) #19
  br label %146

53:                                               ; preds = %33, %21
  %54 = load volatile i32, ptr %22, align 4
  %55 = and i32 %54, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.gpio_device, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.gpio_chip, ptr %60, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %57
  %65 = ptrtoint ptr %0 to i32
  %66 = getelementptr inbounds %struct.gpio_device, ptr %58, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = sub i32 %65, %68
  %70 = sdiv exact i32 %69, 24
  %71 = tail call i32 %62(ptr noundef %60, i32 noundef %70, i32 noundef 6) #18
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %64, %57
  %74 = phi i1 [ %72, %64 ], [ true, %57 ]
  %75 = and i1 %28, %74
  br i1 %75, label %142, label %108

76:                                               ; preds = %53
  %77 = load volatile i32, ptr %22, align 4
  %78 = and i32 %77, 256
  %79 = icmp eq i32 %78, 0
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.gpio_device, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.gpio_chip, ptr %82, i32 0, i32 14
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %79, label %99, label %86

86:                                               ; preds = %76
  br i1 %85, label %96, label %87

87:                                               ; preds = %86
  %88 = ptrtoint ptr %0 to i32
  %89 = getelementptr inbounds %struct.gpio_device, ptr %80, i32 0, i32 6
  %90 = load ptr, ptr %89, align 8
  %91 = ptrtoint ptr %90 to i32
  %92 = sub i32 %88, %91
  %93 = sdiv exact i32 %92, 24
  %94 = tail call i32 %84(ptr noundef %82, i32 noundef %93, i32 noundef 7) #18
  %95 = icmp eq i32 %94, 0
  br label %96

96:                                               ; preds = %87, %86
  %97 = phi i1 [ %95, %87 ], [ false, %86 ]
  %98 = or i1 %28, %97
  br i1 %98, label %108, label %142

99:                                               ; preds = %76
  br i1 %85, label %108, label %100

100:                                              ; preds = %99
  %101 = ptrtoint ptr %0 to i32
  %102 = getelementptr inbounds %struct.gpio_device, ptr %80, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = ptrtoint ptr %103 to i32
  %105 = sub i32 %101, %104
  %106 = sdiv exact i32 %105, 24
  %107 = tail call i32 %84(ptr noundef %82, i32 noundef %106, i32 noundef 8) #18
  br label %108

108:                                              ; preds = %100, %99, %96, %73
  %109 = load volatile i32, ptr %22, align 4
  %110 = and i32 %109, 32768
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load volatile i32, ptr %22, align 4
  %114 = and i32 %113, 8192
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load volatile i32, ptr %22, align 4
  %118 = and i32 %117, 16384
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %116, %112, %108
  %121 = phi i32 [ 1, %108 ], [ 5, %112 ], [ 3, %116 ]
  %122 = load ptr, ptr %0, align 4
  %123 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 5
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.gpio_chip, ptr %124, i32 0, i32 14
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %140, label %128

128:                                              ; preds = %120
  %129 = add nsw i32 %121, -3
  %130 = icmp ult i32 %129, 4
  %131 = ptrtoint ptr %0 to i32
  %132 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 6
  %133 = load ptr, ptr %132, align 8
  %134 = ptrtoint ptr %133 to i32
  %135 = sub i32 %131, %134
  %136 = sdiv exact i32 %135, 24
  %137 = select i1 %130, i32 256, i32 0
  %138 = or i32 %137, %121
  %139 = tail call i32 %126(ptr noundef %124, i32 noundef %136, i32 noundef %138) #18
  switch i32 %139, label %146 [
    i32 -524, label %140
    i32 0, label %140
  ]

140:                                              ; preds = %128, %128, %120, %116
  %141 = tail call fastcc i32 @gpiod_direction_output_raw_commit(ptr noundef nonnull %0, i32 noundef %29)
  br label %146

142:                                              ; preds = %96, %73
  %143 = tail call i32 @gpiod_direction_input(ptr noundef nonnull %0)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @_set_bit(i32 noundef 1, ptr noundef %22) #18
  br label %146

146:                                              ; preds = %145, %142, %140, %128, %37, %17, %15, %9, %2
  %147 = phi i32 [ -5, %37 ], [ %141, %140 ], [ %19, %17 ], [ 0, %145 ], [ %143, %142 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ], [ %139, %128 ]
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_config(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_config) #19
  br label %39

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_config) #19
  br label %39

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_config) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %21, %11
  %26 = phi ptr [ %24, %21 ], [ %13, %11 ]
  %27 = phi ptr [ %22, %21 ], [ %7, %11 ]
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %26, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = ptrtoint ptr %0 to i32
  %33 = getelementptr inbounds %struct.gpio_device, ptr %27, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = ptrtoint ptr %34 to i32
  %36 = sub i32 %32, %35
  %37 = sdiv exact i32 %36, 24
  %38 = tail call i32 %29(ptr noundef %26, i32 noundef %37, i32 noundef %1) #18
  br label %39

39:                                               ; preds = %31, %25, %17, %15, %9, %2
  %40 = phi i32 [ %19, %17 ], [ %38, %31 ], [ -524, %25 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_debounce(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 8
  %4 = or i32 %3, 11
  %5 = icmp eq ptr %0, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_config) #19
  br label %41

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_config) #19
  br label %41

19:                                               ; preds = %6
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_config) #19
  %21 = ptrtoint ptr %0 to i32
  %22 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi ptr [ %26, %23 ], [ %15, %13 ]
  %29 = phi ptr [ %24, %23 ], [ %9, %13 ]
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %28, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = ptrtoint ptr %0 to i32
  %35 = getelementptr inbounds %struct.gpio_device, ptr %29, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = ptrtoint ptr %36 to i32
  %38 = sub i32 %34, %37
  %39 = sdiv exact i32 %38, 24
  %40 = tail call i32 %31(ptr noundef %28, i32 noundef %39, i32 noundef %4) #18
  br label %41

41:                                               ; preds = %33, %27, %19, %17, %11, %2
  %42 = phi i32 [ %21, %19 ], [ %40, %33 ], [ -524, %27 ], [ 0, %2 ], [ -22, %11 ], [ 0, %17 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_transitory(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_transitory) #19
  br label %43

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_transitory) #19
  br label %43

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_transitory) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %43, label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  br i1 %1, label %23, label %24

23:                                               ; preds = %21
  tail call void @_set_bit(i32 noundef 12, ptr noundef %22) #18
  br label %25

24:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %22) #18
  br label %25

25:                                               ; preds = %24, %23
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %28, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %25
  %33 = ptrtoint ptr %0 to i32
  %34 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = sub i32 %33, %36
  %38 = sdiv exact i32 %37, 24
  %39 = select i1 %1, i32 20, i32 276
  %40 = tail call i32 %30(ptr noundef %28, i32 noundef %38, i32 noundef %39) #18
  %41 = icmp eq i32 %40, -524
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %25
  br label %43

43:                                               ; preds = %42, %32, %17, %15, %9, %2
  %44 = phi i32 [ %19, %17 ], [ 0, %42 ], [ %40, %32 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_is_active_low(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_is_active_low) #19
  br label %25

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_is_active_low) #19
  br label %25

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_is_active_low) #19
  %18 = ptrtoint ptr %0 to i32
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = lshr i32 %22, 6
  %24 = and i32 %23, 1
  br label %25

25:                                               ; preds = %20, %16, %14, %8, %1
  %26 = phi i32 [ %18, %16 ], [ %24, %20 ], [ 0, %1 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_toggle_active_low(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_toggle_active_low) #19
  br label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_toggle_active_low) #19
  br label %21

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_toggle_active_low) #19
  %18 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %10
  %20 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_change_bit(i32 noundef 6, ptr noundef %20) #18
  br label %21

21:                                               ; preds = %19, %16, %14, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_array_value_complex(i1 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i32], align 4
  %8 = alloca [16 x i32], align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp uge i32 %15, %2
  %17 = getelementptr ptr, ptr %3, i32 %15
  %18 = icmp eq ptr %17, %4
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %13
  br i1 %1, label %28, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %23, i32 0, i32 23
  %25 = load i8, ptr %24, align 4, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27, !prof !10

27:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2595, i32 noundef 9, ptr noundef null) #18
  br label %28

28:                                               ; preds = %27, %21, %20
  %29 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call fastcc i32 @gpio_chip_get_multiple(ptr noundef %30, ptr noundef %32, ptr noundef %5)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %223

35:                                               ; preds = %28
  br i1 %0, label %41, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 5
  %38 = tail call i32 @_find_first_bit_le(ptr noundef %37, i32 noundef %2) #18
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @__bitmap_xor(ptr noundef %5, ptr noundef %5, ptr noundef %37, i32 noundef %2) #18
  br label %41

41:                                               ; preds = %40, %36, %35
  %42 = load ptr, ptr %31, align 4
  %43 = tail call i32 @_find_first_zero_bit_le(ptr noundef %42, i32 noundef %2) #18
  %44 = icmp eq i32 %43, %2
  br i1 %44, label %223, label %45

45:                                               ; preds = %41, %13, %10, %6
  %46 = phi i32 [ %43, %41 ], [ 0, %13 ], [ 0, %10 ], [ 0, %6 ]
  %47 = phi ptr [ %4, %41 ], [ null, %13 ], [ null, %10 ], [ null, %6 ]
  %48 = icmp ult i32 %46, %2
  br i1 %48, label %49, label %223

49:                                               ; preds = %45
  %50 = select i1 %1, i32 3264, i32 2592
  %51 = icmp eq ptr %47, null
  %52 = getelementptr inbounds %struct.gpio_array, ptr %47, i32 0, i32 3
  br label %53

53:                                               ; preds = %222, %49
  %54 = phi i32 [ %46, %49 ], [ %111, %222 ]
  %55 = getelementptr ptr, ptr %3, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.gpio_device, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !9
  %60 = getelementptr inbounds %struct.gpio_chip, ptr %59, i32 0, i32 20
  %61 = load i16, ptr %60, align 4
  %62 = icmp ult i16 %61, 513
  br i1 %62, label %74, label %63, !prof !10

63:                                               ; preds = %53
  %64 = zext i16 %61 to i32
  %65 = call ptr @bitmap_alloc(i32 noundef %64, i32 noundef %50) #18
  %66 = icmp eq ptr %65, null
  br i1 %66, label %220, label %67

67:                                               ; preds = %63
  %68 = load i16, ptr %60, align 4
  %69 = zext i16 %68 to i32
  %70 = call ptr @bitmap_alloc(i32 noundef %69, i32 noundef %50) #18
  %71 = icmp eq ptr %70, null
  br i1 %71, label %217, label %72

72:                                               ; preds = %67
  %73 = load i16, ptr %60, align 4
  br label %74

74:                                               ; preds = %72, %53
  %75 = phi i16 [ %61, %53 ], [ %73, %72 ]
  %76 = phi ptr [ %7, %53 ], [ %65, %72 ]
  %77 = phi ptr [ %8, %53 ], [ %70, %72 ]
  %78 = zext i16 %75 to i32
  %79 = add nuw nsw i32 %78, 31
  %80 = lshr i32 %79, 3
  %81 = and i32 %80, 16380
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %76, i8 0, i32 %81, i1 false) #18
  br i1 %1, label %87, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.gpio_chip, ptr %59, i32 0, i32 23
  %84 = load i8, ptr %83, align 4, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %87, label %86, !prof !10

86:                                               ; preds = %82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2641, i32 noundef 9, ptr noundef null) #18
  br label %87

87:                                               ; preds = %86, %82, %74
  %88 = load ptr, ptr %55, align 4
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %113, %87
  %91 = phi ptr [ %89, %87 ], [ %116, %113 ]
  %92 = phi ptr [ %88, %87 ], [ %115, %113 ]
  %93 = phi i32 [ %54, %87 ], [ %111, %113 ]
  %94 = getelementptr inbounds %struct.gpio_device, ptr %91, i32 0, i32 6
  %95 = load ptr, ptr %94, align 8
  %96 = ptrtoint ptr %92 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = sub i32 %96, %97
  %99 = sdiv exact i32 %98, 24
  %100 = and i32 %99, 31
  %101 = shl nuw i32 1, %100
  %102 = lshr i32 %99, 5
  %103 = getelementptr i32, ptr %76, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %101, %104
  store i32 %105, ptr %103, align 4
  %106 = add nuw i32 %93, 1
  br i1 %51, label %110, label %107

107:                                              ; preds = %90
  %108 = load ptr, ptr %52, align 4
  %109 = call i32 @_find_next_zero_bit_le(ptr noundef %108, i32 noundef %2, i32 noundef %106) #18
  br label %110

110:                                              ; preds = %107, %90
  %111 = phi i32 [ %109, %107 ], [ %106, %90 ]
  %112 = icmp ult i32 %111, %2
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = getelementptr ptr, ptr %3, i32 %111
  %115 = load ptr, ptr %114, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.gpio_device, ptr %116, i32 0, i32 5
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %59
  br i1 %119, label %90, label %120

120:                                              ; preds = %113, %110
  %121 = call fastcc i32 @gpio_chip_get_multiple(ptr noundef %59, ptr noundef nonnull %76, ptr noundef nonnull %77)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = icmp slt i32 %54, %111
  br i1 %124, label %130, label %211

125:                                              ; preds = %120
  %126 = icmp eq ptr %76, %7
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  call void @bitmap_free(ptr noundef nonnull %76) #18
  br label %128

128:                                              ; preds = %127, %125
  %129 = icmp eq ptr %77, %8
  br i1 %129, label %220, label %217

130:                                              ; preds = %208, %123
  %131 = phi i32 [ %209, %208 ], [ %54, %123 ]
  %132 = getelementptr ptr, ptr %3, i32 %131
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.gpio_device, ptr %134, i32 0, i32 6
  %136 = load ptr, ptr %135, align 8
  %137 = ptrtoint ptr %133 to i32
  %138 = ptrtoint ptr %136 to i32
  %139 = sub i32 %137, %138
  %140 = sdiv exact i32 %139, 24
  %141 = lshr i32 %140, 5
  %142 = getelementptr i32, ptr %77, i32 %141
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %140, 31
  %145 = lshr i32 %143, %144
  %146 = and i32 %145, 1
  br i1 %0, label %153, label %147

147:                                              ; preds = %130
  %148 = getelementptr inbounds %struct.gpio_desc, ptr %133, i32 0, i32 1
  %149 = load volatile i32, ptr %148, align 4
  %150 = lshr i32 %149, 6
  %151 = and i32 %150, 1
  %152 = xor i32 %146, %151
  br label %153

153:                                              ; preds = %147, %130
  %154 = phi i32 [ %146, %130 ], [ %152, %147 ]
  %155 = icmp eq i32 %154, 0
  %156 = and i32 %131, 31
  %157 = shl nuw i32 1, %156
  %158 = lshr i32 %131, 5
  %159 = getelementptr i32, ptr %5, i32 %158
  br i1 %155, label %163, label %160

160:                                              ; preds = %153
  %161 = load i32, ptr %159, align 4
  %162 = or i32 %161, %157
  br label %167

163:                                              ; preds = %153
  %164 = xor i32 %157, -1
  %165 = load i32, ptr %159, align 4
  %166 = and i32 %165, %164
  br label %167

167:                                              ; preds = %163, %160
  %168 = phi i32 [ %166, %163 ], [ %162, %160 ]
  store i32 %168, ptr %159, align 4
  %169 = load ptr, ptr %133, align 4
  %170 = getelementptr inbounds %struct.gpio_device, ptr %169, i32 0, i32 7
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.gpio_device, ptr %169, i32 0, i32 6
  %173 = load ptr, ptr %172, align 8
  %174 = ptrtoint ptr %173 to i32
  %175 = sub i32 %137, %174
  %176 = sdiv exact i32 %175, 24
  %177 = add i32 %176, %171
  %178 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %203

180:                                              ; preds = %167
  %181 = tail call ptr @llvm.thread.pointer() #18
  %182 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 8
  %184 = lshr i32 %183, 5
  %185 = getelementptr i32, ptr @__cpu_online_mask, i32 %184
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %183, 31
  %188 = shl nuw i32 1, %187
  %189 = and i32 %188, %186
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %180
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %192 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %194, %191
  %195 = phi ptr [ %199, %194 ], [ %192, %191 ]
  %196 = load volatile ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.tracepoint_func, ptr %195, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  call void %196(ptr noundef %198, i32 noundef %177, i32 noundef 1, i32 noundef %154) #18
  %199 = getelementptr %struct.tracepoint_func, ptr %195, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %194

202:                                              ; preds = %194, %191
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %203

203:                                              ; preds = %202, %180, %167
  %204 = add i32 %131, 1
  br i1 %51, label %208, label %205

205:                                              ; preds = %203
  %206 = load ptr, ptr %52, align 4
  %207 = call i32 @_find_next_zero_bit_le(ptr noundef %206, i32 noundef %111, i32 noundef %204) #18
  br label %208

208:                                              ; preds = %205, %203
  %209 = phi i32 [ %207, %205 ], [ %204, %203 ]
  %210 = icmp slt i32 %209, %111
  br i1 %210, label %130, label %211

211:                                              ; preds = %208, %123
  %212 = icmp eq ptr %76, %7
  br i1 %212, label %214, label %213

213:                                              ; preds = %211
  call void @bitmap_free(ptr noundef nonnull %76) #18
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %77, %8
  br i1 %215, label %222, label %216

216:                                              ; preds = %214
  call void @bitmap_free(ptr noundef nonnull %77) #18
  br label %222

217:                                              ; preds = %128, %67
  %218 = phi ptr [ %77, %128 ], [ %65, %67 ]
  %219 = phi i32 [ %121, %128 ], [ -12, %67 ]
  call void @bitmap_free(ptr noundef nonnull %218) #18
  br label %220

220:                                              ; preds = %217, %128, %63
  %221 = phi i32 [ %121, %128 ], [ %219, %217 ], [ -12, %63 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  br label %223

222:                                              ; preds = %216, %214
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  br i1 %112, label %53, label %223

223:                                              ; preds = %222, %220, %45, %41, %28
  %224 = phi i32 [ %33, %28 ], [ 0, %41 ], [ %221, %220 ], [ 0, %45 ], [ 0, %222 ]
  ret i32 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @gpio_chip_get_multiple(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %48

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %16, i32 noundef 0) #18
  %18 = load i16, ptr %14, align 4
  %19 = zext i16 %18 to i32
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %39, %13
  %22 = phi i32 [ %44, %39 ], [ %17, %13 ]
  %23 = load ptr, ptr %10, align 4
  %24 = tail call i32 %23(ptr noundef %0, i32 noundef %22) #18
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %21
  %27 = icmp eq i32 %24, 0
  %28 = and i32 %22, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %22, 5
  %31 = getelementptr i32, ptr %2, i32 %30
  br i1 %27, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %31, align 4
  %34 = or i32 %33, %29
  br label %39

35:                                               ; preds = %26
  %36 = xor i32 %29, -1
  %37 = load i32, ptr %31, align 4
  %38 = and i32 %37, %36
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %38, %35 ], [ %34, %32 ]
  store i32 %40, ptr %31, align 4
  %41 = load i16, ptr %14, align 4
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %22, 1
  %44 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %42, i32 noundef %43) #18
  %45 = load i16, ptr %14, align 4
  %46 = zext i16 %45 to i32
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %21, label %48

48:                                               ; preds = %39, %21, %13, %9, %7
  %49 = phi i32 [ %8, %7 ], [ -5, %9 ], [ 0, %13 ], [ 0, %39 ], [ %24, %21 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_raw_value(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %89, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_get_raw_value) #19
  br label %89

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_get_raw_value) #19
  br label %89

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_get_raw_value) #19
  %18 = ptrtoint ptr %0 to i32
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %89, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %26 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 23
  %28 = load i8, ptr %27, align 4, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2705, i32 noundef 9, ptr noundef null) #18
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.gpio_device, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %33, %30 ], [ %25, %24 ]
  %36 = phi ptr [ %31, %30 ], [ %26, %24 ]
  %37 = ptrtoint ptr %0 to i32
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %35, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = sub i32 %37, %44
  %46 = sdiv exact i32 %45, 24
  %47 = tail call i32 %39(ptr noundef %35, i32 noundef %46) #18
  %48 = icmp slt i32 %47, 0
  %49 = icmp ne i32 %47, 0
  %50 = zext i1 %49 to i32
  br i1 %48, label %51, label %53

51:                                               ; preds = %41, %34
  %52 = phi i32 [ %47, %41 ], [ -5, %34 ]
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i32 [ %52, %51 ], [ %50, %41 ]
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.gpio_device, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.gpio_device, ptr %55, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = sub i32 %37, %60
  %62 = sdiv exact i32 %61, 24
  %63 = add i32 %62, %57
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = tail call ptr @llvm.thread.pointer() #18
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %78 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %85, %80 ], [ %78, %77 ]
  %82 = load volatile ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.tracepoint_func, ptr %81, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %82(ptr noundef %84, i32 noundef %63, i32 noundef 1, i32 noundef %54) #18
  %85 = getelementptr %struct.tracepoint_func, ptr %81, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %77
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %89

89:                                               ; preds = %88, %66, %53, %16, %14, %8, %1
  %90 = phi i32 [ %18, %16 ], [ %54, %53 ], [ %54, %66 ], [ %54, %88 ], [ 0, %1 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_value(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %99, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_get_value) #19
  br label %99

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_get_value) #19
  br label %99

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_get_value) #19
  %18 = ptrtoint ptr %0 to i32
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %99, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %26 = phi ptr [ %21, %20 ], [ %6, %10 ]
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 23
  %28 = load i8, ptr %27, align 4, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2726, i32 noundef 9, ptr noundef null) #18
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.gpio_device, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %33, %30 ], [ %25, %24 ]
  %36 = phi ptr [ %31, %30 ], [ %26, %24 ]
  %37 = ptrtoint ptr %0 to i32
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %35, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = ptrtoint ptr %43 to i32
  %45 = sub i32 %37, %44
  %46 = sdiv exact i32 %45, 24
  %47 = tail call i32 %39(ptr noundef %35, i32 noundef %46) #18
  %48 = icmp slt i32 %47, 0
  %49 = icmp ne i32 %47, 0
  %50 = zext i1 %49 to i32
  br i1 %48, label %51, label %53

51:                                               ; preds = %41, %34
  %52 = phi i32 [ %47, %41 ], [ -5, %34 ]
  br label %53

53:                                               ; preds = %51, %41
  %54 = phi i32 [ %52, %51 ], [ %50, %41 ]
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.gpio_device, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.gpio_device, ptr %55, i32 0, i32 6
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = sub i32 %37, %60
  %62 = sdiv exact i32 %61, 24
  %63 = add i32 %62, %57
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = tail call ptr @llvm.thread.pointer() #18
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %78 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %85, %80 ], [ %78, %77 ]
  %82 = load volatile ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.tracepoint_func, ptr %81, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %82(ptr noundef %84, i32 noundef %63, i32 noundef 1, i32 noundef %54) #18
  %85 = getelementptr %struct.tracepoint_func, ptr %81, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %77
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %89

89:                                               ; preds = %88, %66, %53
  %90 = icmp slt i32 %54, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 64
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq i32 %54, 0
  %97 = zext i1 %96 to i32
  %98 = select i1 %95, i32 %54, i32 %97
  br label %99

99:                                               ; preds = %91, %89, %16, %14, %8, %1
  %100 = phi i32 [ %98, %91 ], [ %18, %16 ], [ %54, %89 ], [ 0, %1 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_raw_array_value(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_get_array_value_complex(i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_array_value(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_array_value_complex(i1 noundef zeroext %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i32], align 4
  %8 = alloca [16 x i32], align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %73, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %73

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp uge i32 %15, %2
  %17 = getelementptr ptr, ptr %3, i32 %15
  %18 = icmp eq ptr %17, %4
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %13
  br i1 %1, label %28, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %23, i32 0, i32 23
  %25 = load i8, ptr %24, align 4, !range !13
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27, !prof !10

27:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2892, i32 noundef 9, ptr noundef null) #18
  br label %28

28:                                               ; preds = %27, %21, %20
  br i1 %0, label %34, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 5
  %31 = tail call i32 @_find_first_bit_le(ptr noundef %30, i32 noundef %2) #18
  %32 = icmp eq i32 %31, %2
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @__bitmap_xor(ptr noundef %5, ptr noundef %5, ptr noundef %30, i32 noundef %2) #18
  br label %34

34:                                               ; preds = %33, %29, %28
  %35 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gpio_array, ptr %4, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %36, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  tail call void %40(ptr noundef %36, ptr noundef %38, ptr noundef %5) #18
  br label %69

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %36, i32 0, i32 20
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = tail call i32 @_find_next_bit_le(ptr noundef %38, i32 noundef %46, i32 noundef 0) #18
  %48 = load i16, ptr %44, align 4
  %49 = zext i16 %48 to i32
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.gpio_chip, ptr %36, i32 0, i32 12
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi i32 [ %47, %51 ], [ %65, %53 ]
  %55 = load ptr, ptr %52, align 4
  %56 = lshr i32 %54, 5
  %57 = getelementptr i32, ptr %5, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %54, 31
  %60 = lshr i32 %58, %59
  %61 = and i32 %60, 1
  tail call void %55(ptr noundef %36, i32 noundef %54, i32 noundef %61) #18
  %62 = load i16, ptr %44, align 4
  %63 = zext i16 %62 to i32
  %64 = add nuw i32 %54, 1
  %65 = tail call i32 @_find_next_bit_le(ptr noundef %38, i32 noundef %63, i32 noundef %64) #18
  %66 = load i16, ptr %44, align 4
  %67 = zext i16 %66 to i32
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %53, label %69

69:                                               ; preds = %53, %43, %42
  %70 = load ptr, ptr %37, align 4
  %71 = tail call i32 @_find_first_zero_bit_le(ptr noundef %70, i32 noundef %2) #18
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %270, label %73

73:                                               ; preds = %69, %13, %10, %6
  %74 = phi i32 [ %71, %69 ], [ 0, %13 ], [ 0, %10 ], [ 0, %6 ]
  %75 = phi ptr [ %4, %69 ], [ null, %13 ], [ null, %10 ], [ null, %6 ]
  %76 = icmp ult i32 %74, %2
  br i1 %76, label %77, label %270

77:                                               ; preds = %73
  %78 = select i1 %1, i32 3264, i32 2592
  %79 = icmp eq ptr %75, null
  %80 = getelementptr inbounds %struct.gpio_array, ptr %75, i32 0, i32 5
  %81 = getelementptr inbounds %struct.gpio_array, ptr %75, i32 0, i32 4
  br label %82

82:                                               ; preds = %269, %77
  %83 = phi i32 [ %74, %77 ], [ %222, %269 ]
  %84 = getelementptr ptr, ptr %3, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.gpio_device, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false), !annotation !9
  %89 = getelementptr inbounds %struct.gpio_chip, ptr %88, i32 0, i32 20
  %90 = load i16, ptr %89, align 4
  %91 = icmp ult i16 %90, 513
  br i1 %91, label %105, label %92, !prof !10

92:                                               ; preds = %82
  %93 = zext i16 %90 to i32
  %94 = call ptr @bitmap_alloc(i32 noundef %93, i32 noundef %78) #18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = load i16, ptr %89, align 4
  %98 = zext i16 %97 to i32
  %99 = call ptr @bitmap_alloc(i32 noundef %98, i32 noundef %78) #18
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load i16, ptr %89, align 4
  br label %105

103:                                              ; preds = %96
  call void @bitmap_free(ptr noundef nonnull %94) #18
  br label %104

104:                                              ; preds = %103, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  br label %270

105:                                              ; preds = %101, %82
  %106 = phi i16 [ %90, %82 ], [ %102, %101 ]
  %107 = phi ptr [ %7, %82 ], [ %94, %101 ]
  %108 = phi ptr [ %8, %82 ], [ %99, %101 ]
  %109 = zext i16 %106 to i32
  %110 = add nuw nsw i32 %109, 31
  %111 = lshr i32 %110, 3
  %112 = and i32 %111, 16380
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %107, i8 0, i32 %112, i1 false) #18
  br i1 %1, label %118, label %113

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.gpio_chip, ptr %88, i32 0, i32 23
  %115 = load i8, ptr %114, align 4, !range !13
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %118, label %117, !prof !10

117:                                              ; preds = %113
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2935, i32 noundef 9, ptr noundef null) #18
  br label %118

118:                                              ; preds = %117, %113, %105
  %119 = load ptr, ptr %84, align 4
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %224, %118
  %122 = phi ptr [ %120, %118 ], [ %227, %224 ]
  %123 = phi ptr [ %119, %118 ], [ %226, %224 ]
  %124 = phi i32 [ %83, %118 ], [ %222, %224 ]
  %125 = phi i32 [ 0, %118 ], [ %216, %224 ]
  %126 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 6
  %127 = load ptr, ptr %126, align 8
  %128 = ptrtoint ptr %123 to i32
  %129 = ptrtoint ptr %127 to i32
  %130 = sub i32 %128, %129
  %131 = sdiv exact i32 %130, 24
  %132 = lshr i32 %124, 5
  %133 = getelementptr i32, ptr %5, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %124, 31
  %136 = lshr i32 %134, %135
  %137 = and i32 %136, 1
  br i1 %0, label %151, label %138

138:                                              ; preds = %121
  br i1 %79, label %145, label %139

139:                                              ; preds = %138
  %140 = getelementptr i32, ptr %80, i32 %132
  %141 = load volatile i32, ptr %140, align 4
  %142 = shl nuw i32 1, %135
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %139, %138
  %146 = getelementptr inbounds %struct.gpio_desc, ptr %123, i32 0, i32 1
  %147 = load volatile i32, ptr %146, align 4
  %148 = lshr i32 %147, 6
  %149 = and i32 %148, 1
  %150 = xor i32 %137, %149
  br label %151

151:                                              ; preds = %145, %139, %121
  %152 = phi i32 [ %137, %121 ], [ %137, %139 ], [ %150, %145 ]
  %153 = getelementptr inbounds %struct.gpio_device, ptr %122, i32 0, i32 7
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %131
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %151
  %159 = tail call ptr @llvm.thread.pointer() #18
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = lshr i32 %161, 5
  %163 = getelementptr i32, ptr @__cpu_online_mask, i32 %162
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %161, 31
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %181, label %169

169:                                              ; preds = %158
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %170 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %180, label %172

172:                                              ; preds = %172, %169
  %173 = phi ptr [ %177, %172 ], [ %170, %169 ]
  %174 = load volatile ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.tracepoint_func, ptr %173, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  call void %174(ptr noundef %176, i32 noundef %155, i32 noundef 0, i32 noundef %152) #18
  %177 = getelementptr %struct.tracepoint_func, ptr %173, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %172

180:                                              ; preds = %172, %169
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %181

181:                                              ; preds = %180, %158, %151
  %182 = getelementptr inbounds %struct.gpio_desc, ptr %123, i32 0, i32 1
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %183, 128
  %185 = icmp eq i32 %184, 0
  %186 = or i1 %185, %0
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = icmp ne i32 %152, 0
  call fastcc void @gpio_set_open_drain_value_commit(ptr noundef %123, i1 noundef zeroext %188)
  br label %215

189:                                              ; preds = %181
  %190 = load volatile i32, ptr %182, align 4
  %191 = and i32 %190, 256
  %192 = icmp eq i32 %191, 0
  %193 = or i1 %192, %0
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = icmp ne i32 %152, 0
  call fastcc void @gpio_set_open_source_value_commit(ptr noundef %123, i1 noundef zeroext %195)
  br label %215

196:                                              ; preds = %189
  %197 = and i32 %131, 31
  %198 = shl nuw i32 1, %197
  %199 = lshr i32 %131, 5
  %200 = getelementptr i32, ptr %107, i32 %199
  %201 = load i32, ptr %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, ptr %200, align 4
  %203 = icmp eq i32 %152, 0
  %204 = getelementptr i32, ptr %108, i32 %199
  br i1 %203, label %208, label %205

205:                                              ; preds = %196
  %206 = load i32, ptr %204, align 4
  %207 = or i32 %206, %198
  br label %212

208:                                              ; preds = %196
  %209 = xor i32 %198, -1
  %210 = load i32, ptr %204, align 4
  %211 = and i32 %210, %209
  br label %212

212:                                              ; preds = %208, %205
  %213 = phi i32 [ %211, %208 ], [ %207, %205 ]
  store i32 %213, ptr %204, align 4
  %214 = add i32 %125, 1
  br label %215

215:                                              ; preds = %212, %194, %187
  %216 = phi i32 [ %214, %212 ], [ %125, %194 ], [ %125, %187 ]
  %217 = add i32 %124, 1
  br i1 %79, label %221, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr %81, align 4
  %220 = call i32 @_find_next_zero_bit_le(ptr noundef %219, i32 noundef %2, i32 noundef %217) #18
  br label %221

221:                                              ; preds = %218, %215
  %222 = phi i32 [ %220, %218 ], [ %217, %215 ]
  %223 = icmp ult i32 %222, %2
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = getelementptr ptr, ptr %3, i32 %222
  %226 = load ptr, ptr %225, align 4
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.gpio_device, ptr %227, i32 0, i32 5
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, %88
  br i1 %230, label %121, label %231

231:                                              ; preds = %224, %221
  %232 = icmp eq i32 %216, 0
  br i1 %232, label %263, label %233

233:                                              ; preds = %231
  %234 = getelementptr inbounds %struct.gpio_chip, ptr %88, i32 0, i32 13
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  call void %235(ptr noundef %88, ptr noundef nonnull %107, ptr noundef nonnull %108) #18
  br label %263

238:                                              ; preds = %233
  %239 = load i16, ptr %89, align 4
  %240 = zext i16 %239 to i32
  %241 = call i32 @_find_next_bit_le(ptr noundef nonnull %107, i32 noundef %240, i32 noundef 0) #18
  %242 = load i16, ptr %89, align 4
  %243 = zext i16 %242 to i32
  %244 = icmp ult i32 %241, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.gpio_chip, ptr %88, i32 0, i32 12
  br label %247

247:                                              ; preds = %247, %245
  %248 = phi i32 [ %241, %245 ], [ %259, %247 ]
  %249 = load ptr, ptr %246, align 4
  %250 = lshr i32 %248, 5
  %251 = getelementptr i32, ptr %108, i32 %250
  %252 = load volatile i32, ptr %251, align 4
  %253 = and i32 %248, 31
  %254 = lshr i32 %252, %253
  %255 = and i32 %254, 1
  call void %249(ptr noundef %88, i32 noundef %248, i32 noundef %255) #18
  %256 = load i16, ptr %89, align 4
  %257 = zext i16 %256 to i32
  %258 = add nuw i32 %248, 1
  %259 = call i32 @_find_next_bit_le(ptr noundef nonnull %107, i32 noundef %257, i32 noundef %258) #18
  %260 = load i16, ptr %89, align 4
  %261 = zext i16 %260 to i32
  %262 = icmp ult i32 %259, %261
  br i1 %262, label %247, label %263

263:                                              ; preds = %247, %238, %237, %231
  %264 = icmp eq ptr %107, %7
  br i1 %264, label %266, label %265

265:                                              ; preds = %263
  call void @bitmap_free(ptr noundef nonnull %107) #18
  br label %266

266:                                              ; preds = %265, %263
  %267 = icmp eq ptr %108, %8
  br i1 %267, label %269, label %268

268:                                              ; preds = %266
  call void @bitmap_free(ptr noundef nonnull %108) #18
  br label %269

269:                                              ; preds = %268, %266
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #18
  br i1 %223, label %82, label %270

270:                                              ; preds = %269, %104, %73, %69
  %271 = phi i32 [ 0, %69 ], [ -12, %104 ], [ 0, %73 ], [ 0, %269 ]
  ret i32 %271
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_set_open_drain_value_commit(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 24
  br i1 %1, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %5, i32 noundef %11) #18
  br label %23

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %5, i32 noundef %11, i32 noundef 0) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %22) #18
  br label %23

23:                                               ; preds = %21, %16, %12
  %24 = phi i32 [ %15, %12 ], [ %19, %16 ], [ 0, %21 ]
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.gpio_device, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gpio_device, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = sub i32 %8, %30
  %32 = sdiv exact i32 %31, 24
  %33 = add i32 %32, %27
  %34 = zext i1 %1 to i32
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %23
  %38 = tail call ptr @llvm.thread.pointer() #18
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %49 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 7), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %56, %51 ], [ %49, %48 ]
  %53 = load volatile ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tracepoint_func, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %53(ptr noundef %55, i32 noundef %33, i32 noundef %34, i32 noundef %24) #18
  %56 = getelementptr %struct.tracepoint_func, ptr %52, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %48
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %60

60:                                               ; preds = %59, %37, %23
  %61 = icmp slt i32 %24, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.gpio_device, ptr %63, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.gpio_device, ptr %63, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = ptrtoint ptr %67 to i32
  %69 = sub i32 %8, %68
  %70 = sdiv exact i32 %69, 24
  %71 = add i32 %70, %65
  %72 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr @.str.16, ptr %73
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %71, ptr noundef %75, ptr noundef nonnull @__func__.gpio_set_open_drain_value_commit, i32 noundef %24) #19
  br label %77

77:                                               ; preds = %62, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpio_set_open_source_value_commit(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_device, ptr %3, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = sdiv exact i32 %10, 24
  br i1 %1, label %12, label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %5, i32 noundef %11, i32 noundef 1) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %18) #18
  br label %23

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %5, i32 noundef %11) #18
  br label %23

23:                                               ; preds = %19, %17, %12
  %24 = phi i32 [ %15, %12 ], [ 0, %17 ], [ %22, %19 ]
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.gpio_device, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gpio_device, ptr %25, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = sub i32 %8, %30
  %32 = sdiv exact i32 %31, 24
  %33 = add i32 %32, %27
  %34 = xor i1 %1, true
  %35 = zext i1 %34 to i32
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %23
  %39 = tail call ptr @llvm.thread.pointer() #18
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %50 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_direction, i32 0, i32 7), align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %52, %49
  %53 = phi ptr [ %57, %52 ], [ %50, %49 ]
  %54 = load volatile ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tracepoint_func, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void %54(ptr noundef %56, i32 noundef %33, i32 noundef %35, i32 noundef %24) #18
  %57 = getelementptr %struct.tracepoint_func, ptr %53, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %52

60:                                               ; preds = %52, %49
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %61

61:                                               ; preds = %60, %38, %23
  %62 = icmp slt i32 %24, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = load ptr, ptr %0, align 4
  %65 = getelementptr inbounds %struct.gpio_device, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.gpio_device, ptr %64, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %68 to i32
  %70 = sub i32 %8, %69
  %71 = sdiv exact i32 %70, 24
  %72 = add i32 %71, %66
  %73 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr @.str.16, ptr %74
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %72, ptr noundef %76, ptr noundef nonnull @__func__.gpio_set_open_source_value_commit, i32 noundef %24) #19
  br label %78

78:                                               ; preds = %63, %61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_set_raw_value(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %83, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_raw_value) #19
  br label %83

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_raw_value) #19
  br label %83

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_raw_value) #19
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %83, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %13, %11 ]
  %26 = phi ptr [ %21, %20 ], [ %7, %11 ]
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 23
  %28 = load i8, ptr %27, align 4, !range !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 2999, i32 noundef 9, ptr noundef null) #18
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.gpio_device, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %33, %30 ], [ %25, %24 ]
  %36 = phi ptr [ %31, %30 ], [ %26, %24 ]
  %37 = icmp ne i32 %1, 0
  %38 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %0 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = sdiv exact i32 %44, 24
  %46 = add i32 %45, %39
  %47 = zext i1 %37 to i32
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %34
  %51 = tail call ptr @llvm.thread.pointer() #18
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %68, i32 noundef %46, i32 noundef 0, i32 noundef %47) #18
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %73 = load ptr, ptr %0, align 4
  %74 = getelementptr inbounds %struct.gpio_device, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8
  %76 = ptrtoint ptr %75 to i32
  %77 = sub i32 %42, %76
  %78 = sdiv exact i32 %77, 24
  br label %79

79:                                               ; preds = %72, %50, %34
  %80 = phi i32 [ %45, %34 ], [ %45, %50 ], [ %78, %72 ]
  %81 = getelementptr inbounds %struct.gpio_chip, ptr %35, i32 0, i32 12
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %35, i32 noundef %80, i32 noundef %47) #18
  br label %83

83:                                               ; preds = %79, %17, %15, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_set_value(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_value) #19
  br label %31

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_value) #19
  br label %31

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_value) #19
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %13, %11 ]
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 23
  %27 = load i8, ptr %26, align 4, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29, !prof !10

29:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3040, i32 noundef 9, ptr noundef null) #18
  br label %30

30:                                               ; preds = %29, %24
  tail call fastcc void @gpiod_set_value_nocheck(ptr noundef nonnull %0, i32 noundef %1)
  br label %31

31:                                               ; preds = %30, %17, %15, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpiod_set_value_nocheck(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = select i1 %6, i32 %1, i32 %8
  %10 = load volatile i32, ptr %3, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = icmp ne i32 %9, 0
  tail call fastcc void @gpio_set_open_drain_value_commit(ptr noundef %0, i1 noundef zeroext %14)
  br label %70

15:                                               ; preds = %2
  %16 = load volatile i32, ptr %3, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne i32 %9, 0
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  tail call fastcc void @gpio_set_open_source_value_commit(ptr noundef %0, i1 noundef zeroext %19)
  br label %70

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.gpio_device, ptr %22, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = ptrtoint ptr %0 to i32
  %30 = ptrtoint ptr %28 to i32
  %31 = sub i32 %29, %30
  %32 = sdiv exact i32 %31, 24
  %33 = add i32 %32, %26
  %34 = zext i1 %19 to i32
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %21
  %38 = tail call ptr @llvm.thread.pointer() #18
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %49 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %56, %51 ], [ %49, %48 ]
  %53 = load volatile ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tracepoint_func, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %53(ptr noundef %55, i32 noundef %33, i32 noundef 0, i32 noundef %34) #18
  %56 = getelementptr %struct.tracepoint_func, ptr %52, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %48
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.gpio_device, ptr %60, i32 0, i32 6
  %62 = load ptr, ptr %61, align 8
  %63 = ptrtoint ptr %62 to i32
  %64 = sub i32 %29, %63
  %65 = sdiv exact i32 %64, 24
  br label %66

66:                                               ; preds = %59, %37, %21
  %67 = phi i32 [ %32, %21 ], [ %32, %37 ], [ %65, %59 ]
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %24, i32 0, i32 12
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %24, i32 noundef %67, i32 noundef %34) #18
  br label %70

70:                                               ; preds = %66, %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_raw_array_value(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_set_array_value_complex(i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_array_value(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_cansleep(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_cansleep) #19
  br label %29

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_cansleep) #19
  br label %29

16:                                               ; preds = %3
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_cansleep) #19
  %18 = ptrtoint ptr %0 to i32
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi ptr [ %23, %20 ], [ %12, %10 ]
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 23
  %27 = load i8, ptr %26, align 4, !range !13
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %24, %16, %14, %8, %1
  %30 = phi i32 [ %18, %16 ], [ %28, %24 ], [ 0, %1 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_consumer_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_consumer_name) #19
  br label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_consumer_name) #19
  br label %30

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_consumer_name) #19
  %19 = ptrtoint ptr %0 to i32
  %20 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %20, label %30, label %21

21:                                               ; preds = %17, %11
  %22 = icmp eq ptr %1, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call ptr @kstrdup_const(ptr noundef nonnull %1, i32 noundef 3264) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %24, %23 ], [ null, %21 ]
  %28 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree_const(ptr noundef %29) #18
  store ptr %27, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %23, %17, %15, %9, %2
  %31 = phi i32 [ %19, %17 ], [ 0, %26 ], [ -12, %23 ], [ 0, %2 ], [ -22, %9 ], [ 0, %15 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_to_irq(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 15
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = ptrtoint ptr %0 to i32
  %18 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  %21 = sub i32 %17, %20
  %22 = sdiv exact i32 %21, 24
  %23 = tail call i32 %14(ptr noundef nonnull %10, i32 noundef %22) #18
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 -6, i32 %23
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i32 -6, i32 -517
  br label %31

31:                                               ; preds = %26, %16, %8, %5, %1
  %32 = phi i32 [ %25, %16 ], [ -22, %8 ], [ -22, %5 ], [ -22, %1 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_disable_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3258, i32 noundef 9, ptr noundef null) #18
  br label %21

20:                                               ; preds = %14
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %15) #18
  br label %21

21:                                               ; preds = %20, %19, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_enable_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3268, i32 noundef 9, ptr noundef null) #18
  br label %30

20:                                               ; preds = %14
  %21 = load volatile i32, ptr %15, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %15, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3274, i32 noundef 9, ptr noundef null) #18
  br label %29

29:                                               ; preds = %28, %24, %20
  tail call void @_set_bit(i32 noundef 10, ptr noundef %15) #18
  br label %30

30:                                               ; preds = %29, %19, %9, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_line_is_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i1 [ %15, %7 ], [ false, %2 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiochip_reqres_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #18
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %0, i32 noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef %14, i32 noundef %1) #19
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  tail call void @module_put(ptr noundef %17) #18
  br label %18

18:                                               ; preds = %11, %8, %2
  %19 = phi i32 [ %9, %11 ], [ -19, %2 ], [ 0, %8 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiochip_relres_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gpio_device, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %15) #18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %15) #18
  %16 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.21) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr null, ptr %16, align 4
  br label %23

23:                                               ; preds = %22, %19, %14, %9, %2
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.gpio_device, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  tail call void @module_put(ptr noundef %26) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_line_is_open_drain(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i1 [ %15, %7 ], [ false, %2 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_line_is_open_source(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i1 [ %15, %7 ], [ false, %2 ]
  ret i1 %17
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gpiochip_line_is_persistent(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = zext i16 %4 to i32
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.gpio_desc, ptr %11, i32 %1, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4096
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i1 [ %15, %7 ], [ false, %2 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %81, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_get_raw_value_cansleep) #19
  br label %81

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = ptrtoint ptr %0 to i32
  br label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_get_raw_value_cansleep) #19
  br label %81

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_get_raw_value_cansleep) #19
  %20 = ptrtoint ptr %0 to i32
  %21 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %21, label %81, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.gpio_device, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %15, %14 ], [ %20, %22 ]
  %28 = phi ptr [ %12, %14 ], [ %25, %22 ]
  %29 = phi ptr [ %6, %14 ], [ %23, %22 ]
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %28, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gpio_device, ptr %29, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = sub i32 %27, %36
  %38 = sdiv exact i32 %37, 24
  %39 = tail call i32 %31(ptr noundef %28, i32 noundef %38) #18
  %40 = icmp slt i32 %39, 0
  %41 = icmp ne i32 %39, 0
  %42 = zext i1 %41 to i32
  br i1 %40, label %43, label %45

43:                                               ; preds = %33, %26
  %44 = phi i32 [ %39, %33 ], [ -5, %26 ]
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ %44, %43 ], [ %42, %33 ]
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.gpio_device, ptr %47, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.gpio_device, ptr %47, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %27, %52
  %54 = sdiv exact i32 %53, 24
  %55 = add i32 %54, %49
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %45
  %59 = tail call ptr @llvm.thread.pointer() #18
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %70 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %70, %69 ]
  %74 = load volatile ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tracepoint_func, ptr %73, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %74(ptr noundef %76, i32 noundef %55, i32 noundef 1, i32 noundef %46) #18
  %77 = getelementptr %struct.tracepoint_func, ptr %73, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %72

80:                                               ; preds = %72, %69
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %81

81:                                               ; preds = %80, %58, %45, %18, %16, %8, %1
  %82 = phi i32 [ %20, %18 ], [ %46, %45 ], [ %46, %58 ], [ %46, %80 ], [ 0, %1 ], [ -22, %8 ], [ 0, %16 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_value_cansleep(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %91, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_get_value_cansleep) #19
  br label %91

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = ptrtoint ptr %0 to i32
  br label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_get_value_cansleep) #19
  br label %91

18:                                               ; preds = %3
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_get_value_cansleep) #19
  %20 = ptrtoint ptr %0 to i32
  %21 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %21, label %91, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.gpio_device, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %15, %14 ], [ %20, %22 ]
  %28 = phi ptr [ %12, %14 ], [ %25, %22 ]
  %29 = phi ptr [ %6, %14 ], [ %23, %22 ]
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %28, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gpio_device, ptr %29, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = sub i32 %27, %36
  %38 = sdiv exact i32 %37, 24
  %39 = tail call i32 %31(ptr noundef %28, i32 noundef %38) #18
  %40 = icmp slt i32 %39, 0
  %41 = icmp ne i32 %39, 0
  %42 = zext i1 %41 to i32
  br i1 %40, label %43, label %45

43:                                               ; preds = %33, %26
  %44 = phi i32 [ %39, %33 ], [ -5, %26 ]
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ %44, %43 ], [ %42, %33 ]
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.gpio_device, ptr %47, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.gpio_device, ptr %47, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = sub i32 %27, %52
  %54 = sdiv exact i32 %53, 24
  %55 = add i32 %54, %49
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %45
  %59 = tail call ptr @llvm.thread.pointer() #18
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %70 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %70, %69 ]
  %74 = load volatile ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tracepoint_func, ptr %73, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %74(ptr noundef %76, i32 noundef %55, i32 noundef 1, i32 noundef %46) #18
  %77 = getelementptr %struct.tracepoint_func, ptr %73, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %72

80:                                               ; preds = %72, %69
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  br label %81

81:                                               ; preds = %80, %58, %45
  %82 = icmp slt i32 %46, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 64
  %87 = icmp eq i32 %86, 0
  %88 = icmp eq i32 %46, 0
  %89 = zext i1 %88 to i32
  %90 = select i1 %87, i32 %46, i32 %89
  br label %91

91:                                               ; preds = %83, %81, %18, %16, %8, %1
  %92 = phi i32 [ %90, %83 ], [ %20, %18 ], [ %46, %81 ], [ 0, %1 ], [ -22, %8 ], [ 0, %16 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_raw_array_value_cansleep(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_get_array_value_complex(i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_get_array_value_cansleep(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_get_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_set_raw_value_cansleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_raw_value_cansleep) #19
  br label %73

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_raw_value_cansleep) #19
  br label %73

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_raw_value_cansleep) #19
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %73, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.gpio_device, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi ptr [ %23, %20 ], [ %13, %11 ]
  %26 = phi ptr [ %21, %20 ], [ %7, %11 ]
  %27 = icmp ne i32 %1, 0
  %28 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gpio_device, ptr %26, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %0 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = sdiv exact i32 %34, 24
  %36 = add i32 %35, %29
  %37 = zext i1 %27 to i32
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %24
  %41 = tail call ptr @llvm.thread.pointer() #18
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !16
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gpio_value, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, i32 noundef %36, i32 noundef 0, i32 noundef %37) #18
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %63 = load ptr, ptr %0, align 4
  %64 = getelementptr inbounds %struct.gpio_device, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = ptrtoint ptr %65 to i32
  %67 = sub i32 %32, %66
  %68 = sdiv exact i32 %67, 24
  br label %69

69:                                               ; preds = %62, %40, %24
  %70 = phi i32 [ %35, %24 ], [ %35, %40 ], [ %68, %62 ]
  %71 = getelementptr inbounds %struct.gpio_chip, ptr %25, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %25, i32 noundef %70, i32 noundef %37) #18
  br label %73

73:                                               ; preds = %69, %17, %15, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_set_value_cansleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_set_value_cansleep) #19
  br label %21

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_set_value_cansleep) #19
  br label %21

17:                                               ; preds = %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.gpiod_set_value_cansleep) #19
  %19 = icmp slt ptr %0, inttoptr (i32 1 to ptr)
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %11
  tail call fastcc void @gpiod_set_value_nocheck(ptr noundef nonnull %0, i32 noundef %1)
  br label %21

21:                                               ; preds = %20, %17, %15, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_raw_array_value_cansleep(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_set_array_value_complex(i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_add_lookup_tables(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpio_lookup_lock) #18
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %10, %4 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_lookup_list, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_lookup_list, i32 0, i32 1), align 4
  store ptr @gpio_lookup_list, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %7, ptr %8, align 4
  %10 = add nuw i32 %5, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @gpiod_set_array_value_complex(i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %7, %6 ], [ -22, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_add_lookup_table(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpio_lookup_lock) #18
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_lookup_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_lookup_list, i32 0, i32 1), align 4
  store ptr @gpio_lookup_list, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  store volatile ptr %0, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_remove_lookup_table(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @gpio_lookup_lock) #18
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_add_hogs(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  %2 = getelementptr inbounds %struct.gpiod_hog, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %28, %1
  %6 = phi ptr [ %30, %28 ], [ %2, %1 ]
  %7 = phi ptr [ %29, %28 ], [ %0, %1 ]
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_machine_hogs, i32 0, i32 1), align 4
  store ptr %7, ptr getelementptr inbounds (%struct.list_head, ptr @gpio_machine_hogs, i32 0, i32 1), align 4
  store ptr @gpio_machine_hogs, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %7, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %12 = load ptr, ptr @gpio_devices, align 4
  %13 = icmp eq ptr %12, @gpio_devices
  br i1 %13, label %26, label %14

14:                                               ; preds = %23, %5
  %15 = phi ptr [ %24, %23 ], [ %12, %5 ]
  %16 = getelementptr i8, ptr %15, i32 -24
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 @strcmp(ptr noundef %20, ptr noundef %10) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, @gpio_devices
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %11) #18
  br label %28

27:                                               ; preds = %19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %11) #18
  tail call fastcc void @gpiochip_machine_hog(ptr noundef nonnull %17, ptr noundef %7)
  br label %28

28:                                               ; preds = %27, %26
  %29 = getelementptr %struct.gpiod_hog, ptr %7, i32 1
  %30 = getelementptr %struct.gpiod_hog, ptr %7, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5

33:                                               ; preds = %28, %1
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gpiochip_machine_hog(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gpiod_hog, ptr %1, i32 0, i32 2
  %4 = load i16, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 8
  %8 = load i16, ptr %7, align 8
  %9 = icmp ugt i16 %8, %4
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = zext i16 %4 to i32
  %12 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.gpio_desc, ptr %13, i32 %11
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %21

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %14, %10 ], [ inttoptr (i32 -22 to ptr), %2 ]
  %18 = getelementptr inbounds %struct.gpio_device, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %0, align 4
  %20 = ptrtoint ptr %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.70, ptr noundef %19, ptr noundef nonnull @__func__.gpiochip_machine_hog, i32 noundef %20) #19
  br label %54

21:                                               ; preds = %10
  %22 = getelementptr %struct.gpio_desc, ptr %13, i32 %11, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gpiod_hog, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gpiod_hog, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gpiod_hog, ptr %1, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = tail call i32 @gpiod_hog(ptr noundef %14, ptr noundef %28, i32 noundef %30, i32 noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %26
  %36 = load ptr, ptr %14, align 4
  %37 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.gpio_device, ptr %36, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %14 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = sdiv exact i32 %43, 24
  %45 = add i32 %44, %38
  %46 = getelementptr %struct.gpio_desc, ptr %13, i32 %11, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.16, ptr %47
  %50 = load ptr, ptr %0, align 4
  %51 = load i16, ptr %3, align 4
  %52 = zext i16 %51 to i32
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %45, ptr noundef %49, ptr noundef nonnull @__func__.gpiochip_machine_hog, ptr noundef %50, i32 noundef %52, i32 noundef %33) #19
  br label %54

54:                                               ; preds = %35, %26, %21, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_remove_hogs(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  %2 = getelementptr inbounds %struct.gpiod_hog, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %11, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr %struct.gpiod_hog, ptr %6, i32 1
  %12 = getelementptr %struct.gpiod_hog, ptr %6, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_machine_hogs_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !9
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %0, null
  %10 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  %12 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  br i1 %8, label %24, label %22

13:                                               ; preds = %29
  br i1 %8, label %16, label %14

14:                                               ; preds = %13
  %15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef nonnull %1, ptr noundef nonnull @.str.36)
  br label %17

16:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) @.str.36, i32 5, i1 false)
  br label %17

17:                                               ; preds = %16, %14
  %18 = load ptr, ptr %12, align 4
  %19 = icmp eq ptr %18, @of_fwnode_ops
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = call ptr @gpiod_get_from_of_node(ptr noundef %7, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %32

22:                                               ; preds = %5
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef nonnull %1, ptr noundef nonnull @.str.72)
  br label %25

24:                                               ; preds = %5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) @.str.72, i32 6, i1 false)
  br label %25

25:                                               ; preds = %24, %22
  br i1 %11, label %32, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, @of_fwnode_ops
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call ptr @gpiod_get_from_of_node(ptr noundef %7, ptr noundef nonnull %6, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  %31 = icmp eq ptr %30, inttoptr (i32 -2 to ptr)
  br i1 %31, label %13, label %32

32:                                               ; preds = %29, %26, %25, %20, %17
  %33 = phi ptr [ %30, %29 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -22 to ptr), %26 ], [ inttoptr (i32 -22 to ptr), %25 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  ret ptr %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_named_gpiod(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -12
  %15 = tail call ptr @gpiod_get_from_of_node(ptr noundef %14, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #18
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = phi ptr [ %15, %13 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %5 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_count(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @dev_fwnode(ptr noundef nonnull %0) #18
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @of_gpio_get_count(ptr noundef nonnull %0, ptr noundef %1) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %13, %9, %4
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  br label %22

22:                                               ; preds = %20, %16, %2
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ], [ null, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @gpio_lookup_lock) #18
  %24 = load ptr, ptr @gpio_lookup_list, align 4
  %25 = icmp eq ptr %24, @gpio_lookup_list
  br i1 %25, label %42, label %26

26:                                               ; preds = %22
  %27 = icmp ne ptr %23, null
  br label %28

28:                                               ; preds = %39, %26
  %29 = phi ptr [ %24, %26 ], [ %40, %39 ]
  %30 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne ptr %31, null
  %33 = select i1 %32, i1 %27, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = tail call i32 @strcmp(ptr noundef nonnull %31, ptr noundef nonnull %23) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %39

37:                                               ; preds = %28
  %38 = icmp eq ptr %23, %31
  br i1 %38, label %43, label %39

39:                                               ; preds = %37, %34
  %40 = load ptr, ptr %29, align 4
  %41 = icmp eq ptr %40, @gpio_lookup_list
  br i1 %41, label %42, label %28

42:                                               ; preds = %39, %22
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  br label %72

43:                                               ; preds = %37, %34
  tail call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  %44 = icmp eq ptr %29, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %29, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %45
  %50 = icmp eq ptr %1, null
  br label %51

51:                                               ; preds = %64, %49
  %52 = phi i32 [ 0, %49 ], [ %65, %64 ]
  %53 = phi ptr [ %46, %49 ], [ %66, %64 ]
  %54 = getelementptr inbounds %struct.gpiod_lookup, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %50, label %61, label %57

57:                                               ; preds = %51
  br i1 %56, label %64, label %58

58:                                               ; preds = %57
  %59 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %55) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %64

61:                                               ; preds = %51
  br i1 %56, label %62, label %64

62:                                               ; preds = %61, %58
  %63 = add i32 %52, 1
  br label %64

64:                                               ; preds = %62, %61, %58, %57
  %65 = phi i32 [ %52, %61 ], [ %63, %62 ], [ %52, %58 ], [ %52, %57 ]
  %66 = getelementptr %struct.gpiod_lookup, ptr %53, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %51

69:                                               ; preds = %64
  %70 = icmp eq i32 %65, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %69, %45
  br label %72

72:                                               ; preds = %71, %69, %43, %42, %13
  %73 = phi i32 [ %14, %13 ], [ -2, %43 ], [ -2, %42 ], [ -2, %71 ], [ %65, %69 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_gpio_get_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %9, %7 ], [ %12, %11 ]
  %15 = tail call ptr @dev_fwnode(ptr noundef nonnull %0) #18
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %15, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @of_fwnode_ops
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call ptr @of_find_gpio(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5) #18
  %25 = ptrtoint ptr %24 to i32
  switch i32 %25, label %158 [
    i32 0, label %26
    i32 -2, label %26
  ]

26:                                               ; preds = %23, %23, %19, %13
  %27 = load ptr, ptr %8, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 4
  br label %31

31:                                               ; preds = %29, %26, %4
  %32 = phi ptr [ %14, %29 ], [ %14, %26 ], [ @.str.16, %4 ]
  %33 = phi ptr [ %30, %29 ], [ %27, %26 ], [ null, %4 ]
  call void @mutex_lock(ptr noundef nonnull @gpio_lookup_lock) #18
  %34 = load ptr, ptr @gpio_lookup_list, align 4
  %35 = icmp eq ptr %34, @gpio_lookup_list
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = icmp ne ptr %33, null
  br label %38

38:                                               ; preds = %49, %36
  %39 = phi ptr [ %34, %36 ], [ %50, %49 ]
  %40 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp ne ptr %41, null
  %43 = select i1 %42, i1 %37, i1 false
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 @strcmp(ptr noundef nonnull %41, ptr noundef nonnull %33) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %49

47:                                               ; preds = %38
  %48 = icmp eq ptr %33, %41
  br i1 %48, label %53, label %49

49:                                               ; preds = %47, %44
  %50 = load ptr, ptr %39, align 4
  %51 = icmp eq ptr %50, @gpio_lookup_list
  br i1 %51, label %52, label %38

52:                                               ; preds = %49, %31
  call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  br label %195

53:                                               ; preds = %47, %44
  call void @mutex_unlock(ptr noundef nonnull @gpio_lookup_lock) #18
  %54 = icmp eq ptr %39, null
  br i1 %54, label %195, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.gpiod_lookup_table, ptr %39, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %195, label %59

59:                                               ; preds = %55
  %60 = icmp eq ptr %1, null
  br label %61

61:                                               ; preds = %154, %59
  %62 = phi ptr [ %57, %59 ], [ %156, %154 ]
  %63 = phi ptr [ %56, %59 ], [ %155, %154 ]
  %64 = getelementptr inbounds %struct.gpiod_lookup, ptr %63, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %2
  br i1 %66, label %67, label %154

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.gpiod_lookup, ptr %63, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  br i1 %60, label %154, label %72

72:                                               ; preds = %71
  %73 = call i32 @strcmp(ptr noundef nonnull %69, ptr noundef nonnull %1) #18
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %154

75:                                               ; preds = %72, %67
  %76 = getelementptr inbounds %struct.gpiod_lookup, ptr %63, i32 0, i32 1
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %77, -1
  %79 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %80 = load ptr, ptr @gpio_devices, align 4
  %81 = icmp eq ptr %80, @gpio_devices
  br i1 %78, label %82, label %115

82:                                               ; preds = %75
  br i1 %81, label %106, label %86

83:                                               ; preds = %103, %86
  %84 = load ptr, ptr %87, align 4
  %85 = icmp eq ptr %84, @gpio_devices
  br i1 %85, label %106, label %86

86:                                               ; preds = %83, %82
  %87 = phi ptr [ %84, %83 ], [ %80, %82 ]
  %88 = getelementptr i8, ptr %87, i32 -12
  %89 = load i16, ptr %88, align 8
  %90 = zext i16 %89 to i32
  %91 = icmp eq i16 %89, 0
  br i1 %91, label %83, label %92

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %87, i32 -20
  %94 = load ptr, ptr %93, align 8
  br label %95

95:                                               ; preds = %103, %92
  %96 = phi i32 [ 0, %92 ], [ %104, %103 ]
  %97 = getelementptr %struct.gpio_desc, ptr %94, i32 %96, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = call i32 @strcmp(ptr noundef nonnull %98, ptr noundef nonnull %62) #18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100, %95
  %104 = add nuw nsw i32 %96, 1
  %105 = icmp eq i32 %104, %90
  br i1 %105, label %83, label %95

106:                                              ; preds = %83, %82
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %79) #18
  br label %113

107:                                              ; preds = %100
  %108 = getelementptr %struct.gpio_desc, ptr %94, i32 %96
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %79) #18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.gpiod_lookup, ptr %63, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  store i32 %112, ptr %5, align 4
  br label %158

113:                                              ; preds = %107, %106
  %114 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %114) #19
  br label %195

115:                                              ; preds = %75
  br i1 %81, label %128, label %116

116:                                              ; preds = %125, %115
  %117 = phi ptr [ %126, %125 ], [ %80, %115 ]
  %118 = getelementptr i8, ptr %117, i32 -24
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %119, align 4
  %123 = call i32 @strcmp(ptr noundef %122, ptr noundef nonnull %62) #18
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121, %116
  %126 = load ptr, ptr %117, align 4
  %127 = icmp eq ptr %126, @gpio_devices
  br i1 %127, label %128, label %116

128:                                              ; preds = %125, %115
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %79) #18
  %129 = load ptr, ptr %63, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %129) #19
  br label %195

130:                                              ; preds = %121
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %79) #18
  %131 = getelementptr inbounds %struct.gpio_chip, ptr %119, i32 0, i32 20
  %132 = load i16, ptr %131, align 4
  %133 = load i16, ptr %76, align 4
  %134 = zext i16 %133 to i32
  %135 = icmp ugt i16 %132, %133
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = zext i16 %132 to i32
  %138 = add nsw i32 %137, -1
  %139 = load ptr, ptr %119, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %2, i32 noundef %134, i32 noundef %138, ptr noundef %139) #19
  br label %195

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.gpio_chip, ptr %119, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.gpio_device, ptr %142, i32 0, i32 8
  %144 = load i16, ptr %143, align 8
  %145 = icmp ugt i16 %144, %133
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.gpio_device, ptr %142, i32 0, i32 6
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr %struct.gpio_desc, ptr %148, i32 %134
  br label %150

150:                                              ; preds = %146, %140
  %151 = phi ptr [ %149, %146 ], [ inttoptr (i32 -22 to ptr), %140 ]
  %152 = getelementptr inbounds %struct.gpiod_lookup, ptr %63, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %5, align 4
  br label %158

154:                                              ; preds = %72, %71, %61
  %155 = getelementptr %struct.gpiod_lookup, ptr %63, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %195, label %61

158:                                              ; preds = %150, %110, %23
  %159 = phi ptr [ %32, %110 ], [ %32, %150 ], [ %14, %23 ]
  %160 = phi ptr [ %108, %110 ], [ %151, %150 ], [ %24, %23 ]
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %195, label %162

162:                                              ; preds = %158
  %163 = icmp eq ptr %1, null
  %164 = select i1 %163, ptr %159, ptr %1
  %165 = call i32 @gpiod_request(ptr noundef %160, ptr noundef %164)
  switch i32 %165, label %170 [
    i32 0, label %172
    i32 -16, label %166
  ]

166:                                              ; preds = %162
  %167 = and i32 %3, 16
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %164) #19
  br label %195

170:                                              ; preds = %166, %162
  %171 = inttoptr i32 %165 to ptr
  br label %195

172:                                              ; preds = %162
  %173 = load i32, ptr %5, align 4
  %174 = call i32 @gpiod_configure_flags(ptr noundef %160, ptr undef, i32 noundef %173, i32 noundef %3)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %172
  %177 = icmp eq ptr %160, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %176
  %179 = load ptr, ptr %160, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %160) #18
  br i1 %182, label %183, label %189

183:                                              ; preds = %181
  %184 = load ptr, ptr %160, align 4
  %185 = getelementptr inbounds %struct.gpio_device, ptr %184, i32 0, i32 4
  %186 = load ptr, ptr %185, align 8
  call void @module_put(ptr noundef %186) #18
  %187 = load ptr, ptr %160, align 4
  %188 = getelementptr inbounds %struct.gpio_device, ptr %187, i32 0, i32 1
  call void @put_device(ptr noundef %188) #18
  br label %189

189:                                              ; preds = %183, %181, %178, %176
  %190 = inttoptr i32 %174 to ptr
  br label %195

191:                                              ; preds = %172
  %192 = load ptr, ptr %160, align 4
  %193 = getelementptr inbounds %struct.gpio_device, ptr %192, i32 0, i32 12
  %194 = call i32 @blocking_notifier_call_chain(ptr noundef %193, i32 noundef 1, ptr noundef %160) #18
  br label %195

195:                                              ; preds = %191, %189, %170, %169, %158, %154, %136, %128, %113, %55, %53, %52
  %196 = phi ptr [ %160, %169 ], [ %171, %170 ], [ %190, %189 ], [ %160, %191 ], [ %160, %158 ], [ inttoptr (i32 -2 to ptr), %55 ], [ inttoptr (i32 -517 to ptr), %113 ], [ inttoptr (i32 -22 to ptr), %136 ], [ inttoptr (i32 -517 to ptr), %128 ], [ inttoptr (i32 -2 to ptr), %52 ], [ inttoptr (i32 -2 to ptr), %53 ], [ inttoptr (i32 -2 to ptr), %154 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret ptr %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_optional(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2) #18
  %5 = icmp eq ptr %4, inttoptr (i32 -2 to ptr)
  %6 = select i1 %5, ptr null, ptr %4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_index_optional(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, inttoptr (i32 -2 to ptr)
  %7 = select i1 %6, ptr null, ptr %5
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_gpio(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %0) #18
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  tail call void @module_put(ptr noundef %11) #18
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 1
  tail call void @put_device(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %8, %6, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_from_of_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gpiod_hog(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr null, align 2147483648
  br label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %8, %6
  %15 = phi ptr [ %9, %11 ], [ null, %8 ], [ %7, %6 ]
  %16 = phi ptr [ %13, %11 ], [ null, %8 ], [ null, %6 ]
  %17 = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  %19 = ptrtoint ptr %0 to i32
  %20 = ptrtoint ptr %18 to i32
  %21 = sub i32 %19, %20
  %22 = sdiv exact i32 %21, 24
  %23 = tail call ptr @gpiochip_request_own_desc(ptr noundef %16, i32 noundef %22, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = ptrtoint ptr %23 to i32
  %27 = load ptr, ptr %16, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %1, ptr noundef %27, i32 noundef %22, i32 noundef %26) #19
  br label %52

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 11, ptr noundef %30) #18
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.gpio_device, ptr %31, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.gpio_device, ptr %31, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = sub i32 %19, %36
  %38 = sdiv exact i32 %37, 24
  %39 = add i32 %38, %33
  %40 = getelementptr inbounds %struct.gpio_desc, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @.str.16, ptr %41
  %44 = and i32 %3, 2
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.31, ptr @.str.30
  %47 = and i32 %3, 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.33, ptr @.str.32
  %50 = select i1 %45, ptr @.str.34, ptr %49
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %39, ptr noundef %43, ptr noundef nonnull %46, ptr noundef nonnull %50) #19
  br label %52

52:                                               ; preds = %29, %25
  %53 = phi i32 [ %26, %25 ], [ 0, %29 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_array(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @gpiod_count(ptr noundef %0, ptr noundef %1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = inttoptr i32 %4 to ptr
  br label %254

8:                                                ; preds = %3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #18
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 8) #18
  %13 = select i1 %10, i32 -1, i32 %12
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %254, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.gpio_descs, ptr %14, i32 0, i32 1
  store i32 0, ptr %17, align 4
  %18 = icmp eq i32 %4, 0
  br i1 %18, label %254, label %19

19:                                               ; preds = %16
  %20 = add i32 %13, 20
  br label %21

21:                                               ; preds = %248, %19
  %22 = phi i32 [ 0, %19 ], [ %252, %248 ]
  %23 = phi ptr [ null, %19 ], [ %249, %248 ]
  %24 = phi ptr [ %14, %19 ], [ %129, %248 ]
  %25 = getelementptr inbounds %struct.gpio_descs, ptr %24, i32 0, i32 1
  %26 = tail call ptr @gpiod_get_index(ptr noundef %0, ptr noundef %1, i32 noundef %22, i32 noundef %2)
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %28 = load i32, ptr %25, align 4
  br i1 %27, label %29, label %52

29:                                               ; preds = %21
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %47, %29
  %32 = phi i32 [ %48, %47 ], [ 0, %29 ]
  %33 = getelementptr %struct.gpio_descs, ptr %24, i32 0, i32 2, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %34) #18
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr inbounds %struct.gpio_device, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 8
  tail call void @module_put(ptr noundef %44) #18
  %45 = load ptr, ptr %34, align 4
  %46 = getelementptr inbounds %struct.gpio_device, ptr %45, i32 0, i32 1
  tail call void @put_device(ptr noundef %46) #18
  br label %47

47:                                               ; preds = %41, %39, %36, %31
  %48 = add nuw i32 %32, 1
  %49 = load i32, ptr %25, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %31, label %51

51:                                               ; preds = %47, %29
  tail call void @kfree(ptr noundef %24) #18
  br label %254

52:                                               ; preds = %21
  %53 = getelementptr %struct.gpio_descs, ptr %24, i32 0, i32 2, i32 %28
  store ptr %26, ptr %53, align 4
  %54 = icmp eq ptr %26, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %26, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.gpio_device, ptr %56, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %55, %52
  %62 = phi ptr [ %60, %58 ], [ null, %55 ], [ null, %52 ]
  %63 = load i32, ptr %25, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  %66 = load ptr, ptr %26, align 4
  %67 = getelementptr inbounds %struct.gpio_device, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %26, %68
  br i1 %69, label %70, label %128

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.gpio_chip, ptr %62, i32 0, i32 20
  %72 = load i16, ptr %71, align 4
  %73 = zext i16 %72 to i32
  %74 = tail call i32 @llvm.smax.i32(i32 %4, i32 %73)
  %75 = add nuw i32 %74, 31
  %76 = lshr i32 %75, 5
  %77 = mul nuw nsw i32 %76, 12
  %78 = add i32 %20, %77
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #21
  %80 = icmp eq ptr %79, null
  %81 = load i32, ptr %25, align 4
  br i1 %80, label %82, label %105

82:                                               ; preds = %70
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  tail call void @kfree(ptr noundef %24) #18
  br label %254

85:                                               ; preds = %101, %82
  %86 = phi i32 [ %102, %101 ], [ 0, %82 ]
  %87 = getelementptr %struct.gpio_descs, ptr %24, i32 0, i32 2, i32 %86
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %88, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %88) #18
  br i1 %94, label %95, label %101

95:                                               ; preds = %93
  %96 = load ptr, ptr %88, align 4
  %97 = getelementptr inbounds %struct.gpio_device, ptr %96, i32 0, i32 4
  %98 = load ptr, ptr %97, align 8
  tail call void @module_put(ptr noundef %98) #18
  %99 = load ptr, ptr %88, align 4
  %100 = getelementptr inbounds %struct.gpio_device, ptr %99, i32 0, i32 1
  tail call void @put_device(ptr noundef %100) #18
  br label %101

101:                                              ; preds = %95, %93, %90, %85
  %102 = add nuw i32 %86, 1
  %103 = load i32, ptr %25, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %85, label %127

105:                                              ; preds = %70
  %106 = add i32 %81, 1
  %107 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %106, i32 4) #18
  %108 = extractvalue { i32, i1 } %107, 1
  %109 = extractvalue { i32, i1 } %107, 0
  %110 = tail call i32 @llvm.uadd.sat.i32(i32 %109, i32 8) #18
  %111 = select i1 %108, i32 -1, i32 %110
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %79, ptr align 4 %24, i32 %111, i1 false)
  tail call void @kfree(ptr noundef %24) #18
  %112 = getelementptr inbounds %struct.gpio_descs, ptr %79, i32 0, i32 2
  %113 = getelementptr ptr, ptr %112, i32 %4
  %114 = getelementptr inbounds %struct.gpio_array, ptr %113, i32 0, i32 5
  %115 = getelementptr i32, ptr %114, i32 %76
  %116 = getelementptr inbounds %struct.gpio_array, ptr %113, i32 0, i32 3
  store ptr %115, ptr %116, align 4
  %117 = getelementptr i32, ptr %115, i32 %76
  %118 = getelementptr inbounds %struct.gpio_array, ptr %113, i32 0, i32 4
  store ptr %117, ptr %118, align 4
  store ptr %112, ptr %113, align 4
  %119 = getelementptr inbounds %struct.gpio_array, ptr %113, i32 0, i32 1
  store i32 %4, ptr %119, align 4
  %120 = getelementptr inbounds %struct.gpio_array, ptr %113, i32 0, i32 2
  store ptr %62, ptr %120, align 4
  %121 = getelementptr inbounds %struct.gpio_descs, ptr %79, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %4, %122
  tail call void @__bitmap_set(ptr noundef %115, i32 noundef %122, i32 noundef %123) #18
  %124 = load ptr, ptr %118, align 4
  %125 = load i32, ptr %121, align 4
  %126 = sub i32 %4, %125
  tail call void @__bitmap_set(ptr noundef %124, i32 noundef %125, i32 noundef %126) #18
  store ptr %113, ptr %79, align 64
  br label %128

127:                                              ; preds = %101
  tail call void @kfree(ptr noundef %24) #18
  br label %254

128:                                              ; preds = %105, %65, %61
  %129 = phi ptr [ %24, %65 ], [ %24, %61 ], [ %79, %105 ]
  %130 = phi ptr [ %23, %65 ], [ %23, %61 ], [ %113, %105 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %248, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, %62
  br i1 %135, label %158, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.gpio_descs, ptr %129, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = and i32 %138, 31
  %142 = shl nuw i32 1, %141
  %143 = lshr i32 %138, 5
  %144 = getelementptr i32, ptr %140, i32 %143
  %145 = xor i32 %142, -1
  %146 = load i32, ptr %144, align 4
  %147 = and i32 %146, %145
  store i32 %147, ptr %144, align 4
  %148 = load i32, ptr %137, align 4
  %149 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = and i32 %148, 31
  %152 = shl nuw i32 1, %151
  %153 = lshr i32 %148, 5
  %154 = getelementptr i32, ptr %150, i32 %153
  %155 = xor i32 %152, -1
  %156 = load i32, ptr %154, align 4
  %157 = and i32 %156, %155
  store i32 %157, ptr %154, align 4
  br label %248

158:                                              ; preds = %132
  %159 = load ptr, ptr %26, align 4
  %160 = getelementptr inbounds %struct.gpio_device, ptr %159, i32 0, i32 6
  %161 = load ptr, ptr %160, align 8
  %162 = ptrtoint ptr %26 to i32
  %163 = ptrtoint ptr %161 to i32
  %164 = sub i32 %162, %163
  %165 = sdiv exact i32 %164, 24
  %166 = getelementptr inbounds %struct.gpio_descs, ptr %129, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %194, label %169

169:                                              ; preds = %158
  %170 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = tail call i32 @_find_first_zero_bit_le(ptr noundef %171, i32 noundef %167) #18
  %173 = icmp eq i32 %172, %167
  br i1 %173, label %248, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %170, align 4
  %176 = load i32, ptr %166, align 4
  %177 = and i32 %176, 31
  %178 = shl nuw i32 1, %177
  %179 = lshr i32 %176, 5
  %180 = getelementptr i32, ptr %175, i32 %179
  %181 = xor i32 %178, -1
  %182 = load i32, ptr %180, align 4
  %183 = and i32 %182, %181
  store i32 %183, ptr %180, align 4
  %184 = load i32, ptr %166, align 4
  %185 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = and i32 %184, 31
  %188 = shl nuw i32 1, %187
  %189 = lshr i32 %184, 5
  %190 = getelementptr i32, ptr %186, i32 %189
  %191 = xor i32 %188, -1
  %192 = load i32, ptr %190, align 4
  %193 = and i32 %192, %191
  store i32 %193, ptr %190, align 4
  br label %248

194:                                              ; preds = %158
  %195 = getelementptr inbounds %struct.gpio_chip, ptr %62, i32 0, i32 20
  %196 = load i16, ptr %195, align 4
  %197 = zext i16 %196 to i32
  %198 = icmp ult i32 %165, %197
  br i1 %198, label %199, label %222

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.gpio_chip, ptr %62, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.gpio_device, ptr %201, i32 0, i32 6
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr %struct.gpio_desc, ptr %203, i32 %165, i32 1
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %205, 128
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %199
  %209 = load volatile i32, ptr %204, align 4
  %210 = and i32 %209, 256
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %208, %199
  %213 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 4
  %214 = load ptr, ptr %213, align 4
  %215 = and i32 %165, 31
  %216 = shl nuw i32 1, %215
  %217 = lshr i32 %165, 5
  %218 = getelementptr i32, ptr %214, i32 %217
  %219 = xor i32 %216, -1
  %220 = load i32, ptr %218, align 4
  %221 = and i32 %220, %219
  store i32 %221, ptr %218, align 4
  br label %222

222:                                              ; preds = %212, %208, %194
  br i1 %54, label %248, label %223

223:                                              ; preds = %222
  %224 = load ptr, ptr %26, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.gpiod_is_active_low) #19
  br label %239

228:                                              ; preds = %223
  %229 = getelementptr inbounds %struct.gpio_device, ptr %224, i32 0, i32 5
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.gpio_device, ptr %224, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %233, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.gpiod_is_active_low) #19
  br label %248

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.gpio_desc, ptr %26, i32 0, i32 1
  %236 = load volatile i32, ptr %235, align 4
  %237 = and i32 %236, 64
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %234, %226
  %240 = load i32, ptr %166, align 4
  %241 = getelementptr inbounds %struct.gpio_array, ptr %130, i32 0, i32 5
  %242 = and i32 %240, 31
  %243 = shl nuw i32 1, %242
  %244 = lshr i32 %240, 5
  %245 = getelementptr i32, ptr %241, i32 %244
  %246 = load i32, ptr %245, align 4
  %247 = or i32 %243, %246
  store i32 %247, ptr %245, align 4
  br label %248

248:                                              ; preds = %239, %234, %232, %222, %174, %169, %136, %128
  %249 = phi ptr [ %130, %136 ], [ %130, %174 ], [ %130, %239 ], [ %130, %234 ], [ null, %169 ], [ null, %128 ], [ %130, %222 ], [ %130, %232 ]
  %250 = getelementptr inbounds %struct.gpio_descs, ptr %129, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = add i32 %251, 1
  store i32 %252, ptr %250, align 4
  %253 = icmp ult i32 %252, %4
  br i1 %253, label %21, label %254

254:                                              ; preds = %248, %127, %84, %51, %16, %8, %6
  %255 = phi ptr [ %7, %6 ], [ %26, %51 ], [ inttoptr (i32 -12 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %84 ], [ %14, %16 ], [ inttoptr (i32 -12 to ptr), %127 ], [ %129, %248 ]
  ret ptr %255
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gpiod_put_array(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gpio_descs, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %21, %1
  %6 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %7 = getelementptr %struct.gpio_descs, ptr %0, i32 0, i32 2, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i1 @gpiod_free_commit(ptr noundef nonnull %8) #18
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.gpio_device, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  tail call void @module_put(ptr noundef %18) #18
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.gpio_device, ptr %19, i32 0, i32 1
  tail call void @put_device(ptr noundef %20) #18
  br label %21

21:                                               ; preds = %15, %13, %10, %5
  %22 = add nuw i32 %6, 1
  %23 = load i32, ptr %2, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %5, label %25

25:                                               ; preds = %21, %1
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @gpiod_get_array_optional(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiod_get_array(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp eq ptr %4, inttoptr (i32 -2 to ptr)
  %6 = select i1 %5, ptr null, ptr %4
  ret ptr %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpiolib_dev_init() #11 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @gpio_bus_type) #18
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #19
  br label %35

5:                                                ; preds = %0
  %6 = tail call i32 @driver_register(ptr noundef nonnull @gpio_stub_drv) #18
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #19
  tail call void @bus_unregister(ptr noundef nonnull @gpio_bus_type) #18
  br label %35

10:                                               ; preds = %5
  %11 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @gpio_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.78) #18
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #19
  tail call void @driver_unregister(ptr noundef nonnull @gpio_stub_drv) #18
  tail call void @bus_unregister(ptr noundef nonnull @gpio_bus_type) #18
  br label %35

15:                                               ; preds = %10
  store i1 true, ptr @gpiolib_initialized, align 1
  %16 = load ptr, ptr @gpio_devices, align 4
  %17 = icmp eq ptr %16, @gpio_devices
  br i1 %17, label %31, label %18

18:                                               ; preds = %28, %15
  %19 = phi ptr [ %29, %28 ], [ %16, %15 ]
  %20 = getelementptr i8, ptr %19, i32 -572
  %21 = load i32, ptr @gpio_devt, align 4
  %22 = tail call i32 @gpiolib_cdev_register(ptr noundef %20, i32 noundef %21) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %19, i32 -112
  store ptr @gpiodevice_release, ptr %25, align 4
  br label %28

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %19, i32 -564
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.81, i32 noundef %22) #19
  br label %28

28:                                               ; preds = %26, %24
  %29 = load ptr, ptr %19, align 4
  %30 = icmp eq ptr %29, @gpio_devices
  br i1 %30, label %31, label %18

31:                                               ; preds = %28, %15
  %32 = tail call i32 @of_reconfig_notifier_register(ptr noundef nonnull @gpio_of_notifier) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 4378, i32 noundef 9, ptr noundef null) #18
  br label %35

35:                                               ; preds = %34, %31, %13, %8, %3
  %36 = phi i32 [ %1, %3 ], [ %6, %8 ], [ %11, %13 ], [ %11, %34 ], [ %11, %31 ]
  ret i32 %36
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpiolib_debugfs_init() #11 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @gpiolib_fops) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gpio_direction(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.41, ptr @.str.38
  %16 = getelementptr inbounds %struct.trace_event_raw_gpio_direction, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %11, ptr noundef nonnull %15, i32 noundef %17) #18
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #18
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_gpio_value(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #18
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.45, ptr @.str.42
  %16 = getelementptr inbounds %struct.trace_event_raw_gpio_value, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %11, ptr noundef nonnull %15, i32 noundef %17) #18
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #18
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
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_bus_match(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call ptr @dev_fwnode(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ 1, %9 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_gpio_need_valid_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiolib_cdev_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiodevice_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %4 = getelementptr i8, ptr %0, i32 564
  %5 = getelementptr i8, ptr %0, i32 568
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %3) #18
  %9 = load i32, ptr %2, align 8
  tail call void @ida_free(ptr noundef nonnull @gpio_ida, i32 noundef %9) #18
  %10 = getelementptr i8, ptr %0, i32 556
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree_const(ptr noundef %11) #18
  %12 = getelementptr i8, ptr %0, i32 544
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #18
  tail call void @kfree(ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpiochip_child_offset_to_irq_noop(ptr nocapture noundef readnone %0, i32 noundef returned %1) #17 {
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiochip_hierarchy_irq_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  store i32 0, ptr %8, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37
  %12 = icmp eq i32 %2, 1
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1126, i32 noundef 9, ptr noundef null) #18
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 8, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 %16(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %5, align 4
  %23 = load i32, ptr %6, align 4
  %24 = call i32 %21(ptr noundef %10, i32 noundef %22, i32 noundef %23, ptr noundef nonnull %7, ptr noundef nonnull %8) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gpio_device, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %10, align 4
  %31 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.56, ptr noundef %30, i32 noundef %31) #19
  br label %63

32:                                               ; preds = %19
  %33 = load i32, ptr %5, align 4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 9
  %36 = load ptr, ptr %35, align 4
  call void @irq_domain_set_info(ptr noundef %0, i32 noundef %1, i32 noundef %33, ptr noundef %34, ptr noundef %10, ptr noundef %36, ptr noundef null, ptr noundef null) #18
  call void @irq_modify_status(i32 noundef %1, i32 noundef 1024, i32 noundef 0) #18
  %37 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 37, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %7, align 4
  %40 = load i32, ptr %8, align 4
  %41 = call ptr %38(ptr noundef %10, i32 noundef %39, i32 noundef %40) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %32
  %44 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %41) #18
  %45 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.irq_domain, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  %51 = icmp eq i32 %44, -17
  %52 = select i1 %50, i1 %51, i1 false
  %53 = select i1 %52, i32 0, i32 %44
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.gpio_device, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %10, align 4
  %60 = load i32, ptr %7, align 4
  %61 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.57, ptr noundef %59, i32 noundef %60, i32 noundef %61) #19
  br label %62

62:                                               ; preds = %55, %43
  call void @kfree(ptr noundef nonnull %41) #18
  br label %63

63:                                               ; preds = %62, %32, %26, %14
  %64 = phi i32 [ %24, %26 ], [ %53, %62 ], [ %17, %14 ], [ -12, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiochip_hierarchy_irq_domain_translate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 @irq_domain_translate_twocell(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  br label %31

19:                                               ; preds = %13, %9, %4
  br i1 %6, label %31, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @irqchip_fwnode_ops
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 @irq_domain_translate_twocell(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1101, i32 noundef 9, ptr noundef null) #18
  br label %31

31:                                               ; preds = %30, %27, %24, %20, %19, %17
  %32 = phi i32 [ %18, %17 ], [ %25, %24 ], [ 0, %30 ], [ 0, %27 ], [ -22, %20 ], [ -22, %19 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_translate_twocell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiochip_irq_reqres(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i1 @try_module_get(ptr noundef %9) #18
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %3, i32 noundef %5) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.gpio_device, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, ptr noundef %17, i32 noundef %5) #19
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.gpio_device, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  tail call void @module_put(ptr noundef %20) #18
  br label %21

21:                                               ; preds = %14, %11, %1
  %22 = phi i32 [ %12, %14 ], [ -19, %1 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiochip_irq_relres(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 8
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.gpio_desc, ptr %14, i32 %5
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.gpio_desc, ptr %14, i32 %5, i32 1
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %18) #18
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %18) #18
  %19 = getelementptr %struct.gpio_desc, ptr %14, i32 %5, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @strcmp(ptr noundef nonnull %20, ptr noundef nonnull dereferenceable(10) @.str.21) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr null, ptr %19, align 4
  br label %26

26:                                               ; preds = %25, %22, %17, %12, %1
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.gpio_device, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 8
  tail call void @module_put(ptr noundef %29) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiochip_irq_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 8
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.gpio_desc, ptr %14, i32 %5
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.gpio_desc, ptr %14, i32 %5, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3268, i32 noundef 9, ptr noundef null) #18
  br label %33

23:                                               ; preds = %17
  %24 = load volatile i32, ptr %18, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %18, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3274, i32 noundef 9, ptr noundef null) #18
  br label %32

32:                                               ; preds = %31, %27, %23
  tail call void @_set_bit(i32 noundef 10, ptr noundef %18) #18
  br label %33

33:                                               ; preds = %32, %22, %12, %1
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 24
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiochip_irq_mask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #18
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 8
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.gpio_device, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr %struct.gpio_desc, ptr %19, i32 %10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.gpio_desc, ptr %19, i32 %10, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3258, i32 noundef 9, ptr noundef null) #18
  br label %29

28:                                               ; preds = %22
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %23) #18
  br label %29

29:                                               ; preds = %28, %27, %17, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiochip_irq_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 25
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.gpio_device, ptr %9, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr %struct.gpio_desc, ptr %16, i32 %7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.gpio_desc, ptr %16, i32 %7, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3258, i32 noundef 9, ptr noundef null) #18
  br label %26

25:                                               ; preds = %19
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %20) #18
  br label %26

26:                                               ; preds = %25, %24, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpiochip_irq_unmask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 8
  %9 = load i16, ptr %8, align 8
  %10 = zext i16 %9 to i32
  %11 = icmp ult i32 %5, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gpio_device, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr %struct.gpio_desc, ptr %14, i32 %5
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.gpio_desc, ptr %14, i32 %5, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3268, i32 noundef 9, ptr noundef null) #18
  br label %33

23:                                               ; preds = %17
  %24 = load volatile i32, ptr %18, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %18, align 4
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 3274, i32 noundef 9, ptr noundef null) #18
  br label %32

32:                                               ; preds = %31, %27, %23
  tail call void @_set_bit(i32 noundef 10, ptr noundef %18) #18
  br label %33

33:                                               ; preds = %32, %22, %12, %1
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 26
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void %35(ptr noundef %0) #18
  br label %38

38:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_xor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_notifier_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpio_stub_drv_probe(ptr nocapture noundef readnone %0) #17 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiolib_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @gpiolib_sops) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gpiolib_seq_start(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr @.str.34, ptr %4, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %6 = load ptr, ptr @gpio_devices, align 4
  %7 = icmp eq ptr %6, @gpio_devices
  br i1 %7, label %18, label %12

8:                                                ; preds = %12
  %9 = add i64 %14, -1
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, @gpio_devices
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %14 = phi i64 [ %9, %8 ], [ %3, %2 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %13, i32 -572
  br label %18

18:                                               ; preds = %16, %8, %2
  %19 = phi ptr [ %17, %16 ], [ null, %2 ], [ null, %8 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %5) #18
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gpiolib_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #17 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gpiolib_seq_next(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #18
  %5 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @gpio_devices
  %8 = getelementptr i8, ptr %6, i32 -572
  %9 = select i1 %7, ptr null, ptr %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %4) #18
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr @.str.82, ptr %10, align 8
  %11 = load i64, ptr %2, align 8
  %12 = add i64 %11, 1
  store i64 %12, ptr %2, align 8
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpiolib_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %5, label %11, label %17

11:                                               ; preds = %2
  br i1 %10, label %12, label %15

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi ptr [ %14, %12 ], [ %9, %11 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %7, ptr noundef %16) #18
  br label %155

17:                                               ; preds = %2
  br i1 %10, label %18, label %21

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi ptr [ %20, %18 ], [ %9, %17 ]
  %23 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 8
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = add i32 %24, -1
  %29 = add i32 %28, %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %7, ptr noundef %22, i32 noundef %24, i32 noundef %29) #18
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %35, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ @.str.86, %33 ]
  %41 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %31, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %42, %39 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %40, ptr noundef %47) #18
  br label %48

48:                                               ; preds = %46, %21
  %49 = load ptr, ptr %4, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, ptr noundef nonnull %49) #18
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 23
  %54 = load i8, ptr %53, align 4, !range !13
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88) #18
  br label %57

57:                                               ; preds = %56, %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89) #18
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 16
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef %0, ptr noundef nonnull %4) #18
  br label %155

62:                                               ; preds = %57
  %63 = load ptr, ptr %3, align 4
  %64 = load i16, ptr %25, align 8
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %155, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gpio_device, ptr %1, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = load i32, ptr %23, align 4
  %70 = getelementptr inbounds %struct.gpio_chip, ptr %63, i32 0, i32 10
  br label %71

71:                                               ; preds = %148, %66
  %72 = phi ptr [ %68, %66 ], [ %151, %148 ]
  %73 = phi i32 [ %69, %66 ], [ %150, %148 ]
  %74 = phi i32 [ 0, %66 ], [ %149, %148 ]
  %75 = getelementptr inbounds %struct.gpio_desc, ptr %72, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.gpio_desc, ptr %72, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %148, label %83

83:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %73, ptr noundef nonnull %81) #18
  br label %148

84:                                               ; preds = %71
  %85 = icmp eq ptr %72, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = load ptr, ptr null, align 2147483648
  br label %94

88:                                               ; preds = %84
  %89 = load ptr, ptr %72, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gpio_device, ptr %89, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %88, %86
  %95 = phi ptr [ %89, %91 ], [ null, %88 ], [ %87, %86 ]
  %96 = phi ptr [ %93, %91 ], [ null, %88 ], [ null, %86 ]
  %97 = getelementptr inbounds %struct.gpio_device, ptr %95, i32 0, i32 6
  %98 = load ptr, ptr %97, align 8
  %99 = ptrtoint ptr %72 to i32
  %100 = ptrtoint ptr %98 to i32
  %101 = sub i32 %99, %100
  %102 = sdiv exact i32 %101, 24
  %103 = load volatile i32, ptr %75, align 4
  %104 = and i32 %103, 128
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %94
  %107 = load volatile i32, ptr %75, align 4
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %106, %94
  %111 = getelementptr inbounds %struct.gpio_chip, ptr %96, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = tail call i32 %112(ptr noundef %96, i32 noundef %102) #18
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = icmp eq i32 %115, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  tail call void @_set_bit(i32 noundef 1, ptr noundef %75) #18
  br label %121

120:                                              ; preds = %117
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %75) #18
  br label %121

121:                                              ; preds = %120, %119, %114, %110, %106
  %122 = load volatile i32, ptr %75, align 4
  %123 = and i32 %122, 2
  %124 = icmp eq i32 %123, 0
  %125 = load volatile i32, ptr %75, align 4
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  %128 = load volatile i32, ptr %75, align 4
  %129 = and i32 %128, 64
  %130 = icmp eq i32 %129, 0
  %131 = getelementptr inbounds %struct.gpio_desc, ptr %72, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, ptr @.str.34, ptr %132
  %135 = getelementptr inbounds %struct.gpio_desc, ptr %72, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = select i1 %124, ptr @.str.92, ptr @.str.41
  %138 = load ptr, ptr %70, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %121
  %141 = tail call i32 %138(ptr noundef %63, i32 noundef %74) #18
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, ptr @.str.94, ptr @.str.93
  br label %144

144:                                              ; preds = %140, %121
  %145 = phi ptr [ %143, %140 ], [ @.str.95, %121 ]
  %146 = select i1 %127, ptr @.str.34, ptr @.str.96
  %147 = select i1 %130, ptr @.str.34, ptr @.str.97
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.91, i32 noundef %73, ptr noundef nonnull %134, ptr noundef %136, ptr noundef nonnull %137, ptr noundef nonnull %145, ptr noundef nonnull %146, ptr noundef nonnull %147) #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.82) #18
  br label %148

148:                                              ; preds = %144, %83, %79
  %149 = add nuw nsw i32 %74, 1
  %150 = add i32 %73, 1
  %151 = getelementptr %struct.gpio_desc, ptr %72, i32 1
  %152 = load i16, ptr %25, align 8
  %153 = zext i16 %152 to i32
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %71, label %155

155:                                              ; preds = %148, %62, %61, %15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }

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
!12 = !{i64 420512}
!13 = !{i8 0, i8 2}
!14 = !{i64 2153284446}
!15 = !{i64 2153284612}
!16 = !{i64 2153304448}
!17 = !{i64 2153304612}
