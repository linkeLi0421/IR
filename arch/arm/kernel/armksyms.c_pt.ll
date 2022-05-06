; ModuleID = '/llk/IR/arch/arm/kernel/armksyms.c_pt.bc'
source_filename = "../arch/arm/kernel/armksyms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_delay_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_delay_ops\22\09\09\09\09\09"
module asm "__kstrtabns_arm_delay_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_partial\22\09\09\09\09\09"
module asm "__kstrtabns_csum_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_partial_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_partial_copy_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_csum_partial_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_csum_partial_copy_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22csum_partial_copy_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_csum_partial_copy_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___csum_ipv6_magic:\09\09\09\09\09"
module asm "\09.asciz \09\22__csum_ipv6_magic\22\09\09\09\09\09"
module asm "__kstrtabns___csum_ipv6_magic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_readsb:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_readsb\22\09\09\09\09\09"
module asm "__kstrtabns___raw_readsb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_readsw:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_readsw\22\09\09\09\09\09"
module asm "__kstrtabns___raw_readsw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_readsl:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_readsl\22\09\09\09\09\09"
module asm "__kstrtabns___raw_readsl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_writesb:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_writesb\22\09\09\09\09\09"
module asm "__kstrtabns___raw_writesb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_writesw:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_writesw\22\09\09\09\09\09"
module asm "__kstrtabns___raw_writesw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_writesl:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_writesl\22\09\09\09\09\09"
module asm "__kstrtabns___raw_writesl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strchr:\09\09\09\09\09"
module asm "\09.asciz \09\22strchr\22\09\09\09\09\09"
module asm "__kstrtabns_strchr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strrchr:\09\09\09\09\09"
module asm "\09.asciz \09\22strrchr\22\09\09\09\09\09"
module asm "__kstrtabns_strrchr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memset:\09\09\09\09\09"
module asm "\09.asciz \09\22memset\22\09\09\09\09\09"
module asm "__kstrtabns_memset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___memset32:\09\09\09\09\09"
module asm "\09.asciz \09\22__memset32\22\09\09\09\09\09"
module asm "__kstrtabns___memset32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___memset64:\09\09\09\09\09"
module asm "\09.asciz \09\22__memset64\22\09\09\09\09\09"
module asm "__kstrtabns___memset64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22memcpy\22\09\09\09\09\09"
module asm "__kstrtabns_memcpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memmove:\09\09\09\09\09"
module asm "\09.asciz \09\22memmove\22\09\09\09\09\09"
module asm "__kstrtabns_memmove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memchr:\09\09\09\09\09"
module asm "\09.asciz \09\22memchr\22\09\09\09\09\09"
module asm "__kstrtabns_memchr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmioset:\09\09\09\09\09"
module asm "\09.asciz \09\22mmioset\22\09\09\09\09\09"
module asm "__kstrtabns_mmioset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmiocpy:\09\09\09\09\09"
module asm "\09.asciz \09\22mmiocpy\22\09\09\09\09\09"
module asm "__kstrtabns_mmiocpy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_page:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_page\22\09\09\09\09\09"
module asm "__kstrtabns_copy_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_copy_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_arm_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_copy_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_copy_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_arm_copy_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arm_clear_user:\09\09\09\09\09"
module asm "\09.asciz \09\22arm_clear_user\22\09\09\09\09\09"
module asm "__kstrtabns_arm_clear_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_user_1:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_user_1\22\09\09\09\09\09"
module asm "__kstrtabns___get_user_1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_user_2:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_user_2\22\09\09\09\09\09"
module asm "__kstrtabns___get_user_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_user_4:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_user_4\22\09\09\09\09\09"
module asm "__kstrtabns___get_user_4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_user_8:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_user_8\22\09\09\09\09\09"
module asm "__kstrtabns___get_user_8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_user_1:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_user_1\22\09\09\09\09\09"
module asm "__kstrtabns___put_user_1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_user_2:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_user_2\22\09\09\09\09\09"
module asm "__kstrtabns___put_user_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_user_4:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_user_4\22\09\09\09\09\09"
module asm "__kstrtabns___put_user_4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_user_8:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_user_8\22\09\09\09\09\09"
module asm "__kstrtabns___put_user_8:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ashldi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__ashldi3\22\09\09\09\09\09"
module asm "__kstrtabns___ashldi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ashrdi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__ashrdi3\22\09\09\09\09\09"
module asm "__kstrtabns___ashrdi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___divsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__divsi3\22\09\09\09\09\09"
module asm "__kstrtabns___divsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___lshrdi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__lshrdi3\22\09\09\09\09\09"
module asm "__kstrtabns___lshrdi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___modsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__modsi3\22\09\09\09\09\09"
module asm "__kstrtabns___modsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___muldi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__muldi3\22\09\09\09\09\09"
module asm "__kstrtabns___muldi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ucmpdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__ucmpdi2\22\09\09\09\09\09"
module asm "__kstrtabns___ucmpdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udivsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__udivsi3\22\09\09\09\09\09"
module asm "__kstrtabns___udivsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___umodsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22__umodsi3\22\09\09\09\09\09"
module asm "__kstrtabns___umodsi3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___do_div64:\09\09\09\09\09"
module asm "\09.asciz \09\22__do_div64\22\09\09\09\09\09"
module asm "__kstrtabns___do_div64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bswapsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__bswapsi2\22\09\09\09\09\09"
module asm "__kstrtabns___bswapsi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bswapdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22__bswapdi2\22\09\09\09\09\09"
module asm "__kstrtabns___bswapdi2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_idiv:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_idiv\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_idiv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_idivmod:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_idivmod\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_idivmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_lasr:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_lasr\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_lasr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_llsl:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_llsl\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_llsl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_llsr:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_llsr\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_llsr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_lmul:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_lmul\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_lmul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_uidiv:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_uidiv\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_uidiv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_uidivmod:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_uidivmod\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_uidivmod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___aeabi_ulcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22__aeabi_ulcmp\22\09\09\09\09\09"
module asm "__kstrtabns___aeabi_ulcmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns__set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__test_and_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_test_and_set_bit\22\09\09\09\09\09"
module asm "__kstrtabns__test_and_set_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_clear_bit\22\09\09\09\09\09"
module asm "__kstrtabns__clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__test_and_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_test_and_clear_bit\22\09\09\09\09\09"
module asm "__kstrtabns__test_and_clear_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__change_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_change_bit\22\09\09\09\09\09"
module asm "__kstrtabns__change_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__test_and_change_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22_test_and_change_bit\22\09\09\09\09\09"
module asm "__kstrtabns__test_and_change_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_first_zero_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_first_zero_bit_le\22\09\09\09\09\09"
module asm "__kstrtabns__find_first_zero_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_next_zero_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_next_zero_bit_le\22\09\09\09\09\09"
module asm "__kstrtabns__find_next_zero_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_first_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_first_bit_le\22\09\09\09\09\09"
module asm "__kstrtabns__find_first_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__find_next_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22_find_next_bit_le\22\09\09\09\09\09"
module asm "__kstrtabns__find_next_bit_le:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pv_phys_pfn_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22__pv_phys_pfn_offset\22\09\09\09\09\09"
module asm "__kstrtabns___pv_phys_pfn_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22__pv_offset\22\09\09\09\09\09"
module asm "__kstrtabns___pv_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___arm_smccc_smc:\09\09\09\09\09"
module asm "\09.asciz \09\22__arm_smccc_smc\22\09\09\09\09\09"
module asm "__kstrtabns___arm_smccc_smc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___arm_smccc_hvc:\09\09\09\09\09"
module asm "\09.asciz \09\22__arm_smccc_hvc\22\09\09\09\09\09"
module asm "__kstrtabns___arm_smccc_hvc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local global %struct.arm_delay_ops, align 4
@__kstrtab_arm_delay_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_delay_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_delay_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_delay_ops to i32), ptr @__kstrtab_arm_delay_ops, ptr @__kstrtabns_arm_delay_ops }, section "___ksymtab+arm_delay_ops", align 4
@__kstrtab_csum_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_partial to i32), ptr @__kstrtab_csum_partial, ptr @__kstrtabns_csum_partial }, section "___ksymtab+csum_partial", align 4
@__kstrtab_csum_partial_copy_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_partial_copy_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_partial_copy_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_partial_copy_from_user to i32), ptr @__kstrtab_csum_partial_copy_from_user, ptr @__kstrtabns_csum_partial_copy_from_user }, section "___ksymtab+csum_partial_copy_from_user", align 4
@__kstrtab_csum_partial_copy_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_csum_partial_copy_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_csum_partial_copy_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @csum_partial_copy_nocheck to i32), ptr @__kstrtab_csum_partial_copy_nocheck, ptr @__kstrtabns_csum_partial_copy_nocheck }, section "___ksymtab+csum_partial_copy_nocheck", align 4
@__kstrtab___csum_ipv6_magic = external dso_local constant [0 x i8], align 1
@__kstrtabns___csum_ipv6_magic = external dso_local constant [0 x i8], align 1
@__ksymtab___csum_ipv6_magic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__csum_ipv6_magic to i32), ptr @__kstrtab___csum_ipv6_magic, ptr @__kstrtabns___csum_ipv6_magic }, section "___ksymtab+__csum_ipv6_magic", align 4
@__kstrtab___raw_readsb = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_readsb = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_readsb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_readsb to i32), ptr @__kstrtab___raw_readsb, ptr @__kstrtabns___raw_readsb }, section "___ksymtab+__raw_readsb", align 4
@__kstrtab___raw_readsw = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_readsw = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_readsw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_readsw to i32), ptr @__kstrtab___raw_readsw, ptr @__kstrtabns___raw_readsw }, section "___ksymtab+__raw_readsw", align 4
@__kstrtab___raw_readsl = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_readsl = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_readsl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_readsl to i32), ptr @__kstrtab___raw_readsl, ptr @__kstrtabns___raw_readsl }, section "___ksymtab+__raw_readsl", align 4
@__kstrtab___raw_writesb = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_writesb = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_writesb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_writesb to i32), ptr @__kstrtab___raw_writesb, ptr @__kstrtabns___raw_writesb }, section "___ksymtab+__raw_writesb", align 4
@__kstrtab___raw_writesw = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_writesw = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_writesw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_writesw to i32), ptr @__kstrtab___raw_writesw, ptr @__kstrtabns___raw_writesw }, section "___ksymtab+__raw_writesw", align 4
@__kstrtab___raw_writesl = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_writesl = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_writesl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_writesl to i32), ptr @__kstrtab___raw_writesl, ptr @__kstrtabns___raw_writesl }, section "___ksymtab+__raw_writesl", align 4
@__kstrtab_strchr = external dso_local constant [0 x i8], align 1
@__kstrtabns_strchr = external dso_local constant [0 x i8], align 1
@__ksymtab_strchr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strchr to i32), ptr @__kstrtab_strchr, ptr @__kstrtabns_strchr }, section "___ksymtab+strchr", align 4
@__kstrtab_strrchr = external dso_local constant [0 x i8], align 1
@__kstrtabns_strrchr = external dso_local constant [0 x i8], align 1
@__ksymtab_strrchr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strrchr to i32), ptr @__kstrtab_strrchr, ptr @__kstrtabns_strrchr }, section "___ksymtab+strrchr", align 4
@__kstrtab_memset = external dso_local constant [0 x i8], align 1
@__kstrtabns_memset = external dso_local constant [0 x i8], align 1
@__ksymtab_memset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memset to i32), ptr @__kstrtab_memset, ptr @__kstrtabns_memset }, section "___ksymtab+memset", align 4
@__kstrtab___memset32 = external dso_local constant [0 x i8], align 1
@__kstrtabns___memset32 = external dso_local constant [0 x i8], align 1
@__ksymtab___memset32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__memset32 to i32), ptr @__kstrtab___memset32, ptr @__kstrtabns___memset32 }, section "___ksymtab+__memset32", align 4
@__kstrtab___memset64 = external dso_local constant [0 x i8], align 1
@__kstrtabns___memset64 = external dso_local constant [0 x i8], align 1
@__ksymtab___memset64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__memset64 to i32), ptr @__kstrtab___memset64, ptr @__kstrtabns___memset64 }, section "___ksymtab+__memset64", align 4
@__kstrtab_memcpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_memcpy = external dso_local constant [0 x i8], align 1
@__ksymtab_memcpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memcpy to i32), ptr @__kstrtab_memcpy, ptr @__kstrtabns_memcpy }, section "___ksymtab+memcpy", align 4
@__kstrtab_memmove = external dso_local constant [0 x i8], align 1
@__kstrtabns_memmove = external dso_local constant [0 x i8], align 1
@__ksymtab_memmove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memmove to i32), ptr @__kstrtab_memmove, ptr @__kstrtabns_memmove }, section "___ksymtab+memmove", align 4
@__kstrtab_memchr = external dso_local constant [0 x i8], align 1
@__kstrtabns_memchr = external dso_local constant [0 x i8], align 1
@__ksymtab_memchr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memchr to i32), ptr @__kstrtab_memchr, ptr @__kstrtabns_memchr }, section "___ksymtab+memchr", align 4
@__kstrtab_mmioset = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmioset = external dso_local constant [0 x i8], align 1
@__ksymtab_mmioset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmioset to i32), ptr @__kstrtab_mmioset, ptr @__kstrtabns_mmioset }, section "___ksymtab+mmioset", align 4
@__kstrtab_mmiocpy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmiocpy = external dso_local constant [0 x i8], align 1
@__ksymtab_mmiocpy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmiocpy to i32), ptr @__kstrtab_mmiocpy, ptr @__kstrtabns_mmiocpy }, section "___ksymtab+mmiocpy", align 4
@__kstrtab_copy_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_page = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_page to i32), ptr @__kstrtab_copy_page, ptr @__kstrtabns_copy_page }, section "___ksymtab+copy_page", align 4
@__kstrtab_arm_copy_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_copy_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_copy_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_copy_from_user to i32), ptr @__kstrtab_arm_copy_from_user, ptr @__kstrtabns_arm_copy_from_user }, section "___ksymtab+arm_copy_from_user", align 4
@__kstrtab_arm_copy_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_copy_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_copy_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_copy_to_user to i32), ptr @__kstrtab_arm_copy_to_user, ptr @__kstrtabns_arm_copy_to_user }, section "___ksymtab+arm_copy_to_user", align 4
@__kstrtab_arm_clear_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_arm_clear_user = external dso_local constant [0 x i8], align 1
@__ksymtab_arm_clear_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arm_clear_user to i32), ptr @__kstrtab_arm_clear_user, ptr @__kstrtabns_arm_clear_user }, section "___ksymtab+arm_clear_user", align 4
@__kstrtab___get_user_1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_user_1 = external dso_local constant [0 x i8], align 1
@__ksymtab___get_user_1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_user_1 to i32), ptr @__kstrtab___get_user_1, ptr @__kstrtabns___get_user_1 }, section "___ksymtab+__get_user_1", align 4
@__kstrtab___get_user_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_user_2 = external dso_local constant [0 x i8], align 1
@__ksymtab___get_user_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_user_2 to i32), ptr @__kstrtab___get_user_2, ptr @__kstrtabns___get_user_2 }, section "___ksymtab+__get_user_2", align 4
@__kstrtab___get_user_4 = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_user_4 = external dso_local constant [0 x i8], align 1
@__ksymtab___get_user_4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_user_4 to i32), ptr @__kstrtab___get_user_4, ptr @__kstrtabns___get_user_4 }, section "___ksymtab+__get_user_4", align 4
@__kstrtab___get_user_8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_user_8 = external dso_local constant [0 x i8], align 1
@__ksymtab___get_user_8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_user_8 to i32), ptr @__kstrtab___get_user_8, ptr @__kstrtabns___get_user_8 }, section "___ksymtab+__get_user_8", align 4
@__kstrtab___put_user_1 = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_user_1 = external dso_local constant [0 x i8], align 1
@__ksymtab___put_user_1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_user_1 to i32), ptr @__kstrtab___put_user_1, ptr @__kstrtabns___put_user_1 }, section "___ksymtab+__put_user_1", align 4
@__kstrtab___put_user_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_user_2 = external dso_local constant [0 x i8], align 1
@__ksymtab___put_user_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_user_2 to i32), ptr @__kstrtab___put_user_2, ptr @__kstrtabns___put_user_2 }, section "___ksymtab+__put_user_2", align 4
@__kstrtab___put_user_4 = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_user_4 = external dso_local constant [0 x i8], align 1
@__ksymtab___put_user_4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_user_4 to i32), ptr @__kstrtab___put_user_4, ptr @__kstrtabns___put_user_4 }, section "___ksymtab+__put_user_4", align 4
@__kstrtab___put_user_8 = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_user_8 = external dso_local constant [0 x i8], align 1
@__ksymtab___put_user_8 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_user_8 to i32), ptr @__kstrtab___put_user_8, ptr @__kstrtabns___put_user_8 }, section "___ksymtab+__put_user_8", align 4
@__kstrtab___ashldi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ashldi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___ashldi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ashldi3 to i32), ptr @__kstrtab___ashldi3, ptr @__kstrtabns___ashldi3 }, section "___ksymtab+__ashldi3", align 4
@__kstrtab___ashrdi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ashrdi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___ashrdi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ashrdi3 to i32), ptr @__kstrtab___ashrdi3, ptr @__kstrtabns___ashrdi3 }, section "___ksymtab+__ashrdi3", align 4
@__kstrtab___divsi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___divsi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___divsi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__divsi3 to i32), ptr @__kstrtab___divsi3, ptr @__kstrtabns___divsi3 }, section "___ksymtab+__divsi3", align 4
@__kstrtab___lshrdi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___lshrdi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___lshrdi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__lshrdi3 to i32), ptr @__kstrtab___lshrdi3, ptr @__kstrtabns___lshrdi3 }, section "___ksymtab+__lshrdi3", align 4
@__kstrtab___modsi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___modsi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___modsi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__modsi3 to i32), ptr @__kstrtab___modsi3, ptr @__kstrtabns___modsi3 }, section "___ksymtab+__modsi3", align 4
@__kstrtab___muldi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___muldi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___muldi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__muldi3 to i32), ptr @__kstrtab___muldi3, ptr @__kstrtabns___muldi3 }, section "___ksymtab+__muldi3", align 4
@__kstrtab___ucmpdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___ucmpdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___ucmpdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ucmpdi2 to i32), ptr @__kstrtab___ucmpdi2, ptr @__kstrtabns___ucmpdi2 }, section "___ksymtab+__ucmpdi2", align 4
@__kstrtab___udivsi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___udivsi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___udivsi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udivsi3 to i32), ptr @__kstrtab___udivsi3, ptr @__kstrtabns___udivsi3 }, section "___ksymtab+__udivsi3", align 4
@__kstrtab___umodsi3 = external dso_local constant [0 x i8], align 1
@__kstrtabns___umodsi3 = external dso_local constant [0 x i8], align 1
@__ksymtab___umodsi3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__umodsi3 to i32), ptr @__kstrtab___umodsi3, ptr @__kstrtabns___umodsi3 }, section "___ksymtab+__umodsi3", align 4
@__kstrtab___do_div64 = external dso_local constant [0 x i8], align 1
@__kstrtabns___do_div64 = external dso_local constant [0 x i8], align 1
@__ksymtab___do_div64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__do_div64 to i32), ptr @__kstrtab___do_div64, ptr @__kstrtabns___do_div64 }, section "___ksymtab+__do_div64", align 4
@__kstrtab___bswapsi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___bswapsi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___bswapsi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bswapsi2 to i32), ptr @__kstrtab___bswapsi2, ptr @__kstrtabns___bswapsi2 }, section "___ksymtab+__bswapsi2", align 4
@__kstrtab___bswapdi2 = external dso_local constant [0 x i8], align 1
@__kstrtabns___bswapdi2 = external dso_local constant [0 x i8], align 1
@__ksymtab___bswapdi2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bswapdi2 to i32), ptr @__kstrtab___bswapdi2, ptr @__kstrtabns___bswapdi2 }, section "___ksymtab+__bswapdi2", align 4
@__kstrtab___aeabi_idiv = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_idiv = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_idiv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_idiv to i32), ptr @__kstrtab___aeabi_idiv, ptr @__kstrtabns___aeabi_idiv }, section "___ksymtab+__aeabi_idiv", align 4
@__kstrtab___aeabi_idivmod = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_idivmod = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_idivmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_idivmod to i32), ptr @__kstrtab___aeabi_idivmod, ptr @__kstrtabns___aeabi_idivmod }, section "___ksymtab+__aeabi_idivmod", align 4
@__kstrtab___aeabi_lasr = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_lasr = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_lasr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_lasr to i32), ptr @__kstrtab___aeabi_lasr, ptr @__kstrtabns___aeabi_lasr }, section "___ksymtab+__aeabi_lasr", align 4
@__kstrtab___aeabi_llsl = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_llsl = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_llsl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_llsl to i32), ptr @__kstrtab___aeabi_llsl, ptr @__kstrtabns___aeabi_llsl }, section "___ksymtab+__aeabi_llsl", align 4
@__kstrtab___aeabi_llsr = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_llsr = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_llsr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_llsr to i32), ptr @__kstrtab___aeabi_llsr, ptr @__kstrtabns___aeabi_llsr }, section "___ksymtab+__aeabi_llsr", align 4
@__kstrtab___aeabi_lmul = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_lmul = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_lmul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_lmul to i32), ptr @__kstrtab___aeabi_lmul, ptr @__kstrtabns___aeabi_lmul }, section "___ksymtab+__aeabi_lmul", align 4
@__kstrtab___aeabi_uidiv = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_uidiv = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_uidiv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_uidiv to i32), ptr @__kstrtab___aeabi_uidiv, ptr @__kstrtabns___aeabi_uidiv }, section "___ksymtab+__aeabi_uidiv", align 4
@__kstrtab___aeabi_uidivmod = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_uidivmod = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_uidivmod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_uidivmod to i32), ptr @__kstrtab___aeabi_uidivmod, ptr @__kstrtabns___aeabi_uidivmod }, section "___ksymtab+__aeabi_uidivmod", align 4
@__kstrtab___aeabi_ulcmp = external dso_local constant [0 x i8], align 1
@__kstrtabns___aeabi_ulcmp = external dso_local constant [0 x i8], align 1
@__ksymtab___aeabi_ulcmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__aeabi_ulcmp to i32), ptr @__kstrtab___aeabi_ulcmp, ptr @__kstrtabns___aeabi_ulcmp }, section "___ksymtab+__aeabi_ulcmp", align 4
@__kstrtab__set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_set_bit to i32), ptr @__kstrtab__set_bit, ptr @__kstrtabns__set_bit }, section "___ksymtab+_set_bit", align 4
@__kstrtab__test_and_set_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__test_and_set_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__test_and_set_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_test_and_set_bit to i32), ptr @__kstrtab__test_and_set_bit, ptr @__kstrtabns__test_and_set_bit }, section "___ksymtab+_test_and_set_bit", align 4
@__kstrtab__clear_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__clear_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__clear_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_clear_bit to i32), ptr @__kstrtab__clear_bit, ptr @__kstrtabns__clear_bit }, section "___ksymtab+_clear_bit", align 4
@__kstrtab__test_and_clear_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__test_and_clear_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__test_and_clear_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_test_and_clear_bit to i32), ptr @__kstrtab__test_and_clear_bit, ptr @__kstrtabns__test_and_clear_bit }, section "___ksymtab+_test_and_clear_bit", align 4
@__kstrtab__change_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__change_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__change_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_change_bit to i32), ptr @__kstrtab__change_bit, ptr @__kstrtabns__change_bit }, section "___ksymtab+_change_bit", align 4
@__kstrtab__test_and_change_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns__test_and_change_bit = external dso_local constant [0 x i8], align 1
@__ksymtab__test_and_change_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_test_and_change_bit to i32), ptr @__kstrtab__test_and_change_bit, ptr @__kstrtabns__test_and_change_bit }, section "___ksymtab+_test_and_change_bit", align 4
@__kstrtab__find_first_zero_bit_le = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_first_zero_bit_le = external dso_local constant [0 x i8], align 1
@__ksymtab__find_first_zero_bit_le = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_first_zero_bit_le to i32), ptr @__kstrtab__find_first_zero_bit_le, ptr @__kstrtabns__find_first_zero_bit_le }, section "___ksymtab+_find_first_zero_bit_le", align 4
@__kstrtab__find_next_zero_bit_le = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_next_zero_bit_le = external dso_local constant [0 x i8], align 1
@__ksymtab__find_next_zero_bit_le = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_next_zero_bit_le to i32), ptr @__kstrtab__find_next_zero_bit_le, ptr @__kstrtabns__find_next_zero_bit_le }, section "___ksymtab+_find_next_zero_bit_le", align 4
@__kstrtab__find_first_bit_le = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_first_bit_le = external dso_local constant [0 x i8], align 1
@__ksymtab__find_first_bit_le = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_first_bit_le to i32), ptr @__kstrtab__find_first_bit_le, ptr @__kstrtabns__find_first_bit_le }, section "___ksymtab+_find_first_bit_le", align 4
@__kstrtab__find_next_bit_le = external dso_local constant [0 x i8], align 1
@__kstrtabns__find_next_bit_le = external dso_local constant [0 x i8], align 1
@__ksymtab__find_next_bit_le = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_find_next_bit_le to i32), ptr @__kstrtab__find_next_bit_le, ptr @__kstrtabns__find_next_bit_le }, section "___ksymtab+_find_next_bit_le", align 4
@__pv_phys_pfn_offset = external dso_local global i32, align 4
@__kstrtab___pv_phys_pfn_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns___pv_phys_pfn_offset = external dso_local constant [0 x i8], align 1
@__ksymtab___pv_phys_pfn_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32), ptr @__kstrtab___pv_phys_pfn_offset, ptr @__kstrtabns___pv_phys_pfn_offset }, section "___ksymtab+__pv_phys_pfn_offset", align 4
@__pv_offset = external dso_local global i64, align 8
@__kstrtab___pv_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns___pv_offset = external dso_local constant [0 x i8], align 1
@__ksymtab___pv_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pv_offset to i32), ptr @__kstrtab___pv_offset, ptr @__kstrtabns___pv_offset }, section "___ksymtab+__pv_offset", align 4
@__kstrtab___arm_smccc_smc = external dso_local constant [0 x i8], align 1
@__kstrtabns___arm_smccc_smc = external dso_local constant [0 x i8], align 1
@__ksymtab___arm_smccc_smc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__arm_smccc_smc to i32), ptr @__kstrtab___arm_smccc_smc, ptr @__kstrtabns___arm_smccc_smc }, section "___ksymtab+__arm_smccc_smc", align 4
@__kstrtab___arm_smccc_hvc = external dso_local constant [0 x i8], align 1
@__kstrtabns___arm_smccc_hvc = external dso_local constant [0 x i8], align 1
@__ksymtab___arm_smccc_hvc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__arm_smccc_hvc to i32), ptr @__kstrtab___arm_smccc_hvc, ptr @__kstrtabns___arm_smccc_hvc }, section "___ksymtab+__arm_smccc_hvc", align 4
@llvm.compiler.used = appending global [68 x ptr] [ptr @__ksymtab___aeabi_idiv, ptr @__ksymtab___aeabi_idivmod, ptr @__ksymtab___aeabi_lasr, ptr @__ksymtab___aeabi_llsl, ptr @__ksymtab___aeabi_llsr, ptr @__ksymtab___aeabi_lmul, ptr @__ksymtab___aeabi_uidiv, ptr @__ksymtab___aeabi_uidivmod, ptr @__ksymtab___aeabi_ulcmp, ptr @__ksymtab___arm_smccc_hvc, ptr @__ksymtab___arm_smccc_smc, ptr @__ksymtab___ashldi3, ptr @__ksymtab___ashrdi3, ptr @__ksymtab___bswapdi2, ptr @__ksymtab___bswapsi2, ptr @__ksymtab___csum_ipv6_magic, ptr @__ksymtab___divsi3, ptr @__ksymtab___do_div64, ptr @__ksymtab___get_user_1, ptr @__ksymtab___get_user_2, ptr @__ksymtab___get_user_4, ptr @__ksymtab___get_user_8, ptr @__ksymtab___lshrdi3, ptr @__ksymtab___memset32, ptr @__ksymtab___memset64, ptr @__ksymtab___modsi3, ptr @__ksymtab___muldi3, ptr @__ksymtab___put_user_1, ptr @__ksymtab___put_user_2, ptr @__ksymtab___put_user_4, ptr @__ksymtab___put_user_8, ptr @__ksymtab___pv_offset, ptr @__ksymtab___pv_phys_pfn_offset, ptr @__ksymtab___raw_readsb, ptr @__ksymtab___raw_readsl, ptr @__ksymtab___raw_readsw, ptr @__ksymtab___raw_writesb, ptr @__ksymtab___raw_writesl, ptr @__ksymtab___raw_writesw, ptr @__ksymtab___ucmpdi2, ptr @__ksymtab___udivsi3, ptr @__ksymtab___umodsi3, ptr @__ksymtab__change_bit, ptr @__ksymtab__clear_bit, ptr @__ksymtab__find_first_bit_le, ptr @__ksymtab__find_first_zero_bit_le, ptr @__ksymtab__find_next_bit_le, ptr @__ksymtab__find_next_zero_bit_le, ptr @__ksymtab__set_bit, ptr @__ksymtab__test_and_change_bit, ptr @__ksymtab__test_and_clear_bit, ptr @__ksymtab__test_and_set_bit, ptr @__ksymtab_arm_clear_user, ptr @__ksymtab_arm_copy_from_user, ptr @__ksymtab_arm_copy_to_user, ptr @__ksymtab_arm_delay_ops, ptr @__ksymtab_copy_page, ptr @__ksymtab_csum_partial, ptr @__ksymtab_csum_partial_copy_from_user, ptr @__ksymtab_csum_partial_copy_nocheck, ptr @__ksymtab_memchr, ptr @__ksymtab_memcpy, ptr @__ksymtab_memmove, ptr @__ksymtab_memset, ptr @__ksymtab_mmiocpy, ptr @__ksymtab_mmioset, ptr @__ksymtab_strchr, ptr @__ksymtab_strrchr], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_from_user(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @memset(ptr noundef writeonly, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @memmove(ptr noundef returned writeonly, ptr nocapture noundef readonly, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_user_1(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_user_2(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_user_4(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_user_8(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__put_user_1(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__put_user_2(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__put_user_4(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__put_user_8(ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ashldi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ashrdi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__divsi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lshrdi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__modsi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__muldi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ucmpdi2() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__udivsi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__umodsi3() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_div64() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bswapsi2() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bswapdi2() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_idiv() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_idivmod() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_lasr() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_llsl() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_llsr() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_lmul() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_uidiv() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_uidivmod() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__aeabi_ulcmp() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_change_bit(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_hvc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
