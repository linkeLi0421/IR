; ModuleID = '/llk/IR/drivers/mtd/mtdcore.c_pt.bc'
source_filename = "../drivers/mtd/mtdcore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_table_mutex:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_table_mutex\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_table_mutex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mtd_next_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__mtd_next_device\22\09\09\09\09\09"
module asm "__kstrtabns___mtd_next_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_wunit_to_pairing_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_wunit_to_pairing_info\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_wunit_to_pairing_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_pairing_info_to_wunit:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_pairing_info_to_wunit\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_pairing_info_to_wunit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_pairing_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_pairing_groups\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_pairing_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_device_parse_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_device_parse_register\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_device_parse_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mtd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mtd_user\22\09\09\09\09\09"
module asm "__kstrtabns_register_mtd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_mtd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_mtd_user\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_mtd_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22get_mtd_device\22\09\09\09\09\09"
module asm "__kstrtabns_get_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_mtd_device\22\09\09\09\09\09"
module asm "__kstrtabns___get_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_mtd_device_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22get_mtd_device_nm\22\09\09\09\09\09"
module asm "__kstrtabns_get_mtd_device_nm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22put_mtd_device\22\09\09\09\09\09"
module asm "__kstrtabns_put_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_mtd_device\22\09\09\09\09\09"
module asm "__kstrtabns___put_mtd_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_erase\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_point:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_point\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_unpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_unpoint\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_unpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_get_unmapped_area\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_read\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_write\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_panic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_panic_write\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_panic_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_read_oob:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_read_oob\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_read_oob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_write_oob:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_write_oob\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_write_oob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_ecc:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_ecc\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_ecc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_free\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_find_eccregion:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_find_eccregion\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_find_eccregion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_get_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_get_eccbytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_get_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_set_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_set_eccbytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_set_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_get_databytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_get_databytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_get_databytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_set_databytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_set_databytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_set_databytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_count_freebytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_count_freebytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_count_freebytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_ooblayout_count_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_ooblayout_count_eccbytes\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_ooblayout_count_eccbytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_get_fact_prot_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_get_fact_prot_info\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_get_fact_prot_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_read_fact_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_read_fact_prot_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_read_fact_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_get_user_prot_info:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_get_user_prot_info\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_get_user_prot_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_read_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_read_user_prot_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_read_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_write_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_write_user_prot_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_write_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_lock_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_lock_user_prot_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_lock_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_erase_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_erase_user_prot_reg\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_erase_user_prot_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_lock\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_is_locked\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_block_isreserved:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_block_isreserved\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_block_isreserved:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_block_isbad:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_block_isbad\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_block_isbad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_block_markbad:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_block_markbad\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_block_markbad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_writev:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_writev\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_writev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_kmalloc_up_to:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_kmalloc_up_to\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_kmalloc_up_to:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_expert_analysis_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_expert_analysis_warning\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_expert_analysis_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_expert_analysis_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_expert_analysis_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_expert_analysis_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_pairing_scheme = type { i32, ptr, ptr }
%struct.mtd_pairing_info = type { i32, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_master = type { %struct.mutex, %struct.mutex, i8 }
%struct.mtd_notifier = type { ptr, ptr, %struct.list_head }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_oob_ops = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.mtd_oob_region = type { i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.otp_info = type { i32, i32, i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }

@mtd_table_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mtd_table_mutex, i64 12), ptr getelementptr (i8, ptr @mtd_table_mutex, i64 12) } }, align 4
@__kstrtab_mtd_table_mutex = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_table_mutex = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_table_mutex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_table_mutex to i32), ptr @__kstrtab_mtd_table_mutex, ptr @__kstrtabns_mtd_table_mutex }, section "___ksymtab_gpl+mtd_table_mutex", align 4
@mtd_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__kstrtab___mtd_next_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___mtd_next_device = external dso_local constant [0 x i8], align 1
@__ksymtab___mtd_next_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mtd_next_device to i32), ptr @__kstrtab___mtd_next_device, ptr @__kstrtabns___mtd_next_device }, section "___ksymtab_gpl+__mtd_next_device", align 4
@__kstrtab_mtd_wunit_to_pairing_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_wunit_to_pairing_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_wunit_to_pairing_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_wunit_to_pairing_info to i32), ptr @__kstrtab_mtd_wunit_to_pairing_info, ptr @__kstrtabns_mtd_wunit_to_pairing_info }, section "___ksymtab_gpl+mtd_wunit_to_pairing_info", align 4
@__kstrtab_mtd_pairing_info_to_wunit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_pairing_info_to_wunit = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_pairing_info_to_wunit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_pairing_info_to_wunit to i32), ptr @__kstrtab_mtd_pairing_info_to_wunit, ptr @__kstrtabns_mtd_pairing_info_to_wunit }, section "___ksymtab_gpl+mtd_pairing_info_to_wunit", align 4
@__kstrtab_mtd_pairing_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_pairing_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_pairing_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_pairing_groups to i32), ptr @__kstrtab_mtd_pairing_groups, ptr @__kstrtabns_mtd_pairing_groups }, section "___ksymtab_gpl+mtd_pairing_groups", align 4
@add_mtd_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [22 x i8] c"drivers/mtd/mtdcore.c\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"MTD already registered\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\014%s: unlock failed, writes may not work\0A\00", align 1
@mtd_devtype = internal constant %struct.device_type { ptr @.str.7, ptr @mtd_groups, ptr null, ptr null, ptr @mtd_release, ptr null }, align 4
@mtd_class = internal global %struct.class { ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtd_cls_pm_ops, ptr null }, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"mtd%d\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mtd%dro\00", align 1
@mtd_notifiers = internal global %struct.list_head { ptr @mtd_notifiers, ptr @mtd_notifiers }, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"\015Removing MTD device #%d (%s) with use count %d\0A\00", align 1
@mtd_device_parse_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_mtd_device_parse_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_device_parse_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_device_parse_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_device_parse_register to i32), ptr @__kstrtab_mtd_device_parse_register, ptr @__kstrtabns_mtd_device_parse_register }, section "___ksymtab_gpl+mtd_device_parse_register", align 4
@__kstrtab_mtd_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_device_unregister to i32), ptr @__kstrtab_mtd_device_unregister, ptr @__kstrtabns_mtd_device_unregister }, section "___ksymtab_gpl+mtd_device_unregister", align 4
@__kstrtab_register_mtd_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mtd_user = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mtd_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mtd_user to i32), ptr @__kstrtab_register_mtd_user, ptr @__kstrtabns_register_mtd_user }, section "___ksymtab_gpl+register_mtd_user", align 4
@__kstrtab_unregister_mtd_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_mtd_user = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_mtd_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_mtd_user to i32), ptr @__kstrtab_unregister_mtd_user, ptr @__kstrtabns_unregister_mtd_user }, section "___ksymtab_gpl+unregister_mtd_user", align 4
@__kstrtab_get_mtd_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_mtd_device = external dso_local constant [0 x i8], align 1
@__ksymtab_get_mtd_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_mtd_device to i32), ptr @__kstrtab_get_mtd_device, ptr @__kstrtabns_get_mtd_device }, section "___ksymtab_gpl+get_mtd_device", align 4
@__kstrtab___get_mtd_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_mtd_device = external dso_local constant [0 x i8], align 1
@__ksymtab___get_mtd_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_mtd_device to i32), ptr @__kstrtab___get_mtd_device, ptr @__kstrtabns___get_mtd_device }, section "___ksymtab_gpl+__get_mtd_device", align 4
@__kstrtab_get_mtd_device_nm = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_mtd_device_nm = external dso_local constant [0 x i8], align 1
@__ksymtab_get_mtd_device_nm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_mtd_device_nm to i32), ptr @__kstrtab_get_mtd_device_nm, ptr @__kstrtabns_get_mtd_device_nm }, section "___ksymtab_gpl+get_mtd_device_nm", align 4
@__kstrtab_put_mtd_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_mtd_device = external dso_local constant [0 x i8], align 1
@__ksymtab_put_mtd_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_mtd_device to i32), ptr @__kstrtab_put_mtd_device, ptr @__kstrtabns_put_mtd_device }, section "___ksymtab_gpl+put_mtd_device", align 4
@__kstrtab___put_mtd_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_mtd_device = external dso_local constant [0 x i8], align 1
@__ksymtab___put_mtd_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_mtd_device to i32), ptr @__kstrtab___put_mtd_device, ptr @__kstrtabns___put_mtd_device }, section "___ksymtab_gpl+__put_mtd_device", align 4
@__kstrtab_mtd_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_erase to i32), ptr @__kstrtab_mtd_erase, ptr @__kstrtabns_mtd_erase }, section "___ksymtab_gpl+mtd_erase", align 4
@__kstrtab_mtd_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_point = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_point to i32), ptr @__kstrtab_mtd_point, ptr @__kstrtabns_mtd_point }, section "___ksymtab_gpl+mtd_point", align 4
@__kstrtab_mtd_unpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_unpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_unpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_unpoint to i32), ptr @__kstrtab_mtd_unpoint, ptr @__kstrtabns_mtd_unpoint }, section "___ksymtab_gpl+mtd_unpoint", align 4
@__kstrtab_mtd_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_get_unmapped_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_get_unmapped_area to i32), ptr @__kstrtab_mtd_get_unmapped_area, ptr @__kstrtabns_mtd_get_unmapped_area }, section "___ksymtab_gpl+mtd_get_unmapped_area", align 4
@__kstrtab_mtd_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_read to i32), ptr @__kstrtab_mtd_read, ptr @__kstrtabns_mtd_read }, section "___ksymtab_gpl+mtd_read", align 4
@__kstrtab_mtd_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_write to i32), ptr @__kstrtab_mtd_write, ptr @__kstrtabns_mtd_write }, section "___ksymtab_gpl+mtd_write", align 4
@__kstrtab_mtd_panic_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_panic_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_panic_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_panic_write to i32), ptr @__kstrtab_mtd_panic_write, ptr @__kstrtabns_mtd_panic_write }, section "___ksymtab_gpl+mtd_panic_write", align 4
@__kstrtab_mtd_read_oob = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_read_oob = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_read_oob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_read_oob to i32), ptr @__kstrtab_mtd_read_oob, ptr @__kstrtabns_mtd_read_oob }, section "___ksymtab_gpl+mtd_read_oob", align 4
@__kstrtab_mtd_write_oob = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_write_oob = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_write_oob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_write_oob to i32), ptr @__kstrtab_mtd_write_oob, ptr @__kstrtabns_mtd_write_oob }, section "___ksymtab_gpl+mtd_write_oob", align 4
@__kstrtab_mtd_ooblayout_ecc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_ecc = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_ecc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_ecc to i32), ptr @__kstrtab_mtd_ooblayout_ecc, ptr @__kstrtabns_mtd_ooblayout_ecc }, section "___ksymtab_gpl+mtd_ooblayout_ecc", align 4
@__kstrtab_mtd_ooblayout_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_free to i32), ptr @__kstrtab_mtd_ooblayout_free, ptr @__kstrtabns_mtd_ooblayout_free }, section "___ksymtab_gpl+mtd_ooblayout_free", align 4
@__kstrtab_mtd_ooblayout_find_eccregion = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_find_eccregion = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_find_eccregion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_find_eccregion to i32), ptr @__kstrtab_mtd_ooblayout_find_eccregion, ptr @__kstrtabns_mtd_ooblayout_find_eccregion }, section "___ksymtab_gpl+mtd_ooblayout_find_eccregion", align 4
@__kstrtab_mtd_ooblayout_get_eccbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_get_eccbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_get_eccbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_get_eccbytes to i32), ptr @__kstrtab_mtd_ooblayout_get_eccbytes, ptr @__kstrtabns_mtd_ooblayout_get_eccbytes }, section "___ksymtab_gpl+mtd_ooblayout_get_eccbytes", align 4
@__kstrtab_mtd_ooblayout_set_eccbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_set_eccbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_set_eccbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_set_eccbytes to i32), ptr @__kstrtab_mtd_ooblayout_set_eccbytes, ptr @__kstrtabns_mtd_ooblayout_set_eccbytes }, section "___ksymtab_gpl+mtd_ooblayout_set_eccbytes", align 4
@__kstrtab_mtd_ooblayout_get_databytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_get_databytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_get_databytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_get_databytes to i32), ptr @__kstrtab_mtd_ooblayout_get_databytes, ptr @__kstrtabns_mtd_ooblayout_get_databytes }, section "___ksymtab_gpl+mtd_ooblayout_get_databytes", align 4
@__kstrtab_mtd_ooblayout_set_databytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_set_databytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_set_databytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_set_databytes to i32), ptr @__kstrtab_mtd_ooblayout_set_databytes, ptr @__kstrtabns_mtd_ooblayout_set_databytes }, section "___ksymtab_gpl+mtd_ooblayout_set_databytes", align 4
@__kstrtab_mtd_ooblayout_count_freebytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_count_freebytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_count_freebytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_count_freebytes to i32), ptr @__kstrtab_mtd_ooblayout_count_freebytes, ptr @__kstrtabns_mtd_ooblayout_count_freebytes }, section "___ksymtab_gpl+mtd_ooblayout_count_freebytes", align 4
@__kstrtab_mtd_ooblayout_count_eccbytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_ooblayout_count_eccbytes = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_ooblayout_count_eccbytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_ooblayout_count_eccbytes to i32), ptr @__kstrtab_mtd_ooblayout_count_eccbytes, ptr @__kstrtabns_mtd_ooblayout_count_eccbytes }, section "___ksymtab_gpl+mtd_ooblayout_count_eccbytes", align 4
@__kstrtab_mtd_get_fact_prot_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_get_fact_prot_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_get_fact_prot_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_get_fact_prot_info to i32), ptr @__kstrtab_mtd_get_fact_prot_info, ptr @__kstrtabns_mtd_get_fact_prot_info }, section "___ksymtab_gpl+mtd_get_fact_prot_info", align 4
@__kstrtab_mtd_read_fact_prot_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_read_fact_prot_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_read_fact_prot_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_read_fact_prot_reg to i32), ptr @__kstrtab_mtd_read_fact_prot_reg, ptr @__kstrtabns_mtd_read_fact_prot_reg }, section "___ksymtab_gpl+mtd_read_fact_prot_reg", align 4
@__kstrtab_mtd_get_user_prot_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_get_user_prot_info = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_get_user_prot_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_get_user_prot_info to i32), ptr @__kstrtab_mtd_get_user_prot_info, ptr @__kstrtabns_mtd_get_user_prot_info }, section "___ksymtab_gpl+mtd_get_user_prot_info", align 4
@__kstrtab_mtd_read_user_prot_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_read_user_prot_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_read_user_prot_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_read_user_prot_reg to i32), ptr @__kstrtab_mtd_read_user_prot_reg, ptr @__kstrtabns_mtd_read_user_prot_reg }, section "___ksymtab_gpl+mtd_read_user_prot_reg", align 4
@__kstrtab_mtd_write_user_prot_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_write_user_prot_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_write_user_prot_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_write_user_prot_reg to i32), ptr @__kstrtab_mtd_write_user_prot_reg, ptr @__kstrtabns_mtd_write_user_prot_reg }, section "___ksymtab_gpl+mtd_write_user_prot_reg", align 4
@__kstrtab_mtd_lock_user_prot_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_lock_user_prot_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_lock_user_prot_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_lock_user_prot_reg to i32), ptr @__kstrtab_mtd_lock_user_prot_reg, ptr @__kstrtabns_mtd_lock_user_prot_reg }, section "___ksymtab_gpl+mtd_lock_user_prot_reg", align 4
@__kstrtab_mtd_erase_user_prot_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_erase_user_prot_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_erase_user_prot_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_erase_user_prot_reg to i32), ptr @__kstrtab_mtd_erase_user_prot_reg, ptr @__kstrtabns_mtd_erase_user_prot_reg }, section "___ksymtab_gpl+mtd_erase_user_prot_reg", align 4
@__kstrtab_mtd_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_lock to i32), ptr @__kstrtab_mtd_lock, ptr @__kstrtabns_mtd_lock }, section "___ksymtab_gpl+mtd_lock", align 4
@__kstrtab_mtd_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_unlock to i32), ptr @__kstrtab_mtd_unlock, ptr @__kstrtabns_mtd_unlock }, section "___ksymtab_gpl+mtd_unlock", align 4
@__kstrtab_mtd_is_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_is_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_is_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_is_locked to i32), ptr @__kstrtab_mtd_is_locked, ptr @__kstrtabns_mtd_is_locked }, section "___ksymtab_gpl+mtd_is_locked", align 4
@__kstrtab_mtd_block_isreserved = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_block_isreserved = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_block_isreserved = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_block_isreserved to i32), ptr @__kstrtab_mtd_block_isreserved, ptr @__kstrtabns_mtd_block_isreserved }, section "___ksymtab_gpl+mtd_block_isreserved", align 4
@__kstrtab_mtd_block_isbad = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_block_isbad = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_block_isbad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_block_isbad to i32), ptr @__kstrtab_mtd_block_isbad, ptr @__kstrtabns_mtd_block_isbad }, section "___ksymtab_gpl+mtd_block_isbad", align 4
@__kstrtab_mtd_block_markbad = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_block_markbad = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_block_markbad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_block_markbad to i32), ptr @__kstrtab_mtd_block_markbad, ptr @__kstrtabns_mtd_block_markbad }, section "___ksymtab_gpl+mtd_block_markbad", align 4
@__kstrtab_mtd_writev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_writev = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_writev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_writev to i32), ptr @__kstrtab_mtd_writev, ptr @__kstrtabns_mtd_writev }, section "___ksymtab_gpl+mtd_writev", align 4
@__kstrtab_mtd_kmalloc_up_to = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_kmalloc_up_to = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_kmalloc_up_to = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_kmalloc_up_to to i32), ptr @__kstrtab_mtd_kmalloc_up_to, ptr @__kstrtabns_mtd_kmalloc_up_to }, section "___ksymtab_gpl+mtd_kmalloc_up_to", align 4
@.str.6 = private unnamed_addr constant [177 x i8] c"Bad block checks have been entirely disabled.\0AThis is only reserved for post-mortem forensics and debug purposes.\0ANever enable this mode if you do not know what you are doing!\0A\00", align 1
@mtd_expert_analysis_warning = dso_local global ptr @.str.6, align 4
@__kstrtab_mtd_expert_analysis_warning = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_expert_analysis_warning = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_expert_analysis_warning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_expert_analysis_warning to i32), ptr @__kstrtab_mtd_expert_analysis_warning, ptr @__kstrtabns_mtd_expert_analysis_warning }, section "___ksymtab_gpl+mtd_expert_analysis_warning", align 4
@mtd_expert_analysis_mode = dso_local global i8 0, align 1
@__kstrtab_mtd_expert_analysis_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_expert_analysis_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_expert_analysis_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_expert_analysis_mode to i32), ptr @__kstrtab_mtd_expert_analysis_mode, ptr @__kstrtabns_mtd_expert_analysis_mode }, section "___ksymtab_gpl+mtd_expert_analysis_mode", align 4
@dfs_dir_mtd = internal unnamed_addr global ptr null, align 4
@proc_mtd = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"mtd\00", align 1
@mtd_bdi = dso_local local_unnamed_addr global ptr null, align 4
@__initcall__kmod_mtd__252_2434_init_mtd6 = internal global ptr @init_mtd, section ".initcall6.init", align 4
@__exitcall_cleanup_mtd = internal global ptr @cleanup_mtd, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [25 x i8] c"mtd.file=drivers/mtd/mtd\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [16 x i8] c"mtd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [49 x i8] c"mtd.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [58 x i8] c"mtd.description=Core MTD registration and access routines\00", section ".modinfo", align 1
@mtd_groups = internal global [2 x ptr] [ptr @mtd_group, ptr null], align 4
@mtd_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mtd_attrs, ptr null }, align 4
@mtd_attrs = internal global [18 x ptr] [ptr @dev_attr_type, ptr @dev_attr_flags, ptr @dev_attr_size, ptr @dev_attr_erasesize, ptr @dev_attr_writesize, ptr @dev_attr_subpagesize, ptr @dev_attr_oobsize, ptr @dev_attr_oobavail, ptr @dev_attr_numeraseregions, ptr @dev_attr_name, ptr @dev_attr_ecc_strength, ptr @dev_attr_ecc_step_size, ptr @dev_attr_corrected_bits, ptr @dev_attr_ecc_failures, ptr @dev_attr_bad_blocks, ptr @dev_attr_bbt_blocks, ptr @dev_attr_bitflip_threshold, ptr null], align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @mtd_type_show, ptr null }, align 4
@dev_attr_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @mtd_flags_show, ptr null }, align 4
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @mtd_size_show, ptr null }, align 4
@dev_attr_erasesize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @mtd_erasesize_show, ptr null }, align 4
@dev_attr_writesize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @mtd_writesize_show, ptr null }, align 4
@dev_attr_subpagesize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @mtd_subpagesize_show, ptr null }, align 4
@dev_attr_oobsize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @mtd_oobsize_show, ptr null }, align 4
@dev_attr_oobavail = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @mtd_oobavail_show, ptr null }, align 4
@dev_attr_numeraseregions = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @mtd_numeraseregions_show, ptr null }, align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @mtd_name_show, ptr null }, align 4
@dev_attr_ecc_strength = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @mtd_ecc_strength_show, ptr null }, align 4
@dev_attr_ecc_step_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @mtd_ecc_step_size_show, ptr null }, align 4
@dev_attr_corrected_bits = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @mtd_corrected_bits_show, ptr null }, align 4
@dev_attr_ecc_failures = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @mtd_ecc_failures_show, ptr null }, align 4
@dev_attr_bad_blocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @mtd_bad_blocks_show, ptr null }, align 4
@dev_attr_bbt_blocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @mtd_bbt_blocks_show, ptr null }, align 4
@dev_attr_bitflip_threshold = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420 }, ptr @mtd_bitflip_threshold_show, ptr @mtd_bitflip_threshold_store }, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nor\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"dataflash\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"mlc-nand\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"erasesize\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"writesize\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"subpagesize\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"oobsize\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"oobavail\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"numeraseregions\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"ecc_strength\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"ecc_step_size\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"corrected_bits\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"ecc_failures\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"bad_blocks\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"bbt_blocks\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"bitflip_threshold\00", align 1
@mtd_cls_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mtd_cls_suspend, ptr @mtd_cls_resume, ptr @mtd_cls_suspend, ptr @mtd_cls_resume, ptr @mtd_cls_suspend, ptr @mtd_cls_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Failed to register NVMEM device\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"partid\00", align 1
@mtd_partid_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtd_partid_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"partname\00", align 1
@mtd_partname_debug_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtd_partname_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mtd_set_dev_defaults.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"&mtd->master.partitions_lock\00", align 1
@mtd_set_dev_defaults.__key.44 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"&mtd->master.chrdev_lock\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"user-otp\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"Failed to register OTP NVMEM device\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"factory-otp\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_mtd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"expert_analysis_mode\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"\013Error registering mtd class or bdi: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"%.28s-0\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"dev:    size   erasesize  name\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"mtd%d: %8.8llx %8.8x \22%s\22\0A\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_cleanup_mtd, ptr @__initcall__kmod_mtd__252_2434_init_mtd6, ptr @__ksymtab___get_mtd_device, ptr @__ksymtab___mtd_next_device, ptr @__ksymtab___put_mtd_device, ptr @__ksymtab_get_mtd_device, ptr @__ksymtab_get_mtd_device_nm, ptr @__ksymtab_mtd_block_isbad, ptr @__ksymtab_mtd_block_isreserved, ptr @__ksymtab_mtd_block_markbad, ptr @__ksymtab_mtd_device_parse_register, ptr @__ksymtab_mtd_device_unregister, ptr @__ksymtab_mtd_erase, ptr @__ksymtab_mtd_erase_user_prot_reg, ptr @__ksymtab_mtd_expert_analysis_mode, ptr @__ksymtab_mtd_expert_analysis_warning, ptr @__ksymtab_mtd_get_fact_prot_info, ptr @__ksymtab_mtd_get_unmapped_area, ptr @__ksymtab_mtd_get_user_prot_info, ptr @__ksymtab_mtd_is_locked, ptr @__ksymtab_mtd_kmalloc_up_to, ptr @__ksymtab_mtd_lock, ptr @__ksymtab_mtd_lock_user_prot_reg, ptr @__ksymtab_mtd_ooblayout_count_eccbytes, ptr @__ksymtab_mtd_ooblayout_count_freebytes, ptr @__ksymtab_mtd_ooblayout_ecc, ptr @__ksymtab_mtd_ooblayout_find_eccregion, ptr @__ksymtab_mtd_ooblayout_free, ptr @__ksymtab_mtd_ooblayout_get_databytes, ptr @__ksymtab_mtd_ooblayout_get_eccbytes, ptr @__ksymtab_mtd_ooblayout_set_databytes, ptr @__ksymtab_mtd_ooblayout_set_eccbytes, ptr @__ksymtab_mtd_pairing_groups, ptr @__ksymtab_mtd_pairing_info_to_wunit, ptr @__ksymtab_mtd_panic_write, ptr @__ksymtab_mtd_point, ptr @__ksymtab_mtd_read, ptr @__ksymtab_mtd_read_fact_prot_reg, ptr @__ksymtab_mtd_read_oob, ptr @__ksymtab_mtd_read_user_prot_reg, ptr @__ksymtab_mtd_table_mutex, ptr @__ksymtab_mtd_unlock, ptr @__ksymtab_mtd_unpoint, ptr @__ksymtab_mtd_write, ptr @__ksymtab_mtd_write_oob, ptr @__ksymtab_mtd_write_user_prot_reg, ptr @__ksymtab_mtd_writev, ptr @__ksymtab_mtd_wunit_to_pairing_info, ptr @__ksymtab_put_mtd_device, ptr @__ksymtab_register_mtd_user, ptr @__ksymtab_unregister_mtd_user, ptr @cleanup_mtd], section "llvm.metadata"
@switch.table.mtd_type_show = private unnamed_addr constant [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__mtd_next_device(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %2) #12
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_wunit_to_pairing_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = udiv i32 %11, %13
  %15 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %16, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 %19
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i32 [ 1, %9 ], [ %21, %18 ]
  %24 = icmp slt i32 %1, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = sdiv i32 %14, %23
  %27 = icmp sgt i32 %26, %1
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mtd_pairing_scheme, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(ptr noundef %5, i32 noundef %1, ptr noundef %2) #12
  br label %40

38:                                               ; preds = %32, %28
  %39 = getelementptr inbounds %struct.mtd_pairing_info, ptr %2, i32 0, i32 1
  store i32 0, ptr %39, align 4
  store i32 %1, ptr %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %25, %22
  %41 = phi i32 [ %37, %36 ], [ 0, %38 ], [ -22, %25 ], [ -22, %22 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @mtd_pairing_groups(ptr nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 %12
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ 1, %7 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_pairing_info_to_wunit(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 %13
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ 1, %8 ], [ %15, %12 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = udiv i32 %21, %23
  %25 = sdiv i32 %24, %17
  %26 = load i32, ptr %1, align 4
  %27 = icmp sgt i32 %26, -1
  %28 = icmp slt i32 %26, %25
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %50

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.mtd_pairing_info, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, -1
  %34 = icmp slt i32 %32, %17
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 16
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mtd_pairing_scheme, ptr %38, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mtd_pairing_scheme, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %4, ptr noundef nonnull %1) #12
  br label %50

50:                                               ; preds = %44, %40, %36, %30, %19, %16
  %51 = phi i32 [ %49, %44 ], [ -22, %30 ], [ -22, %19 ], [ -22, %16 ], [ %26, %40 ], [ %26, %36 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_mtd_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvmem_config, align 4
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %0, %1 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  %13 = load i1, ptr @add_mtd_device.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %8
  store i1 true, ptr @add_mtd_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 9, ptr noundef nonnull @.str.1) #12
  br label %17

17:                                               ; preds = %16, %8
  br i1 %12, label %292, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdcore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 25
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 28
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 24
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 27
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !10

39:                                               ; preds = %35, %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 597, i32 noundef 9, ptr noundef null) #12
  br label %292

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 21
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  br label %57

51:                                               ; preds = %44, %40
  %52 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 601, i32 noundef 9, ptr noundef null) #12
  br label %292

57:                                               ; preds = %51, %48
  %58 = phi i32 [ %50, %48 ], [ %53, %51 ]
  %59 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %60 = and i32 %58, 16384
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %292, label %66

66:                                               ; preds = %62
  %67 = load i8, ptr %4, align 8
  %68 = icmp eq i8 %67, 8
  br i1 %68, label %69, label %292

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 16
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %292, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 36
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %292

77:                                               ; preds = %73, %57
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  %78 = tail call i32 @idr_alloc(ptr noundef nonnull @mtd_idr, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #12
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %290, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 14
  store i32 %78, ptr %81, align 4
  %82 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 57
  store i32 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 18
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %83, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load i32, ptr %59, align 4
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, ptr %41, align 8
  br label %137

95:                                               ; preds = %95, %89
  %96 = phi ptr [ %98, %95 ], [ %4, %89 ]
  %97 = getelementptr inbounds %struct.mtd_info, ptr %96, i32 0, i32 62
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %95

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.mtd_info, ptr %96, i32 0, i32 16
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, ptr %102, align 4
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 1, i32 %105
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i32 [ 1, %100 ], [ %107, %104 ]
  %110 = load i32, ptr %41, align 8
  %111 = udiv i32 %110, %109
  store i32 %111, ptr %41, align 8
  %112 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %108
  %118 = zext i32 %115 to i64
  %119 = lshr i64 %113, %118
  %120 = trunc i64 %119 to i32
  br label %132

121:                                              ; preds = %108
  %122 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %123 = load i32, ptr %122, align 8
  %124 = icmp ult i64 %113, 4294967296
  br i1 %124, label %125, label %128, !prof !10

125:                                              ; preds = %121
  %126 = trunc i64 %113 to i32
  %127 = udiv i32 %126, %123
  br label %132

128:                                              ; preds = %121
  %129 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %123, i64 %113) #13, !srcloc !11
  %130 = extractvalue { i64, i64 } %129, 1
  %131 = trunc i64 %130 to i32
  br label %132

132:                                              ; preds = %128, %125, %117
  %133 = phi i32 [ %120, %117 ], [ %127, %125 ], [ %131, %128 ]
  %134 = zext i32 %133 to i64
  %135 = zext i32 %111 to i64
  %136 = mul nuw i64 %134, %135
  store i64 %136, ptr %112, align 8
  br label %137

137:                                              ; preds = %132, %93
  %138 = phi i32 [ %94, %93 ], [ %111, %132 ]
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138) #12, !range !12
  %140 = icmp eq i32 %139, 1
  %141 = tail call i32 @llvm.cttz.i32(i32 %138, i1 true), !range !12
  %142 = select i1 %140, i32 %141, i32 0
  %143 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  store i32 %142, ptr %143, align 4
  %144 = load i32, ptr %19, align 4
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144) #12, !range !12
  %146 = icmp eq i32 %145, 1
  %147 = tail call i32 @llvm.cttz.i32(i32 %144, i1 true), !range !12
  %148 = select i1 %146, i32 %147, i32 0
  %149 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 9
  store i32 %148, ptr %149, align 8
  %150 = shl nsw i32 -1, %142
  %151 = xor i32 %150, -1
  %152 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 10
  store i32 %151, ptr %152, align 4
  %153 = shl nsw i32 -1, %148
  %154 = xor i32 %153, -1
  %155 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 11
  store i32 %154, ptr %155, align 8
  %156 = and i32 %90, 9216
  %157 = icmp eq i32 %156, 9216
  br i1 %157, label %158, label %220

158:                                              ; preds = %137
  %159 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %160 = load i64, ptr %159, align 8
  br label %161

161:                                              ; preds = %161, %158
  %162 = phi ptr [ %0, %158 ], [ %164, %161 ]
  %163 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 62
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %161

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 39
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %220, label %170

170:                                              ; preds = %166
  %171 = icmp eq i64 %160, 0
  br i1 %171, label %216, label %172

172:                                              ; preds = %170
  br i1 %92, label %198, label %173

173:                                              ; preds = %172
  %174 = icmp eq i32 %142, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 3
  %177 = load i32, ptr %176, align 8
  %178 = icmp ult i64 %160, 4294967296
  br i1 %178, label %185, label %188, !prof !10

179:                                              ; preds = %173
  %180 = zext i32 %142 to i64
  %181 = getelementptr inbounds %struct.mtd_info, ptr %162, i32 0, i32 3
  %182 = load i32, ptr %181, align 8
  %183 = lshr i64 %160, %180
  %184 = trunc i64 %183 to i32
  br label %192

185:                                              ; preds = %175
  %186 = trunc i64 %160 to i32
  %187 = udiv i32 %186, %138
  br label %192

188:                                              ; preds = %175
  %189 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %138, i64 %160) #13, !srcloc !11
  %190 = extractvalue { i64, i64 } %189, 1
  %191 = trunc i64 %190 to i32
  br label %192

192:                                              ; preds = %188, %185, %179
  %193 = phi i32 [ %182, %179 ], [ %177, %185 ], [ %177, %188 ]
  %194 = phi i32 [ %184, %179 ], [ %187, %185 ], [ %191, %188 ]
  %195 = zext i32 %193 to i64
  %196 = zext i32 %194 to i64
  %197 = mul nuw i64 %195, %196
  br label %198

198:                                              ; preds = %192, %172
  %199 = phi i64 [ %197, %192 ], [ %160, %172 ]
  %200 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %213, label %203

203:                                              ; preds = %203, %198
  %204 = phi ptr [ %211, %203 ], [ %201, %198 ]
  %205 = phi i64 [ %209, %203 ], [ 0, %198 ]
  %206 = phi ptr [ %204, %203 ], [ %0, %198 ]
  %207 = getelementptr inbounds %struct.mtd_info, ptr %206, i32 0, i32 64, i32 0, i32 1
  %208 = load i64, ptr %207, align 8
  %209 = add i64 %208, %205
  %210 = getelementptr inbounds %struct.mtd_info, ptr %204, i32 0, i32 62
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %203

213:                                              ; preds = %203, %198
  %214 = phi i64 [ 0, %198 ], [ %209, %203 ]
  %215 = tail call i32 %168(ptr noundef %162, i64 noundef %214, i64 noundef %199) #12
  switch i32 %215, label %216 [
    i32 -95, label %220
    i32 0, label %220
  ]

216:                                              ; preds = %213, %170
  %217 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %218 = load ptr, ptr %217, align 8
  %219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %218) #14
  br label %220

220:                                              ; preds = %216, %213, %213, %166, %137
  store ptr @mtd_devtype, ptr %10, align 8
  %221 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 31
  store ptr @mtd_class, ptr %221, align 4
  %222 = shl i32 %78, 1
  %223 = or i32 %222, 94371840
  %224 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 27
  store i32 %223, ptr %224, align 8
  %225 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef %78) #12
  %226 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 8
  store ptr %0, ptr %226, align 8
  %227 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %228 = load ptr, ptr %227, align 8
  %229 = tail call ptr @of_node_get(ptr noundef %228) #12
  %230 = tail call i32 @device_register(ptr noundef %9) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %286

232:                                              ; preds = %220
  %233 = load ptr, ptr %227, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #12
  %234 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %234, i8 0, i32 72, i1 false) #12
  %235 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 2
  store i32 -1, ptr %235, align 4
  store ptr %9, ptr %2, align 4
  %236 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load ptr, ptr %9, align 4
  br label %241

241:                                              ; preds = %239, %232
  %242 = phi ptr [ %240, %239 ], [ %237, %232 ]
  %243 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 1
  store ptr %242, ptr %243, align 4
  %244 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 3
  store ptr null, ptr %244, align 4
  %245 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 15
  store ptr @mtd_nvmem_reg_read, ptr %245, align 4
  %246 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %247 = load i64, ptr %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 18
  store i32 %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 19
  store i32 1, ptr %250, align 4
  %251 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 20
  store i32 1, ptr %251, align 4
  %252 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 10
  store i8 1, ptr %252, align 4
  %253 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 11
  store i8 1, ptr %253, align 1
  %254 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 12
  store i8 1, ptr %254, align 2
  %255 = tail call i32 @of_device_is_compatible(ptr noundef %233, ptr noundef nonnull @.str.39) #12
  %256 = icmp eq i32 %255, 0
  %257 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 14
  %258 = zext i1 %256 to i8
  store i8 %258, ptr %257, align 4
  %259 = getelementptr inbounds %struct.nvmem_config, ptr %2, i32 0, i32 21
  store ptr %0, ptr %259, align 4
  %260 = call ptr @nvmem_register(ptr noundef nonnull %2) #12
  %261 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 59
  store ptr %260, ptr %261, align 8
  %262 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  br i1 %262, label %263, label %266

263:                                              ; preds = %241
  %264 = icmp eq ptr %260, inttoptr (i32 -95 to ptr)
  br i1 %264, label %265, label %267

265:                                              ; preds = %263
  store ptr null, ptr %261, align 8
  br label %266

266:                                              ; preds = %265, %241
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #12
  br label %270

267:                                              ; preds = %263
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.40) #14
  %268 = load ptr, ptr %261, align 8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #12
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %284

270:                                              ; preds = %267, %266
  call fastcc void @mtd_debugfs_populate(ptr noundef %0)
  %271 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = or i32 %222, 94371841
  %274 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @mtd_class, ptr noundef %272, i32 noundef %273, ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %78) #12
  %275 = load ptr, ptr @mtd_notifiers, align 4
  %276 = icmp eq ptr %275, @mtd_notifiers
  br i1 %276, label %283, label %277

277:                                              ; preds = %277, %270
  %278 = phi ptr [ %281, %277 ], [ %275, %270 ]
  %279 = getelementptr i8, ptr %278, i32 -8
  %280 = load ptr, ptr %279, align 4
  call void %280(ptr noundef %0) #12
  %281 = load ptr, ptr %278, align 4
  %282 = icmp eq ptr %281, @mtd_notifiers
  br i1 %282, label %283, label %277

283:                                              ; preds = %277, %270
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  call void @__module_get(ptr noundef null) #12
  br label %292

284:                                              ; preds = %267
  %285 = ptrtoint ptr %268 to i32
  call void @device_unregister(ptr noundef %9) #12
  br label %286

286:                                              ; preds = %284, %220
  %287 = phi i32 [ %230, %220 ], [ %285, %284 ]
  %288 = load ptr, ptr %227, align 8
  call void @of_node_put(ptr noundef %288) #12
  %289 = call ptr @idr_remove(ptr noundef nonnull @mtd_idr, i32 noundef %78) #12
  br label %290

290:                                              ; preds = %286, %77
  %291 = phi i32 [ %287, %286 ], [ %78, %77 ]
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  br label %292

292:                                              ; preds = %290, %283, %73, %69, %66, %62, %56, %39, %17
  %293 = phi i32 [ -22, %39 ], [ -22, %56 ], [ %291, %290 ], [ 0, %283 ], [ -17, %17 ], [ -22, %73 ], [ -22, %69 ], [ -22, %66 ], [ -22, %62 ]
  ret i32 %293
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_unlock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 39
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %13

13:                                               ; preds = %9
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ule i64 %17, %1
  %19 = sub i64 %17, %1
  %20 = icmp ult i64 %19, %2
  %21 = or i1 %18, %20
  br i1 %21, label %94, label %22

22:                                               ; preds = %15
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %94, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i64 %1, 4294967296
  br i1 %36, label %37, label %40, !prof !10

37:                                               ; preds = %33
  %38 = trunc i64 %1 to i32
  %39 = udiv i32 %38, %35
  br label %54

40:                                               ; preds = %33
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %1) #13, !srcloc !11
  %42 = extractvalue { i64, i64 } %41, 1
  %43 = trunc i64 %42 to i32
  br label %54

44:                                               ; preds = %29
  %45 = zext i32 %31 to i64
  %46 = lshr i64 %1, %45
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = mul nuw i64 %47, %50
  %52 = lshr i64 %2, %45
  %53 = trunc i64 %52 to i32
  br label %69

54:                                               ; preds = %40, %37
  %55 = phi i32 [ %39, %37 ], [ %43, %40 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %58 = load i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  %60 = mul nuw i64 %59, %56
  %61 = icmp ult i64 %2, 4294967296
  br i1 %61, label %62, label %65, !prof !10

62:                                               ; preds = %54
  %63 = trunc i64 %2 to i32
  %64 = udiv i32 %63, %35
  br label %69

65:                                               ; preds = %54
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %2) #13, !srcloc !11
  %67 = extractvalue { i64, i64 } %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %65, %62, %44
  %70 = phi i64 [ %51, %44 ], [ %60, %62 ], [ %60, %65 ]
  %71 = phi i64 [ %50, %44 ], [ %59, %62 ], [ %59, %65 ]
  %72 = phi i32 [ %53, %44 ], [ %64, %62 ], [ %68, %65 ]
  %73 = zext i32 %72 to i64
  %74 = mul nuw i64 %71, %73
  br label %75

75:                                               ; preds = %69, %24
  %76 = phi i64 [ %70, %69 ], [ %1, %24 ]
  %77 = phi i64 [ %74, %69 ], [ %2, %24 ]
  %78 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %81, %75
  %82 = phi ptr [ %89, %81 ], [ %79, %75 ]
  %83 = phi i64 [ %87, %81 ], [ %76, %75 ]
  %84 = phi ptr [ %82, %81 ], [ %0, %75 ]
  %85 = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 64, i32 0, i32 1
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %83
  %88 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 62
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %81

91:                                               ; preds = %81, %75
  %92 = phi i64 [ %76, %75 ], [ %87, %81 ]
  %93 = tail call i32 %11(ptr noundef %5, i64 noundef %92, i64 noundef %77) #12
  br label %94

94:                                               ; preds = %91, %22, %15, %13, %9
  %95 = phi i32 [ %93, %91 ], [ -95, %9 ], [ -22, %15 ], [ -22, %13 ], [ 0, %22 ]
  ret i32 %95
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mtd_debugfs_populate(ptr noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = load ptr, ptr @dfs_dir_mtd, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %34, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi ptr [ %18, %16 ], [ %14, %12 ]
  %21 = tail call ptr @debugfs_create_dir(ptr noundef %20, ptr noundef nonnull %8) #12
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 58
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 58, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %3, ptr noundef nonnull @mtd_partid_debug_fops) #12
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 58, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %3, ptr noundef nonnull @mtd_partname_debug_fops) #12
  br label %34

34:                                               ; preds = %32, %28, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @del_mtd_device(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @idr_find(ptr noundef nonnull @mtd_idr, i32 noundef %3) #12
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load ptr, ptr @mtd_notifiers, align 4
  %8 = icmp eq ptr %7, @mtd_notifiers
  br i1 %8, label %15, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %13, %9 ], [ %7, %6 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %0) #12
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, @mtd_notifiers
  br i1 %14, label %15, label %9

15:                                               ; preds = %9, %6
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 57
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %20, ptr noundef %22, i32 noundef %17) #14
  br label %37

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 58
  %26 = load ptr, ptr %25, align 4
  tail call void @debugfs_remove(ptr noundef %26) #12
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 59
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @nvmem_unregister(ptr noundef nonnull %28) #12
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void @device_unregister(ptr noundef %32) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(472) %32, i8 0, i32 472, i1 false)
  %33 = load i32, ptr %2, align 4
  %34 = tail call ptr @idr_remove(ptr noundef nonnull @mtd_idr, i32 noundef %33) #12
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %36 = load ptr, ptr %35, align 8
  tail call void @of_node_put(ptr noundef %36) #12
  tail call void @module_put(ptr noundef null) #12
  br label %37

37:                                               ; preds = %31, %19, %1
  %38 = phi i32 [ -16, %19 ], [ 0, %31 ], [ -19, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_device_parse_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 55
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %10, align 4
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %26, %24 ]
  store ptr %31, ptr %21, align 8
  br label %32

32:                                               ; preds = %30, %20, %5
  %33 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 63, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 64
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.43, ptr noundef nonnull @mtd_set_dev_defaults.__key) #12
  %36 = getelementptr inbounds %struct.mtd_master, ptr %35, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.45, ptr noundef nonnull @mtd_set_dev_defaults.__key.44) #12
  %37 = tail call i32 @parse_mtd_partitions(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %38 = icmp eq i32 %37, -517
  br i1 %38, label %127, label %39

39:                                               ; preds = %32
  %40 = icmp sgt i32 %37, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = icmp eq i32 %4, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = tail call i32 @add_mtd_partitions(ptr noundef %0, ptr noundef %3, i32 noundef %4) #12
  br label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 0, i32 7
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = tail call i32 @add_mtd_device(ptr noundef %0)
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi i32 [ %44, %43 ], [ %51, %50 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %127

55:                                               ; preds = %52, %45, %39
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 47
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 51
  %61 = load ptr, ptr %60, align 8
  %62 = icmp ne ptr %61, null
  %63 = load i1, ptr @mtd_device_parse_register.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %71, !prof !8

66:                                               ; preds = %59
  store i1 true, ptr @mtd_device_parse_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1000, i32 noundef 9, ptr noundef nonnull @.str.1) #12
  %67 = load ptr, ptr %56, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %60, align 8
  br label %71

71:                                               ; preds = %69, %59
  %72 = phi ptr [ %70, %69 ], [ %61, %59 ]
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  store ptr @mtd_reboot_notifier, ptr %60, align 8
  %75 = tail call i32 @register_reboot_notifier(ptr noundef %60) #12
  br label %76

76:                                               ; preds = %74, %71, %66, %55
  %77 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 31
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %97, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 32
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @mtd_otp_size(ptr noundef %0, i1 noundef zeroext true) #12
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %127, label %87

87:                                               ; preds = %84
  %88 = icmp eq i32 %85, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %87
  %90 = tail call fastcc ptr @mtd_otp_nvmem_register(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %85, ptr noundef nonnull @mtd_nvmem_user_otp_reg_read) #12
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.47) #14
  %94 = ptrtoint ptr %90 to i32
  br label %124

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 60
  store ptr %90, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %87, %80, %76
  %98 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 29
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %135, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 30
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %135, label %105

105:                                              ; preds = %101
  %106 = tail call fastcc i32 @mtd_otp_size(ptr noundef %0, i1 noundef zeroext false) #12
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %105
  %109 = icmp eq i32 %106, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %108
  %111 = tail call fastcc ptr @mtd_otp_nvmem_register(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %106, ptr noundef nonnull @mtd_nvmem_fact_otp_reg_read) #12
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.47) #14
  %115 = ptrtoint ptr %111 to i32
  br label %118

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 61
  store ptr %111, ptr %117, align 8
  br label %135

118:                                              ; preds = %113, %105
  %119 = phi i32 [ %115, %113 ], [ %106, %105 ]
  %120 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 60
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  tail call void @nvmem_unregister(ptr noundef nonnull %121) #12
  br label %124

124:                                              ; preds = %123, %118, %92
  %125 = phi i32 [ %94, %92 ], [ %119, %123 ], [ %119, %118 ]
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124, %84, %52, %32
  %128 = phi i32 [ %125, %124 ], [ %85, %84 ], [ %53, %52 ], [ -517, %32 ]
  %129 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 0, i32 7
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 2
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = tail call i32 @del_mtd_device(ptr noundef %0)
  br label %135

135:                                              ; preds = %133, %127, %124, %116, %108, %101, %97
  %136 = phi i32 [ %128, %133 ], [ %128, %127 ], [ 0, %124 ], [ 0, %108 ], [ 0, %116 ], [ 0, %101 ], [ 0, %97 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parse_mtd_partitions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_mtd_partitions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_reboot_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -208
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef %4) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_device_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 51
  %7 = tail call i32 @unregister_reboot_notifier(ptr noundef %6) #12
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(12) %6, i8 0, i32 12, i1 false)
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 60
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @nvmem_unregister(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 61
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @nvmem_unregister(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call i32 @del_mtd_partitions(ptr noundef %0) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 0, i32 7
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @del_mtd_device(ptr noundef %0)
  br label %28

28:                                               ; preds = %26, %21, %18
  %29 = phi i32 [ %27, %26 ], [ %19, %18 ], [ 0, %21 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_mtd_partitions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_mtd_user(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  %4 = getelementptr inbounds %struct.mtd_notifier, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr @mtd_notifiers, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store ptr %5, ptr %4, align 4
  %7 = getelementptr inbounds %struct.mtd_notifier, ptr %0, i32 0, i32 2, i32 1
  store ptr @mtd_notifiers, ptr %7, align 4
  store volatile ptr %4, ptr @mtd_notifiers, align 4
  tail call void @__module_get(ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %8 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %16, %10 ], [ %8, %1 ]
  %12 = load ptr, ptr %0, align 4
  call void %12(ptr noundef nonnull %11) #12
  %13 = getelementptr inbounds %struct.mtd_info, ptr %11, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %15, ptr %2, align 4
  %16 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %1
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_mtd_user(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  tail call void @module_put(ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %4 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mtd_notifier, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %4, %6 ], [ %14, %8 ]
  %10 = load ptr, ptr %7, align 4
  call void %10(ptr noundef nonnull %9) #12
  %11 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %13, ptr %2, align 4
  %14 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.mtd_notifier, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mtd_notifier, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_mtd_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  %5 = icmp eq i32 %1, -1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %7 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %12, %6
  %10 = phi ptr [ %16, %12 ], [ %7, %6 ]
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mtd_info, ptr %10, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %15, ptr %3, align 4
  %16 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %63, label %9

18:                                               ; preds = %2
  %19 = icmp sgt i32 %1, -1
  br i1 %19, label %20, label %63

20:                                               ; preds = %18
  %21 = tail call ptr @idr_find(ptr noundef nonnull @mtd_idr, i32 noundef %1) #12
  %22 = icmp eq ptr %0, null
  %23 = icmp eq ptr %21, %0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %20, %9
  %26 = phi ptr [ %21, %20 ], [ %0, %9 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %31, %28 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 62
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 55
  %35 = load ptr, ptr %34, align 4
  %36 = call zeroext i1 @try_module_get(ptr noundef %35) #12
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 48
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = call i32 %39(ptr noundef nonnull %26) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %34, align 4
  call void @module_put(ptr noundef %45) #12
  %46 = inttoptr i32 %42 to ptr
  br label %63

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 57
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 62
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %54, %47
  %55 = phi ptr [ %61, %54 ], [ %52, %47 ]
  %56 = phi ptr [ %55, %54 ], [ %26, %47 ]
  %57 = getelementptr inbounds %struct.mtd_info, ptr %56, i32 0, i32 57
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  %60 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 62
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %47, %44, %33, %25, %20, %18, %12, %6
  %64 = phi ptr [ inttoptr (i32 -19 to ptr), %25 ], [ inttoptr (i32 -19 to ptr), %18 ], [ %26, %47 ], [ inttoptr (i32 -19 to ptr), %20 ], [ %46, %44 ], [ inttoptr (i32 -19 to ptr), %33 ], [ inttoptr (i32 -19 to ptr), %6 ], [ %26, %54 ], [ inttoptr (i32 -19 to ptr), %12 ]
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_mtd_device(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 55
  %9 = load ptr, ptr %8, align 4
  %10 = tail call zeroext i1 @try_module_get(ptr noundef %9) #12
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 48
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %0) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %8, align 4
  tail call void @module_put(ptr noundef %19) #12
  br label %36

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 57
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %34, %27 ], [ %25, %20 ]
  %29 = phi ptr [ %28, %27 ], [ %0, %20 ]
  %30 = getelementptr inbounds %struct.mtd_info, ptr %29, i32 0, i32 57
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 8
  %33 = getelementptr inbounds %struct.mtd_info, ptr %28, i32 0, i32 62
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27

36:                                               ; preds = %27, %20, %18, %7
  %37 = phi i32 [ %16, %18 ], [ -19, %7 ], [ 0, %20 ], [ 0, %27 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_mtd_device_nm(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %4 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %12, %1
  %7 = phi ptr [ %16, %12 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  %10 = call i32 @strcmp(ptr noundef %0, ptr noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 %15, ptr %2, align 4
  %16 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %6

18:                                               ; preds = %18, %6
  %19 = phi ptr [ %21, %18 ], [ %7, %6 ]
  %20 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 62
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 55
  %25 = load ptr, ptr %24, align 4
  %26 = call zeroext i1 @try_module_get(ptr noundef %25) #12
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 48
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef nonnull %7) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %24, align 4
  call void @module_put(ptr noundef %35) #12
  %36 = inttoptr i32 %32 to ptr
  br label %53

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %struct.mtd_info, ptr %19, i32 0, i32 57
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %37
  %45 = phi ptr [ %51, %44 ], [ %42, %37 ]
  %46 = phi ptr [ %45, %44 ], [ %7, %37 ]
  %47 = getelementptr inbounds %struct.mtd_info, ptr %46, i32 0, i32 57
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.mtd_info, ptr %45, i32 0, i32 62
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44

53:                                               ; preds = %44, %37, %34, %23, %12, %1
  %54 = phi ptr [ %7, %37 ], [ %36, %34 ], [ inttoptr (i32 -19 to ptr), %23 ], [ inttoptr (i32 -19 to ptr), %1 ], [ %7, %44 ], [ inttoptr (i32 -19 to ptr), %12 ]
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret ptr %54
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_mtd_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %12, %2
  %8 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 57
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %7, !prof !8

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdcore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1226, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 57
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 49
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void %23(ptr noundef %3) #12
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 55
  %28 = load ptr, ptr %27, align 4
  tail call void @module_put(ptr noundef %28) #12
  tail call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__put_mtd_device(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %12, %2
  %8 = phi ptr [ %10, %12 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 57
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %7, !prof !8

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/mtdcore.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1226, 0\0A.popsection", ""() #12, !srcloc !13
  unreachable

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 57
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 8
  %22 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 49
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void %23(ptr noundef %3) #12
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 55
  %28 = load ptr, ptr %27, align 4
  tail call void @module_put(ptr noundef %28) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_erase(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.erase_info, align 8
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %0, %2 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %21, %13 ], [ %11, %9 ]
  %15 = phi i64 [ %19, %13 ], [ 0, %9 ]
  %16 = phi ptr [ %14, %13 ], [ %0, %9 ]
  %17 = getelementptr inbounds %struct.mtd_info, ptr %16, i32 0, i32 64, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, %15
  %20 = getelementptr inbounds %struct.mtd_info, ptr %14, i32 0, i32 62
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %13

23:                                               ; preds = %13, %9
  %24 = phi i64 [ 0, %9 ], [ %19, %13 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  %25 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 2
  store i64 -1, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %140, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 21
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %140, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %1, align 8
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp ugt i64 %36, %34
  br i1 %37, label %38, label %140

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = sub i64 %36, %34
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %140, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %140, label %48

48:                                               ; preds = %43
  %49 = icmp eq i64 %40, 0
  br i1 %49, label %140, label %50

50:                                               ; preds = %48
  %51 = and i32 %45, 16384
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, ptr %3, align 8
  br label %103

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = icmp ult i64 %34, 4294967296
  br i1 %60, label %61, label %64, !prof !10

61:                                               ; preds = %59
  %62 = trunc i64 %34 to i32
  %63 = udiv i32 %62, %27
  br label %79

64:                                               ; preds = %59
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %34) #13, !srcloc !11
  %66 = extractvalue { i64, i64 } %65, 1
  %67 = trunc i64 %66 to i32
  br label %79

68:                                               ; preds = %55
  %69 = zext i32 %57 to i64
  %70 = lshr i64 %34, %69
  %71 = and i64 %70, 4294967295
  %72 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %73 = load i32, ptr %72, align 8
  %74 = zext i32 %73 to i64
  %75 = mul nuw i64 %71, %74
  %76 = add i64 %40, %34
  %77 = lshr i64 %76, %69
  %78 = trunc i64 %77 to i32
  br label %95

79:                                               ; preds = %64, %61
  %80 = phi i32 [ %67, %64 ], [ %63, %61 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %83 = load i32, ptr %82, align 8
  %84 = zext i32 %83 to i64
  %85 = mul nuw i64 %84, %81
  %86 = add i64 %40, %34
  %87 = icmp ult i64 %86, 4294967296
  br i1 %87, label %88, label %91, !prof !10

88:                                               ; preds = %79
  %89 = trunc i64 %86 to i32
  %90 = udiv i32 %89, %27
  br label %95

91:                                               ; preds = %79
  %92 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %86) #13, !srcloc !11
  %93 = extractvalue { i64, i64 } %92, 1
  %94 = trunc i64 %93 to i32
  br label %95

95:                                               ; preds = %91, %88, %68
  %96 = phi i64 [ %75, %68 ], [ %85, %88 ], [ %85, %91 ]
  %97 = phi i64 [ %74, %68 ], [ %84, %88 ], [ %84, %91 ]
  %98 = phi i32 [ %78, %68 ], [ %90, %88 ], [ %94, %91 ]
  %99 = zext i32 %98 to i64
  %100 = mul nuw i64 %97, %99
  %101 = sub i64 %100, %96
  %102 = getelementptr inbounds %struct.erase_info, ptr %3, i32 0, i32 1
  store i64 %101, ptr %102, align 8
  br label %103

103:                                              ; preds = %95, %53
  %104 = phi i64 [ %54, %53 ], [ %96, %95 ]
  %105 = add i64 %104, %24
  store i64 %105, ptr %3, align 8
  %106 = call i32 %31(ptr noundef %5, ptr noundef nonnull %3) #12
  %107 = getelementptr inbounds %struct.erase_info, ptr %3, i32 0, i32 2
  %108 = load i64, ptr %107, align 8
  %109 = icmp eq i64 %108, -1
  br i1 %109, label %140, label %110

110:                                              ; preds = %103
  %111 = sub i64 %108, %24
  store i64 %111, ptr %25, align 8
  %112 = load i32, ptr %44, align 4
  %113 = and i32 %112, 16384
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 8
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = zext i32 %117 to i64
  %121 = lshr i64 %111, %120
  %122 = trunc i64 %121 to i32
  br label %134

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %125 = load i32, ptr %124, align 8
  %126 = icmp ult i64 %111, 4294967296
  br i1 %126, label %127, label %130, !prof !10

127:                                              ; preds = %123
  %128 = trunc i64 %111 to i32
  %129 = udiv i32 %128, %125
  br label %134

130:                                              ; preds = %123
  %131 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %125, i64 %111) #13, !srcloc !11
  %132 = extractvalue { i64, i64 } %131, 1
  %133 = trunc i64 %132 to i32
  br label %134

134:                                              ; preds = %130, %127, %119
  %135 = phi i32 [ %122, %119 ], [ %129, %127 ], [ %133, %130 ]
  %136 = zext i32 %135 to i64
  store i64 %136, ptr %25, align 8
  %137 = load i32, ptr %26, align 8
  %138 = zext i32 %137 to i64
  %139 = mul nuw i64 %138, %136
  store i64 %139, ptr %25, align 8
  br label %140

140:                                              ; preds = %134, %110, %103, %48, %43, %38, %33, %29, %23
  %141 = phi i32 [ -524, %29 ], [ -524, %23 ], [ -22, %38 ], [ -22, %33 ], [ -30, %43 ], [ 0, %48 ], [ %106, %110 ], [ %106, %134 ], [ %106, %103 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %141
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_point(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi ptr [ %0, %6 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i32 0, ptr %3, align 4
  store ptr null, ptr %4, align 4
  %13 = icmp eq ptr %5, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  store i32 0, ptr %5, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 22
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  %20 = icmp slt i64 %1, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = icmp ugt i64 %23, %1
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = zext i32 %2 to i64
  %27 = sub i64 %23, %1
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %43, %35 ], [ %33, %31 ]
  %37 = phi i64 [ %41, %35 ], [ %1, %31 ]
  %38 = phi ptr [ %36, %35 ], [ %0, %31 ]
  %39 = getelementptr inbounds %struct.mtd_info, ptr %38, i32 0, i32 64, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %37
  %42 = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 62
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %35

45:                                               ; preds = %35, %31
  %46 = phi i64 [ %1, %31 ], [ %41, %35 ]
  %47 = tail call i32 %17(ptr noundef %8, i64 noundef %46, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #12
  br label %48

48:                                               ; preds = %45, %29, %25, %21, %19, %15
  %49 = phi i32 [ %47, %45 ], [ -95, %15 ], [ -22, %25 ], [ -22, %21 ], [ -22, %19 ], [ 0, %29 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_unpoint(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 23
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ugt i64 %17, %1
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = zext i32 %2 to i64
  %21 = sub i64 %17, %1
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %37, %29 ], [ %27, %25 ]
  %31 = phi i64 [ %35, %29 ], [ %1, %25 ]
  %32 = phi ptr [ %30, %29 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.mtd_info, ptr %32, i32 0, i32 64, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %31
  %36 = getelementptr inbounds %struct.mtd_info, ptr %30, i32 0, i32 62
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %25
  %40 = phi i64 [ %1, %25 ], [ %35, %29 ]
  %41 = tail call i32 %11(ptr noundef %5, i64 noundef %40, i32 noundef %2) #12
  br label %42

42:                                               ; preds = %39, %23, %19, %15, %13, %9
  %43 = phi i32 [ %41, %39 ], [ -95, %9 ], [ -22, %19 ], [ -22, %15 ], [ -22, %13 ], [ 0, %23 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_get_unmapped_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = zext i32 %2 to i64
  store i32 0, ptr %5, align 4
  store ptr null, ptr %6, align 4
  %14 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %88, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %19, %13
  br i1 %20, label %21, label %88

21:                                               ; preds = %17
  %22 = zext i32 %1 to i64
  %23 = sub i64 %19, %13
  %24 = icmp ult i64 %23, %22
  br i1 %24, label %88, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %31, %27
  %32 = phi ptr [ %39, %31 ], [ %29, %27 ]
  %33 = phi i64 [ %37, %31 ], [ %13, %27 ]
  %34 = phi ptr [ %32, %31 ], [ %0, %27 ]
  %35 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 64, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %33
  %38 = getelementptr inbounds %struct.mtd_info, ptr %32, i32 0, i32 62
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %31

41:                                               ; preds = %31, %27
  %42 = phi i64 [ %13, %27 ], [ %37, %31 ]
  %43 = call i32 %15(ptr noundef %8, i64 noundef %42, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = load i32, ptr %5, align 4
  br label %47

47:                                               ; preds = %45, %25
  %48 = phi i32 [ %46, %45 ], [ 0, %25 ]
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %85, label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %53, %50 ], [ %0, %47 ]
  %52 = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 62
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %50

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.mtd_info, ptr %51, i32 0, i32 23
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %88, label %59

59:                                               ; preds = %55
  %60 = load i64, ptr %18, align 8
  %61 = icmp ugt i64 %60, %13
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = zext i32 %48 to i64
  %64 = sub i64 %60, %13
  %65 = icmp ult i64 %64, %63
  %66 = icmp eq i32 %48, 0
  %67 = or i1 %66, %65
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %68
  %73 = phi ptr [ %80, %72 ], [ %70, %68 ]
  %74 = phi i64 [ %78, %72 ], [ %13, %68 ]
  %75 = phi ptr [ %73, %72 ], [ %0, %68 ]
  %76 = getelementptr inbounds %struct.mtd_info, ptr %75, i32 0, i32 64, i32 0, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = add i64 %77, %74
  %79 = getelementptr inbounds %struct.mtd_info, ptr %73, i32 0, i32 62
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %72

82:                                               ; preds = %72, %68
  %83 = phi i64 [ %13, %68 ], [ %78, %72 ]
  %84 = call i32 %57(ptr noundef %51, i64 noundef %83, i32 noundef %48) #12
  br label %88

85:                                               ; preds = %47
  %86 = load ptr, ptr %6, align 4
  %87 = ptrtoint ptr %86 to i32
  br label %88

88:                                               ; preds = %85, %82, %62, %59, %55, %41, %21, %17, %12
  %89 = phi i32 [ %87, %85 ], [ %43, %41 ], [ -38, %55 ], [ -38, %59 ], [ -38, %62 ], [ -38, %82 ], [ -22, %17 ], [ -22, %21 ], [ -95, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_ops, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 6
  store ptr %4, ptr %8, align 4
  %9 = call i32 @mtd_read_oob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %6)
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_read_oob(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %9
  %22 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  store i32 0, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = icmp slt i64 %1, 0
  br i1 %28, label %170, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  %33 = add nuw i64 %32, %1
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %170, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %89, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %2, align 4
  %45 = icmp eq i32 %44, 1
  %46 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %47 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %48 = select i1 %45, ptr %46, ptr %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %43, %49
  br i1 %50, label %51, label %170

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 9
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i64 %35, 4294967296
  br i1 %58, label %59, label %62, !prof !10

59:                                               ; preds = %55
  %60 = trunc i64 %35 to i32
  %61 = udiv i32 %60, %57
  br label %72

62:                                               ; preds = %55
  %63 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %57, i64 %35) #13, !srcloc !11
  %64 = extractvalue { i64, i64 } %63, 1
  %65 = trunc i64 %64 to i32
  br label %72

66:                                               ; preds = %51
  %67 = zext i32 %53 to i64
  %68 = lshr i64 %35, %67
  %69 = trunc i64 %68 to i32
  %70 = lshr i64 %1, %67
  %71 = trunc i64 %70 to i32
  br label %82

72:                                               ; preds = %62, %59
  %73 = phi i32 [ %61, %59 ], [ %65, %62 ]
  %74 = icmp ult i64 %1, 4294967296
  br i1 %74, label %75, label %78, !prof !10

75:                                               ; preds = %72
  %76 = trunc i64 %1 to i32
  %77 = udiv i32 %76, %57
  br label %82

78:                                               ; preds = %72
  %79 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %57, i64 %1) #13, !srcloc !11
  %80 = extractvalue { i64, i64 } %79, 1
  %81 = trunc i64 %80 to i32
  br label %82

82:                                               ; preds = %78, %75, %66
  %83 = phi i32 [ %69, %66 ], [ %73, %75 ], [ %73, %78 ]
  %84 = phi i32 [ %71, %66 ], [ %77, %75 ], [ %81, %78 ]
  %85 = sub i32 %83, %84
  %86 = mul i32 %85, %49
  %87 = sub i32 %86, %43
  %88 = icmp ugt i32 %39, %87
  br i1 %88, label %170, label %89

89:                                               ; preds = %82, %37
  %90 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 27
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 24
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = xor i1 %24, true
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %170, label %99

99:                                               ; preds = %93, %89
  %100 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 16384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = tail call fastcc i32 @mtd_io_emulated_slc(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true, ptr noundef %2)
  br label %136

106:                                              ; preds = %106, %99
  %107 = phi ptr [ %109, %106 ], [ %0, %99 ]
  %108 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 62
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %106

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %123, %115 ], [ %113, %111 ]
  %117 = phi i64 [ %121, %115 ], [ %1, %111 ]
  %118 = phi ptr [ %116, %115 ], [ %0, %111 ]
  %119 = getelementptr inbounds %struct.mtd_info, ptr %118, i32 0, i32 64, i32 0, i32 1
  %120 = load i64, ptr %119, align 8
  %121 = add i64 %120, %117
  %122 = getelementptr inbounds %struct.mtd_info, ptr %116, i32 0, i32 62
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %115

125:                                              ; preds = %115, %111
  %126 = phi i64 [ %1, %111 ], [ %121, %115 ]
  %127 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 27
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = tail call i32 %128(ptr noundef %107, i64 noundef %126, ptr noundef %2) #12
  br label %136

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 24
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 %134(ptr noundef %107, i64 noundef %126, i32 noundef %31, ptr noundef %15, ptr noundef %17) #12
  br label %136

136:                                              ; preds = %132, %130, %104
  %137 = phi i32 [ %105, %104 ], [ %131, %130 ], [ %135, %132 ]
  %138 = icmp eq ptr %5, %0
  br i1 %138, label %159, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr %10, align 4
  %141 = load i32, ptr %12, align 4
  %142 = sub i32 %141, %13
  %143 = sub i32 %140, %11
  %144 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %147, %139
  %148 = phi ptr [ %157, %147 ], [ %145, %139 ]
  %149 = phi ptr [ %148, %147 ], [ %0, %139 ]
  %150 = getelementptr inbounds %struct.mtd_info, ptr %149, i32 0, i32 52
  %151 = getelementptr inbounds %struct.mtd_info, ptr %149, i32 0, i32 52, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %142, %152
  store i32 %153, ptr %151, align 4
  %154 = load i32, ptr %150, align 4
  %155 = add i32 %143, %154
  store i32 %155, ptr %150, align 4
  %156 = getelementptr inbounds %struct.mtd_info, ptr %148, i32 0, i32 62
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %147

159:                                              ; preds = %147, %139, %136
  %160 = icmp slt i32 %137, 0
  br i1 %160, label %170, label %161, !prof !8

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 18
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 12
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %137, %167
  %169 = select i1 %168, i32 0, i32 -117
  br label %170

170:                                              ; preds = %165, %161, %159, %93, %82, %41, %29, %27
  %171 = phi i32 [ %169, %165 ], [ -95, %93 ], [ %137, %159 ], [ 0, %161 ], [ -22, %82 ], [ -22, %29 ], [ -22, %27 ], [ -22, %41 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_ops, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i32 %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 6
  store ptr %4, ptr %8, align 4
  %9 = call i32 @mtd_write_oob(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %6)
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_write_oob(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %136, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  store i32 0, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = icmp slt i64 %1, 0
  br i1 %29, label %136, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = add nuw i64 %33, %1
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %136, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %90, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mtd_oob_ops, ptr %2, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %2, align 4
  %46 = icmp eq i32 %45, 1
  %47 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %48 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %49 = select i1 %46, ptr %47, ptr %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %44, %50
  br i1 %51, label %52, label %136

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 9
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i64 %36, 4294967296
  br i1 %59, label %60, label %63, !prof !10

60:                                               ; preds = %56
  %61 = trunc i64 %36 to i32
  %62 = udiv i32 %61, %58
  br label %73

63:                                               ; preds = %56
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %36) #13, !srcloc !11
  %65 = extractvalue { i64, i64 } %64, 1
  %66 = trunc i64 %65 to i32
  br label %73

67:                                               ; preds = %52
  %68 = zext i32 %54 to i64
  %69 = lshr i64 %36, %68
  %70 = trunc i64 %69 to i32
  %71 = lshr i64 %1, %68
  %72 = trunc i64 %71 to i32
  br label %83

73:                                               ; preds = %63, %60
  %74 = phi i32 [ %62, %60 ], [ %66, %63 ]
  %75 = icmp ult i64 %1, 4294967296
  br i1 %75, label %76, label %79, !prof !10

76:                                               ; preds = %73
  %77 = trunc i64 %1 to i32
  %78 = udiv i32 %77, %58
  br label %83

79:                                               ; preds = %73
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %1) #13, !srcloc !11
  %81 = extractvalue { i64, i64 } %80, 1
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %79, %76, %67
  %84 = phi i32 [ %70, %67 ], [ %74, %76 ], [ %74, %79 ]
  %85 = phi i32 [ %72, %67 ], [ %78, %76 ], [ %82, %79 ]
  %86 = sub i32 %84, %85
  %87 = mul i32 %86, %50
  %88 = sub i32 %87, %44
  %89 = icmp ugt i32 %40, %88
  br i1 %89, label %136, label %90

90:                                               ; preds = %83, %38
  %91 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 28
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 25
  %96 = load ptr, ptr %95, align 8
  %97 = icmp eq ptr %96, null
  %98 = xor i1 %25, true
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %136, label %100

100:                                              ; preds = %94, %90
  %101 = load i32, ptr %12, align 4
  %102 = and i32 %101, 16384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call fastcc i32 @mtd_io_emulated_slc(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false, ptr noundef %2)
  br label %136

106:                                              ; preds = %106, %100
  %107 = phi ptr [ %109, %106 ], [ %0, %100 ]
  %108 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 62
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %106

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %123, %115 ], [ %113, %111 ]
  %117 = phi i64 [ %121, %115 ], [ %1, %111 ]
  %118 = phi ptr [ %116, %115 ], [ %0, %111 ]
  %119 = getelementptr inbounds %struct.mtd_info, ptr %118, i32 0, i32 64, i32 0, i32 1
  %120 = load i64, ptr %119, align 8
  %121 = add i64 %120, %117
  %122 = getelementptr inbounds %struct.mtd_info, ptr %116, i32 0, i32 62
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %115

125:                                              ; preds = %115, %111
  %126 = phi i64 [ %1, %111 ], [ %121, %115 ]
  %127 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 28
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = tail call i32 %128(ptr noundef %107, i64 noundef %126, ptr noundef %2) #12
  br label %136

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.mtd_info, ptr %107, i32 0, i32 25
  %134 = load ptr, ptr %133, align 8
  %135 = tail call i32 %134(ptr noundef %107, i64 noundef %126, i32 noundef %32, ptr noundef %11, ptr noundef %18) #12
  br label %136

136:                                              ; preds = %132, %130, %104, %94, %83, %42, %30, %28, %9
  %137 = phi i32 [ %105, %104 ], [ -30, %9 ], [ -95, %94 ], [ %131, %130 ], [ %135, %132 ], [ -22, %83 ], [ -22, %30 ], [ -22, %28 ], [ -22, %42 ]
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_panic_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %0, %5 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 26
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = icmp slt i64 %1, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = zext i32 %2 to i64
  %23 = sub i64 %19, %1
  %24 = icmp ult i64 %23, %22
  br i1 %24, label %54, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %25
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 50
  %34 = load i8, ptr %33, align 4, !range !14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8 1, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %49, %41 ], [ %39, %37 ]
  %43 = phi i64 [ %47, %41 ], [ %1, %37 ]
  %44 = phi ptr [ %42, %41 ], [ %0, %37 ]
  %45 = getelementptr inbounds %struct.mtd_info, ptr %44, i32 0, i32 64, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, %43
  %48 = getelementptr inbounds %struct.mtd_info, ptr %42, i32 0, i32 62
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %41

51:                                               ; preds = %41, %37
  %52 = phi i64 [ %1, %37 ], [ %47, %41 ]
  %53 = tail call i32 %13(ptr noundef %7, i64 noundef %52, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %54

54:                                               ; preds = %51, %30, %25, %21, %17, %15, %11
  %55 = phi i32 [ %53, %51 ], [ -95, %11 ], [ -22, %21 ], [ -22, %17 ], [ -22, %15 ], [ -30, %25 ], [ 0, %30 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtd_io_emulated_slc(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.mtd_oob_ops, align 4
  %6 = alloca %struct.mtd_pairing_info, align 8
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %14, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 %17
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 1, %12 ], [ %19, %16 ]
  %22 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %23, %25
  %27 = sdiv i32 %26, %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef align 4 dereferenceable(32) %3, i32 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !15
  %28 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i64 %1, 4294967296
  br i1 %34, label %43, label %48, !prof !10

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = trunc i64 %1 to i32
  %39 = and i32 %37, %38
  %40 = zext i32 %29 to i64
  %41 = lshr i64 %1, %40
  %42 = trunc i64 %41 to i32
  br label %56

43:                                               ; preds = %31
  %44 = trunc i64 %1 to i32
  %45 = urem i32 %44, %33
  %46 = trunc i64 %1 to i32
  %47 = udiv i32 %46, %33
  br label %56

48:                                               ; preds = %31
  %49 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %1) #13, !srcloc !11
  %50 = extractvalue { i64, i64 } %49, 0
  %51 = lshr i64 %50, 32
  %52 = trunc i64 %51 to i32
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %1) #13, !srcloc !11
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %48, %43, %35
  %57 = phi i32 [ %39, %35 ], [ %45, %43 ], [ %52, %48 ]
  %58 = phi i32 [ %42, %35 ], [ %47, %43 ], [ %55, %48 ]
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = zext i32 %61 to i64
  %63 = mul nuw i64 %62, %59
  %64 = getelementptr inbounds %struct.mtd_pairing_info, ptr %6, i32 0, i32 1
  %65 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 9
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %56
  %69 = zext i32 %57 to i64
  %70 = zext i32 %66 to i64
  %71 = lshr i64 %69, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %6, align 8
  %73 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, %57
  br label %84

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = freeze i32 %57
  %80 = freeze i32 %78
  %81 = udiv i32 %79, %80
  store i32 %81, ptr %6, align 8
  %82 = mul i32 %81, %80
  %83 = sub i32 %79, %82
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i32 [ %72, %68 ], [ %81, %76 ]
  %86 = phi i32 [ %75, %68 ], [ %83, %76 ]
  %87 = load i32, ptr %3, align 4
  %88 = icmp eq i32 %87, 1
  %89 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 7
  %90 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 6
  %91 = select i1 %88, ptr %89, ptr %90
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 4
  %94 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 2
  %95 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 1
  %96 = getelementptr inbounds %struct.mtd_oob_ops, ptr %3, i32 0, i32 3
  %97 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 16
  %98 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %99 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 1
  %100 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 3
  %101 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 5
  %102 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %103 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 2
  %104 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 6
  %105 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 4
  %106 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 7
  %107 = load i32, ptr %94, align 4
  br label %108

108:                                              ; preds = %260, %84
  %109 = phi i32 [ %85, %84 ], [ %273, %260 ]
  %110 = phi i32 [ %107, %84 ], [ %264, %260 ]
  %111 = phi i32 [ %86, %84 ], [ 0, %260 ]
  %112 = phi i64 [ %63, %84 ], [ %128, %260 ]
  %113 = phi i32 [ 0, %84 ], [ %261, %260 ]
  %114 = load i32, ptr %95, align 4
  %115 = icmp ult i32 %110, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load i32, ptr %93, align 4
  %118 = load i32, ptr %96, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %274

120:                                              ; preds = %116, %108
  %121 = icmp slt i32 %109, %27
  br i1 %121, label %126, label %122

122:                                              ; preds = %120
  store i32 0, ptr %6, align 8
  %123 = load i32, ptr %60, align 8
  %124 = zext i32 %123 to i64
  %125 = add i64 %112, %124
  br label %126

126:                                              ; preds = %122, %120
  %127 = phi i32 [ 0, %122 ], [ %109, %120 ]
  %128 = phi i64 [ %125, %122 ], [ %112, %120 ]
  br label %129

129:                                              ; preds = %129, %126
  %130 = phi ptr [ %8, %126 ], [ %132, %129 ]
  %131 = getelementptr inbounds %struct.mtd_info, ptr %130, i32 0, i32 62
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %129

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.mtd_info, ptr %130, i32 0, i32 16
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %136, align 4
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 1, i32 %139
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i32 [ 1, %134 ], [ %141, %138 ]
  %144 = getelementptr inbounds %struct.mtd_info, ptr %130, i32 0, i32 3
  %145 = load i32, ptr %144, align 8
  %146 = getelementptr inbounds %struct.mtd_info, ptr %130, i32 0, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = udiv i32 %145, %147
  %149 = sdiv i32 %148, %143
  %150 = icmp sgt i32 %127, -1
  %151 = icmp slt i32 %127, %149
  %152 = select i1 %150, i1 %151, i1 false
  br i1 %152, label %153, label %171

153:                                              ; preds = %142
  %154 = load i32, ptr %64, align 4
  %155 = icmp slt i32 %154, 0
  %156 = icmp sge i32 %154, %143
  %157 = select i1 %155, i1 true, i1 %156
  %158 = select i1 %157, i1 true, i1 %137
  %159 = select i1 %157, i32 -22, i32 %127
  br i1 %158, label %171, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.mtd_pairing_scheme, ptr %136, i32 0, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %97, align 4
  %166 = getelementptr inbounds %struct.mtd_pairing_scheme, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = call i32 %167(ptr noundef %130, ptr noundef nonnull %6) #12
  %169 = load i32, ptr %95, align 4
  %170 = load i32, ptr %94, align 4
  br label %171

171:                                              ; preds = %164, %160, %153, %142
  %172 = phi i32 [ %170, %164 ], [ %110, %153 ], [ %110, %142 ], [ %110, %160 ]
  %173 = phi i32 [ %169, %164 ], [ %114, %153 ], [ %114, %142 ], [ %114, %160 ]
  %174 = phi i32 [ %168, %164 ], [ %159, %153 ], [ -22, %142 ], [ %127, %160 ]
  %175 = load i32, ptr %98, align 4
  %176 = mul i32 %175, %174
  %177 = zext i32 %176 to i64
  %178 = add i64 %128, %177
  %179 = sub i32 %173, %172
  %180 = sub i32 %175, %111
  %181 = call i32 @llvm.umin.i32(i32 %179, i32 %180)
  store i32 %181, ptr %99, align 4
  %182 = load i32, ptr %96, align 4
  %183 = load i32, ptr %93, align 4
  %184 = sub i32 %182, %183
  %185 = load i32, ptr %101, align 4
  %186 = sub i32 %92, %185
  %187 = call i32 @llvm.umin.i32(i32 %184, i32 %186)
  store i32 %187, ptr %100, align 4
  %188 = zext i32 %111 to i64
  br i1 %2, label %189, label %225

189:                                              ; preds = %189, %171
  %190 = phi ptr [ %192, %189 ], [ %0, %171 ]
  %191 = getelementptr inbounds %struct.mtd_info, ptr %190, i32 0, i32 62
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %189

194:                                              ; preds = %189
  %195 = add i64 %178, %188
  %196 = load ptr, ptr %102, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %208, label %198

198:                                              ; preds = %198, %194
  %199 = phi ptr [ %206, %198 ], [ %196, %194 ]
  %200 = phi i64 [ %204, %198 ], [ %195, %194 ]
  %201 = phi ptr [ %199, %198 ], [ %0, %194 ]
  %202 = getelementptr inbounds %struct.mtd_info, ptr %201, i32 0, i32 64, i32 0, i32 1
  %203 = load i64, ptr %202, align 8
  %204 = add i64 %203, %200
  %205 = getelementptr inbounds %struct.mtd_info, ptr %199, i32 0, i32 62
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %198

208:                                              ; preds = %198, %194
  %209 = phi i64 [ %195, %194 ], [ %204, %198 ]
  %210 = getelementptr inbounds %struct.mtd_info, ptr %190, i32 0, i32 27
  %211 = load ptr, ptr %210, align 8
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = call i32 %211(ptr noundef %190, i64 noundef %209, ptr noundef nonnull %5) #12
  br label %220

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.mtd_info, ptr %190, i32 0, i32 24
  %217 = load ptr, ptr %216, align 4
  %218 = load ptr, ptr %104, align 4
  %219 = call i32 %217(ptr noundef %190, i64 noundef %209, i32 noundef %181, ptr noundef %103, ptr noundef %218) #12
  br label %220

220:                                              ; preds = %215, %213
  %221 = phi i32 [ %214, %213 ], [ %219, %215 ]
  %222 = icmp sgt i32 %221, 0
  %223 = call i32 @llvm.smax.i32(i32 %113, i32 %221)
  %224 = select i1 %222, i32 %223, i32 %113
  br label %256

225:                                              ; preds = %225, %171
  %226 = phi ptr [ %228, %225 ], [ %0, %171 ]
  %227 = getelementptr inbounds %struct.mtd_info, ptr %226, i32 0, i32 62
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %225

230:                                              ; preds = %225
  %231 = add i64 %178, %188
  %232 = load ptr, ptr %102, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %244, label %234

234:                                              ; preds = %234, %230
  %235 = phi ptr [ %242, %234 ], [ %232, %230 ]
  %236 = phi i64 [ %240, %234 ], [ %231, %230 ]
  %237 = phi ptr [ %235, %234 ], [ %0, %230 ]
  %238 = getelementptr inbounds %struct.mtd_info, ptr %237, i32 0, i32 64, i32 0, i32 1
  %239 = load i64, ptr %238, align 8
  %240 = add i64 %239, %236
  %241 = getelementptr inbounds %struct.mtd_info, ptr %235, i32 0, i32 62
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %234

244:                                              ; preds = %234, %230
  %245 = phi i64 [ %231, %230 ], [ %240, %234 ]
  %246 = getelementptr inbounds %struct.mtd_info, ptr %226, i32 0, i32 28
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  %250 = call i32 %247(ptr noundef %226, i64 noundef %245, ptr noundef nonnull %5) #12
  br label %256

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.mtd_info, ptr %226, i32 0, i32 25
  %253 = load ptr, ptr %252, align 8
  %254 = load ptr, ptr %104, align 4
  %255 = call i32 %253(ptr noundef %226, i64 noundef %245, i32 noundef %181, ptr noundef %103, ptr noundef %254) #12
  br label %256

256:                                              ; preds = %251, %249, %220
  %257 = phi i32 [ %221, %220 ], [ %250, %249 ], [ %255, %251 ]
  %258 = phi i32 [ %224, %220 ], [ %113, %249 ], [ %113, %251 ]
  %259 = icmp slt i32 %257, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %256
  %261 = call i32 @llvm.smax.i32(i32 %258, i32 %257)
  %262 = load i32, ptr %103, align 4
  %263 = load i32, ptr %94, align 4
  %264 = add i32 %263, %262
  store i32 %264, ptr %94, align 4
  %265 = load i32, ptr %105, align 4
  %266 = load i32, ptr %93, align 4
  %267 = add i32 %266, %265
  store i32 %267, ptr %93, align 4
  %268 = load ptr, ptr %104, align 4
  %269 = getelementptr i8, ptr %268, i32 %262
  store ptr %269, ptr %104, align 4
  %270 = load ptr, ptr %106, align 4
  %271 = getelementptr i8, ptr %270, i32 %265
  store ptr %271, ptr %106, align 4
  store i32 0, ptr %101, align 4
  %272 = load i32, ptr %6, align 8
  %273 = add i32 %272, 1
  store i32 %273, ptr %6, align 8
  br label %108

274:                                              ; preds = %256, %116
  %275 = phi i32 [ %113, %116 ], [ %257, %256 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  ret i32 %275
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_ecc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  store i64 0, ptr %2, align 4
  %10 = icmp eq ptr %5, null
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 %18(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2) #12
  br label %22

22:                                               ; preds = %20, %17, %13, %9
  %23 = phi i32 [ %21, %20 ], [ -22, %9 ], [ -524, %17 ], [ -524, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_free(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  store i64 0, ptr %2, align 4
  %10 = icmp eq ptr %5, null
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef nonnull %5, i32 noundef %1, ptr noundef %2) #12
  br label %23

23:                                               ; preds = %21, %17, %13, %9
  %24 = phi i32 [ %22, %21 ], [ -22, %9 ], [ -524, %17 ], [ -524, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_find_eccregion(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) #0 {
  store i64 0, ptr %3, align 4
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = icmp eq ptr %6, null
  br i1 %11, label %55, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = tail call i32 %17(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %3) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.mtd_oob_region, ptr %3, i32 0, i32 1
  br label %24

24:                                               ; preds = %47, %22
  %25 = phi i32 [ 0, %22 ], [ %36, %47 ]
  %26 = phi i32 [ 0, %22 ], [ %28, %47 ]
  %27 = load i32, ptr %23, align 4
  %28 = add i32 %27, %26
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %50, label %30

30:                                               ; preds = %30, %24
  %31 = phi ptr [ %33, %30 ], [ %0, %24 ]
  %32 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 62
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %30

35:                                               ; preds = %30
  %36 = add nuw i32 %25, 1
  store i64 0, ptr %3, align 4
  %37 = icmp eq ptr %31, null
  %38 = icmp slt i32 %36, 0
  %39 = or i1 %38, %37
  br i1 %39, label %55, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mtd_info, ptr %31, i32 0, i32 15
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = tail call i32 %45(ptr noundef nonnull %31, i32 noundef %36, ptr noundef %3) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %24, label %55

50:                                               ; preds = %24
  %51 = sub i32 %1, %26
  %52 = load i32, ptr %3, align 4
  %53 = add i32 %52, %51
  store i32 %53, ptr %3, align 4
  %54 = sub i32 %27, %51
  store i32 %54, ptr %23, align 4
  store i32 %25, ptr %2, align 4
  br label %55

55:                                               ; preds = %50, %47, %44, %40, %35, %19, %16, %12, %10
  %56 = phi i32 [ 0, %50 ], [ %20, %19 ], [ -524, %12 ], [ -524, %16 ], [ -22, %10 ], [ -22, %35 ], [ -524, %44 ], [ -524, %40 ], [ %48, %47 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_get_eccbytes(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %6, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %94, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %94, label %21

21:                                               ; preds = %18
  %22 = call i32 %19(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %6) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mtd_oob_region, ptr %6, i32 0, i32 1
  br label %26

26:                                               ; preds = %49, %24
  %27 = phi i32 [ 0, %24 ], [ %38, %49 ]
  %28 = phi i32 [ 0, %24 ], [ %30, %49 ]
  %29 = load i32, ptr %25, align 4
  %30 = add i32 %29, %28
  %31 = icmp ugt i32 %30, %3
  br i1 %31, label %52, label %32

32:                                               ; preds = %32, %26
  %33 = phi ptr [ %35, %32 ], [ %0, %26 ]
  %34 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 62
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32

37:                                               ; preds = %32
  %38 = add nuw i32 %27, 1
  store i64 0, ptr %6, align 8
  %39 = icmp eq ptr %33, null
  %40 = icmp slt i32 %38, 0
  %41 = or i1 %40, %39
  br i1 %41, label %94, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 15
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %94, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %46
  %50 = call i32 %47(ptr noundef nonnull %33, i32 noundef %38, ptr noundef nonnull %6) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %26, label %94

52:                                               ; preds = %26
  %53 = sub i32 %3, %28
  %54 = load i32, ptr %6, align 8
  %55 = add i32 %54, %53
  %56 = sub i32 %29, %53
  %57 = call i32 @llvm.smin.i32(i32 %4, i32 %56) #12
  %58 = getelementptr i8, ptr %2, i32 %55
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %58, i32 %57, i1 false) #12
  %59 = sub i32 %4, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %87, %52
  %62 = phi i32 [ %92, %87 ], [ %59, %52 ]
  %63 = phi i32 [ %90, %87 ], [ %57, %52 ]
  %64 = phi i32 [ %73, %87 ], [ %27, %52 ]
  %65 = phi ptr [ %66, %87 ], [ %1, %52 ]
  %66 = getelementptr i8, ptr %65, i32 %63
  br label %67

67:                                               ; preds = %67, %61
  %68 = phi ptr [ %0, %61 ], [ %70, %67 ]
  %69 = getelementptr inbounds %struct.mtd_info, ptr %68, i32 0, i32 62
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %67

72:                                               ; preds = %67
  %73 = add nuw i32 %64, 1
  store i64 0, ptr %6, align 8
  %74 = icmp eq ptr %68, null
  %75 = icmp slt i32 %73, 0
  %76 = or i1 %75, %74
  br i1 %76, label %94, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mtd_info, ptr %68, i32 0, i32 15
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = call i32 %82(ptr noundef nonnull %68, i32 noundef %73, ptr noundef nonnull %6) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, ptr %25, align 4
  %89 = load i32, ptr %6, align 8
  %90 = call i32 @llvm.smin.i32(i32 %62, i32 %88) #12
  %91 = getelementptr i8, ptr %2, i32 %89
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %91, i32 %90, i1 false) #12
  %92 = sub i32 %62, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %61

94:                                               ; preds = %87, %84, %81, %77, %72, %52, %49, %46, %42, %37, %21, %18, %14, %12
  %95 = phi i32 [ %22, %21 ], [ -524, %14 ], [ -524, %18 ], [ -22, %12 ], [ 0, %52 ], [ -524, %77 ], [ -524, %81 ], [ -22, %72 ], [ 0, %87 ], [ %85, %84 ], [ -22, %37 ], [ -524, %46 ], [ -524, %42 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_set_eccbytes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %6, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %94, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %94, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %94, label %21

21:                                               ; preds = %18
  %22 = call i32 %19(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %6) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mtd_oob_region, ptr %6, i32 0, i32 1
  br label %26

26:                                               ; preds = %49, %24
  %27 = phi i32 [ 0, %24 ], [ %38, %49 ]
  %28 = phi i32 [ 0, %24 ], [ %30, %49 ]
  %29 = load i32, ptr %25, align 4
  %30 = add i32 %29, %28
  %31 = icmp ugt i32 %30, %3
  br i1 %31, label %52, label %32

32:                                               ; preds = %32, %26
  %33 = phi ptr [ %35, %32 ], [ %0, %26 ]
  %34 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 62
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %32

37:                                               ; preds = %32
  %38 = add nuw i32 %27, 1
  store i64 0, ptr %6, align 8
  %39 = icmp eq ptr %33, null
  %40 = icmp slt i32 %38, 0
  %41 = or i1 %40, %39
  br i1 %41, label %94, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.mtd_info, ptr %33, i32 0, i32 15
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %94, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %44, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %94, label %49

49:                                               ; preds = %46
  %50 = call i32 %47(ptr noundef nonnull %33, i32 noundef %38, ptr noundef nonnull %6) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %26, label %94

52:                                               ; preds = %26
  %53 = sub i32 %3, %28
  %54 = load i32, ptr %6, align 8
  %55 = add i32 %54, %53
  %56 = sub i32 %29, %53
  %57 = call i32 @llvm.smin.i32(i32 %4, i32 %56) #12
  %58 = getelementptr i8, ptr %2, i32 %55
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %58, ptr align 1 %1, i32 %57, i1 false) #12
  %59 = sub i32 %4, %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %87, %52
  %62 = phi i32 [ %92, %87 ], [ %59, %52 ]
  %63 = phi i32 [ %90, %87 ], [ %57, %52 ]
  %64 = phi i32 [ %73, %87 ], [ %27, %52 ]
  %65 = phi ptr [ %66, %87 ], [ %1, %52 ]
  %66 = getelementptr i8, ptr %65, i32 %63
  br label %67

67:                                               ; preds = %67, %61
  %68 = phi ptr [ %0, %61 ], [ %70, %67 ]
  %69 = getelementptr inbounds %struct.mtd_info, ptr %68, i32 0, i32 62
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %67

72:                                               ; preds = %67
  %73 = add nuw i32 %64, 1
  store i64 0, ptr %6, align 8
  %74 = icmp eq ptr %68, null
  %75 = icmp slt i32 %73, 0
  %76 = or i1 %75, %74
  br i1 %76, label %94, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.mtd_info, ptr %68, i32 0, i32 15
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %79, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = call i32 %82(ptr noundef nonnull %68, i32 noundef %73, ptr noundef nonnull %6) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, ptr %25, align 4
  %89 = load i32, ptr %6, align 8
  %90 = call i32 @llvm.smin.i32(i32 %62, i32 %88) #12
  %91 = getelementptr i8, ptr %2, i32 %89
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %91, ptr align 1 %66, i32 %90, i1 false) #12
  %92 = sub i32 %62, %90
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %61

94:                                               ; preds = %87, %84, %81, %77, %72, %52, %49, %46, %42, %37, %21, %18, %14, %12
  %95 = phi i32 [ %22, %21 ], [ -524, %14 ], [ -524, %18 ], [ -22, %12 ], [ 0, %52 ], [ -524, %77 ], [ -524, %81 ], [ -22, %72 ], [ 0, %87 ], [ %85, %84 ], [ -22, %37 ], [ -524, %46 ], [ -524, %42 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_get_databytes(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %6, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %97, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %97, label %22

22:                                               ; preds = %18
  %23 = call i32 %20(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %6) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mtd_oob_region, ptr %6, i32 0, i32 1
  br label %27

27:                                               ; preds = %51, %25
  %28 = phi i32 [ 0, %25 ], [ %39, %51 ]
  %29 = phi i32 [ 0, %25 ], [ %31, %51 ]
  %30 = load i32, ptr %26, align 4
  %31 = add i32 %30, %29
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %54, label %33

33:                                               ; preds = %33, %27
  %34 = phi ptr [ %36, %33 ], [ %0, %27 ]
  %35 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 62
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33

38:                                               ; preds = %33
  %39 = add nuw i32 %28, 1
  store i64 0, ptr %6, align 8
  %40 = icmp eq ptr %34, null
  %41 = icmp slt i32 %39, 0
  %42 = or i1 %41, %40
  br i1 %42, label %97, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 15
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %97, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %47
  %52 = call i32 %49(ptr noundef nonnull %34, i32 noundef %39, ptr noundef nonnull %6) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %27, label %97

54:                                               ; preds = %27
  %55 = sub i32 %3, %29
  %56 = load i32, ptr %6, align 8
  %57 = add i32 %56, %55
  %58 = sub i32 %30, %55
  %59 = call i32 @llvm.smin.i32(i32 %4, i32 %58) #12
  %60 = getelementptr i8, ptr %2, i32 %57
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %60, i32 %59, i1 false) #12
  %61 = sub i32 %4, %59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %90, %54
  %64 = phi i32 [ %95, %90 ], [ %61, %54 ]
  %65 = phi i32 [ %93, %90 ], [ %59, %54 ]
  %66 = phi i32 [ %75, %90 ], [ %28, %54 ]
  %67 = phi ptr [ %68, %90 ], [ %1, %54 ]
  %68 = getelementptr i8, ptr %67, i32 %65
  br label %69

69:                                               ; preds = %69, %63
  %70 = phi ptr [ %0, %63 ], [ %72, %69 ]
  %71 = getelementptr inbounds %struct.mtd_info, ptr %70, i32 0, i32 62
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %69

74:                                               ; preds = %69
  %75 = add nuw i32 %66, 1
  store i64 0, ptr %6, align 8
  %76 = icmp eq ptr %70, null
  %77 = icmp slt i32 %75, 0
  %78 = or i1 %77, %76
  br i1 %78, label %97, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.mtd_info, ptr %70, i32 0, i32 15
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %81, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = call i32 %85(ptr noundef nonnull %70, i32 noundef %75, ptr noundef nonnull %6) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, ptr %26, align 4
  %92 = load i32, ptr %6, align 8
  %93 = call i32 @llvm.smin.i32(i32 %64, i32 %91) #12
  %94 = getelementptr i8, ptr %2, i32 %92
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %94, i32 %93, i1 false) #12
  %95 = sub i32 %64, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %63

97:                                               ; preds = %90, %87, %83, %79, %74, %54, %51, %47, %43, %38, %22, %18, %14, %12
  %98 = phi i32 [ %23, %22 ], [ -524, %14 ], [ -524, %18 ], [ -22, %12 ], [ 0, %54 ], [ -524, %79 ], [ -524, %83 ], [ -22, %74 ], [ 0, %90 ], [ %88, %87 ], [ -22, %38 ], [ -524, %47 ], [ -524, %43 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_set_databytes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %6, align 8
  %13 = icmp eq ptr %8, null
  br i1 %13, label %97, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %97, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %97, label %22

22:                                               ; preds = %18
  %23 = call i32 %20(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %6) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.mtd_oob_region, ptr %6, i32 0, i32 1
  br label %27

27:                                               ; preds = %51, %25
  %28 = phi i32 [ 0, %25 ], [ %39, %51 ]
  %29 = phi i32 [ 0, %25 ], [ %31, %51 ]
  %30 = load i32, ptr %26, align 4
  %31 = add i32 %30, %29
  %32 = icmp ugt i32 %31, %3
  br i1 %32, label %54, label %33

33:                                               ; preds = %33, %27
  %34 = phi ptr [ %36, %33 ], [ %0, %27 ]
  %35 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 62
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33

38:                                               ; preds = %33
  %39 = add nuw i32 %28, 1
  store i64 0, ptr %6, align 8
  %40 = icmp eq ptr %34, null
  %41 = icmp slt i32 %39, 0
  %42 = or i1 %41, %40
  br i1 %42, label %97, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mtd_info, ptr %34, i32 0, i32 15
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %97, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %47
  %52 = call i32 %49(ptr noundef nonnull %34, i32 noundef %39, ptr noundef nonnull %6) #12
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %27, label %97

54:                                               ; preds = %27
  %55 = sub i32 %3, %29
  %56 = load i32, ptr %6, align 8
  %57 = add i32 %56, %55
  %58 = sub i32 %30, %55
  %59 = call i32 @llvm.smin.i32(i32 %4, i32 %58) #12
  %60 = getelementptr i8, ptr %2, i32 %57
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %1, i32 %59, i1 false) #12
  %61 = sub i32 %4, %59
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %97, label %63

63:                                               ; preds = %90, %54
  %64 = phi i32 [ %95, %90 ], [ %61, %54 ]
  %65 = phi i32 [ %93, %90 ], [ %59, %54 ]
  %66 = phi i32 [ %75, %90 ], [ %28, %54 ]
  %67 = phi ptr [ %68, %90 ], [ %1, %54 ]
  %68 = getelementptr i8, ptr %67, i32 %65
  br label %69

69:                                               ; preds = %69, %63
  %70 = phi ptr [ %0, %63 ], [ %72, %69 ]
  %71 = getelementptr inbounds %struct.mtd_info, ptr %70, i32 0, i32 62
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %69

74:                                               ; preds = %69
  %75 = add nuw i32 %66, 1
  store i64 0, ptr %6, align 8
  %76 = icmp eq ptr %70, null
  %77 = icmp slt i32 %75, 0
  %78 = or i1 %77, %76
  br i1 %78, label %97, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.mtd_info, ptr %70, i32 0, i32 15
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %81, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = call i32 %85(ptr noundef nonnull %70, i32 noundef %75, ptr noundef nonnull %6) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, ptr %26, align 4
  %92 = load i32, ptr %6, align 8
  %93 = call i32 @llvm.smin.i32(i32 %64, i32 %91) #12
  %94 = getelementptr i8, ptr %2, i32 %92
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %94, ptr align 1 %68, i32 %93, i1 false) #12
  %95 = sub i32 %64, %93
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %63

97:                                               ; preds = %90, %87, %83, %79, %74, %54, %51, %47, %43, %38, %22, %18, %14, %12
  %98 = phi i32 [ %23, %22 ], [ -524, %14 ], [ -524, %18 ], [ -22, %12 ], [ 0, %54 ], [ -524, %79 ], [ -524, %83 ], [ -22, %74 ], [ 0, %90 ], [ %88, %87 ], [ -22, %38 ], [ -524, %47 ], [ -524, %43 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_count_freebytes(ptr noundef %0) #0 {
  %2 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  br label %4

4:                                                ; preds = %26, %1
  %5 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %6 = phi i32 [ 0, %1 ], [ %29, %26 ]
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %2, align 8
  %13 = icmp eq ptr %8, null
  %14 = icmp slt i32 %5, 0
  %15 = or i1 %14, %13
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mtd_ooblayout_ops, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = call i32 %22(ptr noundef nonnull %8, i32 noundef %5, ptr noundef nonnull %2) #12
  switch i32 %25, label %31 [
    i32 0, label %26
    i32 -34, label %30
  ]

26:                                               ; preds = %24
  %27 = add nuw i32 %5, 1
  %28 = load i32, ptr %3, align 4
  %29 = add i32 %28, %6
  br label %4

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %24, %20, %16, %12
  %32 = phi i32 [ %6, %30 ], [ %25, %24 ], [ -524, %16 ], [ -524, %20 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_ooblayout_count_eccbytes(ptr noundef %0) #0 {
  %2 = alloca %struct.mtd_oob_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.mtd_oob_region, ptr %2, i32 0, i32 1
  br label %4

4:                                                ; preds = %25, %1
  %5 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %6 = phi i32 [ 0, %1 ], [ %28, %25 ]
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %0, %4 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i64 0, ptr %2, align 8
  %13 = icmp eq ptr %8, null
  %14 = icmp slt i32 %5, 0
  %15 = or i1 %14, %13
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 15
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = call i32 %21(ptr noundef nonnull %8, i32 noundef %5, ptr noundef nonnull %2) #12
  switch i32 %24, label %30 [
    i32 0, label %25
    i32 -34, label %29
  ]

25:                                               ; preds = %23
  %26 = add nuw i32 %5, 1
  %27 = load i32, ptr %3, align 4
  %28 = add i32 %27, %6
  br label %4

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %23, %20, %16, %12
  %31 = phi i32 [ %6, %29 ], [ %24, %23 ], [ -524, %16 ], [ -524, %20 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_get_fact_prot_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 29
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call i32 %12(ptr noundef %6, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %18

18:                                               ; preds = %16, %14, %10
  %19 = phi i32 [ %17, %16 ], [ -95, %10 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_read_fact_prot_reg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %0, %5 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 30
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 %13(ptr noundef %7, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %19

19:                                               ; preds = %17, %15, %11
  %20 = phi i32 [ %18, %17 ], [ -95, %11 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_get_user_prot_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 31
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call i32 %12(ptr noundef %6, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12
  br label %18

18:                                               ; preds = %16, %14, %10
  %19 = phi i32 [ %17, %16 ], [ -95, %10 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_read_user_prot_reg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %0, %5 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 32
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 %13(ptr noundef %7, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  br label %19

19:                                               ; preds = %17, %15, %11
  %20 = phi i32 [ %18, %17 ], [ -95, %11 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_write_user_prot_reg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %0, %5 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  store i32 0, ptr %3, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 33
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = tail call i32 %13(ptr noundef %7, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 -28, i32 0
  br label %24

24:                                               ; preds = %20, %17, %15, %11
  %25 = phi i32 [ %23, %20 ], [ -95, %11 ], [ 0, %15 ], [ %18, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_lock_user_prot_reg(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 34
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i32 %11(ptr noundef %5, i64 noundef %1, i32 noundef %2) #12
  br label %17

17:                                               ; preds = %15, %13, %9
  %18 = phi i32 [ %16, %15 ], [ -95, %9 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_erase_user_prot_reg(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 35
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i32 %11(ptr noundef %5, i64 noundef %1, i32 noundef %2) #12
  br label %17

17:                                               ; preds = %15, %13, %9
  %18 = phi i32 [ %16, %15 ], [ -95, %9 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_lock(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 38
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %13

13:                                               ; preds = %9
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ule i64 %17, %1
  %19 = sub i64 %17, %1
  %20 = icmp ult i64 %19, %2
  %21 = or i1 %18, %20
  br i1 %21, label %94, label %22

22:                                               ; preds = %15
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %94, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i64 %1, 4294967296
  br i1 %36, label %37, label %40, !prof !10

37:                                               ; preds = %33
  %38 = trunc i64 %1 to i32
  %39 = udiv i32 %38, %35
  br label %54

40:                                               ; preds = %33
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %1) #13, !srcloc !11
  %42 = extractvalue { i64, i64 } %41, 1
  %43 = trunc i64 %42 to i32
  br label %54

44:                                               ; preds = %29
  %45 = zext i32 %31 to i64
  %46 = lshr i64 %1, %45
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = mul nuw i64 %47, %50
  %52 = lshr i64 %2, %45
  %53 = trunc i64 %52 to i32
  br label %69

54:                                               ; preds = %40, %37
  %55 = phi i32 [ %39, %37 ], [ %43, %40 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %58 = load i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  %60 = mul nuw i64 %59, %56
  %61 = icmp ult i64 %2, 4294967296
  br i1 %61, label %62, label %65, !prof !10

62:                                               ; preds = %54
  %63 = trunc i64 %2 to i32
  %64 = udiv i32 %63, %35
  br label %69

65:                                               ; preds = %54
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %2) #13, !srcloc !11
  %67 = extractvalue { i64, i64 } %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %65, %62, %44
  %70 = phi i64 [ %51, %44 ], [ %60, %62 ], [ %60, %65 ]
  %71 = phi i64 [ %50, %44 ], [ %59, %62 ], [ %59, %65 ]
  %72 = phi i32 [ %53, %44 ], [ %64, %62 ], [ %68, %65 ]
  %73 = zext i32 %72 to i64
  %74 = mul nuw i64 %71, %73
  br label %75

75:                                               ; preds = %69, %24
  %76 = phi i64 [ %70, %69 ], [ %1, %24 ]
  %77 = phi i64 [ %74, %69 ], [ %2, %24 ]
  %78 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %81, %75
  %82 = phi ptr [ %89, %81 ], [ %79, %75 ]
  %83 = phi i64 [ %87, %81 ], [ %76, %75 ]
  %84 = phi ptr [ %82, %81 ], [ %0, %75 ]
  %85 = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 64, i32 0, i32 1
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %83
  %88 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 62
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %81

91:                                               ; preds = %81, %75
  %92 = phi i64 [ %76, %75 ], [ %87, %81 ]
  %93 = tail call i32 %11(ptr noundef %5, i64 noundef %92, i64 noundef %77) #12
  br label %94

94:                                               ; preds = %91, %22, %15, %13, %9
  %95 = phi i32 [ %93, %91 ], [ -95, %9 ], [ -22, %15 ], [ -22, %13 ], [ 0, %22 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_is_locked(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %0, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 40
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %94, label %13

13:                                               ; preds = %9
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %94, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ule i64 %17, %1
  %19 = sub i64 %17, %1
  %20 = icmp ult i64 %19, %2
  %21 = or i1 %18, %20
  br i1 %21, label %94, label %22

22:                                               ; preds = %15
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %94, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = icmp ult i64 %1, 4294967296
  br i1 %36, label %37, label %40, !prof !10

37:                                               ; preds = %33
  %38 = trunc i64 %1 to i32
  %39 = udiv i32 %38, %35
  br label %54

40:                                               ; preds = %33
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %1) #13, !srcloc !11
  %42 = extractvalue { i64, i64 } %41, 1
  %43 = trunc i64 %42 to i32
  br label %54

44:                                               ; preds = %29
  %45 = zext i32 %31 to i64
  %46 = lshr i64 %1, %45
  %47 = and i64 %46, 4294967295
  %48 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = mul nuw i64 %47, %50
  %52 = lshr i64 %2, %45
  %53 = trunc i64 %52 to i32
  br label %69

54:                                               ; preds = %40, %37
  %55 = phi i32 [ %39, %37 ], [ %43, %40 ]
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %58 = load i32, ptr %57, align 8
  %59 = zext i32 %58 to i64
  %60 = mul nuw i64 %59, %56
  %61 = icmp ult i64 %2, 4294967296
  br i1 %61, label %62, label %65, !prof !10

62:                                               ; preds = %54
  %63 = trunc i64 %2 to i32
  %64 = udiv i32 %63, %35
  br label %69

65:                                               ; preds = %54
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %2) #13, !srcloc !11
  %67 = extractvalue { i64, i64 } %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %65, %62, %44
  %70 = phi i64 [ %51, %44 ], [ %60, %62 ], [ %60, %65 ]
  %71 = phi i64 [ %50, %44 ], [ %59, %62 ], [ %59, %65 ]
  %72 = phi i32 [ %53, %44 ], [ %64, %62 ], [ %68, %65 ]
  %73 = zext i32 %72 to i64
  %74 = mul nuw i64 %71, %73
  br label %75

75:                                               ; preds = %69, %24
  %76 = phi i64 [ %70, %69 ], [ %1, %24 ]
  %77 = phi i64 [ %74, %69 ], [ %2, %24 ]
  %78 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %81, %75
  %82 = phi ptr [ %89, %81 ], [ %79, %75 ]
  %83 = phi i64 [ %87, %81 ], [ %76, %75 ]
  %84 = phi ptr [ %82, %81 ], [ %0, %75 ]
  %85 = getelementptr inbounds %struct.mtd_info, ptr %84, i32 0, i32 64, i32 0, i32 1
  %86 = load i64, ptr %85, align 8
  %87 = add i64 %86, %83
  %88 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 62
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %81

91:                                               ; preds = %81, %75
  %92 = phi i64 [ %76, %75 ], [ %87, %81 ]
  %93 = tail call i32 %11(ptr noundef %5, i64 noundef %92, i64 noundef %77) #12
  br label %94

94:                                               ; preds = %91, %22, %15, %13, %9
  %95 = phi i32 [ %93, %91 ], [ -95, %9 ], [ -22, %15 ], [ -22, %13 ], [ 0, %22 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_block_isreserved(ptr noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = icmp slt i64 %1, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %1
  br i1 %13, label %14, label %67

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 41
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = zext i32 %25 to i64
  %29 = lshr i64 %1, %28
  %30 = trunc i64 %29 to i32
  br label %42

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i64 %1, 4294967296
  br i1 %34, label %35, label %38, !prof !10

35:                                               ; preds = %31
  %36 = trunc i64 %1 to i32
  %37 = udiv i32 %36, %33
  br label %42

38:                                               ; preds = %31
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %1) #13, !srcloc !11
  %40 = extractvalue { i64, i64 } %39, 1
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %38, %35, %27
  %43 = phi i32 [ %30, %27 ], [ %37, %35 ], [ %41, %38 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = zext i32 %46 to i64
  %48 = mul nuw i64 %47, %44
  br label %49

49:                                               ; preds = %42, %18
  %50 = phi i64 [ %48, %42 ], [ %1, %18 ]
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %62, %54 ], [ %52, %49 ]
  %56 = phi i64 [ %60, %54 ], [ %50, %49 ]
  %57 = phi ptr [ %55, %54 ], [ %0, %49 ]
  %58 = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 64, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %56
  %61 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 62
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %54

64:                                               ; preds = %54, %49
  %65 = phi i64 [ %50, %49 ], [ %60, %54 ]
  %66 = tail call i32 %16(ptr noundef %4, i64 noundef %65) #12
  br label %67

67:                                               ; preds = %64, %14, %10, %8
  %68 = phi i32 [ %66, %64 ], [ -22, %10 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_block_isbad(ptr noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = icmp slt i64 %1, 0
  br i1 %9, label %67, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %1
  br i1 %13, label %14, label %67

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 42
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = zext i32 %25 to i64
  %29 = lshr i64 %1, %28
  %30 = trunc i64 %29 to i32
  br label %42

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = icmp ult i64 %1, 4294967296
  br i1 %34, label %35, label %38, !prof !10

35:                                               ; preds = %31
  %36 = trunc i64 %1 to i32
  %37 = udiv i32 %36, %33
  br label %42

38:                                               ; preds = %31
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %1) #13, !srcloc !11
  %40 = extractvalue { i64, i64 } %39, 1
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %38, %35, %27
  %43 = phi i32 [ %30, %27 ], [ %37, %35 ], [ %41, %38 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = zext i32 %46 to i64
  %48 = mul nuw i64 %47, %44
  br label %49

49:                                               ; preds = %42, %18
  %50 = phi i64 [ %48, %42 ], [ %1, %18 ]
  %51 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %62, %54 ], [ %52, %49 ]
  %56 = phi i64 [ %60, %54 ], [ %50, %49 ]
  %57 = phi ptr [ %55, %54 ], [ %0, %49 ]
  %58 = getelementptr inbounds %struct.mtd_info, ptr %57, i32 0, i32 64, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %56
  %61 = getelementptr inbounds %struct.mtd_info, ptr %55, i32 0, i32 62
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %54

64:                                               ; preds = %54, %49
  %65 = phi i64 [ %50, %49 ], [ %60, %54 ]
  %66 = tail call i32 %16(ptr noundef %4, i64 noundef %65) #12
  br label %67

67:                                               ; preds = %64, %14, %10, %8
  %68 = phi i32 [ %66, %64 ], [ -22, %10 ], [ -22, %8 ], [ 0, %14 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_block_markbad(ptr noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 62
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 43
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %83, label %12

12:                                               ; preds = %8
  %13 = icmp slt i64 %1, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = icmp ugt i64 %16, %1
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %83, label %23

23:                                               ; preds = %18
  %24 = and i32 %20, 16384
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = zext i32 %28 to i64
  %32 = lshr i64 %1, %31
  %33 = trunc i64 %32 to i32
  br label %45

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = icmp ult i64 %1, 4294967296
  br i1 %37, label %38, label %41, !prof !10

38:                                               ; preds = %34
  %39 = trunc i64 %1 to i32
  %40 = udiv i32 %39, %36
  br label %45

41:                                               ; preds = %34
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %1) #13, !srcloc !11
  %43 = extractvalue { i64, i64 } %42, 1
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %41, %38, %30
  %46 = phi i32 [ %33, %30 ], [ %40, %38 ], [ %44, %41 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 3
  %49 = load i32, ptr %48, align 8
  %50 = zext i32 %49 to i64
  %51 = mul nuw i64 %50, %47
  br label %52

52:                                               ; preds = %45, %23
  %53 = phi i64 [ %51, %45 ], [ %1, %23 ]
  %54 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %57, %52
  %58 = phi ptr [ %65, %57 ], [ %55, %52 ]
  %59 = phi i64 [ %63, %57 ], [ %53, %52 ]
  %60 = phi ptr [ %58, %57 ], [ %0, %52 ]
  %61 = getelementptr inbounds %struct.mtd_info, ptr %60, i32 0, i32 64, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %62, %59
  %64 = getelementptr inbounds %struct.mtd_info, ptr %58, i32 0, i32 62
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %57

67:                                               ; preds = %57, %52
  %68 = phi i64 [ %53, %52 ], [ %63, %57 ]
  %69 = tail call i32 %10(ptr noundef %4, i64 noundef %68) #12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load ptr, ptr %54, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %74, %71
  %75 = phi ptr [ %81, %74 ], [ %72, %71 ]
  %76 = phi ptr [ %75, %74 ], [ %0, %71 ]
  %77 = getelementptr inbounds %struct.mtd_info, ptr %76, i32 0, i32 52, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.mtd_info, ptr %75, i32 0, i32 62
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %74

83:                                               ; preds = %74, %71, %67, %18, %14, %12, %8
  %84 = phi i32 [ -95, %8 ], [ -22, %14 ], [ -22, %12 ], [ -30, %18 ], [ %69, %67 ], [ 0, %71 ], [ 0, %74 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtd_writev(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.mtd_oob_ops, align 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %10, %7 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  store i32 0, ptr %4, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1024
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %72, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 36
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 6
  %26 = getelementptr inbounds %struct.mtd_oob_ops, ptr %6, i32 0, i32 2
  br label %27

27:                                               ; preds = %47, %23
  %28 = phi i32 [ 0, %23 ], [ %49, %47 ]
  %29 = phi i32 [ 0, %23 ], [ %50, %47 ]
  %30 = phi i64 [ %3, %23 ], [ %48, %47 ]
  %31 = getelementptr %struct.kvec, ptr %1, i32 %29, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = getelementptr %struct.kvec, ptr %1, i32 %29
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i64 32, i1 false) #12
  store i32 %32, ptr %24, align 4
  store ptr %36, ptr %25, align 4
  %37 = call i32 @mtd_write_oob(ptr noundef %0, i64 noundef %30, ptr noundef nonnull %6) #12
  %38 = load i32, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  %39 = add i32 %38, %28
  %40 = icmp eq i32 %37, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load i32, ptr %31, align 4
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = zext i32 %38 to i64
  %46 = add i64 %30, %45
  br label %47

47:                                               ; preds = %44, %27
  %48 = phi i64 [ %46, %44 ], [ %30, %27 ]
  %49 = phi i32 [ %39, %44 ], [ %28, %27 ]
  %50 = add nuw i32 %29, 1
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %27

52:                                               ; preds = %47, %41, %34, %21
  %53 = phi i32 [ 0, %21 ], [ %49, %47 ], [ %39, %41 ], [ %39, %34 ]
  %54 = phi i32 [ 0, %21 ], [ 0, %47 ], [ 0, %41 ], [ %37, %34 ]
  store i32 %53, ptr %4, align 4
  br label %72

55:                                               ; preds = %17
  %56 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 62
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %67, %59 ], [ %57, %55 ]
  %61 = phi i64 [ %65, %59 ], [ %3, %55 ]
  %62 = phi ptr [ %60, %59 ], [ %0, %55 ]
  %63 = getelementptr inbounds %struct.mtd_info, ptr %62, i32 0, i32 64, i32 0, i32 1
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %64, %61
  %66 = getelementptr inbounds %struct.mtd_info, ptr %60, i32 0, i32 62
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %59

69:                                               ; preds = %59, %55
  %70 = phi i64 [ %3, %55 ], [ %65, %59 ]
  %71 = tail call i32 %19(ptr noundef %8, ptr noundef %1, i32 noundef %2, i64 noundef %70, ptr noundef %4) #12
  br label %72

72:                                               ; preds = %69, %52, %12
  %73 = phi i32 [ %71, %69 ], [ %54, %52 ], [ -30, %12 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mtd_kmalloc_up_to(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.umax.i32(i32 %4, i32 4096)
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 8388608)
  store i32 %7, ptr %1, align 4
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %22

9:                                                ; preds = %13, %2
  %10 = phi i32 [ %20, %13 ], [ %7, %2 ]
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 74752) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 4
  %15 = lshr i32 %14, 1
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr %3, align 4
  %17 = add nsw i32 %15, -1
  %18 = add i32 %17, %16
  %19 = sub i32 0, %16
  %20 = and i32 %18, %19
  store i32 %20, ptr %1, align 4
  %21 = icmp ugt i32 %20, %5
  br i1 %21, label %9, label %22

22:                                               ; preds = %13, %2
  %23 = phi i32 [ %7, %2 ], [ %20, %13 ]
  %24 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #15
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi ptr [ %24, %22 ], [ %11, %9 ]
  ret ptr %26
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cleanup_mtd() #9 section ".exit.text" {
  %1 = load ptr, ptr @dfs_dir_mtd, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  tail call void @cleanup_mtdchar() #14
  %2 = load ptr, ptr @proc_mtd, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef null) #12
  br label %5

5:                                                ; preds = %4, %0
  tail call void @class_unregister(ptr noundef nonnull @mtd_class) #12
  %6 = load ptr, ptr @mtd_bdi, align 4
  tail call void @bdi_unregister(ptr noundef %6) #12
  %7 = load ptr, ptr @mtd_bdi, align 4
  tail call void @bdi_put(ptr noundef %7) #12
  tail call void @idr_destroy(ptr noundef nonnull @mtd_idr) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @cleanup_mtdchar() local_unnamed_addr #5 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_mtd() #9 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @mtd_class, ptr noundef nonnull @init_mtd.__key) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  %4 = tail call fastcc ptr @mtd_bdi_init() #16
  store ptr %4, ptr @mtd_bdi, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %20

8:                                                ; preds = %3
  %9 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @mtd_proc_show, ptr noundef null) #12
  store ptr %9, ptr @proc_mtd, align 4
  %10 = tail call i32 @init_mtdchar() #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef null) #12
  store ptr %13, ptr @dfs_dir_mtd, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.50, i16 noundef zeroext 384, ptr noundef %13, ptr noundef nonnull @mtd_expert_analysis_mode) #12
  br label %25

14:                                               ; preds = %8
  %15 = load ptr, ptr @proc_mtd, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @mtd_bdi, align 4
  tail call void @bdi_put(ptr noundef %19) #12
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %7, %6 ], [ %10, %18 ]
  tail call void @class_unregister(ptr noundef nonnull @mtd_class) #12
  br label %22

22:                                               ; preds = %20, %0
  %23 = phi i32 [ %1, %0 ], [ %21, %20 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %23) #14
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %23, %22 ], [ 0, %12 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtd_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 1
  %7 = or i32 %6, 94371841
  tail call void @device_destroy(ptr noundef nonnull @mtd_class, i32 noundef %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i8, ptr %5, align 8
  %7 = icmp ult i8 %6, 9
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = sext i8 %6 to i32
  %10 = getelementptr inbounds [9 x ptr], ptr @switch.table.mtd_type_show, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi ptr [ %11, %8 ], [ @.str.17, %3 ]
  %14 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef nonnull %13) #12
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.22, i64 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_erasesize_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_writesize_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_subpagesize_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 53
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %7, %9
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %10) #12
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_oobsize_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_oobavail_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_numeraseregions_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_ecc_strength_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_ecc_step_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_corrected_bits_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_ecc_failures_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_bad_blocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_bbt_blocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 52, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_bitflip_threshold_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %7) #12
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_bitflip_threshold_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !15
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 12
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_cls_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 64, i32 1, i32 8
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 45
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %6) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8, ptr %11, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i8 [ %23, %22 ], [ %12, %15 ]
  %26 = or i8 %25, 1
  store i8 %26, ptr %11, align 8
  br label %27

27:                                               ; preds = %24, %19, %10, %1
  %28 = phi i32 [ 0, %1 ], [ 0, %24 ], [ 0, %10 ], [ %20, %19 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_cls_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 62
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 64, i32 1, i32 8
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtd_info, ptr %6, i32 0, i32 46
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef nonnull %6) #12
  %20 = load i8, ptr %11, align 8
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i8 [ %20, %19 ], [ %12, %15 ]
  %23 = and i8 %22, -2
  store i8 %23, ptr %11, align 8
  br label %24

24:                                               ; preds = %21, %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_nvmem_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.mtd_oob_ops, align 4
  %6 = zext i32 %1 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  %7 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i64 32, i1 false) #12
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 6
  store ptr %2, ptr %8, align 4
  %9 = call i32 @mtd_read_oob(ptr noundef %0, i64 noundef %6, ptr noundef nonnull %5) #12
  %10 = getelementptr inbounds %struct.mtd_oob_ops, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  switch i32 %9, label %15 [
    i32 -117, label %12
    i32 0, label %12
  ]

12:                                               ; preds = %4, %4
  %13 = icmp eq i32 %11, %3
  %14 = select i1 %13, i32 0, i32 -5
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %14, %12 ], [ %9, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_partid_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mtd_partid_debug_show, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_partid_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 58, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_partname_debug_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @mtd_partname_debug_show, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_partname_debug_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mtd_info, ptr %4, i32 0, i32 58, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %6) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtd_otp_size(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !15
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4096) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %2
  br i1 %1, label %8, label %19

8:                                                ; preds = %8, %7
  %9 = phi ptr [ %11, %8 ], [ %0, %7 ]
  %10 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 62
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mtd_info, ptr %9, i32 0, i32 31
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = call i32 %15(ptr noundef %9, i32 noundef 4096, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  br label %31

19:                                               ; preds = %19, %7
  %20 = phi ptr [ %22, %19 ], [ %0, %7 ]
  %21 = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 62
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.mtd_info, ptr %20, i32 0, i32 29
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 %26(ptr noundef %20, i32 noundef 4096, ptr noundef nonnull %3, ptr noundef nonnull %5) #12
  br label %31

30:                                               ; preds = %24, %13
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %52

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %18, %17 ], [ %29, %28 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32, ptr %3, align 4
  %36 = icmp ult i32 %35, 12
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = udiv i32 %35, 12
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %45, %39 ], [ 0, %37 ]
  %41 = phi i32 [ %44, %39 ], [ 0, %37 ]
  %42 = getelementptr %struct.otp_info, ptr %5, i32 %40, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = add nuw nsw i32 %40, 1
  %46 = icmp eq i32 %45, %38
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %34
  %48 = phi i32 [ 0, %34 ], [ %44, %39 ]
  call void @kfree(ptr noundef nonnull %5) #12
  br label %52

49:                                               ; preds = %31
  call void @kfree(ptr noundef nonnull %5) #12
  %50 = icmp eq i32 %32, -61
  %51 = select i1 %50, i32 0, i32 %32
  br label %52

52:                                               ; preds = %49, %47, %30, %2
  %53 = phi i32 [ %48, %47 ], [ -12, %2 ], [ -95, %30 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mtd_otp_nvmem_register(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.nvmem_config, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #12
  %6 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i32 72, i1 false)
  %7 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_get_compatible_child(ptr noundef %8, ptr noundef %1) #12
  %10 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ %17, %15 ], [ %13, %4 ]
  %20 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.49, ptr noundef %19, ptr noundef %1) #12
  %21 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 2
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 3
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 9
  store i32 2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 11
  store i8 1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 12
  store i8 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 15
  store ptr %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 18
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 13
  store ptr %9, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nvmem_config, ptr %5, i32 0, i32 21
  store ptr %0, ptr %30, align 4
  %31 = call ptr @nvmem_register(ptr noundef nonnull %5) #12
  %32 = icmp eq ptr %31, inttoptr (i32 -95 to ptr)
  %33 = select i1 %32, ptr null, ptr %31
  call void @of_node_put(ptr noundef %9) #12
  %34 = load ptr, ptr %21, align 4
  call void @kfree(ptr noundef %34) #12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #12
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_nvmem_user_otp_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = zext i32 %1 to i64
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = call i32 %14(ptr noundef %7, i64 noundef %12, i32 noundef %3, ptr noundef nonnull %5, ptr noundef %2) #12
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, %3
  %23 = select i1 %22, i32 0, i32 -5
  br i1 %20, label %24, label %26

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ 0, %16 ]
  br label %26

26:                                               ; preds = %24, %18, %11
  %27 = phi i32 [ %25, %24 ], [ %19, %18 ], [ -95, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_nvmem_fact_otp_reg_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 62
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6
  %12 = zext i32 %1 to i64
  store i32 0, ptr %5, align 4
  %13 = getelementptr inbounds %struct.mtd_info, ptr %7, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = call i32 %14(ptr noundef %7, i64 noundef %12, i32 noundef %3, ptr noundef nonnull %5, ptr noundef %2) #12
  %20 = icmp eq i32 %19, 0
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, %3
  %23 = select i1 %22, i32 0, i32 -5
  br i1 %20, label %24, label %26

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %23, %18 ], [ 0, %16 ]
  br label %26

26:                                               ; preds = %24, %18, %11
  %27 = phi i32 [ %25, %24 ], [ %19, %18 ], [ -95, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @mtd_bdi_init() unnamed_addr #9 section ".init.text" {
  %1 = tail call ptr @bdi_alloc(i32 noundef -1) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.backing_dev_info, ptr %1, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %1, i32 0, i32 4
  store i32 0, ptr %5, align 8
  %6 = tail call i32 (ptr, ptr, ...) @bdi_register(ptr noundef nonnull %1, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.7) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  tail call void @bdi_put(ptr noundef nonnull %1) #12
  %9 = inttoptr i32 %6 to ptr
  br label %10

10:                                               ; preds = %8, %3, %0
  %11 = phi ptr [ %9, %8 ], [ %1, %3 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtd_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #12
  tail call void @mutex_lock(ptr noundef nonnull @mtd_table_mutex) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %5 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %19, %7 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 13
  %16 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %10, i64 noundef %12, i32 noundef %14, ptr noundef %16) #12
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %18, ptr %3, align 4
  %19 = call ptr @idr_get_next(ptr noundef nonnull @mtd_idr, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %7

21:                                               ; preds = %7, %2
  call void @mutex_unlock(ptr noundef nonnull @mtd_table_mutex) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @init_mtdchar() local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i64 2153252044, i64 2153252530, i64 2153252081, i64 2153252137, i64 2153252171, i64 2153252195, i64 2153252236, i64 2153252257, i64 2153252285, i64 2153252319}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2147951973, i64 2147952253, i64 2147952587, i64 2147952921}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153278556, i64 2153279043, i64 2153278593, i64 2153278649, i64 2153278683, i64 2153278707, i64 2153278748, i64 2153278769, i64 2153278797, i64 2153278831}
!14 = !{i8 0, i8 2}
!15 = !{!"auto-init"}
