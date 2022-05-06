; ModuleID = '/llk/IR/kernel/params.c_pt.bc'
source_filename = "../kernel/params.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_byte\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_byte\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_byte\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_short:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_short\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_short:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_short:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_short\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_short:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_short:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_short\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_short:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_ushort\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_ushort\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_ushort\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_ushort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_int:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_int\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_int:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_int\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_int:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_int\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_uint\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_uint\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_uint\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_uint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_long:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_long\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_long:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_long\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_long:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_long\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_ullong\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_ullong\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_ullong\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_ullong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_hexint\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_hexint\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_hexint\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_hexint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_uint_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_uint_minmax\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_uint_minmax:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_charp\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_charp\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_free_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22param_free_charp\22\09\09\09\09\09"
module asm "__kstrtabns_param_free_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_charp\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_charp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_bool\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_bool\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_bool\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_bool_enable_only:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_bool_enable_only\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_bool_enable_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_bool_enable_only:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_bool_enable_only\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_bool_enable_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_invbool\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_invbool\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_invbool\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_invbool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_bint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_bint\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_bint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_bint:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_bint\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_bint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22param_array_ops\22\09\09\09\09\09"
module asm "__kstrtabns_param_array_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_set_copystring:\09\09\09\09\09"
module asm "\09.asciz \09\22param_set_copystring\22\09\09\09\09\09"
module asm "__kstrtabns_param_set_copystring:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22param_get_string\22\09\09\09\09\09"
module asm "__kstrtabns_param_get_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_param_ops_string:\09\09\09\09\09"
module asm "\09.asciz \09\22param_ops_string\22\09\09\09\09\09"
module asm "__kstrtabns_param_ops_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_param_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_param_lock\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_param_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_param_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_param_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_param_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kmalloced_param = type { %struct.list_head, [0 x i8] }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.module_param_attrs = type { i32, %struct.attribute_group, [0 x %struct.param_attribute] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.param_attribute = type { %struct.module_attribute, ptr }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\014%s: option '%s' enabled irq's!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: Unknown parameter `%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: `%s' too large for parameter `%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s: `%s' invalid for parameter `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%hhu\0A\00", align 1
@param_ops_byte = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_byte, ptr @param_get_byte, ptr null }, align 4
@__kstrtab_param_set_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_byte to i32), ptr @__kstrtab_param_set_byte, ptr @__kstrtabns_param_set_byte }, section "___ksymtab+param_set_byte", align 4
@__kstrtab_param_get_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_byte to i32), ptr @__kstrtab_param_get_byte, ptr @__kstrtabns_param_get_byte }, section "___ksymtab+param_get_byte", align 4
@__kstrtab_param_ops_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_byte to i32), ptr @__kstrtab_param_ops_byte, ptr @__kstrtabns_param_ops_byte }, section "___ksymtab+param_ops_byte", align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%hi\0A\00", align 1
@param_ops_short = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_short, ptr @param_get_short, ptr null }, align 4
@__kstrtab_param_set_short = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_short = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_short = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_short to i32), ptr @__kstrtab_param_set_short, ptr @__kstrtabns_param_set_short }, section "___ksymtab+param_set_short", align 4
@__kstrtab_param_get_short = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_short = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_short = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_short to i32), ptr @__kstrtab_param_get_short, ptr @__kstrtabns_param_get_short }, section "___ksymtab+param_get_short", align 4
@__kstrtab_param_ops_short = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_short = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_short = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_short to i32), ptr @__kstrtab_param_ops_short, ptr @__kstrtabns_param_ops_short }, section "___ksymtab+param_ops_short", align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1
@param_ops_ushort = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_ushort, ptr @param_get_ushort, ptr null }, align 4
@__kstrtab_param_set_ushort = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_ushort = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_ushort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_ushort to i32), ptr @__kstrtab_param_set_ushort, ptr @__kstrtabns_param_set_ushort }, section "___ksymtab+param_set_ushort", align 4
@__kstrtab_param_get_ushort = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_ushort = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_ushort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_ushort to i32), ptr @__kstrtab_param_get_ushort, ptr @__kstrtabns_param_get_ushort }, section "___ksymtab+param_get_ushort", align 4
@__kstrtab_param_ops_ushort = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_ushort = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_ushort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_ushort to i32), ptr @__kstrtab_param_ops_ushort, ptr @__kstrtabns_param_ops_ushort }, section "___ksymtab+param_ops_ushort", align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@param_ops_int = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_int, ptr @param_get_int, ptr null }, align 4
@__kstrtab_param_set_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_int = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_int to i32), ptr @__kstrtab_param_set_int, ptr @__kstrtabns_param_set_int }, section "___ksymtab+param_set_int", align 4
@__kstrtab_param_get_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_int = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_int to i32), ptr @__kstrtab_param_get_int, ptr @__kstrtabns_param_get_int }, section "___ksymtab+param_get_int", align 4
@__kstrtab_param_ops_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_int = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_int to i32), ptr @__kstrtab_param_ops_int, ptr @__kstrtabns_param_ops_int }, section "___ksymtab+param_ops_int", align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@param_ops_uint = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_uint, ptr @param_get_uint, ptr null }, align 4
@__kstrtab_param_set_uint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_uint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_uint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_uint to i32), ptr @__kstrtab_param_set_uint, ptr @__kstrtabns_param_set_uint }, section "___ksymtab+param_set_uint", align 4
@__kstrtab_param_get_uint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_uint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_uint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_uint to i32), ptr @__kstrtab_param_get_uint, ptr @__kstrtabns_param_get_uint }, section "___ksymtab+param_get_uint", align 4
@__kstrtab_param_ops_uint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_uint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_uint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_uint to i32), ptr @__kstrtab_param_ops_uint, ptr @__kstrtabns_param_ops_uint }, section "___ksymtab+param_ops_uint", align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"%li\0A\00", align 1
@param_ops_long = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_long, ptr @param_get_long, ptr null }, align 4
@__kstrtab_param_set_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_long = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_long to i32), ptr @__kstrtab_param_set_long, ptr @__kstrtabns_param_set_long }, section "___ksymtab+param_set_long", align 4
@__kstrtab_param_get_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_long = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_long to i32), ptr @__kstrtab_param_get_long, ptr @__kstrtabns_param_get_long }, section "___ksymtab+param_get_long", align 4
@__kstrtab_param_ops_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_long = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_long to i32), ptr @__kstrtab_param_ops_long, ptr @__kstrtabns_param_ops_long }, section "___ksymtab+param_ops_long", align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@param_ops_ulong = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_ulong, ptr @param_get_ulong, ptr null }, align 4
@__kstrtab_param_set_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_ulong to i32), ptr @__kstrtab_param_set_ulong, ptr @__kstrtabns_param_set_ulong }, section "___ksymtab+param_set_ulong", align 4
@__kstrtab_param_get_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_ulong to i32), ptr @__kstrtab_param_get_ulong, ptr @__kstrtabns_param_get_ulong }, section "___ksymtab+param_get_ulong", align 4
@__kstrtab_param_ops_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_ulong to i32), ptr @__kstrtab_param_ops_ulong, ptr @__kstrtabns_param_ops_ulong }, section "___ksymtab+param_ops_ulong", align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@param_ops_ullong = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_ullong, ptr @param_get_ullong, ptr null }, align 4
@__kstrtab_param_set_ullong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_ullong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_ullong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_ullong to i32), ptr @__kstrtab_param_set_ullong, ptr @__kstrtabns_param_set_ullong }, section "___ksymtab+param_set_ullong", align 4
@__kstrtab_param_get_ullong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_ullong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_ullong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_ullong to i32), ptr @__kstrtab_param_get_ullong, ptr @__kstrtabns_param_get_ullong }, section "___ksymtab+param_get_ullong", align 4
@__kstrtab_param_ops_ullong = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_ullong = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_ullong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_ullong to i32), ptr @__kstrtab_param_ops_ullong, ptr @__kstrtabns_param_ops_ullong }, section "___ksymtab+param_ops_ullong", align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"%#08x\0A\00", align 1
@param_ops_hexint = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_hexint, ptr @param_get_hexint, ptr null }, align 4
@__kstrtab_param_set_hexint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_hexint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_hexint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_hexint to i32), ptr @__kstrtab_param_set_hexint, ptr @__kstrtabns_param_set_hexint }, section "___ksymtab+param_set_hexint", align 4
@__kstrtab_param_get_hexint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_hexint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_hexint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_hexint to i32), ptr @__kstrtab_param_get_hexint, ptr @__kstrtabns_param_get_hexint }, section "___ksymtab+param_get_hexint", align 4
@__kstrtab_param_ops_hexint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_hexint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_hexint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_hexint to i32), ptr @__kstrtab_param_ops_hexint, ptr @__kstrtabns_param_ops_hexint }, section "___ksymtab+param_ops_hexint", align 4
@__kstrtab_param_set_uint_minmax = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_uint_minmax = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_uint_minmax = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_uint_minmax to i32), ptr @__kstrtab_param_set_uint_minmax, ptr @__kstrtabns_param_set_uint_minmax }, section "___ksymtab_gpl+param_set_uint_minmax", align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"\013%s: string parameter too long\0A\00", align 1
@__kstrtab_param_set_charp = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_charp = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_charp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_charp to i32), ptr @__kstrtab_param_set_charp, ptr @__kstrtabns_param_set_charp }, section "___ksymtab+param_set_charp", align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__kstrtab_param_get_charp = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_charp = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_charp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_charp to i32), ptr @__kstrtab_param_get_charp, ptr @__kstrtabns_param_get_charp }, section "___ksymtab+param_get_charp", align 4
@__kstrtab_param_free_charp = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_free_charp = external dso_local constant [0 x i8], align 1
@__ksymtab_param_free_charp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_free_charp to i32), ptr @__kstrtab_param_free_charp, ptr @__kstrtabns_param_free_charp }, section "___ksymtab+param_free_charp", align 4
@param_ops_charp = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_charp, ptr @param_get_charp, ptr @param_free_charp }, align 4
@__kstrtab_param_ops_charp = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_charp = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_charp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_charp to i32), ptr @__kstrtab_param_ops_charp, ptr @__kstrtabns_param_ops_charp }, section "___ksymtab+param_ops_charp", align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__kstrtab_param_set_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_bool to i32), ptr @__kstrtab_param_set_bool, ptr @__kstrtabns_param_set_bool }, section "___ksymtab+param_set_bool", align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@__kstrtab_param_get_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_bool to i32), ptr @__kstrtab_param_get_bool, ptr @__kstrtabns_param_get_bool }, section "___ksymtab+param_get_bool", align 4
@param_ops_bool = dso_local constant %struct.kernel_param_ops { i32 1, ptr @param_set_bool, ptr @param_get_bool, ptr null }, align 4
@__kstrtab_param_ops_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_bool to i32), ptr @__kstrtab_param_ops_bool, ptr @__kstrtabns_param_ops_bool }, section "___ksymtab+param_ops_bool", align 4
@__kstrtab_param_set_bool_enable_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_bool_enable_only = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_bool_enable_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_bool_enable_only to i32), ptr @__kstrtab_param_set_bool_enable_only, ptr @__kstrtabns_param_set_bool_enable_only }, section "___ksymtab_gpl+param_set_bool_enable_only", align 4
@param_ops_bool_enable_only = dso_local constant %struct.kernel_param_ops { i32 1, ptr @param_set_bool_enable_only, ptr @param_get_bool, ptr null }, align 4
@__kstrtab_param_ops_bool_enable_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_bool_enable_only = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_bool_enable_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_bool_enable_only to i32), ptr @__kstrtab_param_ops_bool_enable_only, ptr @__kstrtabns_param_ops_bool_enable_only }, section "___ksymtab_gpl+param_ops_bool_enable_only", align 4
@__kstrtab_param_set_invbool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_invbool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_invbool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_invbool to i32), ptr @__kstrtab_param_set_invbool, ptr @__kstrtabns_param_set_invbool }, section "___ksymtab+param_set_invbool", align 4
@__kstrtab_param_get_invbool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_invbool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_invbool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_invbool to i32), ptr @__kstrtab_param_get_invbool, ptr @__kstrtabns_param_get_invbool }, section "___ksymtab+param_get_invbool", align 4
@param_ops_invbool = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_invbool, ptr @param_get_invbool, ptr null }, align 4
@__kstrtab_param_ops_invbool = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_invbool = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_invbool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_invbool to i32), ptr @__kstrtab_param_ops_invbool, ptr @__kstrtabns_param_ops_invbool }, section "___ksymtab+param_ops_invbool", align 4
@__kstrtab_param_set_bint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_bint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_bint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_bint to i32), ptr @__kstrtab_param_set_bint, ptr @__kstrtabns_param_set_bint }, section "___ksymtab+param_set_bint", align 4
@param_ops_bint = dso_local constant %struct.kernel_param_ops { i32 1, ptr @param_set_bint, ptr @param_get_int, ptr null }, align 4
@__kstrtab_param_ops_bint = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_bint = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_bint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_bint to i32), ptr @__kstrtab_param_ops_bint, ptr @__kstrtabns_param_ops_bint }, section "___ksymtab+param_ops_bint", align 4
@param_array_ops = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_array_set, ptr @param_array_get, ptr @param_array_free }, align 4
@__kstrtab_param_array_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_array_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_param_array_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_array_ops to i32), ptr @__kstrtab_param_array_ops, ptr @__kstrtabns_param_array_ops }, section "___ksymtab+param_array_ops", align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"\013%s: string doesn't fit in %u chars.\0A\00", align 1
@__kstrtab_param_set_copystring = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_set_copystring = external dso_local constant [0 x i8], align 1
@__ksymtab_param_set_copystring = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_set_copystring to i32), ptr @__kstrtab_param_set_copystring, ptr @__kstrtabns_param_set_copystring }, section "___ksymtab+param_set_copystring", align 4
@__kstrtab_param_get_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_get_string = external dso_local constant [0 x i8], align 1
@__ksymtab_param_get_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_get_string to i32), ptr @__kstrtab_param_get_string, ptr @__kstrtabns_param_get_string }, section "___ksymtab+param_get_string", align 4
@param_ops_string = dso_local constant %struct.kernel_param_ops { i32 0, ptr @param_set_copystring, ptr @param_get_string, ptr null }, align 4
@__kstrtab_param_ops_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_param_ops_string = external dso_local constant [0 x i8], align 1
@__ksymtab_param_ops_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @param_ops_string to i32), ptr @__kstrtab_param_ops_string, ptr @__kstrtabns_param_ops_string }, section "___ksymtab+param_ops_string", align 4
@param_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @param_lock, i64 12), ptr getelementptr (i8, ptr @param_lock, i64 12) } }, align 4
@__kstrtab_kernel_param_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_param_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_param_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_param_lock to i32), ptr @__kstrtab_kernel_param_lock, ptr @__kstrtabns_kernel_param_lock }, section "___ksymtab+kernel_param_lock", align 4
@__kstrtab_kernel_param_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_param_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_param_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_param_unlock to i32), ptr @__kstrtab_kernel_param_unlock, ptr @__kstrtabns_kernel_param_unlock }, section "___ksymtab+kernel_param_unlock", align 4
@module_sysfs_ops = internal constant %struct.sysfs_ops { ptr @module_attr_show, ptr @module_attr_store }, align 4
@module_ktype = dso_local global %struct.kobj_type { ptr @module_kobj_release, ptr @module_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_params__220_974_param_sysfs_init4 = internal global ptr @param_sysfs_init, section ".initcall4.init", align 4
@module_kset = dso_local local_unnamed_addr global ptr null, align 4
@module_sysfs_initialized = dso_local local_unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [49 x i8] c"\015Setting dangerous option %s - tainting kernel\0A\00", align 1
@kmalloced_params_lock = internal global %struct.spinlock zeroinitializer, align 4
@kmalloced_params = internal global %struct.list_head { ptr @kmalloced_params, ptr @kmalloced_params }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"\013%s: can only take %i arguments\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"\013%s: needs at least %i arguments\0A\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@module_uevent_ops = internal constant %struct.kset_uevent_ops { ptr @uevent_filter, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"\014%s (%d): error creating kset\0A\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"kernel/params.c\00", align 1
@__start___modver = external dso_local constant [0 x %struct.module_version_attribute], align 4
@__stop___modver = external dso_local constant [0 x %struct.module_version_attribute], align 4
@version_sysfs_builtin.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@module_uevent = external dso_local global %struct.module_attribute, align 4
@.str.29 = private unnamed_addr constant [72 x i8] c"\012Adding module '%s' to sysfs failed (%d), the system may be unstable.\0A\00", align 1
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 4
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_params__220_974_param_sysfs_init4, ptr @__ksymtab_kernel_param_lock, ptr @__ksymtab_kernel_param_unlock, ptr @__ksymtab_param_array_ops, ptr @__ksymtab_param_free_charp, ptr @__ksymtab_param_get_bool, ptr @__ksymtab_param_get_byte, ptr @__ksymtab_param_get_charp, ptr @__ksymtab_param_get_hexint, ptr @__ksymtab_param_get_int, ptr @__ksymtab_param_get_invbool, ptr @__ksymtab_param_get_long, ptr @__ksymtab_param_get_short, ptr @__ksymtab_param_get_string, ptr @__ksymtab_param_get_uint, ptr @__ksymtab_param_get_ullong, ptr @__ksymtab_param_get_ulong, ptr @__ksymtab_param_get_ushort, ptr @__ksymtab_param_ops_bint, ptr @__ksymtab_param_ops_bool, ptr @__ksymtab_param_ops_bool_enable_only, ptr @__ksymtab_param_ops_byte, ptr @__ksymtab_param_ops_charp, ptr @__ksymtab_param_ops_hexint, ptr @__ksymtab_param_ops_int, ptr @__ksymtab_param_ops_invbool, ptr @__ksymtab_param_ops_long, ptr @__ksymtab_param_ops_short, ptr @__ksymtab_param_ops_string, ptr @__ksymtab_param_ops_uint, ptr @__ksymtab_param_ops_ullong, ptr @__ksymtab_param_ops_ulong, ptr @__ksymtab_param_ops_ushort, ptr @__ksymtab_param_set_bint, ptr @__ksymtab_param_set_bool, ptr @__ksymtab_param_set_bool_enable_only, ptr @__ksymtab_param_set_byte, ptr @__ksymtab_param_set_charp, ptr @__ksymtab_param_set_copystring, ptr @__ksymtab_param_set_hexint, ptr @__ksymtab_param_set_int, ptr @__ksymtab_param_set_invbool, ptr @__ksymtab_param_set_long, ptr @__ksymtab_param_set_short, ptr @__ksymtab_param_set_uint, ptr @__ksymtab_param_set_uint_minmax, ptr @__ksymtab_param_set_ullong, ptr @__ksymtab_param_set_ulong, ptr @__ksymtab_param_set_ushort], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @parameqn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1
  %7 = icmp eq i8 %6, 45
  %8 = select i1 %7, i8 95, i8 %6
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 45
  %11 = select i1 %10, i8 95, i8 %9
  %12 = icmp eq i8 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %17, %5
  %14 = phi i32 [ %15, %17 ], [ 0, %5 ]
  %15 = add nuw i32 %14, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 %15
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 45
  %21 = select i1 %20, i8 95, i8 %19
  %22 = getelementptr i8, ptr %1, i32 %15
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 45
  %25 = select i1 %24, i8 95, i8 %23
  %26 = icmp eq i8 %21, %25
  br i1 %26, label %13, label %27

27:                                               ; preds = %17, %13
  %28 = icmp uge i32 %15, %2
  br label %29

29:                                               ; preds = %27, %5, %3
  %30 = phi i1 [ true, %3 ], [ false, %5 ], [ %28, %27 ]
  ret i1 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @parameq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = add i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %0, align 1
  %8 = icmp eq i8 %7, 45
  %9 = select i1 %8, i8 95, i8 %7
  %10 = load i8, ptr %1, align 1
  %11 = icmp eq i8 %10, 45
  %12 = select i1 %11, i8 95, i8 %10
  %13 = icmp eq i8 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %18, %6
  %15 = phi i32 [ %16, %18 ], [ 0, %6 ]
  %16 = add nuw i32 %15, 1
  %17 = icmp eq i32 %15, %3
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %0, i32 %16
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 45
  %22 = select i1 %21, i8 95, i8 %20
  %23 = getelementptr i8, ptr %1, i32 %16
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 45
  %26 = select i1 %25, i8 95, i8 %24
  %27 = icmp eq i8 %22, %26
  br i1 %27, label %14, label %28

28:                                               ; preds = %18, %14
  %29 = icmp uge i32 %16, %4
  br label %30

30:                                               ; preds = %28, %6, %2
  %31 = phi i1 [ true, %2 ], [ false, %6 ], [ %29, %28 ]
  ret i1 %31
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @parse_args(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, ptr noundef readonly %7) local_unnamed_addr #4 {
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  store ptr null, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  store ptr null, ptr %10, align 4, !annotation !8
  %11 = tail call ptr @skip_spaces(ptr noundef %1) #18
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %144, label %14

14:                                               ; preds = %8
  %15 = icmp eq i32 %3, 0
  %16 = icmp eq ptr %7, null
  br label %21

17:                                               ; preds = %139, %123
  %18 = phi ptr [ %22, %123 ], [ %140, %139 ]
  %19 = load i8, ptr %24, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %144, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ null, %14 ], [ %18, %17 ]
  %23 = phi ptr [ %11, %14 ], [ %24, %17 ]
  %24 = call ptr @next_arg(ptr noundef %23, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load ptr, ptr %9, align 4
  %29 = call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(3) @.str)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %141, label %31

31:                                               ; preds = %27, %21
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !9
  %33 = and i32 %32, 128
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %10, align 4
  br i1 %15, label %110, label %36

36:                                               ; preds = %31
  %37 = call i32 @strlen(ptr noundef %34) #18
  %38 = add i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %107, %36
  %41 = phi i32 [ 0, %36 ], [ %108, %107 ]
  %42 = getelementptr %struct.kernel_param, ptr %2, i32 %41
  %43 = load ptr, ptr %42, align 4
  br i1 %39, label %68, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr %34, align 1
  %46 = icmp eq i8 %45, 45
  %47 = select i1 %46, i8 95, i8 %45
  %48 = load i8, ptr %43, align 1
  %49 = icmp eq i8 %48, 45
  %50 = select i1 %49, i8 95, i8 %48
  %51 = icmp eq i8 %47, %50
  br i1 %51, label %52, label %107

52:                                               ; preds = %55, %44
  %53 = phi i32 [ %56, %55 ], [ 0, %44 ]
  %54 = icmp eq i32 %53, %37
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = add nuw i32 %53, 1
  %57 = getelementptr i8, ptr %34, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 45
  %60 = select i1 %59, i8 95, i8 %58
  %61 = getelementptr i8, ptr %43, i32 %56
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 45
  %64 = select i1 %63, i8 95, i8 %62
  %65 = icmp eq i8 %60, %64
  br i1 %65, label %52, label %66

66:                                               ; preds = %55
  %67 = icmp ult i32 %56, %38
  br i1 %67, label %107, label %68

68:                                               ; preds = %66, %52, %40
  %69 = phi i32 [ %41, %52 ], [ 0, %40 ], [ %41, %66 ]
  %70 = getelementptr %struct.kernel_param, ptr %2, i32 %69, i32 4
  %71 = load i8, ptr %70, align 2
  %72 = sext i8 %71 to i16
  %73 = icmp slt i16 %72, %4
  %74 = icmp sgt i16 %72, %5
  %75 = or i1 %73, %74
  br i1 %75, label %113, label %76

76:                                               ; preds = %68
  %77 = icmp eq ptr %35, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %76
  %79 = getelementptr %struct.kernel_param, ptr %2, i32 %69, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %78, %76
  %85 = getelementptr %struct.kernel_param, ptr %2, i32 %69, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  %88 = getelementptr inbounds %struct.module, ptr %86, i32 0, i32 11
  %89 = select i1 %87, ptr @param_lock, ptr %88
  call void @mutex_lock(ptr noundef %89) #18
  %90 = getelementptr %struct.kernel_param, ptr %2, i32 %69, i32 5
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load ptr, ptr %42, align 4
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %95) #19
  call void @add_taint(i32 noundef 6, i32 noundef 0) #18
  br label %97

97:                                               ; preds = %94, %84
  %98 = getelementptr %struct.kernel_param, ptr %2, i32 %69, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.kernel_param_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = call i32 %101(ptr noundef %35, ptr noundef %42) #18
  %103 = load ptr, ptr %85, align 4
  %104 = icmp eq ptr %103, null
  %105 = getelementptr inbounds %struct.module, ptr %103, i32 0, i32 11
  %106 = select i1 %104, ptr @param_lock, ptr %105
  call void @mutex_unlock(ptr noundef %106) #18
  br label %113

107:                                              ; preds = %66, %44
  %108 = add nuw i32 %41, 1
  %109 = icmp eq i32 %108, %3
  br i1 %109, label %110, label %40

110:                                              ; preds = %107, %31
  br i1 %16, label %113, label %111

111:                                              ; preds = %110
  %112 = call i32 %7(ptr noundef %34, ptr noundef %35, ptr noundef %0, ptr noundef %6) #18
  br label %113

113:                                              ; preds = %111, %110, %97, %78, %68
  %114 = phi i32 [ %102, %97 ], [ %112, %111 ], [ 0, %68 ], [ -22, %78 ], [ -2, %110 ]
  %115 = icmp eq i32 %33, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !9
  %118 = and i32 %117, 128
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load ptr, ptr %9, align 4
  %122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef %121) #19
  br label %123

123:                                              ; preds = %120, %116, %113
  switch i32 %114, label %133 [
    i32 0, label %17
    i32 -2, label %124
    i32 -28, label %127
  ]

124:                                              ; preds = %123
  %125 = load ptr, ptr %9, align 4
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %125) #19
  br label %139

127:                                              ; preds = %123
  %128 = load ptr, ptr %10, align 4
  %129 = icmp eq ptr %128, null
  %130 = select i1 %129, ptr @.str.4, ptr %128
  %131 = load ptr, ptr %9, align 4
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef %130, ptr noundef %131) #19
  br label %139

133:                                              ; preds = %123
  %134 = load ptr, ptr %10, align 4
  %135 = icmp eq ptr %134, null
  %136 = select i1 %135, ptr @.str.4, ptr %134
  %137 = load ptr, ptr %9, align 4
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0, ptr noundef %136, ptr noundef %137) #19
  br label %139

139:                                              ; preds = %133, %127, %124
  %140 = inttoptr i32 %114 to ptr
  br label %17

141:                                              ; preds = %27
  %142 = icmp eq ptr %22, null
  %143 = select i1 %142, ptr %24, ptr %22
  br label %144

144:                                              ; preds = %141, %17, %8
  %145 = phi ptr [ %143, %141 ], [ null, %8 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  ret ptr %145
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_byte(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtou8(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_byte(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.6, i32 noundef %6) #18
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_short(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtos16(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_short(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %6) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_ushort(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtou16(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_ushort(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %6) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_int(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_int(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_uint(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_uint(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_long(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_kstrtol(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_long(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.11, i32 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_ulong(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_ulong(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.12, i32 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_ullong(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtoull(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_ullong(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.13, i64 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_hexint(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_hexint(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.14, i32 noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_uint_minmax(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = call i32 @kstrtouint(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %5) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = icmp ult i32 %11, %2
  %13 = icmp ugt i32 %11, %3
  %14 = or i1 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  store i32 %11, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %10, %7, %4
  %19 = phi i32 [ 0, %15 ], [ -22, %4 ], [ %8, %7 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_charp(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = icmp ugt i32 %3, 1024
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %6) #19
  br label %50

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmalloced_params_lock) #18
  br label %12

12:                                               ; preds = %16, %8
  %13 = phi ptr [ @kmalloced_params, %8 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @kmalloced_params
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kmalloced_param, ptr %14, i32 0, i32 1
  %18 = icmp eq ptr %17, %11
  br i1 %18, label %19, label %12

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %14) #18
  br label %24

24:                                               ; preds = %19, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %25 = load i16, ptr @kmalloced_params_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @kmalloced_params_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %27 = tail call zeroext i1 @slab_is_available() #18
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = tail call i32 @strlen(ptr noundef %0)
  %30 = add i32 %29, 9
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmalloced_params_lock) #18
  %34 = load ptr, ptr @kmalloced_params, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %31, ptr %35, align 4
  store ptr %34, ptr %31, align 64
  %36 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr @kmalloced_params, ptr %36, align 4
  store volatile ptr %31, ptr @kmalloced_params, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %37 = load i16, ptr @kmalloced_params_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @kmalloced_params_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %39 = getelementptr inbounds %struct.kmalloced_param, ptr %31, i32 0, i32 1
  br label %40

40:                                               ; preds = %33, %28
  %41 = phi ptr [ %39, %33 ], [ null, %28 ]
  %42 = load ptr, ptr %9, align 4
  store ptr %41, ptr %42, align 4
  %43 = load ptr, ptr %9, align 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = tail call ptr @strcpy(ptr noundef nonnull %44, ptr noundef %0)
  br label %50

48:                                               ; preds = %24
  %49 = load ptr, ptr %9, align 4
  store ptr %0, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %46, %40, %5
  %51 = phi i32 [ -28, %5 ], [ -12, %40 ], [ 0, %48 ], [ 0, %46 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_charp(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @param_free_charp(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmalloced_params_lock) #18
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @kmalloced_params, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @kmalloced_params
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kmalloced_param, ptr %5, i32 0, i32 1
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %3

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @kfree(ptr noundef %5) #18
  br label %15

15:                                               ; preds = %10, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %16 = load i16, ptr @kmalloced_params_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @kmalloced_params_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_bool(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = icmp eq ptr %0, null
  %4 = select i1 %3, ptr @.str.17, ptr %0
  %5 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @kstrtobool(ptr noundef %4, ptr noundef %6) #18
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_bool(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1, !range !14
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 78, i32 89
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_bool_enable_only(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 1, !range !14
  %7 = icmp eq ptr %0, null
  %8 = select i1 %7, ptr @.str.17, ptr %0
  %9 = call i32 @kstrtobool(ptr noundef %8, ptr noundef nonnull %3) #18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = icmp ne i8 %6, 0
  %13 = load i8, ptr %3, align 1, !range !14
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i1 %12, i1 false
  %16 = select i1 %15, i32 -30, i32 0
  br i1 %14, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4
  %19 = call i32 @kstrtobool(ptr noundef %8, ptr noundef %18) #18
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = phi i32 [ %9, %2 ], [ %16, %11 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret i32 %21
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_invbool(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr @.str.17, ptr %0
  %6 = call i32 @kstrtobool(ptr noundef %5, ptr noundef nonnull %3) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !range !14
  %10 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = xor i8 %9, 1
  store i8 %12, ptr %11, align 1
  br label %13

13:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_invbool(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1, !range !14
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, i32 89, i32 78
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_bint(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr @.str.17, ptr %0
  %6 = call i32 @kstrtobool(ptr noundef %5, ptr noundef nonnull %3) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !range !14
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  store i32 %10, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_array_set(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.kernel_param, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = load i32, ptr %6, align 4
  %11 = getelementptr inbounds %struct.kparam_array, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.kparam_array, ptr %6, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kparam_array, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kernel_param_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 4
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.kparam_array, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %4, ptr %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #18
  %25 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %25, i8 0, i32 12, i1 false) #18, !annotation !8
  store ptr %9, ptr %3, align 4
  %26 = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 6
  store ptr %12, ptr %26, align 4
  %27 = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 4
  store i8 %20, ptr %27, align 2
  store i32 0, ptr %24, align 4
  %28 = icmp eq ptr %8, null
  %29 = getelementptr inbounds %struct.module, ptr %8, i32 0, i32 11
  %30 = select i1 %28, ptr @param_lock, ptr %29
  br label %31

31:                                               ; preds = %46, %2
  %32 = phi i32 [ 0, %2 ], [ %52, %46 ]
  %33 = phi ptr [ %0, %2 ], [ %50, %46 ]
  %34 = icmp eq i32 %32, %10
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %9, i32 noundef %10) #19
  br label %58

37:                                               ; preds = %31
  %38 = call i32 @strcspn(ptr noundef %33, ptr noundef nonnull @.str.22) #18
  %39 = getelementptr i8, ptr %33, i32 %38
  %40 = load i8, ptr %39, align 1
  store i8 0, ptr %39, align 1
  %41 = call zeroext i1 @mutex_is_locked(ptr noundef %30) #18
  br i1 %41, label %43, label %42, !prof !15

42:                                               ; preds = %37
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 30, 0\0A.popsection", ""() #18, !srcloc !16
  unreachable

43:                                               ; preds = %37
  %44 = call i32 %18(ptr noundef %33, ptr noundef nonnull %3) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load ptr, ptr %26, align 4
  %48 = getelementptr i8, ptr %47, i32 %14
  store ptr %48, ptr %26, align 4
  %49 = add i32 %38, 1
  %50 = getelementptr i8, ptr %33, i32 %49
  %51 = load i32, ptr %24, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %24, align 4
  %53 = icmp eq i8 %40, 44
  br i1 %53, label %31, label %54

54:                                               ; preds = %46
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef 1) #19
  br label %58

58:                                               ; preds = %56, %54, %43, %35
  %59 = phi i32 [ -22, %56 ], [ 0, %54 ], [ -22, %35 ], [ %44, %43 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_array_get(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.kernel_param, align 4
  %4 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef align 4 dereferenceable(20) %1, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %5, ptr %7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 4
  %14 = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 6
  %16 = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 3
  br label %18

18:                                               ; preds = %43, %12
  %19 = phi i32 [ 0, %12 ], [ %44, %43 ]
  %20 = phi i32 [ 0, %12 ], [ %45, %43 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = add i32 %19, -1
  %24 = getelementptr i8, ptr %0, i32 %23
  store i8 44, ptr %24, align 1
  br label %25

25:                                               ; preds = %22, %18
  %26 = load ptr, ptr %13, align 4
  %27 = load i32, ptr %14, align 4
  %28 = mul i32 %27, %20
  %29 = getelementptr i8, ptr %26, i32 %28
  store ptr %29, ptr %15, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.module, ptr %30, i32 0, i32 11
  %33 = select i1 %31, ptr @param_lock, ptr %32
  %34 = call zeroext i1 @mutex_is_locked(ptr noundef %33) #18
  br i1 %34, label %36, label %35, !prof !15

35:                                               ; preds = %25
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 30, 0\0A.popsection", ""() #18, !srcloc !16
  unreachable

36:                                               ; preds = %25
  %37 = load ptr, ptr %17, align 4
  %38 = getelementptr inbounds %struct.kernel_param_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 %19
  %41 = call i32 %39(ptr noundef %40, ptr noundef nonnull %3) #18
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = add i32 %41, %19
  %45 = add nuw i32 %20, 1
  %46 = load ptr, ptr %6, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr %5, ptr %46
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %45, %49
  br i1 %50, label %18, label %51

51:                                               ; preds = %43, %2
  %52 = phi i32 [ 0, %2 ], [ %44, %43 ]
  %53 = getelementptr i8, ptr %0, i32 %52
  store i8 0, ptr %53, align 1
  br label %54

54:                                               ; preds = %51, %36
  %55 = phi i32 [ %52, %51 ], [ %41, %36 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #18
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @param_array_free(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.kparam_array, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kernel_param_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kparam_array, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %0, ptr %9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.kparam_array, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.kparam_array, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %15, align 4
  tail call void %5(ptr noundef %17) #18
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr %0, ptr %18
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %23, %14
  %24 = phi i32 [ %32, %23 ], [ 1, %14 ]
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.kernel_param_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %15, align 4
  %29 = load i32, ptr %16, align 4
  %30 = mul i32 %29, %24
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void %27(ptr noundef %31) #18
  %32 = add nuw i32 %24, 1
  %33 = load ptr, ptr %8, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %0, ptr %33
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %23, label %38

38:                                               ; preds = %23, %14, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_set_copystring(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @strlen(ptr noundef %0)
  %6 = add i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = add i32 %7, -1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %10, i32 noundef %11) #19
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.kparam_string, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @strcpy(ptr noundef %15, ptr noundef %0)
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ -28, %9 ], [ 0, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @param_get_string(ptr noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kparam_string, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %0, i32 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef %6) #18
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_param_lock(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 11
  %4 = select i1 %2, ptr @param_lock, ptr %3
  tail call void @mutex_lock(ptr noundef %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_param_unlock(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 11
  %4 = select i1 %2, ptr @param_lock, ptr %3
  tail call void @mutex_unlock(ptr noundef %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @module_param_sysfs_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %51, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi i1 [ true, %27 ], [ false, %5 ]
  %9 = phi i32 [ %28, %27 ], [ 0, %5 ]
  br label %10

10:                                               ; preds = %24, %7
  %11 = phi i32 [ %25, %24 ], [ %9, %7 ]
  %12 = getelementptr %struct.kernel_param, ptr %1, i32 %11, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.kernel_param, ptr %1, i32 %11
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @add_sysfs_param(ptr noundef %6, ptr noundef %16, ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %40

24:                                               ; preds = %10
  %25 = add nuw i32 %11, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %30, label %10

27:                                               ; preds = %15
  %28 = add nuw i32 %11, 1
  %29 = icmp eq i32 %28, %2
  br i1 %29, label %31, label %7

30:                                               ; preds = %24
  br i1 %8, label %31, label %51

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.module_param_attrs, ptr %33, i32 0, i32 1
  %35 = tail call i32 @sysfs_create_group(ptr noundef %6, ptr noundef %34) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %32, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %37, %20
  %41 = phi ptr [ %22, %20 ], [ %38, %37 ]
  %42 = phi ptr [ %21, %20 ], [ %32, %37 ]
  %43 = phi i32 [ %18, %20 ], [ %35, %37 ]
  %44 = getelementptr inbounds %struct.module_param_attrs, ptr %41, i32 0, i32 1, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %45) #18
  %46 = load ptr, ptr %42, align 4
  br label %47

47:                                               ; preds = %40, %37, %20
  %48 = phi ptr [ null, %20 ], [ null, %37 ], [ %46, %40 ]
  %49 = phi ptr [ %21, %20 ], [ %32, %37 ], [ %42, %40 ]
  %50 = phi i32 [ %18, %20 ], [ %35, %37 ], [ %43, %40 ]
  tail call void @kfree(ptr noundef %48) #18
  store ptr null, ptr %49, align 4
  br label %51

51:                                               ; preds = %47, %31, %30, %3
  %52 = phi i32 [ 0, %30 ], [ 0, %31 ], [ 0, %3 ], [ %50, %47 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_sysfs_param(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 634, 0\0A.popsection", ""() #18, !srcloc !18
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.module_kobject, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #21
  store ptr %14, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %90, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.module_param_attrs, ptr %14, i32 0, i32 1
  store ptr @.str.24, ptr %17, align 4
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 4) #21
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.module_param_attrs, ptr %20, i32 0, i32 1, i32 3
  store ptr %19, ptr %21, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.module_param_attrs, ptr %22, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %90, label %26

26:                                               ; preds = %16, %8
  %27 = phi ptr [ %22, %16 ], [ %10, %8 ]
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 5
  %30 = add i32 %29, 56
  %31 = tail call noalias ptr @krealloc(ptr noundef %27, i32 noundef %30, i32 noundef 3264) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %90, label %33

33:                                               ; preds = %26
  store ptr %31, ptr %9, align 4
  %34 = getelementptr inbounds %struct.module_param_attrs, ptr %31, i32 0, i32 1, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %31, align 4
  %37 = shl i32 %36, 2
  %38 = add i32 %37, 8
  %39 = tail call noalias ptr @krealloc(ptr noundef %35, i32 noundef %38, i32 noundef 3264) #22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %90, label %41

41:                                               ; preds = %33
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr inbounds %struct.module_param_attrs, ptr %42, i32 0, i32 1, i32 3
  store ptr %39, ptr %43, align 4
  %44 = load ptr, ptr %9, align 4
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.module_param_attrs, ptr %44, i32 0, i32 2, i32 %45
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %46, i8 0, i32 32, i1 false)
  %47 = load ptr, ptr %9, align 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.module_param_attrs, ptr %47, i32 0, i32 2, i32 %48, i32 1
  store ptr %1, ptr %49, align 4
  %50 = load ptr, ptr %9, align 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr %struct.module_param_attrs, ptr %50, i32 0, i32 2, i32 %51, i32 0, i32 1
  store ptr @param_attr_show, ptr %52, align 4
  %53 = load i16, ptr %4, align 4
  %54 = and i16 %53, 146
  %55 = icmp eq i16 %54, 0
  %56 = load ptr, ptr %9, align 4
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr %struct.module_param_attrs, ptr %56, i32 0, i32 2, i32 %57, i32 0, i32 2
  %59 = select i1 %55, ptr null, ptr @param_attr_store
  store ptr %59, ptr %58, align 4
  %60 = load ptr, ptr %9, align 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.module_param_attrs, ptr %60, i32 0, i32 2, i32 %61
  store ptr %2, ptr %62, align 4
  %63 = load i16, ptr %4, align 4
  %64 = load ptr, ptr %9, align 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr %struct.module_param_attrs, ptr %64, i32 0, i32 2, i32 %65, i32 0, i32 0, i32 1
  store i16 %63, ptr %66, align 4
  %67 = load ptr, ptr %9, align 4
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  %70 = load ptr, ptr %9, align 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %73, %41
  %74 = phi ptr [ %81, %73 ], [ %70, %41 ]
  %75 = phi i32 [ %80, %73 ], [ 0, %41 ]
  %76 = getelementptr %struct.module_param_attrs, ptr %74, i32 0, i32 2, i32 %75
  %77 = getelementptr inbounds %struct.module_param_attrs, ptr %74, i32 0, i32 1, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr ptr, ptr %78, i32 %75
  store ptr %76, ptr %79, align 4
  %80 = add nuw i32 %75, 1
  %81 = load ptr, ptr %9, align 4
  %82 = load i32, ptr %81, align 4
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %73, label %84

84:                                               ; preds = %73, %41
  %85 = phi ptr [ %70, %41 ], [ %81, %73 ]
  %86 = phi i32 [ 0, %41 ], [ %82, %73 ]
  %87 = getelementptr inbounds %struct.module_param_attrs, ptr %85, i32 0, i32 1, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr ptr, ptr %88, i32 %86
  store ptr null, ptr %89, align 4
  br label %90

90:                                               ; preds = %84, %33, %26, %16, %12
  %91 = phi i32 [ 0, %84 ], [ -12, %12 ], [ -12, %16 ], [ -12, %26 ], [ -12, %33 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @module_param_sysfs_remove(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.module_param_attrs, ptr %3, i32 0, i32 1
  tail call void @sysfs_remove_group(ptr noundef %6, ptr noundef %7) #18
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.module_param_attrs, ptr %8, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #18
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi ptr [ %13, %10 ], [ null, %5 ]
  tail call void @kfree(ptr noundef %15) #18
  store ptr null, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @destroy_params(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %14, %2
  %5 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %6 = getelementptr %struct.kernel_param, ptr %0, i32 %5, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kernel_param_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr %struct.kernel_param, ptr %0, i32 %5, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void %9(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %11, %4
  %15 = add nuw i32 %5, 1
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %4

17:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__modver_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.module_version_attribute, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.16, ptr noundef %5) #18
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @module_kobj_release(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.module_kobject, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %3) #18
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @param_sysfs_init() #12 section ".init.text" {
  %1 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.25, ptr noundef nonnull @module_uevent_ops, ptr noundef null) #18
  store ptr %1, ptr @module_kset, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 964) #19
  br label %6

5:                                                ; preds = %0
  store i32 1, ptr @module_sysfs_initialized, align 4
  tail call fastcc void @version_sysfs_builtin() #23
  tail call fastcc void @param_sysfs_builtin() #23
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ 0, %5 ], [ -12, %3 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_attr_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds %struct.param_attribute, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernel_param, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kernel_param_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.module, ptr %13, i32 0, i32 11
  %16 = select i1 %14, ptr @param_lock, ptr %15
  tail call void @mutex_lock(ptr noundef %16) #18
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.kernel_param, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.kernel_param_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %2, ptr noundef %17) #18
  %23 = load ptr, ptr %12, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.module, ptr %23, i32 0, i32 11
  %26 = select i1 %24, ptr @param_lock, ptr %25
  tail call void @mutex_unlock(ptr noundef %26) #18
  br label %27

27:                                               ; preds = %11, %3
  %28 = phi i32 [ %22, %11 ], [ -1, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @param_attr_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.param_attribute, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernel_param, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kernel_param_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.module_kobject, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.module, ptr %14, i32 0, i32 11
  %17 = select i1 %15, ptr @param_lock, ptr %16
  tail call void @mutex_lock(ptr noundef %17) #18
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.kernel_param, ptr %18, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %18, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %24) #19
  tail call void @add_taint(i32 noundef 6, i32 noundef 0) #18
  %26 = load ptr, ptr %5, align 4
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi ptr [ %18, %12 ], [ %26, %23 ]
  %29 = getelementptr inbounds %struct.kernel_param, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.kernel_param_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %2, ptr noundef %28) #18
  %34 = load ptr, ptr %13, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %struct.module, ptr %34, i32 0, i32 11
  %37 = select i1 %35, ptr @param_lock, ptr %36
  tail call void @mutex_unlock(ptr noundef %37) #18
  %38 = icmp eq i32 %33, 0
  %39 = select i1 %38, i32 %3, i32 %33
  br label %40

40:                                               ; preds = %27, %4
  %41 = phi i32 [ -1, %4 ], [ %39, %27 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @module_attr_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = getelementptr inbounds %struct.module_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %1, ptr noundef %0, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -5, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @module_attr_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.module_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(ptr noundef %1, ptr noundef %0, ptr noundef %2, i32 noundef %3) #18
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -5, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @version_sysfs_builtin() unnamed_addr #12 section ".init.text" {
  br i1 icmp ult (ptr @__start___modver, ptr @__stop___modver), label %1, label %19

1:                                                ; preds = %16, %0
  %2 = phi ptr [ %17, %16 ], [ @__start___modver, %0 ]
  %3 = getelementptr inbounds %struct.module_version_attribute, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc ptr @locate_module_kobject(ptr noundef %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %5, ptr noundef %2, ptr noundef null) #18
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @version_sysfs_builtin.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !17

13:                                               ; preds = %7
  store i1 true, ptr @version_sysfs_builtin.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 877, i32 noundef 9, ptr noundef null) #18
  br label %14

14:                                               ; preds = %13, %7
  %15 = tail call i32 @kobject_uevent(ptr noundef nonnull %5, i32 noundef 0) #18
  tail call void @kobject_put(ptr noundef nonnull %5) #18
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr %struct.module_version_attribute, ptr %2, i32 1
  %18 = icmp ult ptr %17, @__stop___modver
  br i1 %18, label %1, label %19

19:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @param_sysfs_builtin() unnamed_addr #12 section ".init.text" {
  %1 = alloca [60 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %1) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %1, i8 0, i32 60, i1 false), !annotation !8
  br i1 icmp ult (ptr @__start___param, ptr @__stop___param), label %2, label %23

2:                                                ; preds = %20, %0
  %3 = phi ptr [ %21, %20 ], [ @__start___param, %0 ]
  %4 = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4
  %9 = call ptr @strchr(ptr noundef %8, i32 noundef 46)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i32 7, i1 false)
  br label %18

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i32
  %14 = ptrtoint ptr %8 to i32
  %15 = sub i32 %13, %14
  %16 = add i32 %15, 1
  %17 = call i32 @strlcpy(ptr noundef nonnull %1, ptr noundef %8, i32 noundef %16) #18
  br label %18

18:                                               ; preds = %12, %11
  %19 = phi i32 [ %16, %12 ], [ 0, %11 ]
  call fastcc void @kernel_add_sysfs_param(ptr noundef nonnull %1, ptr noundef %3, i32 noundef %19) #23
  br label %20

20:                                               ; preds = %18, %2
  %21 = getelementptr %struct.kernel_param, ptr %3, i32 1
  %22 = icmp ult ptr %21, @__stop___param
  br i1 %22, label %2, label %23

23:                                               ; preds = %20, %0
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %1) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @uevent_filter(ptr nocapture noundef readonly %0) #16 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @module_ktype
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @locate_module_kobject(ptr noundef %0) unnamed_addr #12 section ".init.text" {
  %2 = load ptr, ptr @module_kset, align 4
  %3 = tail call ptr @kset_find_obj(ptr noundef %2, ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #21
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 772, 0\0A.popsection", ""() #18, !srcloc !19
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 1
  store ptr null, ptr %11, align 4
  %12 = load ptr, ptr @module_kset, align 4
  %13 = getelementptr inbounds %struct.kobject, ptr %7, i32 0, i32 3
  store ptr %12, ptr %13, align 8
  %14 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %7, ptr noundef nonnull @module_ktype, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef %0) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %7, ptr noundef nonnull @module_uevent, ptr noundef null) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %17, %16 ], [ %14, %10 ]
  tail call void @kobject_put(ptr noundef nonnull %7) #18
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %0, i32 noundef %20) #19
  br label %24

22:                                               ; preds = %16
  %23 = tail call ptr @kobject_get(ptr noundef nonnull %7) #18
  br label %24

24:                                               ; preds = %22, %19, %1
  %25 = phi ptr [ null, %19 ], [ %7, %22 ], [ %3, %1 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @kernel_add_sysfs_param(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 section ".init.text" {
  %4 = tail call fastcc ptr @locate_module_kobject(ptr noundef %0) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.module_kobject, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.module_param_attrs, ptr %8, i32 0, i32 1
  tail call void @sysfs_remove_group(ptr noundef nonnull %4, ptr noundef %11) #18
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 %2
  %15 = tail call fastcc i32 @add_sysfs_param(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !15

17:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #18, !srcloc !20
  unreachable

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.module_param_attrs, ptr %19, i32 0, i32 1
  %21 = tail call i32 @sysfs_create_group(ptr noundef nonnull %4, ptr noundef %20) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !15

23:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/params.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 815, 0\0A.popsection", ""() #18, !srcloc !21
  unreachable

24:                                               ; preds = %18
  %25 = tail call i32 @kobject_uevent(ptr noundef nonnull %4, i32 noundef 0) #18
  tail call void @kobject_put(ptr noundef nonnull %4) #18
  br label %26

26:                                               ; preds = %24, %3
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { cold }

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
!9 = !{i64 329977}
!10 = !{i64 2148947924}
!11 = !{i64 2148943748}
!12 = !{i64 2148943823, i64 2148943850, i64 2148943897, i64 2148943919, i64 2148943947, i64 2148943967}
!13 = !{i64 2148970927}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2152570558, i64 2152571037, i64 2152570595, i64 2152570651, i64 2152570685, i64 2152570709, i64 2152570750, i64 2152570771, i64 2152570799, i64 2152570833}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2152664576, i64 2152665056, i64 2152664613, i64 2152664669, i64 2152664703, i64 2152664727, i64 2152664768, i64 2152664789, i64 2152664817, i64 2152664851}
!19 = !{i64 2152667984, i64 2152668464, i64 2152668021, i64 2152668077, i64 2152668111, i64 2152668135, i64 2152668176, i64 2152668197, i64 2152668225, i64 2152668259}
!20 = !{i64 2152669873, i64 2152670353, i64 2152669910, i64 2152669966, i64 2152670000, i64 2152670024, i64 2152670065, i64 2152670086, i64 2152670114, i64 2152670148}
!21 = !{i64 2152670859, i64 2152671339, i64 2152670896, i64 2152670952, i64 2152670986, i64 2152671010, i64 2152671051, i64 2152671072, i64 2152671100, i64 2152671134}
