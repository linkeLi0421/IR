; ModuleID = '/llk/IR/drivers/mtd/nand/raw/nand_base.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_extract_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_extract_bits\22\09\09\09\09\09"
module asm "__kstrtabns_nand_extract_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_select_target:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_select_target\22\09\09\09\09\09"
module asm "__kstrtabns_nand_select_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_deselect_target:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_deselect_target\22\09\09\09\09\09"
module asm "__kstrtabns_nand_deselect_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_soft_waitrdy:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_soft_waitrdy\22\09\09\09\09\09"
module asm "__kstrtabns_nand_soft_waitrdy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_gpio_waitrdy:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_gpio_waitrdy\22\09\09\09\09\09"
module asm "__kstrtabns_nand_gpio_waitrdy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_page_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_page_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_page_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_change_read_column_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_change_read_column_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_change_read_column_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_oob_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_oob_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_oob_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_prog_page_begin_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_prog_page_begin_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_prog_page_begin_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_prog_page_end_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_prog_page_end_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_prog_page_end_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_prog_page_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_prog_page_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_prog_page_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_change_write_column_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_change_write_column_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_change_write_column_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_readid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_readid_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_readid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_status_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_status_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_status_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_erase_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_erase_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_erase_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_reset_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_reset_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_reset_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_data_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_data_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_data_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_write_data_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_write_data_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_write_data_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_op_parser_exec_op:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_op_parser_exec_op\22\09\09\09\09\09"
module asm "__kstrtabns_nand_op_parser_exec_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_subop_get_addr_start_off:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_subop_get_addr_start_off\22\09\09\09\09\09"
module asm "__kstrtabns_nand_subop_get_addr_start_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_subop_get_num_addr_cyc:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_subop_get_num_addr_cyc\22\09\09\09\09\09"
module asm "__kstrtabns_nand_subop_get_num_addr_cyc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_subop_get_data_start_off:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_subop_get_data_start_off\22\09\09\09\09\09"
module asm "__kstrtabns_nand_subop_get_data_start_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_subop_get_data_len:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_subop_get_data_len\22\09\09\09\09\09"
module asm "__kstrtabns_nand_subop_get_data_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_reset\22\09\09\09\09\09"
module asm "__kstrtabns_nand_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_check_erased_ecc_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_check_erased_ecc_chunk\22\09\09\09\09\09"
module asm "__kstrtabns_nand_check_erased_ecc_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_page_raw\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_monolithic_read_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_monolithic_read_page_raw\22\09\09\09\09\09"
module asm "__kstrtabns_nand_monolithic_read_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_page_hwecc_oob_first:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_page_hwecc_oob_first\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_page_hwecc_oob_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_read_oob_std:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_read_oob_std\22\09\09\09\09\09"
module asm "__kstrtabns_nand_read_oob_std:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_write_oob_std:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_write_oob_std\22\09\09\09\09\09"
module asm "__kstrtabns_nand_write_oob_std:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_write_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_write_page_raw\22\09\09\09\09\09"
module asm "__kstrtabns_nand_write_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_monolithic_write_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_monolithic_write_page_raw\22\09\09\09\09\09"
module asm "__kstrtabns_nand_monolithic_write_page_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_decode_ext_id:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_decode_ext_id\22\09\09\09\09\09"
module asm "__kstrtabns_nand_decode_ext_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_dt_parse_gpio_cs:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_dt_parse_gpio_cs\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_dt_parse_gpio_cs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_hamming_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_hamming_init\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_hamming_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_hamming_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_hamming_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_hamming_correct\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_hamming_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_hamming_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_hamming_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_hamming_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_bch_init\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_bch_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_bch_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_bch_correct\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_bch_correct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rawnand_sw_bch_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22rawnand_sw_bch_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_rawnand_sw_bch_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_ecc_choose_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_ecc_choose_conf\22\09\09\09\09\09"
module asm "__kstrtabns_nand_ecc_choose_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_scan_with_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_scan_with_ids\22\09\09\09\09\09"
module asm "__kstrtabns_nand_scan_with_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nand_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22nand_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_nand_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.nand_flash_dev = type { ptr, %union.anon.76, i32, i32, i32, i32, i16, i16, %struct.anon.78 }
%union.anon.76 = type { [8 x i8] }
%struct.anon.78 = type { i16, i16 }
%struct.nand_ops = type { ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.74, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.74 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.nand_op_instr = type { i32, %union.anon.72, i32 }
%union.anon.72 = type { %struct.nand_op_data_instr }
%struct.nand_op_data_instr = type { i32, %union.anon.73, i8 }
%union.anon.73 = type { ptr }
%struct.nand_operation = type { i32, ptr, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.nand_nvddr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }
%struct.nand_op_parser_ctx = type { ptr, i32, %struct.nand_subop }
%struct.nand_subop = type { i32, ptr, i32, i32, i32 }
%struct.nand_op_parser = type { ptr, i32 }
%struct.nand_op_parser_pattern = type { ptr, i32, ptr }
%struct.nand_op_parser_pattern_elem = type { i32, i8, %union.anon.75 }
%union.anon.75 = type { %struct.nand_op_parser_addr_constraints }
%struct.nand_op_parser_addr_constraints = type { i32 }
%struct.erase_info = type { i64, i64, i64 }
%struct.nand_secure_region = type { i64, i64 }
%struct.nand_ecc_sw_hamming_conf = type { %struct.nand_ecc_req_tweak_ctx, i32, ptr, ptr, i32 }
%struct.nand_ecc_req_tweak_ctx = type { %struct.nand_page_io_req, ptr, i32, i32, ptr, ptr, i8, i8 }
%struct.nand_page_io_req = type { i32, %struct.nand_pos, i32, i32, %union.anon.69, i32, i32, %union.anon.70, i32 }
%struct.nand_pos = type { i32, i32, i32, i32, i32 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.nand_manufacturer_desc = type { i32, ptr, ptr }
%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }

@dist3_pairing_scheme = dso_local local_unnamed_addr constant %struct.mtd_pairing_scheme { i32 2, ptr @nand_pairing_dist3_get_info, ptr @nand_pairing_dist3_get_wunit }, align 4
@__kstrtab_nand_extract_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_extract_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_extract_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_extract_bits to i32), ptr @__kstrtab_nand_extract_bits, ptr @__kstrtabns_nand_extract_bits }, section "___ksymtab_gpl+nand_extract_bits", align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/nand_base.c\00", align 1
@__kstrtab_nand_select_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_select_target = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_select_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_select_target to i32), ptr @__kstrtab_nand_select_target, ptr @__kstrtabns_nand_select_target }, section "___ksymtab_gpl+nand_select_target", align 4
@__kstrtab_nand_deselect_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_deselect_target = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_deselect_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_deselect_target to i32), ptr @__kstrtab_nand_deselect_target, ptr @__kstrtabns_nand_deselect_target }, section "___ksymtab_gpl+nand_deselect_target", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_nand_soft_waitrdy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_soft_waitrdy = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_soft_waitrdy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_soft_waitrdy to i32), ptr @__kstrtab_nand_soft_waitrdy, ptr @__kstrtabns_nand_soft_waitrdy }, section "___ksymtab_gpl+nand_soft_waitrdy", align 4
@__kstrtab_nand_gpio_waitrdy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_gpio_waitrdy = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_gpio_waitrdy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_gpio_waitrdy to i32), ptr @__kstrtab_nand_gpio_waitrdy, ptr @__kstrtabns_nand_gpio_waitrdy }, section "___ksymtab_gpl+nand_gpio_waitrdy", align 4
@__kstrtab_nand_read_page_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_page_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_page_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_page_op to i32), ptr @__kstrtab_nand_read_page_op, ptr @__kstrtabns_nand_read_page_op }, section "___ksymtab_gpl+nand_read_page_op", align 4
@__kstrtab_nand_change_read_column_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_change_read_column_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_change_read_column_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_change_read_column_op to i32), ptr @__kstrtab_nand_change_read_column_op, ptr @__kstrtabns_nand_change_read_column_op }, section "___ksymtab_gpl+nand_change_read_column_op", align 4
@__kstrtab_nand_read_oob_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_oob_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_oob_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_oob_op to i32), ptr @__kstrtab_nand_read_oob_op, ptr @__kstrtabns_nand_read_oob_op }, section "___ksymtab_gpl+nand_read_oob_op", align 4
@__kstrtab_nand_prog_page_begin_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_prog_page_begin_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_prog_page_begin_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_prog_page_begin_op to i32), ptr @__kstrtab_nand_prog_page_begin_op, ptr @__kstrtabns_nand_prog_page_begin_op }, section "___ksymtab_gpl+nand_prog_page_begin_op", align 4
@__kstrtab_nand_prog_page_end_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_prog_page_end_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_prog_page_end_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_prog_page_end_op to i32), ptr @__kstrtab_nand_prog_page_end_op, ptr @__kstrtabns_nand_prog_page_end_op }, section "___ksymtab_gpl+nand_prog_page_end_op", align 4
@__kstrtab_nand_prog_page_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_prog_page_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_prog_page_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_prog_page_op to i32), ptr @__kstrtab_nand_prog_page_op, ptr @__kstrtabns_nand_prog_page_op }, section "___ksymtab_gpl+nand_prog_page_op", align 4
@__kstrtab_nand_change_write_column_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_change_write_column_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_change_write_column_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_change_write_column_op to i32), ptr @__kstrtab_nand_change_write_column_op, ptr @__kstrtabns_nand_change_write_column_op }, section "___ksymtab_gpl+nand_change_write_column_op", align 4
@__kstrtab_nand_readid_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_readid_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_readid_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_readid_op to i32), ptr @__kstrtab_nand_readid_op, ptr @__kstrtabns_nand_readid_op }, section "___ksymtab_gpl+nand_readid_op", align 4
@__kstrtab_nand_status_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_status_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_status_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_status_op to i32), ptr @__kstrtab_nand_status_op, ptr @__kstrtabns_nand_status_op }, section "___ksymtab_gpl+nand_status_op", align 4
@__kstrtab_nand_erase_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_erase_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_erase_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_erase_op to i32), ptr @__kstrtab_nand_erase_op, ptr @__kstrtabns_nand_erase_op }, section "___ksymtab_gpl+nand_erase_op", align 4
@__kstrtab_nand_reset_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_reset_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_reset_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_reset_op to i32), ptr @__kstrtab_nand_reset_op, ptr @__kstrtabns_nand_reset_op }, section "___ksymtab_gpl+nand_reset_op", align 4
@__kstrtab_nand_read_data_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_data_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_data_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_data_op to i32), ptr @__kstrtab_nand_read_data_op, ptr @__kstrtabns_nand_read_data_op }, section "___ksymtab_gpl+nand_read_data_op", align 4
@__kstrtab_nand_write_data_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_write_data_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_write_data_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_write_data_op to i32), ptr @__kstrtab_nand_write_data_op, ptr @__kstrtabns_nand_write_data_op }, section "___ksymtab_gpl+nand_write_data_op", align 4
@__kstrtab_nand_op_parser_exec_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_op_parser_exec_op = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_op_parser_exec_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_op_parser_exec_op to i32), ptr @__kstrtab_nand_op_parser_exec_op, ptr @__kstrtabns_nand_op_parser_exec_op }, section "___ksymtab_gpl+nand_op_parser_exec_op", align 4
@__kstrtab_nand_subop_get_addr_start_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_subop_get_addr_start_off = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_subop_get_addr_start_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_subop_get_addr_start_off to i32), ptr @__kstrtab_nand_subop_get_addr_start_off, ptr @__kstrtabns_nand_subop_get_addr_start_off }, section "___ksymtab_gpl+nand_subop_get_addr_start_off", align 4
@__kstrtab_nand_subop_get_num_addr_cyc = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_subop_get_num_addr_cyc = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_subop_get_num_addr_cyc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_subop_get_num_addr_cyc to i32), ptr @__kstrtab_nand_subop_get_num_addr_cyc, ptr @__kstrtabns_nand_subop_get_num_addr_cyc }, section "___ksymtab_gpl+nand_subop_get_num_addr_cyc", align 4
@__kstrtab_nand_subop_get_data_start_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_subop_get_data_start_off = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_subop_get_data_start_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_subop_get_data_start_off to i32), ptr @__kstrtab_nand_subop_get_data_start_off, ptr @__kstrtabns_nand_subop_get_data_start_off }, section "___ksymtab_gpl+nand_subop_get_data_start_off", align 4
@__kstrtab_nand_subop_get_data_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_subop_get_data_len = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_subop_get_data_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_subop_get_data_len to i32), ptr @__kstrtab_nand_subop_get_data_len, ptr @__kstrtabns_nand_subop_get_data_len }, section "___ksymtab_gpl+nand_subop_get_data_len", align 4
@__kstrtab_nand_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_reset to i32), ptr @__kstrtab_nand_reset, ptr @__kstrtabns_nand_reset }, section "___ksymtab_gpl+nand_reset", align 4
@__kstrtab_nand_check_erased_ecc_chunk = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_check_erased_ecc_chunk = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_check_erased_ecc_chunk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_check_erased_ecc_chunk to i32), ptr @__kstrtab_nand_check_erased_ecc_chunk, ptr @__kstrtabns_nand_check_erased_ecc_chunk }, section "___ksymtab+nand_check_erased_ecc_chunk", align 4
@__kstrtab_nand_read_page_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_page_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_page_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_page_raw to i32), ptr @__kstrtab_nand_read_page_raw, ptr @__kstrtabns_nand_read_page_raw }, section "___ksymtab+nand_read_page_raw", align 4
@__kstrtab_nand_monolithic_read_page_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_monolithic_read_page_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_monolithic_read_page_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_monolithic_read_page_raw to i32), ptr @__kstrtab_nand_monolithic_read_page_raw, ptr @__kstrtabns_nand_monolithic_read_page_raw }, section "___ksymtab+nand_monolithic_read_page_raw", align 4
@__kstrtab_nand_read_page_hwecc_oob_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_page_hwecc_oob_first = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_page_hwecc_oob_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_page_hwecc_oob_first to i32), ptr @__kstrtab_nand_read_page_hwecc_oob_first, ptr @__kstrtabns_nand_read_page_hwecc_oob_first }, section "___ksymtab_gpl+nand_read_page_hwecc_oob_first", align 4
@__kstrtab_nand_read_oob_std = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_read_oob_std = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_read_oob_std = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_read_oob_std to i32), ptr @__kstrtab_nand_read_oob_std, ptr @__kstrtabns_nand_read_oob_std }, section "___ksymtab+nand_read_oob_std", align 4
@__kstrtab_nand_write_oob_std = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_write_oob_std = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_write_oob_std = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_write_oob_std to i32), ptr @__kstrtab_nand_write_oob_std, ptr @__kstrtabns_nand_write_oob_std }, section "___ksymtab+nand_write_oob_std", align 4
@__kstrtab_nand_write_page_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_write_page_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_write_page_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_write_page_raw to i32), ptr @__kstrtab_nand_write_page_raw, ptr @__kstrtabns_nand_write_page_raw }, section "___ksymtab+nand_write_page_raw", align 4
@__kstrtab_nand_monolithic_write_page_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_monolithic_write_page_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_monolithic_write_page_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_monolithic_write_page_raw to i32), ptr @__kstrtab_nand_monolithic_write_page_raw, ptr @__kstrtabns_nand_monolithic_write_page_raw }, section "___ksymtab+nand_monolithic_write_page_raw", align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"\014nand: %s: attempt to erase a bad block at page 0x%08x\0A\00", align 1
@__func__.nand_erase_nand = private unnamed_addr constant [16 x i8] c"nand_erase_nand\00", align 1
@__kstrtab_nand_decode_ext_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_decode_ext_id = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_decode_ext_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_decode_ext_id to i32), ptr @__kstrtab_nand_decode_ext_id, ptr @__kstrtabns_nand_decode_ext_id }, section "___ksymtab_gpl+nand_decode_ext_id", align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"cs-gpios\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@__kstrtab_rawnand_dt_parse_gpio_cs = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_dt_parse_gpio_cs = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_dt_parse_gpio_cs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_dt_parse_gpio_cs to i32), ptr @__kstrtab_rawnand_dt_parse_gpio_cs, ptr @__kstrtabns_rawnand_dt_parse_gpio_cs }, section "___ksymtab+rawnand_dt_parse_gpio_cs", align 4
@__kstrtab_rawnand_sw_hamming_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_hamming_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_hamming_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_hamming_init to i32), ptr @__kstrtab_rawnand_sw_hamming_init, ptr @__kstrtabns_rawnand_sw_hamming_init }, section "___ksymtab+rawnand_sw_hamming_init", align 4
@__kstrtab_rawnand_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_hamming_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_hamming_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_hamming_calculate to i32), ptr @__kstrtab_rawnand_sw_hamming_calculate, ptr @__kstrtabns_rawnand_sw_hamming_calculate }, section "___ksymtab+rawnand_sw_hamming_calculate", align 4
@__kstrtab_rawnand_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_hamming_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_hamming_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_hamming_correct to i32), ptr @__kstrtab_rawnand_sw_hamming_correct, ptr @__kstrtabns_rawnand_sw_hamming_correct }, section "___ksymtab+rawnand_sw_hamming_correct", align 4
@__kstrtab_rawnand_sw_hamming_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_hamming_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_hamming_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_hamming_cleanup to i32), ptr @__kstrtab_rawnand_sw_hamming_cleanup, ptr @__kstrtabns_rawnand_sw_hamming_cleanup }, section "___ksymtab+rawnand_sw_hamming_cleanup", align 4
@__kstrtab_rawnand_sw_bch_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_bch_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_bch_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_bch_init to i32), ptr @__kstrtab_rawnand_sw_bch_init, ptr @__kstrtabns_rawnand_sw_bch_init }, section "___ksymtab+rawnand_sw_bch_init", align 4
@__kstrtab_rawnand_sw_bch_correct = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_bch_correct = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_bch_correct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_bch_correct to i32), ptr @__kstrtab_rawnand_sw_bch_correct, ptr @__kstrtabns_rawnand_sw_bch_correct }, section "___ksymtab+rawnand_sw_bch_correct", align 4
@__kstrtab_rawnand_sw_bch_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_rawnand_sw_bch_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_rawnand_sw_bch_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rawnand_sw_bch_cleanup to i32), ptr @__kstrtab_rawnand_sw_bch_cleanup, ptr @__kstrtabns_rawnand_sw_bch_cleanup }, section "___ksymtab+rawnand_sw_bch_cleanup", align 4
@__kstrtab_nand_ecc_choose_conf = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_ecc_choose_conf = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_ecc_choose_conf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_ecc_choose_conf to i32), ptr @__kstrtab_nand_ecc_choose_conf, ptr @__kstrtabns_nand_ecc_choose_conf }, section "___ksymtab_gpl+nand_ecc_choose_conf", align 4
@__kstrtab_nand_scan_with_ids = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_scan_with_ids = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_scan_with_ids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_scan_with_ids to i32), ptr @__kstrtab_nand_scan_with_ids, ptr @__kstrtabns_nand_scan_with_ids }, section "___ksymtab+nand_scan_with_ids", align 4
@__kstrtab_nand_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nand_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_nand_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nand_cleanup to i32), ptr @__kstrtab_nand_cleanup, ptr @__kstrtabns_nand_cleanup }, section "___ksymtab_gpl+nand_cleanup", align 4
@__UNIQUE_ID_file275 = internal constant [36 x i8] c"nand.file=drivers/mtd/nand/raw/nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [17 x i8] c"nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author277 = internal constant [55 x i8] c"nand.author=Steven J. Hill <sjhill@realitydiluted.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [49 x i8] c"nand.author=Thomas Gleixner <tglx@linutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [48 x i8] c"nand.description=Generic NAND flash driver code\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"\013nand: Failed to configure data interface to SDR timing mode 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"\014nand: %s timing mode %d not acknowledged by the NAND chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"NV-DDR\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SDR\00", align 1
@nand_isbad_bbm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mtd_expert_analysis_mode = external dso_local local_unnamed_addr global i8, align 1
@mtd_expert_analysis_warning = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@nand_check_ecc_caps.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\013nand: ECC (step, strength) = (%d, %d) does not fit in OOB\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"\013nand: ECC (step, strength) = (%d, %d) not supported on this controller\00", align 1
@nand_maximize_ecc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nand_match_ecc_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nand_scan_ident.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"&chip->lock\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"\014nand: No NAND device found\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\016nand: %d chips detected\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"nand-is-boot-medium\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"nand-bus-width\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"nand-on-flash-bbt\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"soft\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"soft_bch\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"hw_syndrome\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"on-die\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"nand-ecc-mode\00", align 1
@nand_controller_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"&nfc->lock\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"\016nand: second ID read did not match %02x,%02x against %02x,%02x\0A\00", align 1
@nand_flash_ids = external dso_local global [0 x %struct.nand_flash_dev], align 4
@.str.27 = private unnamed_addr constant [64 x i8] c"\016nand: device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"\016nand: %s %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\014nand: bus width %d instead of %d bits\0A\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"\016nand: %d MiB, %s, erase size: %d KiB, page size: %d, OOB size: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"SLC\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"MLC\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"No oob scheme defined for oobsize %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"Driver must set ecc.strength when using hardware ECC\0A\00", align 1
@.str.38 = private unnamed_addr constant [78 x i8] c"\014nand: %d byte HW ECC not possible on %d byte page size, fallback to SW ECC\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"No ECC functions supplied; on-die ECC not possible\0A\00", align 1
@.str.40 = private unnamed_addr constant [86 x i8] c"\014nand: NAND_ECC_ENGINE_TYPE_NONE selected by board driver. This is not recommended!\0A\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Invalid NAND_ECC_MODE %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Invalid ECC parameters\0A\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"Total number of ECC bytes exceeded oobsize\0A\00", align 1
@.str.44 = private unnamed_addr constant [128 x i8] c"\014nand: WARNING: %s: the ECC used on your system (%db/%dB) is too weak compared to the one required by the NAND chip (%db/%dB)\0A\00", align 1
@rawnand_ops = internal constant %struct.nand_ops { ptr @rawnand_erase, ptr @rawnand_markbad, ptr @rawnand_isbad }, align 4
@.str.45 = private unnamed_addr constant [54 x i8] c"No ECC functions supplied; hardware ECC not possible\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"\014nand: Invalid NAND_ECC_PLACEMENT %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Hamming ECC initialization failed!\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"CONFIG_MTD_NAND_ECC_SW_BCH not enabled\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Unsupported ECC algorithm!\0A\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"\015nand: %s: attempt to write non page aligned data\0A\00", align 1
@__func__.nand_do_write_ops = private unnamed_addr constant [18 x i8] c"nand_do_write_ops\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [62 x i8] c"\013nand: %s called for a chip which is not in suspended state\0A\00", align 1
@__func__.nand_resume = private unnamed_addr constant [12 x i8] c"nand_resume\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"secure-regions\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author277, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__ksymtab_nand_change_read_column_op, ptr @__ksymtab_nand_change_write_column_op, ptr @__ksymtab_nand_check_erased_ecc_chunk, ptr @__ksymtab_nand_cleanup, ptr @__ksymtab_nand_decode_ext_id, ptr @__ksymtab_nand_deselect_target, ptr @__ksymtab_nand_ecc_choose_conf, ptr @__ksymtab_nand_erase_op, ptr @__ksymtab_nand_extract_bits, ptr @__ksymtab_nand_gpio_waitrdy, ptr @__ksymtab_nand_monolithic_read_page_raw, ptr @__ksymtab_nand_monolithic_write_page_raw, ptr @__ksymtab_nand_op_parser_exec_op, ptr @__ksymtab_nand_prog_page_begin_op, ptr @__ksymtab_nand_prog_page_end_op, ptr @__ksymtab_nand_prog_page_op, ptr @__ksymtab_nand_read_data_op, ptr @__ksymtab_nand_read_oob_op, ptr @__ksymtab_nand_read_oob_std, ptr @__ksymtab_nand_read_page_hwecc_oob_first, ptr @__ksymtab_nand_read_page_op, ptr @__ksymtab_nand_read_page_raw, ptr @__ksymtab_nand_readid_op, ptr @__ksymtab_nand_reset, ptr @__ksymtab_nand_reset_op, ptr @__ksymtab_nand_scan_with_ids, ptr @__ksymtab_nand_select_target, ptr @__ksymtab_nand_soft_waitrdy, ptr @__ksymtab_nand_status_op, ptr @__ksymtab_nand_subop_get_addr_start_off, ptr @__ksymtab_nand_subop_get_data_len, ptr @__ksymtab_nand_subop_get_data_start_off, ptr @__ksymtab_nand_subop_get_num_addr_cyc, ptr @__ksymtab_nand_write_data_op, ptr @__ksymtab_nand_write_oob_std, ptr @__ksymtab_nand_write_page_raw, ptr @__ksymtab_rawnand_dt_parse_gpio_cs, ptr @__ksymtab_rawnand_sw_bch_cleanup, ptr @__ksymtab_rawnand_sw_bch_correct, ptr @__ksymtab_rawnand_sw_bch_init, ptr @__ksymtab_rawnand_sw_hamming_calculate, ptr @__ksymtab_rawnand_sw_hamming_cleanup, ptr @__ksymtab_rawnand_sw_hamming_correct, ptr @__ksymtab_rawnand_sw_hamming_init], section "llvm.metadata"
@switch.table.nand_scan_with_ids = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 1, i32 2, i32 1, i32 1, i32 1, i32 2], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nand_pairing_dist3_get_info(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp ne i32 %1, 0
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = add i32 %1, 1
  br label %21

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %12, %14
  %16 = add i32 %15, -1
  %17 = icmp eq i32 %16, %1
  %18 = select i1 %17, i32 -2, i32 -3
  %19 = add nuw i32 %1, 1
  %20 = add i32 %19, %18
  br label %21

21:                                               ; preds = %10, %8
  %22 = phi i32 [ 1, %10 ], [ 0, %8 ]
  %23 = phi i32 [ %20, %10 ], [ %9, %8 ]
  %24 = getelementptr inbounds %struct.mtd_pairing_info, ptr %2, i32 0, i32 1
  store i32 %22, ptr %24, align 4
  %25 = sdiv i32 %23, 2
  store i32 %25, ptr %2, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nand_pairing_dist3_get_wunit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.mtd_pairing_info, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = shl i32 %3, 1
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = udiv i32 %12, %14
  %16 = add i32 %15, -1
  %17 = lshr i32 %16, 1
  %18 = icmp eq i32 %3, %17
  %19 = select i1 %6, i32 2, i32 1
  %20 = select i1 %18, i32 %19, i32 2
  %21 = add i32 %10, -1
  %22 = add i32 %20, %10
  %23 = select i1 %7, i32 0, i32 %22
  %24 = select i1 %6, i32 %21, i32 %23
  %25 = icmp ult i32 %24, %15
  %26 = select i1 %25, i32 %24, i32 -22
  br label %27

27:                                               ; preds = %9, %2
  %28 = phi i32 [ 0, %2 ], [ %26, %9 ]
  ret i32 %28
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_extract_bits(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %55, label %7

7:                                                ; preds = %5
  %8 = and i32 %3, 7
  %9 = lshr i32 %3, 3
  %10 = getelementptr i8, ptr %2, i32 %9
  %11 = and i32 %1, 7
  %12 = lshr i32 %1, 3
  %13 = getelementptr i8, ptr %0, i32 %12
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %46, %14 ], [ %13, %7 ]
  %16 = phi i32 [ %44, %14 ], [ %11, %7 ]
  %17 = phi ptr [ %52, %14 ], [ %10, %7 ]
  %18 = phi i32 [ %50, %14 ], [ %8, %7 ]
  %19 = phi i32 [ %53, %14 ], [ %4, %7 ]
  %20 = sub i32 8, %16
  %21 = sub i32 8, %18
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 %21)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %19)
  %24 = load i8, ptr %17, align 1
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, %18
  %27 = sub i32 32, %23
  %28 = lshr i32 -1, %27
  %29 = and i32 %26, %28
  %30 = shl nsw i32 -1, %16
  %31 = add i32 %16, %23
  %32 = sub i32 32, %31
  %33 = lshr i32 -1, %32
  %34 = and i32 %33, %30
  %35 = load i8, ptr %15, align 1
  %36 = trunc i32 %34 to i8
  %37 = xor i8 %36, -1
  %38 = and i8 %35, %37
  %39 = shl i32 %29, %16
  %40 = trunc i32 %39 to i8
  %41 = or i8 %38, %40
  store i8 %41, ptr %15, align 1
  %42 = icmp ugt i32 %31, 7
  %43 = add i32 %31, -8
  %44 = select i1 %42, i32 %43, i32 %31
  %45 = zext i1 %42 to i32
  %46 = getelementptr i8, ptr %15, i32 %45
  %47 = add i32 %23, %18
  %48 = icmp ugt i32 %47, 7
  %49 = add i32 %47, -8
  %50 = select i1 %48, i32 %49, i32 %47
  %51 = zext i1 %48 to i32
  %52 = getelementptr i8, ptr %17, i32 %51
  %53 = sub i32 %19, %23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %14

55:                                               ; preds = %14, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_select_target(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void %10(ptr noundef %0, i32 noundef %1) #15
  br label %13

13:                                               ; preds = %12, %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_deselect_target(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void %3(ptr noundef %0, i32 noundef -1) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_bbm_get_next_page(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %7, %9
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 117440512
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %17, 16777216
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %28, label %40

23:                                               ; preds = %2
  %24 = icmp slt i32 %1, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %15
  %29 = phi i32 [ %27, %25 ], [ %17, %15 ]
  %30 = and i32 %29, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %23
  %33 = icmp slt i32 %13, %1
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 67108864
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %32
  br label %40

40:                                               ; preds = %39, %34, %28, %15
  %41 = phi i32 [ -22, %39 ], [ 0, %15 ], [ 1, %28 ], [ %13, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_markbad_bbm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.mtd_oob_ops, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1) #15
  br label %86

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2
  %11 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 20, i1 false) #15
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 7
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = and i32 %14, -2
  store i32 %21, ptr %15, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ 2, %20 ], [ 1, %10 ]
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 1
  store i32 %23, ptr %25, align 4
  store i32 0, ptr %3, align 4
  %26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %30, %32
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %33, %35
  %37 = and i32 %17, 117440512
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %17, 16777216
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %22
  %43 = and i32 %17, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = icmp slt i32 %36, 0
  %47 = and i32 %17, 67108864
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %84, label %50

50:                                               ; preds = %45, %42, %22
  %51 = phi i32 [ 0, %22 ], [ 1, %42 ], [ %36, %45 ]
  br label %52

52:                                               ; preds = %81, %50
  %53 = phi i32 [ %64, %81 ], [ %29, %50 ]
  %54 = phi i32 [ %82, %81 ], [ %51, %50 ]
  %55 = phi i32 [ %61, %81 ], [ 0, %50 ]
  %56 = mul i32 %54, %53
  %57 = zext i32 %56 to i64
  %58 = add i64 %57, %1
  %59 = call fastcc i32 @nand_do_write_oob(ptr noundef %0, i64 noundef %58, ptr noundef nonnull %3) #15
  %60 = icmp eq i32 %55, 0
  %61 = select i1 %60, i32 %59, i32 %55
  %62 = add nuw i32 %54, 1
  %63 = load i32, ptr %26, align 8
  %64 = load i32, ptr %28, align 4
  %65 = sub i32 %63, %64
  %66 = load i32, ptr %31, align 4
  %67 = lshr i32 %65, %66
  %68 = load i32, ptr %34, align 8
  %69 = and i32 %67, %68
  %70 = icmp slt i32 %62, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %52
  %72 = load i32, ptr %16, align 8
  %73 = and i32 %72, 33554432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71, %52
  %76 = icmp slt i32 %69, %62
  br i1 %76, label %84, label %77

77:                                               ; preds = %75
  %78 = load i32, ptr %16, align 8
  %79 = and i32 %78, 67108864
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77, %71
  %82 = phi i32 [ 1, %71 ], [ %69, %77 ]
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %52, label %84

84:                                               ; preds = %81, %77, %75, %45
  %85 = phi i32 [ 0, %45 ], [ %61, %81 ], [ %61, %77 ], [ %61, %75 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %86

86:                                               ; preds = %84, %8
  %87 = phi i32 [ %9, %8 ], [ %85, %84 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_soft_waitrdy(ptr noundef %0, i32 noundef %1) #4 {
  %3 = alloca [1 x %struct.nand_op_instr], align 4
  %4 = alloca %struct.nand_operation, align 4
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %149, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.nand_controller, ptr %11, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %149, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_controller_ops, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %149, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.nand_interface_config, ptr %23, i32 0, i32 1, i32 1, i32 0, i32 32
  %27 = icmp eq i32 %24, 1
  %28 = getelementptr inbounds %struct.nand_interface_config, ptr %23, i32 0, i32 1, i32 1
  %29 = select i1 %27, ptr %28, ptr inttoptr (i32 -22 to ptr)
  %30 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %29, i32 0, i32 31
  %31 = select i1 %25, ptr %26, ptr %30
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 999
  %34 = udiv i32 %33, 1000
  %35 = add nuw nsw i32 %34, 999
  %36 = udiv i32 %35, 1000
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #15
  %38 = tail call i32 @nand_status_op(ptr noundef %0, ptr noundef null)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %21
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #15
  %43 = add i32 %42, %41
  %44 = xor i32 %43, -1
  br label %45

45:                                               ; preds = %52, %40
  %46 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i8, ptr %9, align 1
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 2147480) #15
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = add i32 %54, %44
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %45, label %115

57:                                               ; preds = %45
  %58 = load ptr, ptr %10, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.nand_controller, ptr %58, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nand_controller_ops, ptr %62, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %70 = load i32, ptr %69, align 4
  store i32 %70, ptr %8, align 4
  %71 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  store ptr %7, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  store i32 1, ptr %72, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %77 = load i32, ptr %76, align 8
  %78 = icmp ult i32 %70, %77
  br i1 %78, label %80, label %79, !prof !9

79:                                               ; preds = %75
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %82

80:                                               ; preds = %75
  %81 = call i32 %73(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  br label %82

82:                                               ; preds = %80, %79, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %149

83:                                               ; preds = %64, %60, %57
  %84 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %85 = load ptr, ptr %84, align 8
  call void %85(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br label %149

86:                                               ; preds = %48
  %87 = load ptr, ptr %10, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %112, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.nand_controller, ptr %87, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %112, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nand_controller_ops, ptr %91, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %112, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %98 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %6, align 4
  %100 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %100, align 4
  %101 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %101, align 4
  %102 = load ptr, ptr %94, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %106 = load i32, ptr %105, align 8
  %107 = icmp ult i32 %99, %106
  br i1 %107, label %109, label %108, !prof !9

108:                                              ; preds = %104
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %111

109:                                              ; preds = %104
  %110 = call i32 %102(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  br label %111

111:                                              ; preds = %109, %108, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %144

112:                                              ; preds = %93, %89, %86
  %113 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br label %144

115:                                              ; preds = %52
  %116 = load ptr, ptr %10, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %141, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.nand_controller, ptr %116, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %141, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nand_controller_ops, ptr %120, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %141, label %126

126:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %128 = load i32, ptr %127, align 4
  store i32 %128, ptr %4, align 4
  %129 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 1
  store ptr %3, ptr %129, align 4
  %130 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 2
  store i32 1, ptr %130, align 4
  %131 = load ptr, ptr %123, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %135 = load i32, ptr %134, align 8
  %136 = icmp ult i32 %128, %135
  br i1 %136, label %138, label %137, !prof !9

137:                                              ; preds = %133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %140

138:                                              ; preds = %133
  %139 = call i32 %131(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  br label %140

140:                                              ; preds = %138, %137, %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %144

141:                                              ; preds = %122, %118, %115
  %142 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %143 = load ptr, ptr %142, align 8
  call void %143(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br label %144

144:                                              ; preds = %141, %140, %112, %111
  %145 = load i8, ptr %9, align 1
  %146 = and i8 %145, 64
  %147 = icmp eq i8 %146, 0
  %148 = select i1 %147, i32 -110, i32 0
  br label %149

149:                                              ; preds = %144, %83, %82, %21, %17, %13, %2
  %150 = phi i32 [ %148, %144 ], [ -524, %17 ], [ %38, %21 ], [ %46, %82 ], [ %46, %83 ], [ -524, %13 ], [ -524, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_status_op(ptr noundef %0, ptr noundef %1) #4 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.nand_op_instr], align 4
  %5 = alloca %struct.nand_operation, align 4
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nand_controller, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_controller_ops, ptr %11, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %71, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  store i16 0, ptr %3, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  %20 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i8 112, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 0, i32 2
  %22 = load i32, ptr %19, align 8
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.nand_interface_config, ptr %19, i32 0, i32 1, i32 1, i32 0, i32 5
  %25 = icmp eq i32 %22, 1
  %26 = getelementptr inbounds %struct.nand_interface_config, ptr %19, i32 0, i32 1, i32 1
  %27 = select i1 %25, ptr %26, ptr inttoptr (i32 -22 to ptr)
  %28 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %27, i32 0, i32 6
  %29 = select i1 %23, ptr %24, ptr %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 999
  %32 = udiv i32 %31, 1000
  store i32 %32, ptr %21, align 4
  %33 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 1
  store i32 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 1, i32 1
  store i32 1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 1, i32 1, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 1, i32 1, i32 0, i32 2
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nand_op_instr, ptr %4, i32 1, i32 2
  store i32 0, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.nand_operation, ptr %5, i32 0, i32 1
  store ptr %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nand_operation, ptr %5, i32 0, i32 2
  store i32 2, ptr %41, align 4
  %42 = icmp ne ptr %1, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %17
  %44 = load i32, ptr %19, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  store i32 2, ptr %34, align 4
  store ptr %3, ptr %35, align 4
  br label %48

47:                                               ; preds = %17
  store i32 1, ptr %41, align 4
  br label %48

48:                                               ; preds = %47, %46, %43
  %49 = load ptr, ptr %10, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.nand_controller_ops, ptr %49, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %57 = load i32, ptr %56, align 8
  %58 = icmp ult i32 %39, %57
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %55
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %69

60:                                               ; preds = %55
  %61 = call i32 %53(ptr noundef %0, ptr noundef nonnull %5, i1 noundef zeroext false) #15
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %42, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, ptr %19, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i8, ptr %3, align 2
  store i8 %68, ptr %1, align 1
  br label %69

69:                                               ; preds = %67, %64, %60, %59, %51, %48
  %70 = phi i32 [ 0, %67 ], [ 0, %64 ], [ %61, %60 ], [ -524, %48 ], [ -524, %51 ], [ -22, %59 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %79

71:                                               ; preds = %13, %9, %2
  %72 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef %0, i32 noundef 112, i32 noundef -1, i32 noundef -1) #15
  %74 = icmp eq ptr %1, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = tail call zeroext i8 %77(ptr noundef %0) #15
  store i8 %78, ptr %1, align 1
  br label %79

79:                                               ; preds = %75, %71, %69
  %80 = phi i32 [ %70, %69 ], [ 0, %75 ], [ 0, %71 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #4 {
  %6 = alloca [1 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  %8 = zext i1 %3 to i8
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %108

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %94, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nand_controller, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %94, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nand_controller_ops, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %94, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #15
  %27 = getelementptr inbounds i8, ptr %6, i32 12
  store i32 0, ptr %27, align 4, !annotation !10
  store i32 2, ptr %6, align 4
  %28 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1, i32 0, i32 1
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 2
  store i32 0, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %7, align 4
  %34 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  store ptr %6, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  store i32 1, ptr %35, align 4
  store i8 %8, ptr %30, align 4
  br i1 %3, label %36, label %46

36:                                               ; preds = %24
  %37 = load i32, ptr %26, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = shl i32 %2, 1
  %41 = call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %92, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %28, align 4
  %45 = shl i32 %44, 1
  store i32 %45, ptr %28, align 4
  store ptr %41, ptr %29, align 4
  br label %46

46:                                               ; preds = %43, %36, %24
  %47 = phi ptr [ %41, %43 ], [ null, %36 ], [ null, %24 ]
  %48 = load ptr, ptr %13, align 4
  %49 = icmp eq ptr %48, null
  br i1 %4, label %50, label %61

50:                                               ; preds = %46
  br i1 %49, label %90, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.nand_controller, ptr %48, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nand_controller_ops, ptr %53, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59

59:                                               ; preds = %55
  %60 = call i32 %57(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext true) #15
  br label %90

61:                                               ; preds = %46
  br i1 %49, label %90, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.nand_controller, ptr %48, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %90, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.nand_controller_ops, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %72 = load i32, ptr %71, align 8
  %73 = icmp ult i32 %33, %72
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %90

75:                                               ; preds = %70
  %76 = call i32 %68(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #15
  %77 = icmp eq i32 %76, 0
  %78 = and i1 %77, %3
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, ptr %26, align 8
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %82, %79
  %83 = phi i32 [ %88, %82 ], [ 0, %79 ]
  %84 = shl i32 %83, 1
  %85 = getelementptr i8, ptr %47, i32 %84
  %86 = load i8, ptr %85, align 2
  %87 = getelementptr i8, ptr %1, i32 %83
  store i8 %86, ptr %87, align 1
  %88 = add nuw i32 %83, 1
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %90, label %82

90:                                               ; preds = %82, %79, %75, %74, %66, %62, %61, %59, %55, %51, %50
  %91 = phi i32 [ %60, %59 ], [ 0, %55 ], [ 0, %51 ], [ 0, %50 ], [ %76, %75 ], [ 0, %79 ], [ -524, %61 ], [ -524, %62 ], [ -524, %66 ], [ -22, %74 ], [ 0, %82 ]
  call void @kfree(ptr noundef %47) #15
  br label %92

92:                                               ; preds = %90, %39
  %93 = phi i32 [ -12, %39 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  br label %108

94:                                               ; preds = %20, %16, %12
  br i1 %4, label %108, label %95

95:                                               ; preds = %94
  br i1 %3, label %96, label %105

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi i32 [ %103, %98 ], [ 0, %96 ]
  %100 = load ptr, ptr %97, align 4
  %101 = tail call zeroext i8 %100(ptr noundef %0) #15
  %102 = getelementptr i8, ptr %1, i32 %99
  store i8 %101, ptr %102, align 1
  %103 = add nuw i32 %99, 1
  %104 = icmp eq i32 %103, %2
  br i1 %104, label %108, label %98

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %107 = load ptr, ptr %106, align 8
  tail call void %107(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #15
  br label %108

108:                                              ; preds = %105, %98, %94, %92, %5
  %109 = phi i32 [ %93, %92 ], [ -22, %5 ], [ 0, %94 ], [ 0, %105 ], [ 0, %98 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_exit_status_op(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca [1 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nand_controller_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %3, align 4
  %18 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 1, ptr %19, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %24 = load i32, ptr %23, align 8
  %25 = icmp ult i32 %17, %24
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %22
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %29

27:                                               ; preds = %22
  %28 = call i32 %20(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #15
  br label %29

29:                                               ; preds = %27, %26, %15
  %30 = phi i32 [ -22, %26 ], [ %28, %27 ], [ -524, %15 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %34

31:                                               ; preds = %11, %7, %1
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef -1) #15
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_gpio_waitrdy(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #15
  %6 = add i32 %5, %4
  %7 = xor i32 %6, -1
  br label %8

8:                                                ; preds = %11, %3
  %9 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = tail call i32 @__cond_resched() #15
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %13, %7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %8, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #15
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -110, i32 0
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i32 [ %19, %16 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panic_nand_wait(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = alloca i8, align 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  br label %7

7:                                                ; preds = %21, %5
  %8 = phi i32 [ 0, %5 ], [ %23, %21 ]
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call i32 %9(ptr noundef %0) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %25

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !10
  %15 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false)
  %16 = icmp eq i32 %15, 0
  %17 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %18 = and i8 %17, 64
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %14, %11
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #15
  %23 = add nuw i32 %8, 1
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %7

25:                                               ; preds = %21, %14, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_choose_best_sdr_timings(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(176) %11, ptr noundef nonnull align 8 dereferenceable(176) %2, i32 176, i1 false)
  %12 = tail call i32 @onfi_find_closest_sdr_mode(ptr noundef nonnull %2) #15
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, i32 noundef -1, ptr noundef %1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  br label %30

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.onfi_params, ptr %21, i32 0, i32 6
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp eq i16 %25, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #15, !range !11
  %29 = sub nsw i32 31, %28
  br i1 %27, label %47, label %30

30:                                               ; preds = %23, %17
  %31 = phi i32 [ %18, %17 ], [ %29, %23 ]
  %32 = phi i32 [ %15, %17 ], [ -95, %23 ]
  %33 = icmp sgt i32 %31, -1
  br i1 %33, label %34, label %47

34:                                               ; preds = %30, %19
  %35 = phi i32 [ %31, %30 ], [ 0, %19 ]
  %36 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  br label %40

37:                                               ; preds = %40
  %38 = add nsw i32 %41, -1
  %39 = icmp sgt i32 %41, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %35, %34 ], [ %38, %37 ]
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %41) #15
  %42 = load ptr, ptr %36, align 4
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef -1, ptr noundef %1) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37

45:                                               ; preds = %40, %9
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  store ptr %1, ptr %46, align 8
  br label %47

47:                                               ; preds = %45, %37, %30, %23
  %48 = phi i32 [ %32, %30 ], [ -95, %23 ], [ 0, %45 ], [ %43, %37 ]
  ret i32 %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onfi_find_closest_sdr_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @onfi_fill_interface_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_choose_best_nvddr_timings(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store i32 1, ptr %1, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.nand_interface_config, ptr %1, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 160, i1 false)
  %12 = tail call i32 @onfi_find_closest_nvddr_mode(ptr noundef nonnull %2) #15
  store i32 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, i32 noundef -1, ptr noundef %1) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %9
  %18 = load i32, ptr %10, align 8
  br label %30

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.onfi_params, ptr %21, i32 0, i32 7
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = icmp eq i16 %25, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 false) #15, !range !11
  %29 = sub nsw i32 31, %28
  br i1 %27, label %47, label %30

30:                                               ; preds = %23, %17
  %31 = phi i32 [ %18, %17 ], [ %29, %23 ]
  %32 = phi i32 [ %15, %17 ], [ -95, %23 ]
  %33 = icmp sgt i32 %31, -1
  br i1 %33, label %34, label %47

34:                                               ; preds = %30, %19
  %35 = phi i32 [ %31, %30 ], [ 0, %19 ]
  %36 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  br label %40

37:                                               ; preds = %40
  %38 = add nsw i32 %41, -1
  %39 = icmp sgt i32 %41, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %35, %34 ], [ %38, %37 ]
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %41) #15
  %42 = load ptr, ptr %36, align 4
  %43 = tail call i32 %42(ptr noundef %0, i32 noundef -1, ptr noundef %1) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %37

45:                                               ; preds = %40, %9
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  store ptr %1, ptr %46, align 8
  br label %47

47:                                               ; preds = %45, %37, %30, %23
  %48 = phi i32 [ %32, %30 ], [ -95, %23 ], [ 0, %45 ], [ %43, %37 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @onfi_find_closest_nvddr_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = alloca [4 x i8], align 4
  %7 = alloca [4 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [5 x %struct.nand_op_instr], align 4
  %11 = alloca %struct.nand_operation, align 4
  %12 = icmp eq i32 %4, 0
  %13 = icmp ne ptr %3, null
  %14 = or i1 %13, %12
  br i1 %14, label %15, label %255

15:                                               ; preds = %5
  %16 = add i32 %4, %2
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = icmp ugt i32 %16, %21
  br i1 %22, label %255, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %249, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nand_controller, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %249, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_controller_ops, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %249, label %35

35:                                               ; preds = %31
  %36 = icmp ugt i32 %18, 512
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  br i1 %36, label %39, label %139

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %9, i8 0, i32 5, i1 false) #15, !annotation !10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #15
  %40 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %10, i8 0, i64 96, i1 false) #15
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 1, i32 1
  store i32 4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 1, i32 1, i32 0, i32 1
  store ptr %9, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 2, i32 1
  store i8 48, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 2, i32 2
  %45 = load i32, ptr %38, align 8
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 32
  %48 = icmp eq i32 %45, 1
  %49 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1
  %50 = select i1 %48, ptr %49, ptr inttoptr (i32 -22 to ptr)
  %51 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %50, i32 0, i32 31
  %52 = select i1 %46, ptr %47, ptr %51
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 999
  %55 = udiv i32 %54, 1000
  store i32 %55, ptr %44, align 4
  %56 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 3
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 3, i32 1
  %58 = load i32, ptr %38, align 8
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 3
  %61 = icmp eq i32 %58, 1
  %62 = select i1 %61, ptr %49, ptr inttoptr (i32 -22 to ptr)
  %63 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %62, i32 0, i32 3
  %64 = select i1 %59, ptr %60, ptr %63
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, 999999999
  %67 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %66, i32 0) #17, !srcloc !12
  %68 = extractvalue { i64, i32 } %67, 0
  %69 = extractvalue { i64, i32 } %67, 1
  %70 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %66, i64 %68, i32 %69) #17, !srcloc !13
  %71 = extractvalue { i64, i32 } %70, 0
  %72 = lshr i64 %71, 29
  %73 = trunc i64 %72 to i32
  store i32 %73, ptr %57, align 4
  %74 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 3, i32 2
  %75 = load i32, ptr %38, align 8
  %76 = icmp eq i32 %75, 0
  %77 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 30
  %78 = icmp eq i32 %75, 1
  %79 = select i1 %78, ptr %49, ptr inttoptr (i32 -22 to ptr)
  %80 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %79, i32 0, i32 29
  %81 = select i1 %76, ptr %77, ptr %80
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 999
  %84 = udiv i32 %83, 1000
  store i32 %84, ptr %74, align 4
  %85 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 4
  store i32 2, ptr %85, align 4
  %86 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 4, i32 1
  store i32 %4, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 4, i32 1, i32 0, i32 1
  store ptr %3, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nand_op_instr, ptr %10, i32 4, i32 2
  store i32 0, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  %89 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %11, align 4
  %91 = getelementptr inbounds %struct.nand_operation, ptr %11, i32 0, i32 1
  store ptr %10, ptr %91, align 4
  %92 = getelementptr inbounds %struct.nand_operation, ptr %11, i32 0, i32 2
  %93 = select i1 %12, i32 4, i32 5
  store i32 %93, ptr %92, align 4
  %94 = icmp ult i32 %21, %2
  br i1 %94, label %137, label %95

95:                                               ; preds = %39
  %96 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = and i32 %2, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103, !prof !9

103:                                              ; preds = %100
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #15
  br label %137

104:                                              ; preds = %100
  %105 = lshr i32 %2, 1
  br label %106

106:                                              ; preds = %104, %95
  %107 = phi i32 [ %105, %104 ], [ %2, %95 ]
  %108 = trunc i32 %107 to i8
  store i8 %108, ptr %9, align 1
  %109 = lshr i32 %107, 8
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %110, ptr %111, align 1
  %112 = trunc i32 %1 to i8
  %113 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 2
  store i8 %112, ptr %113, align 1
  %114 = lshr i32 %1, 8
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 3
  store i8 %115, ptr %116, align 1
  %117 = and i32 %97, 16384
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %106
  %120 = lshr i32 %1, 16
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 4
  store i8 %121, ptr %122, align 1
  store i32 5, ptr %41, align 4
  br label %123

123:                                              ; preds = %119, %106
  %124 = load ptr, ptr %28, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.nand_controller_ops, ptr %124, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %132 = load i32, ptr %131, align 8
  %133 = icmp ult i32 %90, %132
  br i1 %133, label %135, label %134, !prof !9

134:                                              ; preds = %130
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %137

135:                                              ; preds = %130
  %136 = call i32 %128(ptr noundef %0, ptr noundef nonnull %11, i1 noundef zeroext false) #15
  br label %137

137:                                              ; preds = %135, %134, %126, %123, %103, %39
  %138 = phi i32 [ -22, %134 ], [ %136, %135 ], [ -524, %126 ], [ -524, %123 ], [ -22, %103 ], [ -22, %39 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #15
  br label %255

139:                                              ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #15
  %140 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %7, i8 0, i64 76, i1 false) #15
  store i32 1, ptr %140, align 4
  %141 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1
  store i32 3, ptr %141, align 4
  %142 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1, i32 0, i32 1
  store ptr %6, ptr %142, align 4
  %143 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 2
  %144 = load i32, ptr %38, align 8
  %145 = icmp eq i32 %144, 0
  %146 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 32
  %147 = icmp eq i32 %144, 1
  %148 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1
  %149 = select i1 %147, ptr %148, ptr inttoptr (i32 -22 to ptr)
  %150 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %149, i32 0, i32 31
  %151 = select i1 %145, ptr %146, ptr %150
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, 999
  %154 = udiv i32 %153, 1000
  store i32 %154, ptr %143, align 4
  %155 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2
  store i32 4, ptr %155, align 4
  %156 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 1
  %157 = load i32, ptr %38, align 8
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 3
  %160 = icmp eq i32 %157, 1
  %161 = select i1 %160, ptr %148, ptr inttoptr (i32 -22 to ptr)
  %162 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %161, i32 0, i32 3
  %163 = select i1 %158, ptr %159, ptr %162
  %164 = load i64, ptr %163, align 8
  %165 = add i64 %164, 999999999
  %166 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %165, i32 0) #17, !srcloc !12
  %167 = extractvalue { i64, i32 } %166, 0
  %168 = extractvalue { i64, i32 } %166, 1
  %169 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %165, i64 %167, i32 %168) #17, !srcloc !13
  %170 = extractvalue { i64, i32 } %169, 0
  %171 = lshr i64 %170, 29
  %172 = trunc i64 %171 to i32
  store i32 %172, ptr %156, align 4
  %173 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 2
  %174 = load i32, ptr %38, align 8
  %175 = icmp eq i32 %174, 0
  %176 = getelementptr inbounds %struct.nand_interface_config, ptr %38, i32 0, i32 1, i32 1, i32 0, i32 30
  %177 = icmp eq i32 %174, 1
  %178 = select i1 %177, ptr %148, ptr inttoptr (i32 -22 to ptr)
  %179 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %178, i32 0, i32 29
  %180 = select i1 %175, ptr %176, ptr %179
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 999
  %183 = udiv i32 %182, 1000
  store i32 %183, ptr %173, align 4
  %184 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3
  store i32 2, ptr %184, align 4
  %185 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 1
  store i32 %4, ptr %185, align 4
  %186 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 1, i32 0, i32 1
  store ptr %3, ptr %186, align 4
  %187 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 2
  store i32 0, ptr %187, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %188 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %189 = load i32, ptr %188, align 4
  store i32 %189, ptr %8, align 4
  %190 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  store ptr %7, ptr %190, align 4
  %191 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  %192 = select i1 %12, i32 3, i32 4
  store i32 %192, ptr %191, align 4
  %193 = icmp ugt i32 %18, %2
  br i1 %193, label %194, label %201

194:                                              ; preds = %139
  %195 = icmp ugt i32 %2, 255
  br i1 %195, label %196, label %204

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %198 = load i32, ptr %197, align 8
  %199 = and i32 %198, 2
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196, %139
  %202 = phi i8 [ 80, %139 ], [ 1, %196 ]
  %203 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  store i8 %202, ptr %203, align 4
  br label %204

204:                                              ; preds = %201, %196, %194
  %205 = icmp ult i32 %21, %2
  br i1 %205, label %247, label %206

206:                                              ; preds = %204
  %207 = select i1 %193, i32 0, i32 %18
  %208 = sub i32 %2, %207
  %209 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %206
  %214 = and i32 %208, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216, !prof !9

216:                                              ; preds = %213
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #15
  br label %247

217:                                              ; preds = %213
  %218 = lshr i32 %208, 1
  br label %219

219:                                              ; preds = %217, %206
  %220 = phi i32 [ %218, %217 ], [ %208, %206 ]
  %221 = trunc i32 %220 to i8
  store i8 %221, ptr %6, align 4
  %222 = trunc i32 %1 to i8
  %223 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  store i8 %222, ptr %223, align 1
  %224 = lshr i32 %1, 8
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  store i8 %225, ptr %226, align 2
  %227 = and i32 %210, 16384
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %219
  %230 = lshr i32 %1, 16
  %231 = trunc i32 %230 to i8
  %232 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  store i8 %231, ptr %232, align 1
  store i32 4, ptr %141, align 4
  br label %233

233:                                              ; preds = %229, %219
  %234 = load ptr, ptr %28, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %247, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.nand_controller_ops, ptr %234, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %242 = load i32, ptr %241, align 8
  %243 = icmp ult i32 %189, %242
  br i1 %243, label %245, label %244, !prof !9

244:                                              ; preds = %240
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %247

245:                                              ; preds = %240
  %246 = call i32 %238(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  br label %247

247:                                              ; preds = %245, %244, %236, %233, %216, %204
  %248 = phi i32 [ -22, %244 ], [ %246, %245 ], [ -524, %236 ], [ -524, %233 ], [ -22, %216 ], [ -22, %204 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %255

249:                                              ; preds = %31, %27, %23
  %250 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %251 = load ptr, ptr %250, align 8
  tail call void %251(ptr noundef %0, i32 noundef 0, i32 noundef %2, i32 noundef %1) #15
  br i1 %12, label %255, label %252

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %254 = load ptr, ptr %253, align 8
  tail call void %254(ptr noundef %0, ptr noundef %3, i32 noundef %4) #15
  br label %255

255:                                              ; preds = %252, %249, %247, %137, %15, %5
  %256 = phi i32 [ %138, %137 ], [ %248, %247 ], [ -22, %5 ], [ -22, %15 ], [ 0, %252 ], [ 0, %249 ]
  ret i32 %256
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_param_page_op(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = alloca i8, align 1
  %6 = alloca [4 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  store i8 %1, ptr %5, align 1
  %8 = icmp eq i32 %3, 0
  %9 = icmp ne ptr %2, null
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %109

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_controller, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %96, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nand_controller_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %96, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #15
  %26 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %6, i8 0, i64 76, i1 false)
  store i8 -20, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1, i32 0, i32 1
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 2
  %31 = load i32, ptr %25, align 8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1, i32 0, i32 32
  %34 = icmp eq i32 %31, 1
  %35 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1
  %36 = select i1 %34, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %37 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %36, i32 0, i32 31
  %38 = select i1 %32, ptr %33, ptr %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 999
  %41 = udiv i32 %40, 1000
  store i32 %41, ptr %30, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2
  store i32 4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 1
  %44 = load i32, ptr %25, align 8
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1, i32 0, i32 3
  %47 = icmp eq i32 %44, 1
  %48 = select i1 %47, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %49 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %48, i32 0, i32 3
  %50 = select i1 %45, ptr %46, ptr %49
  %51 = load i64, ptr %50, align 8
  %52 = add i64 %51, 999999999
  %53 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %52, i32 0) #17, !srcloc !12
  %54 = extractvalue { i64, i32 } %53, 0
  %55 = extractvalue { i64, i32 } %53, 1
  %56 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %52, i64 %54, i32 %55) #17, !srcloc !13
  %57 = extractvalue { i64, i32 } %56, 0
  %58 = lshr i64 %57, 29
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr %43, align 4
  %60 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 2
  %61 = load i32, ptr %25, align 8
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1, i32 0, i32 30
  %64 = icmp eq i32 %61, 1
  %65 = select i1 %64, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %66 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %65, i32 0, i32 29
  %67 = select i1 %62, ptr %63, ptr %66
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 999
  %70 = udiv i32 %69, 1000
  store i32 %70, ptr %60, align 4
  %71 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3
  store i32 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1
  store i32 %3, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1, i32 0, i32 1
  store ptr %2, ptr %73, align 4
  %74 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1, i32 0, i32 2
  store i8 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 2
  store i32 0, ptr %75, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %77 = load i32, ptr %76, align 4
  store i32 %77, ptr %7, align 4
  %78 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  store ptr %6, ptr %78, align 4
  %79 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  %80 = select i1 %8, i32 3, i32 4
  store i32 %80, ptr %79, align 4
  %81 = load ptr, ptr %16, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %23
  %84 = getelementptr inbounds %struct.nand_controller_ops, ptr %81, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %89 = load i32, ptr %88, align 8
  %90 = icmp ult i32 %77, %89
  br i1 %90, label %92, label %91, !prof !9

91:                                               ; preds = %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %94

92:                                               ; preds = %87
  %93 = call i32 %85(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #15
  br label %94

94:                                               ; preds = %92, %91, %83, %23
  %95 = phi i32 [ -22, %91 ], [ %93, %92 ], [ -524, %83 ], [ -524, %23 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #15
  br label %109

96:                                               ; preds = %19, %15, %11
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %98 = load ptr, ptr %97, align 8
  %99 = zext i8 %1 to i32
  tail call void %98(ptr noundef %0, i32 noundef 236, i32 noundef %99, i32 noundef -1) #15
  br i1 %8, label %109, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i32 [ 0, %100 ], [ %107, %102 ]
  %104 = load ptr, ptr %101, align 4
  %105 = tail call zeroext i8 %104(ptr noundef %0) #15
  %106 = getelementptr i8, ptr %2, i32 %103
  store i8 %105, ptr %106, align 1
  %107 = add nuw i32 %103, 1
  %108 = icmp eq i32 %107, %3
  br i1 %108, label %109, label %102

109:                                              ; preds = %102, %96, %94, %4
  %110 = phi i32 [ %95, %94 ], [ -22, %4 ], [ 0, %96 ], [ 0, %102 ]
  ret i32 %110
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #4 {
  %6 = alloca [2 x i8], align 2
  %7 = alloca [4 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = zext i1 %4 to i8
  %10 = icmp eq i32 %3, 0
  %11 = icmp ne ptr %2, null
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %106

13:                                               ; preds = %5
  %14 = add i32 %3, %1
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = icmp ugt i32 %14, %19
  br i1 %20, label %106, label %21

21:                                               ; preds = %13
  %22 = icmp ult i32 %16, 513
  br i1 %22, label %106, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %100, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nand_controller, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_controller_ops, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %100, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #15
  %38 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %7, i8 0, i64 76, i1 false)
  store i8 5, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1, i32 0, i32 1
  store ptr %6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 1
  store i8 -32, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 2
  %45 = load i32, ptr %37, align 8
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.nand_interface_config, ptr %37, i32 0, i32 1, i32 1, i32 0, i32 1
  %48 = icmp eq i32 %45, 1
  %49 = getelementptr inbounds %struct.nand_interface_config, ptr %37, i32 0, i32 1, i32 1
  %50 = select i1 %48, ptr %49, ptr inttoptr (i32 -22 to ptr)
  %51 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %50, i32 0, i32 1
  %52 = select i1 %46, ptr %47, ptr %51
  %53 = load i32, ptr %52, align 8
  %54 = add i32 %53, 999
  %55 = udiv i32 %54, 1000
  store i32 %55, ptr %44, align 4
  %56 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3
  store i32 2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 1
  store i32 %3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 1, i32 0, i32 1
  store ptr %2, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 1, i32 0, i32 2
  %60 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 3, i32 2
  store i32 0, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %61 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %8, align 4
  %63 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  store ptr %7, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  store i32 4, ptr %64, align 4
  %65 = icmp ult i32 %19, %1
  br i1 %65, label %98, label %66

66:                                               ; preds = %35
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = and i32 %1, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !9

74:                                               ; preds = %71
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #15
  br label %98

75:                                               ; preds = %71
  %76 = lshr i32 %1, 1
  br label %77

77:                                               ; preds = %75, %66
  %78 = phi i32 [ %76, %75 ], [ %1, %66 ]
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %6, align 2
  %80 = lshr i32 %78, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %81, ptr %82, align 1
  br i1 %10, label %83, label %84

83:                                               ; preds = %77
  store i32 3, ptr %64, align 4
  br label %84

84:                                               ; preds = %83, %77
  store i8 %9, ptr %59, align 4
  %85 = load ptr, ptr %28, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nand_controller_ops, ptr %85, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %93 = load i32, ptr %92, align 8
  %94 = icmp ult i32 %62, %93
  br i1 %94, label %96, label %95, !prof !9

95:                                               ; preds = %91
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %98

96:                                               ; preds = %91
  %97 = call i32 %89(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  br label %98

98:                                               ; preds = %96, %95, %87, %84, %74, %35
  %99 = phi i32 [ -22, %95 ], [ %97, %96 ], [ -524, %87 ], [ -524, %84 ], [ -22, %74 ], [ -22, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  br label %106

100:                                              ; preds = %31, %27, %23
  %101 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %102 = load ptr, ptr %101, align 8
  tail call void %102(ptr noundef %0, i32 noundef 5, i32 noundef %1, i32 noundef -1) #15
  br i1 %10, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %105 = load ptr, ptr %104, align 8
  tail call void %105(ptr noundef %0, ptr noundef %2, i32 noundef %3) #15
  br label %106

106:                                              ; preds = %103, %100, %98, %21, %13, %5
  %107 = phi i32 [ %99, %98 ], [ -22, %5 ], [ -22, %13 ], [ -524, %21 ], [ 0, %103 ], [ 0, %100 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_oob_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = icmp eq i32 %4, 0
  %7 = icmp ne ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = add i32 %4, %2
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nand_controller, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nand_controller_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %2
  %30 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %29, ptr noundef %3, i32 noundef %4)
  br label %37

31:                                               ; preds = %22, %18, %14
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef %0, i32 noundef 80, i32 noundef %2, i32 noundef %1) #15
  br i1 %6, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef %0, ptr noundef %3, i32 noundef %4) #15
  br label %37

37:                                               ; preds = %34, %31, %26, %9, %5
  %38 = phi i32 [ %30, %26 ], [ -22, %5 ], [ -22, %9 ], [ 0, %34 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_prog_page_begin_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = icmp eq i32 %4, 0
  %7 = icmp ne ptr %3, null
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = add i32 %4, %2
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = icmp ugt i32 %10, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nand_controller, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nand_controller_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false)
  br label %37

31:                                               ; preds = %25, %21, %17
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef %0, i32 noundef 128, i32 noundef %2, i32 noundef %1) #15
  br i1 %7, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4) #15
  br label %37

37:                                               ; preds = %34, %31, %29, %9, %5
  %38 = phi i32 [ %30, %29 ], [ -22, %5 ], [ -22, %9 ], [ 0, %34 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
  %7 = alloca [5 x i8], align 1
  %8 = alloca [6 x %struct.nand_op_instr], align 4
  %9 = alloca %struct.nand_operation, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, i8 0, i32 5, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #15
  %12 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 1
  %13 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %8, i8 0, i64 120, i1 false)
  store i8 -128, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 2
  store i32 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 2, i32 1
  %16 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 2, i32 1, i32 0, i32 1
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 2, i32 2
  %18 = load i32, ptr %11, align 8
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.nand_interface_config, ptr %11, i32 0, i32 1, i32 1, i32 0, i32 5
  %21 = icmp eq i32 %18, 1
  %22 = getelementptr inbounds %struct.nand_interface_config, ptr %11, i32 0, i32 1, i32 1
  %23 = select i1 %21, ptr %22, ptr inttoptr (i32 -22 to ptr)
  %24 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %23, i32 0, i32 6
  %25 = select i1 %19, ptr %20, ptr %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 999
  %28 = udiv i32 %27, 1000
  store i32 %28, ptr %17, align 4
  %29 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 3
  store i32 3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 3, i32 1
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 3, i32 1, i32 0, i32 1
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 3, i32 1, i32 0, i32 2
  store i8 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 3, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 4
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 4, i32 1
  store i8 16, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 4, i32 2
  %37 = load i32, ptr %11, align 8
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.nand_interface_config, ptr %11, i32 0, i32 1, i32 1, i32 0, i32 32
  %40 = icmp eq i32 %37, 1
  %41 = select i1 %40, ptr %22, ptr inttoptr (i32 -22 to ptr)
  %42 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %41, i32 0, i32 31
  %43 = select i1 %38, ptr %39, ptr %42
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 999
  %46 = udiv i32 %45, 1000
  store i32 %46, ptr %36, align 4
  %47 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 5
  store i32 4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 5, i32 1
  %49 = load i32, ptr %11, align 8
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds %struct.nand_interface_config, ptr %11, i32 0, i32 1, i32 1, i32 0, i32 2
  %52 = icmp eq i32 %49, 1
  %53 = select i1 %52, ptr %22, ptr inttoptr (i32 -22 to ptr)
  %54 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %53, i32 0, i32 2
  %55 = select i1 %50, ptr %51, ptr %54
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %56, 999999999
  %58 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %57, i32 0) #17, !srcloc !12
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = extractvalue { i64, i32 } %58, 1
  %61 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %57, i64 %59, i32 %60) #17, !srcloc !13
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 29
  %64 = trunc i64 %63 to i32
  store i32 %64, ptr %48, align 4
  %65 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 5, i32 2
  store i32 0, ptr %65, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %67 = load i32, ptr %66, align 4
  store i32 %67, ptr %9, align 4
  %68 = getelementptr inbounds %struct.nand_operation, ptr %9, i32 0, i32 1
  store ptr %8, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nand_operation, ptr %9, i32 0, i32 2
  store i32 6, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = icmp ult i32 %74, %2
  br i1 %75, label %152, label %76

76:                                               ; preds = %6
  %77 = icmp ugt i32 %71, 512
  %78 = icmp ugt i32 %71, %2
  %79 = or i1 %77, %78
  %80 = select i1 %79, i32 0, i32 %71
  %81 = sub i32 %2, %80
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = and i32 %81, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89, !prof !9

89:                                               ; preds = %86
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #15
  br label %152

90:                                               ; preds = %86
  %91 = lshr i32 %81, 1
  br label %92

92:                                               ; preds = %90, %76
  %93 = phi i32 [ %91, %90 ], [ %81, %76 ]
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %7, align 1
  %95 = icmp ult i32 %71, 513
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = lshr i32 %93, 8
  %98 = trunc i32 %97 to i8
  %99 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %98, ptr %99, align 1
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ 2, %96 ], [ 1, %92 ]
  %102 = trunc i32 %1 to i8
  %103 = add nuw nsw i32 %101, 1
  %104 = getelementptr [5 x i8], ptr %7, i32 0, i32 %101
  store i8 %102, ptr %104, align 1
  %105 = lshr i32 %1, 8
  %106 = trunc i32 %105 to i8
  %107 = add nuw nsw i32 %101, 2
  %108 = getelementptr [5 x i8], ptr %7, i32 0, i32 %103
  store i8 %106, ptr %108, align 1
  %109 = and i32 %83, 16384
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %100
  %112 = lshr i32 %1, 16
  %113 = trunc i32 %112 to i8
  %114 = add nuw nsw i32 %101, 3
  %115 = getelementptr [5 x i8], ptr %7, i32 0, i32 %107
  store i8 %113, ptr %115, align 1
  br label %116

116:                                              ; preds = %111, %100
  %117 = phi i32 [ %114, %111 ], [ %107, %100 ]
  store i32 %117, ptr %15, align 4
  br i1 %5, label %122, label %118

118:                                              ; preds = %116
  %119 = icmp eq i32 %4, 0
  %120 = select i1 %119, i32 3, i32 4
  store i32 %120, ptr %69, align 4
  %121 = select i1 %119, i32 2, i32 3
  br label %122

122:                                              ; preds = %118, %116
  %123 = phi i32 [ 5, %116 ], [ %121, %118 ]
  br i1 %95, label %124, label %132

124:                                              ; preds = %122
  br i1 %78, label %127, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 0, i32 1
  store i8 80, ptr %126, align 4
  br label %133

127:                                              ; preds = %124
  %128 = icmp ugt i32 %2, 255
  %129 = select i1 %128, i1 %85, i1 false
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.nand_op_instr, ptr %8, i32 0, i32 1
  store i8 1, ptr %131, align 4
  br label %133

132:                                              ; preds = %122
  store ptr %12, ptr %68, align 4
  store i32 %123, ptr %69, align 4
  br label %133

133:                                              ; preds = %132, %130, %127, %125
  %134 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %152, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.nand_controller, ptr %135, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %152, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.nand_controller_ops, ptr %139, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %147 = load i32, ptr %146, align 8
  %148 = icmp ult i32 %67, %147
  br i1 %148, label %150, label %149, !prof !9

149:                                              ; preds = %145
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %152

150:                                              ; preds = %145
  %151 = call i32 %143(ptr noundef %0, ptr noundef nonnull %9, i1 noundef zeroext false) #15
  br label %152

152:                                              ; preds = %150, %149, %141, %137, %133, %89, %6
  %153 = phi i32 [ -22, %149 ], [ %151, %150 ], [ -524, %141 ], [ -524, %137 ], [ -524, %133 ], [ -22, %89 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #15
  ret i32 %153
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_prog_page_end_op(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x %struct.nand_op_instr], align 4
  %4 = alloca %struct.nand_operation, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %76, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nand_controller, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %76, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nand_controller_ops, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %19 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  store i8 16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %18, align 8
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.nand_interface_config, ptr %18, i32 0, i32 1, i32 1, i32 0, i32 32
  %24 = icmp eq i32 %21, 1
  %25 = getelementptr inbounds %struct.nand_interface_config, ptr %18, i32 0, i32 1, i32 1
  %26 = select i1 %24, ptr %25, ptr inttoptr (i32 -22 to ptr)
  %27 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %26, i32 0, i32 31
  %28 = select i1 %22, ptr %23, ptr %27
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 999
  %31 = udiv i32 %30, 1000
  store i32 %31, ptr %20, align 4
  %32 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 1
  store i32 4, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 1, i32 1
  %34 = load i32, ptr %18, align 8
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.nand_interface_config, ptr %18, i32 0, i32 1, i32 1, i32 0, i32 2
  %37 = icmp eq i32 %34, 1
  %38 = select i1 %37, ptr %25, ptr inttoptr (i32 -22 to ptr)
  %39 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %38, i32 0, i32 2
  %40 = select i1 %35, ptr %36, ptr %39
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, 999999999
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %42, i32 0) #17, !srcloc !12
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = extractvalue { i64, i32 } %43, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %42, i64 %44, i32 %45) #17, !srcloc !13
  %47 = extractvalue { i64, i32 } %46, 0
  %48 = lshr i64 %47, 29
  %49 = trunc i64 %48 to i32
  store i32 %49, ptr %33, align 4
  %50 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 1, i32 2
  store i32 0, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %51 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %4, align 4
  %53 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 1
  store ptr %3, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 2
  store i32 2, ptr %54, align 4
  %55 = load ptr, ptr %9, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %16
  %58 = getelementptr inbounds %struct.nand_controller_ops, ptr %55, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = icmp ult i32 %52, %63
  br i1 %64, label %66, label %65, !prof !9

65:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %69

66:                                               ; preds = %61
  %67 = call i32 %59(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66, %65, %57, %16
  %70 = phi i32 [ %67, %66 ], [ -524, %16 ], [ -524, %57 ], [ -22, %65 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  br label %90

71:                                               ; preds = %66
  %72 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %2)
  %73 = icmp eq i32 %72, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i8, ptr %2, align 1
  br label %85

76:                                               ; preds = %12, %8, %1
  %77 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef %0, i32 noundef 16, i32 noundef -1, i32 noundef -1) #15
  %79 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 10
  %80 = load ptr, ptr %79, align 8
  %81 = tail call i32 %80(ptr noundef %0) #15
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = trunc i32 %81 to i8
  br label %85

85:                                               ; preds = %83, %74
  %86 = phi i8 [ %75, %74 ], [ %84, %83 ]
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i32 0, i32 -5
  br label %90

90:                                               ; preds = %85, %76, %71, %69
  %91 = phi i32 [ %72, %71 ], [ %81, %76 ], [ %89, %85 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !annotation !10
  %7 = icmp ne i32 %4, 0
  %8 = icmp ne ptr %3, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %55

10:                                               ; preds = %5
  %11 = add i32 %4, %2
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = icmp ugt i32 %11, %16
  br i1 %17, label %55, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nand_controller, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nand_controller_ops, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %3, i32 noundef %4, i1 noundef zeroext true)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %6)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i8, ptr %6, align 1
  br label %50

38:                                               ; preds = %26, %22, %18
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef %0, i32 noundef 128, i32 noundef %2, i32 noundef %1) #15
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %4) #15
  %43 = load ptr, ptr %39, align 8
  tail call void %43(ptr noundef %0, i32 noundef 16, i32 noundef -1, i32 noundef -1) #15
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 10
  %45 = load ptr, ptr %44, align 8
  %46 = tail call i32 %45(ptr noundef %0) #15
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %38
  %49 = trunc i32 %46 to i8
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi i8 [ %37, %36 ], [ %49, %48 ]
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  %54 = select i1 %53, i32 0, i32 -5
  br label %55

55:                                               ; preds = %50, %38, %33, %30, %10, %5
  %56 = phi i32 [ -22, %5 ], [ -22, %10 ], [ %31, %30 ], [ %34, %33 ], [ %46, %38 ], [ %54, %50 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) #4 {
  %6 = alloca [2 x i8], align 2
  %7 = alloca [3 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = zext i1 %4 to i8
  %10 = icmp eq i32 %3, 0
  %11 = icmp ne ptr %2, null
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %104

13:                                               ; preds = %5
  %14 = add i32 %3, %1
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = icmp ugt i32 %14, %19
  br i1 %20, label %104, label %21

21:                                               ; preds = %13
  %22 = icmp ult i32 %16, 513
  br i1 %22, label %104, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nand_controller, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %98, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_controller_ops, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %98, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2, !annotation !10
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %7) #15
  %38 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %7, i8 0, i64 56, i1 false)
  store i8 -123, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1
  store i32 1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 1, i32 0, i32 1
  store ptr %6, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 1, i32 2
  %43 = load i32, ptr %37, align 8
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.nand_interface_config, ptr %37, i32 0, i32 1, i32 1, i32 0, i32 1
  %46 = icmp eq i32 %43, 1
  %47 = getelementptr inbounds %struct.nand_interface_config, ptr %37, i32 0, i32 1, i32 1
  %48 = select i1 %46, ptr %47, ptr inttoptr (i32 -22 to ptr)
  %49 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %48, i32 0, i32 1
  %50 = select i1 %44, ptr %45, ptr %49
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 999
  %53 = udiv i32 %52, 1000
  store i32 %53, ptr %42, align 4
  %54 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2
  store i32 3, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 1
  store i32 %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 1, i32 0, i32 1
  store ptr %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 1, i32 0, i32 2
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 2, i32 2
  store i32 0, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %8, align 4
  %61 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  store ptr %7, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  store i32 3, ptr %62, align 4
  %63 = icmp ult i32 %19, %1
  br i1 %63, label %96, label %64

64:                                               ; preds = %35
  %65 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = and i32 %1, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %69
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1112, i32 noundef 9, ptr noundef null) #15
  br label %96

73:                                               ; preds = %69
  %74 = lshr i32 %1, 1
  br label %75

75:                                               ; preds = %73, %64
  %76 = phi i32 [ %74, %73 ], [ %1, %64 ]
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %6, align 2
  %78 = lshr i32 %76, 8
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %79, ptr %80, align 1
  store i8 %9, ptr %57, align 4
  br i1 %10, label %81, label %82

81:                                               ; preds = %75
  store i32 2, ptr %62, align 4
  br label %82

82:                                               ; preds = %81, %75
  %83 = load ptr, ptr %28, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.nand_controller_ops, ptr %83, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %91 = load i32, ptr %90, align 8
  %92 = icmp ult i32 %60, %91
  br i1 %92, label %94, label %93, !prof !9

93:                                               ; preds = %89
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %96

94:                                               ; preds = %89
  %95 = call i32 %87(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  br label %96

96:                                               ; preds = %94, %93, %85, %82, %72, %35
  %97 = phi i32 [ -22, %93 ], [ %95, %94 ], [ -524, %85 ], [ -524, %82 ], [ -22, %72 ], [ -22, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  br label %104

98:                                               ; preds = %31, %27, %23
  %99 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef %0, i32 noundef 133, i32 noundef %1, i32 noundef -1) #15
  br i1 %10, label %104, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %0, ptr noundef %2, i32 noundef %3) #15
  br label %104

104:                                              ; preds = %101, %98, %96, %21, %13, %5
  %105 = phi i32 [ %97, %96 ], [ -22, %5 ], [ -22, %13 ], [ -524, %21 ], [ 0, %101 ], [ 0, %98 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = alloca i8, align 1
  %6 = alloca [3 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  store i8 %1, ptr %5, align 1
  %8 = icmp eq i32 %3, 0
  %9 = icmp ne ptr %2, null
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %113

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %100, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_controller, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %100, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nand_controller_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %100, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #15
  %26 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  store i8 -112, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1
  store i32 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1, i32 0, i32 1
  store ptr %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 2
  %31 = load i32, ptr %25, align 8
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1, i32 0, i32 5
  %34 = icmp eq i32 %31, 1
  %35 = getelementptr inbounds %struct.nand_interface_config, ptr %25, i32 0, i32 1, i32 1
  %36 = select i1 %34, ptr %35, ptr inttoptr (i32 -22 to ptr)
  %37 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %36, i32 0, i32 6
  %38 = select i1 %32, ptr %33, ptr %37
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 999
  %41 = udiv i32 %40, 1000
  store i32 %41, ptr %30, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2
  store i32 2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 1
  store i32 %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 1, i32 0, i32 1
  store ptr %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 1, i32 0, i32 2
  store i8 1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 2
  store i32 0, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %47 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %7, align 4
  %49 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  store ptr %6, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  store i32 3, ptr %50, align 4
  %51 = icmp ne i32 %3, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %23
  %53 = load i32, ptr %25, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = shl i32 %3, 1
  %57 = call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %98, label %60

59:                                               ; preds = %23
  store i32 2, ptr %50, align 4
  br label %65

60:                                               ; preds = %55
  %61 = load i32, ptr %43, align 4
  %62 = load ptr, ptr %12, align 4
  %63 = shl i32 %61, 1
  store i32 %63, ptr %43, align 4
  store ptr %57, ptr %44, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %95, label %65

65:                                               ; preds = %60, %59, %52
  %66 = phi ptr [ %57, %60 ], [ null, %59 ], [ null, %52 ]
  %67 = phi ptr [ %62, %60 ], [ %13, %59 ], [ %13, %52 ]
  %68 = getelementptr inbounds %struct.nand_controller, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.nand_controller_ops, ptr %69, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %77 = load i32, ptr %76, align 8
  %78 = icmp ult i32 %48, %77
  br i1 %78, label %80, label %79, !prof !9

79:                                               ; preds = %75
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %95

80:                                               ; preds = %75
  %81 = call i32 %73(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #15
  %82 = icmp eq i32 %81, 0
  %83 = and i1 %51, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, ptr %25, align 8
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %87, %84
  %88 = phi i32 [ %93, %87 ], [ 0, %84 ]
  %89 = shl i32 %88, 1
  %90 = getelementptr i8, ptr %66, i32 %89
  %91 = load i8, ptr %90, align 2
  %92 = getelementptr i8, ptr %2, i32 %88
  store i8 %91, ptr %92, align 1
  %93 = add nuw i32 %88, 1
  %94 = icmp eq i32 %93, %3
  br i1 %94, label %95, label %87

95:                                               ; preds = %87, %84, %80, %79, %71, %65, %60
  %96 = phi ptr [ %66, %84 ], [ %66, %80 ], [ %57, %60 ], [ %66, %65 ], [ %66, %71 ], [ %66, %79 ], [ %66, %87 ]
  %97 = phi i32 [ 0, %84 ], [ %81, %80 ], [ -524, %60 ], [ -524, %65 ], [ -524, %71 ], [ -22, %79 ], [ 0, %87 ]
  call void @kfree(ptr noundef %96) #15
  br label %98

98:                                               ; preds = %95, %55
  %99 = phi i32 [ %97, %95 ], [ -12, %55 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #15
  br label %113

100:                                              ; preds = %19, %15, %11
  %101 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %102 = load ptr, ptr %101, align 8
  %103 = zext i8 %1 to i32
  tail call void %102(ptr noundef %0, i32 noundef 144, i32 noundef %103, i32 noundef -1) #15
  br i1 %8, label %113, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i32 [ 0, %104 ], [ %111, %106 ]
  %108 = load ptr, ptr %105, align 4
  %109 = tail call zeroext i8 %108(ptr noundef %0) #15
  %110 = getelementptr i8, ptr %2, i32 %107
  store i8 %109, ptr %110, align 1
  %111 = add nuw i32 %107, 1
  %112 = icmp eq i32 %111, %3
  br i1 %112, label %113, label %106

113:                                              ; preds = %106, %100, %98, %4
  %114 = phi i32 [ %99, %98 ], [ -22, %4 ], [ 0, %100 ], [ 0, %106 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_erase_op(ptr noundef %0, i32 noundef %1) #4 {
  %3 = alloca i8, align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [4 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %8, %10
  %12 = shl i32 %1, %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !10
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %98, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nand_controller, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %98, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nand_controller_ops, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %98, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %27 = trunc i32 %12 to i8
  store i8 %27, ptr %4, align 1
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  %29 = lshr i32 %12, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %28, align 1
  %31 = getelementptr inbounds i8, ptr %4, i32 2
  %32 = lshr i32 %12, 16
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #15
  %34 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %5, i8 0, i64 76, i1 false)
  store i8 96, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1, i32 1
  store i32 2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1, i32 1, i32 0, i32 1
  store ptr %4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 1
  store i8 -48, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 2
  %41 = load i32, ptr %26, align 8
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.nand_interface_config, ptr %26, i32 0, i32 1, i32 1, i32 0, i32 32
  %44 = icmp eq i32 %41, 1
  %45 = getelementptr inbounds %struct.nand_interface_config, ptr %26, i32 0, i32 1, i32 1
  %46 = select i1 %44, ptr %45, ptr inttoptr (i32 -22 to ptr)
  %47 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %46, i32 0, i32 31
  %48 = select i1 %42, ptr %43, ptr %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 999
  %51 = udiv i32 %50, 1000
  store i32 %51, ptr %40, align 4
  %52 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3
  store i32 4, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3, i32 1
  %54 = load i32, ptr %26, align 8
  %55 = icmp ult i32 %54, 2
  %56 = select i1 %55, ptr %45, ptr inttoptr (i32 -22 to ptr)
  %57 = load i64, ptr %56, align 8
  %58 = add i64 %57, 999999999
  %59 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %58, i32 0) #17, !srcloc !12
  %60 = extractvalue { i64, i32 } %59, 0
  %61 = extractvalue { i64, i32 } %59, 1
  %62 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %58, i64 %60, i32 %61) #17, !srcloc !13
  %63 = extractvalue { i64, i32 } %62, 0
  %64 = lshr i64 %63, 29
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %53, align 4
  %66 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3, i32 2
  store i32 0, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %67 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %68 = load i32, ptr %67, align 4
  store i32 %68, ptr %6, align 4
  %69 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 4, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 16384
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %24
  store i32 3, ptr %36, align 4
  br label %76

76:                                               ; preds = %75, %24
  %77 = load ptr, ptr %17, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.nand_controller_ops, ptr %77, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %85 = load i32, ptr %84, align 8
  %86 = icmp ult i32 %68, %85
  br i1 %86, label %88, label %87, !prof !9

87:                                               ; preds = %83
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %91

88:                                               ; preds = %83
  %89 = call i32 %81(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88, %87, %79, %76
  %92 = phi i32 [ %89, %88 ], [ -524, %76 ], [ -524, %79 ], [ -22, %87 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %113

93:                                               ; preds = %88
  %94 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %3)
  %95 = icmp eq i32 %94, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load i8, ptr %3, align 1
  br label %108

98:                                               ; preds = %20, %16, %2
  %99 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef %0, i32 noundef 96, i32 noundef -1, i32 noundef %12) #15
  %101 = load ptr, ptr %99, align 8
  tail call void %101(ptr noundef %0, i32 noundef 208, i32 noundef -1, i32 noundef -1) #15
  %102 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 10
  %103 = load ptr, ptr %102, align 8
  %104 = tail call i32 %103(ptr noundef %0) #15
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %98
  %107 = trunc i32 %104 to i8
  br label %108

108:                                              ; preds = %106, %96
  %109 = phi i8 [ %97, %96 ], [ %107, %106 ]
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i32 0, i32 -5
  br label %113

113:                                              ; preds = %108, %98, %93, %91
  %114 = phi i32 [ %94, %93 ], [ %104, %98 ], [ %112, %108 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_reset_op(ptr noundef %0) #4 {
  %2 = alloca [2 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %74, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nand_controller_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %18 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 -1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 2
  %20 = load i32, ptr %17, align 8
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.nand_interface_config, ptr %17, i32 0, i32 1, i32 1, i32 0, i32 32
  %23 = icmp eq i32 %20, 1
  %24 = getelementptr inbounds %struct.nand_interface_config, ptr %17, i32 0, i32 1, i32 1
  %25 = select i1 %23, ptr %24, ptr inttoptr (i32 -22 to ptr)
  %26 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %25, i32 0, i32 31
  %27 = select i1 %21, ptr %22, ptr %26
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 999
  %30 = udiv i32 %29, 1000
  store i32 %30, ptr %19, align 4
  %31 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1
  store i32 4, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 1
  %33 = load i32, ptr %17, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.nand_interface_config, ptr %17, i32 0, i32 1, i32 1, i32 0, i32 31
  %37 = load i64, ptr %36, align 8
  br label %44

38:                                               ; preds = %15
  %39 = icmp eq i32 %33, 1
  %40 = select i1 %39, ptr %24, ptr inttoptr (i32 -22 to ptr)
  %41 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %40, i32 0, i32 30
  %42 = load i32, ptr %41, align 8
  %43 = zext i32 %42 to i64
  br label %44

44:                                               ; preds = %38, %35
  %45 = phi i64 [ %37, %35 ], [ %43, %38 ]
  %46 = add i64 %45, 999999999
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %46, i32 0) #17, !srcloc !12
  %48 = extractvalue { i64, i32 } %47, 0
  %49 = extractvalue { i64, i32 } %47, 1
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %46, i64 %48, i32 %49) #17, !srcloc !13
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = lshr i64 %51, 29
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %32, align 4
  %54 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 1, i32 2
  store i32 0, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %3, align 4
  %57 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 2, ptr %58, align 4
  %59 = load ptr, ptr %8, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.nand_controller_ops, ptr %59, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = icmp ult i32 %56, %67
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %65
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %72

70:                                               ; preds = %65
  %71 = call i32 %63(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #15
  br label %72

72:                                               ; preds = %70, %69, %61, %44
  %73 = phi i32 [ -22, %69 ], [ %71, %70 ], [ -524, %61 ], [ -524, %44 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  br label %77

74:                                               ; preds = %11, %7, %1
  %75 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef %0, i32 noundef 255, i32 noundef -1, i32 noundef -1) #15
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ 0, %74 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_write_data_op(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #4 {
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = zext i1 %3 to i8
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %57

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_controller, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nand_controller_ops, ptr %17, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %24 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %24, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  %25 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  store i32 0, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %6, align 4
  %31 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %32, align 4
  store i8 %7, ptr %27, align 4
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = icmp ult i32 %30, %37
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %42

40:                                               ; preds = %35
  %41 = call i32 %33(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  br label %42

42:                                               ; preds = %40, %39, %23
  %43 = phi i32 [ -22, %39 ], [ %41, %40 ], [ -524, %23 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %57

44:                                               ; preds = %19, %15, %11
  br i1 %3, label %45, label %54

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 4
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i32 [ %52, %47 ], [ 0, %45 ]
  %49 = load ptr, ptr %46, align 8
  %50 = getelementptr i8, ptr %1, i32 %48
  %51 = load i8, ptr %50, align 1
  tail call void %49(ptr noundef %0, i8 noundef zeroext %51) #15
  %52 = add nuw i32 %48, 1
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %57, label %47

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #15
  br label %57

57:                                               ; preds = %54, %47, %42, %4
  %58 = phi i32 [ %43, %42 ], [ -22, %4 ], [ 0, %54 ], [ 0, %47 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_op_parser_exec_op(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i1 noundef zeroext %3) #4 {
  %5 = alloca %struct.nand_op_parser_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.nand_operation, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nand_operation, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %2, align 4
  store i32 %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 2, i32 1
  store ptr %7, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 2, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 2, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nand_op_parser_ctx, ptr %5, i32 0, i32 2, i32 4
  store i32 0, ptr %16, align 4
  %17 = getelementptr %struct.nand_op_instr, ptr %7, i32 %10
  %18 = icmp ult ptr %7, %17
  br i1 %18, label %19, label %158

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.nand_op_parser, ptr %1, i32 0, i32 1
  br label %21

21:                                               ; preds = %146, %19
  %22 = phi i32 [ 0, %19 ], [ %147, %146 ]
  %23 = phi ptr [ %7, %19 ], [ %153, %146 ]
  %24 = load i32, ptr %20, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %158, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %5, align 4
  %28 = load i32, ptr %8, align 4
  %29 = load i32, ptr %11, align 4
  %30 = load ptr, ptr %1, align 4
  %31 = getelementptr %struct.nand_op_instr, ptr %27, i32 %28
  %32 = icmp ult ptr %23, %31
  br label %33

33:                                               ; preds = %122, %26
  %34 = phi i32 [ -1, %26 ], [ %130, %122 ]
  %35 = phi i32 [ 0, %26 ], [ %131, %122 ]
  %36 = phi i32 [ 0, %26 ], [ %129, %122 ]
  %37 = phi i32 [ 0, %26 ], [ %128, %122 ]
  %38 = phi i32 [ 0, %26 ], [ %127, %122 ]
  %39 = phi ptr [ null, %26 ], [ %126, %122 ]
  %40 = phi i32 [ 0, %26 ], [ %125, %122 ]
  %41 = phi i32 [ 0, %26 ], [ %124, %122 ]
  %42 = phi ptr [ null, %26 ], [ %123, %122 ]
  %43 = getelementptr %struct.nand_op_parser_pattern, ptr %30, i32 %35, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %45, i1 %32, i1 false
  br i1 %46, label %47, label %122

47:                                               ; preds = %33
  %48 = getelementptr %struct.nand_op_parser_pattern, ptr %30, i32 %35
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %90, %47
  %51 = phi i32 [ 0, %47 ], [ %93, %90 ]
  %52 = phi i32 [ 0, %47 ], [ %94, %90 ]
  %53 = phi ptr [ %23, %47 ], [ %92, %90 ]
  %54 = phi i32 [ %22, %47 ], [ %91, %90 ]
  %55 = load i32, ptr %53, align 4
  %56 = getelementptr %struct.nand_op_parser_pattern_elem, ptr %49, i32 %52
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = getelementptr %struct.nand_op_parser_pattern_elem, ptr %49, i32 %52, i32 1
  %61 = load i8, ptr %60, align 4, !range !14
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %122, label %90

63:                                               ; preds = %50
  switch i32 %55, label %87 [
    i32 1, label %64
    i32 2, label %73
    i32 3, label %73
  ]

64:                                               ; preds = %63
  %65 = getelementptr %struct.nand_op_parser_pattern_elem, ptr %49, i32 %52, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nand_op_instr, ptr %53, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %70, %54
  %72 = icmp ugt i32 %71, %66
  br i1 %72, label %82, label %87

73:                                               ; preds = %63, %63
  %74 = getelementptr %struct.nand_op_parser_pattern_elem, ptr %49, i32 %52, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.nand_op_instr, ptr %53, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %79, %54
  %81 = icmp ugt i32 %80, %75
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %68
  %83 = phi i32 [ %66, %68 ], [ %75, %77 ]
  %84 = add i32 %83, %54
  %85 = add i32 %51, 1
  %86 = add nuw i32 %52, 1
  br label %98

87:                                               ; preds = %77, %73, %68, %64, %63
  %88 = getelementptr %struct.nand_op_instr, ptr %53, i32 1
  %89 = add i32 %51, 1
  br label %90

90:                                               ; preds = %87, %59
  %91 = phi i32 [ 0, %87 ], [ %54, %59 ]
  %92 = phi ptr [ %88, %87 ], [ %53, %59 ]
  %93 = phi i32 [ %89, %87 ], [ %51, %59 ]
  %94 = add nuw i32 %52, 1
  %95 = icmp ult i32 %94, %44
  %96 = icmp ult ptr %92, %31
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %50, label %98

98:                                               ; preds = %90, %82
  %99 = phi i32 [ %84, %82 ], [ %91, %90 ]
  %100 = phi i32 [ %86, %82 ], [ %94, %90 ]
  %101 = phi i32 [ %85, %82 ], [ %93, %90 ]
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %98
  %104 = icmp ult i32 %100, %44
  br i1 %104, label %108, label %113

105:                                              ; preds = %108
  %106 = add i32 %109, 1
  %107 = icmp eq i32 %106, %44
  br i1 %107, label %113, label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %106, %105 ], [ %100, %103 ]
  %110 = getelementptr %struct.nand_op_parser_pattern_elem, ptr %49, i32 %109, i32 1
  %111 = load i8, ptr %110, align 4, !range !14
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %122, label %105

113:                                              ; preds = %105, %103
  %114 = icmp sgt i32 %34, -1
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  %116 = icmp ult i32 %101, %38
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = icmp ugt i32 %101, %38
  %119 = icmp ugt i32 %99, %36
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %117, %115, %108, %98, %59, %33
  %123 = phi ptr [ %27, %121 ], [ %42, %98 ], [ %42, %33 ], [ %42, %115 ], [ %42, %117 ], [ %42, %108 ], [ %42, %59 ]
  %124 = phi i32 [ %28, %121 ], [ %41, %98 ], [ %41, %33 ], [ %41, %115 ], [ %41, %117 ], [ %41, %108 ], [ %41, %59 ]
  %125 = phi i32 [ %29, %121 ], [ %40, %98 ], [ %40, %33 ], [ %40, %115 ], [ %40, %117 ], [ %40, %108 ], [ %40, %59 ]
  %126 = phi ptr [ %23, %121 ], [ %39, %98 ], [ %39, %33 ], [ %39, %115 ], [ %39, %117 ], [ %39, %108 ], [ %39, %59 ]
  %127 = phi i32 [ %101, %121 ], [ %38, %98 ], [ %38, %33 ], [ %38, %115 ], [ %38, %117 ], [ %38, %108 ], [ %38, %59 ]
  %128 = phi i32 [ %22, %121 ], [ %37, %98 ], [ %37, %33 ], [ %37, %115 ], [ %37, %117 ], [ %37, %108 ], [ %37, %59 ]
  %129 = phi i32 [ %99, %121 ], [ %36, %98 ], [ %36, %33 ], [ %36, %115 ], [ %36, %117 ], [ %36, %108 ], [ %36, %59 ]
  %130 = phi i32 [ %35, %121 ], [ %34, %98 ], [ %34, %33 ], [ %34, %115 ], [ %34, %117 ], [ %34, %108 ], [ %34, %59 ]
  %131 = add nuw i32 %35, 1
  %132 = icmp eq i32 %131, %24
  br i1 %132, label %133, label %33

133:                                              ; preds = %122
  %134 = icmp slt i32 %130, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %133
  store ptr %123, ptr %5, align 4
  store i32 %124, ptr %8, align 4
  store i32 %125, ptr %11, align 4
  store ptr %126, ptr %13, align 4
  store i32 %127, ptr %14, align 4
  store i32 %128, ptr %15, align 4
  store i32 %129, ptr %16, align 4
  br i1 %3, label %146, label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %1, align 4
  %138 = getelementptr %struct.nand_op_parser_pattern, ptr %137, i32 %130, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 %139(ptr noundef %0, ptr noundef %11) #15
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load ptr, ptr %13, align 4
  %144 = load i32, ptr %14, align 4
  %145 = load i32, ptr %16, align 4
  br label %146

146:                                              ; preds = %142, %135
  %147 = phi i32 [ %145, %142 ], [ %129, %135 ]
  %148 = phi i32 [ %144, %142 ], [ %127, %135 ]
  %149 = phi ptr [ %143, %142 ], [ %126, %135 ]
  %150 = getelementptr %struct.nand_op_instr, ptr %149, i32 %148
  %151 = icmp ne i32 %147, 0
  %152 = sext i1 %151 to i32
  %153 = getelementptr %struct.nand_op_instr, ptr %150, i32 %152
  store ptr %153, ptr %13, align 4
  store i32 %147, ptr %15, align 4
  %154 = load ptr, ptr %6, align 4
  %155 = load i32, ptr %9, align 4
  %156 = getelementptr %struct.nand_op_instr, ptr %154, i32 %155
  %157 = icmp ult ptr %153, %156
  br i1 %157, label %21, label %158

158:                                              ; preds = %146, %136, %133, %21, %4
  %159 = phi i32 [ 0, %4 ], [ -524, %21 ], [ %140, %136 ], [ -524, %133 ], [ 0, %146 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #15
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_subop_get_addr_start_off(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %8, %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2484, i32 noundef 9, ptr noundef null) #15
  br label %20

15:                                               ; preds = %8
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15, %14
  %21 = phi i32 [ 0, %14 ], [ %19, %17 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_subop_get_num_addr_cyc(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %8, %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2508, i32 noundef 9, ptr noundef null) #15
  br label %34

15:                                               ; preds = %8
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ 0, %15 ]
  %22 = add i32 %6, -1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1, i32 1
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i32 [ %30, %28 ], [ %26, %24 ]
  %33 = sub i32 %32, %21
  br label %34

34:                                               ; preds = %31, %14
  %35 = phi i32 [ 0, %14 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_subop_get_data_start_off(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 4
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %13, %8, %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2538, i32 noundef 9, ptr noundef null) #15
  br label %23

18:                                               ; preds = %13
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %18, %17
  %24 = phi i32 [ 0, %17 ], [ %22, %20 ], [ 0, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_subop_get_data_len(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 4
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %13, %8, %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2562, i32 noundef 9, ptr noundef null) #15
  br label %37

18:                                               ; preds = %13
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %22, %20 ], [ 0, %18 ]
  %25 = add i32 %6, -1
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nand_subop, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %23
  %32 = getelementptr %struct.nand_op_instr, ptr %10, i32 %1, i32 1
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %36 = sub i32 %35, %24
  br label %37

37:                                               ; preds = %34, %17
  %38 = phi i32 [ 0, %17 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_reset(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_controller, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nand_controller_ops, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 8388608
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = tail call ptr @nand_get_reset_interface_config() #15
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  store ptr %20, ptr %21, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef %1, ptr noundef %20) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %49

27:                                               ; preds = %19, %14, %10, %2
  %28 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %29 = load i32, ptr %28, align 8
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void %35(ptr noundef %0, i32 noundef %1) #15
  br label %38

38:                                               ; preds = %37, %32, %31
  %39 = tail call i32 @nand_reset_op(ptr noundef %0)
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void %41(ptr noundef %0, i32 noundef -1) #15
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %45, align 4
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call fastcc i32 @nand_setup_interface(ptr noundef %0, i32 noundef %1)
  br label %49

49:                                               ; preds = %47, %44, %25
  %50 = phi i32 [ %23, %25 ], [ %39, %44 ], [ %48, %47 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_setup_interface(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_controller, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %8 = icmp eq ptr %5, null
  %9 = icmp eq ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %147, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %147, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 8388608
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %147

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %147, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_interface_config, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %22, align 8
  %28 = icmp eq i32 %27, 0
  %29 = trunc i32 %26 to i8
  %30 = or i8 %29, 16
  %31 = select i1 %28, i8 %29, i8 %30
  store i8 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %33 = load i8, ptr %32, align 4, !range !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %63, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %42, %1
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void %48(ptr noundef %0, i32 noundef %1) #15
  br label %51

51:                                               ; preds = %50, %45, %44
  %52 = call i32 @nand_set_features(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3)
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  call void %54(ptr noundef %0, i32 noundef -1) #15
  br label %57

57:                                               ; preds = %56, %51
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %58, align 4
  %59 = icmp eq i32 %52, 0
  br i1 %59, label %60, label %147

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 4
  %62 = load ptr, ptr %21, align 8
  br label %63

63:                                               ; preds = %60, %35, %24
  %64 = phi ptr [ %62, %60 ], [ %22, %24 ], [ %22, %35 ]
  %65 = phi ptr [ %61, %60 ], [ %13, %24 ], [ %13, %35 ]
  %66 = call i32 %65(ptr noundef %0, i32 noundef %1, ptr noundef %64) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %147

68:                                               ; preds = %63
  %69 = load i8, ptr %32, align 4, !range !14
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %107, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %107, label %76

76:                                               ; preds = %71
  store i32 0, ptr %3, align 4
  %77 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %78 = load i32, ptr %77, align 8
  %79 = icmp ult i32 %78, %1
  br i1 %79, label %80, label %81, !prof !8

80:                                               ; preds = %76
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  call void %84(ptr noundef %0, i32 noundef %1) #15
  br label %87

87:                                               ; preds = %86, %81, %80
  %88 = call i32 @nand_get_features(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3)
  %89 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  call void %90(ptr noundef %0, i32 noundef -1) #15
  br label %93

93:                                               ; preds = %92, %87
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %94, align 4
  %95 = icmp eq i32 %88, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i8, ptr %3, align 4
  %98 = icmp eq i8 %31, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr %21, align 8
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 1
  %103 = select i1 %102, ptr @.str.7, ptr @.str.8
  %104 = getelementptr inbounds %struct.nand_interface_config, ptr %100, i32 0, i32 1
  %105 = load i32, ptr %104, align 8
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %103, i32 noundef %105) #18
  br label %110

107:                                              ; preds = %96, %71, %68
  %108 = load ptr, ptr %21, align 8
  %109 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  store ptr %108, ptr %109, align 4
  br label %147

110:                                              ; preds = %99, %93
  %111 = load ptr, ptr %4, align 4
  %112 = getelementptr inbounds %struct.nand_controller, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %111, null
  %115 = icmp eq ptr %113, null
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %133, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.nand_controller_ops, ptr %113, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %16, align 8
  %123 = and i32 %122, 8388608
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = call ptr @nand_get_reset_interface_config() #15
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  store ptr %126, ptr %127, align 4
  %128 = load ptr, ptr %118, align 4
  %129 = call i32 %128(ptr noundef %0, i32 noundef %1, ptr noundef %126) #15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %133

133:                                              ; preds = %131, %125, %121, %117, %110
  %134 = load i32, ptr %77, align 8
  %135 = icmp ult i32 %134, %1
  br i1 %135, label %136, label %137, !prof !8

136:                                              ; preds = %133
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %141

137:                                              ; preds = %133
  store i32 %1, ptr %94, align 4
  %138 = load ptr, ptr %89, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  call void %138(ptr noundef %0, i32 noundef %1) #15
  br label %141

141:                                              ; preds = %140, %137, %136
  %142 = call i32 @nand_reset_op(ptr noundef %0)
  %143 = load ptr, ptr %89, align 8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call void %143(ptr noundef %0, i32 noundef -1) #15
  br label %146

146:                                              ; preds = %145, %141
  store i32 -1, ptr %94, align 4
  br label %147

147:                                              ; preds = %146, %107, %63, %57, %20, %15, %11, %2
  %148 = phi i32 [ %88, %146 ], [ 0, %107 ], [ 0, %15 ], [ 0, %20 ], [ %52, %57 ], [ %66, %63 ], [ 0, %11 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_get_features(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = alloca [8 x i8], align 8
  %6 = alloca [4 x %struct.nand_op_instr], align 4
  %7 = alloca %struct.nand_operation, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %9 = load i8, ptr %8, align 4, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %141, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 3
  %13 = lshr i32 %1, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %1, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %141

26:                                               ; preds = %20
  %27 = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %27, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !10
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %123, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nand_controller, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %123, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nand_controller_ops, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %123, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #15
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %6, i8 0, i64 76, i1 false) #15
  store i8 -18, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 1, i32 0, i32 1
  store ptr %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 1, i32 2
  %47 = load i32, ptr %41, align 8
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.nand_interface_config, ptr %41, i32 0, i32 1, i32 1, i32 0, i32 32
  %50 = icmp eq i32 %47, 1
  %51 = getelementptr inbounds %struct.nand_interface_config, ptr %41, i32 0, i32 1, i32 1
  %52 = select i1 %50, ptr %51, ptr inttoptr (i32 -22 to ptr)
  %53 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %52, i32 0, i32 31
  %54 = select i1 %48, ptr %49, ptr %53
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 999
  %57 = udiv i32 %56, 1000
  store i32 %57, ptr %46, align 4
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2
  store i32 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 1
  %60 = load i32, ptr %41, align 8
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.nand_interface_config, ptr %41, i32 0, i32 1, i32 1, i32 0, i32 19
  %63 = icmp eq i32 %60, 1
  %64 = select i1 %63, ptr %51, ptr inttoptr (i32 -22 to ptr)
  %65 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %64, i32 0, i32 25
  %66 = select i1 %61, ptr %62, ptr %65
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 999999999
  %69 = udiv i32 %68, 1000000000
  store i32 %69, ptr %59, align 4
  %70 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 2, i32 2
  %71 = load i32, ptr %41, align 8
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.nand_interface_config, ptr %41, i32 0, i32 1, i32 1, i32 0, i32 30
  %74 = icmp eq i32 %71, 1
  %75 = select i1 %74, ptr %51, ptr inttoptr (i32 -22 to ptr)
  %76 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %75, i32 0, i32 29
  %77 = select i1 %72, ptr %73, ptr %76
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 999
  %80 = udiv i32 %79, 1000
  store i32 %80, ptr %70, align 4
  %81 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3
  store i32 2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1
  store i32 4, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1, i32 0, i32 1
  store ptr %2, ptr %83, align 4
  %84 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 1, i32 0, i32 2
  store i8 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.nand_op_instr, ptr %6, i32 3, i32 2
  store i32 0, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  %86 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr %7, align 4
  %88 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 1
  store ptr %6, ptr %88, align 4
  %89 = getelementptr inbounds %struct.nand_operation, ptr %7, i32 0, i32 2
  store i32 4, ptr %89, align 4
  %90 = load i32, ptr %41, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %39
  store i32 8, ptr %82, align 4
  store ptr %5, ptr %83, align 4
  br label %93

93:                                               ; preds = %92, %39
  %94 = load ptr, ptr %32, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.nand_controller_ops, ptr %94, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %102 = load i32, ptr %101, align 8
  %103 = icmp ult i32 %87, %102
  br i1 %103, label %105, label %104, !prof !9

104:                                              ; preds = %100
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %107

105:                                              ; preds = %100
  %106 = call i32 %98(ptr noundef %0, ptr noundef nonnull %7, i1 noundef zeroext false) #15
  br label %107

107:                                              ; preds = %105, %104, %96, %93
  %108 = phi i32 [ -22, %104 ], [ %106, %105 ], [ -524, %96 ], [ -524, %93 ]
  %109 = load i32, ptr %41, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i8, ptr %5, align 8
  store i8 %112, ptr %2, align 1
  %113 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 2
  %114 = load i8, ptr %113, align 2
  %115 = getelementptr i8, ptr %2, i32 1
  store i8 %114, ptr %115, align 1
  %116 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 4
  %117 = load i8, ptr %116, align 4
  %118 = getelementptr i8, ptr %2, i32 2
  store i8 %117, ptr %118, align 1
  %119 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 6
  %120 = load i8, ptr %119, align 2
  %121 = getelementptr i8, ptr %2, i32 3
  store i8 %120, ptr %121, align 1
  br label %122

122:                                              ; preds = %111, %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #15
  br label %139

123:                                              ; preds = %35, %31, %26
  %124 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %125 = load ptr, ptr %124, align 8
  %126 = and i32 %1, 255
  tail call void %125(ptr noundef %0, i32 noundef 238, i32 noundef %126, i32 noundef -1) #15
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = tail call zeroext i8 %128(ptr noundef %0) #15
  store i8 %129, ptr %2, align 1
  %130 = load ptr, ptr %127, align 4
  %131 = tail call zeroext i8 %130(ptr noundef %0) #15
  %132 = getelementptr i8, ptr %2, i32 1
  store i8 %131, ptr %132, align 1
  %133 = load ptr, ptr %127, align 4
  %134 = tail call zeroext i8 %133(ptr noundef %0) #15
  %135 = getelementptr i8, ptr %2, i32 2
  store i8 %134, ptr %135, align 1
  %136 = load ptr, ptr %127, align 4
  %137 = tail call zeroext i8 %136(ptr noundef %0) #15
  %138 = getelementptr i8, ptr %2, i32 3
  store i8 %137, ptr %138, align 1
  br label %139

139:                                              ; preds = %123, %122
  %140 = phi i32 [ %108, %122 ], [ 0, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %141

141:                                              ; preds = %139, %24, %11, %3
  %142 = phi i32 [ %25, %24 ], [ %140, %139 ], [ -524, %11 ], [ -524, %3 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_set_features(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = alloca [4 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 1
  %8 = load i8, ptr %7, align 4, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %130, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 2
  %12 = lshr i32 %1, 5
  %13 = getelementptr i32, ptr %11, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %130, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 13
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %130

25:                                               ; preds = %19
  %26 = trunc i32 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %26, ptr %4, align 1
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %104, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.nand_controller, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %104, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nand_controller_ops, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %104, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #15
  %41 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %5, i8 0, i64 76, i1 false) #15
  store i8 -17, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1, i32 1
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1, i32 1, i32 0, i32 1
  store ptr %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 1, i32 2
  %46 = load i32, ptr %40, align 8
  %47 = icmp eq i32 %46, 0
  %48 = getelementptr inbounds %struct.nand_interface_config, ptr %40, i32 0, i32 1, i32 1, i32 0, i32 5
  %49 = icmp eq i32 %46, 1
  %50 = getelementptr inbounds %struct.nand_interface_config, ptr %40, i32 0, i32 1, i32 1
  %51 = select i1 %49, ptr %50, ptr inttoptr (i32 -22 to ptr)
  %52 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %51, i32 0, i32 6
  %53 = select i1 %47, ptr %48, ptr %52
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 999
  %56 = udiv i32 %55, 1000
  store i32 %56, ptr %45, align 4
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2
  store i32 3, ptr %57, align 4
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 1
  store i32 4, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 1, i32 0, i32 1
  store ptr %2, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 1, i32 0, i32 2
  store i8 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 2, i32 2
  %62 = load i32, ptr %40, align 8
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.nand_interface_config, ptr %40, i32 0, i32 1, i32 1, i32 0, i32 32
  %65 = icmp eq i32 %62, 1
  %66 = select i1 %65, ptr %50, ptr inttoptr (i32 -22 to ptr)
  %67 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %66, i32 0, i32 31
  %68 = select i1 %63, ptr %64, ptr %67
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, 999
  %71 = udiv i32 %70, 1000
  store i32 %71, ptr %61, align 4
  %72 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3
  store i32 4, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3, i32 1
  %74 = load i32, ptr %40, align 8
  %75 = icmp eq i32 %74, 0
  %76 = getelementptr inbounds %struct.nand_interface_config, ptr %40, i32 0, i32 1, i32 1, i32 0, i32 19
  %77 = icmp eq i32 %74, 1
  %78 = select i1 %77, ptr %50, ptr inttoptr (i32 -22 to ptr)
  %79 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %78, i32 0, i32 25
  %80 = select i1 %75, ptr %76, ptr %79
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 999999999
  %83 = udiv i32 %82, 1000000000
  store i32 %83, ptr %73, align 4
  %84 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 3, i32 2
  store i32 0, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %6, align 4
  %87 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 4, ptr %88, align 4
  %89 = load ptr, ptr %31, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %38
  %92 = getelementptr inbounds %struct.nand_controller_ops, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = icmp ult i32 %86, %97
  br i1 %98, label %100, label %99, !prof !9

99:                                               ; preds = %95
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %102

100:                                              ; preds = %95
  %101 = call i32 %93(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  br label %102

102:                                              ; preds = %100, %99, %91, %38
  %103 = phi i32 [ -22, %99 ], [ %101, %100 ], [ -524, %91 ], [ -524, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #15
  br label %128

104:                                              ; preds = %34, %30, %25
  %105 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %106 = load ptr, ptr %105, align 8
  %107 = and i32 %1, 255
  tail call void %106(ptr noundef %0, i32 noundef 239, i32 noundef %107, i32 noundef -1) #15
  %108 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 4
  %109 = load ptr, ptr %108, align 8
  %110 = load i8, ptr %2, align 1
  tail call void %109(ptr noundef %0, i8 noundef zeroext %110) #15
  %111 = load ptr, ptr %108, align 8
  %112 = getelementptr i8, ptr %2, i32 1
  %113 = load i8, ptr %112, align 1
  tail call void %111(ptr noundef %0, i8 noundef zeroext %113) #15
  %114 = load ptr, ptr %108, align 8
  %115 = getelementptr i8, ptr %2, i32 2
  %116 = load i8, ptr %115, align 1
  tail call void %114(ptr noundef %0, i8 noundef zeroext %116) #15
  %117 = load ptr, ptr %108, align 8
  %118 = getelementptr i8, ptr %2, i32 3
  %119 = load i8, ptr %118, align 1
  tail call void %117(ptr noundef %0, i8 noundef zeroext %119) #15
  %120 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 10
  %121 = load ptr, ptr %120, align 8
  %122 = tail call i32 %121(ptr noundef %0) #15
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %104
  %125 = and i32 %122, 1
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 0, i32 -5
  br label %128

128:                                              ; preds = %124, %104, %102
  %129 = phi i32 [ %103, %102 ], [ %122, %104 ], [ %127, %124 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %130

130:                                              ; preds = %128, %23, %10, %3
  %131 = phi i32 [ %24, %23 ], [ %129, %128 ], [ -524, %10 ], [ -524, %3 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #4 {
  %8 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %0, i32 noundef %1, i32 noundef %6)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = sub i32 %6, %8
  %12 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %2, i32 noundef %3, i32 noundef %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = sub i32 %11, %12
  %16 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %4, i32 noundef %5, i32 noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 -1, i32 %1, i1 false)
  br label %21

21:                                               ; preds = %20, %18
  %22 = icmp eq i32 %12, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @llvm.memset.p0.i32(ptr align 1 %2, i8 -1, i32 %3, i1 false)
  br label %24

24:                                               ; preds = %23, %21
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @llvm.memset.p0.i32(ptr align 1 %4, i8 -1, i32 %5, i1 false)
  br label %27

27:                                               ; preds = %26, %24
  %28 = add nuw i32 %12, %8
  %29 = add i32 %28, %16
  br label %30

30:                                               ; preds = %27, %14, %10, %7
  %31 = phi i32 [ %29, %27 ], [ %8, %7 ], [ %12, %10 ], [ %16, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_check_erased_buf(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = icmp ne i32 %1, 0
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 3
  %7 = icmp ne i32 %6, 0
  %8 = and i1 %4, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %65, %50, %35, %20, %3
  %10 = phi i32 [ %1, %3 ], [ %21, %20 ], [ %36, %35 ], [ %51, %50 ], [ %66, %65 ]
  %11 = phi ptr [ %0, %3 ], [ %22, %20 ], [ %37, %35 ], [ %52, %50 ], [ %67, %65 ]
  %12 = phi i32 [ 0, %3 ], [ %18, %20 ], [ %33, %35 ], [ %48, %50 ], [ %63, %65 ]
  %13 = icmp ugt i32 %10, 3
  br i1 %13, label %73, label %68

14:                                               ; preds = %3
  %15 = load i8, ptr %0, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @__sw_hweight8(i32 noundef %16) #15
  %18 = sub i32 8, %17
  %19 = icmp sgt i32 %18, %2
  br i1 %19, label %103, label %20, !prof !8

20:                                               ; preds = %14
  %21 = add i32 %1, -1
  %22 = getelementptr i8, ptr %0, i32 1
  %23 = icmp ne i32 %21, 0
  %24 = ptrtoint ptr %22 to i32
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  %27 = and i1 %23, %26
  br i1 %27, label %28, label %9

28:                                               ; preds = %20
  %29 = load i8, ptr %22, align 1
  %30 = zext i8 %29 to i32
  %31 = tail call i32 @__sw_hweight8(i32 noundef %30) #15
  %32 = sub i32 8, %31
  %33 = add i32 %32, %18
  %34 = icmp sgt i32 %33, %2
  br i1 %34, label %103, label %35, !prof !8

35:                                               ; preds = %28
  %36 = add i32 %1, -2
  %37 = getelementptr i8, ptr %0, i32 2
  %38 = icmp ne i32 %36, 0
  %39 = ptrtoint ptr %37 to i32
  %40 = and i32 %39, 3
  %41 = icmp ne i32 %40, 0
  %42 = and i1 %38, %41
  br i1 %42, label %43, label %9

43:                                               ; preds = %35
  %44 = load i8, ptr %37, align 1
  %45 = zext i8 %44 to i32
  %46 = tail call i32 @__sw_hweight8(i32 noundef %45) #15
  %47 = sub i32 8, %46
  %48 = add i32 %47, %33
  %49 = icmp sgt i32 %48, %2
  br i1 %49, label %103, label %50, !prof !8

50:                                               ; preds = %43
  %51 = add i32 %1, -3
  %52 = getelementptr i8, ptr %0, i32 3
  %53 = icmp ne i32 %51, 0
  %54 = ptrtoint ptr %52 to i32
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  %57 = and i1 %53, %56
  br i1 %57, label %58, label %9

58:                                               ; preds = %50
  %59 = load i8, ptr %52, align 1
  %60 = zext i8 %59 to i32
  %61 = tail call i32 @__sw_hweight8(i32 noundef %60) #15
  %62 = sub i32 8, %61
  %63 = add i32 %62, %48
  %64 = icmp sgt i32 %63, %2
  br i1 %64, label %103, label %65, !prof !8

65:                                               ; preds = %58
  %66 = add i32 %1, -4
  %67 = getelementptr i8, ptr %0, i32 4
  br label %9

68:                                               ; preds = %84, %9
  %69 = phi i32 [ %10, %9 ], [ %86, %84 ]
  %70 = phi ptr [ %11, %9 ], [ %87, %84 ]
  %71 = phi i32 [ %12, %9 ], [ %85, %84 ]
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %103, label %89

73:                                               ; preds = %84, %9
  %74 = phi i32 [ %85, %84 ], [ %12, %9 ]
  %75 = phi ptr [ %87, %84 ], [ %11, %9 ]
  %76 = phi i32 [ %86, %84 ], [ %10, %9 ]
  %77 = load i32, ptr %75, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = tail call i32 @__sw_hweight32(i32 noundef %77) #15
  %81 = sub i32 32, %80
  %82 = add i32 %81, %74
  %83 = icmp sgt i32 %82, %2
  br i1 %83, label %103, label %84

84:                                               ; preds = %79, %73
  %85 = phi i32 [ %82, %79 ], [ %74, %73 ]
  %86 = add i32 %76, -4
  %87 = getelementptr i8, ptr %75, i32 4
  %88 = icmp ugt i32 %86, 3
  br i1 %88, label %73, label %68

89:                                               ; preds = %99, %68
  %90 = phi i32 [ %97, %99 ], [ %71, %68 ]
  %91 = phi ptr [ %101, %99 ], [ %70, %68 ]
  %92 = phi i32 [ %100, %99 ], [ %69, %68 ]
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i32
  %95 = tail call i32 @__sw_hweight8(i32 noundef %94) #15
  %96 = sub i32 8, %95
  %97 = add i32 %96, %90
  %98 = icmp sgt i32 %97, %2
  br i1 %98, label %103, label %99, !prof !8

99:                                               ; preds = %89
  %100 = add nsw i32 %92, -1
  %101 = getelementptr i8, ptr %91, i32 1
  %102 = icmp sgt i32 %92, 1
  br i1 %102, label %89, label %103

103:                                              ; preds = %99, %89, %79, %68, %58, %43, %28, %14
  %104 = phi i32 [ %71, %68 ], [ -74, %89 ], [ %97, %99 ], [ -74, %79 ], [ -74, %58 ], [ -74, %43 ], [ -74, %28 ], [ -74, %14 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_read_page_raw_notsupp(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %1, i32 noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %13, i32 noundef %15, i1 noundef zeroext false, i1 noundef zeroext false)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %9
  br label %19

19:                                               ; preds = %18, %11, %4
  %20 = phi i32 [ 0, %18 ], [ %7, %4 ], [ %16, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_monolithic_read_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %6
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8, %4
  %18 = phi i32 [ %11, %15 ], [ %11, %8 ], [ %6, %4 ]
  %19 = phi ptr [ %13, %15 ], [ %1, %8 ], [ %1, %4 ]
  %20 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %19, i32 noundef %18)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %19, i32 %27, i1 false)
  br label %28

28:                                               ; preds = %26, %22, %17
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_page_hwecc_oob_first(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne ptr %14, null
  %19 = or i1 %18, %17
  br i1 %19, label %20, label %110

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nand_controller, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nand_controller_ops, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %24, %20
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef %0, i32 noundef 80, i32 noundef 0, i32 noundef %3) #15
  br i1 %17, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef %0, ptr noundef %14, i32 noundef %16) #15
  br label %43

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef %40, ptr noundef %14, i32 noundef %16) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %110

43:                                               ; preds = %38, %35, %32
  %44 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %110

46:                                               ; preds = %43
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %12, ptr noundef %47, i32 noundef 0, i32 noundef %49) #15
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %110

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %54 = icmp eq i32 %10, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %59 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %60 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %61

61:                                               ; preds = %104, %55
  %62 = phi i32 [ 0, %55 ], [ %107, %104 ]
  %63 = phi i32 [ 0, %55 ], [ %105, %104 ]
  %64 = phi ptr [ %1, %55 ], [ %108, %104 ]
  %65 = phi i32 [ %10, %55 ], [ %106, %104 ]
  %66 = load ptr, ptr %53, align 4
  tail call void %66(ptr noundef %0, i32 noundef 0) #15
  %67 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %64, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %110

69:                                               ; preds = %61
  %70 = load ptr, ptr %56, align 4
  %71 = getelementptr i8, ptr %12, i32 %62
  %72 = tail call i32 %70(ptr noundef %0, ptr noundef %64, ptr noundef %71, ptr noundef null) #15
  %73 = icmp eq i32 %72, -74
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i32, ptr %57, align 8
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %58, align 4
  %80 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %64, i32 noundef %6, i32 noundef %79) #15
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %78
  %83 = sub i32 %79, %80
  %84 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %71, i32 noundef %8, i32 noundef %83) #15
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = icmp eq i32 %80, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 -1, i32 %6, i1 false) #15
  br label %89

89:                                               ; preds = %88, %86
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  tail call void @llvm.memset.p0.i32(ptr align 1 %71, i8 -1, i32 %8, i1 false) #15
  br label %92

92:                                               ; preds = %91, %89
  %93 = add nuw i32 %84, %80
  br label %94

94:                                               ; preds = %92, %69
  %95 = phi i32 [ %72, %69 ], [ %93, %92 ]
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94, %82, %78, %74
  %98 = load i32, ptr %60, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %60, align 4
  br label %104

100:                                              ; preds = %94
  %101 = load i32, ptr %59, align 4
  %102 = add i32 %101, %95
  store i32 %102, ptr %59, align 4
  %103 = tail call i32 @llvm.umax.i32(i32 %63, i32 %95)
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i32 [ %63, %97 ], [ %103, %100 ]
  %106 = add i32 %65, -1
  %107 = add i32 %62, %8
  %108 = getelementptr i8, ptr %64, i32 %6
  %109 = icmp eq i32 %106, 0
  br i1 %109, label %110, label %61

110:                                              ; preds = %104, %61, %52, %46, %43, %38, %4
  %111 = phi i32 [ %41, %38 ], [ %44, %43 ], [ %50, %46 ], [ -22, %4 ], [ 0, %52 ], [ %67, %61 ], [ %105, %104 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_read_oob_std(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne ptr %4, null
  %9 = or i1 %8, %7
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nand_controller, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nand_controller_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %24, ptr noundef %4, i32 noundef %6) #15
  br label %32

26:                                               ; preds = %18, %14, %10
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef %0, i32 noundef 80, i32 noundef 0, i32 noundef %1) #15
  br i1 %7, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 6
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef %0, ptr noundef %4, i32 noundef %6) #15
  br label %32

32:                                               ; preds = %29, %26, %22, %2
  %33 = phi i32 [ %25, %22 ], [ -22, %2 ], [ 0, %29 ], [ 0, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_write_oob_std(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef %6, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nand_write_page_raw_notsupp(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne ptr %1, null
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %84

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %8, -1
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %84, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nand_controller, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nand_controller_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %25, %21, %17
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef %0, i32 noundef 128, i32 noundef 0, i32 noundef %3) #15
  br i1 %10, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %8) #15
  br label %38

35:                                               ; preds = %25
  %36 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %1, i32 noundef %8, i1 noundef zeroext false) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %35, %32, %29
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %13, align 4
  %44 = icmp ne i32 %43, 0
  %45 = icmp ne ptr %42, null
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = load ptr, ptr %18, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.nand_controller, ptr %48, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nand_controller_ops, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %59 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %59, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  %60 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  store i32 %43, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %42, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  store i32 0, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %6, align 4
  %65 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %66, align 4
  %67 = load ptr, ptr %55, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %71 = load i32, ptr %70, align 8
  %72 = icmp ult i32 %64, %71
  br i1 %72, label %79, label %73, !prof !9

73:                                               ; preds = %69
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %77

74:                                               ; preds = %54, %50, %47
  %75 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %76 = load ptr, ptr %75, align 4
  tail call void %76(ptr noundef %0, ptr noundef nonnull %42, i32 noundef %43) #15
  br label %82

77:                                               ; preds = %73, %58
  %78 = phi i32 [ -524, %58 ], [ -22, %73 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %84

79:                                               ; preds = %69
  %80 = call i32 %67(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %74, %38
  %83 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %84

84:                                               ; preds = %82, %79, %77, %40, %35, %12, %4
  %85 = phi i32 [ %83, %82 ], [ %36, %35 ], [ %80, %79 ], [ %78, %77 ], [ -22, %4 ], [ -22, %12 ], [ -22, %40 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_monolithic_write_page_raw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %6
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %1, i32 %6, i1 false)
  br label %17

17:                                               ; preds = %15, %8, %4
  %18 = phi i32 [ %11, %15 ], [ %11, %8 ], [ %6, %4 ]
  %19 = phi ptr [ %13, %15 ], [ %1, %8 ], [ %1, %4 ]
  %20 = tail call i32 @nand_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef %19, i32 noundef %18)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_erase_nand(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  %10 = zext i32 %9 to i64
  %11 = shl nsw i64 -1, %10
  %12 = xor i64 %11, -1
  %13 = or i64 %7, %5
  %14 = and i64 %13, %12
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %174

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %18 = load i8, ptr %17, align 8
  %19 = zext i8 %18 to i32
  %20 = icmp eq i8 %18, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %23 = load ptr, ptr %22, align 4
  %24 = add i64 %7, %5
  br label %25

25:                                               ; preds = %36, %21
  %26 = phi i1 [ true, %21 ], [ %38, %36 ]
  %27 = phi i32 [ 0, %21 ], [ %37, %36 ]
  %28 = getelementptr %struct.nand_secure_region, ptr %23, i32 %27
  %29 = load i64, ptr %28, align 8
  %30 = icmp ugt i64 %24, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = getelementptr %struct.nand_secure_region, ptr %23, i32 %27, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, %29
  %35 = icmp ugt i64 %34, %5
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %25
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp ult i32 %37, %19
  %39 = icmp eq i32 %37, %19
  br i1 %39, label %40, label %25

40:                                               ; preds = %36, %31
  %41 = phi i1 [ %26, %31 ], [ %38, %36 ]
  br i1 %41, label %174, label %42

42:                                               ; preds = %40, %16
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %43) #15
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %43) #15
  br label %174

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %51 = load ptr, ptr %50, align 4
  tail call void @mutex_lock(ptr noundef %51) #15
  %52 = load i64, ptr %1, align 8
  %53 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = lshr i64 %52, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, ptr %8, align 8
  %61 = sub i32 %60, %54
  %62 = shl nuw i32 1, %61
  %63 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %64 = load i32, ptr %63, align 8
  %65 = icmp ult i32 %64, %59
  br i1 %65, label %66, label %67, !prof !8

66:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %73

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %59, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void %70(ptr noundef %0, i32 noundef %59) #15
  br label %73

73:                                               ; preds = %72, %67, %66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !10
  %74 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %86

79:                                               ; preds = %73
  %80 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %4) #15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %165

83:                                               ; preds = %79
  %84 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %85 = icmp slt i8 %84, 0
  br i1 %85, label %86, label %165

86:                                               ; preds = %83, %78
  %87 = load i64, ptr %6, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %165, label %89

89:                                               ; preds = %86
  %90 = zext i32 %54 to i64
  %91 = lshr i64 %52, %90
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  %95 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %96 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  br label %98

98:                                               ; preds = %164, %89
  %99 = phi i32 [ %92, %89 ], [ %123, %164 ]
  %100 = phi i64 [ %87, %89 ], [ %145, %164 ]
  %101 = phi i32 [ %59, %89 ], [ %152, %164 ]
  br label %102

102:                                              ; preds = %147, %98
  %103 = phi i32 [ %123, %147 ], [ %99, %98 ]
  %104 = phi i64 [ %145, %147 ], [ %100, %98 ]
  %105 = sext i32 %103 to i64
  %106 = load i32, ptr %53, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 %105, %107
  %109 = load ptr, ptr %93, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = call i32 @nand_isbad_bbt(ptr noundef %0, i64 noundef %108, i32 noundef %2) #15
  br label %115

113:                                              ; preds = %102
  %114 = call fastcc i32 @nand_isbad_bbm(ptr noundef %0, i64 noundef %108) #15
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nand_erase_nand, i32 noundef %103) #18
  br label %165

120:                                              ; preds = %115
  %121 = load i32, ptr %94, align 4
  %122 = icmp sle i32 %103, %121
  %123 = add i32 %103, %62
  %124 = icmp slt i32 %121, %123
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i32 -1, ptr %94, align 4
  br label %127

127:                                              ; preds = %126, %120
  %128 = load i32, ptr %95, align 8
  %129 = and i32 %128, %103
  %130 = load i32, ptr %8, align 8
  %131 = load i32, ptr %53, align 4
  %132 = sub i32 %130, %131
  %133 = lshr i32 %129, %132
  %134 = call i32 @nand_erase_op(ptr noundef %0, i32 noundef %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %127
  %137 = load i32, ptr %53, align 4
  %138 = zext i32 %137 to i64
  %139 = shl i64 %105, %138
  %140 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 2
  store i64 %139, ptr %140, align 8
  br label %165

141:                                              ; preds = %127
  %142 = load i32, ptr %8, align 8
  %143 = zext i32 %142 to i64
  %144 = shl nsw i64 -1, %143
  %145 = add i64 %144, %104
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr %95, align 8
  %149 = and i32 %148, %123
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %102

151:                                              ; preds = %147
  %152 = add i32 %101, 1
  %153 = load ptr, ptr %96, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %156, label %155

155:                                              ; preds = %151
  call void %153(ptr noundef %0, i32 noundef -1) #15
  br label %156

156:                                              ; preds = %155, %151
  store i32 -1, ptr %97, align 4
  %157 = load i32, ptr %63, align 8
  %158 = icmp ult i32 %157, %152
  br i1 %158, label %159, label %160, !prof !8

159:                                              ; preds = %156
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %164

160:                                              ; preds = %156
  store i32 %152, ptr %97, align 4
  %161 = load ptr, ptr %96, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void %161(ptr noundef %0, i32 noundef %152) #15
  br label %164

164:                                              ; preds = %163, %160, %159
  br label %98

165:                                              ; preds = %141, %136, %118, %86, %83, %82
  %166 = phi i32 [ -5, %118 ], [ %134, %136 ], [ -5, %83 ], [ -5, %82 ], [ 0, %86 ], [ 0, %141 ]
  %167 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  call void %168(ptr noundef %0, i32 noundef -1) #15
  br label %171

171:                                              ; preds = %170, %165
  %172 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %172, align 4
  %173 = load ptr, ptr %50, align 4
  call void @mutex_unlock(ptr noundef %173) #15
  call void @mutex_unlock(ptr noundef %43) #15
  br label %174

174:                                              ; preds = %171, %48, %40, %3
  %175 = phi i32 [ %166, %171 ], [ -22, %3 ], [ -5, %40 ], [ -16, %48 ]
  ret i32 %175
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sanitize_string(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = add i32 %1, -1
  %4 = getelementptr i8, ptr %0, i32 %3
  store i8 0, ptr %4, align 1
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %12, %2
  %7 = phi i32 [ %13, %12 ], [ 0, %2 ]
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp slt i8 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i8 63, ptr %8, align 1
  br label %12

12:                                               ; preds = %11, %6
  %13 = add nuw i32 %7, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %15, label %6

15:                                               ; preds = %12, %2
  %16 = tail call ptr @strim(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nand_decode_ext_id(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %3 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 3
  %7 = add nuw nsw i8 %6, 1
  %8 = zext i8 %7 to i32
  store i32 %8, ptr %2, align 4
  %9 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 3
  %13 = shl nuw nsw i32 1024, %12
  %14 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %13, ptr %15, align 4
  %16 = lshr i32 %11, 2
  %17 = and i32 %16, 1
  %18 = shl nuw nsw i32 8, %17
  %19 = lshr exact i32 %13, 9
  %20 = mul nuw nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %20, ptr %22, align 4
  %23 = lshr i32 %11, 4
  %24 = and i32 %23, 3
  %25 = shl nuw nsw i32 65536, %24
  %26 = add nuw nsw i32 %12, 10
  %27 = lshr i32 %25, %26
  %28 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %25, ptr %29, align 8
  %30 = and i32 %11, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 2
  store i32 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawnand_dt_parse_gpio_cs(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_count_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #15
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #15
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %28, label %11, !prof !8

11:                                               ; preds = %8
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %12, i32 noundef 3520) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %27, label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %27, label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %18, %17 ], [ 0, %15 ]
  %22 = tail call ptr @gpiod_get_index_optional(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef 7) #15
  %23 = getelementptr ptr, ptr %13, i32 %21
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i32
  br label %28

27:                                               ; preds = %17, %15
  store i32 %6, ptr %2, align 4
  store ptr %13, ptr %1, align 4
  br label %28

28:                                               ; preds = %27, %25, %11, %8, %3
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ], [ 0, %3 ], [ -12, %11 ], [ -12, %8 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawnand_sw_hamming_init(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  store i32 2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 3
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  store i32 %8, ptr %9, align 4
  %10 = tail call i32 @nand_ecc_sw_hamming_init_ctx(ptr noundef %0) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %19, i32 0, i32 4
  store i32 1, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %7, align 8
  %24 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %4, align 4
  %26 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  store i32 %30, ptr %31, align 4
  %32 = udiv i32 %27, %30
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %21, %1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_sw_hamming_init_ctx(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawnand_sw_hamming_calculate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = tail call i32 @nand_ecc_sw_hamming_calculate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_sw_hamming_calculate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rawnand_sw_hamming_correct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @nand_ecc_sw_hamming_correct(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_ecc_sw_hamming_correct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rawnand_sw_hamming_cleanup(ptr noundef %0) #4 {
  tail call void @nand_ecc_sw_hamming_cleanup_ctx(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_ecc_sw_hamming_cleanup_ctx(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @rawnand_sw_bch_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  store i32 2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  store i32 2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 3
  store i32 %8, ptr %9, align 4
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @rawnand_sw_bch_correct(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #8 {
  ret i32 -524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @rawnand_sw_bch_cleanup(ptr nocapture %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_ecc_choose_conf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %2
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5989, i32 noundef 9, ptr noundef null) #15
  br label %172

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %20, %12
  %22 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %18
  %26 = load ptr, ptr %1, align 4
  br label %27

27:                                               ; preds = %64, %25
  %28 = phi i32 [ 0, %25 ], [ %65, %64 ]
  %29 = getelementptr %struct.nand_ecc_step_info, ptr %26, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %12
  br i1 %31, label %32, label %64

32:                                               ; preds = %27
  %33 = getelementptr %struct.nand_ecc_step_info, ptr %26, i32 %28, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = getelementptr %struct.nand_ecc_step_info, ptr %26, i32 %28, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %42

39:                                               ; preds = %42
  %40 = add nuw nsw i32 %43, 1
  %41 = icmp eq i32 %40, %34
  br i1 %41, label %64, label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ 0, %36 ], [ %40, %39 ]
  %44 = getelementptr i32, ptr %38, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %16
  br i1 %46, label %47, label %39

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(i32 noundef %12, i32 noundef %16) #15
  %51 = icmp slt i32 %50, 0
  %52 = load i1, ptr @nand_check_ecc_caps.__already_done, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %47
  store i1 true, ptr @nand_check_ecc_caps.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5790, i32 noundef 9, ptr noundef null) #15
  br label %56

56:                                               ; preds = %55, %47
  br i1 %51, label %172, label %57

57:                                               ; preds = %56
  %58 = mul i32 %50, %21
  %59 = icmp sgt i32 %58, %2
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef %16) #18
  br label %172

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %50, ptr %63, align 4
  br label %172

64:                                               ; preds = %39, %32, %27
  %65 = add nuw nsw i32 %28, 1
  %66 = icmp eq i32 %65, %23
  br i1 %66, label %67, label %27

67:                                               ; preds = %64, %18
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %16) #18
  br label %172

69:                                               ; preds = %14, %10
  %70 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = tail call fastcc i32 @nand_maximize_ecc(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %172

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = icmp ne i32 %78, 0
  %82 = icmp ne i32 %80, 0
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %170

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = udiv i32 %86, %78
  %88 = mul i32 %87, %80
  %89 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %170

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 2
  br label %94

94:                                               ; preds = %157, %92
  %95 = phi i32 [ %90, %92 ], [ %158, %157 ]
  %96 = phi i32 [ 0, %92 ], [ %163, %157 ]
  %97 = phi i32 [ 2147483647, %92 ], [ %162, %157 ]
  %98 = phi i32 [ 0, %92 ], [ %161, %157 ]
  %99 = phi i32 [ 0, %92 ], [ %160, %157 ]
  %100 = phi i32 [ 0, %92 ], [ %159, %157 ]
  %101 = load ptr, ptr %1, align 4
  %102 = getelementptr %struct.nand_ecc_step_info, ptr %101, i32 %96
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr %struct.nand_ecc_step_info, ptr %101, i32 %96, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %94
  %108 = getelementptr %struct.nand_ecc_step_info, ptr %101, i32 %96, i32 1
  %109 = icmp slt i32 %103, %78
  br label %110

110:                                              ; preds = %147, %107
  %111 = phi i32 [ 0, %107 ], [ %152, %147 ]
  %112 = phi i32 [ %97, %107 ], [ %151, %147 ]
  %113 = phi i32 [ %98, %107 ], [ %150, %147 ]
  %114 = phi i32 [ %99, %107 ], [ %149, %147 ]
  %115 = phi i32 [ %100, %107 ], [ %148, %147 ]
  %116 = load ptr, ptr %108, align 4
  %117 = getelementptr i32, ptr %116, i32 %111
  %118 = load i32, ptr %117, align 4
  %119 = icmp slt i32 %118, %80
  %120 = select i1 %109, i1 %119, i1 false
  br i1 %120, label %147, label %121

121:                                              ; preds = %110
  %122 = load i32, ptr %85, align 4
  %123 = freeze i32 %122
  %124 = freeze i32 %103
  %125 = udiv i32 %123, %124
  %126 = mul i32 %125, %124
  %127 = sub i32 %123, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %121
  %130 = load ptr, ptr %93, align 4
  %131 = tail call i32 %130(i32 noundef %103, i32 noundef %118) #15
  %132 = icmp slt i32 %131, 0
  %133 = load i1, ptr @nand_match_ecc_req.__already_done, align 1
  %134 = xor i1 %133, true
  %135 = select i1 %132, i1 %134, i1 false
  br i1 %135, label %136, label %137, !prof !8

136:                                              ; preds = %129
  store i1 true, ptr @nand_match_ecc_req.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5864, i32 noundef 9, ptr noundef null) #15
  br label %137

137:                                              ; preds = %136, %129
  br i1 %132, label %147, label %138

138:                                              ; preds = %137
  %139 = mul i32 %131, %125
  %140 = icmp sle i32 %139, %2
  %141 = mul i32 %125, %118
  %142 = icmp sge i32 %141, %88
  %143 = select i1 %140, i1 %142, i1 false
  %144 = icmp slt i32 %139, %112
  %145 = select i1 %143, i1 %144, i1 false
  br i1 %145, label %146, label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %138, %137, %121, %110
  %148 = phi i32 [ %115, %121 ], [ %115, %137 ], [ %115, %138 ], [ %103, %146 ], [ %115, %110 ]
  %149 = phi i32 [ %114, %121 ], [ %114, %137 ], [ %114, %138 ], [ %118, %146 ], [ %114, %110 ]
  %150 = phi i32 [ %113, %121 ], [ %113, %137 ], [ %113, %138 ], [ %131, %146 ], [ %113, %110 ]
  %151 = phi i32 [ %112, %121 ], [ %112, %137 ], [ %112, %138 ], [ %139, %146 ], [ %112, %110 ]
  %152 = add nuw nsw i32 %111, 1
  %153 = load i32, ptr %104, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %110, label %155

155:                                              ; preds = %147
  %156 = load i32, ptr %89, align 4
  br label %157

157:                                              ; preds = %155, %94
  %158 = phi i32 [ %95, %94 ], [ %156, %155 ]
  %159 = phi i32 [ %100, %94 ], [ %148, %155 ]
  %160 = phi i32 [ %99, %94 ], [ %149, %155 ]
  %161 = phi i32 [ %98, %94 ], [ %150, %155 ]
  %162 = phi i32 [ %97, %94 ], [ %151, %155 ]
  %163 = add nuw nsw i32 %96, 1
  %164 = icmp slt i32 %163, %158
  br i1 %164, label %94, label %165

165:                                              ; preds = %157
  %166 = icmp eq i32 %162, 2147483647
  br i1 %166, label %170, label %167

167:                                              ; preds = %165
  store i32 %159, ptr %11, align 8
  %168 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %160, ptr %168, align 4
  %169 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %161, ptr %169, align 4
  br label %172

170:                                              ; preds = %165, %84, %76
  %171 = tail call fastcc i32 @nand_maximize_ecc(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %172

172:                                              ; preds = %170, %167, %74, %67, %62, %60, %56, %9
  %173 = phi i32 [ -22, %9 ], [ %75, %74 ], [ %171, %170 ], [ 0, %167 ], [ -28, %60 ], [ 0, %62 ], [ -524, %67 ], [ %50, %56 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_maximize_ecc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %91

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.nand_ecc_caps, ptr %1, i32 0, i32 2
  br label %11

11:                                               ; preds = %77, %7
  %12 = phi i32 [ %5, %7 ], [ %78, %77 ]
  %13 = phi i32 [ 0, %7 ], [ %83, %77 ]
  %14 = phi i32 [ 0, %7 ], [ %82, %77 ]
  %15 = phi i32 [ 0, %7 ], [ %81, %77 ]
  %16 = phi i32 [ 0, %7 ], [ %80, %77 ]
  %17 = phi i32 [ 0, %7 ], [ %79, %77 ]
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr %struct.nand_ecc_step_info, ptr %18, i32 %13
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %8, align 8
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i32 %20, %21
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %11
  %26 = getelementptr %struct.nand_ecc_step_info, ptr %18, i32 %13, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %25
  %30 = getelementptr %struct.nand_ecc_step_info, ptr %18, i32 %13, i32 1
  br label %31

31:                                               ; preds = %67, %29
  %32 = phi i32 [ 0, %29 ], [ %72, %67 ]
  %33 = phi i32 [ %14, %29 ], [ %71, %67 ]
  %34 = phi i32 [ %15, %29 ], [ %70, %67 ]
  %35 = phi i32 [ %16, %29 ], [ %69, %67 ]
  %36 = phi i32 [ %17, %29 ], [ %68, %67 ]
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr i32, ptr %37, i32 %32
  %39 = load i32, ptr %38, align 4
  %40 = load i32, ptr %9, align 4
  %41 = freeze i32 %40
  %42 = freeze i32 %20
  %43 = udiv i32 %41, %42
  %44 = mul i32 %43, %42
  %45 = sub i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %31
  %48 = load ptr, ptr %10, align 4
  %49 = tail call i32 %48(i32 noundef %20, i32 noundef %39) #15
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @nand_maximize_ecc.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !8

54:                                               ; preds = %47
  store i1 true, ptr @nand_maximize_ecc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5933, i32 noundef 9, ptr noundef null) #15
  br label %55

55:                                               ; preds = %54, %47
  %56 = mul i32 %49, %43
  %57 = icmp sgt i32 %56, %2
  %58 = select i1 %50, i1 true, i1 %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = mul i32 %43, %39
  %61 = icmp sgt i32 %60, %36
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = icmp eq i32 %60, %36
  %64 = icmp sgt i32 %20, %35
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %62, %55, %31
  %68 = phi i32 [ %36, %31 ], [ %36, %55 ], [ %60, %66 ], [ %36, %62 ]
  %69 = phi i32 [ %35, %31 ], [ %35, %55 ], [ %20, %66 ], [ %35, %62 ]
  %70 = phi i32 [ %34, %31 ], [ %34, %55 ], [ %39, %66 ], [ %34, %62 ]
  %71 = phi i32 [ %33, %31 ], [ %33, %55 ], [ %49, %66 ], [ %33, %62 ]
  %72 = add nuw nsw i32 %32, 1
  %73 = load i32, ptr %26, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %31, label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %4, align 4
  br label %77

77:                                               ; preds = %75, %25, %11
  %78 = phi i32 [ %12, %11 ], [ %12, %25 ], [ %76, %75 ]
  %79 = phi i32 [ %17, %11 ], [ %17, %25 ], [ %68, %75 ]
  %80 = phi i32 [ %16, %11 ], [ %16, %25 ], [ %69, %75 ]
  %81 = phi i32 [ %15, %11 ], [ %15, %25 ], [ %70, %75 ]
  %82 = phi i32 [ %14, %11 ], [ %14, %25 ], [ %71, %75 ]
  %83 = add nuw nsw i32 %13, 1
  %84 = icmp slt i32 %83, %78
  br i1 %84, label %11, label %85

85:                                               ; preds = %77
  %86 = icmp eq i32 %79, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %80, ptr %88, align 8
  %89 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %81, ptr %89, align 4
  %90 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 %82, ptr %90, align 4
  br label %91

91:                                               ; preds = %87, %85, %3
  %92 = phi i32 [ 0, %87 ], [ -524, %85 ], [ -524, %3 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nand_scan_with_ids(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #4 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %1192, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull @nand_scan_ident.__key) #15
  %14 = tail call ptr @nand_get_reset_interface_config() #15
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %128, label %19

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !10
  %20 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.16, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #15
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %32

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, 2
  store i32 %31, ptr %29, align 8
  br label %32

32:                                               ; preds = %28, %26, %25
  %33 = call ptr @of_find_property(ptr noundef nonnull %17, ptr noundef nonnull @.str.15, ptr noundef null) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 8
  %38 = or i32 %37, 4194304
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = call ptr @of_find_property(ptr noundef nonnull %17, ptr noundef nonnull @.str.17, ptr noundef null) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 131072
  store i32 %45, ptr %43, align 8
  br label %46

46:                                               ; preds = %42, %39
  call void @of_get_nand_ecc_user_config(ptr noundef %0) #15
  %47 = load ptr, ptr %16, align 8
  %48 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store ptr null, ptr %6, align 4, !annotation !10
  %52 = call i32 @of_property_read_string(ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull %6) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load ptr, ptr %6, align 4
  %56 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.18) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.19) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  %62 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.20) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %61
  %65 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.21) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.22) #15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = call i32 @strcasecmp(ptr noundef %55, ptr noundef nonnull @.str.23) #15
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, i32 4, i32 0
  br label %74

74:                                               ; preds = %70, %67, %64, %61, %58, %54, %51
  %75 = phi i32 [ 0, %51 ], [ 3, %64 ], [ 3, %67 ], [ 1, %54 ], [ 2, %61 ], [ 2, %58 ], [ %73, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  store i32 %75, ptr %48, align 4
  br label %76

76:                                               ; preds = %74, %46
  %77 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !10
  %81 = call i32 @of_property_read_string(ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull %5) #15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load ptr, ptr %5, align 4
  %85 = call i32 @strcasecmp(ptr noundef %84, ptr noundef nonnull @.str.19) #15
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = call i32 @strcasecmp(ptr noundef %84, ptr noundef nonnull @.str.20) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87, %80
  br label %91

91:                                               ; preds = %90, %87, %83
  %92 = phi i32 [ 0, %90 ], [ 1, %83 ], [ 2, %87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  store i32 %92, ptr %77, align 4
  br label %93

93:                                               ; preds = %91, %76
  %94 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4, !annotation !10
  %98 = call i32 @of_property_read_string(ptr noundef %47, ptr noundef nonnull @.str.24, ptr noundef nonnull %4) #15
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load ptr, ptr %4, align 4
  %102 = call i32 @strcasecmp(ptr noundef %101, ptr noundef nonnull @.str.22) #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100, %97
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ 0, %104 ], [ 2, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  store i32 %106, ptr %94, align 4
  br label %107

107:                                              ; preds = %105, %93
  %108 = phi i32 [ %95, %93 ], [ %106, %105 ]
  %109 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2
  store i32 3, ptr %109, align 4
  %110 = load i32, ptr %48, align 4
  %111 = icmp eq i32 %110, 0
  %112 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  br i1 %111, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, ptr %112, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %107
  %117 = phi i32 [ %110, %107 ], [ 3, %113 ]
  store i32 %117, ptr %112, align 8
  br label %118

118:                                              ; preds = %116, %113
  %119 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 1
  store i32 %108, ptr %119, align 4
  %120 = load i32, ptr %77, align 4
  %121 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %126, ptr %127, align 8
  br label %128

128:                                              ; preds = %118, %10
  %129 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %130 = load ptr, ptr %129, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %144, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load ptr, ptr %134, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi ptr [ %141, %140 ], [ %138, %136 ]
  store ptr %143, ptr %129, align 8
  br label %144

144:                                              ; preds = %142, %132, %128
  %145 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 16
  store ptr %149, ptr %145, align 4
  call void @__mutex_init(ptr noundef %149, ptr noundef nonnull @.str.25, ptr noundef nonnull @nand_controller_init.__key) #15
  br label %150

150:                                              ; preds = %148, %144
  call void @nand_legacy_set_defaults(ptr noundef %0) #15
  %151 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 25
  %152 = load i32, ptr %151, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 1, ptr %151, align 8
  br label %155

155:                                              ; preds = %154, %150
  %156 = call i32 @nand_legacy_check_hooks(ptr noundef %0) #15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %1192

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  store i32 %1, ptr %159, align 4
  %160 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1
  %161 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 6
  store i32 1, ptr %161, align 4
  %162 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  store i32 1, ptr %162, align 4
  %163 = call i32 @nand_reset(ptr noundef %0, i32 noundef 0) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %590

165:                                              ; preds = %158
  store i32 0, ptr %12, align 4
  %166 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %167 = load ptr, ptr %166, align 8
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void %167(ptr noundef %0, i32 noundef 0) #15
  br label %170

170:                                              ; preds = %169, %165
  %171 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %160, i32 noundef 2) #15
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %590

173:                                              ; preds = %170
  %174 = load i8, ptr %160, align 1
  %175 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 1
  %176 = load i8, ptr %175, align 1
  %177 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %160, i32 noundef 8) #15
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %590

179:                                              ; preds = %173
  %180 = load i8, ptr %160, align 1
  %181 = zext i8 %174 to i32
  %182 = icmp eq i8 %180, %174
  %183 = load i8, ptr %175, align 1
  %184 = zext i8 %176 to i32
  %185 = icmp eq i8 %183, %176
  %186 = select i1 %182, i1 %185, i1 false
  br i1 %186, label %191, label %187

187:                                              ; preds = %179
  %188 = zext i8 %180 to i32
  %189 = zext i8 %183 to i32
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %181, i32 noundef %184, i32 noundef %188, i32 noundef %189) #18
  br label %590

191:                                              ; preds = %179
  %192 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 7
  %193 = load i8, ptr %192, align 1
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %224, %222, %218, %214, %210, %206, %202, %191
  %196 = phi i32 [ 1, %224 ], [ 2, %222 ], [ 3, %218 ], [ 4, %214 ], [ 5, %210 ], [ 6, %206 ], [ 7, %202 ], [ 8, %191 ]
  %197 = icmp eq i8 %174, %176
  %198 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %199 = load i8, ptr %198, align 1
  %200 = icmp eq i8 %174, %199
  %201 = select i1 %197, i1 %200, i1 false
  br i1 %201, label %226, label %244

202:                                              ; preds = %191
  %203 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 6
  %204 = load i8, ptr %203, align 1
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %195

206:                                              ; preds = %202
  %207 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %208 = load i8, ptr %207, align 1
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %195

210:                                              ; preds = %206
  %211 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %212 = load i8, ptr %211, align 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %214, label %195

214:                                              ; preds = %210
  %215 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %216 = load i8, ptr %215, align 1
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %195

218:                                              ; preds = %214
  %219 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %220 = load i8, ptr %219, align 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %195

222:                                              ; preds = %218
  %223 = icmp eq i8 %176, 0
  br i1 %223, label %224, label %195

224:                                              ; preds = %222
  %225 = icmp eq i8 %174, 0
  br i1 %225, label %313, label %195

226:                                              ; preds = %195
  %227 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %228 = load i8, ptr %227, align 1
  %229 = icmp eq i8 %174, %228
  br i1 %229, label %230, label %255

230:                                              ; preds = %226
  %231 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %232 = load i8, ptr %231, align 1
  %233 = icmp eq i8 %174, %232
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %236 = load i8, ptr %235, align 1
  %237 = icmp eq i8 %174, %236
  br i1 %237, label %238, label %255

238:                                              ; preds = %234
  %239 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 6
  %240 = load i8, ptr %239, align 1
  %241 = icmp eq i8 %174, %240
  %242 = icmp eq i8 %174, %193
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %311, label %255

244:                                              ; preds = %195
  br i1 %200, label %255, label %263

245:                                              ; preds = %259
  %246 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %247 = load i8, ptr %246, align 1
  %248 = icmp eq i8 %176, %247
  br i1 %248, label %249, label %267

249:                                              ; preds = %245
  %250 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %251 = load i8, ptr %250, align 1
  %252 = icmp eq i8 %176, %251
  %253 = icmp eq i8 %176, %193
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %311, label %267

255:                                              ; preds = %244, %238, %234, %230, %226
  %256 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %174, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %255
  %260 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 6
  %261 = load i8, ptr %260, align 1
  %262 = icmp eq i8 %174, %261
  br i1 %262, label %245, label %263

263:                                              ; preds = %259, %255, %244
  %264 = phi i8 [ %174, %259 ], [ %174, %255 ], [ %199, %244 ]
  %265 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %266 = load i8, ptr %265, align 1
  br label %267

267:                                              ; preds = %263, %249, %245
  %268 = phi i8 [ %264, %263 ], [ %174, %249 ], [ %174, %245 ]
  %269 = phi i8 [ %266, %263 ], [ %176, %249 ], [ %247, %245 ]
  %270 = icmp eq i8 %174, %269
  %271 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 6
  %272 = load i8, ptr %271, align 1
  %273 = icmp eq i8 %174, %272
  %274 = select i1 %270, i1 %273, i1 false
  %275 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 4
  %276 = load i8, ptr %275, align 1
  br i1 %274, label %277, label %285

277:                                              ; preds = %267
  %278 = icmp eq i8 %176, %276
  %279 = icmp eq i8 %176, %193
  %280 = select i1 %278, i1 %279, i1 false
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %283 = load i8, ptr %282, align 1
  %284 = icmp eq i8 %268, %283
  br i1 %284, label %311, label %285

285:                                              ; preds = %281, %277, %267
  %286 = phi i8 [ %174, %277 ], [ %174, %281 ], [ %272, %267 ]
  %287 = phi i8 [ %276, %277 ], [ %176, %281 ], [ %276, %267 ]
  %288 = icmp eq i8 %174, %287
  %289 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 5
  %290 = load i8, ptr %289, align 1
  %291 = icmp eq i8 %176, %290
  %292 = select i1 %288, i1 %291, i1 false
  br i1 %292, label %293, label %297

293:                                              ; preds = %285
  %294 = icmp eq i8 %268, %286
  %295 = icmp eq i8 %269, %193
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %311, label %297

297:                                              ; preds = %293, %285
  %298 = phi i8 [ %176, %293 ], [ %290, %285 ]
  %299 = icmp eq i8 %174, %298
  %300 = icmp eq i8 %176, %286
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = icmp eq i8 %268, %193
  br i1 %303, label %311, label %304

304:                                              ; preds = %302, %297
  %305 = phi i8 [ %176, %302 ], [ %286, %297 ]
  %306 = icmp eq i8 %174, %305
  %307 = icmp eq i8 %176, %193
  %308 = select i1 %306, i1 %307, i1 false
  br i1 %308, label %311, label %309

309:                                              ; preds = %304
  %310 = icmp eq i8 %174, %193
  br i1 %310, label %311, label %313

311:                                              ; preds = %309, %304, %302, %293, %281, %249, %238
  %312 = phi i32 [ 3, %281 ], [ 5, %302 ], [ 7, %309 ], [ 2, %249 ], [ 4, %293 ], [ 1, %238 ], [ 6, %304 ]
  br label %313

313:                                              ; preds = %311, %309, %224
  %314 = phi i32 [ %312, %311 ], [ 0, %224 ], [ %196, %309 ]
  %315 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 1, i32 1
  store i32 %314, ptr %315, align 8
  %316 = call ptr @nand_get_manufacturer_desc(i8 noundef zeroext %174) #15
  %317 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3
  store ptr %316, ptr %317, align 8
  %318 = icmp eq ptr %2, null
  %319 = select i1 %318, ptr @nand_flash_ids, ptr %2
  %320 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %321 = load i32, ptr %320, align 8
  %322 = and i32 %321, 2
  %323 = and i32 %321, -3
  store i32 %323, ptr %320, align 8
  %324 = load ptr, ptr %319, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %407, label %326

326:                                              ; preds = %313
  %327 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %328 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %329 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %330 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %331 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  %332 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %333 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %334 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %335 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1
  %336 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %337 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %338 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 5
  %339 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  br label %340

340:                                              ; preds = %399, %326
  %341 = phi ptr [ %324, %326 ], [ %401, %399 ]
  %342 = phi ptr [ %319, %326 ], [ %400, %399 ]
  %343 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 6
  %344 = load i16, ptr %343, align 4
  %345 = icmp eq i16 %344, 0
  br i1 %345, label %395, label %346

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 1
  %348 = zext i16 %344 to i32
  %349 = call i32 @strncmp(ptr noundef %347, ptr noundef %160, i32 noundef %348) #15
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %399

351:                                              ; preds = %346
  %352 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 2
  %353 = load i32, ptr %352, align 4
  store i32 %353, ptr %327, align 4
  store i32 %353, ptr %328, align 4
  %354 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 4
  %355 = load i32, ptr %354, align 4
  %356 = load i32, ptr %352, align 4
  %357 = udiv i32 %355, %356
  store i32 %357, ptr %329, align 4
  %358 = load i32, ptr %354, align 4
  store i32 %358, ptr %330, align 8
  %359 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 7
  %360 = load i16, ptr %359, align 2
  %361 = zext i16 %360 to i32
  store i32 %361, ptr %331, align 4
  store i32 %361, ptr %332, align 4
  %362 = load i8, ptr %333, align 1
  %363 = lshr i8 %362, 2
  %364 = and i8 %363, 3
  %365 = add nuw nsw i8 %364, 1
  %366 = zext i8 %365 to i32
  store i32 %366, ptr %11, align 4
  %367 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 3
  %368 = load i32, ptr %367, align 4
  %369 = zext i32 %368 to i64
  %370 = shl nuw nsw i64 %369, 20
  %371 = mul i32 %357, %353
  %372 = icmp ult i32 %368, 4096
  br i1 %372, label %373, label %376, !prof !9

373:                                              ; preds = %351
  %374 = trunc i64 %370 to i32
  %375 = udiv i32 %374, %371
  br label %380

376:                                              ; preds = %351
  %377 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %371, i64 %370) #17, !srcloc !15
  %378 = extractvalue { i64, i64 } %377, 1
  %379 = trunc i64 %378 to i32
  br label %380

380:                                              ; preds = %376, %373
  %381 = phi i32 [ %375, %373 ], [ %379, %376 ]
  store i32 %381, ptr %334, align 4
  %382 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 5
  %383 = load i32, ptr %382, align 4
  %384 = load i32, ptr %320, align 8
  %385 = or i32 %384, %383
  store i32 %385, ptr %320, align 8
  %386 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 8
  %387 = load i16, ptr %386, align 4
  %388 = zext i16 %387 to i32
  %389 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 8, i32 1
  %390 = load i16, ptr %389, align 2
  %391 = zext i16 %390 to i32
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %335, i8 0, i32 12, i1 false) #15
  store i32 %388, ptr %336, align 4
  store i32 %391, ptr %337, align 4
  store i32 0, ptr %338, align 4
  %392 = load ptr, ptr %342, align 4
  %393 = call noalias ptr @kstrdup(ptr noundef %392, i32 noundef 3264) #15
  store ptr %393, ptr %339, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %399, label %472

395:                                              ; preds = %340
  %396 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 1, i32 0, i32 1
  %397 = load i8, ptr %396, align 1
  %398 = icmp eq i8 %176, %397
  br i1 %398, label %403, label %399

399:                                              ; preds = %395, %380, %346
  %400 = getelementptr %struct.nand_flash_dev, ptr %342, i32 1
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %407, label %340

403:                                              ; preds = %395
  %404 = getelementptr inbounds %struct.nand_flash_dev, ptr %342, i32 0, i32 2
  %405 = load i32, ptr %404, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %421

407:                                              ; preds = %403, %399, %313
  %408 = phi ptr [ %342, %403 ], [ %319, %313 ], [ %400, %399 ]
  %409 = call i32 @nand_onfi_detect(ptr noundef %0) #15
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %590, label %411

411:                                              ; preds = %407
  %412 = icmp eq i32 %409, 0
  br i1 %412, label %413, label %472

413:                                              ; preds = %411
  %414 = call i32 @nand_jedec_detect(ptr noundef %0) #15
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %590, label %416

416:                                              ; preds = %413
  %417 = icmp eq i32 %414, 0
  br i1 %417, label %418, label %472

418:                                              ; preds = %416
  %419 = load ptr, ptr %408, align 4
  %420 = icmp eq ptr %419, null
  br i1 %420, label %590, label %421

421:                                              ; preds = %418, %403
  %422 = phi ptr [ %408, %418 ], [ %342, %403 ]
  %423 = phi ptr [ %419, %418 ], [ %341, %403 ]
  %424 = call noalias ptr @kstrdup(ptr noundef nonnull %423, i32 noundef 3264) #15
  %425 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  store ptr %424, ptr %425, align 4
  %426 = icmp eq ptr %424, null
  br i1 %426, label %590, label %427

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.nand_flash_dev, ptr %422, i32 0, i32 2
  %429 = load i32, ptr %428, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %427
  call fastcc void @nand_manufacturer_detect(ptr noundef %0) #15
  %432 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %433 = load i32, ptr %432, align 4
  %434 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %435 = load i32, ptr %434, align 4
  br label %449

436:                                              ; preds = %427
  %437 = getelementptr inbounds %struct.nand_flash_dev, ptr %422, i32 0, i32 4
  %438 = load i32, ptr %437, align 4
  %439 = udiv i32 %438, %429
  %440 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %439, ptr %440, align 4
  %441 = load i32, ptr %437, align 4
  %442 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %441, ptr %442, align 8
  %443 = load i32, ptr %428, align 4
  %444 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %443, ptr %444, align 4
  %445 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %443, ptr %445, align 4
  %446 = lshr i32 %443, 5
  %447 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %446, ptr %447, align 4
  %448 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %446, ptr %448, align 4
  store i32 1, ptr %11, align 4
  br label %449

449:                                              ; preds = %436, %431
  %450 = phi i32 [ %439, %436 ], [ %435, %431 ]
  %451 = phi i32 [ %443, %436 ], [ %433, %431 ]
  %452 = getelementptr inbounds %struct.nand_flash_dev, ptr %422, i32 0, i32 5
  %453 = load i32, ptr %452, align 4
  %454 = load i32, ptr %320, align 8
  %455 = or i32 %454, %453
  store i32 %455, ptr %320, align 8
  %456 = getelementptr inbounds %struct.nand_flash_dev, ptr %422, i32 0, i32 3
  %457 = load i32, ptr %456, align 4
  %458 = zext i32 %457 to i64
  %459 = shl nuw nsw i64 %458, 20
  %460 = mul i32 %451, %450
  %461 = icmp ult i32 %457, 4096
  br i1 %461, label %462, label %465, !prof !9

462:                                              ; preds = %449
  %463 = trunc i64 %459 to i32
  %464 = udiv i32 %463, %460
  br label %469

465:                                              ; preds = %449
  %466 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %460, i64 %459) #17, !srcloc !15
  %467 = extractvalue { i64, i64 } %466, 1
  %468 = trunc i64 %467 to i32
  br label %469

469:                                              ; preds = %465, %462
  %470 = phi i32 [ %464, %462 ], [ %468, %465 ]
  %471 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  store i32 %470, ptr %471, align 4
  br label %472

472:                                              ; preds = %469, %416, %411, %380
  %473 = load ptr, ptr %129, align 8
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %477 = load ptr, ptr %476, align 4
  store ptr %477, ptr %129, align 8
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, ptr %320, align 8
  %480 = and i32 %479, 524288
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %486, label %482

482:                                              ; preds = %478
  %483 = icmp eq i32 %322, 0
  br i1 %483, label %485, label %484, !prof !9

484:                                              ; preds = %482
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5123, i32 noundef 9, ptr noundef null) #15
  br label %485

485:                                              ; preds = %484, %482
  call fastcc void @nand_set_defaults(ptr noundef %0) #15
  br label %508

486:                                              ; preds = %478
  %487 = and i32 %479, 2
  %488 = icmp eq i32 %322, %487
  br i1 %488, label %508, label %489

489:                                              ; preds = %486
  %490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %181, i32 noundef %184) #18
  %491 = icmp eq ptr %316, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %316, i32 0, i32 1
  %494 = load ptr, ptr %493, align 4
  br label %495

495:                                              ; preds = %492, %489
  %496 = phi ptr [ %494, %492 ], [ @.str.33, %489 ]
  %497 = load ptr, ptr %129, align 8
  %498 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %496, ptr noundef %497) #18
  %499 = icmp eq i32 %322, 0
  %500 = select i1 %499, i32 8, i32 16
  %501 = load i32, ptr %320, align 8
  %502 = and i32 %501, 2
  %503 = icmp eq i32 %502, 0
  %504 = select i1 %503, i32 8, i32 16
  %505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %500, i32 noundef %504) #18
  %506 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %507 = load ptr, ptr %506, align 4
  call void @kfree(ptr noundef %507) #15
  br label %590

508:                                              ; preds = %486, %485
  %509 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %510 = load i32, ptr %509, align 4
  %511 = icmp ugt i32 %510, 512
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %320, align 8
  %514 = and i32 %513, 2
  %515 = icmp eq i32 %514, 0
  %516 = select i1 %515, i32 5, i32 0
  br label %517

517:                                              ; preds = %512, %508
  %518 = phi i32 [ 0, %508 ], [ %516, %512 ]
  %519 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 11
  store i32 %518, ptr %519, align 4
  %520 = call i32 @llvm.cttz.i32(i32 %510, i1 true) #15, !range !11
  %521 = icmp eq i32 %510, 0
  %522 = select i1 %521, i32 -1, i32 %520
  %523 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  store i32 %522, ptr %523, align 4
  %524 = load i32, ptr %162, align 4
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %527 = load i32, ptr %526, align 8
  %528 = zext i32 %527 to i64
  %529 = mul nuw i64 %528, %525
  %530 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %531 = load i32, ptr %530, align 4
  %532 = zext i32 %531 to i64
  %533 = mul i64 %529, %532
  %534 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %535 = load i32, ptr %534, align 4
  %536 = zext i32 %535 to i64
  %537 = mul i64 %533, %536
  %538 = zext i32 %522 to i64
  %539 = lshr i64 %537, %538
  %540 = trunc i64 %539 to i32
  %541 = add i32 %540, -1
  %542 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  store i32 %541, ptr %542, align 8
  %543 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %544 = load i32, ptr %543, align 8
  %545 = call i32 @llvm.cttz.i32(i32 %544, i1 true) #15, !range !11
  %546 = icmp eq i32 %544, 0
  %547 = select i1 %546, i32 -1, i32 %545
  %548 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  store i32 %547, ptr %548, align 8
  %549 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 9
  store i32 %547, ptr %549, align 4
  %550 = and i64 %537, 4294967295
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %557, label %552

552:                                              ; preds = %517
  %553 = trunc i64 %537 to i32
  %554 = call i32 @llvm.cttz.i32(i32 %553, i1 true) #15, !range !11
  %555 = icmp eq i32 %553, 0
  %556 = select i1 %555, i32 -1, i32 %554
  br label %564

557:                                              ; preds = %517
  %558 = lshr i64 %537, 32
  %559 = trunc i64 %558 to i32
  %560 = call i32 @llvm.cttz.i32(i32 %559, i1 true) #15, !range !11
  %561 = icmp eq i32 %559, 0
  %562 = or i32 %560, 32
  %563 = select i1 %561, i32 31, i32 %562
  br label %564

564:                                              ; preds = %557, %552
  %565 = phi i32 [ %563, %557 ], [ %556, %552 ]
  %566 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  store i32 %565, ptr %566, align 4
  %567 = sub nsw i32 %565, %522
  %568 = icmp ugt i32 %567, 16
  br i1 %568, label %569, label %572

569:                                              ; preds = %564
  %570 = load i32, ptr %320, align 8
  %571 = or i32 %570, 16384
  store i32 %571, ptr %320, align 8
  br label %572

572:                                              ; preds = %569, %564
  %573 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 12
  store i32 8, ptr %573, align 8
  call void @nand_legacy_adjust_cmdfunc(ptr noundef %0) #15
  %574 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %181, i32 noundef %184) #18
  %575 = icmp eq ptr %316, null
  br i1 %575, label %579, label %576

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %316, i32 0, i32 1
  %578 = load ptr, ptr %577, align 4
  br label %579

579:                                              ; preds = %576, %572
  %580 = phi ptr [ %578, %576 ], [ @.str.33, %572 ]
  %581 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %582 = load ptr, ptr %581, align 4
  %583 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %580, ptr noundef %582) #18
  %584 = lshr i64 %537, 20
  %585 = trunc i64 %584 to i32
  %586 = load i32, ptr %11, align 8
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %604, !prof !8

588:                                              ; preds = %579
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.35) #15
  %589 = load i32, ptr %11, align 8
  br label %604

590:                                              ; preds = %495, %421, %418, %413, %407, %187, %173, %170, %158
  %591 = phi i32 [ -12, %421 ], [ -19, %418 ], [ %414, %413 ], [ %409, %407 ], [ %177, %173 ], [ %171, %170 ], [ %163, %158 ], [ -22, %495 ], [ -19, %187 ]
  %592 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %593 = load i32, ptr %592, align 8
  %594 = and i32 %593, 262144
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %596, label %598

596:                                              ; preds = %590
  %597 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #18
  br label %598

598:                                              ; preds = %596, %590
  %599 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %600 = load ptr, ptr %599, align 8
  %601 = icmp eq ptr %600, null
  br i1 %601, label %603, label %602

602:                                              ; preds = %598
  call void %600(ptr noundef %0, i32 noundef -1) #15
  br label %603

603:                                              ; preds = %602, %598
  store i32 -1, ptr %12, align 4
  br label %1192

604:                                              ; preds = %588, %579
  %605 = phi i32 [ %589, %588 ], [ %586, %579 ]
  %606 = icmp eq i32 %605, 1
  %607 = select i1 %606, ptr @.str.31, ptr @.str.32
  %608 = load i32, ptr %543, align 8
  %609 = lshr i32 %608, 10
  %610 = load i32, ptr %509, align 4
  %611 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %612 = load i32, ptr %611, align 4
  %613 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %585, ptr noundef nonnull %607, i32 noundef %609, i32 noundef %610, i32 noundef %612) #18
  %614 = load i8, ptr %160, align 8
  %615 = load i8, ptr %175, align 1
  %616 = load ptr, ptr %166, align 8
  %617 = icmp eq ptr %616, null
  br i1 %617, label %619, label %618

618:                                              ; preds = %604
  call void %616(ptr noundef %0, i32 noundef -1) #15
  br label %619

619:                                              ; preds = %618, %604
  store i32 -1, ptr %12, align 4
  %620 = icmp ugt i32 %1, 1
  br i1 %620, label %621, label %660

621:                                              ; preds = %619
  %622 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  br label %623

623:                                              ; preds = %652, %621
  %624 = phi i32 [ 1, %621 ], [ %653, %652 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2, !annotation !10
  %625 = call i32 @nand_reset(ptr noundef %0, i32 noundef %624) #15
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %651

627:                                              ; preds = %623
  %628 = load i32, ptr %159, align 8
  %629 = icmp ult i32 %628, %624
  br i1 %629, label %630, label %631, !prof !8

630:                                              ; preds = %627
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %635

631:                                              ; preds = %627
  store i32 %624, ptr %12, align 4
  %632 = load ptr, ptr %166, align 8
  %633 = icmp eq ptr %632, null
  br i1 %633, label %635, label %634

634:                                              ; preds = %631
  call void %632(ptr noundef %0, i32 noundef %624) #15
  br label %635

635:                                              ; preds = %634, %631, %630
  %636 = call i32 @nand_readid_op(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %8, i32 noundef 2) #15
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %651

638:                                              ; preds = %635
  %639 = load i8, ptr %8, align 2
  %640 = icmp eq i8 %614, %639
  %641 = load i8, ptr %622, align 1
  %642 = icmp eq i8 %615, %641
  %643 = select i1 %640, i1 %642, i1 false
  %644 = load ptr, ptr %166, align 8
  %645 = icmp eq ptr %644, null
  br i1 %643, label %649, label %646

646:                                              ; preds = %638
  br i1 %645, label %648, label %647

647:                                              ; preds = %646
  call void %644(ptr noundef %0, i32 noundef -1) #15
  br label %648

648:                                              ; preds = %647, %646
  store i32 -1, ptr %12, align 4
  br label %651

649:                                              ; preds = %638
  br i1 %645, label %652, label %650

650:                                              ; preds = %649
  call void %644(ptr noundef %0, i32 noundef -1) #15
  br label %652

651:                                              ; preds = %648, %635, %623
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  br label %655

652:                                              ; preds = %650, %649
  store i32 -1, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  %653 = add nuw i32 %624, 1
  %654 = icmp eq i32 %653, %1
  br i1 %654, label %655, label %623

655:                                              ; preds = %652, %651
  %656 = phi i32 [ %624, %651 ], [ %1, %652 ]
  %657 = icmp ugt i32 %656, 1
  br i1 %657, label %658, label %660

658:                                              ; preds = %655
  %659 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %656) #18
  br label %660

660:                                              ; preds = %658, %655, %619
  %661 = phi i32 [ %656, %658 ], [ %656, %655 ], [ 1, %619 ]
  store i32 %661, ptr %159, align 4
  %662 = zext i32 %661 to i64
  %663 = load i32, ptr %162, align 4
  %664 = zext i32 %663 to i64
  %665 = load i32, ptr %526, align 8
  %666 = zext i32 %665 to i64
  %667 = load i32, ptr %530, align 4
  %668 = zext i32 %667 to i64
  %669 = load i32, ptr %534, align 4
  %670 = zext i32 %669 to i64
  %671 = mul nuw i64 %664, %662
  %672 = mul i64 %671, %666
  %673 = mul i64 %672, %668
  %674 = mul i64 %673, %670
  %675 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  store i64 %674, ptr %675, align 8
  %676 = load ptr, ptr %145, align 4
  %677 = getelementptr inbounds %struct.nand_controller, ptr %676, i32 0, i32 1
  %678 = load ptr, ptr %677, align 4
  %679 = icmp eq ptr %678, null
  br i1 %679, label %686, label %680

680:                                              ; preds = %660
  %681 = load ptr, ptr %678, align 4
  %682 = icmp eq ptr %681, null
  br i1 %682, label %686, label %683

683:                                              ; preds = %680
  %684 = call i32 %681(ptr noundef %0) #15
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %1187

686:                                              ; preds = %683, %680, %660
  %687 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %688 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %689 = load i32, ptr %688, align 8
  %690 = and i32 %689, 655360
  %691 = icmp eq i32 %690, 524288
  br i1 %691, label %692, label %693, !prof !8

692:                                              ; preds = %686
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6065, i32 noundef 9, ptr noundef null) #15
  br label %1176

693:                                              ; preds = %686
  %694 = load i32, ptr %611, align 4
  %695 = load i32, ptr %509, align 4
  %696 = add i32 %694, %695
  %697 = call noalias align 64 ptr @__kmalloc(i32 noundef %696, i32 noundef 3264) #16
  %698 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  store ptr %697, ptr %698, align 8
  %699 = icmp eq ptr %697, null
  br i1 %699, label %1176, label %700

700:                                              ; preds = %693
  store i32 0, ptr %12, align 4
  %701 = load ptr, ptr %166, align 8
  %702 = icmp eq ptr %701, null
  br i1 %702, label %704, label %703

703:                                              ; preds = %700
  call void %701(ptr noundef %0, i32 noundef 0) #15
  br label %704

704:                                              ; preds = %703, %700
  %705 = load ptr, ptr %317, align 8
  %706 = icmp eq ptr %705, null
  br i1 %706, label %717, label %707

707:                                              ; preds = %704
  %708 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %705, i32 0, i32 2
  %709 = load ptr, ptr %708, align 4
  %710 = icmp eq ptr %709, null
  br i1 %710, label %717, label %711

711:                                              ; preds = %707
  %712 = getelementptr inbounds %struct.nand_manufacturer_ops, ptr %709, i32 0, i32 1
  %713 = load ptr, ptr %712, align 4
  %714 = icmp eq ptr %713, null
  br i1 %714, label %717, label %715

715:                                              ; preds = %711
  %716 = call i32 %713(ptr noundef %0) #15
  br label %717

717:                                              ; preds = %715, %711, %707, %704
  %718 = phi i32 [ %716, %715 ], [ 0, %711 ], [ 0, %707 ], [ 0, %704 ]
  %719 = load ptr, ptr %166, align 8
  %720 = icmp eq ptr %719, null
  br i1 %720, label %722, label %721

721:                                              ; preds = %717
  call void %719(ptr noundef %0, i32 noundef -1) #15
  br label %722

722:                                              ; preds = %721, %717
  store i32 -1, ptr %12, align 4
  %723 = icmp eq i32 %718, 0
  br i1 %723, label %724, label %1169

724:                                              ; preds = %722
  %725 = load ptr, ptr %698, align 8
  %726 = load i32, ptr %509, align 4
  %727 = getelementptr i8, ptr %725, i32 %726
  %728 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  store ptr %727, ptr %728, align 4
  %729 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 15
  %730 = load ptr, ptr %729, align 8
  %731 = icmp eq ptr %730, null
  br i1 %731, label %732, label %753

732:                                              ; preds = %724
  %733 = load i32, ptr %687, align 4
  %734 = icmp eq i32 %733, 2
  br i1 %734, label %735, label %740

735:                                              ; preds = %732
  %736 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %737 = load i32, ptr %736, align 4
  %738 = add i32 %737, -1
  %739 = icmp ult i32 %738, 2
  br i1 %739, label %753, label %740

740:                                              ; preds = %735, %732
  %741 = load i32, ptr %611, align 4
  switch i32 %741, label %746 [
    i32 8, label %742
    i32 16, label %742
    i32 64, label %744
    i32 128, label %744
  ]

742:                                              ; preds = %740, %740
  %743 = call ptr @nand_get_small_page_ooblayout() #15
  br label %751

744:                                              ; preds = %740, %740
  %745 = call ptr @nand_get_large_page_hamming_ooblayout() #15
  br label %751

746:                                              ; preds = %740
  %747 = icmp eq i32 %733, 1
  br i1 %747, label %748, label %750

748:                                              ; preds = %746
  %749 = call ptr @nand_get_large_page_ooblayout() #15
  br label %751

750:                                              ; preds = %746
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6121, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %741) #15
  br label %1156

751:                                              ; preds = %748, %744, %742
  %752 = phi ptr [ %743, %742 ], [ %745, %744 ], [ %749, %748 ]
  store ptr %752, ptr %729, align 8
  br label %753

753:                                              ; preds = %751, %735, %724
  %754 = load i32, ptr %687, align 4
  switch i32 %754, label %966 [
    i32 3, label %755
    i32 2, label %876
    i32 4, label %935
    i32 1, label %954
  ]

755:                                              ; preds = %753
  %756 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 1
  %757 = load i32, ptr %756, align 4
  switch i32 %757, label %861 [
    i32 0, label %758
    i32 1, label %758
    i32 2, label %806
  ]

758:                                              ; preds = %755, %755
  %759 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %760 = load ptr, ptr %759, align 4
  %761 = icmp eq ptr %760, null
  br i1 %761, label %762, label %763

762:                                              ; preds = %758
  store ptr @nand_read_page_hwecc, ptr %759, align 4
  br label %763

763:                                              ; preds = %762, %758
  %764 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %765 = load ptr, ptr %764, align 4
  %766 = icmp eq ptr %765, null
  br i1 %766, label %767, label %768

767:                                              ; preds = %763
  store ptr @nand_write_page_hwecc, ptr %764, align 4
  br label %768

768:                                              ; preds = %767, %763
  %769 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %770 = load ptr, ptr %769, align 4
  %771 = icmp eq ptr %770, null
  br i1 %771, label %772, label %773

772:                                              ; preds = %768
  store ptr @nand_read_page_raw, ptr %769, align 4
  br label %773

773:                                              ; preds = %772, %768
  %774 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %775 = load ptr, ptr %774, align 4
  %776 = icmp eq ptr %775, null
  br i1 %776, label %777, label %778

777:                                              ; preds = %773
  store ptr @nand_write_page_raw, ptr %774, align 4
  br label %778

778:                                              ; preds = %777, %773
  %779 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %780 = load ptr, ptr %779, align 4
  %781 = icmp eq ptr %780, null
  br i1 %781, label %782, label %783

782:                                              ; preds = %778
  store ptr @nand_read_oob_std, ptr %779, align 4
  br label %783

783:                                              ; preds = %782, %778
  %784 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  %785 = load ptr, ptr %784, align 4
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %788

787:                                              ; preds = %783
  store ptr @nand_write_oob_std, ptr %784, align 4
  br label %788

788:                                              ; preds = %787, %783
  %789 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 19
  %790 = load ptr, ptr %789, align 4
  %791 = icmp eq ptr %790, null
  br i1 %791, label %792, label %793

792:                                              ; preds = %788
  store ptr @nand_read_subpage, ptr %789, align 4
  br label %793

793:                                              ; preds = %792, %788
  %794 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 20
  %795 = load ptr, ptr %794, align 4
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %806

797:                                              ; preds = %793
  %798 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %799 = load ptr, ptr %798, align 4
  %800 = icmp eq ptr %799, null
  br i1 %800, label %806, label %801

801:                                              ; preds = %797
  %802 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %803 = load ptr, ptr %802, align 4
  %804 = icmp eq ptr %803, null
  br i1 %804, label %806, label %805

805:                                              ; preds = %801
  store ptr @nand_write_subpage_hwecc, ptr %794, align 4
  br label %806

806:                                              ; preds = %805, %801, %797, %793, %755
  %807 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %808 = load ptr, ptr %807, align 4
  %809 = icmp eq ptr %808, null
  br i1 %809, label %818, label %810

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %812 = load ptr, ptr %811, align 4
  %813 = icmp eq ptr %812, null
  br i1 %813, label %818, label %814

814:                                              ; preds = %810
  %815 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %816 = load ptr, ptr %815, align 4
  %817 = icmp eq ptr %816, null
  br i1 %817, label %818, label %831

818:                                              ; preds = %814, %810, %806
  %819 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %820 = load ptr, ptr %819, align 4
  %821 = icmp eq ptr %820, null
  %822 = icmp eq ptr %820, @nand_read_page_hwecc
  %823 = or i1 %821, %822
  br i1 %823, label %830, label %824

824:                                              ; preds = %818
  %825 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %826 = load ptr, ptr %825, align 4
  %827 = icmp eq ptr %826, null
  %828 = icmp eq ptr %826, @nand_write_page_hwecc
  %829 = or i1 %827, %828
  br i1 %829, label %830, label %836

830:                                              ; preds = %824, %818
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5653, i32 noundef 9, ptr noundef nonnull @.str.45) #15
  br label %1156

831:                                              ; preds = %814
  %832 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %833 = load ptr, ptr %832, align 4
  %834 = icmp eq ptr %833, null
  br i1 %834, label %835, label %836

835:                                              ; preds = %831
  store ptr @nand_read_page_syndrome, ptr %832, align 4
  br label %836

836:                                              ; preds = %835, %831, %824
  %837 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %838 = load ptr, ptr %837, align 4
  %839 = icmp eq ptr %838, null
  br i1 %839, label %840, label %841

840:                                              ; preds = %836
  store ptr @nand_write_page_syndrome, ptr %837, align 4
  br label %841

841:                                              ; preds = %840, %836
  %842 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %843 = load ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %845, label %846

845:                                              ; preds = %841
  store ptr @nand_read_page_raw_syndrome, ptr %842, align 4
  br label %846

846:                                              ; preds = %845, %841
  %847 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %848 = load ptr, ptr %847, align 4
  %849 = icmp eq ptr %848, null
  br i1 %849, label %850, label %851

850:                                              ; preds = %846
  store ptr @nand_write_page_raw_syndrome, ptr %847, align 4
  br label %851

851:                                              ; preds = %850, %846
  %852 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %853 = load ptr, ptr %852, align 4
  %854 = icmp eq ptr %853, null
  br i1 %854, label %855, label %856

855:                                              ; preds = %851
  store ptr @nand_read_oob_syndrome, ptr %852, align 4
  br label %856

856:                                              ; preds = %855, %851
  %857 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  %858 = load ptr, ptr %857, align 4
  %859 = icmp eq ptr %858, null
  br i1 %859, label %860, label %863

860:                                              ; preds = %856
  store ptr @nand_write_oob_syndrome, ptr %857, align 4
  br label %863

861:                                              ; preds = %755
  %862 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %757) #18
  br label %1156

863:                                              ; preds = %860, %856
  %864 = load i32, ptr %509, align 4
  %865 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %866 = load i32, ptr %865, align 4
  %867 = icmp ult i32 %864, %866
  br i1 %867, label %873, label %868

868:                                              ; preds = %863
  %869 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %870 = load i32, ptr %869, align 4
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %967

872:                                              ; preds = %868
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6140, i32 noundef 9, ptr noundef nonnull @.str.37) #15
  br label %1156

873:                                              ; preds = %863
  %874 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %866, i32 noundef %864) #18
  store i32 2, ptr %687, align 4
  %875 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  store i32 1, ptr %875, align 4
  br label %879

876:                                              ; preds = %753
  %877 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %878 = load i32, ptr %877, align 4
  switch i32 %878, label %922 [
    i32 1, label %879
    i32 2, label %921
  ]

879:                                              ; preds = %876, %873
  %880 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  store ptr @rawnand_sw_hamming_calculate, ptr %880, align 4
  %881 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  store ptr @rawnand_sw_hamming_correct, ptr %881, align 4
  %882 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @nand_read_page_swecc, ptr %882, align 4
  %883 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 19
  store ptr @nand_read_subpage, ptr %883, align 4
  %884 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @nand_write_page_swecc, ptr %884, align 4
  %885 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %886 = load ptr, ptr %885, align 4
  %887 = icmp eq ptr %886, null
  br i1 %887, label %888, label %889

888:                                              ; preds = %879
  store ptr @nand_read_page_raw, ptr %885, align 4
  br label %889

889:                                              ; preds = %888, %879
  %890 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %891 = load ptr, ptr %890, align 4
  %892 = icmp eq ptr %891, null
  br i1 %892, label %893, label %894

893:                                              ; preds = %889
  store ptr @nand_write_page_raw, ptr %890, align 4
  br label %894

894:                                              ; preds = %893, %889
  %895 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  store ptr @nand_read_oob_std, ptr %895, align 4
  %896 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  store ptr @nand_write_oob_std, ptr %896, align 4
  %897 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %898 = load i32, ptr %897, align 4
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %901

900:                                              ; preds = %894
  store i32 256, ptr %897, align 4
  br label %901

901:                                              ; preds = %900, %894
  %902 = phi i32 [ 256, %900 ], [ %898, %894 ]
  %903 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 3, ptr %903, align 4
  %904 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 1, ptr %904, align 4
  %905 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2
  store i32 2, ptr %905, align 4
  %906 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 2
  store i32 1, ptr %906, align 4
  %907 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 3
  store i32 1, ptr %907, align 4
  %908 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 2, i32 4
  store i32 %902, ptr %908, align 4
  %909 = call i32 @nand_ecc_sw_hamming_init_ctx(ptr noundef %0) #15
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %920

911:                                              ; preds = %901
  %912 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %913 = load i32, ptr %912, align 8
  %914 = and i32 %913, 4
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %923, label %916

916:                                              ; preds = %911
  %917 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 3
  %918 = load ptr, ptr %917, align 4
  %919 = getelementptr inbounds %struct.nand_ecc_sw_hamming_conf, ptr %918, i32 0, i32 4
  store i32 1, ptr %919, align 4
  br label %923

920:                                              ; preds = %901
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5713, i32 noundef 9, ptr noundef nonnull @.str.47) #15
  br label %1156

921:                                              ; preds = %876
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5720, i32 noundef 9, ptr noundef nonnull @.str.48) #15
  br label %1156

922:                                              ; preds = %876
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5752, i32 noundef 9, ptr noundef nonnull @.str.49) #15
  br label %1156

923:                                              ; preds = %916, %911
  %924 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 4
  %925 = load i32, ptr %924, align 4
  store i32 %925, ptr %897, align 8
  %926 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 0, i32 3
  %927 = load i32, ptr %926, align 4
  store i32 %927, ptr %904, align 4
  %928 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  %929 = load i32, ptr %928, align 4
  %930 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  store i32 %929, ptr %930, align 8
  %931 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 1
  %932 = load i32, ptr %931, align 4
  %933 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  store i32 %932, ptr %933, align 4
  %934 = udiv i32 %929, %932
  store i32 %934, ptr %903, align 4
  br label %967

935:                                              ; preds = %753
  %936 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %937 = load ptr, ptr %936, align 4
  %938 = icmp eq ptr %937, null
  br i1 %938, label %943, label %939

939:                                              ; preds = %935
  %940 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %941 = load ptr, ptr %940, align 4
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %944

943:                                              ; preds = %939, %935
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6160, i32 noundef 9, ptr noundef nonnull @.str.39) #15
  br label %1156

944:                                              ; preds = %939
  %945 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %946 = load ptr, ptr %945, align 4
  %947 = icmp eq ptr %946, null
  br i1 %947, label %948, label %949

948:                                              ; preds = %944
  store ptr @nand_read_oob_std, ptr %945, align 4
  br label %949

949:                                              ; preds = %948, %944
  %950 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  %951 = load ptr, ptr %950, align 4
  %952 = icmp eq ptr %951, null
  br i1 %952, label %953, label %967

953:                                              ; preds = %949
  store ptr @nand_write_oob_std, ptr %950, align 4
  br label %967

954:                                              ; preds = %753
  %955 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #18
  %956 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  store ptr @nand_read_page_raw, ptr %956, align 4
  %957 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  store ptr @nand_write_page_raw, ptr %957, align 4
  %958 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  store ptr @nand_read_oob_std, ptr %958, align 4
  %959 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  store ptr @nand_read_page_raw, ptr %959, align 4
  %960 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  store ptr @nand_write_page_raw, ptr %960, align 4
  %961 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  store ptr @nand_write_oob_std, ptr %961, align 4
  %962 = load i32, ptr %509, align 4
  %963 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  store i32 %962, ptr %963, align 4
  %964 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  store i32 0, ptr %964, align 4
  %965 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  store i32 0, ptr %965, align 4
  br label %967

966:                                              ; preds = %753
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6184, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef %754) #15
  br label %1156

967:                                              ; preds = %954, %953, %949, %923, %868
  %968 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %969 = load ptr, ptr %968, align 4
  %970 = icmp eq ptr %969, null
  br i1 %970, label %971, label %975

971:                                              ; preds = %967
  %972 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %973 = load ptr, ptr %972, align 4
  %974 = icmp eq ptr %973, null
  br i1 %974, label %986, label %975

975:                                              ; preds = %971, %967
  %976 = load i32, ptr %611, align 4
  %977 = call noalias align 64 ptr @__kmalloc(i32 noundef %976, i32 noundef 3264) #16
  %978 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  store ptr %977, ptr %978, align 4
  %979 = load i32, ptr %611, align 4
  %980 = call noalias align 64 ptr @__kmalloc(i32 noundef %979, i32 noundef 3264) #16
  %981 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  store ptr %980, ptr %981, align 4
  %982 = load ptr, ptr %978, align 4
  %983 = icmp eq ptr %982, null
  %984 = icmp eq ptr %980, null
  %985 = select i1 %983, i1 true, i1 %984
  br i1 %985, label %1156, label %986

986:                                              ; preds = %975, %971
  %987 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 23
  %988 = load ptr, ptr %987, align 4
  %989 = icmp eq ptr %988, null
  br i1 %989, label %990, label %993

990:                                              ; preds = %986
  %991 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %992 = load ptr, ptr %991, align 4
  store ptr %992, ptr %987, align 4
  br label %993

993:                                              ; preds = %990, %986
  %994 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 22
  %995 = load ptr, ptr %994, align 4
  %996 = icmp eq ptr %995, null
  br i1 %996, label %997, label %1000

997:                                              ; preds = %993
  %998 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  %999 = load ptr, ptr %998, align 4
  store ptr %999, ptr %994, align 4
  br label %1000

1000:                                             ; preds = %997, %993
  %1001 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %1002 = load i32, ptr %1001, align 4
  %1003 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 18
  store i32 %1002, ptr %1003, align 4
  %1004 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %1005 = load i32, ptr %1004, align 4
  %1006 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 17
  store i32 %1005, ptr %1006, align 8
  %1007 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %1008 = load i32, ptr %1007, align 4
  %1009 = icmp eq i32 %1008, 0
  %1010 = load i32, ptr %509, align 4
  br i1 %1009, label %1011, label %1013

1011:                                             ; preds = %1000
  %1012 = udiv i32 %1010, %1005
  store i32 %1012, ptr %1007, align 4
  br label %1013

1013:                                             ; preds = %1011, %1000
  %1014 = phi i32 [ %1012, %1011 ], [ %1008, %1000 ]
  %1015 = mul i32 %1014, %1005
  %1016 = icmp eq i32 %1015, %1010
  br i1 %1016, label %1018, label %1017

1017:                                             ; preds = %1013
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6215, i32 noundef 9, ptr noundef nonnull @.str.42) #15
  br label %1156

1018:                                             ; preds = %1013
  %1019 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %1020 = load i32, ptr %1019, align 4
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1022, label %1027

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %1024 = load i32, ptr %1023, align 4
  %1025 = mul i32 %1024, %1014
  store i32 %1025, ptr %1019, align 4
  %1026 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 3, i32 2
  store i32 %1025, ptr %1026, align 4
  br label %1027

1027:                                             ; preds = %1022, %1018
  %1028 = phi i32 [ %1025, %1022 ], [ %1020, %1018 ]
  %1029 = load i32, ptr %611, align 4
  %1030 = icmp ugt i32 %1028, %1029
  br i1 %1030, label %1031, label %1032

1031:                                             ; preds = %1027
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6226, i32 noundef 9, ptr noundef nonnull @.str.43) #15
  br label %1156

1032:                                             ; preds = %1027
  %1033 = call i32 @mtd_ooblayout_count_freebytes(ptr noundef %0) #15
  %1034 = call i32 @llvm.smax.i32(i32 %1033, i32 0) #15
  %1035 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  store i32 %1034, ptr %1035, align 8
  %1036 = call zeroext i1 @nand_ecc_is_strong_enough(ptr noundef %0) #15
  br i1 %1036, label %1046, label %1037

1037:                                             ; preds = %1032
  %1038 = load ptr, ptr %129, align 8
  %1039 = load i32, ptr %1001, align 4
  %1040 = load i32, ptr %1004, align 8
  %1041 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 3
  %1042 = load i32, ptr %1041, align 4
  %1043 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 2, i32 1, i32 4
  %1044 = load i32, ptr %1043, align 4
  %1045 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %1038, i32 noundef %1039, i32 noundef %1040, i32 noundef %1042, i32 noundef %1044) #18
  br label %1046

1046:                                             ; preds = %1037, %1032
  %1047 = load i32, ptr %320, align 8
  %1048 = and i32 %1047, 512
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1050, label %1072

1050:                                             ; preds = %1046
  %1051 = load i32, ptr %11, align 8
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1055, !prof !8

1053:                                             ; preds = %1050
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 1445, i32 noundef 9, ptr noundef nonnull @.str.35) #15
  %1054 = load i32, ptr %11, align 8
  br label %1055

1055:                                             ; preds = %1053, %1050
  %1056 = phi i32 [ %1054, %1053 ], [ %1051, %1050 ]
  %1057 = icmp eq i32 %1056, 1
  br i1 %1057, label %1058, label %1072

1058:                                             ; preds = %1055
  %1059 = load i32, ptr %1007, align 4
  %1060 = add i32 %1059, -2
  %1061 = call i32 @llvm.fshl.i32(i32 %1060, i32 %1060, i32 31) #15
  %1062 = icmp ult i32 %1061, 8
  br i1 %1062, label %1063, label %1072

1063:                                             ; preds = %1058
  %1064 = trunc i32 %1061 to i8
  %1065 = lshr i8 -117, %1064
  %1066 = and i8 %1065, 1
  %1067 = icmp eq i8 %1066, 0
  br i1 %1067, label %1072, label %1068

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds [8 x i32], ptr @switch.table.nand_scan_with_ids, i32 0, i32 %1061
  %1070 = load i32, ptr %1069, align 4
  %1071 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 53
  store i32 %1070, ptr %1071, align 4
  br label %1072

1072:                                             ; preds = %1068, %1063, %1058, %1055, %1046
  %1073 = load i32, ptr %509, align 4
  %1074 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 53
  %1075 = load i32, ptr %1074, align 4
  %1076 = lshr i32 %1073, %1075
  %1077 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 21
  store i32 %1076, ptr %1077, align 4
  %1078 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  store i32 -1, ptr %1078, align 4
  %1079 = load i32, ptr %687, align 4
  %1080 = icmp eq i32 %1079, 2
  br i1 %1080, label %1081, label %1087

1081:                                             ; preds = %1072
  %1082 = load i32, ptr %523, align 4
  %1083 = icmp ugt i32 %1082, 9
  br i1 %1083, label %1084, label %1087

1084:                                             ; preds = %1081
  %1085 = load i32, ptr %320, align 8
  %1086 = or i32 %1085, 4096
  store i32 %1086, ptr %320, align 8
  br label %1087

1087:                                             ; preds = %1084, %1081, %1072
  %1088 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 55
  %1089 = load ptr, ptr %1088, align 4
  %1090 = call i32 @nanddev_init(ptr noundef %0, ptr noundef nonnull @rawnand_ops, ptr noundef %1089) #15
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1092, label %1156

1092:                                             ; preds = %1087
  %1093 = load i32, ptr %320, align 8
  %1094 = and i32 %1093, 2048
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1098, label %1096

1096:                                             ; preds = %1092
  %1097 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  store i32 0, ptr %1097, align 4
  br label %1098

1098:                                             ; preds = %1096, %1092
  %1099 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 21
  store ptr @nand_erase, ptr %1099, align 8
  %1100 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 22
  store ptr null, ptr %1100, align 4
  %1101 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 23
  store ptr null, ptr %1101, align 8
  %1102 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 26
  store ptr @panic_nand_write, ptr %1102, align 4
  %1103 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 27
  store ptr @nand_read_oob, ptr %1103, align 8
  %1104 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 28
  store ptr @nand_write_oob, ptr %1104, align 4
  %1105 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 37
  store ptr @nand_sync, ptr %1105, align 8
  %1106 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 38
  store ptr @nand_lock, ptr %1106, align 4
  %1107 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 39
  store ptr @nand_unlock, ptr %1107, align 8
  %1108 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 45
  store ptr @nand_suspend, ptr %1108, align 8
  %1109 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 46
  store ptr @nand_resume, ptr %1109, align 4
  %1110 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 47
  store ptr @nand_shutdown, ptr %1110, align 8
  %1111 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 41
  store ptr @nand_block_isreserved, ptr %1111, align 8
  %1112 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 42
  store ptr @nand_block_isbad, ptr %1112, align 4
  %1113 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 43
  store ptr @nand_block_markbad, ptr %1113, align 8
  %1114 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 44
  store ptr @nanddev_mtd_max_bad_blocks, ptr %1114, align 4
  %1115 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %1116 = load i32, ptr %1115, align 4
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1123

1118:                                             ; preds = %1098
  %1119 = load i32, ptr %1003, align 4
  %1120 = mul i32 %1119, 3
  %1121 = add i32 %1120, 3
  %1122 = lshr i32 %1121, 2
  store i32 %1122, ptr %1115, align 4
  br label %1123

1123:                                             ; preds = %1118, %1098
  %1124 = call fastcc i32 @nand_choose_interface_config(ptr noundef %0) #15
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1126, label %1154

1126:                                             ; preds = %1123
  %1127 = load i32, ptr %159, align 8
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1137, label %1133

1129:                                             ; preds = %1133
  %1130 = add nuw i32 %1134, 1
  %1131 = load i32, ptr %159, align 8
  %1132 = icmp ult i32 %1130, %1131
  br i1 %1132, label %1133, label %1137

1133:                                             ; preds = %1129, %1126
  %1134 = phi i32 [ %1130, %1129 ], [ 0, %1126 ]
  %1135 = call fastcc i32 @nand_setup_interface(ptr noundef %0, i32 noundef %1134) #15
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1129, label %1150

1137:                                             ; preds = %1129, %1126
  %1138 = call fastcc i32 @of_get_nand_secure_regions(ptr noundef %0) #15
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1140, label %1150

1140:                                             ; preds = %1137
  %1141 = load i32, ptr %320, align 8
  %1142 = and i32 %1141, 65536
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1144, label %1192

1144:                                             ; preds = %1140
  %1145 = call i32 @nand_create_bbt(ptr noundef %0) #15
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1192, label %1147

1147:                                             ; preds = %1144
  %1148 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %1149 = load ptr, ptr %1148, align 4
  call void @kfree(ptr noundef %1149) #15
  br label %1150

1150:                                             ; preds = %1147, %1137, %1133
  %1151 = phi i32 [ %1138, %1137 ], [ %1145, %1147 ], [ %1135, %1133 ]
  %1152 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  %1153 = load ptr, ptr %1152, align 8
  call void @kfree(ptr noundef %1153) #15
  br label %1154

1154:                                             ; preds = %1150, %1123
  %1155 = phi i32 [ %1124, %1123 ], [ %1151, %1150 ]
  call void @nanddev_cleanup(ptr noundef %0) #15
  br label %1156

1156:                                             ; preds = %1154, %1087, %1031, %1017, %975, %966, %943, %922, %921, %920, %872, %861, %830, %750
  %1157 = phi i32 [ -22, %966 ], [ -22, %1017 ], [ -22, %1031 ], [ %1090, %1087 ], [ %1155, %1154 ], [ -22, %943 ], [ -22, %872 ], [ -22, %750 ], [ -12, %975 ], [ -22, %861 ], [ -22, %830 ], [ %909, %920 ], [ -22, %921 ], [ -22, %922 ]
  %1158 = load ptr, ptr %317, align 8
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1169, label %1160

1160:                                             ; preds = %1156
  %1161 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %1158, i32 0, i32 2
  %1162 = load ptr, ptr %1161, align 4
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1169, label %1164

1164:                                             ; preds = %1160
  %1165 = getelementptr inbounds %struct.nand_manufacturer_ops, ptr %1162, i32 0, i32 2
  %1166 = load ptr, ptr %1165, align 4
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1169, label %1168

1168:                                             ; preds = %1164
  call void %1166(ptr noundef %0) #15
  br label %1169

1169:                                             ; preds = %1168, %1164, %1160, %1156, %722
  %1170 = phi i32 [ %718, %722 ], [ %1157, %1156 ], [ %1157, %1160 ], [ %1157, %1164 ], [ %1157, %1168 ]
  %1171 = load ptr, ptr %698, align 8
  call void @kfree(ptr noundef %1171) #15
  %1172 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %1173 = load ptr, ptr %1172, align 4
  call void @kfree(ptr noundef %1173) #15
  %1174 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %1175 = load ptr, ptr %1174, align 4
  call void @kfree(ptr noundef %1175) #15
  br label %1176

1176:                                             ; preds = %1169, %693, %692
  %1177 = phi i32 [ -12, %693 ], [ %1170, %1169 ], [ -22, %692 ]
  %1178 = load ptr, ptr %145, align 4
  %1179 = getelementptr inbounds %struct.nand_controller, ptr %1178, i32 0, i32 1
  %1180 = load ptr, ptr %1179, align 4
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1187, label %1182

1182:                                             ; preds = %1176
  %1183 = getelementptr inbounds %struct.nand_controller_ops, ptr %1180, i32 0, i32 1
  %1184 = load ptr, ptr %1183, align 4
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1187, label %1186

1186:                                             ; preds = %1182
  call void %1184(ptr noundef %0) #15
  br label %1187

1187:                                             ; preds = %1186, %1182, %1176, %683
  %1188 = phi i32 [ %684, %683 ], [ %1177, %1176 ], [ %1177, %1182 ], [ %1177, %1186 ]
  %1189 = load ptr, ptr %581, align 4
  call void @kfree(ptr noundef %1189) #15
  %1190 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %1191 = load ptr, ptr %1190, align 4
  call void @kfree(ptr noundef %1191) #15
  br label %1192

1192:                                             ; preds = %1187, %1144, %1140, %603, %155, %3
  %1193 = phi i32 [ %1188, %1187 ], [ -22, %3 ], [ 0, %1140 ], [ 0, %1144 ], [ %156, %155 ], [ %591, %603 ]
  ret i32 %1193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nand_cleanup(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @nand_ecc_sw_hamming_cleanup_ctx(ptr noundef %0) #15
  br label %10

10:                                               ; preds = %9, %5, %1
  tail call void @nanddev_cleanup(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #15
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  tail call void @kfree(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %16 = load ptr, ptr %15, align 8
  tail call void @kfree(ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %18 = load ptr, ptr %17, align 8
  tail call void @kfree(ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #15
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %10
  %25 = load i32, ptr %22, align 4
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #15
  br label %28

28:                                               ; preds = %27, %24, %10
  %29 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %30) #15
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_manufacturer_ops, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef %0) #15
  br label %43

43:                                               ; preds = %42, %38, %34, %28
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nand_controller, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.nand_controller_ops, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void %51(ptr noundef %0) #15
  br label %54

54:                                               ; preds = %53, %49, %43
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #15
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nanddev_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_do_write_oob(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = icmp ugt i32 %15, %10
  br i1 %16, label %133, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %19 = load i8, ptr %18, align 8
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = zext i32 %14 to i64
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %25 = load ptr, ptr %24, align 4
  %26 = add i64 %23, %1
  br label %27

27:                                               ; preds = %38, %22
  %28 = phi i1 [ true, %22 ], [ %40, %38 ]
  %29 = phi i32 [ 0, %22 ], [ %39, %38 ]
  %30 = getelementptr %struct.nand_secure_region, ptr %25, i32 %29
  %31 = load i64, ptr %30, align 8
  %32 = icmp ugt i64 %26, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr %struct.nand_secure_region, ptr %25, i32 %29, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %31
  %37 = icmp ugt i64 %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %33, %27
  %39 = add nuw nsw i32 %29, 1
  %40 = icmp ult i32 %39, %20
  %41 = icmp eq i32 %39, %20
  br i1 %41, label %42, label %27

42:                                               ; preds = %38, %33
  %43 = phi i1 [ %28, %33 ], [ %40, %38 ]
  br i1 %43, label %133, label %44

44:                                               ; preds = %42, %17
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %46 = load i32, ptr %45, align 4
  %47 = zext i32 %46 to i64
  %48 = ashr i64 %1, %47
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @nand_reset(ptr noundef %0, i32 noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %133

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %54, %49
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %63

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %49, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void %60(ptr noundef %0, i32 noundef %49) #15
  br label %63

63:                                               ; preds = %62, %57, %56
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %65 = load i32, ptr %64, align 4
  %66 = zext i32 %65 to i64
  %67 = ashr i64 %1, %66
  %68 = trunc i64 %67 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !10
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %88

74:                                               ; preds = %63
  %75 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %4) #15
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %81

78:                                               ; preds = %74
  %79 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %80 = icmp slt i8 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78, %77
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void %83(ptr noundef %0, i32 noundef -1) #15
  br label %86

86:                                               ; preds = %85, %81
  %87 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %87, align 4
  br label %133

88:                                               ; preds = %78, %73
  %89 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, %68
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -1, ptr %89, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %13, align 4
  %97 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %8, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %98, i8 -1, i32 %99, i1 false) #15
  %100 = load i32, ptr %2, align 4
  switch i32 %100, label %111 [
    i32 0, label %101
    i32 2, label %101
    i32 1, label %105
  ]

101:                                              ; preds = %93, %93
  %102 = load ptr, ptr %97, align 4
  %103 = load i32, ptr %11, align 4
  %104 = getelementptr i8, ptr %102, i32 %103
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %104, ptr align 1 %95, i32 %96, i1 false) #15
  br label %112

105:                                              ; preds = %93
  %106 = load ptr, ptr %97, align 4
  %107 = load i32, ptr %11, align 4
  %108 = call i32 @mtd_ooblayout_set_databytes(ptr noundef %0, ptr noundef %95, ptr noundef %106, i32 noundef %107, i32 noundef %96) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110, !prof !9

110:                                              ; preds = %105
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #15, !srcloc !16
  unreachable

111:                                              ; preds = %93
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 410, 0\0A.popsection", ""() #15, !srcloc !17
  unreachable

112:                                              ; preds = %105, %101
  %113 = load i32, ptr %2, align 4
  %114 = icmp eq i32 %113, 2
  %115 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 25
  %116 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 22
  %117 = select i1 %114, ptr %116, ptr %115
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, %68
  %122 = call i32 %118(ptr noundef %0, i32 noundef %121) #15
  %123 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %112
  call void %124(ptr noundef %0, i32 noundef -1) #15
  br label %127

127:                                              ; preds = %126, %112
  %128 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %128, align 4
  %129 = icmp eq i32 %122, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, ptr %13, align 4
  %132 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 %131, ptr %132, align 4
  br label %133

133:                                              ; preds = %130, %127, %86, %44, %42, %3
  %134 = phi i32 [ -30, %86 ], [ 0, %130 ], [ -22, %3 ], [ -5, %42 ], [ %50, %44 ], [ %122, %127 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nand_fill_oob(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %6, i8 -1, i32 %8, i1 false)
  %9 = load i32, ptr %3, align 4
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 2, label %10
    i32 1, label %15
  ]

10:                                               ; preds = %4, %4
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %14, ptr align 1 %1, i32 %2, i1 false)
  br label %23

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @mtd_ooblayout_set_databytes(ptr noundef %0, ptr noundef %1, ptr noundef %16, i32 noundef %18, i32 noundef %2) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !9

21:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #15, !srcloc !16
  unreachable

22:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 410, 0\0A.popsection", ""() #15, !srcloc !17
  unreachable

23:                                               ; preds = %15, %10
  %24 = getelementptr i8, ptr %1, i32 %2
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_reset_interface_config() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_isbad_bbt(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_isbad_bbm(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 134217728
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %129

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %10 = load i8, ptr %9, align 8
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %8, align 8
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %17 = load ptr, ptr %16, align 4
  %18 = add i64 %15, %1
  br label %19

19:                                               ; preds = %30, %13
  %20 = phi i1 [ true, %13 ], [ %32, %30 ]
  %21 = phi i32 [ 0, %13 ], [ %31, %30 ]
  %22 = getelementptr %struct.nand_secure_region, ptr %17, i32 %21
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %18, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = getelementptr %struct.nand_secure_region, ptr %17, i32 %21, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %23
  %29 = icmp ugt i64 %28, %1
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %19
  %31 = add nuw nsw i32 %21, 1
  %32 = icmp ult i32 %31, %11
  %33 = icmp eq i32 %31, %11
  br i1 %33, label %34, label %19

34:                                               ; preds = %30, %25
  %35 = phi i1 [ %20, %25 ], [ %32, %30 ]
  br i1 %35, label %129, label %36

36:                                               ; preds = %34, %7
  %37 = load i8, ptr @mtd_expert_analysis_mode, align 1, !range !14
  %38 = icmp ne i8 %37, 0
  %39 = load i1, ptr @nand_isbad_bbm.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44, !prof !8

42:                                               ; preds = %36
  store i1 true, ptr @nand_isbad_bbm.__already_done, align 1
  %43 = load ptr, ptr @mtd_expert_analysis_warning, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 324, i32 noundef 9, ptr noundef %43) #15
  br label %44

44:                                               ; preds = %42, %36
  br i1 %38, label %129, label %45

45:                                               ; preds = %44
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %0, i64 noundef %1) #15
  br label %129

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  %54 = zext i32 %53 to i64
  %55 = ashr i64 %1, %54
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %58 = load i32, ptr %57, align 8
  %59 = and i32 %58, %56
  %60 = load i32, ptr %8, align 8
  %61 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = sub i32 %60, %62
  %64 = lshr i32 %63, %53
  %65 = and i32 %64, %58
  %66 = load i32, ptr %3, align 8
  %67 = and i32 %66, 117440512
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %66, 16777216
  %70 = icmp eq i32 %69, 0
  %71 = and i1 %68, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %51
  %73 = and i32 %66, 33554432
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = icmp slt i32 %65, 0
  %77 = and i32 %66, 67108864
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %129, label %80

80:                                               ; preds = %75, %72, %51
  %81 = phi i32 [ %65, %75 ], [ 1, %72 ], [ 0, %51 ]
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %83 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %84 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 11
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 12
  br label %86

86:                                               ; preds = %126, %80
  %87 = phi i32 [ %81, %80 ], [ %127, %126 ]
  %88 = load ptr, ptr %82, align 8
  %89 = add i32 %87, %59
  %90 = tail call i32 %88(ptr noundef %0, i32 noundef %89) #15
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %129, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %83, align 4
  %94 = load i32, ptr %84, align 4
  %95 = getelementptr i8, ptr %93, i32 %94
  %96 = load i8, ptr %95, align 1
  %97 = load i32, ptr %85, align 8
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %101, !prof !9

99:                                               ; preds = %92
  %100 = icmp eq i8 %96, -1
  br i1 %100, label %106, label %129

101:                                              ; preds = %92
  %102 = zext i8 %96 to i32
  %103 = tail call i32 @__sw_hweight8(i32 noundef %102) #15
  %104 = load i32, ptr %85, align 8
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %129, label %106

106:                                              ; preds = %101, %99
  %107 = add nuw i32 %87, 1
  %108 = load i32, ptr %8, align 8
  %109 = load i32, ptr %61, align 4
  %110 = sub i32 %108, %109
  %111 = load i32, ptr %52, align 4
  %112 = lshr i32 %110, %111
  %113 = load i32, ptr %57, align 8
  %114 = and i32 %112, %113
  %115 = icmp slt i32 %107, 2
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load i32, ptr %3, align 8
  %118 = and i32 %117, 33554432
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116, %106
  %121 = icmp slt i32 %114, %107
  br i1 %121, label %129, label %122

122:                                              ; preds = %120
  %123 = load i32, ptr %3, align 8
  %124 = and i32 %123, 67108864
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122, %116
  %127 = phi i32 [ 1, %116 ], [ %114, %122 ]
  %128 = icmp sgt i32 %127, -1
  br i1 %128, label %86, label %129

129:                                              ; preds = %126, %122, %120, %101, %99, %86, %75, %49, %44, %34, %2
  %130 = phi i32 [ %50, %49 ], [ 0, %2 ], [ -5, %34 ], [ 0, %44 ], [ 0, %75 ], [ %90, %86 ], [ 1, %101 ], [ 0, %126 ], [ 1, %99 ], [ 0, %120 ], [ 0, %122 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nand_set_defaults(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 16
  store ptr %6, ptr %2, align 4
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef nonnull @nand_controller_init.__key) #15
  br label %7

7:                                                ; preds = %5, %1
  tail call void @nand_legacy_set_defaults(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 1, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_legacy_check_hooks(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_get_nand_ecc_user_config(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_legacy_set_defaults(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_manufacturer_desc(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_onfi_detect(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_jedec_detect(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nand_manufacturer_detect(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %14 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 3
  %18 = add nuw nsw i8 %17, 1
  %19 = zext i8 %18 to i32
  store i32 %19, ptr %13, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %0) #15
  br label %57

22:                                               ; preds = %9, %5, %1
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1
  %24 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = lshr i8 %25, 2
  %27 = and i8 %26, 3
  %28 = add nuw nsw i8 %27, 1
  %29 = zext i8 %28 to i32
  store i32 %29, ptr %23, align 4
  %30 = getelementptr %struct.nand_chip, ptr %0, i32 0, i32 1, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 3
  %34 = shl nuw nsw i32 1024, %33
  %35 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %34, ptr %36, align 4
  %37 = lshr i32 %32, 2
  %38 = and i32 %37, 1
  %39 = shl nuw nsw i32 8, %38
  %40 = lshr exact i32 %34, 9
  %41 = mul nuw nsw i32 %39, %40
  %42 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  store i32 %41, ptr %43, align 4
  %44 = lshr i32 %32, 4
  %45 = and i32 %44, 3
  %46 = shl nuw nsw i32 65536, %45
  %47 = add nuw nsw i32 %33, 10
  %48 = lshr i32 %46, %47
  %49 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %46, ptr %50, align 8
  %51 = and i32 %32, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %22
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 8
  %56 = or i32 %55, 2
  store i32 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %53, %22, %12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_legacy_adjust_cmdfunc(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_small_page_ooblayout() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_hamming_ooblayout() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nand_get_large_page_ooblayout() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_count_freebytes(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nand_ecc_is_strong_enough(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_erase(ptr noundef %0, ptr nocapture noundef %1) #4 {
  %3 = tail call i32 @nand_erase_nand(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panic_nand_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #4 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.mtd_oob_ops, align 4
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = zext i32 %9 to i64
  %11 = ashr i64 %1, %10
  %12 = trunc i64 %11 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  %13 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, %12
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %23

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %12, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void %20(ptr noundef %0, i32 noundef %12) #15
  br label %23

23:                                               ; preds = %22, %17, %16
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  br label %25

25:                                               ; preds = %39, %23
  %26 = phi i32 [ 0, %23 ], [ %41, %39 ]
  %27 = load ptr, ptr %24, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 %27(ptr noundef %0) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %43

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !annotation !10
  %33 = call i32 @nand_read_data_op(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #15
  %34 = icmp eq i32 %33, 0
  %35 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  %36 = and i8 %35, 64
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %29
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #15
  %41 = add nuw nsw i32 %26, 1
  %42 = icmp eq i32 %41, 400
  br i1 %42, label %43, label %25

43:                                               ; preds = %39, %32, %29
  %44 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %44, i8 0, i32 24, i1 false)
  %45 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 1
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 6
  store ptr %4, ptr %46, align 4
  store i32 0, ptr %7, align 4
  %47 = call fastcc i32 @nand_do_write_ops(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %7)
  %48 = getelementptr inbounds %struct.mtd_oob_ops, ptr %7, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_oob(ptr noundef %0, i64 noundef %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %476

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %474

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  tail call void @mutex_lock(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %166

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %25 = load i8, ptr %24, align 8
  %26 = zext i8 %25 to i32
  %27 = icmp eq i8 %25, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %19
  %29 = sext i32 %21 to i64
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %31 = load ptr, ptr %30, align 4
  %32 = add i64 %29, %1
  br label %33

33:                                               ; preds = %44, %28
  %34 = phi i1 [ true, %28 ], [ %46, %44 ]
  %35 = phi i32 [ 0, %28 ], [ %45, %44 ]
  %36 = getelementptr %struct.nand_secure_region, ptr %31, i32 %35
  %37 = load i64, ptr %36, align 8
  %38 = icmp ugt i64 %32, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr %struct.nand_secure_region, ptr %31, i32 %35, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = add i64 %41, %37
  %43 = icmp ugt i64 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %33
  %45 = add nuw nsw i32 %35, 1
  %46 = icmp ult i32 %45, %26
  %47 = icmp eq i32 %45, %26
  br i1 %47, label %48, label %33

48:                                               ; preds = %44, %39
  %49 = phi i1 [ %34, %39 ], [ %46, %44 ]
  br i1 %49, label %471, label %50

50:                                               ; preds = %48, %19
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %53, 1
  %55 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %57 = select i1 %54, ptr %55, ptr %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %60 = load i32, ptr %59, align 4
  %61 = zext i32 %60 to i64
  %62 = ashr i64 %1, %61
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %65, %63
  br i1 %66, label %67, label %68, !prof !8

67:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %74

68:                                               ; preds = %50
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %63, ptr %69, align 4
  %70 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void %71(ptr noundef %0, i32 noundef %63) #15
  br label %74

74:                                               ; preds = %73, %68, %67
  %75 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %76 = load i32, ptr %75, align 4
  %77 = zext i32 %76 to i64
  %78 = ashr i64 %1, %77
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, %79
  %83 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 24
  %84 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 23
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %86 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %87 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %88 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %89 = load i32, ptr %2, align 4
  %90 = icmp eq i32 %89, 2
  %91 = select i1 %90, ptr %84, ptr %83
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 %92(ptr noundef %0, i32 noundef %82) #15
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %150, label %95

95:                                               ; preds = %139, %74
  %96 = phi i32 [ %145, %139 ], [ %93, %74 ]
  %97 = phi i32 [ %118, %139 ], [ 0, %74 ]
  %98 = phi i32 [ %122, %139 ], [ %79, %74 ]
  %99 = phi i32 [ %140, %139 ], [ %63, %74 ]
  %100 = phi ptr [ %117, %139 ], [ %23, %74 ]
  %101 = phi i32 [ %103, %139 ], [ %58, %74 ]
  %102 = phi i32 [ %119, %139 ], [ %21, %74 ]
  %103 = tail call i32 @llvm.smin.i32(i32 %101, i32 %102) #15
  %104 = load i32, ptr %2, align 4
  switch i32 %104, label %115 [
    i32 0, label %105
    i32 2, label %105
    i32 1, label %109
  ]

105:                                              ; preds = %95, %95
  %106 = load ptr, ptr %85, align 4
  %107 = load i32, ptr %86, align 4
  %108 = getelementptr i8, ptr %106, i32 %107
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %100, ptr align 1 %108, i32 %103, i1 false) #15
  br label %116

109:                                              ; preds = %95
  %110 = load ptr, ptr %85, align 4
  %111 = load i32, ptr %86, align 4
  %112 = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %0, ptr noundef %100, ptr noundef %110, i32 noundef %111, i32 noundef %103) #15
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114, !prof !9

114:                                              ; preds = %109
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3348, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

115:                                              ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3352, 0\0A.popsection", ""() #15, !srcloc !19
  unreachable

116:                                              ; preds = %109, %105
  %117 = getelementptr i8, ptr %100, i32 %103
  tail call fastcc void @nand_wait_readrdy(ptr noundef %0) #15
  %118 = tail call i32 @llvm.umax.i32(i32 %97, i32 %96) #15
  %119 = sub i32 %102, %103
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %147, label %121

121:                                              ; preds = %116
  %122 = add i32 %98, 1
  %123 = load i32, ptr %80, align 8
  %124 = and i32 %123, %122
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = add i32 %99, 1
  %128 = load ptr, ptr %87, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call void %128(ptr noundef %0, i32 noundef -1) #15
  br label %131

131:                                              ; preds = %130, %126
  store i32 -1, ptr %88, align 4
  %132 = load i32, ptr %64, align 8
  %133 = icmp ult i32 %132, %127
  br i1 %133, label %134, label %135, !prof !8

134:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %139

135:                                              ; preds = %131
  store i32 %127, ptr %88, align 4
  %136 = load ptr, ptr %87, align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  tail call void %136(ptr noundef %0, i32 noundef %127) #15
  br label %139

139:                                              ; preds = %138, %135, %134, %121
  %140 = phi i32 [ %99, %121 ], [ %127, %134 ], [ %127, %135 ], [ %127, %138 ]
  %141 = load i32, ptr %2, align 4
  %142 = icmp eq i32 %141, 2
  %143 = select i1 %142, ptr %84, ptr %83
  %144 = load ptr, ptr %143, align 4
  %145 = tail call i32 %144(ptr noundef %0, i32 noundef %124) #15
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %95

147:                                              ; preds = %139, %116
  %148 = phi i32 [ %145, %139 ], [ %96, %116 ]
  %149 = xor i1 %120, true
  br label %150

150:                                              ; preds = %147, %74
  %151 = phi i32 [ %93, %74 ], [ %148, %147 ]
  %152 = phi i1 [ true, %74 ], [ %149, %147 ]
  %153 = phi i32 [ %21, %74 ], [ %119, %147 ]
  %154 = phi i32 [ 0, %74 ], [ %118, %147 ]
  %155 = load ptr, ptr %87, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %150
  tail call void %155(ptr noundef %0, i32 noundef -1) #15
  br label %158

158:                                              ; preds = %157, %150
  store i32 -1, ptr %88, align 4
  %159 = load i32, ptr %20, align 4
  %160 = sub i32 %159, %153
  %161 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 %160, ptr %161, align 4
  br i1 %152, label %471, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %51, align 4
  %164 = icmp eq i32 %163, %52
  %165 = select i1 %164, i32 %154, i32 -74
  br label %471

166:                                              ; preds = %13
  %167 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %170 = load i32, ptr %169, align 4
  %171 = load i32, ptr %2, align 4
  %172 = icmp eq i32 %171, 1
  %173 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %174 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %175 = select i1 %172, ptr %173, ptr %174
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %178 = load i8, ptr %177, align 8
  %179 = zext i8 %178 to i32
  %180 = icmp eq i8 %178, 0
  br i1 %180, label %203, label %181

181:                                              ; preds = %166
  %182 = zext i32 %168 to i64
  %183 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %184 = load ptr, ptr %183, align 4
  %185 = add i64 %182, %1
  br label %186

186:                                              ; preds = %197, %181
  %187 = phi i1 [ true, %181 ], [ %199, %197 ]
  %188 = phi i32 [ 0, %181 ], [ %198, %197 ]
  %189 = getelementptr %struct.nand_secure_region, ptr %184, i32 %188
  %190 = load i64, ptr %189, align 8
  %191 = icmp ugt i64 %185, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = getelementptr %struct.nand_secure_region, ptr %184, i32 %188, i32 1
  %194 = load i64, ptr %193, align 8
  %195 = add i64 %194, %190
  %196 = icmp ugt i64 %195, %1
  br i1 %196, label %201, label %197

197:                                              ; preds = %192, %186
  %198 = add nuw nsw i32 %188, 1
  %199 = icmp ult i32 %198, %179
  %200 = icmp eq i32 %198, %179
  br i1 %200, label %201, label %186

201:                                              ; preds = %197, %192
  %202 = phi i1 [ %187, %192 ], [ %199, %197 ]
  br i1 %202, label %471, label %203

203:                                              ; preds = %201, %166
  %204 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %205 = load i32, ptr %204, align 4
  %206 = zext i32 %205 to i64
  %207 = ashr i64 %1, %206
  %208 = trunc i64 %207 to i32
  %209 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %210 = load i32, ptr %209, align 8
  %211 = icmp ult i32 %210, %208
  br i1 %211, label %212, label %213, !prof !8

212:                                              ; preds = %203
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %219

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %208, ptr %214, align 4
  %215 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  tail call void %216(ptr noundef %0, i32 noundef %208) #15
  br label %219

219:                                              ; preds = %218, %213, %212
  %220 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %221 = load i32, ptr %220, align 4
  %222 = zext i32 %221 to i64
  %223 = ashr i64 %1, %222
  %224 = trunc i64 %223 to i32
  %225 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %226 = load i32, ptr %225, align 8
  %227 = and i32 %226, %224
  %228 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %229 = load i32, ptr %228, align 4
  %230 = add i32 %229, -1
  %231 = trunc i64 %1 to i32
  %232 = and i32 %230, %231
  %233 = load ptr, ptr %16, align 4
  %234 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %235 = load ptr, ptr %234, align 4
  %236 = icmp ne ptr %235, null
  %237 = zext i1 %236 to i32
  %238 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %239 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  %240 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %241 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24
  %242 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  %243 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 25
  %245 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %246 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 19
  %247 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 18
  %248 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %249 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %250 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %251 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 29
  %252 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 4
  %253 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %254 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  br label %255

255:                                              ; preds = %446, %219
  %256 = phi i32 [ %229, %219 ], [ %448, %446 ]
  %257 = phi ptr [ %235, %219 ], [ %424, %446 ]
  %258 = phi ptr [ %233, %219 ], [ %426, %446 ]
  %259 = phi i32 [ 0, %219 ], [ %423, %446 ]
  %260 = phi i1 [ false, %219 ], [ %422, %446 ]
  %261 = phi i32 [ %170, %219 ], [ %421, %446 ]
  %262 = phi i32 [ %168, %219 ], [ %420, %446 ]
  %263 = phi i32 [ 0, %219 ], [ %425, %446 ]
  %264 = phi i32 [ %232, %219 ], [ 0, %446 ]
  %265 = phi i32 [ %224, %219 ], [ %429, %446 ]
  %266 = phi i32 [ %227, %219 ], [ %431, %446 ]
  %267 = phi i32 [ %208, %219 ], [ %447, %446 ]
  %268 = load i32, ptr %238, align 4
  %269 = load i32, ptr %239, align 4
  %270 = load i64, ptr %240, align 4
  %271 = sub i32 %256, %264
  %272 = tail call i32 @llvm.umin.i32(i32 %271, i32 %262) #15
  %273 = icmp eq i32 %272, %256
  br i1 %273, label %274, label %307

274:                                              ; preds = %255
  %275 = load i32, ptr %243, align 8
  %276 = and i32 %275, 1048576
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %302, label %278

278:                                              ; preds = %274
  %279 = ptrtoint ptr %258 to i32
  %280 = icmp ugt ptr %258, inttoptr (i32 -1073741825 to ptr)
  %281 = load ptr, ptr @high_memory, align 4
  %282 = icmp ult ptr %258, %281
  %283 = select i1 %280, i1 %282, i1 false
  br i1 %283, label %284, label %296

284:                                              ; preds = %278
  %285 = add i32 %279, 1073741824
  %286 = lshr i32 %285, 12
  %287 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %288 = add i32 %287, %286
  %289 = tail call i32 @pfn_valid(i32 noundef %288) #15
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %284
  %292 = load i32, ptr %244, align 8
  %293 = add i32 %292, -1
  %294 = and i32 %293, %279
  %295 = icmp ne i32 %294, 0
  br label %296

296:                                              ; preds = %291, %284, %278
  %297 = phi i1 [ true, %284 ], [ true, %278 ], [ %295, %291 ]
  %298 = load i32, ptr %242, align 4
  %299 = icmp ne i32 %265, %298
  %300 = icmp ne ptr %257, null
  %301 = select i1 %299, i1 true, i1 %300
  br i1 %301, label %312, label %399

302:                                              ; preds = %274
  %303 = load i32, ptr %242, align 4
  %304 = icmp ne i32 %265, %303
  %305 = icmp ne ptr %257, null
  %306 = select i1 %304, i1 true, i1 %305
  br i1 %306, label %315, label %399

307:                                              ; preds = %255
  %308 = load i32, ptr %242, align 4
  %309 = icmp ne i32 %265, %308
  %310 = icmp ne ptr %257, null
  %311 = select i1 %309, i1 true, i1 %310
  br i1 %311, label %313, label %399

312:                                              ; preds = %296
  br i1 %297, label %313, label %315

313:                                              ; preds = %312, %307
  %314 = load ptr, ptr %245, align 8
  br label %315

315:                                              ; preds = %313, %312, %302
  %316 = phi i1 [ false, %313 ], [ true, %312 ], [ true, %302 ]
  %317 = phi ptr [ %314, %313 ], [ %258, %312 ], [ %258, %302 ]
  %318 = getelementptr i8, ptr %317, i32 %264
  br label %319

319:                                              ; preds = %398, %315
  %320 = phi ptr [ %257, %315 ], [ %384, %398 ]
  %321 = phi i32 [ 0, %315 ], [ %389, %398 ]
  %322 = phi i32 [ %261, %315 ], [ %385, %398 ]
  %323 = load i32, ptr %2, align 4
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %328, !prof !8

325:                                              ; preds = %319
  %326 = load ptr, ptr %248, align 8
  %327 = tail call i32 %326(ptr noundef %0, ptr noundef %317, i32 noundef %237, i32 noundef %266) #15
  br label %341

328:                                              ; preds = %319
  br i1 %273, label %338, label %329

329:                                              ; preds = %328
  %330 = load i32, ptr %243, align 8
  %331 = and i32 %330, 4096
  %332 = icmp eq i32 %331, 0
  %333 = icmp ne ptr %320, null
  %334 = select i1 %332, i1 true, i1 %333
  br i1 %334, label %338, label %335

335:                                              ; preds = %329
  %336 = load ptr, ptr %246, align 4
  %337 = tail call i32 %336(ptr noundef %0, i32 noundef %264, i32 noundef %272, ptr noundef %317, i32 noundef %266) #15
  br label %341

338:                                              ; preds = %329, %328
  %339 = load ptr, ptr %247, align 8
  %340 = tail call i32 %339(ptr noundef %0, ptr noundef %317, i32 noundef %237, i32 noundef %266) #15
  br label %341

341:                                              ; preds = %338, %335, %325
  %342 = phi i32 [ %327, %325 ], [ %340, %338 ], [ %337, %335 ]
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %341
  br i1 %316, label %449, label %345

345:                                              ; preds = %344
  store i32 -1, ptr %242, align 4
  br label %449

346:                                              ; preds = %341
  br i1 %316, label %362, label %347

347:                                              ; preds = %346
  %348 = load i32, ptr %243, align 8
  %349 = and i32 %348, 4096
  %350 = icmp ne i32 %349, 0
  %351 = icmp ne ptr %320, null
  %352 = select i1 %350, i1 true, i1 %351
  br i1 %352, label %360, label %353

353:                                              ; preds = %347
  %354 = load i32, ptr %239, align 4
  %355 = icmp eq i32 %354, %269
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i32, ptr %2, align 4
  %358 = icmp eq i32 %357, 2
  br i1 %358, label %360, label %359

359:                                              ; preds = %356
  store i32 %265, ptr %242, align 4
  store i32 %342, ptr %241, align 8
  br label %361

360:                                              ; preds = %356, %353, %347
  store i32 -1, ptr %242, align 4
  br label %361

361:                                              ; preds = %360, %359
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %318, i32 %272, i1 false) #15
  br label %362

362:                                              ; preds = %361, %346
  %363 = icmp eq ptr %320, null
  br i1 %363, label %383, label %364, !prof !9

364:                                              ; preds = %362
  %365 = tail call i32 @llvm.umin.i32(i32 %322, i32 %176) #15
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %383, label %367

367:                                              ; preds = %364
  %368 = load i32, ptr %2, align 4
  switch i32 %368, label %379 [
    i32 0, label %369
    i32 2, label %369
    i32 1, label %373
  ]

369:                                              ; preds = %367, %367
  %370 = load ptr, ptr %249, align 4
  %371 = load i32, ptr %250, align 4
  %372 = getelementptr i8, ptr %370, i32 %371
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %320, ptr align 1 %372, i32 %365, i1 false) #15
  br label %380

373:                                              ; preds = %367
  %374 = load ptr, ptr %249, align 4
  %375 = load i32, ptr %250, align 4
  %376 = tail call i32 @mtd_ooblayout_get_databytes(ptr noundef %0, ptr noundef nonnull %320, ptr noundef %374, i32 noundef %375, i32 noundef %365) #15
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %380, label %378, !prof !9

378:                                              ; preds = %373
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3348, 0\0A.popsection", ""() #15, !srcloc !18
  unreachable

379:                                              ; preds = %367
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/nand/raw/nand_base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3352, 0\0A.popsection", ""() #15, !srcloc !19
  unreachable

380:                                              ; preds = %373, %369
  %381 = getelementptr i8, ptr %320, i32 %365
  %382 = sub i32 %322, %365
  br label %383

383:                                              ; preds = %380, %364, %362
  %384 = phi ptr [ null, %362 ], [ %381, %380 ], [ %320, %364 ]
  %385 = phi i32 [ %322, %362 ], [ %382, %380 ], [ %322, %364 ]
  tail call fastcc void @nand_wait_readrdy(ptr noundef %0) #15
  %386 = load i32, ptr %239, align 4
  %387 = icmp eq i32 %386, %269
  br i1 %387, label %405, label %388

388:                                              ; preds = %383
  %389 = add nuw nsw i32 %321, 1
  %390 = load i32, ptr %251, align 8
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %392, label %405

392:                                              ; preds = %388
  %393 = load ptr, ptr %252, align 8
  %394 = icmp eq ptr %393, null
  br i1 %394, label %449, label %395

395:                                              ; preds = %392
  %396 = tail call i32 %393(ptr noundef %0, i32 noundef %389) #15
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %449, label %398

398:                                              ; preds = %395
  store i32 %268, ptr %238, align 4
  store i32 %269, ptr %239, align 4
  store i64 %270, ptr %240, align 4
  br label %319

399:                                              ; preds = %307, %302, %296
  %400 = load ptr, ptr %245, align 8
  %401 = getelementptr i8, ptr %400, i32 %264
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %401, i32 %272, i1 false) #15
  %402 = load i32, ptr %241, align 8
  %403 = tail call i32 @llvm.umax.i32(i32 %259, i32 %402) #15
  %404 = sub i32 %262, %272
  br label %419

405:                                              ; preds = %388, %383
  %406 = phi i1 [ %260, %383 ], [ true, %388 ]
  %407 = tail call i32 @llvm.umax.i32(i32 %259, i32 %342) #15
  %408 = sub i32 %262, %272
  %409 = icmp eq i32 %321, 0
  br i1 %409, label %419, label %410

410:                                              ; preds = %405
  %411 = load i32, ptr %251, align 8
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %449

413:                                              ; preds = %410
  %414 = load ptr, ptr %252, align 8
  %415 = icmp eq ptr %414, null
  br i1 %415, label %449, label %416

416:                                              ; preds = %413
  %417 = tail call i32 %414(ptr noundef %0, i32 noundef 0) #15
  %418 = icmp slt i32 %417, 0
  br i1 %418, label %449, label %419

419:                                              ; preds = %416, %405, %399
  %420 = phi i32 [ %408, %405 ], [ %408, %416 ], [ %404, %399 ]
  %421 = phi i32 [ %385, %405 ], [ %385, %416 ], [ %261, %399 ]
  %422 = phi i1 [ %406, %405 ], [ %406, %416 ], [ %260, %399 ]
  %423 = phi i32 [ %407, %405 ], [ %407, %416 ], [ %403, %399 ]
  %424 = phi ptr [ %384, %405 ], [ %384, %416 ], [ null, %399 ]
  %425 = phi i32 [ %342, %405 ], [ %417, %416 ], [ %263, %399 ]
  %426 = getelementptr i8, ptr %258, i32 %272
  %427 = icmp eq i32 %420, 0
  br i1 %427, label %449, label %428

428:                                              ; preds = %419
  %429 = add i32 %265, 1
  %430 = load i32, ptr %225, align 8
  %431 = and i32 %430, %429
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %446

433:                                              ; preds = %428
  %434 = add i32 %267, 1
  %435 = load ptr, ptr %253, align 8
  %436 = icmp eq ptr %435, null
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  tail call void %435(ptr noundef %0, i32 noundef -1) #15
  br label %438

438:                                              ; preds = %437, %433
  store i32 -1, ptr %254, align 4
  %439 = load i32, ptr %209, align 8
  %440 = icmp ult i32 %439, %434
  br i1 %440, label %441, label %442, !prof !8

441:                                              ; preds = %438
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %446

442:                                              ; preds = %438
  store i32 %434, ptr %254, align 4
  %443 = load ptr, ptr %253, align 8
  %444 = icmp eq ptr %443, null
  br i1 %444, label %446, label %445

445:                                              ; preds = %442
  tail call void %443(ptr noundef %0, i32 noundef %434) #15
  br label %446

446:                                              ; preds = %445, %442, %441, %428
  %447 = phi i32 [ %267, %428 ], [ %434, %441 ], [ %434, %442 ], [ %434, %445 ]
  %448 = load i32, ptr %228, align 4
  br label %255

449:                                              ; preds = %419, %416, %413, %410, %395, %392, %345, %344
  %450 = phi ptr [ %320, %344 ], [ %320, %345 ], [ %384, %392 ], [ %384, %395 ], [ %424, %419 ], [ %384, %416 ], [ %384, %410 ], [ %384, %413 ]
  %451 = phi i32 [ %259, %344 ], [ %259, %345 ], [ %259, %392 ], [ %259, %395 ], [ %423, %419 ], [ %407, %416 ], [ %407, %410 ], [ %407, %413 ]
  %452 = phi i1 [ %260, %344 ], [ %260, %345 ], [ %260, %392 ], [ %260, %395 ], [ %422, %419 ], [ %406, %416 ], [ %406, %410 ], [ %406, %413 ]
  %453 = phi i32 [ %322, %344 ], [ %322, %345 ], [ %385, %392 ], [ %385, %395 ], [ %421, %419 ], [ %385, %416 ], [ %385, %410 ], [ %385, %413 ]
  %454 = phi i32 [ %262, %344 ], [ %262, %345 ], [ %262, %392 ], [ %262, %395 ], [ 0, %419 ], [ %408, %416 ], [ %408, %410 ], [ %408, %413 ]
  %455 = phi i32 [ %342, %344 ], [ %342, %345 ], [ %396, %395 ], [ -95, %392 ], [ %425, %419 ], [ %417, %416 ], [ -22, %410 ], [ -95, %413 ]
  %456 = load ptr, ptr %253, align 8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %459, label %458

458:                                              ; preds = %449
  tail call void %456(ptr noundef %0, i32 noundef -1) #15
  br label %459

459:                                              ; preds = %458, %449
  store i32 -1, ptr %254, align 4
  %460 = load i32, ptr %167, align 4
  %461 = sub i32 %460, %454
  store i32 %461, ptr %4, align 4
  %462 = icmp eq ptr %450, null
  br i1 %462, label %467, label %463

463:                                              ; preds = %459
  %464 = load i32, ptr %169, align 4
  %465 = sub i32 %464, %453
  %466 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 %465, ptr %466, align 4
  br label %467

467:                                              ; preds = %463, %459
  %468 = icmp slt i32 %455, 0
  %469 = select i1 %452, i32 -74, i32 %451
  %470 = select i1 %468, i32 %455, i32 %469
  br label %471

471:                                              ; preds = %467, %201, %162, %158, %48
  %472 = phi i32 [ -5, %48 ], [ %151, %158 ], [ %165, %162 ], [ -5, %201 ], [ %470, %467 ]
  %473 = load ptr, ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef %473) #15
  br label %474

474:                                              ; preds = %471, %7
  %475 = phi i32 [ %472, %471 ], [ -16, %7 ]
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %476

476:                                              ; preds = %474, %3
  %477 = phi i32 [ -524, %3 ], [ %475, %474 ]
  ret i32 %477
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_oob(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) #4 {
  %4 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef %12) #15
  %13 = load i32, ptr %2, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @nand_do_write_oob(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %23

21:                                               ; preds = %15
  %22 = tail call fastcc i32 @nand_do_write_ops(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %23

23:                                               ; preds = %21, %19, %10
  %24 = phi i32 [ 0, %10 ], [ %22, %21 ], [ %20, %19 ]
  %25 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %25) #15
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i32 [ %24, %23 ], [ -16, %3 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_sync(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef %9) #15
  br label %11

10:                                               ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4573, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %7
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %13) #15
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -524, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, i64 noundef %1, i64 noundef %2) #15
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -524, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_suspend(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %11 = load i8, ptr %10, align 8
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 0, %9 ], [ %7, %6 ]
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_resume(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0) #15
  %12 = load i8, ptr %3, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i8 [ %12, %11 ], [ %4, %7 ]
  %15 = and i8 %14, -2
  store i8 %15, ptr %3, align 8
  br label %18

16:                                               ; preds = %1
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.nand_resume) #18
  br label %18

18:                                               ; preds = %16, %13
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nand_shutdown(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 %4(ptr noundef %0) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %11 = load i8, ptr %10, align 8
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %9, %6
  tail call void @mutex_unlock(ptr noundef %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_block_isreserved(ptr noundef %0, i64 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @nand_isreserved_bbt(ptr noundef %0, i64 noundef %1) #15
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_block_isbad(ptr noundef %0, i64 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %7 = load i8, ptr %6, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef %12) #15
  %13 = zext i32 %4 to i64
  %14 = ashr i64 %1, %13
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, %15
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %26

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void %23(ptr noundef %0, i32 noundef %15) #15
  br label %26

26:                                               ; preds = %25, %20, %19
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @nand_isbad_bbt(ptr noundef %0, i64 noundef %1, i32 noundef 0) #15
  br label %34

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @nand_isbad_bbm(ptr noundef %0, i64 noundef %1) #15
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void %37(ptr noundef %0, i32 noundef -1) #15
  br label %40

40:                                               ; preds = %39, %34
  %41 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %41, align 4
  %42 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %42) #15
  br label %43

43:                                               ; preds = %40, %2
  %44 = phi i32 [ %35, %40 ], [ -16, %2 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_block_markbad(ptr noundef %0, i64 noundef %1) #4 {
  %3 = alloca %struct.erase_info, align 8
  %4 = tail call i32 @nand_block_isbad(ptr noundef %0, i64 noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @llvm.smin.i32(i32 %4, i32 0)
  br label %48

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 524288
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %14 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %14, align 8
  store i64 %1, ptr %3, align 8
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 18
  %16 = load i32, ptr %15, align 8
  %17 = zext i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = getelementptr inbounds %struct.erase_info, ptr %3, i32 0, i32 1
  store i64 %18, ptr %19, align 8
  %20 = call i32 @nand_erase_nand(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #15
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 27
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %28 = load ptr, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef %28) #15
  %29 = tail call i32 @nand_markbad_bbm(ptr noundef %0, i64 noundef %1) #15
  %30 = load ptr, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef %30) #15
  tail call void @mutex_unlock(ptr noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %32

31:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %48

32:                                               ; preds = %26, %8
  %33 = phi i32 [ 0, %8 ], [ %29, %26 ]
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 16
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @nand_markbad_bbt(ptr noundef %0, i64 noundef %1) #15
  %39 = icmp eq i32 %33, 0
  %40 = select i1 %39, i32 %38, i32 %33
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %37 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %41, %31, %6
  %49 = phi i32 [ %7, %6 ], [ -16, %31 ], [ 0, %44 ], [ %42, %41 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nanddev_mtd_max_bad_blocks(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_choose_interface_config(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %88, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nand_controller, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nand_controller_ops, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %88, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 8388608
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %88

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 192) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %88, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 4, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.nand_controller, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store i32 1, ptr %20, align 8
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 2, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.onfi_params, ptr %31, i32 0, i32 7
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 false) #15, !range !11
  %38 = sub nsw i32 31, %37
  %39 = icmp eq i16 %35, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.nand_controller, ptr %27, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store i32 0, ptr %20, align 8
  br label %60

43:                                               ; preds = %33, %26
  %44 = phi i32 [ 0, %26 ], [ %38, %33 ]
  %45 = getelementptr inbounds %struct.nand_controller_ops, ptr %29, i32 0, i32 3
  br label %49

46:                                               ; preds = %49
  %47 = add nsw i32 %50, -1
  %48 = icmp sgt i32 %50, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %44, %43 ], [ %47, %46 ]
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 1, i32 noundef %50) #15
  %51 = load ptr, ptr %45, align 4
  %52 = tail call i32 %51(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %20) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %81, label %46

54:                                               ; preds = %46
  %55 = load ptr, ptr %2, align 4
  %56 = load ptr, ptr %30, align 4
  %57 = getelementptr inbounds %struct.nand_controller, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store i32 0, ptr %20, align 8
  %59 = icmp eq ptr %56, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %54, %40
  %61 = phi ptr [ %42, %40 ], [ %58, %54 ]
  %62 = phi ptr [ %31, %40 ], [ %56, %54 ]
  %63 = getelementptr inbounds %struct.onfi_params, ptr %62, i32 0, i32 6
  %64 = load i16, ptr %63, align 2
  %65 = zext i16 %64 to i32
  %66 = tail call i32 @llvm.ctlz.i32(i32 %65, i1 false) #15, !range !11
  %67 = sub nsw i32 31, %66
  %68 = icmp eq i16 %64, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %60, %54
  %70 = phi ptr [ %58, %54 ], [ %61, %60 ]
  %71 = phi i32 [ 0, %54 ], [ %67, %60 ]
  %72 = getelementptr inbounds %struct.nand_controller_ops, ptr %70, i32 0, i32 3
  br label %76

73:                                               ; preds = %76
  %74 = add nsw i32 %77, -1
  %75 = icmp sgt i32 %77, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73, %69
  %77 = phi i32 [ %71, %69 ], [ %74, %73 ]
  tail call void @onfi_fill_interface_config(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 0, i32 noundef %77) #15
  %78 = load ptr, ptr %72, align 4
  %79 = tail call i32 %78(ptr noundef %0, i32 noundef -1, ptr noundef nonnull %20) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %73

81:                                               ; preds = %76, %49
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 8
  store ptr %20, ptr %82, align 8
  br label %88

83:                                               ; preds = %22
  %84 = tail call i32 %24(ptr noundef %0, ptr noundef nonnull %20) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %83, %73, %60
  %87 = phi i32 [ %84, %83 ], [ -95, %60 ], [ %79, %73 ]
  tail call void @kfree(ptr noundef nonnull %20) #15
  br label %88

88:                                               ; preds = %86, %83, %81, %18, %13, %9, %5, %1
  %89 = phi i32 [ 0, %13 ], [ -12, %18 ], [ %87, %86 ], [ 0, %83 ], [ 0, %81 ], [ 0, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_get_nand_secure_regions(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef null) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef 8) #15
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %38, label %9

9:                                                ; preds = %6
  %10 = lshr i32 %7, 1
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  store i8 %11, ptr %12, align 8
  %13 = shl i32 %10, 4
  %14 = and i32 %13, 4080
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #16
  %16 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %9
  %19 = load i8, ptr %12, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %35, %18
  %22 = phi ptr [ %37, %35 ], [ %15, %18 ]
  %23 = phi i32 [ %36, %35 ], [ 0, %18 ]
  %24 = phi i32 [ %31, %35 ], [ 0, %18 ]
  %25 = getelementptr %struct.nand_secure_region, ptr %22, i32 %24
  %26 = tail call i32 @of_property_read_u64_index(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %23, ptr noundef %25) #15
  %27 = or i32 %23, 1
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr %struct.nand_secure_region, ptr %28, i32 %24, i32 1
  %30 = tail call i32 @of_property_read_u64_index(ptr noundef %3, ptr noundef nonnull @.str.52, i32 noundef %27, ptr noundef %29) #15
  %31 = add nuw nsw i32 %24, 1
  %32 = load i8, ptr %12, align 8
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = add nuw nsw i32 %23, 2
  %37 = load ptr, ptr %16, align 4
  br label %21

38:                                               ; preds = %21, %18, %9, %6, %1
  %39 = phi i32 [ 0, %1 ], [ %7, %6 ], [ -12, %9 ], [ 0, %18 ], [ 0, %21 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_create_bbt(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_page_hwecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %14 = load ptr, ptr %13, align 8
  %15 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %4
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  br label %22

22:                                               ; preds = %29, %19
  %23 = phi i32 [ 0, %19 ], [ %34, %29 ]
  %24 = phi ptr [ %1, %19 ], [ %35, %29 ]
  %25 = phi i32 [ %10, %19 ], [ %33, %29 ]
  %26 = load ptr, ptr %20, align 4
  tail call void %26(ptr noundef %0, i32 noundef 0) #15
  %27 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %24, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %105

29:                                               ; preds = %22
  %30 = load ptr, ptr %21, align 8
  %31 = getelementptr i8, ptr %12, i32 %23
  %32 = tail call i32 %30(ptr noundef %0, ptr noundef %24, ptr noundef %31) #15
  %33 = add i32 %25, -1
  %34 = add i32 %23, %8
  %35 = getelementptr i8, ptr %24, i32 %6
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %22

37:                                               ; preds = %29, %17
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %39, i32 noundef %41, i1 noundef zeroext false, i1 noundef zeroext false)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %14, ptr noundef %45, i32 noundef 0, i32 noundef %47) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %44
  %51 = load i32, ptr %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %105, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %56 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %57 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %58 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %59

59:                                               ; preds = %99, %53
  %60 = phi i32 [ 0, %53 ], [ %102, %99 ]
  %61 = phi i32 [ 0, %53 ], [ %100, %99 ]
  %62 = phi ptr [ %1, %53 ], [ %103, %99 ]
  %63 = phi i32 [ %51, %53 ], [ %101, %99 ]
  %64 = load ptr, ptr %54, align 4
  %65 = getelementptr i8, ptr %14, i32 %60
  %66 = getelementptr i8, ptr %12, i32 %60
  %67 = tail call i32 %64(ptr noundef %0, ptr noundef %62, ptr noundef %65, ptr noundef %66) #15
  %68 = icmp eq i32 %67, -74
  br i1 %68, label %69, label %89

69:                                               ; preds = %59
  %70 = load i32, ptr %55, align 8
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %56, align 4
  %75 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %62, i32 noundef %6, i32 noundef %74) #15
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %92, label %77

77:                                               ; preds = %73
  %78 = sub i32 %74, %75
  %79 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %65, i32 noundef %8, i32 noundef %78) #15
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @llvm.memset.p0.i32(ptr align 1 %62, i8 -1, i32 %6, i1 false) #15
  br label %84

84:                                               ; preds = %83, %81
  %85 = icmp eq i32 %79, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @llvm.memset.p0.i32(ptr align 1 %65, i8 -1, i32 %8, i1 false) #15
  br label %87

87:                                               ; preds = %86, %84
  %88 = add nuw i32 %79, %75
  br label %89

89:                                               ; preds = %87, %59
  %90 = phi i32 [ %67, %59 ], [ %88, %87 ]
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89, %77, %73, %69
  %93 = load i32, ptr %58, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %58, align 4
  br label %99

95:                                               ; preds = %89
  %96 = load i32, ptr %57, align 4
  %97 = add i32 %96, %90
  store i32 %97, ptr %57, align 4
  %98 = tail call i32 @llvm.umax.i32(i32 %61, i32 %90)
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i32 [ %61, %92 ], [ %98, %95 ]
  %101 = add i32 %63, -1
  %102 = add i32 %60, %8
  %103 = getelementptr i8, ptr %62, i32 %6
  %104 = icmp eq i32 %101, 0
  br i1 %104, label %105, label %59

105:                                              ; preds = %99, %50, %44, %37, %22, %4
  %106 = phi i32 [ %15, %4 ], [ %42, %37 ], [ %48, %44 ], [ 0, %50 ], [ %100, %99 ], [ %27, %22 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_page_hwecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.nand_controller, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nand_controller_ops, ptr %23, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21, %4
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef %0, i32 noundef 128, i32 noundef 0, i32 noundef %3) #15
  br label %35

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %141

35:                                               ; preds = %32, %29
  %36 = icmp eq i32 %14, 0
  br i1 %36, label %91, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %39 = icmp ne i32 %10, 0
  %40 = getelementptr inbounds i8, ptr %7, i32 12
  %41 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  %42 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1, i32 0, i32 1
  %43 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %45 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  %47 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %49 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  br label %50

50:                                               ; preds = %83, %37
  %51 = phi ptr [ %1, %37 ], [ %89, %83 ]
  %52 = phi i32 [ %14, %37 ], [ %87, %83 ]
  %53 = phi i32 [ 0, %37 ], [ %88, %83 ]
  %54 = load ptr, ptr %38, align 4
  call void %54(ptr noundef %0, i32 noundef 1) #15
  %55 = icmp ne ptr %51, null
  %56 = and i1 %39, %55
  br i1 %56, label %57, label %141

57:                                               ; preds = %50
  %58 = load ptr, ptr %18, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.nand_controller, ptr %58, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.nand_controller_ops, ptr %62, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  store i32 0, ptr %40, align 4, !annotation !10
  store i32 3, ptr %7, align 4
  store i32 %10, ptr %41, align 4
  store ptr %51, ptr %42, align 4
  store i32 0, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %69 = load i32, ptr %44, align 4
  store i32 %69, ptr %8, align 4
  store ptr %7, ptr %45, align 4
  store i32 1, ptr %46, align 4
  %70 = load ptr, ptr %65, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %47, align 8
  %74 = icmp ult i32 %69, %73
  br i1 %74, label %80, label %75, !prof !9

75:                                               ; preds = %72
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %78

76:                                               ; preds = %64, %60, %57
  %77 = load ptr, ptr %48, align 4
  call void %77(ptr noundef %0, ptr noundef nonnull %51, i32 noundef %10) #15
  br label %83

78:                                               ; preds = %75, %68
  %79 = phi i32 [ -22, %75 ], [ -524, %68 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %141

80:                                               ; preds = %72
  %81 = call i32 %70(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %141

83:                                               ; preds = %80, %76
  %84 = load ptr, ptr %49, align 8
  %85 = getelementptr i8, ptr %16, i32 %53
  %86 = call i32 %84(ptr noundef %0, ptr noundef nonnull %51, ptr noundef %85) #15
  %87 = add i32 %52, -1
  %88 = add i32 %53, %12
  %89 = getelementptr i8, ptr %51, i32 %10
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %91, label %50

91:                                               ; preds = %83, %35
  %92 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %16, ptr noundef %93, i32 noundef 0, i32 noundef %95) #15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %91
  %99 = load ptr, ptr %92, align 4
  %100 = load i32, ptr %17, align 4
  %101 = icmp ne i32 %100, 0
  %102 = icmp ne ptr %99, null
  %103 = and i1 %102, %101
  br i1 %103, label %104, label %141

104:                                              ; preds = %98
  %105 = load ptr, ptr %18, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %131, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.nand_controller, ptr %105, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %131, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nand_controller_ops, ptr %109, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %116 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %116, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  %117 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  store i32 %100, ptr %117, align 4
  %118 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %99, ptr %118, align 4
  %119 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  store i32 0, ptr %119, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %120 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %121 = load i32, ptr %120, align 4
  store i32 %121, ptr %6, align 4
  %122 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %122, align 4
  %123 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %123, align 4
  %124 = load ptr, ptr %112, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %128 = load i32, ptr %127, align 8
  %129 = icmp ult i32 %121, %128
  br i1 %129, label %136, label %130, !prof !9

130:                                              ; preds = %126
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %134

131:                                              ; preds = %111, %107, %104
  %132 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %133 = load ptr, ptr %132, align 4
  call void %133(ptr noundef %0, ptr noundef nonnull %99, i32 noundef %100) #15
  br label %139

134:                                              ; preds = %130, %115
  %135 = phi i32 [ -524, %115 ], [ -22, %130 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %141

136:                                              ; preds = %126
  %137 = call i32 %124(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136, %131
  %140 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %141

141:                                              ; preds = %139, %136, %134, %98, %91, %80, %78, %50, %32
  %142 = phi i32 [ %140, %139 ], [ %33, %32 ], [ %96, %91 ], [ %137, %136 ], [ %79, %78 ], [ %135, %134 ], [ -22, %98 ], [ -22, %50 ], [ %81, %80 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_subpage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #4 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region, align 8
  %8 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store i64 0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = udiv i32 %1, %11
  %13 = add i32 %1, -1
  %14 = add i32 %13, %2
  %15 = udiv i32 %14, %11
  %16 = sub i32 %15, %12
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %19, %12
  %21 = mul i32 %17, %11
  %22 = mul i32 %17, %19
  %23 = mul i32 %12, %11
  %24 = getelementptr i8, ptr %3, i32 %23
  %25 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %4, i32 noundef %23, ptr noundef %24, i32 noundef %21)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %149

27:                                               ; preds = %5
  %28 = icmp sgt i32 %22, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i32 [ 0, %29 ], [ %40, %32 ]
  %34 = phi ptr [ %24, %29 ], [ %42, %32 ]
  %35 = load ptr, ptr %30, align 8
  %36 = load ptr, ptr %31, align 4
  %37 = getelementptr i8, ptr %36, i32 %33
  %38 = tail call i32 %35(ptr noundef %0, ptr noundef %34, ptr noundef %37) #15
  %39 = load i32, ptr %18, align 4
  %40 = add i32 %39, %33
  %41 = load i32, ptr %10, align 8
  %42 = getelementptr i8, ptr %34, i32 %41
  %43 = icmp slt i32 %40, %22
  br i1 %43, label %32, label %44

44:                                               ; preds = %32, %27
  %45 = call i32 @mtd_ooblayout_find_eccregion(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %149

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.mtd_oob_region, ptr %7, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, %22
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %53, ptr noundef %55, i32 noundef %57, i1 noundef zeroext false)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %149

60:                                               ; preds = %47
  %61 = load i32, ptr %7, align 8
  %62 = lshr i32 %9, 1
  %63 = and i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = and i32 %61, %64
  %66 = and i32 %61, %63
  %67 = add i32 %66, %22
  %68 = load i32, ptr %18, align 4
  %69 = mul i32 %68, %17
  %70 = add i32 %69, %61
  %71 = and i32 %70, %63
  %72 = add i32 %67, %71
  %73 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, %65
  %76 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %65
  %79 = call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %75, ptr noundef %78, i32 noundef %72, i1 noundef zeroext false)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %149

81:                                               ; preds = %60, %51
  %82 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %83, ptr noundef %85, i32 noundef %20, i32 noundef %22) #15
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %28, true
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %149, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %92 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %93 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %94 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %95 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %96 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %97

97:                                               ; preds = %142, %90
  %98 = phi i32 [ 0, %90 ], [ %143, %142 ]
  %99 = phi i32 [ 0, %90 ], [ %145, %142 ]
  %100 = phi ptr [ %24, %90 ], [ %147, %142 ]
  %101 = load ptr, ptr %91, align 4
  %102 = load ptr, ptr %82, align 8
  %103 = getelementptr i8, ptr %102, i32 %99
  %104 = load ptr, ptr %92, align 4
  %105 = getelementptr i8, ptr %104, i32 %99
  %106 = call i32 %101(ptr noundef %0, ptr noundef %100, ptr noundef %103, ptr noundef %105) #15
  %107 = icmp eq i32 %106, -74
  br i1 %107, label %108, label %132

108:                                              ; preds = %97
  %109 = load i32, ptr %93, align 8
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %135, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %10, align 8
  %114 = load ptr, ptr %82, align 8
  %115 = getelementptr i8, ptr %114, i32 %99
  %116 = load i32, ptr %18, align 4
  %117 = load i32, ptr %94, align 4
  %118 = call fastcc i32 @nand_check_erased_buf(ptr noundef %100, i32 noundef %113, i32 noundef %117) #15
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %112
  %121 = sub i32 %117, %118
  %122 = call fastcc i32 @nand_check_erased_buf(ptr noundef %115, i32 noundef %116, i32 noundef %121) #15
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = icmp eq i32 %118, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %124
  call void @llvm.memset.p0.i32(ptr align 1 %100, i8 -1, i32 %113, i1 false) #15
  br label %127

127:                                              ; preds = %126, %124
  %128 = icmp eq i32 %122, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  call void @llvm.memset.p0.i32(ptr align 1 %115, i8 -1, i32 %116, i1 false) #15
  br label %130

130:                                              ; preds = %129, %127
  %131 = add nuw i32 %122, %118
  br label %132

132:                                              ; preds = %130, %97
  %133 = phi i32 [ %106, %97 ], [ %131, %130 ]
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %120, %112, %108
  %136 = load i32, ptr %96, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %96, align 4
  br label %142

138:                                              ; preds = %132
  %139 = load i32, ptr %95, align 4
  %140 = add i32 %139, %133
  store i32 %140, ptr %95, align 4
  %141 = call i32 @llvm.umax.i32(i32 %98, i32 %133)
  br label %142

142:                                              ; preds = %138, %135
  %143 = phi i32 [ %98, %135 ], [ %141, %138 ]
  %144 = load i32, ptr %18, align 4
  %145 = add i32 %144, %99
  %146 = load i32, ptr %10, align 8
  %147 = getelementptr i8, ptr %100, i32 %146
  %148 = icmp slt i32 %145, %22
  br i1 %148, label %97, label %149

149:                                              ; preds = %142, %81, %60, %51, %44, %5
  %150 = phi i32 [ %25, %5 ], [ %45, %44 ], [ %58, %51 ], [ %79, %60 ], [ %86, %81 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_subpage_hwecc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #4 {
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca [1 x %struct.nand_op_instr], align 4
  %10 = alloca %struct.nand_operation, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = udiv i32 %1, %16
  %22 = add i32 %1, -1
  %23 = add i32 %22, %2
  %24 = udiv i32 %23, %16
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = udiv i32 %26, %20
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.nand_controller, ptr %29, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nand_controller_ops, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31, %6
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef %0, i32 noundef 128, i32 noundef 0, i32 noundef %5) #15
  br label %45

42:                                               ; preds = %35
  %43 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %5, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %163

45:                                               ; preds = %42, %39
  %46 = icmp sgt i32 %20, 0
  br i1 %46, label %47, label %113

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %49 = icmp ne i32 %16, 0
  %50 = getelementptr inbounds i8, ptr %9, i32 12
  %51 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1, i32 0, i32 1
  %53 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 2
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %55 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 1
  %56 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 2
  %57 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %58 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %59 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %60 = icmp eq i32 %4, 0
  br label %61

61:                                               ; preds = %107, %47
  %62 = phi i32 [ 0, %47 ], [ %111, %107 ]
  %63 = phi ptr [ %14, %47 ], [ %109, %107 ]
  %64 = phi ptr [ %12, %47 ], [ %110, %107 ]
  %65 = phi ptr [ %3, %47 ], [ %108, %107 ]
  %66 = load ptr, ptr %48, align 4
  call void %66(ptr noundef %0, i32 noundef 1) #15
  %67 = icmp ne ptr %65, null
  %68 = and i1 %49, %67
  br i1 %68, label %69, label %163

69:                                               ; preds = %61
  %70 = load ptr, ptr %28, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %88, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.nand_controller, ptr %70, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nand_controller_ops, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #15
  store i32 0, ptr %50, align 4, !annotation !10
  store i32 3, ptr %9, align 4
  store i32 %16, ptr %51, align 4
  store ptr %65, ptr %52, align 4
  store i32 0, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %81 = load i32, ptr %54, align 4
  store i32 %81, ptr %10, align 4
  store ptr %9, ptr %55, align 4
  store i32 1, ptr %56, align 4
  %82 = load ptr, ptr %77, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %57, align 8
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %92, label %87, !prof !9

87:                                               ; preds = %84
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %90

88:                                               ; preds = %76, %72, %69
  %89 = load ptr, ptr %58, align 4
  call void %89(ptr noundef %0, ptr noundef nonnull %65, i32 noundef %16) #15
  br label %95

90:                                               ; preds = %87, %80
  %91 = phi i32 [ -22, %87 ], [ -524, %80 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  br label %163

92:                                               ; preds = %84
  %93 = call i32 %82(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %163

95:                                               ; preds = %92, %88
  %96 = icmp ult i32 %62, %21
  %97 = icmp ugt i32 %62, %24
  %98 = or i1 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  call void @llvm.memset.p0.i32(ptr align 1 %63, i8 -1, i32 %18, i1 false)
  br label %103

100:                                              ; preds = %95
  %101 = load ptr, ptr %59, align 8
  %102 = call i32 %101(ptr noundef %0, ptr noundef nonnull %65, ptr noundef %63) #15
  br label %103

103:                                              ; preds = %100, %99
  %104 = select i1 %60, i1 true, i1 %96
  %105 = select i1 %104, i1 true, i1 %97
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call void @llvm.memset.p0.i32(ptr align 1 %64, i8 -1, i32 %27, i1 false)
  br label %107

107:                                              ; preds = %106, %103
  %108 = getelementptr i8, ptr %65, i32 %16
  %109 = getelementptr i8, ptr %63, i32 %18
  %110 = getelementptr i8, ptr %64, i32 %27
  %111 = add nuw nsw i32 %62, 1
  %112 = icmp eq i32 %111, %20
  br i1 %112, label %113, label %61

113:                                              ; preds = %107, %45
  %114 = load ptr, ptr %13, align 4
  %115 = load ptr, ptr %11, align 4
  %116 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %117 = load i32, ptr %116, align 8
  %118 = call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %114, ptr noundef %115, i32 noundef 0, i32 noundef %117) #15
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %163

120:                                              ; preds = %113
  %121 = load ptr, ptr %11, align 4
  %122 = load i32, ptr %25, align 4
  %123 = icmp ne i32 %122, 0
  %124 = icmp ne ptr %121, null
  %125 = and i1 %124, %123
  br i1 %125, label %126, label %163

126:                                              ; preds = %120
  %127 = load ptr, ptr %28, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %153, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.nand_controller, ptr %127, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.nand_controller_ops, ptr %131, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  %138 = getelementptr inbounds i8, ptr %7, i32 12
  store i32 0, ptr %138, align 4, !annotation !10
  store i32 3, ptr %7, align 4
  %139 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  store i32 %122, ptr %139, align 4
  %140 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1, i32 0, i32 1
  store ptr %121, ptr %140, align 4
  %141 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 2
  store i32 0, ptr %141, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %142 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %8, align 4
  %144 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  store ptr %7, ptr %144, align 4
  %145 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  store i32 1, ptr %145, align 4
  %146 = load ptr, ptr %134, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %137
  %149 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %150 = load i32, ptr %149, align 8
  %151 = icmp ult i32 %143, %150
  br i1 %151, label %158, label %152, !prof !9

152:                                              ; preds = %148
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %156

153:                                              ; preds = %133, %129, %126
  %154 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %155 = load ptr, ptr %154, align 4
  call void %155(ptr noundef %0, ptr noundef nonnull %121, i32 noundef %122) #15
  br label %161

156:                                              ; preds = %152, %137
  %157 = phi i32 [ -524, %137 ], [ -22, %152 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %163

158:                                              ; preds = %148
  %159 = call i32 %146(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %153
  %162 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %163

163:                                              ; preds = %161, %158, %156, %120, %113, %92, %90, %61, %42
  %164 = phi i32 [ %162, %161 ], [ %43, %42 ], [ %118, %113 ], [ %159, %158 ], [ %91, %90 ], [ %157, %156 ], [ -22, %120 ], [ -22, %61 ], [ %93, %92 ]
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_page_syndrome(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %8
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %120

21:                                               ; preds = %4
  %22 = icmp eq i32 %10, 0
  br i1 %22, label %105, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %26 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 10
  %27 = sub i32 0, %16
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 7
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %31

31:                                               ; preds = %100, %23
  %32 = phi i32 [ 0, %23 ], [ %101, %100 ]
  %33 = phi ptr [ %18, %23 ], [ %66, %100 ]
  %34 = phi ptr [ %1, %23 ], [ %103, %100 ]
  %35 = phi i32 [ %10, %23 ], [ %102, %100 ]
  %36 = load ptr, ptr %24, align 4
  tail call void %36(ptr noundef %0, i32 noundef 0) #15
  %37 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %34, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %120

39:                                               ; preds = %31
  %40 = load i32, ptr %11, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %33, i32 noundef %40, i1 noundef zeroext false, i1 noundef zeroext false)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %120

45:                                               ; preds = %42
  %46 = load i32, ptr %11, align 8
  %47 = getelementptr i8, ptr %33, i32 %46
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi ptr [ %47, %45 ], [ %33, %39 ]
  %50 = load ptr, ptr %24, align 4
  tail call void %50(ptr noundef %0, i32 noundef 2) #15
  %51 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %49, i32 noundef %8, i1 noundef zeroext false, i1 noundef zeroext false)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %48
  %54 = load ptr, ptr %25, align 4
  %55 = tail call i32 %54(ptr noundef %0, ptr noundef %34, ptr noundef %49, ptr noundef null) #15
  %56 = getelementptr i8, ptr %49, i32 %8
  %57 = load i32, ptr %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %56, i32 noundef %57, i1 noundef zeroext false, i1 noundef zeroext false)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %120

62:                                               ; preds = %59
  %63 = load i32, ptr %14, align 4
  %64 = getelementptr i8, ptr %56, i32 %63
  br label %65

65:                                               ; preds = %62, %53
  %66 = phi ptr [ %64, %62 ], [ %56, %53 ]
  %67 = icmp eq i32 %55, -74
  br i1 %67, label %68, label %90

68:                                               ; preds = %65
  %69 = load i32, ptr %26, align 8
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = load i32, ptr %5, align 8
  %74 = getelementptr i8, ptr %66, i32 %27
  %75 = load i32, ptr %28, align 4
  %76 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %34, i32 noundef %73, i32 noundef %75) #15
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %72
  %79 = sub i32 %75, %76
  %80 = tail call fastcc i32 @nand_check_erased_buf(ptr noundef %74, i32 noundef %16, i32 noundef %79) #15
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = icmp eq i32 %76, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  tail call void @llvm.memset.p0.i32(ptr align 1 %34, i8 -1, i32 %73, i1 false) #15
  br label %85

85:                                               ; preds = %84, %82
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %85
  tail call void @llvm.memset.p0.i32(ptr align 1 %74, i8 -1, i32 %16, i1 false) #15
  br label %88

88:                                               ; preds = %87, %85
  %89 = add nuw i32 %80, %76
  br label %90

90:                                               ; preds = %88, %65
  %91 = phi i32 [ %55, %65 ], [ %89, %88 ]
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %78, %72, %68
  %94 = load i32, ptr %30, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %30, align 4
  br label %100

96:                                               ; preds = %90
  %97 = load i32, ptr %29, align 4
  %98 = add i32 %97, %91
  store i32 %98, ptr %29, align 4
  %99 = tail call i32 @llvm.umax.i32(i32 %32, i32 %91)
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i32 [ %32, %93 ], [ %99, %96 ]
  %102 = add i32 %35, -1
  %103 = getelementptr i8, ptr %34, i32 %6
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %31

105:                                              ; preds = %100, %21
  %106 = phi ptr [ %18, %21 ], [ %66, %100 ]
  %107 = phi i32 [ 0, %21 ], [ %101, %100 ]
  %108 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %17, align 4
  %111 = ptrtoint ptr %106 to i32
  %112 = ptrtoint ptr %110 to i32
  %113 = sub i32 %112, %111
  %114 = add i32 %113, %109
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %105
  %117 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %106, i32 noundef %114, i1 noundef zeroext false, i1 noundef zeroext false)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %105
  br label %120

120:                                              ; preds = %119, %116, %59, %48, %42, %31, %4
  %121 = phi i32 [ %107, %119 ], [ %19, %4 ], [ %117, %116 ], [ %37, %31 ], [ %43, %42 ], [ %51, %48 ], [ %60, %59 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_page_syndrome(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca [1 x %struct.nand_op_instr], align 4
  %10 = alloca %struct.nand_operation, align 4
  %11 = alloca [1 x %struct.nand_op_instr], align 4
  %12 = alloca %struct.nand_operation, align 4
  %13 = alloca [1 x %struct.nand_op_instr], align 4
  %14 = alloca %struct.nand_operation, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.nand_controller, ptr %25, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nand_controller_ops, ptr %29, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %4
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef %0, i32 noundef 128, i32 noundef 0, i32 noundef %3) #15
  br label %41

38:                                               ; preds = %31
  %39 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %264

41:                                               ; preds = %38, %35
  %42 = icmp eq i32 %20, 0
  br i1 %42, label %216, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 13
  %45 = icmp ne i32 %16, 0
  %46 = getelementptr inbounds i8, ptr %13, i32 12
  %47 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 1
  %48 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 1, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %51 = getelementptr inbounds %struct.nand_operation, ptr %14, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nand_operation, ptr %14, i32 0, i32 2
  %53 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %56 = getelementptr inbounds i8, ptr %11, i32 12
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 1, i32 0, i32 1
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 2
  %60 = getelementptr inbounds %struct.nand_operation, ptr %12, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nand_operation, ptr %12, i32 0, i32 2
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  %63 = icmp ne i32 %18, 0
  %64 = getelementptr inbounds i8, ptr %9, i32 12
  %65 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1
  %66 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1, i32 0, i32 1
  %67 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 2
  %68 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 1
  %69 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 2
  %70 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  %71 = getelementptr inbounds i8, ptr %7, i32 12
  %72 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  %73 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1, i32 0, i32 1
  %74 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 2
  %75 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  %76 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  br label %77

77:                                               ; preds = %211, %43
  %78 = phi ptr [ %22, %43 ], [ %212, %211 ]
  %79 = phi ptr [ %1, %43 ], [ %214, %211 ]
  %80 = phi i32 [ %20, %43 ], [ %213, %211 ]
  %81 = load ptr, ptr %44, align 4
  call void %81(ptr noundef %0, i32 noundef 1) #15
  %82 = icmp ne ptr %79, null
  %83 = and i1 %45, %82
  br i1 %83, label %84, label %264

84:                                               ; preds = %77
  %85 = load ptr, ptr %24, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nand_controller, ptr %85, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.nand_controller_ops, ptr %89, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #15
  store i32 0, ptr %46, align 4, !annotation !10
  store i32 3, ptr %13, align 4
  store i32 %16, ptr %47, align 4
  store ptr %79, ptr %48, align 4
  store i32 0, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %96 = load i32, ptr %50, align 4
  store i32 %96, ptr %14, align 4
  store ptr %13, ptr %51, align 4
  store i32 1, ptr %52, align 4
  %97 = load ptr, ptr %92, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %53, align 8
  %101 = icmp ult i32 %96, %100
  br i1 %101, label %107, label %102, !prof !9

102:                                              ; preds = %99
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %105

103:                                              ; preds = %91, %87, %84
  %104 = load ptr, ptr %54, align 4
  call void %104(ptr noundef %0, ptr noundef nonnull %79, i32 noundef %16) #15
  br label %110

105:                                              ; preds = %102, %95
  %106 = phi i32 [ -22, %102 ], [ -524, %95 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #15
  br label %264

107:                                              ; preds = %99
  %108 = call i32 %97(ptr noundef %0, ptr noundef nonnull %14, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #15
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %264

110:                                              ; preds = %107, %103
  %111 = load i32, ptr %55, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %144, label %113

113:                                              ; preds = %110
  %114 = icmp eq ptr %78, null
  br i1 %114, label %264, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %24, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.nand_controller, ptr %116, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nand_controller_ops, ptr %120, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #15
  store i32 0, ptr %56, align 4, !annotation !10
  store i32 3, ptr %11, align 4
  store i32 %111, ptr %57, align 4
  store ptr %78, ptr %58, align 4
  store i32 0, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  %127 = load i32, ptr %50, align 4
  store i32 %127, ptr %12, align 4
  store ptr %11, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %128 = load ptr, ptr %123, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %53, align 8
  %132 = icmp ult i32 %127, %131
  br i1 %132, label %138, label %133, !prof !9

133:                                              ; preds = %130
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %136

134:                                              ; preds = %122, %118, %115
  %135 = load ptr, ptr %54, align 4
  call void %135(ptr noundef %0, ptr noundef nonnull %78, i32 noundef %111) #15
  br label %141

136:                                              ; preds = %133, %126
  %137 = phi i32 [ -22, %133 ], [ -524, %126 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #15
  br label %264

138:                                              ; preds = %130
  %139 = call i32 %128(ptr noundef %0, ptr noundef nonnull %12, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #15
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %264

141:                                              ; preds = %138, %134
  %142 = load i32, ptr %55, align 8
  %143 = getelementptr i8, ptr %78, i32 %142
  br label %144

144:                                              ; preds = %141, %110
  %145 = phi ptr [ %143, %141 ], [ %78, %110 ]
  %146 = load ptr, ptr %62, align 8
  %147 = call i32 %146(ptr noundef %0, ptr noundef nonnull %79, ptr noundef %145) #15
  %148 = icmp ne ptr %145, null
  %149 = and i1 %63, %148
  br i1 %149, label %150, label %264

150:                                              ; preds = %144
  %151 = load ptr, ptr %24, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %169, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.nand_controller, ptr %151, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %169, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.nand_controller_ops, ptr %155, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #15
  store i32 0, ptr %64, align 4, !annotation !10
  store i32 3, ptr %9, align 4
  store i32 %18, ptr %65, align 4
  store ptr %145, ptr %66, align 4
  store i32 0, ptr %67, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %162 = load i32, ptr %50, align 4
  store i32 %162, ptr %10, align 4
  store ptr %9, ptr %68, align 4
  store i32 1, ptr %69, align 4
  %163 = load ptr, ptr %158, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = load i32, ptr %53, align 8
  %167 = icmp ult i32 %162, %166
  br i1 %167, label %173, label %168, !prof !9

168:                                              ; preds = %165
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %171

169:                                              ; preds = %157, %153, %150
  %170 = load ptr, ptr %54, align 4
  call void %170(ptr noundef %0, ptr noundef nonnull %145, i32 noundef %18) #15
  br label %176

171:                                              ; preds = %168, %161
  %172 = phi i32 [ -22, %168 ], [ -524, %161 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  br label %264

173:                                              ; preds = %165
  %174 = call i32 %163(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %264

176:                                              ; preds = %173, %169
  %177 = getelementptr i8, ptr %145, i32 %18
  %178 = load i32, ptr %70, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %211, label %180

180:                                              ; preds = %176
  %181 = icmp eq ptr %177, null
  br i1 %181, label %264, label %182

182:                                              ; preds = %180
  %183 = load ptr, ptr %24, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %201, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.nand_controller, ptr %183, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.nand_controller_ops, ptr %187, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  store i32 0, ptr %71, align 4, !annotation !10
  store i32 3, ptr %7, align 4
  store i32 %178, ptr %72, align 4
  store ptr %177, ptr %73, align 4
  store i32 0, ptr %74, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %194 = load i32, ptr %50, align 4
  store i32 %194, ptr %8, align 4
  store ptr %7, ptr %75, align 4
  store i32 1, ptr %76, align 4
  %195 = load ptr, ptr %190, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %193
  %198 = load i32, ptr %53, align 8
  %199 = icmp ult i32 %194, %198
  br i1 %199, label %205, label %200, !prof !9

200:                                              ; preds = %197
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %203

201:                                              ; preds = %189, %185, %182
  %202 = load ptr, ptr %54, align 4
  call void %202(ptr noundef %0, ptr noundef nonnull %177, i32 noundef %178) #15
  br label %208

203:                                              ; preds = %200, %193
  %204 = phi i32 [ -22, %200 ], [ -524, %193 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %264

205:                                              ; preds = %197
  %206 = call i32 %195(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %264

208:                                              ; preds = %205, %201
  %209 = load i32, ptr %70, align 4
  %210 = getelementptr i8, ptr %177, i32 %209
  br label %211

211:                                              ; preds = %208, %176
  %212 = phi ptr [ %210, %208 ], [ %177, %176 ]
  %213 = add i32 %80, -1
  %214 = getelementptr i8, ptr %79, i32 %16
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %216, label %77

216:                                              ; preds = %211, %41
  %217 = phi ptr [ %22, %41 ], [ %212, %211 ]
  %218 = load i32, ptr %23, align 4
  %219 = load ptr, ptr %21, align 4
  %220 = ptrtoint ptr %217 to i32
  %221 = ptrtoint ptr %219 to i32
  %222 = sub i32 %221, %220
  %223 = add i32 %222, %218
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %262, label %225

225:                                              ; preds = %216
  %226 = icmp eq ptr %217, null
  br i1 %226, label %264, label %227

227:                                              ; preds = %225
  %228 = load ptr, ptr %24, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %254, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.nand_controller, ptr %228, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %254, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.nand_controller_ops, ptr %232, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %254, label %238

238:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %239 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %239, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  %240 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  store i32 %223, ptr %240, align 4
  %241 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %217, ptr %241, align 4
  %242 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  store i32 0, ptr %242, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %243 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %244 = load i32, ptr %243, align 4
  store i32 %244, ptr %6, align 4
  %245 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %245, align 4
  %246 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %246, align 4
  %247 = load ptr, ptr %235, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %257, label %249

249:                                              ; preds = %238
  %250 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %251 = load i32, ptr %250, align 8
  %252 = icmp ult i32 %244, %251
  br i1 %252, label %259, label %253, !prof !9

253:                                              ; preds = %249
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %257

254:                                              ; preds = %234, %230, %227
  %255 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %256 = load ptr, ptr %255, align 4
  call void %256(ptr noundef %0, ptr noundef nonnull %217, i32 noundef %223) #15
  br label %262

257:                                              ; preds = %253, %238
  %258 = phi i32 [ -524, %238 ], [ -22, %253 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %264

259:                                              ; preds = %249
  %260 = call i32 %247(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %259, %254, %216
  %263 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %264

264:                                              ; preds = %262, %259, %257, %225, %205, %203, %180, %173, %171, %144, %138, %136, %113, %107, %105, %77, %38
  %265 = phi i32 [ %263, %262 ], [ %39, %38 ], [ %260, %259 ], [ %106, %105 ], [ %137, %136 ], [ %172, %171 ], [ %204, %203 ], [ %258, %257 ], [ -22, %225 ], [ -22, %180 ], [ -22, %144 ], [ -22, %113 ], [ -22, %77 ], [ %206, %205 ], [ %174, %173 ], [ %139, %138 ], [ %108, %107 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_page_raw_syndrome(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  br label %20

20:                                               ; preds = %50, %17
  %21 = phi i32 [ %15, %17 ], [ %52, %50 ]
  %22 = phi ptr [ %10, %17 ], [ %51, %50 ]
  %23 = phi ptr [ %1, %17 ], [ %27, %50 ]
  %24 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %23, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %23, i32 %6
  %28 = load i32, ptr %18, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %22, i32 noundef %28, i1 noundef zeroext false, i1 noundef zeroext false)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  %34 = load i32, ptr %18, align 8
  %35 = getelementptr i8, ptr %22, i32 %34
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi ptr [ %35, %33 ], [ %22, %26 ]
  %38 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %37, i32 noundef %8, i1 noundef zeroext false, i1 noundef zeroext false)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %37, i32 %8
  %42 = load i32, ptr %19, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %41, i32 noundef %42, i1 noundef zeroext false, i1 noundef zeroext false)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, ptr %19, align 4
  %49 = getelementptr i8, ptr %41, i32 %48
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi ptr [ %49, %47 ], [ %41, %40 ]
  %52 = add nsw i32 %21, -1
  %53 = icmp sgt i32 %21, 1
  br i1 %53, label %20, label %54

54:                                               ; preds = %50, %13
  %55 = phi ptr [ %10, %13 ], [ %51, %50 ]
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %9, align 4
  %59 = ptrtoint ptr %55 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %60, %59
  %62 = add i32 %61, %57
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %55, i32 noundef %62, i1 noundef zeroext false, i1 noundef zeroext false)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64, %54
  br label %68

68:                                               ; preds = %67, %64, %44, %36, %30, %20, %4
  %69 = phi i32 [ 0, %67 ], [ %11, %4 ], [ %65, %64 ], [ %45, %44 ], [ %38, %36 ], [ %31, %30 ], [ %24, %20 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_page_raw_syndrome(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca [1 x %struct.nand_op_instr], align 4
  %10 = alloca %struct.nand_operation, align 4
  %11 = alloca [1 x %struct.nand_op_instr], align 4
  %12 = alloca %struct.nand_operation, align 4
  %13 = alloca [1 x %struct.nand_op_instr], align 4
  %14 = alloca %struct.nand_operation, align 4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.nand_controller, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nand_controller_ops, ptr %27, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25, %4
  %34 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef %0, i32 noundef 128, i32 noundef 0, i32 noundef %3) #15
  br label %39

36:                                               ; preds = %29
  %37 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %3, i32 noundef 0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %259

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %211

43:                                               ; preds = %39
  %44 = freeze i32 %16
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds i8, ptr %13, i32 12
  %47 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 1
  %48 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 1, i32 0, i32 1
  %49 = getelementptr inbounds %struct.nand_op_instr, ptr %13, i32 0, i32 2
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %51 = getelementptr inbounds %struct.nand_operation, ptr %14, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nand_operation, ptr %14, i32 0, i32 2
  %53 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %54 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %55 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %56 = getelementptr inbounds i8, ptr %11, i32 12
  %57 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 1
  %58 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 1, i32 0, i32 1
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %11, i32 0, i32 2
  %60 = getelementptr inbounds %struct.nand_operation, ptr %12, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nand_operation, ptr %12, i32 0, i32 2
  %62 = icmp ne i32 %18, 0
  %63 = getelementptr inbounds i8, ptr %9, i32 12
  %64 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1
  %65 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 1, i32 0, i32 1
  %66 = getelementptr inbounds %struct.nand_op_instr, ptr %9, i32 0, i32 2
  %67 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 1
  %68 = getelementptr inbounds %struct.nand_operation, ptr %10, i32 0, i32 2
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  %70 = getelementptr inbounds i8, ptr %7, i32 12
  %71 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  %72 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1, i32 0, i32 1
  %73 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 2
  %74 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  %75 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  br i1 %45, label %259, label %76

76:                                               ; preds = %207, %43
  %77 = phi i32 [ %209, %207 ], [ %41, %43 ]
  %78 = phi ptr [ %208, %207 ], [ %20, %43 ]
  %79 = phi ptr [ %108, %207 ], [ %1, %43 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %259, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %22, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.nand_controller, ptr %82, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %100, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nand_controller_ops, ptr %86, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #15
  store i32 0, ptr %46, align 4, !annotation !10
  store i32 3, ptr %13, align 4
  store i32 %44, ptr %47, align 4
  store ptr %79, ptr %48, align 4
  store i32 0, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %93 = load i32, ptr %50, align 4
  store i32 %93, ptr %14, align 4
  store ptr %13, ptr %51, align 4
  store i32 1, ptr %52, align 4
  %94 = load ptr, ptr %89, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load i32, ptr %53, align 8
  %98 = icmp ult i32 %93, %97
  br i1 %98, label %104, label %99, !prof !9

99:                                               ; preds = %96
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %102

100:                                              ; preds = %88, %84, %81
  %101 = load ptr, ptr %54, align 4
  call void %101(ptr noundef %0, ptr noundef nonnull %79, i32 noundef %44) #15
  br label %107

102:                                              ; preds = %99, %92
  %103 = phi i32 [ -22, %99 ], [ -524, %92 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #15
  br label %259

104:                                              ; preds = %96
  %105 = call i32 %94(ptr noundef %0, ptr noundef nonnull %14, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #15
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %259

107:                                              ; preds = %104, %100
  %108 = getelementptr i8, ptr %79, i32 %44
  %109 = load i32, ptr %55, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %142, label %111

111:                                              ; preds = %107
  %112 = icmp eq ptr %78, null
  br i1 %112, label %259, label %113

113:                                              ; preds = %111
  %114 = load ptr, ptr %22, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %132, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.nand_controller, ptr %114, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.nand_controller_ops, ptr %118, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #15
  store i32 0, ptr %56, align 4, !annotation !10
  store i32 3, ptr %11, align 4
  store i32 %109, ptr %57, align 4
  store ptr %78, ptr %58, align 4
  store i32 0, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  %125 = load i32, ptr %50, align 4
  store i32 %125, ptr %12, align 4
  store ptr %11, ptr %60, align 4
  store i32 1, ptr %61, align 4
  %126 = load ptr, ptr %121, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %53, align 8
  %130 = icmp ult i32 %125, %129
  br i1 %130, label %136, label %131, !prof !9

131:                                              ; preds = %128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %134

132:                                              ; preds = %120, %116, %113
  %133 = load ptr, ptr %54, align 4
  call void %133(ptr noundef %0, ptr noundef nonnull %78, i32 noundef %109) #15
  br label %139

134:                                              ; preds = %131, %124
  %135 = phi i32 [ -22, %131 ], [ -524, %124 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #15
  br label %259

136:                                              ; preds = %128
  %137 = call i32 %126(ptr noundef %0, ptr noundef nonnull %12, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #15
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %259

139:                                              ; preds = %136, %132
  %140 = load i32, ptr %55, align 8
  %141 = getelementptr i8, ptr %78, i32 %140
  br label %142

142:                                              ; preds = %139, %107
  %143 = phi ptr [ %141, %139 ], [ %78, %107 ]
  %144 = icmp ne ptr %143, null
  %145 = and i1 %62, %144
  br i1 %145, label %146, label %259

146:                                              ; preds = %142
  %147 = load ptr, ptr %22, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.nand_controller, ptr %147, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.nand_controller_ops, ptr %151, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #15
  store i32 0, ptr %63, align 4, !annotation !10
  store i32 3, ptr %9, align 4
  store i32 %18, ptr %64, align 4
  store ptr %143, ptr %65, align 4
  store i32 0, ptr %66, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %158 = load i32, ptr %50, align 4
  store i32 %158, ptr %10, align 4
  store ptr %9, ptr %67, align 4
  store i32 1, ptr %68, align 4
  %159 = load ptr, ptr %154, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %53, align 8
  %163 = icmp ult i32 %158, %162
  br i1 %163, label %169, label %164, !prof !9

164:                                              ; preds = %161
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %167

165:                                              ; preds = %153, %149, %146
  %166 = load ptr, ptr %54, align 4
  call void %166(ptr noundef %0, ptr noundef nonnull %143, i32 noundef %18) #15
  br label %172

167:                                              ; preds = %164, %157
  %168 = phi i32 [ -22, %164 ], [ -524, %157 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  br label %259

169:                                              ; preds = %161
  %170 = call i32 %159(ptr noundef %0, ptr noundef nonnull %10, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %259

172:                                              ; preds = %169, %165
  %173 = getelementptr i8, ptr %143, i32 %18
  %174 = load i32, ptr %69, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %207, label %176

176:                                              ; preds = %172
  %177 = icmp eq ptr %173, null
  br i1 %177, label %259, label %178

178:                                              ; preds = %176
  %179 = load ptr, ptr %22, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %197, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.nand_controller, ptr %179, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %197, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.nand_controller_ops, ptr %183, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  store i32 0, ptr %70, align 4, !annotation !10
  store i32 3, ptr %7, align 4
  store i32 %174, ptr %71, align 4
  store ptr %173, ptr %72, align 4
  store i32 0, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %190 = load i32, ptr %50, align 4
  store i32 %190, ptr %8, align 4
  store ptr %7, ptr %74, align 4
  store i32 1, ptr %75, align 4
  %191 = load ptr, ptr %186, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %199, label %193

193:                                              ; preds = %189
  %194 = load i32, ptr %53, align 8
  %195 = icmp ult i32 %190, %194
  br i1 %195, label %201, label %196, !prof !9

196:                                              ; preds = %193
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %199

197:                                              ; preds = %185, %181, %178
  %198 = load ptr, ptr %54, align 4
  call void %198(ptr noundef %0, ptr noundef nonnull %173, i32 noundef %174) #15
  br label %204

199:                                              ; preds = %196, %189
  %200 = phi i32 [ -22, %196 ], [ -524, %189 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %259

201:                                              ; preds = %193
  %202 = call i32 %191(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %259

204:                                              ; preds = %201, %197
  %205 = load i32, ptr %69, align 4
  %206 = getelementptr i8, ptr %173, i32 %205
  br label %207

207:                                              ; preds = %204, %172
  %208 = phi ptr [ %206, %204 ], [ %173, %172 ]
  %209 = add nsw i32 %77, -1
  %210 = icmp sgt i32 %77, 1
  br i1 %210, label %76, label %211

211:                                              ; preds = %207, %39
  %212 = phi ptr [ %20, %39 ], [ %208, %207 ]
  %213 = load i32, ptr %21, align 4
  %214 = load ptr, ptr %19, align 4
  %215 = ptrtoint ptr %212 to i32
  %216 = ptrtoint ptr %214 to i32
  %217 = sub i32 %216, %215
  %218 = add i32 %217, %213
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %257, label %220

220:                                              ; preds = %211
  %221 = icmp eq ptr %212, null
  br i1 %221, label %259, label %222

222:                                              ; preds = %220
  %223 = load ptr, ptr %22, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %249, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.nand_controller, ptr %223, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %249, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.nand_controller_ops, ptr %227, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %249, label %233

233:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %234 = getelementptr inbounds i8, ptr %5, i32 12
  store i32 0, ptr %234, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  %235 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  store i32 %218, ptr %235, align 4
  %236 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %212, ptr %236, align 4
  %237 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  store i32 0, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %238 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %239 = load i32, ptr %238, align 4
  store i32 %239, ptr %6, align 4
  %240 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  store ptr %5, ptr %240, align 4
  %241 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  store i32 1, ptr %241, align 4
  %242 = load ptr, ptr %230, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %252, label %244

244:                                              ; preds = %233
  %245 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %246 = load i32, ptr %245, align 8
  %247 = icmp ult i32 %239, %246
  br i1 %247, label %254, label %248, !prof !9

248:                                              ; preds = %244
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %252

249:                                              ; preds = %229, %225, %222
  %250 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %251 = load ptr, ptr %250, align 4
  call void %251(ptr noundef %0, ptr noundef nonnull %212, i32 noundef %218) #15
  br label %257

252:                                              ; preds = %248, %233
  %253 = phi i32 [ -524, %233 ], [ -22, %248 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %259

254:                                              ; preds = %244
  %255 = call i32 %242(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254, %249, %211
  %258 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %259

259:                                              ; preds = %257, %254, %252, %220, %201, %199, %176, %169, %167, %142, %136, %134, %111, %104, %102, %76, %43, %36
  %260 = phi i32 [ %258, %257 ], [ %37, %36 ], [ %255, %254 ], [ %103, %102 ], [ %135, %134 ], [ %168, %167 ], [ %200, %199 ], [ %253, %252 ], [ -22, %220 ], [ -22, %43 ], [ -22, %176 ], [ -22, %142 ], [ -22, %111 ], [ -22, %76 ], [ %202, %201 ], [ %170, %169 ], [ %137, %136 ], [ %105, %104 ]
  ret i32 %260
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_oob_syndrome(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef null, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = add i32 %14, %12
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  br label %26

26:                                               ; preds = %47, %23
  %27 = phi i32 [ %4, %23 ], [ %49, %47 ]
  %28 = phi i1 [ true, %23 ], [ false, %47 ]
  %29 = phi i32 [ 0, %23 ], [ %50, %47 ]
  %30 = phi ptr [ %16, %23 ], [ %48, %47 ]
  br i1 %28, label %43, label %31

31:                                               ; preds = %26
  %32 = mul i32 %29, %24
  %33 = add i32 %32, %14
  %34 = load i32, ptr %25, align 4
  %35 = icmp ugt i32 %34, 512
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = tail call i32 @nand_change_read_column_op(ptr noundef %0, i32 noundef %33, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  br label %40

38:                                               ; preds = %31
  %39 = tail call i32 @nand_read_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %33, ptr noundef null, i32 noundef 0)
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40, %26
  %44 = tail call i32 @llvm.smin.i32(i32 %27, i32 %12)
  %45 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %30, i32 noundef %44, i1 noundef zeroext false, i1 noundef zeroext false)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %30, i32 %44
  %49 = sub i32 %27, %44
  %50 = add nuw nsw i32 %29, 1
  %51 = load i32, ptr %20, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %26, label %53

53:                                               ; preds = %47, %19
  %54 = phi ptr [ %16, %19 ], [ %48, %47 ]
  %55 = phi i32 [ %4, %19 ], [ %49, %47 ]
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = tail call i32 @nand_read_data_op(ptr noundef %0, ptr noundef %54, i32 noundef %55, i1 noundef zeroext false, i1 noundef zeroext false)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %57, %43, %40, %2
  %62 = phi i32 [ 0, %60 ], [ %17, %2 ], [ %58, %57 ], [ %45, %43 ], [ %41, %40 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_oob_syndrome(ptr noundef %0, i32 noundef %1) #4 {
  %3 = alloca [1 x %struct.nand_op_instr], align 4
  %4 = alloca %struct.nand_operation, align 4
  %5 = alloca [1 x %struct.nand_op_instr], align 4
  %6 = alloca %struct.nand_operation, align 4
  %7 = alloca [1 x %struct.nand_op_instr], align 4
  %8 = alloca %struct.nand_operation, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, %16
  %18 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq i32 %13, 0
  %27 = icmp eq i32 %16, 0
  %28 = select i1 %26, i1 %27, i1 false
  %29 = add i32 %19, %17
  %30 = mul i32 %23, %29
  %31 = select i1 %28, i32 %30, i32 %19
  %32 = select i1 %28, i32 0, i32 %23
  %33 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %21
  %36 = icmp ugt i32 %31, %35
  br i1 %36, label %201, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nand_controller, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nand_controller_ops, ptr %43, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41, %37
  %50 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 8
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef %0, i32 noundef 128, i32 noundef %31, i32 noundef %1) #15
  br label %55

52:                                               ; preds = %45
  %53 = tail call fastcc i32 @nand_exec_prog_page_op(ptr noundef %0, i32 noundef %1, i32 noundef %31, ptr noundef null, i32 noundef 0, i1 noundef zeroext false) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %201

55:                                               ; preds = %52, %49
  %56 = icmp sgt i32 %32, 0
  br i1 %56, label %57, label %158

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, ptr %7, i32 12
  %59 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1
  %60 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 1, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nand_op_instr, ptr %7, i32 0, i32 2
  %62 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %63 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 1
  %64 = getelementptr inbounds %struct.nand_operation, ptr %8, i32 0, i32 2
  %65 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %66 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %67 = getelementptr inbounds i8, ptr %5, i32 12
  %68 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1
  %69 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 1, i32 0, i32 1
  %70 = getelementptr inbounds %struct.nand_op_instr, ptr %5, i32 0, i32 2
  %71 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 1
  %72 = getelementptr inbounds %struct.nand_operation, ptr %6, i32 0, i32 2
  br label %73

73:                                               ; preds = %153, %57
  %74 = phi i32 [ %21, %57 ], [ %155, %153 ]
  %75 = phi ptr [ %25, %57 ], [ %154, %153 ]
  %76 = phi i1 [ true, %57 ], [ false, %153 ]
  %77 = phi i32 [ 0, %57 ], [ %156, %153 ]
  br i1 %76, label %122, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %33, align 4
  %80 = icmp ult i32 %79, 513
  br i1 %80, label %81, label %117

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 -1, ptr %9, align 4
  br label %82

82:                                               ; preds = %111, %81
  %83 = phi i32 [ %19, %81 ], [ %114, %111 ]
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %82
  %86 = call i32 @llvm.smin.i32(i32 %83, i32 4)
  %87 = load ptr, ptr %38, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %109, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.nand_controller, ptr %87, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %109, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.nand_controller_ops, ptr %91, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #15
  store i32 0, ptr %58, align 4, !annotation !10
  store i32 3, ptr %7, align 4
  store i32 %86, ptr %59, align 4
  store ptr %9, ptr %60, align 4
  store i32 0, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %98 = load i32, ptr %62, align 4
  store i32 %98, ptr %8, align 4
  store ptr %7, ptr %63, align 4
  store i32 1, ptr %64, align 4
  %99 = load ptr, ptr %94, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %65, align 8
  %103 = icmp ult i32 %98, %102
  br i1 %103, label %105, label %104, !prof !9

104:                                              ; preds = %101
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %107

105:                                              ; preds = %101
  %106 = call i32 %99(ptr noundef %0, ptr noundef nonnull %8, i1 noundef zeroext false) #15
  br label %107

107:                                              ; preds = %105, %104, %97
  %108 = phi i32 [ -22, %104 ], [ %106, %105 ], [ -524, %97 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #15
  br label %111

109:                                              ; preds = %93, %89, %85
  %110 = load ptr, ptr %66, align 4
  call void %110(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %86) #15
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %113 = icmp eq i32 %112, 0
  %114 = sub nsw i32 %83, %86
  br i1 %113, label %82, label %115

115:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %201

116:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %122

117:                                              ; preds = %78
  %118 = mul i32 %77, %29
  %119 = add i32 %118, %19
  %120 = call i32 @nand_change_write_column_op(ptr noundef %0, i32 noundef %119, ptr noundef null, i32 noundef 0, i1 noundef zeroext false)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %201

122:                                              ; preds = %117, %116, %73
  %123 = call i32 @llvm.smin.i32(i32 %74, i32 %17)
  %124 = icmp ne i32 %123, 0
  %125 = icmp ne ptr %75, null
  %126 = and i1 %125, %124
  br i1 %126, label %127, label %201

127:                                              ; preds = %122
  %128 = load ptr, ptr %38, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.nand_controller, ptr %128, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.nand_controller_ops, ptr %132, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  store i32 0, ptr %67, align 4, !annotation !10
  store i32 3, ptr %5, align 4
  store i32 %123, ptr %68, align 4
  store ptr %75, ptr %69, align 4
  store i32 0, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %139 = load i32, ptr %62, align 4
  store i32 %139, ptr %6, align 4
  store ptr %5, ptr %71, align 4
  store i32 1, ptr %72, align 4
  %140 = load ptr, ptr %135, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = load i32, ptr %65, align 8
  %144 = icmp ult i32 %139, %143
  br i1 %144, label %150, label %145, !prof !9

145:                                              ; preds = %142
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %148

146:                                              ; preds = %134, %130, %127
  %147 = load ptr, ptr %66, align 4
  call void %147(ptr noundef %0, ptr noundef nonnull %75, i32 noundef %123) #15
  br label %153

148:                                              ; preds = %145, %138
  %149 = phi i32 [ -22, %145 ], [ -524, %138 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %201

150:                                              ; preds = %142
  %151 = call i32 %140(ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %201

153:                                              ; preds = %150, %146
  %154 = getelementptr i8, ptr %75, i32 %123
  %155 = sub i32 %74, %123
  %156 = add nuw nsw i32 %77, 1
  %157 = icmp eq i32 %156, %32
  br i1 %157, label %158, label %73

158:                                              ; preds = %153, %55
  %159 = phi ptr [ %25, %55 ], [ %154, %153 ]
  %160 = phi i32 [ %21, %55 ], [ %155, %153 ]
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %199

162:                                              ; preds = %158
  %163 = icmp eq ptr %159, null
  br i1 %163, label %201, label %164

164:                                              ; preds = %162
  %165 = load ptr, ptr %38, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %191, label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.nand_controller, ptr %165, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %191, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.nand_controller_ops, ptr %169, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %191, label %175

175:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %176 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %176, align 4, !annotation !10
  store i32 3, ptr %3, align 4
  %177 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1
  store i32 %160, ptr %177, align 4
  %178 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 1, i32 0, i32 1
  store ptr %159, ptr %178, align 4
  %179 = getelementptr inbounds %struct.nand_op_instr, ptr %3, i32 0, i32 2
  store i32 0, ptr %179, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  %180 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %181 = load i32, ptr %180, align 4
  store i32 %181, ptr %4, align 4
  %182 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 1
  store ptr %3, ptr %182, align 4
  %183 = getelementptr inbounds %struct.nand_operation, ptr %4, i32 0, i32 2
  store i32 1, ptr %183, align 4
  %184 = load ptr, ptr %172, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %188 = load i32, ptr %187, align 8
  %189 = icmp ult i32 %181, %188
  br i1 %189, label %196, label %190, !prof !9

190:                                              ; preds = %186
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %194

191:                                              ; preds = %171, %167, %164
  %192 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 5
  %193 = load ptr, ptr %192, align 4
  call void %193(ptr noundef %0, ptr noundef nonnull %159, i32 noundef %160) #15
  br label %199

194:                                              ; preds = %190, %175
  %195 = phi i32 [ -524, %175 ], [ -22, %190 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %201

196:                                              ; preds = %186
  %197 = call i32 %184(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196, %191, %158
  %200 = call i32 @nand_prog_page_end_op(ptr noundef %0)
  br label %201

201:                                              ; preds = %199, %196, %194, %162, %150, %148, %122, %117, %115, %52, %2
  %202 = phi i32 [ %200, %199 ], [ %53, %52 ], [ %197, %196 ], [ %112, %115 ], [ %149, %148 ], [ %195, %194 ], [ -22, %2 ], [ -22, %162 ], [ -22, %122 ], [ %151, %150 ], [ %120, %117 ]
  ret i32 %202
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_find_eccregion(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_read_page_swecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 12
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 16
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %3) #15
  %18 = icmp eq i32 %10, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %29, %21 ]
  %23 = phi ptr [ %1, %19 ], [ %30, %21 ]
  %24 = phi i32 [ %10, %19 ], [ %28, %21 ]
  %25 = load ptr, ptr %20, align 8
  %26 = getelementptr i8, ptr %12, i32 %22
  %27 = tail call i32 %25(ptr noundef %0, ptr noundef %23, ptr noundef %26) #15
  %28 = add i32 %24, -1
  %29 = add i32 %22, %8
  %30 = getelementptr i8, ptr %23, i32 %6
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %21

32:                                               ; preds = %21, %4
  %33 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %36 = load i32, ptr %35, align 8
  %37 = tail call i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr noundef %14, ptr noundef %34, i32 noundef 0, i32 noundef %36) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %32
  %40 = load i32, ptr %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 15
  %44 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 52, i32 1
  br label %46

46:                                               ; preds = %63, %42
  %47 = phi i32 [ 0, %42 ], [ %66, %63 ]
  %48 = phi i32 [ 0, %42 ], [ %64, %63 ]
  %49 = phi ptr [ %1, %42 ], [ %67, %63 ]
  %50 = phi i32 [ %40, %42 ], [ %65, %63 ]
  %51 = load ptr, ptr %43, align 4
  %52 = getelementptr i8, ptr %14, i32 %47
  %53 = getelementptr i8, ptr %12, i32 %47
  %54 = tail call i32 %51(ptr noundef %0, ptr noundef %49, ptr noundef %52, ptr noundef %53) #15
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, ptr %45, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %45, align 4
  br label %63

59:                                               ; preds = %46
  %60 = load i32, ptr %44, align 4
  %61 = add i32 %60, %54
  store i32 %61, ptr %44, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %48, i32 %54)
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %48, %56 ], [ %62, %59 ]
  %65 = add i32 %50, -1
  %66 = add i32 %47, %8
  %67 = getelementptr i8, ptr %49, i32 %6
  %68 = icmp eq i32 %65, 0
  br i1 %68, label %69, label %46

69:                                               ; preds = %63, %39, %32
  %70 = phi i32 [ %37, %32 ], [ 0, %39 ], [ %64, %63 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nand_write_page_swecc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 14
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %1, %14 ], [ %25, %16 ]
  %18 = phi i32 [ %10, %14 ], [ %23, %16 ]
  %19 = phi i32 [ 0, %14 ], [ %24, %16 ]
  %20 = load ptr, ptr %15, align 8
  %21 = getelementptr i8, ptr %12, i32 %19
  %22 = tail call i32 %20(ptr noundef %0, ptr noundef %17, ptr noundef %21) #15
  %23 = add i32 %18, -1
  %24 = add i32 %19, %8
  %25 = getelementptr i8, ptr %17, i32 %6
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %16

27:                                               ; preds = %16, %4
  %28 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr noundef %12, ptr noundef %29, i32 noundef 0, i32 noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef %3) #15
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi i32 [ %37, %34 ], [ %32, %27 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawnand_erase(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %4, %6
  %8 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %9, %11
  %13 = or i32 %12, %7
  %14 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %13, %15
  %17 = lshr i32 %16, %11
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %18, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void %26(ptr noundef %0, i32 noundef %18) #15
  br label %29

29:                                               ; preds = %28, %23, %22
  %30 = tail call i32 @nand_erase_op(ptr noundef %0, i32 noundef %17)
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef %0, i32 noundef -1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %36, align 4
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rawnand_markbad(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = add i32 %12, %8
  %14 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = mul i32 %13, %15
  %17 = add i32 %16, %6
  %18 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = mul i32 %17, %19
  %21 = add i32 %20, %4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = mul nuw i64 %22, %25
  %27 = tail call i32 @nand_markbad_bbm(ptr noundef %0, i64 noundef %26)
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rawnand_isbad(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void %11(ptr noundef %0, i32 noundef %3) #15
  br label %14

14:                                               ; preds = %13, %8, %7
  %15 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nand_pos, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %21
  %25 = add i32 %24, %20
  %26 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = mul i32 %25, %27
  %29 = add i32 %28, %18
  %30 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %29, %31
  %33 = add i32 %32, %16
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %34, %37
  %39 = tail call fastcc i32 @nand_isbad_bbm(ptr noundef %0, i64 noundef %38)
  %40 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %14
  tail call void %41(ptr noundef %0, i32 noundef -1) #15
  br label %44

44:                                               ; preds = %43, %14
  %45 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %45, align 4
  %46 = icmp ne i32 %39, 0
  ret i1 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nand_do_write_ops(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %13 = select i1 %10, ptr %11, ptr %12
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %16, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %22, align 4
  %23 = icmp eq i32 %6, 0
  br i1 %23, label %272, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = zext i32 %27 to i64
  %29 = and i64 %28, %1
  %30 = icmp eq i64 %29, 0
  %31 = and i32 %27, %6
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.nand_do_write_ops) #18
  br label %272

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 31
  %38 = load i8, ptr %37, align 8
  %39 = zext i8 %38 to i32
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %63, label %41

41:                                               ; preds = %36
  %42 = zext i32 %6 to i64
  %43 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = add i64 %42, %1
  br label %46

46:                                               ; preds = %57, %41
  %47 = phi i1 [ true, %41 ], [ %59, %57 ]
  %48 = phi i32 [ 0, %41 ], [ %58, %57 ]
  %49 = getelementptr %struct.nand_secure_region, ptr %44, i32 %48
  %50 = load i64, ptr %49, align 8
  %51 = icmp ugt i64 %45, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr %struct.nand_secure_region, ptr %44, i32 %48, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %50
  %56 = icmp ugt i64 %55, %1
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %46
  %58 = add nuw nsw i32 %48, 1
  %59 = icmp ult i32 %58, %39
  %60 = icmp eq i32 %58, %39
  br i1 %60, label %61, label %46

61:                                               ; preds = %57, %52
  %62 = phi i1 [ %47, %52 ], [ %59, %57 ]
  br i1 %62, label %272, label %63

63:                                               ; preds = %61, %36
  %64 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  %67 = trunc i64 %1 to i32
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 19
  %70 = load i32, ptr %69, align 4
  %71 = zext i32 %70 to i64
  %72 = ashr i64 %1, %71
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %75 = load i32, ptr %74, align 8
  %76 = icmp ult i32 %75, %73
  br i1 %76, label %77, label %78, !prof !8

77:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %84

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 %73, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  tail call void %81(ptr noundef %0, i32 noundef %73) #15
  br label %84

84:                                               ; preds = %83, %78, %77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !10
  %85 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %86 = load i32, ptr %85, align 8
  %87 = and i32 %86, 1024
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %97

90:                                               ; preds = %84
  %91 = call i32 @nand_status_op(ptr noundef %0, ptr noundef nonnull %4) #15
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %264

94:                                               ; preds = %90
  %95 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %96 = icmp slt i8 %95, 0
  br i1 %96, label %97, label %264

97:                                               ; preds = %94, %89
  %98 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 17
  %99 = load i32, ptr %98, align 4
  %100 = zext i32 %99 to i64
  %101 = ashr i64 %1, %100
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 20
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, %102
  %106 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 24, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = sext i32 %107 to i64
  %109 = shl i64 %108, %100
  %110 = icmp slt i64 %109, %1
  br i1 %110, label %117, label %111

111:                                              ; preds = %97
  %112 = load i32, ptr %5, align 4
  %113 = zext i32 %112 to i64
  %114 = add i64 %113, %1
  %115 = icmp slt i64 %109, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 -1, ptr %106, align 4
  br label %117

117:                                              ; preds = %116, %111, %97
  br i1 %19, label %126, label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %7, align 4
  %124 = add i32 %123, %120
  %125 = icmp ugt i32 %124, %14
  br i1 %125, label %264, label %126

126:                                              ; preds = %122, %118, %117
  %127 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 25
  %128 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 22
  %129 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 23
  %130 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 20
  %131 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 21
  %132 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 33, i32 17
  %133 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %134 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  br label %135

135:                                              ; preds = %254, %126
  %136 = phi ptr [ %16, %126 ], [ %198, %254 ]
  %137 = phi ptr [ %18, %126 ], [ %236, %254 ]
  %138 = phi i32 [ %8, %126 ], [ %199, %254 ]
  %139 = phi i32 [ %6, %126 ], [ %233, %254 ]
  %140 = phi i32 [ %68, %126 ], [ 0, %254 ]
  %141 = phi i32 [ %105, %126 ], [ %239, %254 ]
  %142 = phi i32 [ %102, %126 ], [ %237, %254 ]
  %143 = phi i32 [ %73, %126 ], [ %242, %254 ]
  br label %144

144:                                              ; preds = %235, %135
  %145 = phi ptr [ %198, %235 ], [ %136, %135 ]
  %146 = phi ptr [ %236, %235 ], [ %137, %135 ]
  %147 = phi i32 [ %199, %235 ], [ %138, %135 ]
  %148 = phi i32 [ %233, %235 ], [ %139, %135 ]
  %149 = phi i32 [ 0, %235 ], [ %140, %135 ]
  %150 = phi i32 [ %239, %235 ], [ %141, %135 ]
  %151 = phi i32 [ %237, %235 ], [ %142, %135 ]
  %152 = load i32, ptr %64, align 4
  %153 = icmp eq i32 %149, 0
  %154 = icmp ult i32 %148, %152
  %155 = xor i1 %153, true
  %156 = select i1 %155, i1 true, i1 %154
  br i1 %156, label %179, label %157

157:                                              ; preds = %144
  %158 = load i32, ptr %85, align 8
  %159 = and i32 %158, 1048576
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %157
  %162 = ptrtoint ptr %146 to i32
  %163 = icmp ugt ptr %146, inttoptr (i32 -1073741825 to ptr)
  %164 = load ptr, ptr @high_memory, align 4
  %165 = icmp ult ptr %146, %164
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = add i32 %162, 1073741824
  %169 = lshr i32 %168, 12
  %170 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %171 = add i32 %170, %169
  %172 = call i32 @pfn_valid(i32 noundef %171) #15
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr %127, align 8
  %176 = add i32 %175, -1
  %177 = and i32 %176, %162
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %174, %167, %161, %144
  %180 = sub i32 %152, %149
  %181 = call i32 @llvm.smin.i32(i32 %180, i32 %148)
  %182 = select i1 %156, i32 %181, i32 %152
  store i32 -1, ptr %106, align 4
  %183 = load ptr, ptr %128, align 8
  %184 = load i32, ptr %64, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %183, i8 -1, i32 %184, i1 false)
  %185 = getelementptr i8, ptr %183, i32 %149
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %185, ptr align 1 %146, i32 %182, i1 false)
  br label %186

186:                                              ; preds = %179, %174, %157
  %187 = phi i32 [ %182, %179 ], [ %152, %174 ], [ %152, %157 ]
  %188 = phi ptr [ %183, %179 ], [ %146, %174 ], [ %146, %157 ]
  %189 = icmp eq ptr %145, null
  br i1 %189, label %194, label %190, !prof !9

190:                                              ; preds = %186
  %191 = call i32 @llvm.umin.i32(i32 %147, i32 %14)
  %192 = call fastcc ptr @nand_fill_oob(ptr noundef %0, ptr noundef nonnull %145, i32 noundef %191, ptr noundef %2)
  %193 = sub i32 %147, %191
  br label %197

194:                                              ; preds = %186
  %195 = load ptr, ptr %129, align 4
  %196 = load i32, ptr %12, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %195, i8 -1, i32 %196, i1 false)
  br label %197

197:                                              ; preds = %194, %190
  %198 = phi ptr [ %192, %190 ], [ null, %194 ]
  %199 = phi i32 [ %193, %190 ], [ %147, %194 ]
  %200 = load i32, ptr %2, align 4
  %201 = icmp eq i32 %200, 2
  %202 = load i32, ptr %85, align 8
  %203 = and i32 %202, 512
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %197
  %206 = load ptr, ptr %130, align 8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  br i1 %153, label %209, label %215

209:                                              ; preds = %208
  %210 = load i32, ptr %64, align 4
  %211 = icmp ugt i32 %210, %187
  %212 = zext i1 %211 to i32
  br label %213

213:                                              ; preds = %209, %205, %197
  %214 = phi i32 [ %212, %209 ], [ 0, %205 ], [ 0, %197 ]
  br i1 %201, label %216, label %219, !prof !8

215:                                              ; preds = %208
  br i1 %201, label %216, label %223, !prof !8

216:                                              ; preds = %215, %213
  %217 = load ptr, ptr %132, align 4
  %218 = call i32 %217(ptr noundef %0, ptr noundef %188, i32 noundef %21, i32 noundef %150) #15
  br label %229

219:                                              ; preds = %213
  %220 = icmp eq i32 %214, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %219
  %222 = load ptr, ptr %130, align 8
  br label %223

223:                                              ; preds = %221, %215
  %224 = phi ptr [ %222, %221 ], [ %206, %215 ]
  %225 = call i32 %224(ptr noundef %0, i32 noundef %149, i32 noundef %187, ptr noundef %188, i32 noundef %21, i32 noundef %150) #15
  br label %229

226:                                              ; preds = %219
  %227 = load ptr, ptr %131, align 4
  %228 = call i32 %227(ptr noundef %0, ptr noundef %188, i32 noundef %21, i32 noundef %150) #15
  br label %229

229:                                              ; preds = %226, %223, %216
  %230 = phi i32 [ %218, %216 ], [ %225, %223 ], [ %228, %226 ]
  %231 = icmp sgt i32 %230, -1
  br i1 %231, label %232, label %255

232:                                              ; preds = %229
  %233 = sub i32 %148, %187
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %255, label %235

235:                                              ; preds = %232
  %236 = getelementptr i8, ptr %146, i32 %187
  %237 = add i32 %151, 1
  %238 = load i32, ptr %103, align 8
  %239 = and i32 %238, %237
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %144

241:                                              ; preds = %235
  %242 = add i32 %143, 1
  %243 = load ptr, ptr %133, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call void %243(ptr noundef %0, i32 noundef -1) #15
  br label %246

246:                                              ; preds = %245, %241
  store i32 -1, ptr %134, align 4
  %247 = load i32, ptr %74, align 8
  %248 = icmp ult i32 %247, %242
  br i1 %248, label %249, label %250, !prof !8

249:                                              ; preds = %246
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 9, ptr noundef null) #15
  br label %254

250:                                              ; preds = %246
  store i32 %242, ptr %134, align 4
  %251 = load ptr, ptr %133, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  call void %251(ptr noundef %0, i32 noundef %242) #15
  br label %254

254:                                              ; preds = %253, %250, %249
  br label %135

255:                                              ; preds = %232, %229
  %256 = phi i32 [ 0, %232 ], [ %148, %229 ]
  %257 = call i32 @llvm.smin.i32(i32 %230, i32 0) #15
  %258 = load i32, ptr %5, align 4
  %259 = sub i32 %258, %256
  store i32 %259, ptr %22, align 4
  %260 = icmp eq ptr %198, null
  br i1 %260, label %264, label %261, !prof !9

261:                                              ; preds = %255
  %262 = load i32, ptr %7, align 4
  %263 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 %262, ptr %263, align 4
  br label %264

264:                                              ; preds = %261, %255, %122, %94, %93
  %265 = phi i32 [ %257, %261 ], [ %257, %255 ], [ -5, %94 ], [ -22, %122 ], [ -5, %93 ]
  %266 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 2
  %267 = load ptr, ptr %266, align 8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  call void %267(ptr noundef %0, i32 noundef -1) #15
  br label %270

270:                                              ; preds = %269, %264
  %271 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  store i32 -1, ptr %271, align 4
  br label %272

272:                                              ; preds = %270, %61, %34, %3
  %273 = phi i32 [ -22, %34 ], [ %265, %270 ], [ 0, %3 ], [ -5, %61 ]
  ret i32 %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nand_wait_readrdy(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca [1 x %struct.nand_op_instr], align 4
  %3 = alloca %struct.nand_operation, align 4
  %4 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %73, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nand_interface_config, ptr %10, i32 0, i32 1, i32 1, i32 0, i32 3
  br label %20

15:                                               ; preds = %8
  %16 = icmp eq i32 %11, 1
  %17 = getelementptr inbounds %struct.nand_interface_config, ptr %10, i32 0, i32 1, i32 1
  %18 = select i1 %16, ptr %17, ptr inttoptr (i32 -22 to ptr)
  %19 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %18, i32 0, i32 3
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi ptr [ %14, %13 ], [ %19, %15 ]
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, 999999999
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %23, i32 0) #17, !srcloc !12
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = extractvalue { i64, i32 } %24, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %23, i64 %25, i32 %26) #17, !srcloc !13
  %28 = extractvalue { i64, i32 } %27, 0
  %29 = lshr i64 %28, 29
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 32
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.nand_controller, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.nand_controller_ops, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  %43 = getelementptr inbounds i8, ptr %2, i32 8
  store i64 0, ptr %43, align 4, !annotation !10
  store i32 4, ptr %2, align 4
  %44 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 1
  %45 = add i32 %30, 999999999
  %46 = udiv i32 %45, 1000000000
  store i32 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.nand_op_instr, ptr %2, i32 0, i32 2
  store i32 0, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  %48 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 28
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %3, align 4
  %50 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 1
  store ptr %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nand_operation, ptr %3, i32 0, i32 2
  store i32 1, ptr %51, align 4
  %52 = load ptr, ptr %39, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nand_device, ptr %0, i32 0, i32 1, i32 8
  %56 = load i32, ptr %55, align 8
  %57 = icmp ult i32 %49, %56
  br i1 %57, label %69, label %58, !prof !9

58:                                               ; preds = %54
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 139, i32 noundef 9, ptr noundef null) #15
  br label %68

59:                                               ; preds = %38, %34, %20
  %60 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nand_chip, ptr %0, i32 0, i32 5, i32 15
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #15
  br label %73

67:                                               ; preds = %59
  tail call void @nand_wait_ready(ptr noundef %0) #15
  br label %73

68:                                               ; preds = %58, %42
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %72

69:                                               ; preds = %54
  %70 = call i32 %52(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %69, %68
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3387, i32 noundef 9, ptr noundef null) #15
  br label %73

73:                                               ; preds = %72, %69, %67, %63, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_get_databytes(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_wait_ready(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_isreserved_bbt(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_markbad_bbt(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i32 0, i32 33}
!12 = !{i64 574824, i64 574851, i64 574873, i64 574901}
!13 = !{i64 575232, i64 575259, i64 575292, i64 575313, i64 575340, i64 575366}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148060368, i64 2148060648, i64 2148060982, i64 2148061316}
!16 = !{i64 2153469213, i64 2153469710, i64 2153469250, i64 2153469306, i64 2153469340, i64 2153469364, i64 2153469405, i64 2153469426, i64 2153469454, i64 2153469488}
!17 = !{i64 2153470166, i64 2153470663, i64 2153470203, i64 2153470259, i64 2153470293, i64 2153470317, i64 2153470358, i64 2153470379, i64 2153470407, i64 2153470441}
!18 = !{i64 2153918033, i64 2153918531, i64 2153918070, i64 2153918126, i64 2153918160, i64 2153918184, i64 2153918225, i64 2153918246, i64 2153918274, i64 2153918308}
!19 = !{i64 2153918989, i64 2153919487, i64 2153919026, i64 2153919082, i64 2153919116, i64 2153919140, i64 2153919181, i64 2153919202, i64 2153919230, i64 2153919264}
