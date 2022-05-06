; ModuleID = '/llk/IR/drivers/base/regmap/regmap.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_reg_in_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_reg_in_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_reg_in_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_check_range_table:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_check_range_table\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_check_range_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_attach_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_attach_dev\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_attach_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_val_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_val_endian\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_val_endian:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_field_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_field_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_field_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_bulk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_bulk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_bulk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_field_bulk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_field_bulk_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_field_bulk_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_bulk_free\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_field_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_field_bulk_free\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_field_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_field_free:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_field_free\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_field_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_free:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_free\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_reinit_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_reinit_cache\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_reinit_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_exit\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_get_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_get_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_dev_get_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_can_raw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_can_raw_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_can_raw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_raw_read_max:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_raw_read_max\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_raw_read_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_raw_write_max:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_raw_write_max\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_raw_write_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_write_async\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_raw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_raw_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_raw_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_noinc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_noinc_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_noinc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_update_bits_base\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_fields_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_fields_update_bits_base\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_fields_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_bulk_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_bulk_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_multi_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_multi_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_multi_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_multi_reg_write_bypassed:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_multi_reg_write_bypassed\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_multi_reg_write_bypassed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_raw_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_raw_write_async\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_raw_write_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_raw_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_raw_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_raw_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_noinc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_noinc_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_noinc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_field_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_field_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_field_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_fields_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_fields_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_fields_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_bulk_read\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_bulk_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_update_bits_base\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_update_bits_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_test_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_test_bits\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_test_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_async_complete_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_async_complete_cb\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_async_complete_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_async_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_async_complete\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_async_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_register_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_register_patch\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_register_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_val_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_val_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_val_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_max_register:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_max_register\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_max_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_get_reg_stride:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_get_reg_stride\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_get_reg_stride:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regmap_parse_val:\09\09\09\09\09"
module asm "\09.asciz \09\22regmap_parse_val\22\09\09\09\09\09"
module asm "__kstrtabns_regmap_parse_val:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.92 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.94, %struct.trace_event, ptr, ptr, %union.anon.95, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.94 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.95 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.regmap = type { %union.anon, ptr, ptr, ptr, i32, ptr, ptr, %struct.regmap_format, ptr, ptr, ptr, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, i8, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, i8, i8, ptr, i32, i8, i8, i8, i32, i32, %struct.rb_root, ptr, ptr, i8 }
%union.anon = type { %struct.mutex }
%struct.regmap_format = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_regmap_reg = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_regmap_block = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_regcache_sync = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_regmap_bool = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_regmap_async = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_regcache_drop_region = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_range_node = type { %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.2 = type { %struct.raw_spinlock, i32 }
%struct.anon = type { %struct.spinlock, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.regmap_field = type { ptr, i32, i32, i32, i32, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.regmap_async = type { %struct.list_head, ptr, ptr }
%struct.regcache_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_regmap_reg_write = internal constant [17 x i8] c"regmap_reg_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_reg_write = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_reg_write }, align 4
@__tracepoint_regmap_reg_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_reg_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_reg_write, ptr null, ptr @__traceiter_regmap_reg_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_reg_write = internal constant ptr @__tracepoint_regmap_reg_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_reg_read = internal constant [16 x i8] c"regmap_reg_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_reg_read = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_reg_read }, align 4
@__tracepoint_regmap_reg_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_reg_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_reg_read, ptr null, ptr @__traceiter_regmap_reg_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_reg_read = internal constant ptr @__tracepoint_regmap_reg_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_reg_read_cache = internal constant [22 x i8] c"regmap_reg_read_cache\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_reg_read_cache = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_reg_read_cache }, align 4
@__tracepoint_regmap_reg_read_cache = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_reg_read_cache, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_reg_read_cache, ptr null, ptr @__traceiter_regmap_reg_read_cache, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_reg_read_cache = internal constant ptr @__tracepoint_regmap_reg_read_cache, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_hw_read_start = internal constant [21 x i8] c"regmap_hw_read_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_hw_read_start = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_hw_read_start }, align 4
@__tracepoint_regmap_hw_read_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_hw_read_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_hw_read_start, ptr null, ptr @__traceiter_regmap_hw_read_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_hw_read_start = internal constant ptr @__tracepoint_regmap_hw_read_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_hw_read_done = internal constant [20 x i8] c"regmap_hw_read_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_hw_read_done = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_hw_read_done }, align 4
@__tracepoint_regmap_hw_read_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_hw_read_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_hw_read_done, ptr null, ptr @__traceiter_regmap_hw_read_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_hw_read_done = internal constant ptr @__tracepoint_regmap_hw_read_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_hw_write_start = internal constant [22 x i8] c"regmap_hw_write_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_hw_write_start = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_hw_write_start }, align 4
@__tracepoint_regmap_hw_write_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_hw_write_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_hw_write_start, ptr null, ptr @__traceiter_regmap_hw_write_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_hw_write_start = internal constant ptr @__tracepoint_regmap_hw_write_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_hw_write_done = internal constant [21 x i8] c"regmap_hw_write_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_hw_write_done = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_hw_write_done }, align 4
@__tracepoint_regmap_hw_write_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_hw_write_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_hw_write_done, ptr null, ptr @__traceiter_regmap_hw_write_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_hw_write_done = internal constant ptr @__tracepoint_regmap_hw_write_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_regcache_sync = internal constant [14 x i8] c"regcache_sync\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regcache_sync = dso_local global %struct.static_call_key { ptr @__traceiter_regcache_sync }, align 4
@__tracepoint_regcache_sync = dso_local global %struct.tracepoint { ptr @__tpstrtab_regcache_sync, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regcache_sync, ptr null, ptr @__traceiter_regcache_sync, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regcache_sync = internal constant ptr @__tracepoint_regcache_sync, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_cache_only = internal constant [18 x i8] c"regmap_cache_only\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_cache_only = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_cache_only }, align 4
@__tracepoint_regmap_cache_only = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_cache_only, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_cache_only, ptr null, ptr @__traceiter_regmap_cache_only, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_cache_only = internal constant ptr @__tracepoint_regmap_cache_only, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_cache_bypass = internal constant [20 x i8] c"regmap_cache_bypass\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_cache_bypass = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_cache_bypass }, align 4
@__tracepoint_regmap_cache_bypass = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_cache_bypass, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_cache_bypass, ptr null, ptr @__traceiter_regmap_cache_bypass, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_cache_bypass = internal constant ptr @__tracepoint_regmap_cache_bypass, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_async_write_start = internal constant [25 x i8] c"regmap_async_write_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_async_write_start = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_async_write_start }, align 4
@__tracepoint_regmap_async_write_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_async_write_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_async_write_start, ptr null, ptr @__traceiter_regmap_async_write_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_async_write_start = internal constant ptr @__tracepoint_regmap_async_write_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_async_io_complete = internal constant [25 x i8] c"regmap_async_io_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_async_io_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_async_io_complete }, align 4
@__tracepoint_regmap_async_io_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_async_io_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_async_io_complete, ptr null, ptr @__traceiter_regmap_async_io_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_async_io_complete = internal constant ptr @__tracepoint_regmap_async_io_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_async_complete_start = internal constant [28 x i8] c"regmap_async_complete_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_async_complete_start = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_async_complete_start }, align 4
@__tracepoint_regmap_async_complete_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_async_complete_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_async_complete_start, ptr null, ptr @__traceiter_regmap_async_complete_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_async_complete_start = internal constant ptr @__tracepoint_regmap_async_complete_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_regmap_async_complete_done = internal constant [27 x i8] c"regmap_async_complete_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regmap_async_complete_done = dso_local global %struct.static_call_key { ptr @__traceiter_regmap_async_complete_done }, align 4
@__tracepoint_regmap_async_complete_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_regmap_async_complete_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regmap_async_complete_done, ptr null, ptr @__traceiter_regmap_async_complete_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regmap_async_complete_done = internal constant ptr @__tracepoint_regmap_async_complete_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_regcache_drop_region = internal constant [21 x i8] c"regcache_drop_region\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regcache_drop_region = dso_local global %struct.static_call_key { ptr @__traceiter_regcache_drop_region }, align 4
@__tracepoint_regcache_drop_region = dso_local global %struct.tracepoint { ptr @__tpstrtab_regcache_drop_region, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regcache_drop_region, ptr null, ptr @__traceiter_regcache_drop_region, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regcache_drop_region = internal constant ptr @__tracepoint_regcache_drop_region, section "__tracepoints_ptrs", align 4
@str__regmap__trace_system_name = internal constant [7 x i8] c"regmap\00", align 1
@trace_event_fields_regmap_reg = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.92 { %struct.anon.93 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.92 { %struct.anon.93 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regmap_reg = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regmap_reg, ptr @perf_trace_regmap_reg, ptr @trace_event_reg, ptr @trace_event_fields_regmap_reg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regmap_reg, i64 24), ptr getelementptr (i8, ptr @event_class_regmap_reg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regmap_reg = internal global %struct.trace_event_functions { ptr @trace_raw_output_regmap_reg, ptr null, ptr null, ptr null }, align 4
@print_fmt_regmap_reg = internal global [84 x i8] c"\22%s reg=%x val=%x\22, __get_str(name), (unsigned int)REC->reg, (unsigned int)REC->val\00", align 1
@event_regmap_reg_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_reg, %union.anon.94 { ptr @__tracepoint_regmap_reg_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_reg }, ptr @print_fmt_regmap_reg, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_reg_write = internal global ptr @event_regmap_reg_write, section "_ftrace_events", align 4
@event_regmap_reg_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_reg, %union.anon.94 { ptr @__tracepoint_regmap_reg_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_reg }, ptr @print_fmt_regmap_reg, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_reg_read = internal global ptr @event_regmap_reg_read, section "_ftrace_events", align 4
@event_regmap_reg_read_cache = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_reg, %union.anon.94 { ptr @__tracepoint_regmap_reg_read_cache }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_reg }, ptr @print_fmt_regmap_reg, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_reg_read_cache = internal global ptr @event_regmap_reg_read_cache, section "_ftrace_events", align 4
@trace_event_fields_regmap_block = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.92 { %struct.anon.93 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regmap_block = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regmap_block, ptr @perf_trace_regmap_block, ptr @trace_event_reg, ptr @trace_event_fields_regmap_block, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regmap_block, i64 24), ptr getelementptr (i8, ptr @event_class_regmap_block, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regmap_block = internal global %struct.trace_event_functions { ptr @trace_raw_output_regmap_block, ptr null, ptr null, ptr null }, align 4
@print_fmt_regmap_block = internal global [79 x i8] c"\22%s reg=%x count=%d\22, __get_str(name), (unsigned int)REC->reg, (int)REC->count\00", align 1
@event_regmap_hw_read_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_block, %union.anon.94 { ptr @__tracepoint_regmap_hw_read_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_block }, ptr @print_fmt_regmap_block, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_hw_read_start = internal global ptr @event_regmap_hw_read_start, section "_ftrace_events", align 4
@event_regmap_hw_read_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_block, %union.anon.94 { ptr @__tracepoint_regmap_hw_read_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_block }, ptr @print_fmt_regmap_block, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_hw_read_done = internal global ptr @event_regmap_hw_read_done, section "_ftrace_events", align 4
@event_regmap_hw_write_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_block, %union.anon.94 { ptr @__tracepoint_regmap_hw_write_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_block }, ptr @print_fmt_regmap_block, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_hw_write_start = internal global ptr @event_regmap_hw_write_start, section "_ftrace_events", align 4
@event_regmap_hw_write_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_block, %union.anon.94 { ptr @__tracepoint_regmap_hw_write_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_block }, ptr @print_fmt_regmap_block, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_hw_write_done = internal global ptr @event_regmap_hw_write_done, section "_ftrace_events", align 4
@trace_event_fields_regcache_sync = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.29, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regcache_sync = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regcache_sync, ptr @perf_trace_regcache_sync, ptr @trace_event_reg, ptr @trace_event_fields_regcache_sync, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regcache_sync, i64 24), ptr getelementptr (i8, ptr @event_class_regcache_sync, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regcache_sync = internal global %struct.trace_event_functions { ptr @trace_raw_output_regcache_sync, ptr null, ptr null, ptr null }, align 4
@print_fmt_regcache_sync = internal global [76 x i8] c"\22%s type=%s status=%s\22, __get_str(name), __get_str(type), __get_str(status)\00", align 1
@event_regcache_sync = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regcache_sync, %union.anon.94 { ptr @__tracepoint_regcache_sync }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regcache_sync }, ptr @print_fmt_regcache_sync, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regcache_sync = internal global ptr @event_regcache_sync, section "_ftrace_events", align 4
@trace_event_fields_regmap_bool = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.92 { %struct.anon.93 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regmap_bool = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regmap_bool, ptr @perf_trace_regmap_bool, ptr @trace_event_reg, ptr @trace_event_fields_regmap_bool, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regmap_bool, i64 24), ptr getelementptr (i8, ptr @event_class_regmap_bool, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regmap_bool = internal global %struct.trace_event_functions { ptr @trace_raw_output_regmap_bool, ptr null, ptr null, ptr null }, align 4
@print_fmt_regmap_bool = internal global [46 x i8] c"\22%s flag=%d\22, __get_str(name), (int)REC->flag\00", align 1
@event_regmap_cache_only = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_bool, %union.anon.94 { ptr @__tracepoint_regmap_cache_only }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_bool }, ptr @print_fmt_regmap_bool, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_cache_only = internal global ptr @event_regmap_cache_only, section "_ftrace_events", align 4
@event_regmap_cache_bypass = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_bool, %union.anon.94 { ptr @__tracepoint_regmap_cache_bypass }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_bool }, ptr @print_fmt_regmap_bool, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_cache_bypass = internal global ptr @event_regmap_cache_bypass, section "_ftrace_events", align 4
@trace_event_fields_regmap_async = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regmap_async = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regmap_async, ptr @perf_trace_regmap_async, ptr @trace_event_reg, ptr @trace_event_fields_regmap_async, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regmap_async, i64 24), ptr getelementptr (i8, ptr @event_class_regmap_async, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@event_regmap_async_write_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_block, %union.anon.94 { ptr @__tracepoint_regmap_async_write_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_block }, ptr @print_fmt_regmap_block, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_async_write_start = internal global ptr @event_regmap_async_write_start, section "_ftrace_events", align 4
@trace_event_type_funcs_regmap_async = internal global %struct.trace_event_functions { ptr @trace_raw_output_regmap_async, ptr null, ptr null, ptr null }, align 4
@print_fmt_regmap_async = internal global [22 x i8] c"\22%s\22, __get_str(name)\00", align 1
@event_regmap_async_io_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_async, %union.anon.94 { ptr @__tracepoint_regmap_async_io_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_async }, ptr @print_fmt_regmap_async, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_async_io_complete = internal global ptr @event_regmap_async_io_complete, section "_ftrace_events", align 4
@event_regmap_async_complete_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_async, %union.anon.94 { ptr @__tracepoint_regmap_async_complete_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_async }, ptr @print_fmt_regmap_async, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_async_complete_start = internal global ptr @event_regmap_async_complete_start, section "_ftrace_events", align 4
@event_regmap_async_complete_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regmap_async, %union.anon.94 { ptr @__tracepoint_regmap_async_complete_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regmap_async }, ptr @print_fmt_regmap_async, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regmap_async_complete_done = internal global ptr @event_regmap_async_complete_done, section "_ftrace_events", align 4
@trace_event_fields_regcache_drop_region = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.92 { %struct.anon.93 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.92 { %struct.anon.93 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.92 { %struct.anon.93 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regcache_drop_region = internal global %struct.trace_event_class { ptr @str__regmap__trace_system_name, ptr @trace_event_raw_event_regcache_drop_region, ptr @perf_trace_regcache_drop_region, ptr @trace_event_reg, ptr @trace_event_fields_regcache_drop_region, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regcache_drop_region, i64 24), ptr getelementptr (i8, ptr @event_class_regcache_drop_region, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regcache_drop_region = internal global %struct.trace_event_functions { ptr @trace_raw_output_regcache_drop_region, ptr null, ptr null, ptr null }, align 4
@print_fmt_regcache_drop_region = internal global [76 x i8] c"\22%s %u-%u\22, __get_str(name), (unsigned int)REC->from, (unsigned int)REC->to\00", align 1
@event_regcache_drop_region = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regcache_drop_region, %union.anon.94 { ptr @__tracepoint_regcache_drop_region }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regcache_drop_region }, ptr @print_fmt_regcache_drop_region, ptr null, %union.anon.95 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regcache_drop_region = internal global ptr @event_regcache_drop_region, section "_ftrace_events", align 4
@__kstrtab_regmap_reg_in_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_reg_in_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_reg_in_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_reg_in_ranges to i32), ptr @__kstrtab_regmap_reg_in_ranges, ptr @__kstrtabns_regmap_reg_in_ranges }, section "___ksymtab_gpl+regmap_reg_in_ranges", align 4
@__kstrtab_regmap_check_range_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_check_range_table = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_check_range_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_check_range_table to i32), ptr @__kstrtab_regmap_check_range_table, ptr @__kstrtabns_regmap_check_range_table }, section "___ksymtab_gpl+regmap_check_range_table", align 4
@.str = private unnamed_addr constant [23 x i8] c"dev_get_regmap_release\00", align 1
@__kstrtab_regmap_attach_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_attach_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_attach_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_attach_dev to i32), ptr @__kstrtab_regmap_attach_dev, ptr @__kstrtabns_regmap_attach_dev }, section "___ksymtab_gpl+regmap_attach_dev", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"native-endian\00", align 1
@__kstrtab_regmap_get_val_endian = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_val_endian = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_val_endian = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_val_endian to i32), ptr @__kstrtab_regmap_get_val_endian, ptr @__kstrtabns_regmap_get_val_endian }, section "___ksymtab_gpl+regmap_get_val_endian", align 4
@__regmap_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&map->mutex\00", align 1
@__regmap_init.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"&map->async_waitq\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Invalid range %d: %d < %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Invalid range %d: %d > %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Invalid range %d: selector out of map\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Invalid range %d: window_len 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Range %d: selector for %d in window\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Range %d: window for %d in window\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Failed to add range %d\0A\00", align 1
@__kstrtab___regmap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init to i32), ptr @__kstrtab___regmap_init, ptr @__kstrtabns___regmap_init }, section "___ksymtab_gpl+__regmap_init", align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"devm_regmap_release\00", align 1
@__kstrtab___devm_regmap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init to i32), ptr @__kstrtab___devm_regmap_init, ptr @__kstrtabns___devm_regmap_init }, section "___ksymtab_gpl+__devm_regmap_init", align 4
@__kstrtab_devm_regmap_field_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_field_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_field_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_field_alloc to i32), ptr @__kstrtab_devm_regmap_field_alloc, ptr @__kstrtabns_devm_regmap_field_alloc }, section "___ksymtab_gpl+devm_regmap_field_alloc", align 4
@__kstrtab_regmap_field_bulk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_bulk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_bulk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_bulk_alloc to i32), ptr @__kstrtab_regmap_field_bulk_alloc, ptr @__kstrtabns_regmap_field_bulk_alloc }, section "___ksymtab_gpl+regmap_field_bulk_alloc", align 4
@__kstrtab_devm_regmap_field_bulk_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_field_bulk_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_field_bulk_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_field_bulk_alloc to i32), ptr @__kstrtab_devm_regmap_field_bulk_alloc, ptr @__kstrtabns_devm_regmap_field_bulk_alloc }, section "___ksymtab_gpl+devm_regmap_field_bulk_alloc", align 4
@__kstrtab_regmap_field_bulk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_bulk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_bulk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_bulk_free to i32), ptr @__kstrtab_regmap_field_bulk_free, ptr @__kstrtabns_regmap_field_bulk_free }, section "___ksymtab_gpl+regmap_field_bulk_free", align 4
@__kstrtab_devm_regmap_field_bulk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_field_bulk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_field_bulk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_field_bulk_free to i32), ptr @__kstrtab_devm_regmap_field_bulk_free, ptr @__kstrtabns_devm_regmap_field_bulk_free }, section "___ksymtab_gpl+devm_regmap_field_bulk_free", align 4
@__kstrtab_devm_regmap_field_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_field_free = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_field_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_field_free to i32), ptr @__kstrtab_devm_regmap_field_free, ptr @__kstrtabns_devm_regmap_field_free }, section "___ksymtab_gpl+devm_regmap_field_free", align 4
@__kstrtab_regmap_field_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_alloc to i32), ptr @__kstrtab_regmap_field_alloc, ptr @__kstrtabns_regmap_field_alloc }, section "___ksymtab_gpl+regmap_field_alloc", align 4
@__kstrtab_regmap_field_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_free = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_free to i32), ptr @__kstrtab_regmap_field_free, ptr @__kstrtabns_regmap_field_free }, section "___ksymtab_gpl+regmap_field_free", align 4
@__kstrtab_regmap_reinit_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_reinit_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_reinit_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_reinit_cache to i32), ptr @__kstrtab_regmap_reinit_cache, ptr @__kstrtabns_regmap_reinit_cache }, section "___ksymtab_gpl+regmap_reinit_cache", align 4
@__kstrtab_regmap_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_exit to i32), ptr @__kstrtab_regmap_exit, ptr @__kstrtabns_regmap_exit }, section "___ksymtab_gpl+regmap_exit", align 4
@__kstrtab_dev_get_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_get_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_get_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_get_regmap to i32), ptr @__kstrtab_dev_get_regmap, ptr @__kstrtabns_dev_get_regmap }, section "___ksymtab_gpl+dev_get_regmap", align 4
@__kstrtab_regmap_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_device to i32), ptr @__kstrtab_regmap_get_device, ptr @__kstrtabns_regmap_get_device }, section "___ksymtab_gpl+regmap_get_device", align 4
@__kstrtab_regmap_can_raw_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_can_raw_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_can_raw_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_can_raw_write to i32), ptr @__kstrtab_regmap_can_raw_write, ptr @__kstrtabns_regmap_can_raw_write }, section "___ksymtab_gpl+regmap_can_raw_write", align 4
@__kstrtab_regmap_get_raw_read_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_raw_read_max = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_raw_read_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_raw_read_max to i32), ptr @__kstrtab_regmap_get_raw_read_max, ptr @__kstrtabns_regmap_get_raw_read_max }, section "___ksymtab_gpl+regmap_get_raw_read_max", align 4
@__kstrtab_regmap_get_raw_write_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_raw_write_max = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_raw_write_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_raw_write_max to i32), ptr @__kstrtab_regmap_get_raw_write_max, ptr @__kstrtabns_regmap_get_raw_write_max }, section "___ksymtab_gpl+regmap_get_raw_write_max", align 4
@__kstrtab_regmap_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_write to i32), ptr @__kstrtab_regmap_write, ptr @__kstrtabns_regmap_write }, section "___ksymtab_gpl+regmap_write", align 4
@__kstrtab_regmap_write_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_write_async = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_write_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_write_async to i32), ptr @__kstrtab_regmap_write_async, ptr @__kstrtabns_regmap_write_async }, section "___ksymtab_gpl+regmap_write_async", align 4
@__kstrtab_regmap_raw_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_raw_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_raw_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_raw_write to i32), ptr @__kstrtab_regmap_raw_write, ptr @__kstrtabns_regmap_raw_write }, section "___ksymtab_gpl+regmap_raw_write", align 4
@__kstrtab_regmap_noinc_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_noinc_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_noinc_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_noinc_write to i32), ptr @__kstrtab_regmap_noinc_write, ptr @__kstrtabns_regmap_noinc_write }, section "___ksymtab_gpl+regmap_noinc_write", align 4
@__kstrtab_regmap_field_update_bits_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_update_bits_base = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_update_bits_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_update_bits_base to i32), ptr @__kstrtab_regmap_field_update_bits_base, ptr @__kstrtabns_regmap_field_update_bits_base }, section "___ksymtab_gpl+regmap_field_update_bits_base", align 4
@__kstrtab_regmap_fields_update_bits_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_fields_update_bits_base = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_fields_update_bits_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_fields_update_bits_base to i32), ptr @__kstrtab_regmap_fields_update_bits_base, ptr @__kstrtabns_regmap_fields_update_bits_base }, section "___ksymtab_gpl+regmap_fields_update_bits_base", align 4
@__kstrtab_regmap_bulk_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_bulk_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_bulk_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_bulk_write to i32), ptr @__kstrtab_regmap_bulk_write, ptr @__kstrtabns_regmap_bulk_write }, section "___ksymtab_gpl+regmap_bulk_write", align 4
@__kstrtab_regmap_multi_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_multi_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_multi_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_multi_reg_write to i32), ptr @__kstrtab_regmap_multi_reg_write, ptr @__kstrtabns_regmap_multi_reg_write }, section "___ksymtab_gpl+regmap_multi_reg_write", align 4
@__kstrtab_regmap_multi_reg_write_bypassed = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_multi_reg_write_bypassed = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_multi_reg_write_bypassed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_multi_reg_write_bypassed to i32), ptr @__kstrtab_regmap_multi_reg_write_bypassed, ptr @__kstrtabns_regmap_multi_reg_write_bypassed }, section "___ksymtab_gpl+regmap_multi_reg_write_bypassed", align 4
@__kstrtab_regmap_raw_write_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_raw_write_async = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_raw_write_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_raw_write_async to i32), ptr @__kstrtab_regmap_raw_write_async, ptr @__kstrtabns_regmap_raw_write_async }, section "___ksymtab_gpl+regmap_raw_write_async", align 4
@__kstrtab_regmap_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_read to i32), ptr @__kstrtab_regmap_read, ptr @__kstrtabns_regmap_read }, section "___ksymtab_gpl+regmap_read", align 4
@__kstrtab_regmap_raw_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_raw_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_raw_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_raw_read to i32), ptr @__kstrtab_regmap_raw_read, ptr @__kstrtabns_regmap_raw_read }, section "___ksymtab_gpl+regmap_raw_read", align 4
@__kstrtab_regmap_noinc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_noinc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_noinc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_noinc_read to i32), ptr @__kstrtab_regmap_noinc_read, ptr @__kstrtabns_regmap_noinc_read }, section "___ksymtab_gpl+regmap_noinc_read", align 4
@__kstrtab_regmap_field_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_field_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_field_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_field_read to i32), ptr @__kstrtab_regmap_field_read, ptr @__kstrtabns_regmap_field_read }, section "___ksymtab_gpl+regmap_field_read", align 4
@__kstrtab_regmap_fields_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_fields_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_fields_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_fields_read to i32), ptr @__kstrtab_regmap_fields_read, ptr @__kstrtabns_regmap_fields_read }, section "___ksymtab_gpl+regmap_fields_read", align 4
@__kstrtab_regmap_bulk_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_bulk_read = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_bulk_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_bulk_read to i32), ptr @__kstrtab_regmap_bulk_read, ptr @__kstrtabns_regmap_bulk_read }, section "___ksymtab_gpl+regmap_bulk_read", align 4
@__kstrtab_regmap_update_bits_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_update_bits_base = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_update_bits_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_update_bits_base to i32), ptr @__kstrtab_regmap_update_bits_base, ptr @__kstrtabns_regmap_update_bits_base }, section "___ksymtab_gpl+regmap_update_bits_base", align 4
@__kstrtab_regmap_test_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_test_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_test_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_test_bits to i32), ptr @__kstrtab_regmap_test_bits, ptr @__kstrtabns_regmap_test_bits }, section "___ksymtab_gpl+regmap_test_bits", align 4
@__kstrtab_regmap_async_complete_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_async_complete_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_async_complete_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_async_complete_cb to i32), ptr @__kstrtab_regmap_async_complete_cb, ptr @__kstrtabns_regmap_async_complete_cb }, section "___ksymtab_gpl+regmap_async_complete_cb", align 4
@__kstrtab_regmap_async_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_async_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_async_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_async_complete to i32), ptr @__kstrtab_regmap_async_complete, ptr @__kstrtabns_regmap_async_complete }, section "___ksymtab_gpl+regmap_async_complete", align 4
@regmap_register_patch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"drivers/base/regmap/regmap.c\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"invalid registers number (%d)\0A\00", align 1
@__kstrtab_regmap_register_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_register_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_register_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_register_patch to i32), ptr @__kstrtab_regmap_register_patch, ptr @__kstrtabns_regmap_register_patch }, section "___ksymtab_gpl+regmap_register_patch", align 4
@__kstrtab_regmap_get_val_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_val_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_val_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_val_bytes to i32), ptr @__kstrtab_regmap_get_val_bytes, ptr @__kstrtabns_regmap_get_val_bytes }, section "___ksymtab_gpl+regmap_get_val_bytes", align 4
@__kstrtab_regmap_get_max_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_max_register = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_max_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_max_register to i32), ptr @__kstrtab_regmap_get_max_register, ptr @__kstrtabns_regmap_get_max_register }, section "___ksymtab_gpl+regmap_get_max_register", align 4
@__kstrtab_regmap_get_reg_stride = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_get_reg_stride = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_get_reg_stride = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_get_reg_stride to i32), ptr @__kstrtab_regmap_get_reg_stride, ptr @__kstrtabns_regmap_get_reg_stride }, section "___ksymtab_gpl+regmap_get_reg_stride", align 4
@__kstrtab_regmap_parse_val = external dso_local constant [0 x i8], align 1
@__kstrtabns_regmap_parse_val = external dso_local constant [0 x i8], align 1
@__ksymtab_regmap_parse_val = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regmap_parse_val to i32), ptr @__kstrtab_regmap_parse_val, ptr @__kstrtabns_regmap_parse_val }, section "___ksymtab_gpl+regmap_parse_val", align 4
@__initcall__kmod_regmap__316_3343_regmap_initcall2 = internal global ptr @regmap_initcall, section ".initcall2.init", align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%s reg=%x val=%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"%s reg=%x count=%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"%s type=%s status=%s\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"%s flag=%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%s %u-%u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.38 = private unnamed_addr constant [42 x i8] c"Error in caching of register: %x ret: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Failed to schedule write: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [113 x ptr] [ptr @__event_regcache_drop_region, ptr @__event_regcache_sync, ptr @__event_regmap_async_complete_done, ptr @__event_regmap_async_complete_start, ptr @__event_regmap_async_io_complete, ptr @__event_regmap_async_write_start, ptr @__event_regmap_cache_bypass, ptr @__event_regmap_cache_only, ptr @__event_regmap_hw_read_done, ptr @__event_regmap_hw_read_start, ptr @__event_regmap_hw_write_done, ptr @__event_regmap_hw_write_start, ptr @__event_regmap_reg_read, ptr @__event_regmap_reg_read_cache, ptr @__event_regmap_reg_write, ptr @__initcall__kmod_regmap__316_3343_regmap_initcall2, ptr @__ksymtab___devm_regmap_init, ptr @__ksymtab___regmap_init, ptr @__ksymtab_dev_get_regmap, ptr @__ksymtab_devm_regmap_field_alloc, ptr @__ksymtab_devm_regmap_field_bulk_alloc, ptr @__ksymtab_devm_regmap_field_bulk_free, ptr @__ksymtab_devm_regmap_field_free, ptr @__ksymtab_regmap_async_complete, ptr @__ksymtab_regmap_async_complete_cb, ptr @__ksymtab_regmap_attach_dev, ptr @__ksymtab_regmap_bulk_read, ptr @__ksymtab_regmap_bulk_write, ptr @__ksymtab_regmap_can_raw_write, ptr @__ksymtab_regmap_check_range_table, ptr @__ksymtab_regmap_exit, ptr @__ksymtab_regmap_field_alloc, ptr @__ksymtab_regmap_field_bulk_alloc, ptr @__ksymtab_regmap_field_bulk_free, ptr @__ksymtab_regmap_field_free, ptr @__ksymtab_regmap_field_read, ptr @__ksymtab_regmap_field_update_bits_base, ptr @__ksymtab_regmap_fields_read, ptr @__ksymtab_regmap_fields_update_bits_base, ptr @__ksymtab_regmap_get_device, ptr @__ksymtab_regmap_get_max_register, ptr @__ksymtab_regmap_get_raw_read_max, ptr @__ksymtab_regmap_get_raw_write_max, ptr @__ksymtab_regmap_get_reg_stride, ptr @__ksymtab_regmap_get_val_bytes, ptr @__ksymtab_regmap_get_val_endian, ptr @__ksymtab_regmap_multi_reg_write, ptr @__ksymtab_regmap_multi_reg_write_bypassed, ptr @__ksymtab_regmap_noinc_read, ptr @__ksymtab_regmap_noinc_write, ptr @__ksymtab_regmap_parse_val, ptr @__ksymtab_regmap_raw_read, ptr @__ksymtab_regmap_raw_write, ptr @__ksymtab_regmap_raw_write_async, ptr @__ksymtab_regmap_read, ptr @__ksymtab_regmap_reg_in_ranges, ptr @__ksymtab_regmap_register_patch, ptr @__ksymtab_regmap_reinit_cache, ptr @__ksymtab_regmap_test_bits, ptr @__ksymtab_regmap_update_bits_base, ptr @__ksymtab_regmap_write, ptr @__ksymtab_regmap_write_async, ptr @__tracepoint_ptr_regcache_drop_region, ptr @__tracepoint_ptr_regcache_sync, ptr @__tracepoint_ptr_regmap_async_complete_done, ptr @__tracepoint_ptr_regmap_async_complete_start, ptr @__tracepoint_ptr_regmap_async_io_complete, ptr @__tracepoint_ptr_regmap_async_write_start, ptr @__tracepoint_ptr_regmap_cache_bypass, ptr @__tracepoint_ptr_regmap_cache_only, ptr @__tracepoint_ptr_regmap_hw_read_done, ptr @__tracepoint_ptr_regmap_hw_read_start, ptr @__tracepoint_ptr_regmap_hw_write_done, ptr @__tracepoint_ptr_regmap_hw_write_start, ptr @__tracepoint_ptr_regmap_reg_read, ptr @__tracepoint_ptr_regmap_reg_read_cache, ptr @__tracepoint_ptr_regmap_reg_write, ptr @__tracepoint_regcache_drop_region, ptr @__tracepoint_regcache_sync, ptr @__tracepoint_regmap_async_complete_done, ptr @__tracepoint_regmap_async_complete_start, ptr @__tracepoint_regmap_async_io_complete, ptr @__tracepoint_regmap_async_write_start, ptr @__tracepoint_regmap_cache_bypass, ptr @__tracepoint_regmap_cache_only, ptr @__tracepoint_regmap_hw_read_done, ptr @__tracepoint_regmap_hw_read_start, ptr @__tracepoint_regmap_hw_write_done, ptr @__tracepoint_regmap_hw_write_start, ptr @__tracepoint_regmap_reg_read, ptr @__tracepoint_regmap_reg_read_cache, ptr @__tracepoint_regmap_reg_write, ptr @event_class_regcache_drop_region, ptr @event_class_regcache_sync, ptr @event_class_regmap_async, ptr @event_class_regmap_block, ptr @event_class_regmap_bool, ptr @event_class_regmap_reg, ptr @event_regcache_drop_region, ptr @event_regcache_sync, ptr @event_regmap_async_complete_done, ptr @event_regmap_async_complete_start, ptr @event_regmap_async_io_complete, ptr @event_regmap_async_write_start, ptr @event_regmap_cache_bypass, ptr @event_regmap_cache_only, ptr @event_regmap_hw_read_done, ptr @event_regmap_hw_read_start, ptr @event_regmap_hw_write_done, ptr @event_regmap_hw_write_start, ptr @event_regmap_reg_read, ptr @event_regmap_reg_read_cache, ptr @event_regmap_reg_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_reg_write(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_write, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
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
define dso_local i32 @__traceiter_regmap_reg_read(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_reg_read_cache(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read_cache, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_hw_read_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_hw_read_done(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_done, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_hw_write_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_hw_write_done(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regcache_sync(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_sync, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_cache_only(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_only, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %2) #26
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_cache_bypass(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_cache_bypass, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %2) #26
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_async_write_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_write_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_async_io_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_io_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_async_complete_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regmap_async_complete_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_done, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regcache_drop_region(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regcache_drop_region, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regmap_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %14, label %65, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %25, %23 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27, %23, %19
  %33 = phi ptr [ @.str.18, %23 ], [ @.str.18, %27 ], [ %31, %30 ], [ %21, %19 ]
  %34 = tail call i32 @strlen(ptr noundef nonnull %33) #26
  %35 = add i32 %34, 21
  %36 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %35) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %65, label %38

38:                                               ; preds = %32
  %39 = shl i32 %34, 16
  %40 = add i32 %39, 65556
  %41 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %36, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %36, i32 20
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %60

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %58

53:                                               ; preds = %45
  %54 = load ptr, ptr %43, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %43, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi ptr [ %57, %56 ], [ %51, %49 ]
  br label %60

60:                                               ; preds = %58, %53, %49, %45
  %61 = phi ptr [ @.str.18, %49 ], [ @.str.18, %53 ], [ %59, %58 ], [ %47, %45 ]
  %62 = call ptr @strcpy(ptr noundef %42, ptr noundef %61)
  %63 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %36, i32 0, i32 2
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %36, i32 0, i32 3
  store i32 %3, ptr %64, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #26
  br label %65

65:                                               ; preds = %60, %32, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regmap_reg(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %23

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %16, %14 ], [ %19, %18 ]
  br label %23

23:                                               ; preds = %21, %18, %14, %10
  %24 = phi ptr [ @.str.18, %14 ], [ @.str.18, %18 ], [ %22, %21 ], [ %12, %10 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #26
  %26 = shl i32 %25, 16
  %27 = add i32 %26, 65556
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #21, !srcloc !12
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load volatile ptr, ptr %35, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %39, %23
  %43 = add i32 %25, 32
  %44 = and i32 %43, -8
  %45 = add i32 %44, -4
  %46 = call ptr @perf_trace_buf_alloc(i32 noundef %45, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4
  %50 = call ptr @llvm.returnaddress(i32 0) #26
  %51 = ptrtoint ptr %50 to i32
  %52 = getelementptr [18 x i32], ptr %49, i32 0, i32 15
  store i32 %51, ptr %52, align 4
  %53 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr [18 x i32], ptr %49, i32 0, i32 11
  store i32 %54, ptr %55, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !0) #26
  %57 = getelementptr [18 x i32], ptr %49, i32 0, i32 13
  store i32 %56, ptr %57, align 4
  %58 = getelementptr [18 x i32], ptr %49, i32 0, i32 16
  store i32 19, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %46, i32 0, i32 1
  store i32 %27, ptr %59, align 4
  %60 = getelementptr i8, ptr %46, i32 20
  %61 = load ptr, ptr %7, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %78

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %76

71:                                               ; preds = %63
  %72 = load ptr, ptr %61, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %61, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi ptr [ %75, %74 ], [ %69, %67 ]
  br label %78

78:                                               ; preds = %76, %71, %67, %63
  %79 = phi ptr [ @.str.18, %67 ], [ @.str.18, %71 ], [ %77, %76 ], [ %65, %63 ]
  %80 = call ptr @strcpy(ptr noundef %60, ptr noundef %79)
  %81 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %46, i32 0, i32 2
  store i32 %2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %46, i32 0, i32 3
  store i32 %3, ptr %82, align 4
  %83 = load i32, ptr %6, align 4
  %84 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %46, i32 noundef %45, i32 noundef %83, ptr noundef %0, i64 noundef 1, ptr noundef %84, ptr noundef %35, ptr noundef null) #26
  br label %85

85:                                               ; preds = %78, %42, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regmap_block(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %14, label %65, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %25, %23 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27, %23, %19
  %33 = phi ptr [ @.str.18, %23 ], [ @.str.18, %27 ], [ %31, %30 ], [ %21, %19 ]
  %34 = tail call i32 @strlen(ptr noundef nonnull %33) #26
  %35 = add i32 %34, 21
  %36 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %35) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %65, label %38

38:                                               ; preds = %32
  %39 = shl i32 %34, 16
  %40 = add i32 %39, 65556
  %41 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %36, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %36, i32 20
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %60

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %58

53:                                               ; preds = %45
  %54 = load ptr, ptr %43, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %43, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi ptr [ %57, %56 ], [ %51, %49 ]
  br label %60

60:                                               ; preds = %58, %53, %49, %45
  %61 = phi ptr [ @.str.18, %49 ], [ @.str.18, %53 ], [ %59, %58 ], [ %47, %45 ]
  %62 = call ptr @strcpy(ptr noundef %42, ptr noundef %61)
  %63 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %36, i32 0, i32 2
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %36, i32 0, i32 3
  store i32 %3, ptr %64, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #26
  br label %65

65:                                               ; preds = %60, %32, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regmap_block(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %23

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %16, %14 ], [ %19, %18 ]
  br label %23

23:                                               ; preds = %21, %18, %14, %10
  %24 = phi ptr [ @.str.18, %14 ], [ @.str.18, %18 ], [ %22, %21 ], [ %12, %10 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #26
  %26 = shl i32 %25, 16
  %27 = add i32 %26, 65556
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #21, !srcloc !12
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load volatile ptr, ptr %35, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %39, %23
  %43 = add i32 %25, 32
  %44 = and i32 %43, -8
  %45 = add i32 %44, -4
  %46 = call ptr @perf_trace_buf_alloc(i32 noundef %45, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4
  %50 = call ptr @llvm.returnaddress(i32 0) #26
  %51 = ptrtoint ptr %50 to i32
  %52 = getelementptr [18 x i32], ptr %49, i32 0, i32 15
  store i32 %51, ptr %52, align 4
  %53 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr [18 x i32], ptr %49, i32 0, i32 11
  store i32 %54, ptr %55, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !0) #26
  %57 = getelementptr [18 x i32], ptr %49, i32 0, i32 13
  store i32 %56, ptr %57, align 4
  %58 = getelementptr [18 x i32], ptr %49, i32 0, i32 16
  store i32 19, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %46, i32 0, i32 1
  store i32 %27, ptr %59, align 4
  %60 = getelementptr i8, ptr %46, i32 20
  %61 = load ptr, ptr %7, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %78

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %76

71:                                               ; preds = %63
  %72 = load ptr, ptr %61, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %61, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi ptr [ %75, %74 ], [ %69, %67 ]
  br label %78

78:                                               ; preds = %76, %71, %67, %63
  %79 = phi ptr [ @.str.18, %67 ], [ @.str.18, %71 ], [ %77, %76 ], [ %65, %63 ]
  %80 = call ptr @strcpy(ptr noundef %60, ptr noundef %79)
  %81 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %46, i32 0, i32 2
  store i32 %2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %46, i32 0, i32 3
  store i32 %3, ptr %82, align 4
  %83 = load i32, ptr %6, align 4
  %84 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %46, i32 noundef %45, i32 noundef %83, ptr noundef %0, i64 noundef 1, ptr noundef %84, ptr noundef %35, ptr noundef null) #26
  br label %85

85:                                               ; preds = %78, %42, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regcache_sync(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %14, label %88, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %25, %23 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27, %23, %19
  %33 = phi ptr [ @.str.18, %23 ], [ @.str.18, %27 ], [ %31, %30 ], [ %21, %19 ]
  %34 = tail call i32 @strlen(ptr noundef nonnull %33) #26
  %35 = add i32 %34, 1
  %36 = icmp eq ptr %3, null
  %37 = select i1 %36, ptr @.str.18, ptr %3
  %38 = tail call i32 @strlen(ptr noundef %37) #26
  %39 = add i32 %38, 1
  %40 = add i32 %39, %35
  %41 = icmp eq ptr %2, null
  %42 = select i1 %41, ptr @.str.18, ptr %2
  %43 = tail call i32 @strlen(ptr noundef %42) #26
  %44 = add i32 %43, 1
  %45 = add i32 %40, 20
  %46 = add i32 %45, %44
  %47 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %46) #26
  %48 = icmp eq ptr %47, null
  br i1 %48, label %88, label %49

49:                                               ; preds = %32
  %50 = shl i32 %44, 16
  %51 = or i32 %50, %45
  %52 = shl i32 %39, 16
  %53 = add i32 %34, 21
  %54 = or i32 %52, %53
  %55 = shl i32 %35, 16
  %56 = or i32 %55, 20
  %57 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %47, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %47, i32 0, i32 2
  store i32 %54, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %47, i32 0, i32 3
  store i32 %51, ptr %59, align 4
  %60 = getelementptr i8, ptr %47, i32 20
  %61 = load ptr, ptr %16, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %78

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %76

71:                                               ; preds = %63
  %72 = load ptr, ptr %61, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %61, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi ptr [ %75, %74 ], [ %69, %67 ]
  br label %78

78:                                               ; preds = %76, %71, %67, %63
  %79 = phi ptr [ @.str.18, %67 ], [ @.str.18, %71 ], [ %77, %76 ], [ %65, %63 ]
  %80 = call ptr @strcpy(ptr noundef %60, ptr noundef %79)
  %81 = and i32 %53, 65535
  %82 = getelementptr i8, ptr %47, i32 %81
  %83 = call ptr @strcpy(ptr noundef %82, ptr noundef %37)
  %84 = load i32, ptr %59, align 4
  %85 = and i32 %84, 65535
  %86 = getelementptr i8, ptr %47, i32 %85
  %87 = call ptr @strcpy(ptr noundef %86, ptr noundef %42)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #26
  br label %88

88:                                               ; preds = %78, %32, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regcache_sync(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %23

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %16, %14 ], [ %19, %18 ]
  br label %23

23:                                               ; preds = %21, %18, %14, %10
  %24 = phi ptr [ @.str.18, %14 ], [ @.str.18, %18 ], [ %22, %21 ], [ %12, %10 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #26
  %26 = add i32 %25, 1
  %27 = shl i32 %26, 16
  %28 = or i32 %27, 20
  %29 = icmp eq ptr %3, null
  %30 = select i1 %29, ptr @.str.18, ptr %3
  %31 = tail call i32 @strlen(ptr noundef %30) #26
  %32 = add i32 %31, 1
  %33 = add i32 %25, 21
  %34 = shl i32 %32, 16
  %35 = or i32 %34, %33
  %36 = add i32 %32, %26
  %37 = icmp eq ptr %2, null
  %38 = select i1 %37, ptr @.str.18, ptr %2
  %39 = tail call i32 @strlen(ptr noundef %38) #26
  %40 = add i32 %39, 1
  %41 = add i32 %36, 20
  %42 = shl i32 %40, 16
  %43 = or i32 %42, %41
  %44 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #21, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %23
  %56 = load volatile ptr, ptr %51, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %109, label %58

58:                                               ; preds = %55, %23
  %59 = add i32 %36, 31
  %60 = add i32 %59, %40
  %61 = and i32 %60, -8
  %62 = add i32 %61, -4
  %63 = call ptr @perf_trace_buf_alloc(i32 noundef %62, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %64 = icmp eq ptr %63, null
  br i1 %64, label %109, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr %5, align 4
  %67 = call ptr @llvm.returnaddress(i32 0) #26
  %68 = ptrtoint ptr %67 to i32
  %69 = getelementptr [18 x i32], ptr %66, i32 0, i32 15
  store i32 %68, ptr %69, align 4
  %70 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %71 = ptrtoint ptr %70 to i32
  %72 = getelementptr [18 x i32], ptr %66, i32 0, i32 11
  store i32 %71, ptr %72, align 4
  %73 = call i32 @llvm.read_register.i32(metadata !0) #26
  %74 = getelementptr [18 x i32], ptr %66, i32 0, i32 13
  store i32 %73, ptr %74, align 4
  %75 = getelementptr [18 x i32], ptr %66, i32 0, i32 16
  store i32 19, ptr %75, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %63, i32 0, i32 1
  store i32 %28, ptr %76, align 4
  %77 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %63, i32 0, i32 2
  store i32 %35, ptr %77, align 4
  %78 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %63, i32 0, i32 3
  store i32 %43, ptr %78, align 4
  %79 = getelementptr i8, ptr %63, i32 20
  %80 = load ptr, ptr %7, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %97

86:                                               ; preds = %65
  %87 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %95

90:                                               ; preds = %82
  %91 = load ptr, ptr %80, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %80, align 4
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %94, %93 ], [ %88, %86 ]
  br label %97

97:                                               ; preds = %95, %90, %86, %82
  %98 = phi ptr [ @.str.18, %86 ], [ @.str.18, %90 ], [ %96, %95 ], [ %84, %82 ]
  %99 = call ptr @strcpy(ptr noundef %79, ptr noundef %98)
  %100 = and i32 %33, 65535
  %101 = getelementptr i8, ptr %63, i32 %100
  %102 = call ptr @strcpy(ptr noundef %101, ptr noundef %30)
  %103 = load i32, ptr %78, align 4
  %104 = and i32 %103, 65535
  %105 = getelementptr i8, ptr %63, i32 %104
  %106 = call ptr @strcpy(ptr noundef %105, ptr noundef %38)
  %107 = load i32, ptr %6, align 4
  %108 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %63, i32 noundef %62, i32 noundef %107, ptr noundef %0, i64 noundef 1, ptr noundef %108, ptr noundef %51, ptr noundef null) #26
  br label %109

109:                                              ; preds = %97, %58, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regmap_bool(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %13, label %64, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %29

26:                                               ; preds = %18
  %27 = load ptr, ptr %16, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %22
  %30 = phi ptr [ %24, %22 ], [ %27, %26 ]
  br label %31

31:                                               ; preds = %29, %26, %22, %18
  %32 = phi ptr [ @.str.18, %22 ], [ @.str.18, %26 ], [ %30, %29 ], [ %20, %18 ]
  %33 = tail call i32 @strlen(ptr noundef nonnull %32) #26
  %34 = add i32 %33, 17
  %35 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %34) #26
  %36 = icmp eq ptr %35, null
  br i1 %36, label %64, label %37

37:                                               ; preds = %31
  %38 = shl i32 %33, 16
  %39 = add i32 %38, 65552
  %40 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %35, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr i8, ptr %35, i32 16
  %42 = load ptr, ptr %15, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %59

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %57

52:                                               ; preds = %44
  %53 = load ptr, ptr %42, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %42, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = phi ptr [ %56, %55 ], [ %50, %48 ]
  br label %59

59:                                               ; preds = %57, %52, %48, %44
  %60 = phi ptr [ @.str.18, %48 ], [ @.str.18, %52 ], [ %58, %57 ], [ %46, %44 ]
  %61 = call ptr @strcpy(ptr noundef %41, ptr noundef %60)
  %62 = zext i1 %2 to i32
  %63 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %35, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #26
  br label %64

64:                                               ; preds = %59, %31, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regmap_bool(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %15, %13 ], [ %18, %17 ]
  br label %22

22:                                               ; preds = %20, %17, %13, %9
  %23 = phi ptr [ @.str.18, %13 ], [ @.str.18, %17 ], [ %21, %20 ], [ %11, %9 ]
  %24 = tail call i32 @strlen(ptr noundef nonnull %23) #26
  %25 = shl i32 %24, 16
  %26 = add i32 %25, 65552
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #21, !srcloc !12
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %22
  %39 = load volatile ptr, ptr %34, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %84, label %41

41:                                               ; preds = %38, %22
  %42 = add i32 %24, 28
  %43 = and i32 %42, -8
  %44 = add i32 %43, -4
  %45 = call ptr @perf_trace_buf_alloc(i32 noundef %44, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %46 = icmp eq ptr %45, null
  br i1 %46, label %84, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %4, align 4
  %49 = call ptr @llvm.returnaddress(i32 0) #26
  %50 = ptrtoint ptr %49 to i32
  %51 = getelementptr [18 x i32], ptr %48, i32 0, i32 15
  store i32 %50, ptr %51, align 4
  %52 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %53 = ptrtoint ptr %52 to i32
  %54 = getelementptr [18 x i32], ptr %48, i32 0, i32 11
  store i32 %53, ptr %54, align 4
  %55 = call i32 @llvm.read_register.i32(metadata !0) #26
  %56 = getelementptr [18 x i32], ptr %48, i32 0, i32 13
  store i32 %55, ptr %56, align 4
  %57 = getelementptr [18 x i32], ptr %48, i32 0, i32 16
  store i32 19, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %45, i32 0, i32 1
  store i32 %26, ptr %58, align 4
  %59 = getelementptr i8, ptr %45, i32 16
  %60 = load ptr, ptr %6, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %77

66:                                               ; preds = %47
  %67 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %75

70:                                               ; preds = %62
  %71 = load ptr, ptr %60, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %60, align 4
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi ptr [ %74, %73 ], [ %68, %66 ]
  br label %77

77:                                               ; preds = %75, %70, %66, %62
  %78 = phi ptr [ @.str.18, %66 ], [ @.str.18, %70 ], [ %76, %75 ], [ %64, %62 ]
  %79 = call ptr @strcpy(ptr noundef %59, ptr noundef %78)
  %80 = zext i1 %2 to i32
  %81 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %45, i32 0, i32 2
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %5, align 4
  %83 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %45, i32 noundef %44, i32 noundef %82, ptr noundef %0, i64 noundef 1, ptr noundef %83, ptr noundef %34, ptr noundef null) #26
  br label %84

84:                                               ; preds = %77, %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regmap_async(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %12, label %61, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %30

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %28

25:                                               ; preds = %17
  %26 = load ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %23, %21 ], [ %26, %25 ]
  br label %30

30:                                               ; preds = %28, %25, %21, %17
  %31 = phi ptr [ @.str.18, %21 ], [ @.str.18, %25 ], [ %29, %28 ], [ %19, %17 ]
  %32 = tail call i32 @strlen(ptr noundef nonnull %31) #26
  %33 = add i32 %32, 13
  %34 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %33) #26
  %35 = icmp eq ptr %34, null
  br i1 %35, label %61, label %36

36:                                               ; preds = %30
  %37 = shl i32 %32, 16
  %38 = add i32 %37, 65548
  %39 = getelementptr inbounds %struct.trace_event_raw_regmap_async, ptr %34, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %34, i32 12
  %41 = load ptr, ptr %14, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %58

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %56

51:                                               ; preds = %43
  %52 = load ptr, ptr %41, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %41, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = phi ptr [ %55, %54 ], [ %49, %47 ]
  br label %58

58:                                               ; preds = %56, %51, %47, %43
  %59 = phi ptr [ @.str.18, %47 ], [ @.str.18, %51 ], [ %57, %56 ], [ %45, %43 ]
  %60 = call ptr @strcpy(ptr noundef %40, ptr noundef %59)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #26
  br label %61

61:                                               ; preds = %58, %30, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regmap_async(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %19

16:                                               ; preds = %8
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %14, %12 ], [ %17, %16 ]
  br label %21

21:                                               ; preds = %19, %16, %12, %8
  %22 = phi ptr [ @.str.18, %12 ], [ @.str.18, %16 ], [ %20, %19 ], [ %10, %8 ]
  %23 = tail call i32 @strlen(ptr noundef nonnull %22) #26
  %24 = shl i32 %23, 16
  %25 = add i32 %24, 65548
  %26 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #21, !srcloc !12
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %21
  %38 = load volatile ptr, ptr %33, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %81, label %40

40:                                               ; preds = %37, %21
  %41 = add i32 %23, 24
  %42 = and i32 %41, -8
  %43 = add i32 %42, -4
  %44 = call ptr @perf_trace_buf_alloc(i32 noundef %43, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %3, align 4
  %48 = call ptr @llvm.returnaddress(i32 0) #26
  %49 = ptrtoint ptr %48 to i32
  %50 = getelementptr [18 x i32], ptr %47, i32 0, i32 15
  store i32 %49, ptr %50, align 4
  %51 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %52 = ptrtoint ptr %51 to i32
  %53 = getelementptr [18 x i32], ptr %47, i32 0, i32 11
  store i32 %52, ptr %53, align 4
  %54 = call i32 @llvm.read_register.i32(metadata !0) #26
  %55 = getelementptr [18 x i32], ptr %47, i32 0, i32 13
  store i32 %54, ptr %55, align 4
  %56 = getelementptr [18 x i32], ptr %47, i32 0, i32 16
  store i32 19, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_regmap_async, ptr %44, i32 0, i32 1
  store i32 %25, ptr %57, align 4
  %58 = getelementptr i8, ptr %44, i32 12
  %59 = load ptr, ptr %5, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %76

65:                                               ; preds = %46
  %66 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %74

69:                                               ; preds = %61
  %70 = load ptr, ptr %59, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %59, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi ptr [ %73, %72 ], [ %67, %65 ]
  br label %76

76:                                               ; preds = %74, %69, %65, %61
  %77 = phi ptr [ @.str.18, %65 ], [ @.str.18, %69 ], [ %75, %74 ], [ %63, %61 ]
  %78 = call ptr @strcpy(ptr noundef %58, ptr noundef %77)
  %79 = load i32, ptr %4, align 4
  %80 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %44, i32 noundef %43, i32 noundef %79, ptr noundef %0, i64 noundef 1, ptr noundef %80, ptr noundef %33, ptr noundef null) #26
  br label %81

81:                                               ; preds = %76, %40, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regcache_drop_region(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %14, label %65, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %32

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %30

27:                                               ; preds = %19
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27, %23
  %31 = phi ptr [ %25, %23 ], [ %28, %27 ]
  br label %32

32:                                               ; preds = %30, %27, %23, %19
  %33 = phi ptr [ @.str.18, %23 ], [ @.str.18, %27 ], [ %31, %30 ], [ %21, %19 ]
  %34 = tail call i32 @strlen(ptr noundef nonnull %33) #26
  %35 = add i32 %34, 21
  %36 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %35) #26
  %37 = icmp eq ptr %36, null
  br i1 %37, label %65, label %38

38:                                               ; preds = %32
  %39 = shl i32 %34, 16
  %40 = add i32 %39, 65556
  %41 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %36, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr i8, ptr %36, i32 20
  %43 = load ptr, ptr %16, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %60

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %58

53:                                               ; preds = %45
  %54 = load ptr, ptr %43, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %43, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi ptr [ %57, %56 ], [ %51, %49 ]
  br label %60

60:                                               ; preds = %58, %53, %49, %45
  %61 = phi ptr [ @.str.18, %49 ], [ @.str.18, %53 ], [ %59, %58 ], [ %47, %45 ]
  %62 = call ptr @strcpy(ptr noundef %42, ptr noundef %61)
  %63 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %36, i32 0, i32 2
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %36, i32 0, i32 3
  store i32 %3, ptr %64, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #26
  br label %65

65:                                               ; preds = %60, %32, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regcache_drop_region(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %23

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %16, %14 ], [ %19, %18 ]
  br label %23

23:                                               ; preds = %21, %18, %14, %10
  %24 = phi ptr [ @.str.18, %14 ], [ @.str.18, %18 ], [ %22, %21 ], [ %12, %10 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #26
  %26 = shl i32 %25, 16
  %27 = add i32 %26, 65556
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #21, !srcloc !12
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load volatile ptr, ptr %35, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %39, %23
  %43 = add i32 %25, 32
  %44 = and i32 %43, -8
  %45 = add i32 %44, -4
  %46 = call ptr @perf_trace_buf_alloc(i32 noundef %45, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 4
  %50 = call ptr @llvm.returnaddress(i32 0) #26
  %51 = ptrtoint ptr %50 to i32
  %52 = getelementptr [18 x i32], ptr %49, i32 0, i32 15
  store i32 %51, ptr %52, align 4
  %53 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr [18 x i32], ptr %49, i32 0, i32 11
  store i32 %54, ptr %55, align 4
  %56 = call i32 @llvm.read_register.i32(metadata !0) #26
  %57 = getelementptr [18 x i32], ptr %49, i32 0, i32 13
  store i32 %56, ptr %57, align 4
  %58 = getelementptr [18 x i32], ptr %49, i32 0, i32 16
  store i32 19, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %46, i32 0, i32 1
  store i32 %27, ptr %59, align 4
  %60 = getelementptr i8, ptr %46, i32 20
  %61 = load ptr, ptr %7, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %78

67:                                               ; preds = %48
  %68 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %76

71:                                               ; preds = %63
  %72 = load ptr, ptr %61, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %61, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi ptr [ %75, %74 ], [ %69, %67 ]
  br label %78

78:                                               ; preds = %76, %71, %67, %63
  %79 = phi ptr [ @.str.18, %67 ], [ @.str.18, %71 ], [ %77, %76 ], [ %65, %63 ]
  %80 = call ptr @strcpy(ptr noundef %60, ptr noundef %79)
  %81 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %46, i32 0, i32 2
  store i32 %2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %46, i32 0, i32 3
  store i32 %3, ptr %82, align 4
  %83 = load i32, ptr %6, align 4
  %84 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %46, i32 noundef %45, i32 noundef %83, ptr noundef %0, i64 noundef 1, ptr noundef %84, ptr noundef %35, ptr noundef null) #26
  br label %85

85:                                               ; preds = %78, %42, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_reg_in_ranges(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %15, %3
  %6 = phi i1 [ %18, %15 ], [ true, %3 ]
  %7 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %8 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.regmap_range, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %13, %0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %5
  %16 = add nuw i32 %7, 1
  %17 = getelementptr %struct.regmap_range, ptr %8, i32 1
  %18 = icmp ult i32 %16, %2
  %19 = icmp eq i32 %16, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %15, %11, %3
  %21 = phi i1 [ false, %3 ], [ %18, %15 ], [ %6, %11 ]
  ret i1 %21
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_check_range_table(ptr nocapture readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.regmap_access_table, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap_access_table, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i1 [ %23, %20 ], [ true, %7 ]
  %12 = phi i32 [ %21, %20 ], [ 0, %7 ]
  %13 = phi ptr [ %22, %20 ], [ %9, %7 ]
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regmap_range, ptr %13, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %10
  %21 = add nuw i32 %12, 1
  %22 = getelementptr %struct.regmap_range, ptr %13, i32 1
  %23 = icmp ult i32 %21, %5
  %24 = icmp eq i32 %21, %5
  br i1 %24, label %25, label %10

25:                                               ; preds = %20, %16
  %26 = phi i1 [ %23, %20 ], [ %11, %16 ]
  br i1 %26, label %48, label %27

27:                                               ; preds = %25, %3
  %28 = getelementptr inbounds %struct.regmap_access_table, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 4
  br label %33

33:                                               ; preds = %43, %31
  %34 = phi i1 [ %46, %43 ], [ true, %31 ]
  %35 = phi i32 [ %44, %43 ], [ 0, %31 ]
  %36 = phi ptr [ %45, %43 ], [ %32, %31 ]
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %1
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.regmap_range, ptr %36, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, %1
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %33
  %44 = add nuw i32 %35, 1
  %45 = getelementptr %struct.regmap_range, ptr %36, i32 1
  %46 = icmp ult i32 %44, %29
  %47 = icmp eq i32 %44, %29
  br i1 %47, label %48, label %33

48:                                               ; preds = %43, %39, %27, %25
  %49 = phi i1 [ false, %25 ], [ true, %27 ], [ %34, %39 ], [ %46, %43 ]
  ret i1 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_writeable(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = icmp ult i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %65, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %10(ptr noundef %14, i32 noundef %1) #26
  br label %65

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 32
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap_access_table, ptr %18, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.regmap_access_table, ptr %18, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %37, %24
  %28 = phi i1 [ %40, %37 ], [ true, %24 ]
  %29 = phi i32 [ %38, %37 ], [ 0, %24 ]
  %30 = phi ptr [ %39, %37 ], [ %26, %24 ]
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %1
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.regmap_range, ptr %30, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %27
  %38 = add nuw i32 %29, 1
  %39 = getelementptr %struct.regmap_range, ptr %30, i32 1
  %40 = icmp ult i32 %38, %22
  %41 = icmp eq i32 %38, %22
  br i1 %41, label %42, label %27

42:                                               ; preds = %37, %33
  %43 = phi i1 [ %40, %37 ], [ %28, %33 ]
  br i1 %43, label %65, label %44

44:                                               ; preds = %42, %20
  %45 = getelementptr inbounds %struct.regmap_access_table, ptr %18, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %18, align 4
  br label %50

50:                                               ; preds = %60, %48
  %51 = phi i1 [ %63, %60 ], [ true, %48 ]
  %52 = phi i32 [ %61, %60 ], [ 0, %48 ]
  %53 = phi ptr [ %62, %60 ], [ %49, %48 ]
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %1
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.regmap_range, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = add nuw i32 %52, 1
  %62 = getelementptr %struct.regmap_range, ptr %53, i32 1
  %63 = icmp ult i32 %61, %46
  %64 = icmp eq i32 %61, %46
  br i1 %64, label %65, label %50

65:                                               ; preds = %60, %56, %44, %42, %16, %12, %2
  %66 = phi i1 [ %15, %12 ], [ false, %2 ], [ true, %16 ], [ false, %42 ], [ true, %44 ], [ %63, %60 ], [ %51, %56 ]
  ret i1 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_cached(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = icmp ult i32 %13, %1
  %16 = and i1 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  tail call void %19(ptr noundef %21) #26
  %22 = call i32 @regcache_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #26
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %20, align 4
  call void %24(ptr noundef %25) #26
  %26 = icmp eq i32 %22, 0
  br label %27

27:                                               ; preds = %17, %11, %7, %2
  %28 = phi i1 [ false, %2 ], [ false, %7 ], [ false, %11 ], [ %26, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_readable(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp ult i32 %8, %1
  %11 = and i1 %9, %10
  br i1 %11, label %73, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 %18(ptr noundef %22, i32 noundef %1) #26
  br label %73

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 33
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %73, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %45, %32
  %36 = phi i1 [ %48, %45 ], [ true, %32 ]
  %37 = phi i32 [ %46, %45 ], [ 0, %32 ]
  %38 = phi ptr [ %47, %45 ], [ %34, %32 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %1
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.regmap_range, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %35
  %46 = add nuw i32 %37, 1
  %47 = getelementptr %struct.regmap_range, ptr %38, i32 1
  %48 = icmp ult i32 %46, %30
  %49 = icmp eq i32 %46, %30
  br i1 %49, label %50, label %35

50:                                               ; preds = %45, %41
  %51 = phi i1 [ %48, %45 ], [ %36, %41 ]
  br i1 %51, label %73, label %52

52:                                               ; preds = %50, %28
  %53 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %26, align 4
  br label %58

58:                                               ; preds = %68, %56
  %59 = phi i1 [ %71, %68 ], [ true, %56 ]
  %60 = phi i32 [ %69, %68 ], [ 0, %56 ]
  %61 = phi ptr [ %70, %68 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, %1
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.regmap_range, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %1
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %58
  %69 = add nuw i32 %60, 1
  %70 = getelementptr %struct.regmap_range, ptr %61, i32 1
  %71 = icmp ult i32 %69, %54
  %72 = icmp eq i32 %69, %54
  br i1 %72, label %73, label %58

73:                                               ; preds = %68, %64, %52, %50, %24, %20, %12, %6, %2
  %74 = phi i1 [ %23, %20 ], [ false, %2 ], [ false, %6 ], [ false, %12 ], [ true, %24 ], [ false, %50 ], [ true, %52 ], [ %71, %68 ], [ %59, %64 ]
  ret i1 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_volatile(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 38
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %136, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %12, %1
  %15 = and i1 %13, %14
  br i1 %15, label %136, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 %18(ptr noundef %22, i32 noundef %1) #26
  br i1 %23, label %75, label %136

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 33
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %75, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %45, %32
  %36 = phi i1 [ %48, %45 ], [ true, %32 ]
  %37 = phi i32 [ %46, %45 ], [ 0, %32 ]
  %38 = phi ptr [ %47, %45 ], [ %34, %32 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %1
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.regmap_range, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %35
  %46 = add nuw i32 %37, 1
  %47 = getelementptr %struct.regmap_range, ptr %38, i32 1
  %48 = icmp ult i32 %46, %30
  %49 = icmp eq i32 %46, %30
  br i1 %49, label %50, label %35

50:                                               ; preds = %45, %41
  %51 = phi i1 [ %48, %45 ], [ %36, %41 ]
  br i1 %51, label %136, label %52

52:                                               ; preds = %50, %28
  %53 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %26, align 4
  br label %58

58:                                               ; preds = %68, %56
  %59 = phi i1 [ %71, %68 ], [ true, %56 ]
  %60 = phi i32 [ %69, %68 ], [ 0, %56 ]
  %61 = phi ptr [ %70, %68 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, %1
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.regmap_range, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %1
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %58
  %69 = add nuw i32 %60, 1
  %70 = getelementptr %struct.regmap_range, ptr %61, i32 1
  %71 = icmp ult i32 %69, %54
  %72 = icmp eq i32 %69, %54
  br i1 %72, label %73, label %58

73:                                               ; preds = %68, %64
  %74 = phi i1 [ %71, %68 ], [ %59, %64 ]
  br i1 %74, label %75, label %136

75:                                               ; preds = %73, %52, %24, %20, %2
  %76 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 28
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = tail call zeroext i1 %77(ptr noundef %81, i32 noundef %1) #26
  br label %136

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 34
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %132, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %104, %91
  %95 = phi i1 [ %107, %104 ], [ true, %91 ]
  %96 = phi i32 [ %105, %104 ], [ 0, %91 ]
  %97 = phi ptr [ %106, %104 ], [ %93, %91 ]
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %98, %1
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.regmap_range, ptr %97, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp ult i32 %102, %1
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %94
  %105 = add nuw i32 %96, 1
  %106 = getelementptr %struct.regmap_range, ptr %97, i32 1
  %107 = icmp ult i32 %105, %89
  %108 = icmp eq i32 %105, %89
  br i1 %108, label %109, label %94

109:                                              ; preds = %104, %100
  %110 = phi i1 [ %107, %104 ], [ %95, %100 ]
  br i1 %110, label %136, label %111

111:                                              ; preds = %109, %87
  %112 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %85, align 4
  br label %117

117:                                              ; preds = %127, %115
  %118 = phi i1 [ %130, %127 ], [ true, %115 ]
  %119 = phi i32 [ %128, %127 ], [ 0, %115 ]
  %120 = phi ptr [ %129, %127 ], [ %116, %115 ]
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %1
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.regmap_range, ptr %120, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp ult i32 %125, %1
  br i1 %126, label %127, label %136

127:                                              ; preds = %123, %117
  %128 = add nuw i32 %119, 1
  %129 = getelementptr %struct.regmap_range, ptr %120, i32 1
  %130 = icmp ult i32 %128, %113
  %131 = icmp eq i32 %128, %113
  br i1 %131, label %136, label %117

132:                                              ; preds = %83
  %133 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br label %136

136:                                              ; preds = %132, %127, %123, %111, %109, %79, %73, %50, %20, %10, %6
  %137 = phi i1 [ %82, %79 ], [ false, %73 ], [ %135, %132 ], [ false, %20 ], [ false, %109 ], [ true, %111 ], [ false, %6 ], [ false, %10 ], [ false, %50 ], [ %130, %127 ], [ %118, %123 ]
  ret i1 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_precious(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %132, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = icmp ult i32 %8, %1
  %11 = and i1 %9, %10
  br i1 %11, label %132, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %132

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 %18(ptr noundef %22, i32 noundef %1) #26
  br i1 %23, label %75, label %132

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 33
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %75, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %45, %32
  %36 = phi i1 [ %48, %45 ], [ true, %32 ]
  %37 = phi i32 [ %46, %45 ], [ 0, %32 ]
  %38 = phi ptr [ %47, %45 ], [ %34, %32 ]
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %1
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.regmap_range, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %1
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %35
  %46 = add nuw i32 %37, 1
  %47 = getelementptr %struct.regmap_range, ptr %38, i32 1
  %48 = icmp ult i32 %46, %30
  %49 = icmp eq i32 %46, %30
  br i1 %49, label %50, label %35

50:                                               ; preds = %45, %41
  %51 = phi i1 [ %48, %45 ], [ %36, %41 ]
  br i1 %51, label %132, label %52

52:                                               ; preds = %50, %28
  %53 = getelementptr inbounds %struct.regmap_access_table, ptr %26, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %26, align 4
  br label %58

58:                                               ; preds = %68, %56
  %59 = phi i1 [ %71, %68 ], [ true, %56 ]
  %60 = phi i32 [ %69, %68 ], [ 0, %56 ]
  %61 = phi ptr [ %70, %68 ], [ %57, %56 ]
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, %1
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.regmap_range, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, %1
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %58
  %69 = add nuw i32 %60, 1
  %70 = getelementptr %struct.regmap_range, ptr %61, i32 1
  %71 = icmp ult i32 %69, %54
  %72 = icmp eq i32 %69, %54
  br i1 %72, label %73, label %58

73:                                               ; preds = %68, %64
  %74 = phi i1 [ %71, %68 ], [ %59, %64 ]
  br i1 %74, label %75, label %132

75:                                               ; preds = %73, %52, %24, %20
  %76 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 29
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = tail call zeroext i1 %77(ptr noundef %81, i32 noundef %1) #26
  br label %132

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 35
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %132, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %104, %91
  %95 = phi i1 [ %107, %104 ], [ true, %91 ]
  %96 = phi i32 [ %105, %104 ], [ 0, %91 ]
  %97 = phi ptr [ %106, %104 ], [ %93, %91 ]
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %98, %1
  br i1 %99, label %104, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.regmap_range, ptr %97, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp ult i32 %102, %1
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %94
  %105 = add nuw i32 %96, 1
  %106 = getelementptr %struct.regmap_range, ptr %97, i32 1
  %107 = icmp ult i32 %105, %89
  %108 = icmp eq i32 %105, %89
  br i1 %108, label %109, label %94

109:                                              ; preds = %104, %100
  %110 = phi i1 [ %107, %104 ], [ %95, %100 ]
  br i1 %110, label %132, label %111

111:                                              ; preds = %109, %87
  %112 = getelementptr inbounds %struct.regmap_access_table, ptr %85, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %85, align 4
  br label %117

117:                                              ; preds = %127, %115
  %118 = phi i1 [ %130, %127 ], [ true, %115 ]
  %119 = phi i32 [ %128, %127 ], [ 0, %115 ]
  %120 = phi ptr [ %129, %127 ], [ %116, %115 ]
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %1
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.regmap_range, ptr %120, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp ult i32 %125, %1
  br i1 %126, label %127, label %132

127:                                              ; preds = %123, %117
  %128 = add nuw i32 %119, 1
  %129 = getelementptr %struct.regmap_range, ptr %120, i32 1
  %130 = icmp ult i32 %128, %113
  %131 = icmp eq i32 %128, %113
  br i1 %131, label %132, label %117

132:                                              ; preds = %127, %123, %111, %109, %83, %79, %73, %50, %20, %12, %6, %2
  %133 = phi i1 [ %82, %79 ], [ false, %73 ], [ false, %83 ], [ false, %20 ], [ false, %109 ], [ true, %111 ], [ false, %2 ], [ false, %6 ], [ false, %12 ], [ false, %50 ], [ %130, %127 ], [ %118, %123 ]
  ret i1 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_writeable_noinc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 %4(ptr noundef %8, i32 noundef %1) #26
  br label %59

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 36
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %31, %18
  %22 = phi i1 [ %34, %31 ], [ true, %18 ]
  %23 = phi i32 [ %32, %31 ], [ 0, %18 ]
  %24 = phi ptr [ %33, %31 ], [ %20, %18 ]
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.regmap_range, ptr %24, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %21
  %32 = add nuw i32 %23, 1
  %33 = getelementptr %struct.regmap_range, ptr %24, i32 1
  %34 = icmp ult i32 %32, %16
  %35 = icmp eq i32 %32, %16
  br i1 %35, label %36, label %21

36:                                               ; preds = %31, %27
  %37 = phi i1 [ %34, %31 ], [ %22, %27 ]
  br i1 %37, label %59, label %38

38:                                               ; preds = %36, %14
  %39 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %12, align 4
  br label %44

44:                                               ; preds = %54, %42
  %45 = phi i1 [ %57, %54 ], [ true, %42 ]
  %46 = phi i32 [ %55, %54 ], [ 0, %42 ]
  %47 = phi ptr [ %56, %54 ], [ %43, %42 ]
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, %1
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.regmap_range, ptr %47, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %44
  %55 = add nuw i32 %46, 1
  %56 = getelementptr %struct.regmap_range, ptr %47, i32 1
  %57 = icmp ult i32 %55, %40
  %58 = icmp eq i32 %55, %40
  br i1 %58, label %59, label %44

59:                                               ; preds = %54, %50, %38, %36, %10, %6
  %60 = phi i1 [ %9, %6 ], [ true, %10 ], [ false, %36 ], [ true, %38 ], [ %57, %54 ], [ %45, %50 ]
  ret i1 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @regmap_readable_noinc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 %4(ptr noundef %8, i32 noundef %1) #26
  br label %59

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 37
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %31, %18
  %22 = phi i1 [ %34, %31 ], [ true, %18 ]
  %23 = phi i32 [ %32, %31 ], [ 0, %18 ]
  %24 = phi ptr [ %33, %31 ], [ %20, %18 ]
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.regmap_range, ptr %24, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %21
  %32 = add nuw i32 %23, 1
  %33 = getelementptr %struct.regmap_range, ptr %24, i32 1
  %34 = icmp ult i32 %32, %16
  %35 = icmp eq i32 %32, %16
  br i1 %35, label %36, label %21

36:                                               ; preds = %31, %27
  %37 = phi i1 [ %34, %31 ], [ %22, %27 ]
  br i1 %37, label %59, label %38

38:                                               ; preds = %36, %14
  %39 = getelementptr inbounds %struct.regmap_access_table, ptr %12, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %12, align 4
  br label %44

44:                                               ; preds = %54, %42
  %45 = phi i1 [ %57, %54 ], [ true, %42 ]
  %46 = phi i32 [ %55, %54 ], [ 0, %42 ]
  %47 = phi ptr [ %56, %54 ], [ %43, %42 ]
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, %1
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.regmap_range, ptr %47, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp ult i32 %52, %1
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %44
  %55 = add nuw i32 %46, 1
  %56 = getelementptr %struct.regmap_range, ptr %47, i32 1
  %57 = icmp ult i32 %55, %40
  %58 = icmp eq i32 %55, %40
  br i1 %58, label %59, label %44

59:                                               ; preds = %54, %50, %38, %36, %10, %6
  %60 = phi i1 [ %9, %6 ], [ true, %10 ], [ false, %36 ], [ true, %38 ], [ %57, %54 ], [ %45, %50 ]
  ret i1 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_attach_dev(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 5
  store ptr %0, ptr %4, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @kstrdup_const(ptr noundef nonnull %5, i32 noundef 3264) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.regmap, ptr %1, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree_const(ptr noundef %12) #26
  store ptr %8, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %3
  tail call void @regmap_debugfs_exit(ptr noundef %1) #26
  tail call void @regmap_debugfs_init(ptr noundef %1) #26
  %14 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @dev_get_regmap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #26
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @regmap_debugfs_exit(ptr noundef %1) #26
  br label %18

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %14) #26
  br label %18

18:                                               ; preds = %17, %16, %7
  %19 = phi i32 [ 0, %17 ], [ -12, %16 ], [ -12, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_debugfs_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dev_get_regmap_release(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_get_val_endian(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @dev_fwnode(ptr noundef nonnull %0) #26
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  %9 = getelementptr inbounds %struct.regmap_config, ptr %2, i32 0, i32 39
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @fwnode_property_present(ptr noundef %8, ptr noundef nonnull @.str.1) #26
  br i1 %13, label %25, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @fwnode_property_present(ptr noundef %8, ptr noundef nonnull @.str.2) #26
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @fwnode_property_present(ptr noundef %8, ptr noundef nonnull @.str.3) #26
  br i1 %17, label %25, label %18

18:                                               ; preds = %16
  %19 = icmp eq ptr %1, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %18
  br label %25

25:                                               ; preds = %24, %20, %16, %14, %12, %7
  %26 = phi i32 [ %10, %7 ], [ 3, %16 ], [ 1, %24 ], [ %22, %20 ], [ 2, %14 ], [ 1, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__regmap_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5) #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %591, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 352) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %591, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @kstrdup_const(ptr noundef nonnull %13, i32 noundef 3264) #26
  %17 = icmp eq ptr %16, null
  br i1 %17, label %589, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  tail call void @kfree_const(ptr noundef %20) #26
  store ptr %16, ptr %19, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 11
  %23 = load i8, ptr %22, align 4, !range !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr @regmap_lock_unlock_none, ptr %26, align 8
  %27 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 1
  store ptr @regmap_lock_unlock_none, ptr %27, align 4
  %28 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 46
  %29 = load i8, ptr %28, align 4, !range !13
  %30 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 71
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 17
  store i8 1, ptr %31, align 4
  br label %89

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 1
  store ptr %34, ptr %41, align 4
  %42 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr %38, ptr %42, align 8
  %43 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 14
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 3
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 46
  %47 = load i8, ptr %46, align 4, !range !13
  %48 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 71
  store i8 %47, ptr %48, align 4
  br label %89

49:                                               ; preds = %36, %32
  %50 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 42
  %51 = load i8, ptr %50, align 4, !range !13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 70
  store ptr inttoptr (i32 -19 to ptr), ptr %54, align 8
  %55 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 45
  %56 = load i32, ptr %55, align 4
  switch i32 %56, label %58 [
    i32 1, label %59
    i32 2, label %57
  ]

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %57, %53
  %60 = phi ptr [ @regmap_lock_hwlock, %58 ], [ @regmap_lock_hwlock_irq, %57 ], [ @regmap_lock_hwlock_irqsave, %53 ]
  %61 = phi ptr [ @regmap_unlock_hwlock, %58 ], [ @regmap_unlock_hwlock_irq, %57 ], [ @regmap_unlock_hwlock_irqrestore, %53 ]
  %62 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  %63 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr %61, ptr %63, align 8
  %64 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 3
  store ptr %10, ptr %64, align 4
  br label %89

65:                                               ; preds = %49
  %66 = icmp eq ptr %1, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = load i8, ptr %1, align 4, !range !13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %65
  %71 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 18
  %72 = load i8, ptr %71, align 4, !range !13
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70, %67
  %75 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 43
  %76 = load i8, ptr %75, align 1, !range !13
  %77 = icmp eq i8 %76, 0
  store i32 0, ptr %10, align 8
  %78 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 1
  br i1 %77, label %81, label %79

79:                                               ; preds = %74
  store ptr @regmap_lock_raw_spinlock, ptr %78, align 4
  %80 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr @regmap_unlock_raw_spinlock, ptr %80, align 8
  br label %87

81:                                               ; preds = %74
  store ptr @regmap_lock_spinlock, ptr %78, align 4
  %82 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr @regmap_unlock_spinlock, ptr %82, align 8
  br label %87

83:                                               ; preds = %70
  tail call void @__mutex_init(ptr noundef nonnull %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @__regmap_init.__key) #26
  %84 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 1
  store ptr @regmap_lock_mutex, ptr %84, align 4
  %85 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 2
  store ptr @regmap_unlock_mutex, ptr %85, align 8
  %86 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 71
  store i8 1, ptr %86, align 4
  br label %87

87:                                               ; preds = %83, %81, %79
  %88 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 3
  store ptr %10, ptr %88, align 4
  br label %89

89:                                               ; preds = %87, %59, %40, %25
  %90 = icmp ne ptr %1, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8, ptr %1, align 4, !range !13
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91, %89
  %95 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 18
  %96 = load i8, ptr %95, align 4, !range !13
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i32 3264, i32 2592
  br label %99

99:                                               ; preds = %94, %91
  %100 = phi i32 [ 2592, %91 ], [ %98, %94 ]
  %101 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 4
  store i32 %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 7
  %105 = sdiv i32 %104, 8
  %106 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7
  %107 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 1
  store i32 %105, ptr %107, align 8
  %108 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = freeze i32 %109
  %111 = sdiv i32 %110, 8
  %112 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 2
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 4
  %114 = load i32, ptr %113, align 4
  %115 = add i32 %114, 7
  %116 = sdiv i32 %115, 8
  %117 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 3
  store i32 %116, ptr %117, align 8
  %118 = add i32 %104, %109
  %119 = add i32 %118, %114
  %120 = sdiv i32 %119, 8
  store i32 %120, ptr %106, align 4
  %121 = mul i32 %111, 8
  %122 = sub i32 %110, %121
  %123 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 44
  store i32 %122, ptr %123, align 4
  %124 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 2
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 1, i32 %125
  %128 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 45
  store i32 %127, ptr %128, align 8
  %129 = tail call i32 @llvm.ctpop.i32(i32 %127) #26, !range !14
  %130 = icmp eq i32 %129, 1
  %131 = tail call i32 @llvm.ctlz.i32(i32 %127, i1 true) #26, !range !14
  %132 = xor i32 %131, 31
  %133 = select i1 %130, i32 %132, i32 -1
  %134 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 46
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 34
  %136 = load i8, ptr %135, align 1, !range !13
  %137 = icmp eq i8 %136, 0
  %138 = and i1 %90, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %99
  %140 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 6
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br label %143

143:                                              ; preds = %139, %99
  %144 = phi i1 [ true, %99 ], [ %142, %139 ]
  %145 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 63
  %146 = zext i1 %144 to i8
  store i8 %146, ptr %145, align 4
  %147 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 35
  %148 = load i8, ptr %147, align 2, !range !13
  %149 = icmp eq i8 %148, 0
  %150 = and i1 %90, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi i1 [ true, %143 ], [ %154, %151 ]
  %157 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 64
  %158 = zext i1 %156 to i8
  store i8 %158, ptr %157, align 1
  %159 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 37
  %160 = load i8, ptr %159, align 4, !range !13
  %161 = icmp ne i8 %160, 0
  %162 = and i1 %90, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp ne ptr %165, null
  br label %167

167:                                              ; preds = %163, %155
  %168 = phi i1 [ false, %155 ], [ %166, %163 ]
  %169 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 65
  %170 = zext i1 %168 to i8
  store i8 %170, ptr %169, align 2
  br i1 %90, label %171, label %178

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 13
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 66
  store i32 %173, ptr %174, align 8
  %175 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 14
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 67
  store i32 %176, ptr %177, align 4
  br label %178

178:                                              ; preds = %171, %167
  %179 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 5
  store ptr %0, ptr %179, align 4
  %180 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 8
  store ptr %1, ptr %180, align 8
  %181 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 9
  store ptr %2, ptr %181, align 4
  %182 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 19
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 25
  store i32 %183, ptr %184, align 8
  %185 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 20
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 32
  store ptr %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 21
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 33
  store ptr %189, ptr %190, align 8
  %191 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 22
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 34
  store ptr %192, ptr %193, align 4
  %194 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 23
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 35
  store ptr %195, ptr %196, align 8
  %197 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 24
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 36
  store ptr %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 25
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 37
  store ptr %201, ptr %202, align 8
  %203 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 5
  %204 = load ptr, ptr %203, align 4
  %205 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 26
  store ptr %204, ptr %205, align 4
  %206 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 6
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 27
  store ptr %207, ptr %208, align 8
  %209 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 7
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 28
  store ptr %210, ptr %211, align 4
  %212 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 8
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 29
  store ptr %213, ptr %214, align 8
  %215 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 9
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 30
  store ptr %216, ptr %217, align 4
  %218 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 10
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 31
  store ptr %219, ptr %220, align 8
  %221 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 28
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 48
  store i32 %222, ptr %223, align 4
  %224 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 12
  store i32 0, ptr %224, align 8
  %225 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 14
  store volatile ptr %225, ptr %225, align 8
  %226 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 14, i32 1
  store ptr %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 15
  store volatile ptr %227, ptr %227, align 8
  %228 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 15, i32 1
  store ptr %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %229, ptr noundef nonnull @.str.6, ptr noundef nonnull @__regmap_init.__key.5) #26
  %230 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 31
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  %233 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 32
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %232, i1 %235, i1 false
  br i1 %236, label %237, label %241

237:                                              ; preds = %178
  %238 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 33
  %239 = load i8, ptr %238, align 4, !range !13
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237, %178
  %242 = phi i32 [ 0, %237 ], [ %234, %178 ]
  %243 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 42
  store i32 %231, ptr %243, align 4
  %244 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 43
  store i32 %242, ptr %244, align 8
  br i1 %90, label %262, label %251

245:                                              ; preds = %237
  br i1 %90, label %246, label %251

246:                                              ; preds = %245
  %247 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 10
  %248 = load i8, ptr %247, align 4
  %249 = zext i8 %248 to i32
  %250 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 42
  store i32 %249, ptr %250, align 4
  br label %262

251:                                              ; preds = %245, %241
  %252 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 15
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 38
  store ptr %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 16
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 39
  store ptr %256, ptr %257, align 8
  %258 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 17
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 40
  store ptr %259, ptr %260, align 4
  %261 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 41
  store i8 0, ptr %261, align 8
  br label %438

262:                                              ; preds = %246, %241
  %263 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 6
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %277

270:                                              ; preds = %266, %262
  %271 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 38
  store ptr @_regmap_bus_reg_read, ptr %271, align 4
  %272 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 39
  store ptr @_regmap_bus_reg_write, ptr %272, align 8
  %273 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 40
  store ptr %274, ptr %275, align 4
  %276 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 41
  store i8 0, ptr %276, align 8
  br label %438

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 38
  store ptr @_regmap_bus_read, ptr %278, align 4
  %279 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 5
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 40
  store ptr %280, ptr %281, align 4
  %282 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 38
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 11
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  %289 = select i1 %288, i32 1, i32 %287
  br label %290

290:                                              ; preds = %285, %277
  %291 = phi i32 [ %283, %277 ], [ %289, %285 ]
  %292 = icmp eq ptr %0, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %290
  %294 = tail call ptr @dev_fwnode(ptr noundef nonnull %0) #26
  br label %295

295:                                              ; preds = %293, %290
  %296 = phi ptr [ %294, %293 ], [ null, %290 ]
  %297 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 39
  %298 = load i32, ptr %297, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %295
  %301 = tail call zeroext i1 @fwnode_property_present(ptr noundef %296, ptr noundef nonnull @.str.1) #26
  br i1 %301, label %311, label %302

302:                                              ; preds = %300
  %303 = tail call zeroext i1 @fwnode_property_present(ptr noundef %296, ptr noundef nonnull @.str.2) #26
  br i1 %303, label %311, label %304

304:                                              ; preds = %302
  %305 = tail call zeroext i1 @fwnode_property_present(ptr noundef %296, ptr noundef nonnull @.str.3) #26
  br i1 %305, label %311, label %306

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.regmap_bus, ptr %1, i32 0, i32 12
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 0
  %310 = select i1 %309, i32 1, i32 %308
  br label %311

311:                                              ; preds = %306, %304, %302, %300, %295
  %312 = phi i32 [ %298, %295 ], [ 3, %304 ], [ 2, %302 ], [ 1, %300 ], [ %310, %306 ]
  %313 = load i32, ptr %102, align 4
  %314 = load i32, ptr %123, align 4
  %315 = add i32 %314, %313
  switch i32 %315, label %585 [
    i32 2, label %316
    i32 4, label %321
    i32 7, label %326
    i32 10, label %332
    i32 12, label %337
    i32 8, label %342
    i32 16, label %344
    i32 24, label %351
    i32 32, label %355
  ]

316:                                              ; preds = %311
  %317 = load i32, ptr %113, align 4
  %318 = icmp eq i32 %317, 6
  br i1 %318, label %319, label %585

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_2_6_write, ptr %320, align 4
  br label %362

321:                                              ; preds = %311
  %322 = load i32, ptr %113, align 4
  %323 = icmp eq i32 %322, 12
  br i1 %323, label %324, label %585

324:                                              ; preds = %321
  %325 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_4_12_write, ptr %325, align 4
  br label %362

326:                                              ; preds = %311
  %327 = load i32, ptr %113, align 4
  switch i32 %327, label %585 [
    i32 9, label %328
    i32 17, label %330
  ]

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_7_9_write, ptr %329, align 4
  br label %362

330:                                              ; preds = %326
  %331 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_7_17_write, ptr %331, align 4
  br label %362

332:                                              ; preds = %311
  %333 = load i32, ptr %113, align 4
  %334 = icmp eq i32 %333, 14
  br i1 %334, label %335, label %585

335:                                              ; preds = %332
  %336 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_10_14_write, ptr %336, align 4
  br label %362

337:                                              ; preds = %311
  %338 = load i32, ptr %113, align 4
  %339 = icmp eq i32 %338, 20
  br i1 %339, label %340, label %585

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  store ptr @regmap_format_12_20_write, ptr %341, align 4
  br label %362

342:                                              ; preds = %311
  %343 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_8, ptr %343, align 8
  br label %362

344:                                              ; preds = %311
  switch i32 %291, label %585 [
    i32 1, label %345
    i32 2, label %347
    i32 3, label %349
  ]

345:                                              ; preds = %344
  %346 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_16_be, ptr %346, align 8
  br label %362

347:                                              ; preds = %344
  %348 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_16_le, ptr %348, align 8
  br label %362

349:                                              ; preds = %344
  %350 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_16_native, ptr %350, align 8
  br label %362

351:                                              ; preds = %311
  %352 = icmp eq i32 %291, 1
  br i1 %352, label %353, label %585

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_24, ptr %354, align 8
  br label %362

355:                                              ; preds = %311
  switch i32 %291, label %585 [
    i32 1, label %356
    i32 2, label %358
    i32 3, label %360
  ]

356:                                              ; preds = %355
  %357 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_32_be, ptr %357, align 8
  br label %362

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_32_le, ptr %359, align 8
  br label %362

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  store ptr @regmap_format_32_native, ptr %361, align 8
  br label %362

362:                                              ; preds = %360, %358, %356, %353, %349, %347, %345, %342, %340, %335, %330, %328, %324, %319
  %363 = icmp eq i32 %312, 3
  br i1 %363, label %364, label %366

364:                                              ; preds = %362
  %365 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_inplace_noop, ptr %365, align 4
  br label %366

366:                                              ; preds = %364, %362
  %367 = load i32, ptr %113, align 4
  %368 = add i32 %367, -8
  %369 = tail call i32 @llvm.fshl.i32(i32 %368, i32 %368, i32 29)
  switch i32 %369, label %403 [
    i32 0, label %370
    i32 1, label %374
    i32 2, label %386
    i32 3, label %391
  ]

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_8, ptr %371, align 4
  %372 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_8, ptr %372, align 8
  %373 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_inplace_noop, ptr %373, align 4
  br label %403

374:                                              ; preds = %366
  switch i32 %312, label %585 [
    i32 1, label %375
    i32 2, label %379
    i32 3, label %383
  ]

375:                                              ; preds = %374
  %376 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_16_be, ptr %376, align 4
  %377 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_16_be, ptr %377, align 8
  %378 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_16_be_inplace, ptr %378, align 4
  br label %403

379:                                              ; preds = %374
  %380 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_16_le, ptr %380, align 4
  %381 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_16_le, ptr %381, align 8
  %382 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_16_le_inplace, ptr %382, align 4
  br label %403

383:                                              ; preds = %374
  %384 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_16_native, ptr %384, align 4
  %385 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_16_native, ptr %385, align 8
  br label %403

386:                                              ; preds = %366
  %387 = icmp eq i32 %312, 1
  br i1 %387, label %388, label %585

388:                                              ; preds = %386
  %389 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_24, ptr %389, align 4
  %390 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_24, ptr %390, align 8
  br label %403

391:                                              ; preds = %366
  switch i32 %312, label %585 [
    i32 1, label %392
    i32 2, label %396
    i32 3, label %400
  ]

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_32_be, ptr %393, align 4
  %394 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_32_be, ptr %394, align 8
  %395 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_32_be_inplace, ptr %395, align 4
  br label %403

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_32_le, ptr %397, align 4
  %398 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_32_le, ptr %398, align 8
  %399 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 8
  store ptr @regmap_parse_32_le_inplace, ptr %399, align 4
  br label %403

400:                                              ; preds = %391
  %401 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  store ptr @regmap_format_32_native, ptr %401, align 4
  %402 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 7
  store ptr @regmap_parse_32_native, ptr %402, align 8
  br label %403

403:                                              ; preds = %400, %396, %392, %388, %383, %379, %375, %370, %366
  %404 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 4
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %412, label %407

407:                                              ; preds = %403
  %408 = icmp ne i32 %291, 1
  %409 = icmp ne i32 %312, 1
  %410 = select i1 %408, i1 true, i1 %409
  br i1 %410, label %585, label %411

411:                                              ; preds = %407
  store i8 1, ptr %157, align 1
  br label %420

412:                                              ; preds = %403
  %413 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 5
  %414 = load ptr, ptr %413, align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %585, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  %418 = load ptr, ptr %417, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %585, label %420

420:                                              ; preds = %416, %411
  %421 = load i32, ptr %106, align 4
  %422 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %421, i32 noundef 3520) #28
  %423 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 6
  store ptr %422, ptr %423, align 8
  %424 = icmp eq ptr %422, null
  br i1 %424, label %585, label %425

425:                                              ; preds = %420
  %426 = load ptr, ptr %404, align 4
  %427 = icmp eq ptr %426, null
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 41
  store i8 0, ptr %429, align 8
  %430 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 39
  store ptr @_regmap_bus_formatted_write, ptr %430, align 8
  br label %438

431:                                              ; preds = %425
  %432 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 7, i32 6
  %433 = load ptr, ptr %432, align 4
  %434 = icmp eq ptr %433, null
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 41
  store i8 1, ptr %436, align 8
  %437 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 39
  store ptr @_regmap_bus_raw_write, ptr %437, align 8
  br label %438

438:                                              ; preds = %435, %431, %428, %270, %251
  %439 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 68
  store ptr null, ptr %439, align 8
  %440 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 41
  %441 = load i32, ptr %440, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %562, label %443

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.regmap_config, ptr %3, i32 0, i32 40
  %445 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 69
  br label %446

446:                                              ; preds = %558, %443
  %447 = phi i32 [ %441, %443 ], [ %560, %558 ]
  %448 = phi i32 [ 0, %443 ], [ %559, %558 ]
  %449 = load ptr, ptr %444, align 4
  %450 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448
  %451 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 2
  %452 = load i32, ptr %451, align 4
  %453 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 1
  %454 = load i32, ptr %453, align 4
  %455 = icmp ult i32 %452, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %446
  %457 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %457, ptr noundef nonnull @.str.7, i32 noundef %448, i32 noundef %452, i32 noundef %454) #29
  br label %572

458:                                              ; preds = %446
  %459 = load i32, ptr %184, align 8
  %460 = icmp ugt i32 %452, %459
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %462, ptr noundef nonnull @.str.8, i32 noundef %448, i32 noundef %452, i32 noundef %459) #29
  br label %572

463:                                              ; preds = %458
  %464 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 3
  %465 = load i32, ptr %464, align 4
  %466 = icmp ugt i32 %465, %459
  br i1 %466, label %467, label %469

467:                                              ; preds = %463
  %468 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %468, ptr noundef nonnull @.str.9, i32 noundef %448) #29
  br label %572

469:                                              ; preds = %463
  %470 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 7
  %471 = load i32, ptr %470, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %469
  %474 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %474, ptr noundef nonnull @.str.10, i32 noundef %448) #29
  br label %572

475:                                              ; preds = %498, %469
  %476 = phi i32 [ %499, %498 ], [ 0, %469 ]
  %477 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %476, i32 6
  %478 = load i32, ptr %477, align 4
  %479 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %476, i32 7
  %480 = load i32, ptr %479, align 4
  %481 = add i32 %478, -1
  %482 = add i32 %481, %480
  %483 = icmp eq i32 %476, %448
  br i1 %483, label %498, label %484

484:                                              ; preds = %475
  %485 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %476, i32 3
  %486 = load i32, ptr %485, align 4
  %487 = icmp ugt i32 %454, %486
  %488 = icmp ugt i32 %486, %452
  %489 = select i1 %487, i1 true, i1 %488
  br i1 %489, label %492, label %490

490:                                              ; preds = %484
  %491 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %491, ptr noundef nonnull @.str.11, i32 noundef %448, i32 noundef %476) #29
  br label %572

492:                                              ; preds = %484
  %493 = icmp ult i32 %482, %454
  %494 = icmp ugt i32 %478, %452
  %495 = select i1 %493, i1 true, i1 %494
  br i1 %495, label %498, label %496

496:                                              ; preds = %492
  %497 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %497, ptr noundef nonnull @.str.12, i32 noundef %448, i32 noundef %476) #29
  br label %572

498:                                              ; preds = %492, %475
  %499 = add nuw i32 %476, 1
  %500 = icmp eq i32 %499, %447
  br i1 %500, label %501, label %475

501:                                              ; preds = %498
  %502 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %503 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %502, i32 noundef 3520, i32 noundef 48) #27
  %504 = icmp eq ptr %503, null
  br i1 %504, label %572, label %505

505:                                              ; preds = %501
  %506 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 2
  store ptr %10, ptr %506, align 8
  %507 = load ptr, ptr %450, align 4
  %508 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 1
  store ptr %507, ptr %508, align 4
  %509 = load i32, ptr %453, align 4
  %510 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 3
  store i32 %509, ptr %510, align 4
  %511 = load i32, ptr %451, align 4
  %512 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 4
  store i32 %511, ptr %512, align 8
  %513 = load i32, ptr %464, align 4
  %514 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 5
  store i32 %513, ptr %514, align 4
  %515 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 4
  %516 = load i32, ptr %515, align 4
  %517 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 6
  store i32 %516, ptr %517, align 8
  %518 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 5
  %519 = load i32, ptr %518, align 4
  %520 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 7
  store i32 %519, ptr %520, align 4
  %521 = getelementptr %struct.regmap_range_cfg, ptr %449, i32 %448, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 8
  store i32 %522, ptr %523, align 8
  %524 = load i32, ptr %470, align 4
  %525 = getelementptr inbounds %struct.regmap_range_node, ptr %503, i32 0, i32 9
  store i32 %524, ptr %525, align 4
  %526 = load ptr, ptr %439, align 8
  %527 = icmp eq ptr %526, null
  br i1 %527, label %546, label %528

528:                                              ; preds = %540, %505
  %529 = phi ptr [ %542, %540 ], [ %526, %505 ]
  %530 = getelementptr inbounds %struct.regmap_range_node, ptr %529, i32 0, i32 3
  %531 = load i32, ptr %530, align 4
  %532 = icmp ult i32 %511, %531
  br i1 %532, label %533, label %535

533:                                              ; preds = %528
  %534 = getelementptr inbounds %struct.rb_node, ptr %529, i32 0, i32 2
  br label %540

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.regmap_range_node, ptr %529, i32 0, i32 4
  %537 = load i32, ptr %536, align 4
  %538 = icmp ugt i32 %509, %537
  %539 = getelementptr inbounds %struct.rb_node, ptr %529, i32 0, i32 1
  br i1 %538, label %540, label %544

540:                                              ; preds = %535, %533
  %541 = phi ptr [ %539, %535 ], [ %534, %533 ]
  %542 = load ptr, ptr %541, align 4
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %528

544:                                              ; preds = %535
  %545 = load ptr, ptr %179, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %545, ptr noundef nonnull @.str.13, i32 noundef %448) #29
  tail call void @kfree(ptr noundef nonnull %503) #26
  br label %572

546:                                              ; preds = %540, %505
  %547 = phi ptr [ %439, %505 ], [ %541, %540 ]
  %548 = phi ptr [ null, %505 ], [ %529, %540 ]
  %549 = ptrtoint ptr %548 to i32
  store i32 %549, ptr %503, align 8
  %550 = getelementptr inbounds %struct.rb_node, ptr %503, i32 0, i32 1
  store ptr null, ptr %550, align 4
  %551 = getelementptr inbounds %struct.rb_node, ptr %503, i32 0, i32 2
  store ptr null, ptr %551, align 8
  store ptr %503, ptr %547, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %503, ptr noundef %439) #26
  %552 = load ptr, ptr %445, align 4
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %558

554:                                              ; preds = %546
  %555 = load i32, ptr %106, align 4
  %556 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %555, i32 noundef 3520) #28
  store ptr %556, ptr %445, align 4
  %557 = icmp eq ptr %556, null
  br i1 %557, label %572, label %558

558:                                              ; preds = %554, %546
  %559 = add nuw i32 %448, 1
  %560 = load i32, ptr %440, align 4
  %561 = icmp ult i32 %559, %560
  br i1 %561, label %446, label %562

562:                                              ; preds = %558, %438
  %563 = tail call i32 @regcache_init(ptr noundef nonnull %10, ptr noundef %3) #26
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %572

565:                                              ; preds = %562
  %566 = icmp eq ptr %0, null
  br i1 %566, label %570, label %567

567:                                              ; preds = %565
  %568 = tail call i32 @regmap_attach_dev(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %3)
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %594, label %571

570:                                              ; preds = %565
  tail call void @regmap_debugfs_init(ptr noundef nonnull %10) #26
  br label %594

571:                                              ; preds = %567
  tail call void @regcache_exit(ptr noundef nonnull %10) #26
  br label %572

572:                                              ; preds = %571, %562, %554, %544, %501, %496, %490, %473, %467, %461, %456
  %573 = phi i32 [ %563, %562 ], [ %568, %571 ], [ -22, %490 ], [ -22, %496 ], [ -22, %544 ], [ -22, %473 ], [ -22, %467 ], [ -22, %461 ], [ -22, %456 ], [ -12, %501 ], [ -12, %554 ]
  %574 = tail call ptr @rb_first(ptr noundef %439) #26
  %575 = icmp eq ptr %574, null
  br i1 %575, label %580, label %576

576:                                              ; preds = %576, %572
  %577 = phi ptr [ %578, %576 ], [ %574, %572 ]
  %578 = tail call ptr @rb_next(ptr noundef nonnull %577) #26
  tail call void @rb_erase(ptr noundef nonnull %577, ptr noundef %439) #26
  tail call void @kfree(ptr noundef nonnull %577) #26
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %576

580:                                              ; preds = %576, %572
  %581 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 69
  %582 = load ptr, ptr %581, align 4
  tail call void @kfree(ptr noundef %582) #26
  %583 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 6
  %584 = load ptr, ptr %583, align 8
  tail call void @kfree(ptr noundef %584) #26
  br label %585

585:                                              ; preds = %580, %420, %416, %412, %407, %391, %386, %374, %355, %351, %344, %337, %332, %326, %321, %316, %311
  %586 = phi i32 [ -22, %311 ], [ -22, %355 ], [ -22, %407 ], [ %573, %580 ], [ -22, %416 ], [ -22, %412 ], [ -22, %391 ], [ -22, %386 ], [ -22, %374 ], [ -22, %351 ], [ -22, %344 ], [ -22, %337 ], [ -22, %332 ], [ -22, %326 ], [ -22, %321 ], [ -22, %316 ], [ -12, %420 ]
  %587 = getelementptr inbounds %struct.regmap, ptr %10, i32 0, i32 10
  %588 = load ptr, ptr %587, align 8
  tail call void @kfree_const(ptr noundef %588) #26
  br label %589

589:                                              ; preds = %585, %15
  %590 = phi i32 [ %586, %585 ], [ -12, %15 ]
  tail call void @kfree(ptr noundef nonnull %10) #26
  br label %591

591:                                              ; preds = %589, %8, %6
  %592 = phi i32 [ %590, %589 ], [ -22, %6 ], [ -12, %8 ]
  %593 = inttoptr i32 %592 to ptr
  br label %594

594:                                              ; preds = %591, %570, %567
  %595 = phi ptr [ %593, %591 ], [ %10, %567 ], [ %10, %570 ]
  ret ptr %595
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_lock_unlock_none(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_lock_hwlock_irqsave(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_unlock_hwlock_irqrestore(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_lock_hwlock_irq(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_unlock_hwlock_irq(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_lock_hwlock(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_unlock_hwlock(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_lock_raw_spinlock(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #26
  %3 = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  store i32 %2, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_unlock_raw_spinlock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon.2, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_lock_spinlock(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #26
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %2, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_unlock_spinlock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_lock_mutex(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_unlock_mutex(ptr noundef %0) #0 {
  tail call void @mutex_unlock(ptr noundef %0) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_regmap_bus_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap_bus, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %7(ptr noundef %9, i32 noundef %1, ptr noundef %2) #26
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_regmap_bus_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap_bus, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %7(ptr noundef %9, i32 noundef %1, i32 noundef %2) #26
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_regmap_bus_read(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 %10
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef %17, i1 noundef zeroext false)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load ptr, ptr %12, align 4
  %22 = tail call i32 %21(ptr noundef %11) #26
  store i32 %22, ptr %2, align 4
  br label %23

23:                                               ; preds = %20, %15, %3
  %24 = phi i32 [ -22, %3 ], [ 0, %20 ], [ %18, %15 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_2_6_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 6
  %7 = or i32 %6, %2
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_4_12_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 12
  %7 = or i32 %6, %2
  %8 = trunc i32 %7 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  store i16 %9, ptr %5, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_7_9_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %1, 9
  %7 = or i32 %6, %2
  %8 = trunc i32 %7 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  store i16 %9, ptr %5, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_7_17_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = trunc i32 %2 to i8
  %7 = getelementptr i8, ptr %5, i32 2
  store i8 %6, ptr %7, align 1
  %8 = lshr i32 %2, 8
  %9 = trunc i32 %8 to i8
  %10 = getelementptr i8, ptr %5, i32 1
  store i8 %9, ptr %10, align 1
  %11 = lshr i32 %2, 16
  %12 = shl i32 %1, 1
  %13 = or i32 %11, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_10_14_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = trunc i32 %2 to i8
  %7 = getelementptr i8, ptr %5, i32 2
  store i8 %6, ptr %7, align 1
  %8 = lshr i32 %2, 8
  %9 = shl i32 %1, 6
  %10 = or i32 %8, %9
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %5, i32 1
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %1, 2
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %5, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_format_12_20_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %5, align 1
  %8 = shl i32 %1, 4
  %9 = lshr i32 %2, 16
  %10 = or i32 %9, %8
  %11 = trunc i32 %10 to i8
  %12 = getelementptr i8, ptr %5, i32 1
  store i8 %11, ptr %12, align 1
  %13 = lshr i32 %2, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr i8, ptr %5, i32 2
  store i8 %14, ptr %15, align 1
  %16 = trunc i32 %2 to i8
  %17 = getelementptr i8, ptr %5, i32 3
  store i8 %16, ptr %17, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_8(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  %5 = trunc i32 %4 to i8
  store i8 %5, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_16_be(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = shl i32 %1, %2
  %5 = trunc i32 %4 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #26
  store i16 %6, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_16_le(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  %5 = trunc i32 %4 to i16
  store i16 %5, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_16_native(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  %5 = trunc i32 %4 to i16
  store i16 %5, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_24(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  %5 = lshr i32 %4, 16
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %0, align 1
  %7 = lshr i32 %4, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr i8, ptr %0, i32 1
  store i8 %8, ptr %9, align 1
  %10 = trunc i32 %4 to i8
  %11 = getelementptr i8, ptr %0, i32 2
  store i8 %10, ptr %11, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_32_be(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = shl i32 %1, %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #26
  store i32 %5, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_32_le(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  store i32 %4, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @regmap_format_32_native(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 %1, %2
  store i32 %4, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @regmap_parse_inplace_noop(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_8(ptr nocapture noundef readonly %0) #10 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_16_be(ptr nocapture noundef readonly %0) #11 {
  %2 = load i16, ptr %0, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #26
  %4 = zext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_parse_16_be_inplace(ptr nocapture noundef %0) #12 {
  %2 = load i16, ptr %0, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #26
  store i16 %3, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_16_le(ptr nocapture noundef readonly %0) #10 {
  %2 = load i16, ptr %0, align 1
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_parse_16_le_inplace(ptr nocapture noundef %0) #13 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_16_native(ptr nocapture noundef readonly %0) #10 {
  %2 = load i16, ptr %0, align 1
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_24(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or i32 %8, %4
  %10 = load i8, ptr %0, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %9, %12
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_32_be(ptr nocapture noundef readonly %0) #11 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #26
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_parse_32_be_inplace(ptr nocapture noundef %0) #12 {
  %2 = load i32, ptr %0, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #26
  store i32 %3, ptr %0, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_32_le(ptr nocapture noundef readonly %0) #10 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @regmap_parse_32_le_inplace(ptr nocapture noundef %0) #13 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regmap_parse_32_native(ptr nocapture noundef readonly %0) #10 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_regmap_bus_formatted_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %8, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1899, i32 noundef 9, ptr noundef null) #26
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %30, %13
  %18 = phi ptr [ %32, %30 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.regmap_range_node, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.regmap_range_node, ptr %18, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %1
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %23, %22 ], [ %29, %28 ]
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %17

34:                                               ; preds = %24
  %35 = call fastcc i32 @_regmap_select_page(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %18, i32 noundef 1)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %104

37:                                               ; preds = %34
  %38 = load i32, ptr %4, align 4
  br label %39

39:                                               ; preds = %37, %30, %13
  %40 = phi i32 [ %38, %37 ], [ %1, %13 ], [ %1, %30 ]
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7
  %42 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0, i32 noundef %40, i32 noundef %2) #26
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %39
  %47 = tail call ptr @llvm.thread.pointer() #26
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, ptr noundef %0, i32 noundef %40, i32 noundef 1) #26
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  br label %69

69:                                               ; preds = %68, %46, %39
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr inbounds %struct.regmap_bus, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = load i32, ptr %41, align 4
  %78 = tail call i32 %72(ptr noundef %74, ptr noundef %76, i32 noundef %77) #26
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %69
  %82 = tail call ptr @llvm.thread.pointer() #26
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  %93 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 7), align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %100, %95 ], [ %93, %92 ]
  %97 = load volatile ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.tracepoint_func, ptr %96, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  tail call void %97(ptr noundef %99, ptr noundef %0, i32 noundef %40, i32 noundef 1) #26
  %100 = getelementptr %struct.tracepoint_func, ptr %96, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %92
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !18
  br label %104

104:                                              ; preds = %103, %81, %69, %34
  %105 = phi i32 [ %35, %34 ], [ %78, %69 ], [ %78, %81 ], [ %78, %103 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_regmap_bus_raw_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !11

11:                                               ; preds = %7, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1933, i32 noundef 9, ptr noundef null) #26
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void %15(ptr noundef %23, i32 noundef %2, i32 noundef 0) #26
  %24 = load ptr, ptr %16, align 4
  %25 = load i32, ptr %18, align 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = load i32, ptr %21, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %1, ptr noundef %28, i32 noundef %30, i1 noundef zeroext false)
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, ptr nocapture readnone %5) #0 {
  %7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_regmap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.14) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @__regmap_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr undef, ptr undef)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store ptr %10, ptr %7, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %7) #26
  br label %14

13:                                               ; preds = %9
  tail call void @devres_free(ptr noundef nonnull %7) #26
  br label %14

14:                                               ; preds = %13, %12, %6
  %15 = phi ptr [ %10, %13 ], [ %10, %12 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_regmap_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @regmap_exit(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_regmap_field_alloc(ptr noundef %0, ptr noundef %1, [5 x i32] %2) #0 {
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = extractvalue [5 x i32] %2, 0
  %8 = extractvalue [5 x i32] %2, 1
  %9 = extractvalue [5 x i32] %2, 2
  %10 = extractvalue [5 x i32] %2, 3
  %11 = extractvalue [5 x i32] %2, 4
  store ptr %1, ptr %4, align 4
  %12 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 3
  store i32 %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 2
  store i32 %8, ptr %13, align 4
  %14 = shl nsw i32 -1, %8
  %15 = sub i32 31, %9
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %14
  %18 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 4
  store i32 %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 5
  store i32 %11, ptr %20, align 4
  br label %21

21:                                               ; preds = %6, %3
  %22 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_field_bulk_alloc(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 24) #26
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %38, label %7, !prof !11

7:                                                ; preds = %4
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ %36, %13 ], [ 0, %11 ]
  %15 = getelementptr %struct.regmap_field, ptr %9, i32 %14
  %16 = getelementptr %struct.reg_field, ptr %2, i32 %14
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds [5 x i32], ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds [5 x i32], ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds [5 x i32], ptr %16, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [5 x i32], ptr %16, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store ptr %0, ptr %15, align 8
  %26 = getelementptr %struct.regmap_field, ptr %9, i32 %14, i32 3
  store i32 %17, ptr %26, align 4
  %27 = getelementptr %struct.regmap_field, ptr %9, i32 %14, i32 2
  store i32 %19, ptr %27, align 8
  %28 = shl nsw i32 -1, %19
  %29 = sub i32 31, %21
  %30 = lshr i32 -1, %29
  %31 = and i32 %30, %28
  %32 = getelementptr %struct.regmap_field, ptr %9, i32 %14, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.regmap_field, ptr %9, i32 %14, i32 4
  store i32 %23, ptr %33, align 8
  %34 = getelementptr %struct.regmap_field, ptr %9, i32 %14, i32 5
  store i32 %25, ptr %34, align 4
  %35 = getelementptr ptr, ptr %1, i32 %14
  store ptr %15, ptr %35, align 4
  %36 = add nuw nsw i32 %14, 1
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %38, label %13

38:                                               ; preds = %13, %11, %7, %4
  %39 = phi i32 [ -12, %7 ], [ -12, %4 ], [ 0, %11 ], [ 0, %13 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_regmap_field_bulk_alloc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 24) #26
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %39, label %8, !prof !11

8:                                                ; preds = %5
  %9 = extractvalue { i32, i1 } %6, 0
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %9, i32 noundef 3520) #26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %37, %14 ], [ 0, %12 ]
  %16 = getelementptr %struct.regmap_field, ptr %10, i32 %15
  %17 = getelementptr %struct.reg_field, ptr %3, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds [5 x i32], ptr %17, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds [5 x i32], ptr %17, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds [5 x i32], ptr %17, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds [5 x i32], ptr %17, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  store ptr %1, ptr %16, align 4
  %27 = getelementptr %struct.regmap_field, ptr %10, i32 %15, i32 3
  store i32 %18, ptr %27, align 4
  %28 = getelementptr %struct.regmap_field, ptr %10, i32 %15, i32 2
  store i32 %20, ptr %28, align 4
  %29 = shl nsw i32 -1, %20
  %30 = sub i32 31, %22
  %31 = lshr i32 -1, %30
  %32 = and i32 %31, %29
  %33 = getelementptr %struct.regmap_field, ptr %10, i32 %15, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.regmap_field, ptr %10, i32 %15, i32 4
  store i32 %24, ptr %34, align 4
  %35 = getelementptr %struct.regmap_field, ptr %10, i32 %15, i32 5
  store i32 %26, ptr %35, align 4
  %36 = getelementptr ptr, ptr %2, i32 %15
  store ptr %16, ptr %36, align 4
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp eq i32 %37, %4
  br i1 %38, label %39, label %14

39:                                               ; preds = %14, %12, %8, %5
  %40 = phi i32 [ -12, %8 ], [ -12, %5 ], [ 0, %12 ], [ 0, %14 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_field_bulk_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_regmap_field_bulk_free(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_regmap_field_free(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %1) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regmap_field_alloc(ptr noundef %0, [5 x i32] %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = extractvalue [5 x i32] %1, 0
  %8 = extractvalue [5 x i32] %1, 1
  %9 = extractvalue [5 x i32] %1, 2
  %10 = extractvalue [5 x i32] %1, 3
  %11 = extractvalue [5 x i32] %1, 4
  store ptr %0, ptr %4, align 8
  %12 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 3
  store i32 %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 2
  store i32 %8, ptr %13, align 8
  %14 = shl nsw i32 -1, %8
  %15 = sub i32 31, %9
  %16 = lshr i32 -1, %15
  %17 = and i32 %16, %14
  %18 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 4
  store i32 %10, ptr %19, align 8
  %20 = getelementptr inbounds %struct.regmap_field, ptr %4, i32 0, i32 5
  store i32 %11, ptr %20, align 4
  br label %21

21:                                               ; preds = %6, %2
  %22 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_field_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_reinit_cache(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @regcache_exit(ptr noundef %0) #26
  tail call void @regmap_debugfs_exit(ptr noundef %0) #26
  %3 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 26
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 27
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 28
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 29
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 30
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 31
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = tail call ptr @kstrdup_const(ptr noundef nonnull %27, i32 noundef 3264) #26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  tail call void @kfree_const(ptr noundef %34) #26
  store ptr %30, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %2
  tail call void @regmap_debugfs_init(ptr noundef %0) #26
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  store i8 0, ptr %37, align 4
  %38 = tail call i32 @regcache_init(ptr noundef %0, ptr noundef %1) #26
  br label %39

39:                                               ; preds = %35, %29
  %40 = phi i32 [ %38, %35 ], [ -12, %29 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_exit(ptr noundef %0) #0 {
  tail call void @regcache_exit(ptr noundef %0) #26
  tail call void @regmap_debugfs_exit(ptr noundef %0) #26
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %3 = tail call ptr @rb_first(ptr noundef %2) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = tail call ptr @rb_next(ptr noundef nonnull %6) #26
  tail call void @rb_erase(ptr noundef nonnull %6, ptr noundef %2) #26
  tail call void @kfree(ptr noundef nonnull %6) #26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 69
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #26
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.regmap_bus, ptr %13, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  tail call void %17(ptr noundef %21) #26
  br label %22

22:                                               ; preds = %19, %15, %9
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #26
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 15
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %40, label %28

28:                                               ; preds = %28, %22
  %29 = load volatile ptr, ptr %25, align 4
  %30 = icmp eq ptr %29, %25
  %31 = select i1 %30, ptr null, ptr %29
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  %36 = getelementptr inbounds %struct.regmap_async, ptr %31, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #26
  tail call void @kfree(ptr noundef %31) #26
  %38 = load volatile ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, %25
  br i1 %39, label %40, label %28

40:                                               ; preds = %28, %22
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree_const(ptr noundef %42) #26
  %43 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 61
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #26
  %45 = load ptr, ptr %12, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.regmap_bus, ptr %45, i32 0, i32 15
  %49 = load i8, ptr %48, align 4, !range !13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @kfree(ptr noundef nonnull %45) #26
  br label %52

52:                                               ; preds = %51, %47, %40
  tail call void @kfree(ptr noundef %0) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_get_regmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @dev_get_regmap_release, ptr noundef nonnull @dev_get_regmap_match, ptr noundef %1) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_get_regmap_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1549, i32 noundef 9, ptr noundef null) #26
  br label %17

9:                                                ; preds = %5
  %10 = icmp eq ptr %2, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.regmap, ptr %6, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull %2)
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %11, %9, %8
  %18 = phi i32 [ %16, %11 ], [ 0, %8 ], [ 1, %9 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @regmap_get_device(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regmap_can_raw_write(ptr nocapture noundef readonly %0) #15 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regmap_bus, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  br label %17

17:                                               ; preds = %13, %9, %5, %1
  %18 = phi i1 [ false, %9 ], [ false, %5 ], [ false, %1 ], [ %16, %13 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regmap_get_raw_read_max(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 66
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regmap_get_raw_write_max(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 67
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_regmap_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = icmp ult i32 %13, %1
  %16 = and i1 %14, %15
  br i1 %16, label %124, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 26
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i1 %19(ptr noundef %23, i32 noundef %1) #26
  br i1 %24, label %76, label %124

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 32
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %76, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.regmap_access_table, ptr %27, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.regmap_access_table, ptr %27, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %46, %33
  %37 = phi i1 [ %49, %46 ], [ true, %33 ]
  %38 = phi i32 [ %47, %46 ], [ 0, %33 ]
  %39 = phi ptr [ %48, %46 ], [ %35, %33 ]
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, %1
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.regmap_range, ptr %39, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, %1
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %36
  %47 = add nuw i32 %38, 1
  %48 = getelementptr %struct.regmap_range, ptr %39, i32 1
  %49 = icmp ult i32 %47, %31
  %50 = icmp eq i32 %47, %31
  br i1 %50, label %51, label %36

51:                                               ; preds = %46, %42
  %52 = phi i1 [ %49, %46 ], [ %37, %42 ]
  br i1 %52, label %124, label %53

53:                                               ; preds = %51, %29
  %54 = getelementptr inbounds %struct.regmap_access_table, ptr %27, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %27, align 4
  br label %59

59:                                               ; preds = %69, %57
  %60 = phi i1 [ %72, %69 ], [ true, %57 ]
  %61 = phi i32 [ %70, %69 ], [ 0, %57 ]
  %62 = phi ptr [ %71, %69 ], [ %58, %57 ]
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, %1
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.regmap_range, ptr %62, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp ult i32 %67, %1
  br i1 %68, label %69, label %74

69:                                               ; preds = %65, %59
  %70 = add nuw i32 %61, 1
  %71 = getelementptr %struct.regmap_range, ptr %62, i32 1
  %72 = icmp ult i32 %70, %55
  %73 = icmp eq i32 %70, %55
  br i1 %73, label %74, label %59

74:                                               ; preds = %69, %65
  %75 = phi i1 [ %72, %69 ], [ %60, %65 ]
  br i1 %75, label %76, label %124

76:                                               ; preds = %74, %53, %25, %21
  %77 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %78 = load i8, ptr %77, align 1, !range !13
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 41
  %82 = load i8, ptr %81, align 4, !range !13
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = tail call i32 @regcache_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %89 = load i8, ptr %88, align 4, !range !13
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  store i8 1, ptr %92, align 4
  br label %124

93:                                               ; preds = %87, %80, %76
  %94 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 39
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 %95(ptr noundef %11, i32 noundef %1, i32 noundef %2) #26
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_write, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = tail call ptr @llvm.thread.pointer() #26
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !19
  %113 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_write, i32 0, i32 7), align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %115, %112
  %116 = phi ptr [ %120, %115 ], [ %113, %112 ]
  %117 = load volatile ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.tracepoint_func, ptr %116, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void %117(ptr noundef %119, ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  %120 = getelementptr %struct.tracepoint_func, ptr %116, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %115

123:                                              ; preds = %115, %112
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  br label %124

124:                                              ; preds = %123, %101, %98, %93, %91, %84, %74, %51, %21, %10
  %125 = phi i32 [ 0, %91 ], [ -5, %74 ], [ %85, %84 ], [ %96, %93 ], [ -5, %21 ], [ 0, %98 ], [ 0, %101 ], [ 0, %123 ], [ -5, %10 ], [ -5, %51 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13) #26
  %14 = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %12, align 4
  tail call void %16(ptr noundef %17) #26
  br label %18

18:                                               ; preds = %9, %3
  %19 = phi i32 [ %14, %9 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_write_async(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13) #26
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 1, ptr %14, align 4
  %15 = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store i8 0, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %12, align 4
  tail call void %17(ptr noundef %18) #26
  br label %19

19:                                               ; preds = %9, %3
  %20 = phi i32 [ %15, %9 ], [ -22, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_regmap_raw_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = udiv i32 %3, %7
  %9 = icmp ugt i32 %7, %3
  br i1 %9, label %62, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 64
  %12 = load i8, ptr %11, align 1, !range !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 67
  %16 = load i32, ptr %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = icmp ult i32 %16, %3
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = udiv i32 %16, %7
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ %21, %20 ], [ 1, %10 ]
  %24 = udiv i32 %8, %23
  %25 = icmp ugt i32 %23, %8
  br i1 %25, label %55, label %26

26:                                               ; preds = %22, %14
  %27 = phi i32 [ %24, %22 ], [ 1, %14 ]
  %28 = phi i32 [ %23, %22 ], [ %8, %14 ]
  %29 = mul i32 %28, %7
  %30 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %31 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %32 = call i32 @llvm.umax.i32(i32 %27, i32 1)
  br label %33

33:                                               ; preds = %48, %26
  %34 = phi i32 [ 0, %26 ], [ %53, %48 ]
  %35 = phi i32 [ %3, %26 ], [ %52, %48 ]
  %36 = phi ptr [ %2, %26 ], [ %51, %48 ]
  %37 = phi i32 [ %1, %26 ], [ %50, %48 ]
  %38 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %37, ptr noundef %36, i32 noundef %29, i1 noundef zeroext %4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %33
  %41 = load i32, ptr %30, align 4
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = shl i32 %28, %41
  br label %48

45:                                               ; preds = %40
  %46 = load i32, ptr %31, align 4
  %47 = mul i32 %46, %28
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi i32 [ %44, %43 ], [ %47, %45 ]
  %50 = add i32 %49, %37
  %51 = getelementptr i8, ptr %36, i32 %29
  %52 = sub i32 %35, %29
  %53 = add nuw i32 %34, 1
  %54 = icmp eq i32 %53, %32
  br i1 %54, label %55, label %33

55:                                               ; preds = %48, %22
  %56 = phi i32 [ %1, %22 ], [ %50, %48 ]
  %57 = phi ptr [ %2, %22 ], [ %51, %48 ]
  %58 = phi i32 [ %3, %22 ], [ %52, %48 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %56, ptr noundef %57, i32 noundef %58, i1 noundef zeroext %4)
  br label %62

62:                                               ; preds = %60, %55, %33, %5
  %63 = phi i32 [ -22, %5 ], [ %61, %60 ], [ 0, %55 ], [ %38, %33 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1671, i32 noundef 9, ptr noundef null) #26
  br label %20

20:                                               ; preds = %19, %5
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i1 %22(ptr noundef %26, i32 noundef %1) #26
  br i1 %27, label %224, label %79

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 36
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %224, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regmap_access_table, ptr %30, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.regmap_access_table, ptr %30, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %49, %36
  %40 = phi i1 [ %52, %49 ], [ true, %36 ]
  %41 = phi i32 [ %50, %49 ], [ 0, %36 ]
  %42 = phi ptr [ %51, %49 ], [ %38, %36 ]
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %1
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.regmap_range, ptr %42, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %47, %1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %39
  %50 = add nuw i32 %41, 1
  %51 = getelementptr %struct.regmap_range, ptr %42, i32 1
  %52 = icmp ult i32 %50, %34
  %53 = icmp eq i32 %50, %34
  br i1 %53, label %54, label %39

54:                                               ; preds = %49, %45
  %55 = phi i1 [ %52, %49 ], [ %40, %45 ]
  br i1 %55, label %79, label %56

56:                                               ; preds = %54, %32
  %57 = getelementptr inbounds %struct.regmap_access_table, ptr %30, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %224, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %30, align 4
  br label %62

62:                                               ; preds = %72, %60
  %63 = phi i1 [ %75, %72 ], [ true, %60 ]
  %64 = phi i32 [ %73, %72 ], [ 0, %60 ]
  %65 = phi ptr [ %74, %72 ], [ %61, %60 ]
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, %1
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.regmap_range, ptr %65, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ult i32 %70, %1
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %62
  %73 = add nuw i32 %64, 1
  %74 = getelementptr %struct.regmap_range, ptr %65, i32 1
  %75 = icmp ult i32 %73, %58
  %76 = icmp eq i32 %73, %58
  br i1 %76, label %77, label %62

77:                                               ; preds = %72, %68
  %78 = phi i1 [ %75, %72 ], [ %63, %68 ]
  br i1 %78, label %224, label %79

79:                                               ; preds = %77, %54, %24
  %80 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, %3
  br i1 %82, label %224, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %85 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %86 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %87 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 26
  %88 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %89 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 32
  %90 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 36
  br label %91

91:                                               ; preds = %219, %83
  %92 = phi i32 [ 0, %83 ], [ %220, %219 ]
  %93 = load i32, ptr %84, align 4
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = shl i32 %92, %93
  br label %100

97:                                               ; preds = %91
  %98 = load i32, ptr %85, align 4
  %99 = mul i32 %98, %92
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i32 [ %96, %95 ], [ %99, %97 ]
  %102 = add i32 %101, %1
  %103 = load i32, ptr %86, align 4
  %104 = icmp ne i32 %103, 0
  %105 = icmp ult i32 %103, %102
  %106 = and i1 %104, %105
  br i1 %106, label %615, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr %87, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %88, align 4
  %112 = tail call zeroext i1 %108(ptr noundef %111, i32 noundef %102) #26
  br i1 %112, label %163, label %615

113:                                              ; preds = %107
  %114 = load ptr, ptr %89, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %163, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.regmap_access_table, ptr %114, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.regmap_access_table, ptr %114, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %133, %120
  %124 = phi i1 [ %136, %133 ], [ true, %120 ]
  %125 = phi i32 [ %134, %133 ], [ 0, %120 ]
  %126 = phi ptr [ %135, %133 ], [ %122, %120 ]
  %127 = load i32, ptr %126, align 4
  %128 = icmp ugt i32 %127, %102
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.regmap_range, ptr %126, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = icmp ult i32 %131, %102
  br i1 %132, label %133, label %138

133:                                              ; preds = %129, %123
  %134 = add nuw i32 %125, 1
  %135 = getelementptr %struct.regmap_range, ptr %126, i32 1
  %136 = icmp ult i32 %134, %118
  %137 = icmp eq i32 %134, %118
  br i1 %137, label %138, label %123

138:                                              ; preds = %133, %129
  %139 = phi i1 [ %136, %133 ], [ %124, %129 ]
  br i1 %139, label %615, label %140

140:                                              ; preds = %138, %116
  %141 = getelementptr inbounds %struct.regmap_access_table, ptr %114, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %114, align 4
  br label %146

146:                                              ; preds = %156, %144
  %147 = phi i1 [ %159, %156 ], [ true, %144 ]
  %148 = phi i32 [ %157, %156 ], [ 0, %144 ]
  %149 = phi ptr [ %158, %156 ], [ %145, %144 ]
  %150 = load i32, ptr %149, align 4
  %151 = icmp ugt i32 %150, %102
  br i1 %151, label %156, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.regmap_range, ptr %149, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %154, %102
  br i1 %155, label %156, label %161

156:                                              ; preds = %152, %146
  %157 = add nuw i32 %148, 1
  %158 = getelementptr %struct.regmap_range, ptr %149, i32 1
  %159 = icmp ult i32 %157, %142
  %160 = icmp eq i32 %157, %142
  br i1 %160, label %161, label %146

161:                                              ; preds = %156, %152
  %162 = phi i1 [ %159, %156 ], [ %147, %152 ]
  br i1 %162, label %163, label %615

163:                                              ; preds = %161, %140, %113, %110
  %164 = load ptr, ptr %21, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %88, align 4
  %168 = tail call zeroext i1 %164(ptr noundef %167, i32 noundef %102) #26
  br i1 %168, label %615, label %219

169:                                              ; preds = %163
  %170 = load ptr, ptr %90, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %615, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.regmap_access_table, ptr %170, i32 0, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.regmap_access_table, ptr %170, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %189, %176
  %180 = phi i1 [ %192, %189 ], [ true, %176 ]
  %181 = phi i32 [ %190, %189 ], [ 0, %176 ]
  %182 = phi ptr [ %191, %189 ], [ %178, %176 ]
  %183 = load i32, ptr %182, align 4
  %184 = icmp ugt i32 %183, %102
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.regmap_range, ptr %182, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp ult i32 %187, %102
  br i1 %188, label %189, label %194

189:                                              ; preds = %185, %179
  %190 = add nuw i32 %181, 1
  %191 = getelementptr %struct.regmap_range, ptr %182, i32 1
  %192 = icmp ult i32 %190, %174
  %193 = icmp eq i32 %190, %174
  br i1 %193, label %194, label %179

194:                                              ; preds = %189, %185
  %195 = phi i1 [ %192, %189 ], [ %180, %185 ]
  br i1 %195, label %219, label %196

196:                                              ; preds = %194, %172
  %197 = getelementptr inbounds %struct.regmap_access_table, ptr %170, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %615, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %170, align 4
  br label %202

202:                                              ; preds = %212, %200
  %203 = phi i1 [ %215, %212 ], [ true, %200 ]
  %204 = phi i32 [ %213, %212 ], [ 0, %200 ]
  %205 = phi ptr [ %214, %212 ], [ %201, %200 ]
  %206 = load i32, ptr %205, align 4
  %207 = icmp ugt i32 %206, %102
  br i1 %207, label %212, label %208

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.regmap_range, ptr %205, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp ult i32 %210, %102
  br i1 %211, label %212, label %217

212:                                              ; preds = %208, %202
  %213 = add nuw i32 %204, 1
  %214 = getelementptr %struct.regmap_range, ptr %205, i32 1
  %215 = icmp ult i32 %213, %198
  %216 = icmp eq i32 %213, %198
  br i1 %216, label %217, label %202

217:                                              ; preds = %212, %208
  %218 = phi i1 [ %215, %212 ], [ %203, %208 ]
  br i1 %218, label %615, label %219

219:                                              ; preds = %217, %194, %166
  %220 = add nuw i32 %92, 1
  %221 = load i32, ptr %80, align 4
  %222 = udiv i32 %3, %221
  %223 = icmp ult i32 %220, %222
  br i1 %223, label %91, label %224

224:                                              ; preds = %219, %79, %77, %56, %28, %24
  %225 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %226 = load i8, ptr %225, align 1, !range !13
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %283

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %283, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %234 = load i32, ptr %233, align 4
  %235 = icmp ugt i32 %234, %3
  br i1 %235, label %277, label %236

236:                                              ; preds = %232
  %237 = udiv i32 %3, %234
  %238 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %239 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %240 = call i32 @llvm.umax.i32(i32 %237, i32 1)
  br label %241

241:                                              ; preds = %275, %236
  %242 = phi ptr [ %230, %236 ], [ %276, %275 ]
  %243 = phi i32 [ 0, %236 ], [ %273, %275 ]
  %244 = mul i32 %243, %234
  %245 = getelementptr i8, ptr %2, i32 %244
  %246 = tail call i32 %242(ptr noundef %245) #26
  %247 = load i32, ptr %238, align 4
  %248 = icmp sgt i32 %247, -1
  br i1 %248, label %249, label %251

249:                                              ; preds = %241
  %250 = shl i32 %243, %247
  br label %254

251:                                              ; preds = %241
  %252 = load i32, ptr %239, align 4
  %253 = mul i32 %252, %243
  br label %254

254:                                              ; preds = %251, %249
  %255 = phi i32 [ %250, %249 ], [ %253, %251 ]
  %256 = add i32 %255, %1
  %257 = tail call i32 @regcache_write(ptr noundef %0, i32 noundef %256, i32 noundef %246) #26
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %261 = load ptr, ptr %260, align 4
  %262 = load i32, ptr %238, align 4
  %263 = icmp sgt i32 %262, -1
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = shl i32 %243, %262
  br label %269

266:                                              ; preds = %259
  %267 = load i32, ptr %239, align 4
  %268 = mul i32 %267, %243
  br label %269

269:                                              ; preds = %266, %264
  %270 = phi i32 [ %265, %264 ], [ %268, %266 ]
  %271 = add i32 %270, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.38, i32 noundef %271, i32 noundef %257) #29
  br label %615

272:                                              ; preds = %254
  %273 = add nuw i32 %243, 1
  %274 = icmp eq i32 %273, %240
  br i1 %274, label %277, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr %229, align 4
  br label %241

277:                                              ; preds = %272, %232
  %278 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %279 = load i8, ptr %278, align 4, !range !13
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  store i8 1, ptr %282, align 4
  br label %615

283:                                              ; preds = %277, %228, %224
  %284 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %348, label %287

287:                                              ; preds = %300, %283
  %288 = phi ptr [ %302, %300 ], [ %285, %283 ]
  %289 = getelementptr inbounds %struct.regmap_range_node, ptr %288, i32 0, i32 3
  %290 = load i32, ptr %289, align 4
  %291 = icmp ugt i32 %290, %1
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = getelementptr inbounds %struct.rb_node, ptr %288, i32 0, i32 2
  br label %300

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.regmap_range_node, ptr %288, i32 0, i32 4
  %296 = load i32, ptr %295, align 4
  %297 = icmp ult i32 %296, %1
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.rb_node, ptr %288, i32 0, i32 1
  br label %300

300:                                              ; preds = %298, %292
  %301 = phi ptr [ %293, %292 ], [ %299, %298 ]
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %348, label %287

304:                                              ; preds = %294
  %305 = getelementptr inbounds %struct.regmap_range_node, ptr %288, i32 0, i32 3
  %306 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %307 = load i32, ptr %306, align 4
  %308 = udiv i32 %3, %307
  %309 = sub i32 %1, %290
  %310 = getelementptr inbounds %struct.regmap_range_node, ptr %288, i32 0, i32 9
  %311 = load i32, ptr %310, align 4
  %312 = urem i32 %309, %311
  %313 = sub i32 %311, %312
  %314 = icmp sgt i32 %308, %313
  br i1 %314, label %315, label %338

315:                                              ; preds = %325, %304
  %316 = phi i32 [ %328, %325 ], [ %307, %304 ]
  %317 = phi ptr [ %330, %325 ], [ %2, %304 ]
  %318 = phi i32 [ %331, %325 ], [ %3, %304 ]
  %319 = phi i32 [ %336, %325 ], [ %313, %304 ]
  %320 = phi i32 [ %327, %325 ], [ %308, %304 ]
  %321 = phi i32 [ %326, %325 ], [ %1, %304 ]
  %322 = mul i32 %316, %319
  %323 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %321, ptr noundef %317, i32 noundef %322, i1 noundef zeroext %4)
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %614

325:                                              ; preds = %315
  %326 = add i32 %321, %319
  %327 = sub i32 %320, %319
  %328 = load i32, ptr %306, align 4
  %329 = mul i32 %328, %319
  %330 = getelementptr i8, ptr %317, i32 %329
  %331 = sub i32 %318, %329
  %332 = load i32, ptr %305, align 4
  %333 = sub i32 %326, %332
  %334 = load i32, ptr %310, align 4
  %335 = urem i32 %333, %334
  %336 = sub i32 %334, %335
  %337 = icmp sgt i32 %327, %336
  br i1 %337, label %315, label %338

338:                                              ; preds = %325, %304
  %339 = phi i32 [ %1, %304 ], [ %326, %325 ]
  %340 = phi i32 [ %308, %304 ], [ %327, %325 ]
  %341 = phi i32 [ %3, %304 ], [ %331, %325 ]
  %342 = phi ptr [ %2, %304 ], [ %330, %325 ]
  store i32 %339, ptr %6, align 4
  %343 = select i1 %4, i32 1, i32 %340
  %344 = call fastcc i32 @_regmap_select_page(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %288, i32 noundef %343)
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %615

346:                                              ; preds = %338
  %347 = load i32, ptr %6, align 4
  br label %348

348:                                              ; preds = %346, %300, %283
  %349 = phi i32 [ %347, %346 ], [ %1, %283 ], [ %1, %300 ]
  %350 = phi i32 [ %341, %346 ], [ %3, %283 ], [ %3, %300 ]
  %351 = phi ptr [ %342, %346 ], [ %2, %283 ], [ %2, %300 ]
  %352 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 5
  %353 = load ptr, ptr %352, align 4
  %354 = load ptr, ptr %7, align 4
  %355 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 44
  %356 = load i32, ptr %355, align 4
  tail call void %353(ptr noundef %354, i32 noundef %349, i32 noundef %356) #26
  %357 = load i32, ptr %10, align 4
  %358 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 43
  %359 = load i32, ptr %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %376, label %361

361:                                              ; preds = %348
  %362 = load ptr, ptr %7, align 4
  %363 = icmp ne ptr %362, null
  %364 = icmp sgt i32 %357, 0
  %365 = and i1 %364, %363
  br i1 %365, label %366, label %376

366:                                              ; preds = %366, %361
  %367 = phi i32 [ %374, %366 ], [ 0, %361 ]
  %368 = shl i32 %367, 3
  %369 = lshr i32 %359, %368
  %370 = getelementptr i8, ptr %362, i32 %367
  %371 = load i8, ptr %370, align 1
  %372 = trunc i32 %369 to i8
  %373 = or i8 %371, %372
  store i8 %373, ptr %370, align 1
  %374 = add nuw nsw i32 %367, 1
  %375 = icmp eq i32 %374, %357
  br i1 %375, label %376, label %366

376:                                              ; preds = %366, %361, %348
  %377 = icmp eq ptr %351, %15
  br i1 %377, label %383, label %378

378:                                              ; preds = %376
  %379 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %350, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %378
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %351, i32 %350, i1 false)
  br label %383

383:                                              ; preds = %382, %378, %376
  %384 = phi ptr [ %15, %382 ], [ %351, %378 ], [ %15, %376 ]
  %385 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  %386 = load i8, ptr %385, align 4, !range !13
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %491, label %388

388:                                              ; preds = %383
  %389 = load ptr, ptr %16, align 4
  %390 = getelementptr inbounds %struct.regmap_bus, ptr %389, i32 0, i32 3
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  br i1 %392, label %491, label %393

393:                                              ; preds = %388
  %394 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_write_start, i32 0, i32 1), align 4
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %419

396:                                              ; preds = %393
  %397 = tail call ptr @llvm.thread.pointer() #26
  %398 = getelementptr inbounds %struct.thread_info, ptr %397, i32 0, i32 2
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 5
  %401 = getelementptr i32, ptr @__cpu_online_mask, i32 %400
  %402 = load volatile i32, ptr %401, align 4
  %403 = and i32 %399, 31
  %404 = shl nuw i32 1, %403
  %405 = and i32 %404, %402
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %419, label %407

407:                                              ; preds = %396
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  %408 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_write_start, i32 0, i32 7), align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %418, label %410

410:                                              ; preds = %410, %407
  %411 = phi ptr [ %415, %410 ], [ %408, %407 ]
  %412 = load volatile ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.tracepoint_func, ptr %411, i32 0, i32 1
  %414 = load ptr, ptr %413, align 4
  tail call void %412(ptr noundef %414, ptr noundef %0, i32 noundef %349, i32 noundef %350) #26
  %415 = getelementptr %struct.tracepoint_func, ptr %411, i32 1
  %416 = load ptr, ptr %415, align 4
  %417 = icmp eq ptr %416, null
  br i1 %417, label %418, label %410

418:                                              ; preds = %410, %407
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !22
  br label %419

419:                                              ; preds = %418, %396, %393
  %420 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 12
  %421 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %420) #26
  %422 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 15
  %423 = load volatile ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, %422
  %425 = icmp eq ptr %423, null
  %426 = or i1 %424, %425
  br i1 %426, label %434, label %427

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.list_head, ptr %423, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = load ptr, ptr %423, align 4
  %431 = getelementptr inbounds %struct.list_head, ptr %430, i32 0, i32 1
  store ptr %429, ptr %431, align 4
  store volatile ptr %430, ptr %429, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %423, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %428, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %420, i32 noundef %421) #26
  %432 = getelementptr inbounds %struct.regmap_async, ptr %423, i32 0, i32 2
  %433 = load ptr, ptr %432, align 4
  br label %446

434:                                              ; preds = %419
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %420, i32 noundef %421) #26
  %435 = load ptr, ptr %16, align 4
  %436 = getelementptr inbounds %struct.regmap_bus, ptr %435, i32 0, i32 9
  %437 = load ptr, ptr %436, align 4
  %438 = tail call ptr %437() #26
  %439 = icmp eq ptr %438, null
  br i1 %439, label %615, label %440

440:                                              ; preds = %434
  %441 = load i32, ptr %9, align 4
  %442 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %441, i32 noundef 3521) #28
  %443 = getelementptr inbounds %struct.regmap_async, ptr %438, i32 0, i32 2
  store ptr %442, ptr %443, align 4
  %444 = icmp eq ptr %442, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  tail call void @kfree(ptr noundef nonnull %438) #26
  br label %615

446:                                              ; preds = %440, %427
  %447 = phi ptr [ %442, %440 ], [ %433, %427 ]
  %448 = phi ptr [ %438, %440 ], [ %423, %427 ]
  %449 = getelementptr inbounds %struct.regmap_async, ptr %448, i32 0, i32 1
  store ptr %0, ptr %449, align 4
  %450 = getelementptr inbounds %struct.regmap_async, ptr %448, i32 0, i32 2
  %451 = load ptr, ptr %7, align 4
  %452 = load i32, ptr %13, align 4
  %453 = load i32, ptr %10, align 4
  %454 = add i32 %453, %452
  %455 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %456 = load i32, ptr %455, align 4
  %457 = add i32 %454, %456
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %447, ptr align 1 %451, i32 %457, i1 false)
  %458 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %420) #26
  %459 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 14
  %460 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 14, i32 1
  %461 = load ptr, ptr %460, align 4
  store ptr %448, ptr %460, align 4
  store ptr %459, ptr %448, align 4
  %462 = getelementptr inbounds %struct.list_head, ptr %448, i32 0, i32 1
  store ptr %461, ptr %462, align 4
  store volatile ptr %448, ptr %461, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %420, i32 noundef %458) #26
  %463 = icmp eq ptr %384, %15
  %464 = load ptr, ptr %16, align 4
  %465 = getelementptr inbounds %struct.regmap_bus, ptr %464, i32 0, i32 3
  %466 = load ptr, ptr %465, align 4
  %467 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %468 = load ptr, ptr %467, align 4
  %469 = load ptr, ptr %450, align 4
  %470 = load i32, ptr %10, align 4
  %471 = load i32, ptr %13, align 4
  br i1 %463, label %475, label %472

472:                                              ; preds = %446
  %473 = add i32 %471, %470
  %474 = tail call i32 %466(ptr noundef %468, ptr noundef %469, i32 noundef %473, ptr noundef %384, i32 noundef %350, ptr noundef nonnull %448) #26
  br label %479

475:                                              ; preds = %446
  %476 = add i32 %470, %350
  %477 = add i32 %476, %471
  %478 = tail call i32 %466(ptr noundef %468, ptr noundef %469, i32 noundef %477, ptr noundef null, i32 noundef 0, ptr noundef nonnull %448) #26
  br label %479

479:                                              ; preds = %475, %472
  %480 = phi i32 [ %474, %472 ], [ %478, %475 ]
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %615, label %482

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %484 = load ptr, ptr %483, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %484, ptr noundef nonnull @.str.39, i32 noundef %480) #29
  %485 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %420) #26
  %486 = load ptr, ptr %462, align 4
  %487 = load ptr, ptr %448, align 4
  %488 = getelementptr inbounds %struct.list_head, ptr %487, i32 0, i32 1
  store ptr %486, ptr %488, align 4
  store volatile ptr %487, ptr %486, align 4
  %489 = load ptr, ptr %422, align 4
  %490 = getelementptr inbounds %struct.list_head, ptr %489, i32 0, i32 1
  store ptr %448, ptr %490, align 4
  store ptr %489, ptr %448, align 4
  store ptr %422, ptr %462, align 4
  store volatile ptr %448, ptr %422, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %420, i32 noundef %485) #26
  br label %615

491:                                              ; preds = %388, %383
  %492 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %493 = load i32, ptr %492, align 4
  %494 = udiv i32 %350, %493
  %495 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 1), align 4
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %520

497:                                              ; preds = %491
  %498 = tail call ptr @llvm.thread.pointer() #26
  %499 = getelementptr inbounds %struct.thread_info, ptr %498, i32 0, i32 2
  %500 = load i32, ptr %499, align 8
  %501 = lshr i32 %500, 5
  %502 = getelementptr i32, ptr @__cpu_online_mask, i32 %501
  %503 = load volatile i32, ptr %502, align 4
  %504 = and i32 %500, 31
  %505 = shl nuw i32 1, %504
  %506 = and i32 %505, %503
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %520, label %508

508:                                              ; preds = %497
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %509 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 7), align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %519, label %511

511:                                              ; preds = %511, %508
  %512 = phi ptr [ %516, %511 ], [ %509, %508 ]
  %513 = load volatile ptr, ptr %512, align 4
  %514 = getelementptr inbounds %struct.tracepoint_func, ptr %512, i32 0, i32 1
  %515 = load ptr, ptr %514, align 4
  tail call void %513(ptr noundef %515, ptr noundef %0, i32 noundef %349, i32 noundef %494) #26
  %516 = getelementptr %struct.tracepoint_func, ptr %512, i32 1
  %517 = load ptr, ptr %516, align 4
  %518 = icmp eq ptr %517, null
  br i1 %518, label %519, label %511

519:                                              ; preds = %511, %508
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  br label %520

520:                                              ; preds = %519, %497, %491
  %521 = icmp eq ptr %384, %15
  %522 = load ptr, ptr %16, align 4
  br i1 %521, label %523, label %534

523:                                              ; preds = %520
  %524 = getelementptr inbounds %struct.regmap_bus, ptr %522, i32 0, i32 1
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %527 = load ptr, ptr %526, align 4
  %528 = load ptr, ptr %7, align 4
  %529 = load i32, ptr %10, align 4
  %530 = load i32, ptr %13, align 4
  %531 = add i32 %529, %350
  %532 = add i32 %531, %530
  %533 = tail call i32 %525(ptr noundef %527, ptr noundef %528, i32 noundef %532) #26
  br label %546

534:                                              ; preds = %520
  %535 = getelementptr inbounds %struct.regmap_bus, ptr %522, i32 0, i32 2
  %536 = load ptr, ptr %535, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %548, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %540 = load ptr, ptr %539, align 4
  %541 = load ptr, ptr %7, align 4
  %542 = load i32, ptr %10, align 4
  %543 = load i32, ptr %13, align 4
  %544 = add i32 %543, %542
  %545 = tail call i32 %536(ptr noundef %540, ptr noundef %541, i32 noundef %544, ptr noundef %384, i32 noundef %350) #26
  br label %546

546:                                              ; preds = %538, %523
  %547 = phi i32 [ %533, %523 ], [ %545, %538 ]
  switch i32 %547, label %567 [
    i32 -524, label %548
    i32 0, label %585
  ]

548:                                              ; preds = %546, %534
  %549 = load i32, ptr %10, align 4
  %550 = load i32, ptr %13, align 4
  %551 = add i32 %549, %350
  %552 = add i32 %551, %550
  %553 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %552, i32 noundef 3520) #28
  %554 = icmp eq ptr %553, null
  br i1 %554, label %615, label %555

555:                                              ; preds = %548
  %556 = load i32, ptr %10, align 4
  %557 = load ptr, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %553, ptr align 1 %557, i32 %556, i1 false)
  %558 = getelementptr i8, ptr %553, i32 %556
  %559 = load i32, ptr %13, align 4
  %560 = getelementptr i8, ptr %558, i32 %559
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %560, ptr align 1 %384, i32 %350, i1 false)
  %561 = load ptr, ptr %16, align 4
  %562 = getelementptr inbounds %struct.regmap_bus, ptr %561, i32 0, i32 1
  %563 = load ptr, ptr %562, align 4
  %564 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %565 = load ptr, ptr %564, align 4
  %566 = tail call i32 %563(ptr noundef %565, ptr noundef nonnull %553, i32 noundef %552) #26
  tail call void @kfree(ptr noundef nonnull %553) #26
  br label %585

567:                                              ; preds = %546
  %568 = load i8, ptr %225, align 1, !range !13
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %585

570:                                              ; preds = %567
  %571 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %572 = load ptr, ptr %571, align 4
  %573 = icmp eq ptr %572, null
  br i1 %573, label %585, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 47
  %576 = load ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, null
  br i1 %577, label %585, label %578

578:                                              ; preds = %574
  %579 = getelementptr inbounds %struct.regcache_ops, ptr %576, i32 0, i32 8
  %580 = load ptr, ptr %579, align 4
  %581 = icmp eq ptr %580, null
  br i1 %581, label %585, label %582

582:                                              ; preds = %578
  %583 = add i32 %349, 1
  %584 = tail call i32 %580(ptr noundef %0, i32 noundef %349, i32 noundef %583) #26
  br label %585

585:                                              ; preds = %582, %578, %574, %570, %567, %555, %546
  %586 = phi i32 [ %566, %555 ], [ %547, %567 ], [ %547, %582 ], [ %547, %578 ], [ %547, %574 ], [ %547, %570 ], [ %547, %546 ]
  %587 = load i32, ptr %492, align 4
  %588 = udiv i32 %350, %587
  %589 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 1), align 4
  %590 = icmp sgt i32 %589, 0
  br i1 %590, label %591, label %615

591:                                              ; preds = %585
  %592 = tail call ptr @llvm.thread.pointer() #26
  %593 = getelementptr inbounds %struct.thread_info, ptr %592, i32 0, i32 2
  %594 = load i32, ptr %593, align 8
  %595 = lshr i32 %594, 5
  %596 = getelementptr i32, ptr @__cpu_online_mask, i32 %595
  %597 = load volatile i32, ptr %596, align 4
  %598 = and i32 %594, 31
  %599 = shl nuw i32 1, %598
  %600 = and i32 %599, %597
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %615, label %602

602:                                              ; preds = %591
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  %603 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 7), align 4
  %604 = icmp eq ptr %603, null
  br i1 %604, label %613, label %605

605:                                              ; preds = %605, %602
  %606 = phi ptr [ %610, %605 ], [ %603, %602 ]
  %607 = load volatile ptr, ptr %606, align 4
  %608 = getelementptr inbounds %struct.tracepoint_func, ptr %606, i32 0, i32 1
  %609 = load ptr, ptr %608, align 4
  tail call void %607(ptr noundef %609, ptr noundef %0, i32 noundef %349, i32 noundef %588) #26
  %610 = getelementptr %struct.tracepoint_func, ptr %606, i32 1
  %611 = load ptr, ptr %610, align 4
  %612 = icmp eq ptr %611, null
  br i1 %612, label %613, label %605

613:                                              ; preds = %605, %602
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !18
  br label %615

614:                                              ; preds = %315
  store i32 %321, ptr %6, align 4
  br label %615

615:                                              ; preds = %614, %613, %591, %585, %548, %482, %479, %445, %434, %338, %281, %269, %217, %196, %169, %166, %161, %138, %110, %100
  %616 = phi i32 [ %344, %338 ], [ -12, %445 ], [ -12, %434 ], [ %480, %482 ], [ 0, %479 ], [ -12, %548 ], [ %586, %585 ], [ %586, %591 ], [ %586, %613 ], [ %257, %269 ], [ 0, %281 ], [ %323, %614 ], [ -22, %161 ], [ -22, %217 ], [ -22, %110 ], [ -22, %166 ], [ -22, %100 ], [ -22, %138 ], [ -22, %169 ], [ -22, %196 ]
  ret i32 %616
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_raw_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %90, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regmap_bus, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %90, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %90, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = urem i32 %3, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %90

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29) #26
  %30 = load i32, ptr %21, align 4
  %31 = udiv i32 %3, %30
  %32 = icmp ugt i32 %30, %3
  br i1 %32, label %85, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 64
  %35 = load i8, ptr %34, align 1, !range !13
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 67
  %39 = load i32, ptr %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = icmp ult i32 %39, %3
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = udiv i32 %39, %30
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi i32 [ %44, %43 ], [ 1, %33 ]
  %47 = udiv i32 %31, %46
  %48 = icmp ugt i32 %46, %31
  br i1 %48, label %78, label %49

49:                                               ; preds = %45, %37
  %50 = phi i32 [ %47, %45 ], [ 1, %37 ]
  %51 = phi i32 [ %46, %45 ], [ %31, %37 ]
  %52 = mul i32 %51, %30
  %53 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %54 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %55 = tail call i32 @llvm.umax.i32(i32 %50, i32 1) #26
  %56 = mul i32 %52, %55
  %57 = sub i32 %3, %56
  br label %58

58:                                               ; preds = %72, %49
  %59 = phi i32 [ 0, %49 ], [ %76, %72 ]
  %60 = phi ptr [ %2, %49 ], [ %75, %72 ]
  %61 = phi i32 [ %1, %49 ], [ %74, %72 ]
  %62 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %61, ptr noundef %60, i32 noundef %52, i1 noundef zeroext false) #26
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load i32, ptr %53, align 4
  %66 = icmp sgt i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = shl i32 %51, %65
  br label %72

69:                                               ; preds = %64
  %70 = load i32, ptr %54, align 4
  %71 = mul i32 %70, %51
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ %71, %69 ]
  %74 = add i32 %73, %61
  %75 = getelementptr i8, ptr %60, i32 %52
  %76 = add nuw i32 %59, 1
  %77 = icmp eq i32 %76, %55
  br i1 %77, label %78, label %58

78:                                               ; preds = %72, %45
  %79 = phi i32 [ %1, %45 ], [ %74, %72 ]
  %80 = phi ptr [ %2, %45 ], [ %75, %72 ]
  %81 = phi i32 [ %3, %45 ], [ %57, %72 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %79, ptr noundef %80, i32 noundef %81, i1 noundef zeroext false) #26
  br label %85

85:                                               ; preds = %83, %78, %58, %25
  %86 = phi i32 [ -22, %25 ], [ %84, %83 ], [ 0, %78 ], [ %62, %58 ]
  %87 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %28, align 4
  tail call void %88(ptr noundef %89) #26
  br label %90

90:                                               ; preds = %85, %20, %16, %12, %8, %4
  %91 = phi i32 [ %86, %85 ], [ -22, %16 ], [ -22, %20 ], [ -22, %12 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_noinc_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %161, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regmap_bus, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %161, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = urem i32 %3, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %161

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %20, %1
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq i32 %3, 0
  %24 = or i1 %23, %22
  br i1 %24, label %161, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29) #26
  %30 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1)
  br i1 %30, label %31, label %156

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call zeroext i1 %33(ptr noundef %37, i32 noundef %1) #26
  br i1 %38, label %90, label %156

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 36
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %90, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %60, %47
  %51 = phi i1 [ %63, %60 ], [ true, %47 ]
  %52 = phi i32 [ %61, %60 ], [ 0, %47 ]
  %53 = phi ptr [ %62, %60 ], [ %49, %47 ]
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %1
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.regmap_range, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = add nuw i32 %52, 1
  %62 = getelementptr %struct.regmap_range, ptr %53, i32 1
  %63 = icmp ult i32 %61, %45
  %64 = icmp eq i32 %61, %45
  br i1 %64, label %65, label %50

65:                                               ; preds = %60, %56
  %66 = phi i1 [ %63, %60 ], [ %51, %56 ]
  br i1 %66, label %156, label %67

67:                                               ; preds = %65, %43
  %68 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %41, align 4
  br label %73

73:                                               ; preds = %83, %71
  %74 = phi i1 [ %86, %83 ], [ true, %71 ]
  %75 = phi i32 [ %84, %83 ], [ 0, %71 ]
  %76 = phi ptr [ %85, %83 ], [ %72, %71 ]
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, %1
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.regmap_range, ptr %76, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %81, %1
  br i1 %82, label %83, label %88

83:                                               ; preds = %79, %73
  %84 = add nuw i32 %75, 1
  %85 = getelementptr %struct.regmap_range, ptr %76, i32 1
  %86 = icmp ult i32 %84, %69
  %87 = icmp eq i32 %84, %69
  br i1 %87, label %88, label %73

88:                                               ; preds = %83, %79
  %89 = phi i1 [ %86, %83 ], [ %74, %79 ]
  br i1 %89, label %90, label %156

90:                                               ; preds = %88, %67, %39, %35
  %91 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 67
  %92 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 64
  %93 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  br label %94

94:                                               ; preds = %152, %90
  %95 = phi i32 [ %3, %90 ], [ %154, %152 ]
  %96 = phi ptr [ %2, %90 ], [ %153, %152 ]
  %97 = load i32, ptr %91, align 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp ult i32 %97, %95
  %100 = select i1 %98, i1 %99, i1 false
  %101 = select i1 %100, i32 %97, i32 %95
  %102 = load i32, ptr %13, align 4
  %103 = udiv i32 %101, %102
  %104 = icmp ugt i32 %102, %101
  br i1 %104, label %156, label %105

105:                                              ; preds = %94
  %106 = load i8, ptr %92, align 1, !range !13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = icmp ult i32 %97, %101
  %110 = and i1 %98, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = udiv i32 %97, %102
  br label %113

113:                                              ; preds = %111, %105
  %114 = phi i32 [ %112, %111 ], [ 1, %105 ]
  %115 = udiv i32 %103, %114
  %116 = icmp ugt i32 %114, %103
  br i1 %116, label %146, label %117

117:                                              ; preds = %113, %108
  %118 = phi i32 [ %115, %113 ], [ 1, %108 ]
  %119 = phi i32 [ %114, %113 ], [ %103, %108 ]
  %120 = mul i32 %119, %102
  %121 = tail call i32 @llvm.umax.i32(i32 %118, i32 1) #26
  %122 = mul i32 %120, %121
  %123 = sub i32 %101, %122
  br label %124

124:                                              ; preds = %138, %117
  %125 = phi i32 [ 0, %117 ], [ %142, %138 ]
  %126 = phi ptr [ %96, %117 ], [ %141, %138 ]
  %127 = phi i32 [ %1, %117 ], [ %140, %138 ]
  %128 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %127, ptr noundef %126, i32 noundef %120, i1 noundef zeroext true) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %124
  %131 = load i32, ptr %93, align 4
  %132 = icmp sgt i32 %131, -1
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = shl i32 %119, %131
  br label %138

135:                                              ; preds = %130
  %136 = load i32, ptr %18, align 4
  %137 = mul i32 %136, %119
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ %134, %133 ], [ %137, %135 ]
  %140 = add i32 %139, %127
  %141 = getelementptr i8, ptr %126, i32 %120
  %142 = add nuw i32 %125, 1
  %143 = icmp eq i32 %142, %121
  br i1 %143, label %144, label %124

144:                                              ; preds = %138
  %145 = icmp eq i32 %123, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %144, %113
  %147 = phi i32 [ %123, %144 ], [ %101, %113 ]
  %148 = phi ptr [ %141, %144 ], [ %96, %113 ]
  %149 = phi i32 [ %140, %144 ], [ %1, %113 ]
  %150 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %149, ptr noundef %148, i32 noundef %147, i1 noundef zeroext true) #26
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146, %144
  %153 = getelementptr i8, ptr %96, i32 %101
  %154 = sub i32 %95, %101
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %94

156:                                              ; preds = %152, %146, %124, %94, %88, %65, %35, %25
  %157 = phi i32 [ -22, %88 ], [ -22, %25 ], [ -22, %35 ], [ -22, %65 ], [ %128, %124 ], [ %150, %146 ], [ 0, %152 ], [ -22, %94 ]
  %158 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %28, align 4
  tail call void %159(ptr noundef %160) #26
  br label %161

161:                                              ; preds = %156, %17, %12, %8, %4
  %162 = phi i32 [ %157, %156 ], [ -22, %4 ], [ -524, %8 ], [ -22, %12 ], [ -22, %17 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_field_update_bits_base(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %1, %8
  %10 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, %11
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %2, %8
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %15, i32 noundef %12, i32 noundef %16, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca i32, align 4
  %9 = zext i1 %5 to i8
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13) #26
  %14 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 %9, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #26
  store i32 0, ptr %8, align 4, !annotation !9
  %15 = icmp ne ptr %4, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  store i8 0, ptr %4, align 1
  br label %17

17:                                               ; preds = %16, %7
  %18 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1) #26
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 40
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %21(ptr noundef %25, i32 noundef %1, i32 noundef %2, i32 noundef %3) #26
  %27 = icmp eq i32 %26, 0
  %28 = and i1 %15, %27
  br i1 %28, label %45, label %46

29:                                               ; preds = %19, %17
  %30 = call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8) #26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, ptr %8, align 4
  %34 = xor i32 %2, -1
  %35 = and i32 %33, %34
  %36 = and i32 %3, %2
  %37 = or i32 %35, %36
  %38 = xor i1 %6, true
  %39 = icmp eq i32 %37, %33
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = call i32 @_regmap_write(ptr noundef %0, i32 noundef %1, i32 noundef %37) #26
  %43 = icmp eq i32 %42, 0
  %44 = and i1 %15, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %23
  store i8 1, ptr %4, align 1
  br label %46

46:                                               ; preds = %45, %41, %32, %29, %23
  %47 = phi i32 [ %30, %29 ], [ %26, %23 ], [ %42, %41 ], [ 0, %32 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #26
  store i8 0, ptr %14, align 4
  %48 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %12, align 4
  call void %49(ptr noundef %50) #26
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_fields_update_bits_base(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %2, %13
  %15 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, %16
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = mul i32 %22, %1
  %24 = add i32 %23, %20
  %25 = shl i32 %3, %13
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %24, i32 noundef %17, i32 noundef %25, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  br label %27

27:                                               ; preds = %11, %7
  %28 = phi i32 [ %26, %11 ], [ -22, %7 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_bulk_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void %22(ptr noundef %24) #26
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  switch i32 %6, label %61 [
    i32 1, label %28
    i32 2, label %28
    i32 4, label %28
  ]

28:                                               ; preds = %26, %26, %26
  br label %32

29:                                               ; preds = %56
  %30 = add nuw i32 %33, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %61, label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ %30, %29 ], [ 0, %28 ]
  switch i32 %6, label %43 [
    i32 1, label %34
    i32 2, label %38
  ]

34:                                               ; preds = %32
  %35 = getelementptr i8, ptr %2, i32 %33
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  br label %47

38:                                               ; preds = %32
  %39 = shl i32 %33, 1
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  br label %47

43:                                               ; preds = %32
  %44 = shl i32 %33, 2
  %45 = getelementptr i8, ptr %2, i32 %44
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %38, %34
  %48 = phi i32 [ %46, %43 ], [ %42, %38 ], [ %37, %34 ]
  %49 = load i32, ptr %27, align 4
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = shl i32 %33, %49
  br label %56

53:                                               ; preds = %47
  %54 = load i32, ptr %7, align 4
  %55 = mul i32 %54, %33
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  %58 = add i32 %57, %1
  %59 = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %58, i32 noundef %48)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %29, label %61

61:                                               ; preds = %56, %29, %26, %20
  %62 = phi i32 [ 0, %20 ], [ -22, %26 ], [ %59, %56 ], [ 0, %29 ]
  %63 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %23, align 4
  tail call void %64(ptr noundef %65) #26
  br label %82

66:                                               ; preds = %16
  %67 = mul i32 %6, %3
  %68 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef %67, i32 noundef %69) #26
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %74, %72
  %75 = phi i32 [ %78, %74 ], [ 0, %72 ]
  %76 = load ptr, ptr %17, align 4
  %77 = getelementptr i8, ptr %70, i32 %75
  tail call void %76(ptr noundef %77) #26
  %78 = add i32 %75, %6
  %79 = icmp ult i32 %78, %67
  br i1 %79, label %74, label %80

80:                                               ; preds = %74, %72
  %81 = tail call i32 @regmap_raw_write(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %70, i32 noundef %67)
  tail call void @kfree(ptr noundef nonnull %70) #26
  br label %82

82:                                               ; preds = %80, %66, %61, %4
  %83 = phi i32 [ -22, %4 ], [ -12, %66 ], [ %81, %80 ], [ %62, %61 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %7) #26
  %8 = tail call fastcc i32 @_regmap_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %9 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  tail call void %10(ptr noundef %11) #26
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 65
  %5 = load i8, ptr %4, align 2, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %239, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 71
  br label %11

11:                                               ; preds = %39, %9
  %12 = phi i32 [ 0, %9 ], [ %40, %39 ]
  %13 = getelementptr %struct.reg_sequence, ptr %1, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.reg_sequence, ptr %1, i32 %12, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @_regmap_write(ptr noundef %0, i32 noundef %14, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %239

19:                                               ; preds = %11
  %20 = getelementptr %struct.reg_sequence, ptr %1, i32 %12, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %10, align 4, !range !13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = icmp ult i32 %21, 11
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %21) #26
  br label %39

30:                                               ; preds = %26
  %31 = icmp ult i32 %21, 20001
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = shl nuw nsw i32 %21, 1
  tail call void @usleep_range_state(i32 noundef %21, i32 noundef %33, i32 noundef 2) #26
  br label %39

34:                                               ; preds = %30
  %35 = add i32 %21, 999
  %36 = udiv i32 %35, 1000
  tail call void @msleep(i32 noundef %36) #26
  br label %39

37:                                               ; preds = %23
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %38(i32 noundef %21) #26
  br label %39

39:                                               ; preds = %37, %34, %32, %28, %19
  %40 = add nuw i32 %12, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %239, label %11

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %239, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 26
  %48 = load ptr, ptr %47, align 4
  %49 = icmp ne ptr %48, null
  %50 = icmp ne i32 %2, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %55 = load i32, ptr %1, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = tail call zeroext i1 %48(ptr noundef %56, i32 noundef %55) #26
  br i1 %57, label %67, label %239

58:                                               ; preds = %67
  %59 = add nuw i32 %69, 1
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %47, align 4
  %63 = getelementptr %struct.reg_sequence, ptr %1, i32 %59
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %53, align 4
  %66 = tail call zeroext i1 %62(ptr noundef %65, i32 noundef %64) #26
  br i1 %66, label %67, label %239

67:                                               ; preds = %61, %52
  %68 = phi i32 [ %64, %61 ], [ %55, %52 ]
  %69 = phi i32 [ %59, %61 ], [ 0, %52 ]
  %70 = load i32, ptr %54, align 4
  %71 = add i32 %70, -1
  %72 = and i32 %71, %68
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %58, label %239

74:                                               ; preds = %58, %46
  %75 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %76 = load i8, ptr %75, align 1, !range !13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %94, label %83

80:                                               ; preds = %83
  %81 = add nuw i32 %84, 1
  %82 = icmp eq i32 %81, %2
  br i1 %82, label %94, label %83

83:                                               ; preds = %80, %78
  %84 = phi i32 [ %81, %80 ], [ 0, %78 ]
  %85 = getelementptr %struct.reg_sequence, ptr %1, i32 %84
  %86 = getelementptr %struct.reg_sequence, ptr %1, i32 %84, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %85, align 4
  %89 = tail call i32 @regcache_write(ptr noundef %0, i32 noundef %88, i32 noundef %87) #26
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %80, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.38, i32 noundef %88, i32 noundef %89) #29
  br label %239

94:                                               ; preds = %80, %78
  %95 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %96 = load i8, ptr %95, align 4, !range !13
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 59
  store i8 1, ptr %99, align 4
  br label %239

100:                                              ; preds = %94, %74
  %101 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105, !prof !11

104:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2511, i32 noundef 9, ptr noundef null) #26
  br label %105

105:                                              ; preds = %104, %100
  %106 = icmp eq i32 %2, 0
  br i1 %106, label %237, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br label %114

111:                                              ; preds = %135
  %112 = add nuw i32 %115, 1
  %113 = icmp eq i32 %112, %2
  br i1 %113, label %237, label %114

114:                                              ; preds = %111, %107
  %115 = phi i32 [ 0, %107 ], [ %112, %111 ]
  %116 = getelementptr %struct.reg_sequence, ptr %1, i32 %115
  %117 = load i32, ptr %116, align 4
  br i1 %110, label %135, label %118

118:                                              ; preds = %131, %114
  %119 = phi ptr [ %133, %131 ], [ %109, %114 ]
  %120 = getelementptr inbounds %struct.regmap_range_node, ptr %119, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %121, %117
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 2
  br label %131

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.regmap_range_node, ptr %119, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = icmp ult i32 %127, %117
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.rb_node, ptr %119, i32 0, i32 1
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi ptr [ %124, %123 ], [ %130, %129 ]
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %118

135:                                              ; preds = %131, %114
  %136 = getelementptr %struct.reg_sequence, ptr %1, i32 %115, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %111, label %139

139:                                              ; preds = %135, %125
  %140 = mul i32 %2, 12
  %141 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %140, i32 noundef 3264) #26
  %142 = icmp eq ptr %141, null
  br i1 %142, label %239, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 71
  br label %145

145:                                              ; preds = %224, %143
  %146 = phi i32 [ 0, %143 ], [ %225, %224 ]
  %147 = phi ptr [ %141, %143 ], [ %227, %224 ]
  %148 = phi i32 [ 0, %143 ], [ %229, %224 ]
  %149 = phi i32 [ 0, %143 ], [ %228, %224 ]
  %150 = getelementptr %struct.reg_sequence, ptr %141, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %108, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %182, label %154

154:                                              ; preds = %167, %145
  %155 = phi ptr [ %169, %167 ], [ %152, %145 ]
  %156 = getelementptr inbounds %struct.regmap_range_node, ptr %155, i32 0, i32 3
  %157 = load i32, ptr %156, align 4
  %158 = icmp ult i32 %151, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 2
  br label %167

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.regmap_range_node, ptr %155, i32 0, i32 4
  %163 = load i32, ptr %162, align 4
  %164 = icmp ult i32 %163, %151
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.rb_node, ptr %155, i32 0, i32 1
  br label %167

167:                                              ; preds = %165, %159
  %168 = phi ptr [ %160, %159 ], [ %166, %165 ]
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %182, label %154

171:                                              ; preds = %161
  %172 = sub i32 %151, %157
  %173 = getelementptr inbounds %struct.regmap_range_node, ptr %155, i32 0, i32 9
  %174 = load i32, ptr %173, align 4
  %175 = udiv i32 %172, %174
  %176 = icmp eq i32 %149, 0
  %177 = select i1 %176, i32 %175, i32 %146
  %178 = icmp eq i32 %175, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %171
  %180 = getelementptr %struct.reg_sequence, ptr %141, i32 %149, i32 2
  %181 = load i32, ptr %180, align 4
  br label %188

182:                                              ; preds = %171, %167, %145
  %183 = phi ptr [ null, %145 ], [ %155, %171 ], [ null, %167 ]
  %184 = phi i32 [ %146, %145 ], [ %175, %171 ], [ %146, %167 ]
  %185 = getelementptr %struct.reg_sequence, ptr %141, i32 %149, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %224, label %188

188:                                              ; preds = %182, %179
  %189 = phi i32 [ %186, %182 ], [ %181, %179 ]
  %190 = phi i1 [ true, %182 ], [ false, %179 ]
  %191 = phi i32 [ %184, %182 ], [ %175, %179 ]
  %192 = phi ptr [ %183, %182 ], [ %155, %179 ]
  %193 = icmp ne i32 %189, 0
  %194 = icmp eq i32 %149, 0
  %195 = select i1 %193, i1 %194, i1 false
  %196 = select i1 %195, i32 1, i32 %148
  %197 = tail call fastcc i32 @_regmap_raw_multi_reg_write(ptr noundef %0, ptr noundef %147, i32 noundef %196) #26
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %188
  %200 = getelementptr %struct.reg_sequence, ptr %141, i32 %149, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %199
  %204 = load i8, ptr %144, align 4, !range !13
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %203
  %207 = icmp ult i32 %201, 11
  br i1 %207, label %208, label %210

208:                                              ; preds = %206
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %209(i32 noundef %201) #26
  br label %219

210:                                              ; preds = %206
  %211 = icmp ult i32 %201, 20001
  br i1 %211, label %212, label %214

212:                                              ; preds = %210
  %213 = shl nuw nsw i32 %201, 1
  tail call void @usleep_range_state(i32 noundef %201, i32 noundef %213, i32 noundef 2) #26
  br label %219

214:                                              ; preds = %210
  %215 = add i32 %201, 999
  %216 = udiv i32 %215, 1000
  tail call void @msleep(i32 noundef %216) #26
  br label %219

217:                                              ; preds = %203
  %218 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %218(i32 noundef %201) #26
  br label %219

219:                                              ; preds = %217, %214, %212, %208, %199
  %220 = getelementptr %struct.reg_sequence, ptr %147, i32 %196
  br i1 %190, label %224, label %221

221:                                              ; preds = %219
  %222 = tail call fastcc i32 @_regmap_select_page(ptr noundef %0, ptr noundef %220, ptr noundef %192, i32 noundef 1) #26
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %221, %219, %182
  %225 = phi i32 [ %191, %219 ], [ %184, %182 ], [ %191, %221 ]
  %226 = phi i32 [ 0, %219 ], [ %148, %182 ], [ 0, %221 ]
  %227 = phi ptr [ %220, %219 ], [ %147, %182 ], [ %220, %221 ]
  %228 = add nuw i32 %149, 1
  %229 = add i32 %226, 1
  %230 = icmp eq i32 %228, %2
  br i1 %230, label %231, label %145

231:                                              ; preds = %224
  %232 = icmp ult i32 %226, 2147483647
  br i1 %232, label %233, label %235

233:                                              ; preds = %231
  %234 = tail call fastcc i32 @_regmap_raw_multi_reg_write(ptr noundef %0, ptr noundef %227, i32 noundef %229) #26
  br label %235

235:                                              ; preds = %233, %231, %221, %188
  %236 = phi i32 [ %234, %233 ], [ 0, %231 ], [ %222, %221 ], [ %197, %188 ]
  tail call void @kfree(ptr noundef nonnull %141) #26
  br label %239

237:                                              ; preds = %111, %105
  %238 = tail call fastcc i32 @_regmap_raw_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %239

239:                                              ; preds = %237, %235, %139, %98, %91, %67, %61, %52, %42, %39, %11, %7
  %240 = phi i32 [ %238, %237 ], [ %89, %91 ], [ 0, %98 ], [ -22, %42 ], [ -12, %139 ], [ %236, %235 ], [ 0, %7 ], [ -22, %52 ], [ %17, %11 ], [ 0, %39 ], [ -22, %61 ], [ -22, %67 ]
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_multi_reg_write_bypassed(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void %5(ptr noundef %7) #26
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %9 = load i8, ptr %8, align 1, !range !13
  store i8 1, ptr %8, align 1
  %10 = tail call fastcc i32 @_regmap_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store i8 %9, ptr %8, align 1
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %6, align 4
  tail call void %12(ptr noundef %13) #26
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_raw_write_async(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = urem i32 %3, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %80

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = and i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void %17(ptr noundef %19) #26
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 1, ptr %20, align 4
  %21 = load i32, ptr %5, align 4
  %22 = udiv i32 %3, %21
  %23 = icmp ugt i32 %21, %3
  br i1 %23, label %75, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 64
  %26 = load i8, ptr %25, align 1, !range !13
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 67
  %30 = load i32, ptr %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = icmp ult i32 %30, %3
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = udiv i32 %30, %21
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi i32 [ %35, %34 ], [ 1, %24 ]
  %38 = udiv i32 %22, %37
  %39 = icmp ugt i32 %37, %22
  br i1 %39, label %68, label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %38, %36 ], [ 1, %28 ]
  %42 = phi i32 [ %37, %36 ], [ %22, %28 ]
  %43 = mul i32 %42, %21
  %44 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %45 = tail call i32 @llvm.umax.i32(i32 %41, i32 1) #26
  %46 = mul i32 %43, %45
  %47 = sub i32 %3, %46
  br label %48

48:                                               ; preds = %62, %40
  %49 = phi i32 [ 0, %40 ], [ %66, %62 ]
  %50 = phi ptr [ %2, %40 ], [ %65, %62 ]
  %51 = phi i32 [ %1, %40 ], [ %64, %62 ]
  %52 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %51, ptr noundef %50, i32 noundef %43, i1 noundef zeroext false) #26
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %48
  %55 = load i32, ptr %44, align 4
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = shl i32 %42, %55
  br label %62

59:                                               ; preds = %54
  %60 = load i32, ptr %10, align 4
  %61 = mul i32 %60, %42
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  %64 = add i32 %63, %51
  %65 = getelementptr i8, ptr %50, i32 %43
  %66 = add nuw i32 %49, 1
  %67 = icmp eq i32 %66, %45
  br i1 %67, label %68, label %48

68:                                               ; preds = %62, %36
  %69 = phi i32 [ %1, %36 ], [ %64, %62 ]
  %70 = phi ptr [ %2, %36 ], [ %65, %62 ]
  %71 = phi i32 [ %3, %36 ], [ %47, %62 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call fastcc i32 @_regmap_raw_write_impl(ptr noundef %0, i32 noundef %69, ptr noundef %70, i32 noundef %71, i1 noundef zeroext false) #26
  br label %75

75:                                               ; preds = %73, %68, %48, %15
  %76 = phi i32 [ -22, %15 ], [ %74, %73 ], [ 0, %68 ], [ %52, %48 ]
  store i8 0, ptr %20, align 4
  %77 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %18, align 4
  tail call void %78(ptr noundef %79) #26
  br label %80

80:                                               ; preds = %75, %9, %4
  %81 = phi i32 [ %76, %75 ], [ -22, %4 ], [ -22, %9 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = and i32 %6, %1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13) #26
  %14 = tail call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %15 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %12, align 4
  tail call void %16(ptr noundef %17) #26
  br label %18

18:                                               ; preds = %9, %3
  %19 = phi i32 [ %14, %9 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %13 = load i8, ptr %12, align 1, !range !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @regcache_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %134, label %18

18:                                               ; preds = %15, %10
  %19 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 53
  %20 = load i8, ptr %19, align 4, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %134

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 38
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %134, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %28 = load i32, ptr %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = icmp ult i32 %28, %1
  %31 = and i1 %29, %30
  br i1 %31, label %134, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %134

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 27
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 %38(ptr noundef %42, i32 noundef %1) #26
  br i1 %43, label %44, label %134

44:                                               ; preds = %40
  %45 = load ptr, ptr %23, align 4
  br label %97

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 33
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %97, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.regmap_access_table, ptr %48, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.regmap_access_table, ptr %48, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %67, %54
  %58 = phi i1 [ %70, %67 ], [ true, %54 ]
  %59 = phi i32 [ %68, %67 ], [ 0, %54 ]
  %60 = phi ptr [ %69, %67 ], [ %56, %54 ]
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %1
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.regmap_range, ptr %60, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %65, %1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %57
  %68 = add nuw i32 %59, 1
  %69 = getelementptr %struct.regmap_range, ptr %60, i32 1
  %70 = icmp ult i32 %68, %52
  %71 = icmp eq i32 %68, %52
  br i1 %71, label %72, label %57

72:                                               ; preds = %67, %63
  %73 = phi i1 [ %70, %67 ], [ %58, %63 ]
  br i1 %73, label %134, label %74

74:                                               ; preds = %72, %50
  %75 = getelementptr inbounds %struct.regmap_access_table, ptr %48, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %48, align 4
  br label %80

80:                                               ; preds = %90, %78
  %81 = phi i1 [ %93, %90 ], [ true, %78 ]
  %82 = phi i32 [ %91, %90 ], [ 0, %78 ]
  %83 = phi ptr [ %92, %90 ], [ %79, %78 ]
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %84, %1
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.regmap_range, ptr %83, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp ult i32 %88, %1
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %80
  %91 = add nuw i32 %82, 1
  %92 = getelementptr %struct.regmap_range, ptr %83, i32 1
  %93 = icmp ult i32 %91, %76
  %94 = icmp eq i32 %91, %76
  br i1 %94, label %95, label %80

95:                                               ; preds = %90, %86
  %96 = phi i1 [ %93, %90 ], [ %81, %86 ]
  br i1 %96, label %97, label %134

97:                                               ; preds = %95, %74, %46, %44
  %98 = phi ptr [ %45, %44 ], [ %24, %74 ], [ %24, %46 ], [ %24, %95 ]
  %99 = tail call i32 %98(ptr noundef %11, i32 noundef %1, ptr noundef %2) #26
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %97
  %102 = load i32, ptr %2, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #26
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !23
  %117 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_reg_read, i32 0, i32 7), align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %119, %116
  %120 = phi ptr [ %124, %119 ], [ %117, %116 ]
  %121 = load volatile ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.tracepoint_func, ptr %120, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  tail call void %121(ptr noundef %123, ptr noundef %0, i32 noundef %1, i32 noundef %102) #26
  %124 = getelementptr %struct.tracepoint_func, ptr %120, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %119

127:                                              ; preds = %119, %116
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !24
  br label %128

128:                                              ; preds = %127, %105, %101
  %129 = load i8, ptr %12, align 1, !range !13
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, ptr %2, align 4
  %133 = tail call i32 @regcache_write(ptr noundef %0, i32 noundef %1, i32 noundef %132) #26
  br label %134

134:                                              ; preds = %131, %128, %97, %95, %72, %40, %32, %26, %22, %18, %15
  %135 = phi i32 [ 0, %15 ], [ -16, %18 ], [ -5, %95 ], [ 0, %128 ], [ 0, %131 ], [ %99, %97 ], [ -5, %40 ], [ -5, %22 ], [ -5, %26 ], [ -5, %32 ], [ -5, %72 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = freeze i32 %7
  %9 = udiv i32 %3, %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %145, label %13

13:                                               ; preds = %4
  %14 = mul i32 %9, %8
  %15 = sub i32 %3, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %145

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %20, %1
  %22 = icmp ne i32 %21, 0
  %23 = icmp ugt i32 %7, %3
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %145, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29) #26
  %30 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  br label %35

31:                                               ; preds = %45
  %32 = add nuw i32 %37, 1
  %33 = icmp ult i32 %32, %9
  %34 = icmp eq i32 %32, %9
  br i1 %34, label %49, label %35

35:                                               ; preds = %31, %25
  %36 = phi i1 [ true, %25 ], [ %33, %31 ]
  %37 = phi i32 [ 0, %25 ], [ %32, %31 ]
  %38 = load i32, ptr %30, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = shl i32 %37, %38
  br label %45

42:                                               ; preds = %35
  %43 = load i32, ptr %18, align 4
  %44 = mul i32 %43, %37
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %42 ]
  %47 = add i32 %46, %1
  %48 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %47) #26
  br i1 %48, label %31, label %49

49:                                               ; preds = %45, %31
  %50 = phi i1 [ %33, %31 ], [ %36, %45 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %53 = load i8, ptr %52, align 1, !range !13
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  %61 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %119

62:                                               ; preds = %55, %51, %49
  %63 = load ptr, ptr %10, align 4
  %64 = getelementptr inbounds %struct.regmap_bus, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %140, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 63
  %69 = load i8, ptr %68, align 4, !range !13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 66
  %73 = load i32, ptr %72, align 4
  %74 = icmp ne i32 %73, 0
  %75 = icmp ult i32 %73, %3
  %76 = and i1 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = udiv i32 %73, %7
  br label %79

79:                                               ; preds = %77, %67
  %80 = phi i32 [ %78, %77 ], [ 1, %67 ]
  %81 = udiv i32 %9, %80
  %82 = icmp ugt i32 %80, %9
  br i1 %82, label %110, label %83

83:                                               ; preds = %79, %71
  %84 = phi i32 [ %81, %79 ], [ 1, %71 ]
  %85 = phi i32 [ %80, %79 ], [ %9, %71 ]
  %86 = mul i32 %85, %7
  %87 = call i32 @llvm.umax.i32(i32 %84, i32 1)
  br label %88

88:                                               ; preds = %103, %83
  %89 = phi i32 [ 0, %83 ], [ %108, %103 ]
  %90 = phi i32 [ %3, %83 ], [ %107, %103 ]
  %91 = phi ptr [ %2, %83 ], [ %106, %103 ]
  %92 = phi i32 [ %1, %83 ], [ %105, %103 ]
  %93 = tail call fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %92, ptr noundef %91, i32 noundef %86, i1 noundef zeroext false)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %88
  %96 = load i32, ptr %30, align 4
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = shl i32 %85, %96
  br label %103

100:                                              ; preds = %95
  %101 = load i32, ptr %18, align 4
  %102 = mul i32 %101, %85
  br label %103

103:                                              ; preds = %100, %98
  %104 = phi i32 [ %99, %98 ], [ %102, %100 ]
  %105 = add i32 %104, %92
  %106 = getelementptr i8, ptr %91, i32 %86
  %107 = sub i32 %90, %86
  %108 = add nuw i32 %89, 1
  %109 = icmp eq i32 %108, %87
  br i1 %109, label %110, label %88

110:                                              ; preds = %103, %79
  %111 = phi i32 [ %1, %79 ], [ %105, %103 ]
  %112 = phi ptr [ %2, %79 ], [ %106, %103 ]
  %113 = phi i32 [ %3, %79 ], [ %107, %103 ]
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = tail call fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %111, ptr noundef %112, i32 noundef %113, i1 noundef zeroext false)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %115, %110
  br label %140

119:                                              ; preds = %133, %59
  %120 = phi i32 [ 0, %59 ], [ %138, %133 ]
  %121 = load i32, ptr %30, align 4
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = shl i32 %120, %121
  br label %128

125:                                              ; preds = %119
  %126 = load i32, ptr %18, align 4
  %127 = mul i32 %126, %120
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %127, %125 ]
  %130 = add i32 %129, %1
  %131 = call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %130, ptr noundef nonnull %5)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load ptr, ptr %60, align 4
  %135 = mul i32 %120, %7
  %136 = getelementptr i8, ptr %2, i32 %135
  %137 = load i32, ptr %5, align 4
  call void %134(ptr noundef %136, i32 noundef %137, i32 noundef 0) #26
  %138 = add nuw i32 %120, 1
  %139 = icmp eq i32 %138, %61
  br i1 %139, label %140, label %119

140:                                              ; preds = %133, %128, %118, %115, %88, %62
  %141 = phi i32 [ 0, %118 ], [ -524, %62 ], [ %116, %115 ], [ %93, %88 ], [ %131, %128 ], [ 0, %133 ]
  %142 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %28, align 4
  call void %143(ptr noundef %144) #26
  br label %145

145:                                              ; preds = %140, %17, %13, %4
  %146 = phi i32 [ %141, %140 ], [ -22, %4 ], [ -22, %13 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13, !prof !11

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 2663, i32 noundef 9, ptr noundef null) #26
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %146, label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %15 = getelementptr inbounds %struct.regmap_bus, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %146, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 68
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %35, %18
  %23 = phi ptr [ %37, %35 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.regmap_range_node, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 2
  br label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.regmap_range_node, ptr %23, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %1
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rb_node, ptr %23, i32 0, i32 1
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %33 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %22

39:                                               ; preds = %29
  br i1 %4, label %44, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = udiv i32 %3, %42
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i32 [ %43, %40 ], [ 1, %39 ]
  %46 = call fastcc i32 @_regmap_select_page(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %23, i32 noundef %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %146

48:                                               ; preds = %44
  %49 = load i32, ptr %6, align 4
  br label %50

50:                                               ; preds = %48, %35, %18
  %51 = phi i32 [ %49, %48 ], [ %1, %18 ], [ %1, %35 ]
  %52 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 44
  %57 = load i32, ptr %56, align 4
  tail call void %53(ptr noundef %55, i32 noundef %51, i32 noundef %57) #26
  %58 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 42
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %50
  %64 = load ptr, ptr %54, align 4
  %65 = icmp ne ptr %64, null
  %66 = icmp sgt i32 %59, 0
  %67 = and i1 %66, %65
  br i1 %67, label %68, label %78

68:                                               ; preds = %68, %63
  %69 = phi i32 [ %76, %68 ], [ 0, %63 ]
  %70 = shl i32 %69, 3
  %71 = lshr i32 %61, %70
  %72 = getelementptr i8, ptr %64, i32 %69
  %73 = load i8, ptr %72, align 1
  %74 = trunc i32 %71 to i8
  %75 = or i8 %73, %74
  store i8 %75, ptr %72, align 1
  %76 = add nuw nsw i32 %69, 1
  %77 = icmp eq i32 %76, %59
  br i1 %77, label %78, label %68

78:                                               ; preds = %68, %63, %50
  %79 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = udiv i32 %3, %80
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_start, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = tail call ptr @llvm.thread.pointer() #26
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %96 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_start, i32 0, i32 7), align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %98, %95
  %99 = phi ptr [ %103, %98 ], [ %96, %95 ]
  %100 = load volatile ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tracepoint_func, ptr %99, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void %100(ptr noundef %102, ptr noundef %0, i32 noundef %51, i32 noundef %81) #26
  %103 = getelementptr %struct.tracepoint_func, ptr %99, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %98

106:                                              ; preds = %98, %95
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %107

107:                                              ; preds = %106, %84, %78
  %108 = load ptr, ptr %7, align 4
  %109 = getelementptr inbounds %struct.regmap_bus, ptr %108, i32 0, i32 6
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %54, align 4
  %114 = load i32, ptr %58, align 4
  %115 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, %114
  %118 = tail call i32 %110(ptr noundef %112, ptr noundef %113, i32 noundef %117, ptr noundef %2, i32 noundef %3) #26
  %119 = load i32, ptr %79, align 4
  %120 = udiv i32 %3, %119
  %121 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_done, i32 0, i32 1), align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %107
  %124 = tail call ptr @llvm.thread.pointer() #26
  %125 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = lshr i32 %126, 5
  %128 = getelementptr i32, ptr @__cpu_online_mask, i32 %127
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %126, 31
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %123
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !27
  %135 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_read_done, i32 0, i32 7), align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %137, %134
  %138 = phi ptr [ %142, %137 ], [ %135, %134 ]
  %139 = load volatile ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.tracepoint_func, ptr %138, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call void %139(ptr noundef %141, ptr noundef %0, i32 noundef %51, i32 noundef %120) #26
  %142 = getelementptr %struct.tracepoint_func, ptr %138, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %137

145:                                              ; preds = %137, %134
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !28
  br label %146

146:                                              ; preds = %145, %123, %107, %44, %13, %10
  %147 = phi i32 [ -22, %13 ], [ -22, %10 ], [ %46, %44 ], [ %118, %107 ], [ %118, %123 ], [ %118, %145 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_noinc_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %111, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regmap_bus, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = urem i32 %3, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = and i32 %20, %1
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq i32 %3, 0
  %24 = or i1 %23, %22
  br i1 %24, label %111, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29) #26
  %30 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %1)
  br i1 %30, label %31, label %106

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call zeroext i1 %33(ptr noundef %37, i32 noundef %1) #26
  br i1 %38, label %90, label %106

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 37
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %90, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %67, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %60, %47
  %51 = phi i1 [ %63, %60 ], [ true, %47 ]
  %52 = phi i32 [ %61, %60 ], [ 0, %47 ]
  %53 = phi ptr [ %62, %60 ], [ %49, %47 ]
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %1
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.regmap_range, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %58, %1
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = add nuw i32 %52, 1
  %62 = getelementptr %struct.regmap_range, ptr %53, i32 1
  %63 = icmp ult i32 %61, %45
  %64 = icmp eq i32 %61, %45
  br i1 %64, label %65, label %50

65:                                               ; preds = %60, %56
  %66 = phi i1 [ %63, %60 ], [ %51, %56 ]
  br i1 %66, label %106, label %67

67:                                               ; preds = %65, %43
  %68 = getelementptr inbounds %struct.regmap_access_table, ptr %41, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %41, align 4
  br label %73

73:                                               ; preds = %83, %71
  %74 = phi i1 [ %86, %83 ], [ true, %71 ]
  %75 = phi i32 [ %84, %83 ], [ 0, %71 ]
  %76 = phi ptr [ %85, %83 ], [ %72, %71 ]
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %77, %1
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.regmap_range, ptr %76, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp ult i32 %81, %1
  br i1 %82, label %83, label %88

83:                                               ; preds = %79, %73
  %84 = add nuw i32 %75, 1
  %85 = getelementptr %struct.regmap_range, ptr %76, i32 1
  %86 = icmp ult i32 %84, %69
  %87 = icmp eq i32 %84, %69
  br i1 %87, label %88, label %73

88:                                               ; preds = %83, %79
  %89 = phi i1 [ %86, %83 ], [ %74, %79 ]
  br i1 %89, label %90, label %106

90:                                               ; preds = %88, %67, %39, %35
  %91 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 66
  br label %92

92:                                               ; preds = %102, %90
  %93 = phi i32 [ %104, %102 ], [ %3, %90 ]
  %94 = phi ptr [ %103, %102 ], [ %2, %90 ]
  %95 = load i32, ptr %91, align 4
  %96 = icmp ne i32 %95, 0
  %97 = icmp ult i32 %95, %93
  %98 = select i1 %96, i1 %97, i1 false
  %99 = select i1 %98, i32 %95, i32 %93
  %100 = tail call fastcc i32 @_regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %94, i32 noundef %99, i1 noundef zeroext true)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = getelementptr i8, ptr %94, i32 %99
  %104 = sub i32 %93, %99
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %92

106:                                              ; preds = %102, %92, %88, %65, %35, %25
  %107 = phi i32 [ -22, %88 ], [ -22, %25 ], [ -22, %35 ], [ -22, %65 ], [ %100, %92 ], [ 0, %102 ]
  %108 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %28, align 4
  tail call void %109(ptr noundef %110) #26
  br label %111

111:                                              ; preds = %106, %17, %12, %8, %4
  %112 = phi i32 [ %107, %106 ], [ -22, %4 ], [ -524, %8 ], [ -22, %12 ], [ -22, %17 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_field_read(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 45
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16) #26
  %17 = call fastcc i32 @_regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %3) #26
  %18 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %15, align 4
  call void %19(ptr noundef %20) #26
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %3, align 4
  %26 = and i32 %25, %24
  %27 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %26, %28
  store i32 %29, ptr %1, align 4
  br label %30

30:                                               ; preds = %22, %12, %2
  %31 = phi i32 [ %17, %12 ], [ 0, %22 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_fields_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %1
  %15 = add i32 %14, %11
  %16 = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 45
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  %19 = and i32 %18, %15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25) #26
  %26 = call fastcc i32 @_regmap_read(ptr noundef %9, i32 noundef %15, ptr noundef nonnull %4) #26
  %27 = getelementptr inbounds %struct.regmap, ptr %9, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %24, align 4
  call void %28(ptr noundef %29) #26
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %4, align 4
  %35 = and i32 %34, %33
  %36 = getelementptr inbounds %struct.regmap_field, ptr %0, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %35, %37
  store i32 %38, ptr %2, align 4
  br label %39

39:                                               ; preds = %31, %21, %8, %3
  %40 = phi i32 [ 0, %31 ], [ -22, %3 ], [ %26, %21 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_bulk_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 46
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  br label %16

12:                                               ; preds = %26
  %13 = add nuw i32 %18, 1
  %14 = icmp ult i32 %13, %3
  %15 = icmp eq i32 %13, %3
  br i1 %15, label %30, label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ true, %9 ], [ %14, %12 ]
  %18 = phi i32 [ 0, %9 ], [ %13, %12 ]
  %19 = load i32, ptr %10, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = shl i32 %18, %19
  br label %26

23:                                               ; preds = %16
  %24 = load i32, ptr %11, align 4
  %25 = mul i32 %24, %18
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %22, %21 ], [ %25, %23 ]
  %28 = add i32 %27, %1
  %29 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %28) #26
  br i1 %29, label %12, label %30

30:                                               ; preds = %26, %12
  %31 = phi i1 [ %14, %12 ], [ %17, %26 ]
  %32 = load i32, ptr %11, align 4
  %33 = add i32 %32, -1
  %34 = and i32 %33, %1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %104

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %61, label %44

44:                                               ; preds = %40
  br i1 %31, label %45, label %49

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 48
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45, %44
  %50 = mul i32 %7, %3
  %51 = tail call i32 @regmap_raw_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %104, label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %59, %55 ], [ 0, %53 ]
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr i8, ptr %2, i32 %56
  tail call void %57(ptr noundef %58) #26
  %59 = add i32 %56, %7
  %60 = icmp ult i32 %59, %50
  br i1 %60, label %55, label %104

61:                                               ; preds = %45, %40, %36
  %62 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  tail call void %63(ptr noundef %65) #26
  %66 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  br label %67

67:                                               ; preds = %96, %61
  %68 = phi i32 [ %97, %96 ], [ 0, %61 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %69 = load i32, ptr %10, align 4
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = shl i32 %68, %69
  br label %76

73:                                               ; preds = %67
  %74 = load i32, ptr %11, align 4
  %75 = mul i32 %74, %68
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi i32 [ %72, %71 ], [ %75, %73 ]
  %78 = add i32 %77, %1
  %79 = call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %78, ptr noundef nonnull %5)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %76
  %82 = load i32, ptr %6, align 4
  switch i32 %82, label %94 [
    i32 4, label %83
    i32 2, label %86
    i32 1, label %90
  ]

83:                                               ; preds = %81
  %84 = load i32, ptr %5, align 4
  %85 = getelementptr i32, ptr %2, i32 %68
  store i32 %84, ptr %85, align 4
  br label %96

86:                                               ; preds = %81
  %87 = load i32, ptr %5, align 4
  %88 = trunc i32 %87 to i16
  %89 = getelementptr i16, ptr %2, i32 %68
  store i16 %88, ptr %89, align 2
  br label %96

90:                                               ; preds = %81
  %91 = load i32, ptr %5, align 4
  %92 = trunc i32 %91 to i8
  %93 = getelementptr i8, ptr %2, i32 %68
  store i8 %92, ptr %93, align 1
  br label %96

94:                                               ; preds = %81, %76
  %95 = phi i32 [ %79, %76 ], [ -22, %81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  br label %99

96:                                               ; preds = %90, %86, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  %97 = add nuw i32 %68, 1
  %98 = icmp eq i32 %97, %66
  br i1 %98, label %99, label %67

99:                                               ; preds = %96, %94
  %100 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %101 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %64, align 4
  call void %102(ptr noundef %103) #26
  br label %104

104:                                              ; preds = %99, %55, %53, %49, %30, %4
  %105 = phi i32 [ -22, %30 ], [ %51, %49 ], [ %100, %99 ], [ -22, %4 ], [ 0, %53 ], [ 0, %55 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_test_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = and i32 %7, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14) #26
  %15 = call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #26
  %16 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %13, align 4
  call void %17(ptr noundef %18) #26
  %19 = icmp eq i32 %15, 0
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, %2
  %22 = icmp eq i32 %21, %2
  %23 = zext i1 %22 to i32
  %24 = select i1 %19, i32 %23, i32 %15
  br label %25

25:                                               ; preds = %10, %3
  %26 = phi i32 [ -22, %3 ], [ %24, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regmap_async_complete_cb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regmap_async, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_io_complete, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #26
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
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !29
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_io_complete, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %4) #26
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %30

30:                                               ; preds = %29, %7, %2
  %31 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %31) #26
  %32 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 15
  %33 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  store ptr %37, ptr %0, align 4
  store ptr %32, ptr %33, align 4
  store volatile ptr %0, ptr %32, align 4
  %39 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 14
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  %42 = icmp eq i32 %1, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 16
  store i32 %1, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  %46 = load i16, ptr %31, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #26, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #26, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !34
  br i1 %41, label %48, label %50

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.regmap, ptr %4, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %49, i32 noundef 3, i32 noundef 1, ptr noundef null) #26
  br label %50

50:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_async_complete(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %83, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regmap_bus, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_start, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.thread.pointer() #26
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  %25 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_start, i32 0, i32 7), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %32, %27 ], [ %25, %24 ]
  %29 = load volatile ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.tracepoint_func, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %29(ptr noundef %31, ptr noundef %0) #26
  %32 = getelementptr %struct.tracepoint_func, ptr %28, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %27

35:                                               ; preds = %27, %24
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !36
  br label %36

36:                                               ; preds = %35, %13, %10
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 12
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #26
  %39 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 14
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #26
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #26
  %43 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 13
  %44 = call i32 @prepare_to_wait_event(ptr noundef %43, ptr noundef nonnull %2, i32 noundef 2) #26
  %45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #26
  %46 = load volatile ptr, ptr %39, align 4
  %47 = icmp eq ptr %46, %39
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %45) #26
  br i1 %47, label %53, label %48

48:                                               ; preds = %48, %42
  call void @schedule() #26
  %49 = call i32 @prepare_to_wait_event(ptr noundef %43, ptr noundef nonnull %2, i32 noundef 2) #26
  %50 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #26
  %51 = load volatile ptr, ptr %39, align 4
  %52 = icmp eq ptr %51, %39
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %50) #26
  br i1 %52, label %53, label %48

53:                                               ; preds = %48, %42
  call void @finish_wait(ptr noundef %43, ptr noundef nonnull %2) #26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #26
  br label %54

54:                                               ; preds = %53, %36
  %55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #26
  %56 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 16
  %57 = load i32, ptr %56, align 4
  store i32 0, ptr %56, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %55) #26
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_done, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = tail call ptr @llvm.thread.pointer() #26
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
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !37
  %72 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_async_complete_done, i32 0, i32 7), align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %74, %71
  %75 = phi ptr [ %79, %74 ], [ %72, %71 ]
  %76 = load volatile ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tracepoint_func, ptr %75, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  call void %76(ptr noundef %78, ptr noundef %0) #26
  %79 = getelementptr %struct.tracepoint_func, ptr %75, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74

82:                                               ; preds = %74, %71
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !38
  br label %83

83:                                               ; preds = %82, %60, %54, %6, %1
  %84 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %57, %54 ], [ %57, %60 ], [ %57, %82 ]
  ret i32 %84
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_register_patch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 1
  %5 = load i1, ptr @regmap_register_patch.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %3
  store i1 true, ptr @regmap_register_patch.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 3246, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %2) #26
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %36, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 61
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 62
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %2
  %16 = mul i32 %15, 12
  %17 = tail call noalias ptr @krealloc(ptr noundef %12, i32 noundef %16, i32 noundef 3264) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %13, align 4
  %21 = getelementptr %struct.reg_sequence, ptr %17, i32 %20
  %22 = mul i32 %2, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 4 %1, i32 %22, i1 false)
  store ptr %17, ptr %11, align 4
  %23 = add i32 %20, %2
  store i32 %23, ptr %13, align 4
  %24 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27) #26
  %28 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 54
  %29 = load i8, ptr %28, align 1, !range !13
  store i8 1, ptr %28, align 1
  %30 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 11
  store i8 1, ptr %30, align 4
  %31 = tail call fastcc i32 @_regmap_multi_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store i8 0, ptr %30, align 4
  store i8 %29, ptr %28, align 1
  %32 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %26, align 4
  tail call void %33(ptr noundef %34) #26
  %35 = tail call i32 @regmap_async_complete(ptr noundef %0)
  br label %36

36:                                               ; preds = %19, %10, %9
  %37 = phi i32 [ %31, %19 ], [ 0, %9 ], [ -12, %10 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regmap_get_val_bytes(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regmap_get_max_register(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 25
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 -22, i32 %3
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regmap_get_reg_stride(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regmap_parse_val(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %1) #26
  store i32 %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @regmap_initcall() #18 section ".init.text" {
  tail call void @regmap_debugfs_initcall() #26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regmap_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_regmap_reg, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %13, i32 noundef %15, i32 noundef %17) #26
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #26
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
define internal i32 @trace_raw_output_regmap_block(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_regmap_block, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %13, i32 noundef %15, i32 noundef %17) #26
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regcache_sync(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_regcache_sync, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = getelementptr i8, ptr %5, i32 %20
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %13, ptr noundef %17, ptr noundef %21) #26
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regmap_bool(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regmap_bool, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %13, i32 noundef %15) #26
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regmap_async(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regmap_async, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %13) #26
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regcache_drop_region(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_regcache_drop_region, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %13, i32 noundef %15, i32 noundef %17) #26
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #26
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
declare i32 @llvm.read_register.i32(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #25

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #25

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #25

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_select_page(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = load i32, ptr %1, align 4
  %7 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = freeze i32 %9
  %13 = freeze i32 %11
  %14 = udiv i32 %12, %13
  %15 = mul i32 %14, %13
  %16 = sub i32 %12, %15
  %17 = icmp ugt i32 %3, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = add i32 %3, -1
  %20 = add i32 %19, %6
  %21 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %20, %22
  %24 = sub i32 %11, %16
  %25 = icmp ult i32 %24, %3
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %77, label %34

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %16
  %31 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %75, label %34

34:                                               ; preds = %27, %18
  %35 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 69
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = shl i32 %14, %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %46 = tail call zeroext i1 @regmap_volatile(ptr noundef %0, i32 noundef %40) #26
  br i1 %46, label %47, label %56

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 40
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %49(ptr noundef %53, i32 noundef %40, i32 noundef %42, i32 noundef %45) #26
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %69

56:                                               ; preds = %47, %34
  %57 = call fastcc i32 @_regmap_read(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %5) #26
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, ptr %5, align 4
  %61 = xor i32 %42, -1
  %62 = and i32 %60, %61
  %63 = and i32 %45, %42
  %64 = or i32 %62, %63
  %65 = icmp eq i32 %64, %60
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = call i32 @_regmap_write(ptr noundef %0, i32 noundef %40, i32 noundef %64) #26
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66, %56, %51
  %70 = phi i32 [ %67, %66 ], [ %54, %51 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  store ptr %36, ptr %35, align 4
  br label %77

71:                                               ; preds = %66, %59, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  store ptr %36, ptr %35, align 4
  %72 = getelementptr inbounds %struct.regmap_range_node, ptr %2, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %16
  br label %75

75:                                               ; preds = %71, %27
  %76 = phi i32 [ %74, %71 ], [ %30, %27 ]
  store i32 %76, ptr %1, align 4
  br label %77

77:                                               ; preds = %75, %69, %18
  %78 = phi i32 [ 0, %75 ], [ -22, %18 ], [ %70, %69 ]
  ret i32 %78
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #22

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regmap_raw_multi_reg_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = add i32 %10, %5
  %12 = mul i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %108, label %14

14:                                               ; preds = %3
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %108, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 5
  %21 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 44
  %22 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 7, i32 6
  br label %23

23:                                               ; preds = %55, %19
  %24 = phi i32 [ 0, %19 ], [ %61, %55 ]
  %25 = phi ptr [ %15, %19 ], [ %60, %55 ]
  %26 = getelementptr %struct.reg_sequence, ptr %1, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.reg_sequence, ptr %1, i32 %24, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %23
  %33 = tail call ptr @llvm.thread.pointer() #26
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !15
  %44 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_start, i32 0, i32 7), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %51, %46 ], [ %44, %43 ]
  %48 = load volatile ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tracepoint_func, ptr %47, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void %48(ptr noundef %50, ptr noundef %0, i32 noundef %27, i32 noundef 1) #26
  %51 = getelementptr %struct.tracepoint_func, ptr %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %46

54:                                               ; preds = %46, %43
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !16
  br label %55

55:                                               ; preds = %54, %32, %23
  %56 = load ptr, ptr %20, align 4
  %57 = load i32, ptr %21, align 4
  tail call void %56(ptr noundef %25, i32 noundef %27, i32 noundef %57) #26
  %58 = getelementptr i8, ptr %25, i32 %10
  %59 = load ptr, ptr %22, align 4
  tail call void %59(ptr noundef %58, i32 noundef %29, i32 noundef 0) #26
  %60 = getelementptr i8, ptr %58, i32 %5
  %61 = add nuw i32 %24, 1
  %62 = icmp eq i32 %61, %2
  br i1 %62, label %63, label %23

63:                                               ; preds = %55, %17
  %64 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 43
  %65 = load i32, ptr %64, align 4
  %66 = load i8, ptr %15, align 64
  %67 = trunc i32 %65 to i8
  %68 = or i8 %66, %67
  store i8 %68, ptr %15, align 64
  %69 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.regmap_bus, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.regmap, ptr %0, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 %72(ptr noundef %74, ptr noundef nonnull %15, i32 noundef %12) #26
  tail call void @kfree(ptr noundef nonnull %15) #26
  br i1 %18, label %108, label %76

76:                                               ; preds = %105, %63
  %77 = phi i32 [ %106, %105 ], [ 0, %63 ]
  %78 = getelementptr %struct.reg_sequence, ptr %1, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = tail call ptr @llvm.thread.pointer() #26
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !17
  %94 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regmap_hw_write_done, i32 0, i32 7), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %96, %93
  %97 = phi ptr [ %101, %96 ], [ %94, %93 ]
  %98 = load volatile ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tracepoint_func, ptr %97, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  tail call void %98(ptr noundef %100, ptr noundef %0, i32 noundef %79, i32 noundef 1) #26
  %101 = getelementptr %struct.tracepoint_func, ptr %97, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %96

104:                                              ; preds = %96, %93
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !18
  br label %105

105:                                              ; preds = %104, %82, %76
  %106 = add nuw i32 %77, 1
  %107 = icmp eq i32 %106, %2
  br i1 %107, label %108, label %76

108:                                              ; preds = %105, %63, %14, %3
  %109 = phi i32 [ -22, %3 ], [ -12, %14 ], [ %75, %63 ], [ %75, %105 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_debugfs_initcall() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #25

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { nounwind readonly }
attributes #22 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #23 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #25 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold nounwind }
attributes #30 = { nounwind allocsize(1) }

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
!12 = !{i64 688691}
!13 = !{i8 0, i8 2}
!14 = !{i32 0, i32 33}
!15 = !{i64 2152364469}
!16 = !{i64 2152364653}
!17 = !{i64 2152381407}
!18 = !{i64 2152381589}
!19 = !{i64 2152276377}
!20 = !{i64 2152276547}
!21 = !{i64 2152451590}
!22 = !{i64 2152451780}
!23 = !{i64 2152292979}
!24 = !{i64 2152293147}
!25 = !{i64 2152326695}
!26 = !{i64 2152326877}
!27 = !{i64 2152347601}
!28 = !{i64 2152347781}
!29 = !{i64 2152472389}
!30 = !{i64 2152472555}
!31 = !{i64 2149289780}
!32 = !{i64 2149285604}
!33 = !{i64 2149285679, i64 2149285706, i64 2149285753, i64 2149285775, i64 2149285803, i64 2149285823}
!34 = !{i64 2149312783}
!35 = !{i64 2152489087}
!36 = !{i64 2152489259}
!37 = !{i64 2152505909}
!38 = !{i64 2152506079}
