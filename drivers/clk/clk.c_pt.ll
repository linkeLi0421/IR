; ModuleID = '/llk/IR/drivers/clk/clk.c_pt.bc'
source_filename = "../drivers/clk/clk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_get_name\22\09\09\09\09\09"
module asm "__kstrtabns___clk_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_get_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_get_hw\22\09\09\09\09\09"
module asm "__kstrtabns___clk_get_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_num_parents:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_num_parents\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_num_parents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_parent_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_parent_by_index\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_parent_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_flags\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_is_prepared:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_is_prepared\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_is_prepared:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_rate_is_protected:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_rate_is_protected\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_rate_is_protected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns___clk_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_mux_determine_rate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_mux_determine_rate_flags\22\09\09\09\09\09"
module asm "__kstrtabns_clk_mux_determine_rate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_set_rate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_set_rate_range\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_set_rate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_mux_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_mux_determine_rate\22\09\09\09\09\09"
module asm "__kstrtabns___clk_mux_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_mux_determine_rate_closest:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_mux_determine_rate_closest\22\09\09\09\09\09"
module asm "__kstrtabns___clk_mux_determine_rate_closest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rate_exclusive_put:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rate_exclusive_put\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rate_exclusive_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_rate_exclusive_get:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_rate_exclusive_get\22\09\09\09\09\09"
module asm "__kstrtabns_clk_rate_exclusive_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_clk_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_gate_restore_context:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_gate_restore_context\22\09\09\09\09\09"
module asm "__kstrtabns_clk_gate_restore_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_save_context:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_save_context\22\09\09\09\09\09"
module asm "__kstrtabns_clk_save_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_restore_context:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_restore_context\22\09\09\09\09\09"
module asm "__kstrtabns_clk_restore_context:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_is_enabled_when_prepared:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_is_enabled_when_prepared\22\09\09\09\09\09"
module asm "__kstrtabns_clk_is_enabled_when_prepared:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___clk_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22__clk_determine_rate\22\09\09\09\09\09"
module asm "__kstrtabns___clk_determine_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_round_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_round_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_round_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_accuracy:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_accuracy\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_accuracy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_parent_index:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_parent_index\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_parent_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_rate_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_rate_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_rate_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_rate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_rate_range\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_rate_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_min_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_min_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_min_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_max_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_max_rate\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_max_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_parent\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_has_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_has_parent\22\09\09\09\09\09"
module asm "__kstrtabns_clk_has_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_phase\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_phase\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_set_duty_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_set_duty_cycle\22\09\09\09\09\09"
module asm "__kstrtabns_clk_set_duty_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_get_scaled_duty_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_get_scaled_duty_cycle\22\09\09\09\09\09"
module asm "__kstrtabns_clk_get_scaled_duty_cycle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_is_match:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_is_match\22\09\09\09\09\09"
module asm "__kstrtabns_clk_is_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_get_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_get_clk\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_get_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_hw_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_get_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_get_clk\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_get_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_clk_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_notifier_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_clk_notifier_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_src_simple_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_src_simple_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_src_simple_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_hw_simple_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_hw_simple_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_hw_simple_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_src_onecell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_src_onecell_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_src_onecell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_hw_onecell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_hw_onecell_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_hw_onecell_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_add_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_add_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_add_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_add_hw_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_add_hw_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_add_hw_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_clk_add_hw_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_clk_add_hw_provider\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_clk_add_hw_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_del_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_clk_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_clk_del_provider\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_clk_del_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_get_from_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_get_from_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_get_from_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_get_parent_count:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_get_parent_count\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_get_parent_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_get_parent_name:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_get_parent_name\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_get_parent_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_parent_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_parent_fill\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_parent_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.lockdep_map = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.93 = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_clk = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_clk_rate = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_clk_rate_range = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_clk_parent = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_clk_phase = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_clk_duty_cycle = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.clk_duty = type { i32, i32 }
%struct.clk_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.clk_duty, %struct.hlist_head, %struct.hlist_node, %struct.hlist_head, i32, ptr, %struct.hlist_node, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.clk_parent_map = type { ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.hlist_node }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_notifier = type { ptr, %struct.srcu_notifier_head, %struct.list_head }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.clk_notifier_devres = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.of_clk_provider = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.clock_provider = type { ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.24, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.25, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.26, ptr, %struct.address_space, %struct.list_head, %union.anon.27, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.24 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.25 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.26 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.27 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_clk_enable = internal constant [11 x i8] c"clk_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_enable = dso_local global %struct.static_call_key { ptr @__traceiter_clk_enable }, align 4
@__tracepoint_clk_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_enable, ptr null, ptr @__traceiter_clk_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_enable = internal constant ptr @__tracepoint_clk_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_enable_complete = internal constant [20 x i8] c"clk_enable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_enable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_enable_complete }, align 4
@__tracepoint_clk_enable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_enable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_enable_complete, ptr null, ptr @__traceiter_clk_enable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_enable_complete = internal constant ptr @__tracepoint_clk_enable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_disable = internal constant [12 x i8] c"clk_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_disable = dso_local global %struct.static_call_key { ptr @__traceiter_clk_disable }, align 4
@__tracepoint_clk_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_disable, ptr null, ptr @__traceiter_clk_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_disable = internal constant ptr @__tracepoint_clk_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_disable_complete = internal constant [21 x i8] c"clk_disable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_disable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_disable_complete }, align 4
@__tracepoint_clk_disable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_disable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_disable_complete, ptr null, ptr @__traceiter_clk_disable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_disable_complete = internal constant ptr @__tracepoint_clk_disable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_prepare = internal constant [12 x i8] c"clk_prepare\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_prepare = dso_local global %struct.static_call_key { ptr @__traceiter_clk_prepare }, align 4
@__tracepoint_clk_prepare = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_prepare, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_prepare, ptr null, ptr @__traceiter_clk_prepare, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_prepare = internal constant ptr @__tracepoint_clk_prepare, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_prepare_complete = internal constant [21 x i8] c"clk_prepare_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_prepare_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_prepare_complete }, align 4
@__tracepoint_clk_prepare_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_prepare_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_prepare_complete, ptr null, ptr @__traceiter_clk_prepare_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_prepare_complete = internal constant ptr @__tracepoint_clk_prepare_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_unprepare = internal constant [14 x i8] c"clk_unprepare\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_unprepare = dso_local global %struct.static_call_key { ptr @__traceiter_clk_unprepare }, align 4
@__tracepoint_clk_unprepare = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_unprepare, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_unprepare, ptr null, ptr @__traceiter_clk_unprepare, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_unprepare = internal constant ptr @__tracepoint_clk_unprepare, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_unprepare_complete = internal constant [23 x i8] c"clk_unprepare_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_unprepare_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_unprepare_complete }, align 4
@__tracepoint_clk_unprepare_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_unprepare_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_unprepare_complete, ptr null, ptr @__traceiter_clk_unprepare_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_unprepare_complete = internal constant ptr @__tracepoint_clk_unprepare_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_rate = internal constant [13 x i8] c"clk_set_rate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_rate = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_rate }, align 4
@__tracepoint_clk_set_rate = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_rate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_rate, ptr null, ptr @__traceiter_clk_set_rate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_rate = internal constant ptr @__tracepoint_clk_set_rate, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_rate_complete = internal constant [22 x i8] c"clk_set_rate_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_rate_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_rate_complete }, align 4
@__tracepoint_clk_set_rate_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_rate_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_rate_complete, ptr null, ptr @__traceiter_clk_set_rate_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_rate_complete = internal constant ptr @__tracepoint_clk_set_rate_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_min_rate = internal constant [17 x i8] c"clk_set_min_rate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_min_rate = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_min_rate }, align 4
@__tracepoint_clk_set_min_rate = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_min_rate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_min_rate, ptr null, ptr @__traceiter_clk_set_min_rate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_min_rate = internal constant ptr @__tracepoint_clk_set_min_rate, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_max_rate = internal constant [17 x i8] c"clk_set_max_rate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_max_rate = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_max_rate }, align 4
@__tracepoint_clk_set_max_rate = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_max_rate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_max_rate, ptr null, ptr @__traceiter_clk_set_max_rate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_max_rate = internal constant ptr @__tracepoint_clk_set_max_rate, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_rate_range = internal constant [19 x i8] c"clk_set_rate_range\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_rate_range = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_rate_range }, align 4
@__tracepoint_clk_set_rate_range = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_rate_range, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_rate_range, ptr null, ptr @__traceiter_clk_set_rate_range, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_rate_range = internal constant ptr @__tracepoint_clk_set_rate_range, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_parent = internal constant [15 x i8] c"clk_set_parent\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_parent = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_parent }, align 4
@__tracepoint_clk_set_parent = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_parent, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_parent, ptr null, ptr @__traceiter_clk_set_parent, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_parent = internal constant ptr @__tracepoint_clk_set_parent, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_parent_complete = internal constant [24 x i8] c"clk_set_parent_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_parent_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_parent_complete }, align 4
@__tracepoint_clk_set_parent_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_parent_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_parent_complete, ptr null, ptr @__traceiter_clk_set_parent_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_parent_complete = internal constant ptr @__tracepoint_clk_set_parent_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_phase = internal constant [14 x i8] c"clk_set_phase\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_phase = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_phase }, align 4
@__tracepoint_clk_set_phase = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_phase, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_phase, ptr null, ptr @__traceiter_clk_set_phase, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_phase = internal constant ptr @__tracepoint_clk_set_phase, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_phase_complete = internal constant [23 x i8] c"clk_set_phase_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_phase_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_phase_complete }, align 4
@__tracepoint_clk_set_phase_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_phase_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_phase_complete, ptr null, ptr @__traceiter_clk_set_phase_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_phase_complete = internal constant ptr @__tracepoint_clk_set_phase_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_duty_cycle = internal constant [19 x i8] c"clk_set_duty_cycle\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_duty_cycle = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_duty_cycle }, align 4
@__tracepoint_clk_set_duty_cycle = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_duty_cycle, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_duty_cycle, ptr null, ptr @__traceiter_clk_set_duty_cycle, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_duty_cycle = internal constant ptr @__tracepoint_clk_set_duty_cycle, section "__tracepoints_ptrs", align 4
@__tpstrtab_clk_set_duty_cycle_complete = internal constant [28 x i8] c"clk_set_duty_cycle_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_clk_set_duty_cycle_complete = dso_local global %struct.static_call_key { ptr @__traceiter_clk_set_duty_cycle_complete }, align 4
@__tracepoint_clk_set_duty_cycle_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_clk_set_duty_cycle_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_clk_set_duty_cycle_complete, ptr null, ptr @__traceiter_clk_set_duty_cycle_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_clk_set_duty_cycle_complete = internal constant ptr @__tracepoint_clk_set_duty_cycle_complete, section "__tracepoints_ptrs", align 4
@trace_event_fields_clk = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk, ptr @perf_trace_clk, ptr @trace_event_reg, ptr @trace_event_fields_clk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk, i64 24), ptr getelementptr (i8, ptr @event_class_clk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk = internal global [22 x i8] c"\22%s\22, __get_str(name)\00", align 1
@event_clk_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_enable = internal global ptr @event_clk_enable, section "_ftrace_events", align 4
@event_clk_enable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_enable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_enable_complete = internal global ptr @event_clk_enable_complete, section "_ftrace_events", align 4
@event_clk_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_disable = internal global ptr @event_clk_disable, section "_ftrace_events", align 4
@event_clk_disable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_disable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_disable_complete = internal global ptr @event_clk_disable_complete, section "_ftrace_events", align 4
@event_clk_prepare = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_prepare }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_prepare = internal global ptr @event_clk_prepare, section "_ftrace_events", align 4
@event_clk_prepare_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_prepare_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_prepare_complete = internal global ptr @event_clk_prepare_complete, section "_ftrace_events", align 4
@event_clk_unprepare = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_unprepare }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_unprepare = internal global ptr @event_clk_unprepare, section "_ftrace_events", align 4
@event_clk_unprepare_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk, %union.anon.91 { ptr @__tracepoint_clk_unprepare_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk }, ptr @print_fmt_clk, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_unprepare_complete = internal global ptr @event_clk_unprepare_complete, section "_ftrace_events", align 4
@trace_event_fields_clk_rate = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk_rate = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk_rate, ptr @perf_trace_clk_rate, ptr @trace_event_reg, ptr @trace_event_fields_clk_rate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk_rate, i64 24), ptr getelementptr (i8, ptr @event_class_clk_rate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk_rate = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk_rate, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk_rate = internal global [52 x i8] c"\22%s %lu\22, __get_str(name), (unsigned long)REC->rate\00", align 1
@event_clk_set_rate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_rate, %union.anon.91 { ptr @__tracepoint_clk_set_rate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_rate }, ptr @print_fmt_clk_rate, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_rate = internal global ptr @event_clk_set_rate, section "_ftrace_events", align 4
@event_clk_set_rate_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_rate, %union.anon.91 { ptr @__tracepoint_clk_set_rate_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_rate }, ptr @print_fmt_clk_rate, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_rate_complete = internal global ptr @event_clk_set_rate_complete, section "_ftrace_events", align 4
@event_clk_set_min_rate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_rate, %union.anon.91 { ptr @__tracepoint_clk_set_min_rate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_rate }, ptr @print_fmt_clk_rate, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_min_rate = internal global ptr @event_clk_set_min_rate, section "_ftrace_events", align 4
@event_clk_set_max_rate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_rate, %union.anon.91 { ptr @__tracepoint_clk_set_max_rate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_rate }, ptr @print_fmt_clk_rate, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_max_rate = internal global ptr @event_clk_set_max_rate, section "_ftrace_events", align 4
@trace_event_fields_clk_rate_range = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk_rate_range = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk_rate_range, ptr @perf_trace_clk_rate_range, ptr @trace_event_reg, ptr @trace_event_fields_clk_rate_range, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk_rate_range, i64 24), ptr getelementptr (i8, ptr @event_class_clk_rate_range, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk_rate_range = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk_rate_range, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk_rate_range = internal global [88 x i8] c"\22%s min %lu max %lu\22, __get_str(name), (unsigned long)REC->min, (unsigned long)REC->max\00", align 1
@event_clk_set_rate_range = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_rate_range, %union.anon.91 { ptr @__tracepoint_clk_set_rate_range }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_rate_range }, ptr @print_fmt_clk_rate_range, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_rate_range = internal global ptr @event_clk_set_rate_range, section "_ftrace_events", align 4
@trace_event_fields_clk_parent = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk_parent = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk_parent, ptr @perf_trace_clk_parent, ptr @trace_event_reg, ptr @trace_event_fields_clk_parent, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk_parent, i64 24), ptr getelementptr (i8, ptr @event_class_clk_parent, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk_parent = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk_parent, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk_parent = internal global [43 x i8] c"\22%s %s\22, __get_str(name), __get_str(pname)\00", align 1
@event_clk_set_parent = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_parent, %union.anon.91 { ptr @__tracepoint_clk_set_parent }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_parent }, ptr @print_fmt_clk_parent, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_parent = internal global ptr @event_clk_set_parent, section "_ftrace_events", align 4
@event_clk_set_parent_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_parent, %union.anon.91 { ptr @__tracepoint_clk_set_parent_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_parent }, ptr @print_fmt_clk_parent, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_parent_complete = internal global ptr @event_clk_set_parent_complete, section "_ftrace_events", align 4
@trace_event_fields_clk_phase = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.30, %union.anon.89 { %struct.anon.90 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk_phase = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk_phase, ptr @perf_trace_clk_phase, ptr @trace_event_reg, ptr @trace_event_fields_clk_phase, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk_phase, i64 24), ptr getelementptr (i8, ptr @event_class_clk_phase, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk_phase = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk_phase, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk_phase = internal global [42 x i8] c"\22%s %d\22, __get_str(name), (int)REC->phase\00", align 1
@event_clk_set_phase = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_phase, %union.anon.91 { ptr @__tracepoint_clk_set_phase }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_phase }, ptr @print_fmt_clk_phase, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_phase = internal global ptr @event_clk_set_phase, section "_ftrace_events", align 4
@event_clk_set_phase_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_phase, %union.anon.91 { ptr @__tracepoint_clk_set_phase_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_phase }, ptr @print_fmt_clk_phase, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_phase_complete = internal global ptr @event_clk_set_phase_complete, section "_ftrace_events", align 4
@trace_event_fields_clk_duty_cycle = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.89 { %struct.anon.90 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.89 { %struct.anon.90 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_clk_duty_cycle = internal global %struct.trace_event_class { ptr @.str.48, ptr @trace_event_raw_event_clk_duty_cycle, ptr @perf_trace_clk_duty_cycle, ptr @trace_event_reg, ptr @trace_event_fields_clk_duty_cycle, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_clk_duty_cycle, i64 24), ptr getelementptr (i8, ptr @event_class_clk_duty_cycle, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_clk_duty_cycle = internal global %struct.trace_event_functions { ptr @trace_raw_output_clk_duty_cycle, ptr null, ptr null, ptr null }, align 4
@print_fmt_clk_duty_cycle = internal global [76 x i8] c"\22%s %u/%u\22, __get_str(name), (unsigned int)REC->num, (unsigned int)REC->den\00", align 1
@event_clk_set_duty_cycle = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_duty_cycle, %union.anon.91 { ptr @__tracepoint_clk_set_duty_cycle }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_duty_cycle }, ptr @print_fmt_clk_duty_cycle, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_duty_cycle = internal global ptr @event_clk_set_duty_cycle, section "_ftrace_events", align 4
@event_clk_set_duty_cycle_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_clk_duty_cycle, %union.anon.91 { ptr @__tracepoint_clk_set_duty_cycle_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_clk_duty_cycle }, ptr @print_fmt_clk_duty_cycle, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_clk_set_duty_cycle_complete = internal global ptr @event_clk_set_duty_cycle_complete, section "_ftrace_events", align 4
@__kstrtab___clk_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_get_name to i32), ptr @__kstrtab___clk_get_name, ptr @__kstrtabns___clk_get_name }, section "___ksymtab_gpl+__clk_get_name", align 4
@__kstrtab_clk_hw_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_name to i32), ptr @__kstrtab_clk_hw_get_name, ptr @__kstrtabns_clk_hw_get_name }, section "___ksymtab_gpl+clk_hw_get_name", align 4
@__kstrtab___clk_get_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_get_hw = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_get_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_get_hw to i32), ptr @__kstrtab___clk_get_hw, ptr @__kstrtabns___clk_get_hw }, section "___ksymtab_gpl+__clk_get_hw", align 4
@__kstrtab_clk_hw_get_num_parents = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_num_parents = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_num_parents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_num_parents to i32), ptr @__kstrtab_clk_hw_get_num_parents, ptr @__kstrtabns_clk_hw_get_num_parents }, section "___ksymtab_gpl+clk_hw_get_num_parents", align 4
@__kstrtab_clk_hw_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_parent to i32), ptr @__kstrtab_clk_hw_get_parent, ptr @__kstrtabns_clk_hw_get_parent }, section "___ksymtab_gpl+clk_hw_get_parent", align 4
@__kstrtab_clk_hw_get_parent_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_parent_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_parent_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_parent_by_index to i32), ptr @__kstrtab_clk_hw_get_parent_by_index, ptr @__kstrtabns_clk_hw_get_parent_by_index }, section "___ksymtab_gpl+clk_hw_get_parent_by_index", align 4
@__kstrtab_clk_hw_get_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_rate to i32), ptr @__kstrtab_clk_hw_get_rate, ptr @__kstrtabns_clk_hw_get_rate }, section "___ksymtab_gpl+clk_hw_get_rate", align 4
@__kstrtab_clk_hw_get_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_flags to i32), ptr @__kstrtab_clk_hw_get_flags, ptr @__kstrtabns_clk_hw_get_flags }, section "___ksymtab_gpl+clk_hw_get_flags", align 4
@__kstrtab_clk_hw_is_prepared = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_is_prepared = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_is_prepared = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_is_prepared to i32), ptr @__kstrtab_clk_hw_is_prepared, ptr @__kstrtabns_clk_hw_is_prepared }, section "___ksymtab_gpl+clk_hw_is_prepared", align 4
@__kstrtab_clk_hw_rate_is_protected = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_rate_is_protected = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_rate_is_protected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_rate_is_protected to i32), ptr @__kstrtab_clk_hw_rate_is_protected, ptr @__kstrtabns_clk_hw_rate_is_protected }, section "___ksymtab_gpl+clk_hw_rate_is_protected", align 4
@__kstrtab_clk_hw_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_is_enabled to i32), ptr @__kstrtab_clk_hw_is_enabled, ptr @__kstrtabns_clk_hw_is_enabled }, section "___ksymtab_gpl+clk_hw_is_enabled", align 4
@__kstrtab___clk_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_is_enabled to i32), ptr @__kstrtab___clk_is_enabled, ptr @__kstrtabns___clk_is_enabled }, section "___ksymtab_gpl+__clk_is_enabled", align 4
@__kstrtab_clk_mux_determine_rate_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_mux_determine_rate_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_mux_determine_rate_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_mux_determine_rate_flags to i32), ptr @__kstrtab_clk_mux_determine_rate_flags, ptr @__kstrtabns_clk_mux_determine_rate_flags }, section "___ksymtab_gpl+clk_mux_determine_rate_flags", align 4
@__kstrtab_clk_hw_set_rate_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_set_rate_range = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_set_rate_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_set_rate_range to i32), ptr @__kstrtab_clk_hw_set_rate_range, ptr @__kstrtabns_clk_hw_set_rate_range }, section "___ksymtab_gpl+clk_hw_set_rate_range", align 4
@__kstrtab___clk_mux_determine_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_mux_determine_rate = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_mux_determine_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_mux_determine_rate to i32), ptr @__kstrtab___clk_mux_determine_rate, ptr @__kstrtabns___clk_mux_determine_rate }, section "___ksymtab_gpl+__clk_mux_determine_rate", align 4
@__kstrtab___clk_mux_determine_rate_closest = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_mux_determine_rate_closest = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_mux_determine_rate_closest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_mux_determine_rate_closest to i32), ptr @__kstrtab___clk_mux_determine_rate_closest, ptr @__kstrtabns___clk_mux_determine_rate_closest }, section "___ksymtab_gpl+__clk_mux_determine_rate_closest", align 4
@.str = private unnamed_addr constant [18 x i8] c"drivers/clk/clk.c\00", align 1
@__kstrtab_clk_rate_exclusive_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rate_exclusive_put = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rate_exclusive_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rate_exclusive_put to i32), ptr @__kstrtab_clk_rate_exclusive_put, ptr @__kstrtabns_clk_rate_exclusive_put }, section "___ksymtab_gpl+clk_rate_exclusive_put", align 4
@__kstrtab_clk_rate_exclusive_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_rate_exclusive_get = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_rate_exclusive_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_rate_exclusive_get to i32), ptr @__kstrtab_clk_rate_exclusive_get, ptr @__kstrtabns_clk_rate_exclusive_get }, section "___ksymtab_gpl+clk_rate_exclusive_get", align 4
@__kstrtab_clk_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unprepare to i32), ptr @__kstrtab_clk_unprepare, ptr @__kstrtabns_clk_unprepare }, section "___ksymtab_gpl+clk_unprepare", align 4
@__kstrtab_clk_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_prepare to i32), ptr @__kstrtab_clk_prepare, ptr @__kstrtabns_clk_prepare }, section "___ksymtab_gpl+clk_prepare", align 4
@__kstrtab_clk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_disable to i32), ptr @__kstrtab_clk_disable, ptr @__kstrtabns_clk_disable }, section "___ksymtab_gpl+clk_disable", align 4
@__kstrtab_clk_gate_restore_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_gate_restore_context = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_gate_restore_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_gate_restore_context to i32), ptr @__kstrtab_clk_gate_restore_context, ptr @__kstrtabns_clk_gate_restore_context }, section "___ksymtab_gpl+clk_gate_restore_context", align 4
@clk_root_list = internal global %struct.hlist_head zeroinitializer, align 4
@clk_orphan_list = internal global %struct.hlist_head zeroinitializer, align 4
@__kstrtab_clk_save_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_save_context = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_save_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_save_context to i32), ptr @__kstrtab_clk_save_context, ptr @__kstrtabns_clk_save_context }, section "___ksymtab_gpl+clk_save_context", align 4
@__kstrtab_clk_restore_context = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_restore_context = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_restore_context = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_restore_context to i32), ptr @__kstrtab_clk_restore_context, ptr @__kstrtabns_clk_restore_context }, section "___ksymtab_gpl+clk_restore_context", align 4
@__kstrtab_clk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_enable to i32), ptr @__kstrtab_clk_enable, ptr @__kstrtabns_clk_enable }, section "___ksymtab_gpl+clk_enable", align 4
@__kstrtab_clk_is_enabled_when_prepared = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_is_enabled_when_prepared = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_is_enabled_when_prepared = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_is_enabled_when_prepared to i32), ptr @__kstrtab_clk_is_enabled_when_prepared, ptr @__kstrtabns_clk_is_enabled_when_prepared }, section "___ksymtab_gpl+clk_is_enabled_when_prepared", align 4
@__setup_str_clk_ignore_unused_setup = internal constant [18 x i8] c"clk_ignore_unused\00", section ".init.rodata", align 1
@__setup_clk_ignore_unused_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_clk_ignore_unused_setup, ptr @clk_ignore_unused_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_clk__339_1321_clk_disable_unused7s = internal global ptr @clk_disable_unused, section ".initcall7s.init", align 4
@__kstrtab___clk_determine_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns___clk_determine_rate = external dso_local constant [0 x i8], align 1
@__ksymtab___clk_determine_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__clk_determine_rate to i32), ptr @__kstrtab___clk_determine_rate, ptr @__kstrtabns___clk_determine_rate }, section "___ksymtab_gpl+__clk_determine_rate", align 4
@__kstrtab_clk_hw_round_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_round_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_round_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_round_rate to i32), ptr @__kstrtab_clk_hw_round_rate, ptr @__kstrtabns_clk_hw_round_rate }, section "___ksymtab_gpl+clk_hw_round_rate", align 4
@__kstrtab_clk_round_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_round_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_round_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_round_rate to i32), ptr @__kstrtab_clk_round_rate, ptr @__kstrtabns_clk_round_rate }, section "___ksymtab_gpl+clk_round_rate", align 4
@__kstrtab_clk_get_accuracy = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_accuracy = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_accuracy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_accuracy to i32), ptr @__kstrtab_clk_get_accuracy, ptr @__kstrtabns_clk_get_accuracy }, section "___ksymtab_gpl+clk_get_accuracy", align 4
@__kstrtab_clk_get_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_rate to i32), ptr @__kstrtab_clk_get_rate, ptr @__kstrtabns_clk_get_rate }, section "___ksymtab_gpl+clk_get_rate", align 4
@__kstrtab_clk_hw_get_parent_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_parent_index = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_parent_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_parent_index to i32), ptr @__kstrtab_clk_hw_get_parent_index, ptr @__kstrtabns_clk_hw_get_parent_index }, section "___ksymtab_gpl+clk_hw_get_parent_index", align 4
@__kstrtab_clk_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_rate to i32), ptr @__kstrtab_clk_set_rate, ptr @__kstrtabns_clk_set_rate }, section "___ksymtab_gpl+clk_set_rate", align 4
@__kstrtab_clk_set_rate_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_rate_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_rate_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_rate_exclusive to i32), ptr @__kstrtab_clk_set_rate_exclusive, ptr @__kstrtabns_clk_set_rate_exclusive }, section "___ksymtab_gpl+clk_set_rate_exclusive", align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\013%s: clk %s dev %s con %s: invalid range [%lu, %lu]\0A\00", align 1
@__func__.clk_set_rate_range = private unnamed_addr constant [19 x i8] c"clk_set_rate_range\00", align 1
@__kstrtab_clk_set_rate_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_rate_range = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_rate_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_rate_range to i32), ptr @__kstrtab_clk_set_rate_range, ptr @__kstrtabns_clk_set_rate_range }, section "___ksymtab_gpl+clk_set_rate_range", align 4
@__kstrtab_clk_set_min_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_min_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_min_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_min_rate to i32), ptr @__kstrtab_clk_set_min_rate, ptr @__kstrtabns_clk_set_min_rate }, section "___ksymtab_gpl+clk_set_min_rate", align 4
@__kstrtab_clk_set_max_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_max_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_max_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_max_rate to i32), ptr @__kstrtab_clk_set_max_rate, ptr @__kstrtabns_clk_set_max_rate }, section "___ksymtab_gpl+clk_set_max_rate", align 4
@__kstrtab_clk_get_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_parent to i32), ptr @__kstrtab_clk_get_parent, ptr @__kstrtabns_clk_get_parent }, section "___ksymtab_gpl+clk_get_parent", align 4
@__kstrtab_clk_has_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_has_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_has_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_has_parent to i32), ptr @__kstrtab_clk_has_parent, ptr @__kstrtabns_clk_has_parent }, section "___ksymtab_gpl+clk_has_parent", align 4
@__kstrtab_clk_hw_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_set_parent to i32), ptr @__kstrtab_clk_hw_set_parent, ptr @__kstrtabns_clk_hw_set_parent }, section "___ksymtab_gpl+clk_hw_set_parent", align 4
@__kstrtab_clk_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_parent to i32), ptr @__kstrtab_clk_set_parent, ptr @__kstrtabns_clk_set_parent }, section "___ksymtab_gpl+clk_set_parent", align 4
@__kstrtab_clk_set_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_phase to i32), ptr @__kstrtab_clk_set_phase, ptr @__kstrtabns_clk_set_phase }, section "___ksymtab_gpl+clk_set_phase", align 4
@__kstrtab_clk_get_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_phase to i32), ptr @__kstrtab_clk_get_phase, ptr @__kstrtabns_clk_get_phase }, section "___ksymtab_gpl+clk_get_phase", align 4
@__kstrtab_clk_set_duty_cycle = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_set_duty_cycle = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_set_duty_cycle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_set_duty_cycle to i32), ptr @__kstrtab_clk_set_duty_cycle, ptr @__kstrtabns_clk_set_duty_cycle }, section "___ksymtab_gpl+clk_set_duty_cycle", align 4
@__kstrtab_clk_get_scaled_duty_cycle = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_get_scaled_duty_cycle = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_get_scaled_duty_cycle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_get_scaled_duty_cycle to i32), ptr @__kstrtab_clk_get_scaled_duty_cycle, ptr @__kstrtabns_clk_get_scaled_duty_cycle }, section "___ksymtab_gpl+clk_get_scaled_duty_cycle", align 4
@__kstrtab_clk_is_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_is_match = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_is_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_is_match to i32), ptr @__kstrtab_clk_is_match, ptr @__kstrtabns_clk_is_match }, section "___ksymtab_gpl+clk_is_match", align 4
@__initcall__kmod_clk__340_3427_clk_debug_init7 = internal global ptr @clk_debug_init, section ".initcall7.init", align 4
@__kstrtab_clk_hw_get_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_get_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_get_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_get_clk to i32), ptr @__kstrtab_clk_hw_get_clk, ptr @__kstrtabns_clk_hw_get_clk }, section "___ksymtab+clk_hw_get_clk", align 4
@__kstrtab_clk_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register to i32), ptr @__kstrtab_clk_register, ptr @__kstrtabns_clk_register }, section "___ksymtab_gpl+clk_register", align 4
@__kstrtab_clk_hw_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register to i32), ptr @__kstrtab_clk_hw_register, ptr @__kstrtabns_clk_hw_register }, section "___ksymtab_gpl+clk_hw_register", align 4
@__kstrtab_of_clk_hw_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_hw_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_hw_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_hw_register to i32), ptr @__kstrtab_of_clk_hw_register, ptr @__kstrtabns_of_clk_hw_register }, section "___ksymtab_gpl+of_clk_hw_register", align 4
@clk_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_nodrv_ops = internal constant %struct.clk_ops { ptr @clk_nodrv_prepare_enable, ptr @clk_nodrv_disable_unprepare, ptr null, ptr null, ptr @clk_nodrv_prepare_enable, ptr @clk_nodrv_disable_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_nodrv_set_parent, ptr null, ptr @clk_nodrv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: unregistered clock: %s\0A\00", align 1
@__func__.clk_unregister = private unnamed_addr constant [15 x i8] c"clk_unregister\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\014%s: unregistering prepared clock: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\014%s: unregistering protected clock: %s\0A\00", align 1
@__kstrtab_clk_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister to i32), ptr @__kstrtab_clk_unregister, ptr @__kstrtabns_clk_unregister }, section "___ksymtab_gpl+clk_unregister", align 4
@__kstrtab_clk_hw_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister to i32), ptr @__kstrtab_clk_hw_unregister, ptr @__kstrtabns_clk_hw_unregister }, section "___ksymtab_gpl+clk_hw_unregister", align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"devm_clk_unregister_cb\00", align 1
@__kstrtab_devm_clk_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_register to i32), ptr @__kstrtab_devm_clk_register, ptr @__kstrtabns_devm_clk_register }, section "___ksymtab_gpl+devm_clk_register", align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"devm_clk_hw_unregister_cb\00", align 1
@__kstrtab_devm_clk_hw_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_register to i32), ptr @__kstrtab_devm_clk_hw_register, ptr @__kstrtabns_devm_clk_hw_register }, section "___ksymtab_gpl+devm_clk_hw_register", align 4
@__kstrtab_devm_clk_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_unregister to i32), ptr @__kstrtab_devm_clk_unregister, ptr @__kstrtabns_devm_clk_unregister }, section "___ksymtab_gpl+devm_clk_unregister", align 4
@__kstrtab_devm_clk_hw_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_unregister to i32), ptr @__kstrtab_devm_clk_hw_unregister, ptr @__kstrtabns_devm_clk_hw_unregister }, section "___ksymtab_gpl+devm_clk_hw_unregister", align 4
@devm_clk_hw_get_clk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"devm_clk_release\00", align 1
@__kstrtab_devm_clk_hw_get_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_get_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_get_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_get_clk to i32), ptr @__kstrtab_devm_clk_hw_get_clk, ptr @__kstrtabns_devm_clk_hw_get_clk }, section "___ksymtab_gpl+devm_clk_hw_get_clk", align 4
@__clk_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_notifier_list = internal global %struct.list_head { ptr @clk_notifier_list, ptr @clk_notifier_list }, align 4
@__kstrtab_clk_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_notifier_register to i32), ptr @__kstrtab_clk_notifier_register, ptr @__kstrtabns_clk_notifier_register }, section "___ksymtab_gpl+clk_notifier_register", align 4
@__kstrtab_clk_notifier_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_notifier_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_notifier_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_notifier_unregister to i32), ptr @__kstrtab_clk_notifier_unregister, ptr @__kstrtabns_clk_notifier_unregister }, section "___ksymtab_gpl+clk_notifier_unregister", align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"devm_clk_notifier_release\00", align 1
@__kstrtab_devm_clk_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_notifier_register to i32), ptr @__kstrtab_devm_clk_notifier_register, ptr @__kstrtabns_devm_clk_notifier_register }, section "___ksymtab_gpl+devm_clk_notifier_register", align 4
@__kstrtab_of_clk_src_simple_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_src_simple_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_src_simple_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_src_simple_get to i32), ptr @__kstrtab_of_clk_src_simple_get, ptr @__kstrtabns_of_clk_src_simple_get }, section "___ksymtab_gpl+of_clk_src_simple_get", align 4
@__kstrtab_of_clk_hw_simple_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_hw_simple_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_hw_simple_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_hw_simple_get to i32), ptr @__kstrtab_of_clk_hw_simple_get, ptr @__kstrtabns_of_clk_hw_simple_get }, section "___ksymtab_gpl+of_clk_hw_simple_get", align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"\013%s: invalid clock index %u\0A\00", align 1
@__func__.of_clk_src_onecell_get = private unnamed_addr constant [23 x i8] c"of_clk_src_onecell_get\00", align 1
@__kstrtab_of_clk_src_onecell_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_src_onecell_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_src_onecell_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_src_onecell_get to i32), ptr @__kstrtab_of_clk_src_onecell_get, ptr @__kstrtabns_of_clk_src_onecell_get }, section "___ksymtab_gpl+of_clk_src_onecell_get", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.of_clk_hw_onecell_get = private unnamed_addr constant [22 x i8] c"of_clk_hw_onecell_get\00", align 1
@__kstrtab_of_clk_hw_onecell_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_hw_onecell_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_hw_onecell_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_hw_onecell_get to i32), ptr @__kstrtab_of_clk_hw_onecell_get, ptr @__kstrtabns_of_clk_hw_onecell_get }, section "___ksymtab_gpl+of_clk_hw_onecell_get", align 4
@of_clk_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_clk_mutex, i64 12), ptr getelementptr (i8, ptr @of_clk_mutex, i64 12) } }, align 4
@of_clk_providers = internal global %struct.list_head { ptr @of_clk_providers, ptr @of_clk_providers }, align 4
@__kstrtab_of_clk_add_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_add_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_add_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_add_provider to i32), ptr @__kstrtab_of_clk_add_provider, ptr @__kstrtabns_of_clk_add_provider }, section "___ksymtab_gpl+of_clk_add_provider", align 4
@__kstrtab_of_clk_add_hw_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_add_hw_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_add_hw_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_add_hw_provider to i32), ptr @__kstrtab_of_clk_add_hw_provider, ptr @__kstrtabns_of_clk_add_hw_provider }, section "___ksymtab_gpl+of_clk_add_hw_provider", align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"devm_of_clk_release_provider\00", align 1
@__kstrtab_devm_of_clk_add_hw_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_clk_add_hw_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_clk_add_hw_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_clk_add_hw_provider to i32), ptr @__kstrtab_devm_of_clk_add_hw_provider, ptr @__kstrtabns_devm_of_clk_add_hw_provider }, section "___ksymtab_gpl+devm_of_clk_add_hw_provider", align 4
@__kstrtab_of_clk_del_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_del_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_del_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_del_provider to i32), ptr @__kstrtab_of_clk_del_provider, ptr @__kstrtabns_of_clk_del_provider }, section "___ksymtab_gpl+of_clk_del_provider", align 4
@__kstrtab_devm_of_clk_del_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_clk_del_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_clk_del_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_clk_del_provider to i32), ptr @__kstrtab_devm_of_clk_del_provider, ptr @__kstrtabns_devm_of_clk_del_provider }, section "___ksymtab+devm_of_clk_del_provider", align 4
@__func__.of_clk_get_from_provider = private unnamed_addr constant [25 x i8] c"of_clk_get_from_provider\00", align 1
@__kstrtab_of_clk_get_from_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_get_from_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_get_from_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_get_from_provider to i32), ptr @__kstrtab_of_clk_get_from_provider, ptr @__kstrtabns_of_clk_get_from_provider }, section "___ksymtab_gpl+of_clk_get_from_provider", align 4
@__kstrtab_of_clk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_get to i32), ptr @__kstrtab_of_clk_get, ptr @__kstrtabns_of_clk_get }, section "___ksymtab+of_clk_get", align 4
@__kstrtab_of_clk_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_get_by_name to i32), ptr @__kstrtab_of_clk_get_by_name, ptr @__kstrtabns_of_clk_get_by_name }, section "___ksymtab+of_clk_get_by_name", align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@__kstrtab_of_clk_get_parent_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_get_parent_count = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_get_parent_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_get_parent_count to i32), ptr @__kstrtab_of_clk_get_parent_count, ptr @__kstrtabns_of_clk_get_parent_count }, section "___ksymtab_gpl+of_clk_get_parent_count", align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"clock-indices\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@__kstrtab_of_clk_get_parent_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_get_parent_name = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_get_parent_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_get_parent_name to i32), ptr @__kstrtab_of_clk_get_parent_name, ptr @__kstrtabns_of_clk_get_parent_name }, section "___ksymtab_gpl+of_clk_get_parent_name", align 4
@__kstrtab_of_clk_parent_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_parent_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_parent_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_parent_fill to i32), ptr @__kstrtab_of_clk_parent_fill, ptr @__kstrtabns_of_clk_parent_fill }, section "___ksymtab_gpl+of_clk_parent_fill", align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"clock-critical\00", align 1
@__clk_of_table = external dso_local global %struct.of_device_id, align 4
@__clk_of_table_sentinel = internal constant %struct.of_device_id zeroinitializer, section "__clk_of_table_end", align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s %lu\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"%s min %lu max %lu\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"pname\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"phase\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"den\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%s %u/%u\0A\00", align 1
@prepare_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @prepare_lock, i64 12), ptr getelementptr (i8, ptr @prepare_lock, i64 12) } }, align 4
@prepare_owner = internal unnamed_addr global ptr null, align 4
@prepare_refcnt = internal unnamed_addr global i32 0, align 4
@clk_prepare_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_prepare_lock.__already_done.37 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s already unprotected\0A\00", align 1
@clk_prepare_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_prepare_unlock.__already_done.39 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"%s already unprepared\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Unpreparing critical %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Unpreparing enabled %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"include/trace/events/clk.h\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@enable_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [21 x i8] c"%s already disabled\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Disabling critical %s\0A\00", align 1
@trace_clk_disable_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@trace_clk_disable_complete_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"Enabling unprepared %s\0A\00", align 1
@trace_clk_enable_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_clk_enable_complete_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_ignore_unused = internal unnamed_addr global i1 false, section ".init.data", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"\014clk: Not disabling unused clocks\0A\00", align 1
@.str.48 = private constant [4 x i8] c"clk\00", align 1
@rootdir = internal unnamed_addr global ptr null, align 4
@.str.49 = private unnamed_addr constant [12 x i8] c"clk_summary\00", align 1
@all_lists = internal global [3 x ptr] [ptr @clk_root_list, ptr @clk_orphan_list, ptr null], align 4
@clk_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"clk_dump\00", align 1
@clk_dump_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_dump_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.51 = private unnamed_addr constant [19 x i8] c"clk_orphan_summary\00", align 1
@orphan_list = internal global [2 x ptr] [ptr @clk_orphan_list, ptr null], align 4
@.str.52 = private unnamed_addr constant [16 x i8] c"clk_orphan_dump\00", align 1
@clk_debug_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @clk_debug_lock, i64 12), ptr getelementptr (i8, ptr @clk_debug_lock, i64 12) } }, align 4
@clk_debug_list = internal global %struct.hlist_head zeroinitializer, align 4
@inited = internal unnamed_addr global i1 false, align 4
@.str.53 = private unnamed_addr constant [105 x i8] c"                                 enable  prepare  protect                                duty  hardware\0A\00", align 1
@.str.54 = private unnamed_addr constant [105 x i8] c"   clock                          count    count    count        rate   accuracy phase  cycle    enable\0A\00", align 1
@.str.55 = private unnamed_addr constant [105 x i8] c"-------------------------------------------------------------------------------------------------------\0A\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"%*s%-*s %7d %8d %8d %11lu %10lu \00", align 1
@.str.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c" %6d\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c" %9c\0A\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"\22%s\22: { \00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"\22enable_count\22: %d,\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"\22prepare_count\22: %d,\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"\22protect_count\22: %d,\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"\22rate\22: %lu,\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"\22min_rate\22: %lu,\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"\22max_rate\22: %lu,\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"\22accuracy\22: %lu,\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"\22phase\22: %d,\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"\22duty_cycle\22: %u\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"clk_rate\00", align 1
@clk_rate_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.74 = private unnamed_addr constant [13 x i8] c"clk_min_rate\00", align 1
@clk_min_rate_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_min_rate_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.75 = private unnamed_addr constant [13 x i8] c"clk_max_rate\00", align 1
@clk_max_rate_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_max_rate_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.76 = private unnamed_addr constant [13 x i8] c"clk_accuracy\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"clk_phase\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"clk_flags\00", align 1
@clk_flags_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_flags_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.79 = private unnamed_addr constant [18 x i8] c"clk_prepare_count\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"clk_enable_count\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"clk_protect_count\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"clk_notifier_count\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"clk_duty_cycle\00", align 1
@clk_duty_cycle_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clk_duty_cycle_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.84 = private unnamed_addr constant [11 x i8] c"clk_parent\00", align 1
@current_parent_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @current_parent_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.85 = private unnamed_addr constant [21 x i8] c"clk_possible_parents\00", align 1
@possible_parents_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @possible_parents_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.86 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@clk_flags = internal unnamed_addr constant [12 x %struct.anon.93] [%struct.anon.93 { i32 1, ptr @.str.89 }, %struct.anon.93 { i32 2, ptr @.str.90 }, %struct.anon.93 { i32 4, ptr @.str.91 }, %struct.anon.93 { i32 8, ptr @.str.92 }, %struct.anon.93 { i32 64, ptr @.str.93 }, %struct.anon.93 { i32 128, ptr @.str.94 }, %struct.anon.93 { i32 256, ptr @.str.95 }, %struct.anon.93 { i32 512, ptr @.str.96 }, %struct.anon.93 { i32 1024, ptr @.str.97 }, %struct.anon.93 { i32 2048, ptr @.str.98 }, %struct.anon.93 { i32 4096, ptr @.str.99 }, %struct.anon.93 { i32 8192, ptr @.str.100 }], align 4
@.str.88 = private unnamed_addr constant [7 x i8] c"0x%lx\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"CLK_SET_RATE_GATE\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"CLK_SET_PARENT_GATE\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"CLK_SET_RATE_PARENT\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"CLK_IGNORE_UNUSED\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"CLK_GET_RATE_NOCACHE\00", align 1
@.str.94 = private unnamed_addr constant [25 x i8] c"CLK_SET_RATE_NO_REPARENT\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"CLK_GET_ACCURACY_NOCACHE\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"CLK_RECALC_NEW_RATES\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"CLK_SET_RATE_UNGATE\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"CLK_IS_CRITICAL\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"CLK_OPS_PARENT_ENABLE\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"CLK_DUTY_CYCLE_PARENT\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"%u/%u\0A\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"<%s>(fw)\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"(missing)\00", align 1
@.str.104 = private unnamed_addr constant [40 x i8] c"%s: invalid NULL in %s's .parent_names\0A\00", align 1
@__func__.clk_core_populate_parent_map = private unnamed_addr constant [29 x i8] c"clk_core_populate_parent_map\00", align 1
@.str.105 = private unnamed_addr constant [41 x i8] c"Must specify parents if num_parents > 0\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.106 = private unnamed_addr constant [84 x i8] c"\013%s: %s must implement .round_rate or .determine_rate in addition to .recalc_rate\0A\00", align 1
@__func__.__clk_core_init = private unnamed_addr constant [16 x i8] c"__clk_core_init\00", align 1
@.str.107 = private unnamed_addr constant [51 x i8] c"\013%s: %s must implement .get_parent & .set_parent\0A\00", align 1
@.str.108 = private unnamed_addr constant [61 x i8] c"\013%s: %s must implement .get_parent as it has multi parents\0A\00", align 1
@.str.109 = private unnamed_addr constant [49 x i8] c"\013%s: %s must implement .set_parent & .set_rate\0A\00", align 1
@.str.110 = private unnamed_addr constant [40 x i8] c"\014%s: Failed to get phase for clk '%s'\0A\00", align 1
@.str.111 = private unnamed_addr constant [43 x i8] c"\014%s: critical clk '%s' failed to prepare\0A\00", align 1
@.str.112 = private unnamed_addr constant [42 x i8] c"\014%s: critical clk '%s' failed to enable\0A\00", align 1
@clk_nodrv_disable_unprepare.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@enable_owner = internal unnamed_addr global ptr null, align 4
@enable_refcnt = internal unnamed_addr global i32 0, align 4
@clk_enable_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_enable_lock.__already_done.113 = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_enable_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clk_enable_unlock.__already_done.114 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"clock-ranges\00", align 1
@llvm.compiler.used = appending global [161 x ptr] [ptr @__clk_of_table_sentinel, ptr @__event_clk_disable, ptr @__event_clk_disable_complete, ptr @__event_clk_enable, ptr @__event_clk_enable_complete, ptr @__event_clk_prepare, ptr @__event_clk_prepare_complete, ptr @__event_clk_set_duty_cycle, ptr @__event_clk_set_duty_cycle_complete, ptr @__event_clk_set_max_rate, ptr @__event_clk_set_min_rate, ptr @__event_clk_set_parent, ptr @__event_clk_set_parent_complete, ptr @__event_clk_set_phase, ptr @__event_clk_set_phase_complete, ptr @__event_clk_set_rate, ptr @__event_clk_set_rate_complete, ptr @__event_clk_set_rate_range, ptr @__event_clk_unprepare, ptr @__event_clk_unprepare_complete, ptr @__initcall__kmod_clk__339_1321_clk_disable_unused7s, ptr @__initcall__kmod_clk__340_3427_clk_debug_init7, ptr @__ksymtab___clk_determine_rate, ptr @__ksymtab___clk_get_hw, ptr @__ksymtab___clk_get_name, ptr @__ksymtab___clk_is_enabled, ptr @__ksymtab___clk_mux_determine_rate, ptr @__ksymtab___clk_mux_determine_rate_closest, ptr @__ksymtab_clk_disable, ptr @__ksymtab_clk_enable, ptr @__ksymtab_clk_gate_restore_context, ptr @__ksymtab_clk_get_accuracy, ptr @__ksymtab_clk_get_parent, ptr @__ksymtab_clk_get_phase, ptr @__ksymtab_clk_get_rate, ptr @__ksymtab_clk_get_scaled_duty_cycle, ptr @__ksymtab_clk_has_parent, ptr @__ksymtab_clk_hw_get_clk, ptr @__ksymtab_clk_hw_get_flags, ptr @__ksymtab_clk_hw_get_name, ptr @__ksymtab_clk_hw_get_num_parents, ptr @__ksymtab_clk_hw_get_parent, ptr @__ksymtab_clk_hw_get_parent_by_index, ptr @__ksymtab_clk_hw_get_parent_index, ptr @__ksymtab_clk_hw_get_rate, ptr @__ksymtab_clk_hw_is_enabled, ptr @__ksymtab_clk_hw_is_prepared, ptr @__ksymtab_clk_hw_rate_is_protected, ptr @__ksymtab_clk_hw_register, ptr @__ksymtab_clk_hw_round_rate, ptr @__ksymtab_clk_hw_set_parent, ptr @__ksymtab_clk_hw_set_rate_range, ptr @__ksymtab_clk_hw_unregister, ptr @__ksymtab_clk_is_enabled_when_prepared, ptr @__ksymtab_clk_is_match, ptr @__ksymtab_clk_mux_determine_rate_flags, ptr @__ksymtab_clk_notifier_register, ptr @__ksymtab_clk_notifier_unregister, ptr @__ksymtab_clk_prepare, ptr @__ksymtab_clk_rate_exclusive_get, ptr @__ksymtab_clk_rate_exclusive_put, ptr @__ksymtab_clk_register, ptr @__ksymtab_clk_restore_context, ptr @__ksymtab_clk_round_rate, ptr @__ksymtab_clk_save_context, ptr @__ksymtab_clk_set_duty_cycle, ptr @__ksymtab_clk_set_max_rate, ptr @__ksymtab_clk_set_min_rate, ptr @__ksymtab_clk_set_parent, ptr @__ksymtab_clk_set_phase, ptr @__ksymtab_clk_set_rate, ptr @__ksymtab_clk_set_rate_exclusive, ptr @__ksymtab_clk_set_rate_range, ptr @__ksymtab_clk_unprepare, ptr @__ksymtab_clk_unregister, ptr @__ksymtab_devm_clk_hw_get_clk, ptr @__ksymtab_devm_clk_hw_register, ptr @__ksymtab_devm_clk_hw_unregister, ptr @__ksymtab_devm_clk_notifier_register, ptr @__ksymtab_devm_clk_register, ptr @__ksymtab_devm_clk_unregister, ptr @__ksymtab_devm_of_clk_add_hw_provider, ptr @__ksymtab_devm_of_clk_del_provider, ptr @__ksymtab_of_clk_add_hw_provider, ptr @__ksymtab_of_clk_add_provider, ptr @__ksymtab_of_clk_del_provider, ptr @__ksymtab_of_clk_get, ptr @__ksymtab_of_clk_get_by_name, ptr @__ksymtab_of_clk_get_from_provider, ptr @__ksymtab_of_clk_get_parent_count, ptr @__ksymtab_of_clk_get_parent_name, ptr @__ksymtab_of_clk_hw_onecell_get, ptr @__ksymtab_of_clk_hw_register, ptr @__ksymtab_of_clk_hw_simple_get, ptr @__ksymtab_of_clk_parent_fill, ptr @__ksymtab_of_clk_src_onecell_get, ptr @__ksymtab_of_clk_src_simple_get, ptr @__setup_clk_ignore_unused_setup, ptr @__tracepoint_clk_disable, ptr @__tracepoint_clk_disable_complete, ptr @__tracepoint_clk_enable, ptr @__tracepoint_clk_enable_complete, ptr @__tracepoint_clk_prepare, ptr @__tracepoint_clk_prepare_complete, ptr @__tracepoint_clk_set_duty_cycle, ptr @__tracepoint_clk_set_duty_cycle_complete, ptr @__tracepoint_clk_set_max_rate, ptr @__tracepoint_clk_set_min_rate, ptr @__tracepoint_clk_set_parent, ptr @__tracepoint_clk_set_parent_complete, ptr @__tracepoint_clk_set_phase, ptr @__tracepoint_clk_set_phase_complete, ptr @__tracepoint_clk_set_rate, ptr @__tracepoint_clk_set_rate_complete, ptr @__tracepoint_clk_set_rate_range, ptr @__tracepoint_clk_unprepare, ptr @__tracepoint_clk_unprepare_complete, ptr @__tracepoint_ptr_clk_disable, ptr @__tracepoint_ptr_clk_disable_complete, ptr @__tracepoint_ptr_clk_enable, ptr @__tracepoint_ptr_clk_enable_complete, ptr @__tracepoint_ptr_clk_prepare, ptr @__tracepoint_ptr_clk_prepare_complete, ptr @__tracepoint_ptr_clk_set_duty_cycle, ptr @__tracepoint_ptr_clk_set_duty_cycle_complete, ptr @__tracepoint_ptr_clk_set_max_rate, ptr @__tracepoint_ptr_clk_set_min_rate, ptr @__tracepoint_ptr_clk_set_parent, ptr @__tracepoint_ptr_clk_set_parent_complete, ptr @__tracepoint_ptr_clk_set_phase, ptr @__tracepoint_ptr_clk_set_phase_complete, ptr @__tracepoint_ptr_clk_set_rate, ptr @__tracepoint_ptr_clk_set_rate_complete, ptr @__tracepoint_ptr_clk_set_rate_range, ptr @__tracepoint_ptr_clk_unprepare, ptr @__tracepoint_ptr_clk_unprepare_complete, ptr @event_class_clk, ptr @event_class_clk_duty_cycle, ptr @event_class_clk_parent, ptr @event_class_clk_phase, ptr @event_class_clk_rate, ptr @event_class_clk_rate_range, ptr @event_clk_disable, ptr @event_clk_disable_complete, ptr @event_clk_enable, ptr @event_clk_enable_complete, ptr @event_clk_prepare, ptr @event_clk_prepare_complete, ptr @event_clk_set_duty_cycle, ptr @event_clk_set_duty_cycle_complete, ptr @event_clk_set_max_rate, ptr @event_clk_set_min_rate, ptr @event_clk_set_parent, ptr @event_clk_set_parent_complete, ptr @event_clk_set_phase, ptr @event_clk_set_phase_complete, ptr @event_clk_set_rate, ptr @event_clk_set_rate_complete, ptr @event_clk_set_rate_range, ptr @event_clk_unprepare, ptr @event_clk_unprepare_complete], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_enable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_enable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_disable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_disable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_prepare(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_prepare_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_unprepare(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_unprepare_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_rate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_rate_complete(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_min_rate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_min_rate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_max_rate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_max_rate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_rate_range(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_range, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #22
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_parent(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_parent_complete(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_phase(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_phase_complete(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_duty_cycle(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_clk_set_duty_cycle_complete(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %12, label %30, label %13

13:                                               ; preds = %11, %8, %2
  %14 = load ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str.17, ptr %14
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #22
  %18 = add i32 %17, 13
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %18) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %13
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65548
  %24 = getelementptr inbounds %struct.trace_event_raw_clk, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %19, i32 12
  %26 = load ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.17, ptr %26
  %29 = call ptr @strcpy(ptr noundef %25, ptr noundef nonnull %28)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #22
  br label %30

30:                                               ; preds = %21, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.17, ptr %5
  %8 = tail call i32 @strlen(ptr noundef nonnull %7) #22
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65548
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #16, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %22, %2
  %26 = add i32 %8, 24
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #22
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #22
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_clk, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 4
  %43 = getelementptr i8, ptr %29, i32 12
  %44 = load ptr, ptr %1, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr @.str.17, ptr %44
  %47 = call ptr @strcpy(ptr noundef %43, ptr noundef nonnull %46)
  %48 = load i32, ptr %4, align 4
  %49 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %18, ptr noundef null) #22
  br label %50

50:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.17, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #22
  %19 = add i32 %18, 17
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %19) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %14
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65552
  %25 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 16
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.17, ptr %27
  %30 = call ptr @strcpy(ptr noundef %26, ptr noundef nonnull %29)
  %31 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %20, i32 0, i32 2
  store i32 %2, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %32

32:                                               ; preds = %22, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.17, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #22
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65552
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #16, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %3
  %27 = add i32 %9, 28
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #22
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #22
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 16
  %45 = load ptr, ptr %1, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.17, ptr %45
  %48 = call ptr @strcpy(ptr noundef %44, ptr noundef nonnull %47)
  %49 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %30, i32 0, i32 2
  store i32 %2, ptr %49, align 4
  %50 = load i32, ptr %5, align 4
  %51 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %19, ptr noundef null) #22
  br label %52

52:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk_rate_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %14, label %34, label %15

15:                                               ; preds = %13, %10, %4
  %16 = load ptr, ptr %1, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.17, ptr %16
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #22
  %20 = add i32 %19, 21
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65556
  %26 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %21, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr i8, ptr %21, i32 20
  %28 = load ptr, ptr %1, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.17, ptr %28
  %31 = call ptr @strcpy(ptr noundef %27, ptr noundef nonnull %30)
  %32 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %21, i32 0, i32 2
  store i32 %2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %21, i32 0, i32 3
  store i32 %3, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #22
  br label %34

34:                                               ; preds = %23, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk_rate_range(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.17, ptr %7
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #22
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65556
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #16, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 32
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #22
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #22
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %31, i32 0, i32 1
  store i32 %12, ptr %44, align 4
  %45 = getelementptr i8, ptr %31, i32 20
  %46 = load ptr, ptr %1, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str.17, ptr %46
  %49 = call ptr @strcpy(ptr noundef %45, ptr noundef nonnull %48)
  %50 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %31, i32 0, i32 2
  store i32 %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %31, i32 0, i32 3
  store i32 %3, ptr %51, align 4
  %52 = load i32, ptr %6, align 4
  %53 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %20, ptr noundef null) #22
  br label %54

54:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk_parent(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %54, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.17, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #22
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65536
  %21 = or i32 %20, 16
  %22 = icmp eq ptr %2, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @.str.17, ptr %24
  br label %27

27:                                               ; preds = %23, %14
  %28 = phi ptr [ @.str.27, %14 ], [ %26, %23 ]
  %29 = tail call i32 @strlen(ptr noundef nonnull %28) #22
  %30 = add i32 %29, 1
  %31 = add i32 %18, 17
  %32 = add i32 %31, %30
  %33 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %32) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %27
  %36 = shl i32 %30, 16
  %37 = or i32 %36, %31
  %38 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %33, i32 0, i32 1
  store i32 %21, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %33, i32 0, i32 2
  store i32 %37, ptr %39, align 4
  %40 = getelementptr i8, ptr %33, i32 16
  %41 = load ptr, ptr %1, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @.str.17, ptr %41
  %44 = call ptr @strcpy(ptr noundef %40, ptr noundef nonnull %43)
  %45 = and i32 %31, 65535
  %46 = getelementptr i8, ptr %33, i32 %45
  br i1 %22, label %51, label %47

47:                                               ; preds = %35
  %48 = load ptr, ptr %2, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.17, ptr %48
  br label %51

51:                                               ; preds = %47, %35
  %52 = phi ptr [ @.str.27, %35 ], [ %50, %47 ]
  %53 = call ptr @strcpy(ptr noundef %46, ptr noundef nonnull %52)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %54

54:                                               ; preds = %51, %27, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk_parent(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.17, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #22
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65536
  %12 = or i32 %11, 16
  %13 = icmp eq ptr %2, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.17, ptr %15
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi ptr [ @.str.27, %3 ], [ %17, %14 ]
  %20 = tail call i32 @strlen(ptr noundef nonnull %19) #22
  %21 = add i32 %20, 1
  %22 = add i32 %9, 17
  %23 = shl i32 %21, 16
  %24 = or i32 %23, %22
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #16, !srcloc !12
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load volatile ptr, ptr %32, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %75, label %39

39:                                               ; preds = %36, %18
  %40 = add i32 %9, 28
  %41 = add i32 %40, %21
  %42 = and i32 %41, -8
  %43 = add i32 %42, -4
  %44 = call ptr @perf_trace_buf_alloc(i32 noundef %43, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %75, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %4, align 4
  %48 = call ptr @llvm.returnaddress(i32 0) #22
  %49 = ptrtoint ptr %48 to i32
  %50 = getelementptr [18 x i32], ptr %47, i32 0, i32 15
  store i32 %49, ptr %50, align 4
  %51 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %52 = ptrtoint ptr %51 to i32
  %53 = getelementptr [18 x i32], ptr %47, i32 0, i32 11
  store i32 %52, ptr %53, align 4
  %54 = call i32 @llvm.read_register.i32(metadata !0) #22
  %55 = getelementptr [18 x i32], ptr %47, i32 0, i32 13
  store i32 %54, ptr %55, align 4
  %56 = getelementptr [18 x i32], ptr %47, i32 0, i32 16
  store i32 19, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %44, i32 0, i32 1
  store i32 %12, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %44, i32 0, i32 2
  store i32 %24, ptr %58, align 4
  %59 = getelementptr i8, ptr %44, i32 16
  %60 = load ptr, ptr %1, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str.17, ptr %60
  %63 = call ptr @strcpy(ptr noundef %59, ptr noundef nonnull %62)
  %64 = and i32 %22, 65535
  %65 = getelementptr i8, ptr %44, i32 %64
  br i1 %13, label %70, label %66

66:                                               ; preds = %46
  %67 = load ptr, ptr %2, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr @.str.17, ptr %67
  br label %70

70:                                               ; preds = %66, %46
  %71 = phi ptr [ @.str.27, %46 ], [ %69, %66 ]
  %72 = call ptr @strcpy(ptr noundef %65, ptr noundef nonnull %71)
  %73 = load i32, ptr %5, align 4
  %74 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %44, i32 noundef %43, i32 noundef %73, ptr noundef %0, i64 noundef 1, ptr noundef %74, ptr noundef %32, ptr noundef null) #22
  br label %75

75:                                               ; preds = %70, %39, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk_phase(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.17, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #22
  %19 = add i32 %18, 17
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %19) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %14
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65552
  %25 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 16
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.17, ptr %27
  %30 = call ptr @strcpy(ptr noundef %26, ptr noundef nonnull %29)
  %31 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %20, i32 0, i32 2
  store i32 %2, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %32

32:                                               ; preds = %22, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk_phase(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.17, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #22
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65552
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #16, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %3
  %27 = add i32 %9, 28
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #22
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #22
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 16
  %45 = load ptr, ptr %1, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.17, ptr %45
  %48 = call ptr @strcpy(ptr noundef %44, ptr noundef nonnull %47)
  %49 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %30, i32 0, i32 2
  store i32 %2, ptr %49, align 4
  %50 = load i32, ptr %5, align 4
  %51 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %19, ptr noundef null) #22
  br label %52

52:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_clk_duty_cycle(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %36, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.17, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #22
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %19) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %14
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 20
  %27 = load ptr, ptr %1, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.17, ptr %27
  %30 = call ptr @strcpy(ptr noundef %26, ptr noundef nonnull %29)
  %31 = load i32, ptr %2, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %20, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.clk_duty, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %20, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %36

36:                                               ; preds = %22, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_clk_duty_cycle(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.17, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #22
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #16, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %23, %3
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #22
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #22
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 20
  %45 = load ptr, ptr %1, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.17, ptr %45
  %48 = call ptr @strcpy(ptr noundef %44, ptr noundef nonnull %47)
  %49 = load i32, ptr %2, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %30, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.clk_duty, ptr %2, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %30, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %5, align 4
  %55 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %19, ptr noundef null) #22
  br label %56

56:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @__clk_get_name(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @clk_hw_get_name(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @__clk_get_hw(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @clk_hw_get_num_parents(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 8
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @clk_hw_get_parent(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_get_parent_by_index(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = trunc i32 %1 to i8
  %5 = tail call fastcc ptr @clk_core_get_parent_by_index(ptr noundef %3, i8 noundef zeroext %4)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_core_get_parent_by_index(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %7 = load i8, ptr %6, align 4
  %8 = icmp ugt i8 %7, %1
  br i1 %8, label %9, label %75

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %75, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.clk_parent_map, ptr %11, i32 %5, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = getelementptr %struct.clk_parent_map, ptr %11, i32 %5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  br label %64

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @clk_core_get(ptr noundef nonnull %0, i8 noundef zeroext %1) #22
  %25 = icmp eq ptr %24, inttoptr (i32 -2 to ptr)
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = getelementptr %struct.clk_parent_map, ptr %11, i32 %5, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @clk_root_list, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -104
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %44, %40 ], [ %33, %30 ]
  %38 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %28, ptr noundef nonnull %37) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.clk_core, ptr %37, i32 0, i32 27
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -104
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %36

47:                                               ; preds = %40, %30
  %48 = load ptr, ptr @clk_orphan_list, align 4
  %49 = icmp eq ptr %48, null
  %50 = getelementptr i8, ptr %48, i32 -104
  %51 = icmp eq ptr %50, null
  %52 = or i1 %49, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %57, %47
  %54 = phi ptr [ %61, %57 ], [ %50, %47 ]
  %55 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %28, ptr noundef nonnull %54) #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.clk_core, ptr %54, i32 0, i32 27
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 -104
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %71, label %53

64:                                               ; preds = %23, %21
  %65 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64, %53, %36
  %68 = phi ptr [ %65, %64 ], [ %55, %53 ], [ %38, %36 ]
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store ptr %68, ptr %14, align 4
  br label %71

71:                                               ; preds = %70, %67, %64, %57, %47, %26, %13
  %72 = load ptr, ptr %10, align 4
  %73 = getelementptr %struct.clk_parent_map, ptr %72, i32 %5, i32 1
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %71, %9, %4, %2
  %76 = phi ptr [ %74, %71 ], [ null, %9 ], [ null, %4 ], [ null, %2 ]
  ret ptr %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @__clk_get_enable_count(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @clk_hw_get_rate(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8, %1
  %16 = phi i32 [ %14, %12 ], [ 0, %1 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @clk_hw_get_flags(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @clk_hw_is_prepared(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br label %44

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 17
  %14 = load i8, ptr %13, align 1, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #22
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.clk_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %32

25:                                               ; preds = %16
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #22, !srcloc !15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 0, i32 -1, ptr elementtype(i32) %27) #22, !srcloc !16
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %44

32:                                               ; preds = %21, %12
  %33 = phi ptr [ %24, %21 ], [ %6, %12 ]
  %34 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %33(ptr noundef %35) #22
  %37 = icmp ne i32 %36, 0
  %38 = load i8, ptr %13, align 1, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 4) #22
  br label %44

44:                                               ; preds = %40, %32, %31, %25, %8
  %45 = phi i1 [ %11, %8 ], [ false, %25 ], [ false, %31 ], [ %37, %32 ], [ %37, %40 ]
  ret i1 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clk_hw_rate_is_protected(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @clk_hw_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp ne i32 %10, 0
  br label %46

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 17
  %14 = load i8, ptr %13, align 1, !range !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #22, !srcloc !15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #22, !srcloc !18
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 15
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 7
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25, %16, %12
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.clk_ops, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %33(ptr noundef %35) #22
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %30, %25
  %39 = phi i1 [ %37, %30 ], [ false, %25 ]
  %40 = load i8, ptr %13, align 1, !range !13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #22
  br label %46

46:                                               ; preds = %42, %38, %8
  %47 = phi i1 [ %11, %8 ], [ %39, %42 ], [ %39, %38 ]
  ret i1 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__clk_is_enabled(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 0
  br label %48

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 17
  %16 = load i8, ptr %15, align 1, !range !13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #22, !srcloc !15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #22, !srcloc !18
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 15
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 7
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27, %18, %14
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.clk_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %35(ptr noundef %37) #22
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi i1 [ %39, %32 ], [ false, %27 ]
  %42 = load i8, ptr %15, align 1, !range !13
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 5) #22
  br label %48

48:                                               ; preds = %44, %40, %10, %1
  %49 = phi i1 [ false, %1 ], [ %13, %10 ], [ %41, %44 ], [ %41, %40 ]
  ret i1 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_mux_determine_rate_flags(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.clk_rate_request, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %6 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %103, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = and i32 %7, 4
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq ptr %12, null
  br i1 %14, label %82, label %16

16:                                               ; preds = %10
  br i1 %15, label %231, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %231, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %231, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 4
  %26 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 3
  br label %27

27:                                               ; preds = %71, %24
  %28 = phi ptr [ %22, %24 ], [ %30, %71 ]
  %29 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  store ptr %34, ptr %25, align 4
  %35 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  br label %38

37:                                               ; preds = %27
  store ptr null, ptr %25, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ 0, %37 ]
  store i32 %39, ptr %26, align 4
  %40 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_ops, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.clk_ops, ptr %41, i32 0, i32 11
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 20
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %57

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 20
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 10
  %59 = load i32, ptr %58, align 4
  br label %231

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = load i32, ptr %4, align 4
  %64 = call i32 %47(ptr noundef %62, i32 noundef %63, ptr noundef %26) #22
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %234, label %231

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br i1 %31, label %231, label %27

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  br label %231

75:                                               ; preds = %53
  %76 = getelementptr inbounds %struct.clk_core, ptr %28, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %43(ptr noundef %77, ptr noundef nonnull %4) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %234

80:                                               ; preds = %75
  %81 = load i32, ptr %4, align 4
  br label %231

82:                                               ; preds = %10
  br i1 %15, label %94, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 8
  %85 = load i8, ptr %84, align 4
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 6
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %231, label %91

91:                                               ; preds = %87, %83
  %92 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 10
  %93 = load i32, ptr %92, align 4
  br label %231

94:                                               ; preds = %82
  %95 = icmp eq ptr %5, null
  br i1 %95, label %231, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 8
  %98 = load i8, ptr %97, align 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %231

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 10
  %102 = load i32, ptr %101, align 4
  br label %231

103:                                              ; preds = %3
  %104 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 8
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = icmp eq i8 %105, 0
  br i1 %107, label %234, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 4
  %110 = getelementptr inbounds %struct.clk_rate_request, ptr %4, i32 0, i32 3
  %111 = and i32 %2, 16
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %220, %108
  %114 = phi i32 [ 0, %108 ], [ %222, %220 ]
  %115 = phi i32 [ 0, %108 ], [ %223, %220 ]
  %116 = phi ptr [ null, %108 ], [ %221, %220 ]
  %117 = trunc i32 %115 to i8
  %118 = call fastcc ptr @clk_core_get_parent_by_index(ptr noundef %5, i8 noundef zeroext %117)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %220, label %120

120:                                              ; preds = %113
  %121 = load i32, ptr %6, align 4
  %122 = and i32 %121, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %190, label %124

124:                                              ; preds = %120
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef align 4 dereferenceable(20) %1, i32 20, i1 false)
  %125 = getelementptr inbounds %struct.clk_core, ptr %118, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, ptr %4, align 4
  br label %203

129:                                              ; preds = %124
  %130 = load ptr, ptr %126, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %179, %129
  store i32 0, ptr %4, align 4
  br label %203

133:                                              ; preds = %179, %129
  %134 = phi ptr [ %136, %179 ], [ %130, %129 ]
  %135 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.clk_core, ptr %136, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  store ptr %140, ptr %109, align 4
  %141 = getelementptr inbounds %struct.clk_core, ptr %136, i32 0, i32 10
  %142 = load i32, ptr %141, align 4
  br label %144

143:                                              ; preds = %133
  store ptr null, ptr %109, align 4
  br label %144

144:                                              ; preds = %143, %138
  %145 = phi i32 [ %142, %138 ], [ 0, %143 ]
  store i32 %145, ptr %110, align 4
  %146 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.clk_ops, ptr %147, i32 0, i32 12
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.clk_ops, ptr %147, i32 0, i32 11
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %174, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 20
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %163

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 20
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %183, label %163

163:                                              ; preds = %159, %155
  %164 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 10
  %165 = load i32, ptr %164, align 4
  br label %172

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = load i32, ptr %4, align 4
  %170 = call i32 %153(ptr noundef %168, i32 noundef %169, ptr noundef %110) #22
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %220, label %172

172:                                              ; preds = %166, %163
  %173 = phi i32 [ %165, %163 ], [ %170, %166 ]
  store i32 %173, ptr %4, align 4
  br label %203

174:                                              ; preds = %151
  %175 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 15
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br i1 %137, label %132, label %133

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 10
  %182 = load i32, ptr %181, align 4
  store i32 %182, ptr %4, align 4
  br label %203

183:                                              ; preds = %159
  %184 = getelementptr inbounds %struct.clk_core, ptr %134, i32 0, i32 2
  %185 = load ptr, ptr %184, align 4
  %186 = call i32 %149(ptr noundef %185, ptr noundef nonnull %4) #22
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %220

188:                                              ; preds = %183
  %189 = load i32, ptr %4, align 4
  br label %203

190:                                              ; preds = %120
  %191 = getelementptr inbounds %struct.clk_core, ptr %118, i32 0, i32 8
  %192 = load i8, ptr %191, align 4
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.clk_core, ptr %118, i32 0, i32 6
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %194, %190
  %199 = getelementptr inbounds %struct.clk_core, ptr %118, i32 0, i32 10
  %200 = load i32, ptr %199, align 4
  br label %201

201:                                              ; preds = %198, %194
  %202 = phi i32 [ %200, %198 ], [ 0, %194 ]
  store i32 %202, ptr %4, align 4
  br label %203

203:                                              ; preds = %201, %188, %180, %172, %132, %128
  %204 = phi i32 [ %189, %188 ], [ %173, %172 ], [ 0, %132 ], [ %182, %180 ], [ 0, %128 ], [ %202, %201 ]
  %205 = load i32, ptr %1, align 4
  br i1 %112, label %212, label %206

206:                                              ; preds = %203
  %207 = sub i32 %204, %205
  %208 = call i32 @llvm.abs.i32(i32 %207, i1 false) #22
  %209 = sub i32 %114, %205
  %210 = call i32 @llvm.abs.i32(i32 %209, i1 false) #22
  %211 = icmp slt i32 %208, %210
  br label %216

212:                                              ; preds = %203
  %213 = icmp ule i32 %204, %205
  %214 = icmp ugt i32 %204, %114
  %215 = and i1 %213, %214
  br label %216

216:                                              ; preds = %212, %206
  %217 = phi i1 [ %211, %206 ], [ %215, %212 ]
  %218 = select i1 %217, ptr %118, ptr %116
  %219 = select i1 %217, i32 %204, i32 %114
  br label %220

220:                                              ; preds = %216, %183, %166, %113
  %221 = phi ptr [ %116, %183 ], [ %116, %113 ], [ %218, %216 ], [ %116, %166 ]
  %222 = phi i32 [ %114, %183 ], [ %114, %113 ], [ %219, %216 ], [ %114, %166 ]
  %223 = add nuw nsw i32 %115, 1
  %224 = icmp eq i32 %223, %106
  br i1 %224, label %225, label %113

225:                                              ; preds = %220
  %226 = icmp eq ptr %221, null
  br i1 %226, label %234, label %227

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.clk_core, ptr %221, i32 0, i32 2
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  store ptr %229, ptr %230, align 4
  br label %231

231:                                              ; preds = %227, %100, %96, %94, %91, %87, %80, %72, %71, %60, %57, %21, %17, %16
  %232 = phi i32 [ %222, %227 ], [ 0, %96 ], [ 0, %94 ], [ %102, %100 ], [ 0, %87 ], [ %93, %91 ], [ %81, %80 ], [ %74, %72 ], [ 0, %16 ], [ 0, %17 ], [ 0, %21 ], [ %59, %57 ], [ %64, %60 ], [ 0, %71 ]
  %233 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  store i32 %232, ptr %233, align 4
  store i32 %232, ptr %1, align 4
  br label %234

234:                                              ; preds = %231, %225, %103, %75, %60
  %235 = phi i32 [ 0, %231 ], [ %78, %75 ], [ -22, %225 ], [ %64, %60 ], [ -22, %103 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #22
  ret i32 %235
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__clk_determine_rate(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  store i32 0, ptr %1, align 4
  br label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = tail call fastcc i32 @clk_core_round_rate_nolock(ptr noundef %6, ptr noundef %1)
  br label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ %7, %5 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__clk_lookup(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @clk_root_list, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -104
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %20, label %9

9:                                                ; preds = %13, %3
  %10 = phi ptr [ %17, %13 ], [ %6, %3 ]
  %11 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %0, ptr noundef nonnull %10) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -104
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %9

20:                                               ; preds = %13, %3
  %21 = load ptr, ptr @clk_orphan_list, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -104
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %43, label %26

26:                                               ; preds = %30, %20
  %27 = phi ptr [ %34, %30 ], [ %23, %20 ]
  %28 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %0, ptr noundef nonnull %27) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.clk_core, ptr %27, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -104
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %43, label %26

37:                                               ; preds = %26, %9
  %38 = phi ptr [ %28, %26 ], [ %11, %9 ]
  %39 = getelementptr inbounds %struct.clk_core, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.clk_hw, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %37, %30, %20, %1
  %44 = phi ptr [ %42, %37 ], [ null, %1 ], [ null, %20 ], [ null, %30 ]
  ret ptr %44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @clk_hw_set_rate_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 21
  store i32 %1, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.clk_core, ptr %6, i32 0, i32 22
  store i32 %2, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__clk_mux_determine_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__clk_mux_determine_rate_closest(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i32 @clk_mux_determine_rate_flags(ptr noundef %0, ptr noundef %1, i32 noundef 16)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_rate_exclusive_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %49, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 735, i32 noundef 9, ptr noundef null) #22
  br label %28

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %21, %8
  %12 = phi ptr [ %23, %21 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %17) #22
  br label %25

18:                                               ; preds = %11
  %19 = add i32 %14, -1
  store i32 %19, ptr %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11

25:                                               ; preds = %21, %18, %16, %8
  %26 = load i32, ptr %4, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %4, align 4
  br label %28

28:                                               ; preds = %25, %7
  %29 = load ptr, ptr @prepare_owner, align 4
  %30 = tail call ptr @llvm.thread.pointer() #22
  %31 = icmp ne ptr %29, %30
  %32 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %28
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, ptr @prepare_refcnt, align 4
  %38 = icmp eq i32 %37, 0
  %39 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %44, !prof !11

42:                                               ; preds = %36
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %43 = load i32, ptr @prepare_refcnt, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %43, %42 ], [ %37, %36 ]
  %46 = add i32 %45, -1
  store i32 %46, ptr @prepare_refcnt, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %49

49:                                               ; preds = %48, %44, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_lock() unnamed_addr #0 {
  %1 = tail call i32 @mutex_trylock(ptr noundef nonnull @prepare_lock) #22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load ptr, ptr @prepare_owner, align 4
  %5 = tail call ptr @llvm.thread.pointer() #22
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load i32, ptr @prepare_refcnt, align 4
  %9 = add i32 %8, 1
  br label %27

10:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @prepare_lock) #22
  br label %11

11:                                               ; preds = %10, %0
  %12 = load ptr, ptr @prepare_owner, align 4
  %13 = icmp ne ptr %12, null
  %14 = load i1, ptr @clk_prepare_lock.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @clk_prepare_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #22
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32, ptr @prepare_refcnt, align 4
  %20 = icmp ne i32 %19, 0
  %21 = load i1, ptr @clk_prepare_lock.__already_done.37, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %18
  store i1 true, ptr @clk_prepare_lock.__already_done.37, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #22
  br label %25

25:                                               ; preds = %24, %18
  %26 = tail call ptr @llvm.thread.pointer() #22
  store ptr %26, ptr @prepare_owner, align 4
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i32 [ 1, %25 ], [ %9, %7 ]
  store i32 %28, ptr @prepare_refcnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_rate_unprotect(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %13, %1
  %4 = phi ptr [ %15, %13 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !11

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %9) #22
  br label %17

10:                                               ; preds = %3
  %11 = add i32 %6, -1
  store i32 %11, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3

17:                                               ; preds = %13, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_rate_exclusive_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %4)
  %5 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr @prepare_owner, align 4
  %9 = tail call ptr @llvm.thread.pointer() #22
  %10 = icmp ne ptr %8, %9
  %11 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %3
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i32, ptr @prepare_refcnt, align 4
  %17 = icmp eq i32 %16, 0
  %18 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23, !prof !11

21:                                               ; preds = %15
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %22 = load i32, ptr @prepare_refcnt, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %22, %21 ], [ %16, %15 ]
  %25 = add i32 %24, -1
  store i32 %25, ptr @prepare_refcnt, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %28

28:                                               ; preds = %27, %23, %1
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_rate_protect(ptr noundef %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %9)
  %10 = load i32, ptr %4, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %13 = add i32 %12, 1
  store i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unprepare(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_unprepare_lock(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @clk_prepare_lock()
  tail call fastcc void @clk_core_unprepare(ptr noundef %0)
  %2 = load ptr, ptr @prepare_owner, align 4
  %3 = tail call ptr @llvm.thread.pointer() #22
  %4 = icmp ne ptr %2, %3
  %5 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, ptr @prepare_refcnt, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %9
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %16 = load i32, ptr @prepare_refcnt, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %16, %15 ], [ %10, %9 ]
  %19 = add i32 %18, -1
  store i32 %19, ptr @prepare_refcnt, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_prepare(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %4)
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_prepare_lock(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @clk_prepare_lock()
  %2 = tail call fastcc i32 @clk_core_prepare(ptr noundef %0)
  %3 = load ptr, ptr @prepare_owner, align 4
  %4 = tail call ptr @llvm.thread.pointer() #22
  %5 = icmp ne ptr %3, %4
  %6 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %1
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr @prepare_refcnt, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %10
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %17 = load i32, ptr @prepare_refcnt, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ %11, %10 ]
  %20 = add i32 %19, -1
  store i32 %20, ptr @prepare_refcnt, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %23

23:                                               ; preds = %22, %18
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_disable(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_disable_lock(ptr noundef %6)
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_disable_lock(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @clk_enable_lock()
  tail call fastcc void @clk_core_disable(ptr noundef %0)
  %3 = load ptr, ptr @enable_owner, align 4
  %4 = tail call ptr @llvm.thread.pointer() #22
  %5 = icmp ne ptr %3, %4
  %6 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %1
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr @enable_refcnt, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %10
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %17 = load i32, ptr @enable_refcnt, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ %11, %10 ]
  %20 = add i32 %19, -1
  store i32 %20, ptr @enable_refcnt, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %2) #22
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_gate_restore_context(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #22
  br label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.clk_ops, ptr %7, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0) #22
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_save_context() #0 {
  %1 = load ptr, ptr @clk_root_list, align 4
  %2 = icmp eq ptr %1, null
  %3 = getelementptr i8, ptr %1, i32 -104
  %4 = icmp eq ptr %3, null
  %5 = or i1 %2, %4
  br i1 %5, label %17, label %6

6:                                                ; preds = %10, %0
  %7 = phi ptr [ %14, %10 ], [ %3, %0 ]
  %8 = tail call fastcc i32 @clk_core_save_context(ptr noundef nonnull %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -104
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %17, label %6

17:                                               ; preds = %10, %0
  %18 = load ptr, ptr @clk_orphan_list, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -104
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %27, %17
  %24 = phi ptr [ %31, %27 ], [ %20, %17 ]
  %25 = tail call fastcc i32 @clk_core_save_context(ptr noundef nonnull %24)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = getelementptr i8, ptr %29, i32 -104
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %23

34:                                               ; preds = %27, %23, %17, %6
  %35 = phi i32 [ 0, %17 ], [ %25, %23 ], [ 0, %27 ], [ %8, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_save_context(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %12, %1
  %9 = phi ptr [ %16, %12 ], [ %5, %1 ]
  %10 = tail call fastcc i32 @clk_core_save_context(ptr noundef nonnull %9)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -104
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %8

19:                                               ; preds = %12, %1
  %20 = phi i32 [ 0, %1 ], [ %10, %12 ]
  %21 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.clk_ops, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %26(ptr noundef %30) #22
  br label %32

32:                                               ; preds = %28, %24, %19, %8
  %33 = phi i32 [ %31, %28 ], [ %20, %24 ], [ %20, %19 ], [ %10, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_restore_context() #0 {
  %1 = load ptr, ptr @clk_root_list, align 4
  %2 = icmp eq ptr %1, null
  %3 = getelementptr i8, ptr %1, i32 -104
  %4 = icmp eq ptr %3, null
  %5 = or i1 %2, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %0
  %7 = phi ptr [ %11, %6 ], [ %3, %0 ]
  tail call fastcc void @clk_core_restore_context(ptr noundef nonnull %7)
  %8 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -104
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %0
  %15 = load ptr, ptr @clk_orphan_list, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -104
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %14
  %21 = phi ptr [ %25, %20 ], [ %17, %14 ]
  tail call fastcc void @clk_core_restore_context(ptr noundef nonnull %21)
  %22 = getelementptr inbounds %struct.clk_core, ptr %21, i32 0, i32 27
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %23, i32 -104
  %26 = icmp eq ptr %25, null
  %27 = or i1 %24, %26
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_restore_context(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_ops, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void %7(ptr noundef %11) #22
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -104
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %12
  %20 = phi ptr [ %24, %19 ], [ %16, %12 ]
  tail call fastcc void @clk_core_restore_context(ptr noundef nonnull %20)
  %21 = getelementptr inbounds %struct.clk_core, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -104
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_enable(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %4)
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_enable_lock(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @clk_enable_lock()
  %3 = tail call fastcc i32 @clk_core_enable(ptr noundef %0)
  %4 = load ptr, ptr @enable_owner, align 4
  %5 = tail call ptr @llvm.thread.pointer() #22
  %6 = icmp ne ptr %4, %5
  %7 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %1
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr @enable_refcnt, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %18 = load i32, ptr @enable_refcnt, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %18, %17 ], [ %12, %11 ]
  %21 = add i32 %20, -1
  store i32 %21, ptr @enable_refcnt, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %2) #22
  br label %24

24:                                               ; preds = %23, %19
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clk_is_enabled_when_prepared(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br label %14

14:                                               ; preds = %10, %3, %1
  %15 = phi i1 [ false, %1 ], [ true, %3 ], [ %13, %10 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_ignore_unused_setup(ptr nocapture noundef readnone %0) #9 section ".init.text" {
  store i1 true, ptr @clk_ignore_unused, align 1
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_disable_unused() #10 section ".init.text" {
  %1 = load i1, ptr @clk_ignore_unused, align 1
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #23
  br label %81

4:                                                ; preds = %0
  tail call fastcc void @clk_prepare_lock()
  %5 = load ptr, ptr @clk_root_list, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -104
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %4
  %11 = phi ptr [ %15, %10 ], [ %7, %4 ]
  tail call fastcc void @clk_disable_unused_subtree(ptr noundef nonnull %11) #24
  %12 = getelementptr inbounds %struct.clk_core, ptr %11, i32 0, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -104
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %4
  %19 = load ptr, ptr @clk_orphan_list, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -104
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %18
  %25 = phi ptr [ %29, %24 ], [ %21, %18 ]
  tail call fastcc void @clk_disable_unused_subtree(ptr noundef nonnull %25) #24
  %26 = getelementptr inbounds %struct.clk_core, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %27, i32 -104
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %18
  %33 = load ptr, ptr @clk_root_list, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -104
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %32
  %39 = phi ptr [ %43, %38 ], [ %35, %32 ]
  tail call fastcc void @clk_unprepare_unused_subtree(ptr noundef nonnull %39) #24
  %40 = getelementptr inbounds %struct.clk_core, ptr %39, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -104
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %32
  %47 = load ptr, ptr @clk_orphan_list, align 4
  %48 = icmp eq ptr %47, null
  %49 = getelementptr i8, ptr %47, i32 -104
  %50 = icmp eq ptr %49, null
  %51 = or i1 %48, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %52, %46
  %53 = phi ptr [ %57, %52 ], [ %49, %46 ]
  tail call fastcc void @clk_unprepare_unused_subtree(ptr noundef nonnull %53) #24
  %54 = getelementptr inbounds %struct.clk_core, ptr %53, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr i8, ptr %55, i32 -104
  %58 = icmp eq ptr %57, null
  %59 = or i1 %56, %58
  br i1 %59, label %60, label %52

60:                                               ; preds = %52, %46
  %61 = load ptr, ptr @prepare_owner, align 4
  %62 = tail call ptr @llvm.thread.pointer() #22
  %63 = icmp ne ptr %61, %62
  %64 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %65 = xor i1 %64, true
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %68, !prof !11

67:                                               ; preds = %60
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, ptr @prepare_refcnt, align 4
  %70 = icmp eq i32 %69, 0
  %71 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76, !prof !11

74:                                               ; preds = %68
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %75 = load i32, ptr @prepare_refcnt, align 4
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi i32 [ %75, %74 ], [ %69, %68 ]
  %78 = add i32 %77, -1
  store i32 %78, ptr @prepare_refcnt, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %81

81:                                               ; preds = %80, %76, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_round_rate_nolock(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 4
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %1, i32 0, i32 3
  br label %9

8:                                                ; preds = %60, %2
  store i32 0, ptr %1, align 4
  br label %67

9:                                                ; preds = %60, %4
  %10 = phi ptr [ %0, %4 ], [ %62, %60 ]
  br i1 %5, label %11, label %12, !prof !11

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1362, i32 noundef 9, ptr noundef null) #22
  br label %22

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %7, align 4
  br label %22

21:                                               ; preds = %12
  store ptr null, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br label %22

22:                                               ; preds = %21, %16, %11
  %23 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clk_ops, ptr %24, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.clk_ops, ptr %24, i32 0, i32 11
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %40

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  br label %53

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %26(ptr noundef %45, ptr noundef %1) #22
  br label %67

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %1, align 4
  %51 = tail call i32 %30(ptr noundef %49, i32 noundef %50, ptr noundef %7) #22
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ %42, %40 ], [ %51, %47 ]
  store i32 %54, ptr %1, align 4
  br label %67

55:                                               ; preds = %28
  %56 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %8, label %9

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  store i32 %66, ptr %1, align 4
  br label %67

67:                                               ; preds = %64, %53, %47, %43, %8
  %68 = phi i32 [ 0, %64 ], [ 0, %8 ], [ 0, %53 ], [ %46, %43 ], [ %51, %47 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_hw_round_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %4, align 4, !annotation !9
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -28
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %18, %2
  %19 = phi i32 [ %23, %18 ], [ %9, %2 ]
  %20 = phi ptr [ %27, %18 ], [ %15, %2 ]
  %21 = getelementptr inbounds %struct.clk, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @llvm.umax.i32(i32 %19, i32 %22) #22
  %24 = getelementptr inbounds %struct.clk, ptr %20, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -28
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %18

30:                                               ; preds = %18
  store i32 %23, ptr %6, align 4
  br i1 %17, label %44, label %31

31:                                               ; preds = %31, %30
  %32 = phi i32 [ %36, %31 ], [ %11, %30 ]
  %33 = phi ptr [ %40, %31 ], [ %15, %30 ]
  %34 = getelementptr inbounds %struct.clk, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %32, i32 %35) #22
  %37 = getelementptr inbounds %struct.clk, ptr %33, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -28
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %31

43:                                               ; preds = %31
  store i32 %36, ptr %7, align 4
  br label %44

44:                                               ; preds = %43, %30, %2
  store i32 %1, ptr %3, align 4
  %45 = icmp eq ptr %5, null
  br i1 %45, label %105, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 4
  %48 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 3
  br label %49

49:                                               ; preds = %94, %46
  %50 = phi ptr [ %5, %46 ], [ %52, %94 ]
  %51 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.clk_core, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr %47, align 4
  %57 = getelementptr inbounds %struct.clk_core, ptr %52, i32 0, i32 10
  %58 = load i32, ptr %57, align 4
  br label %60

59:                                               ; preds = %49
  store ptr null, ptr %47, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 0, %59 ]
  store i32 %61, ptr %48, align 4
  %62 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.clk_ops, ptr %63, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.clk_ops, ptr %63, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %82, label %79

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 20
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75, %71
  %80 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  br label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %69(ptr noundef %84, i32 noundef %1, ptr noundef %48) #22
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %82, %79
  %88 = phi i32 [ %81, %79 ], [ %85, %82 ]
  br label %105

89:                                               ; preds = %67
  %90 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 15
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br i1 %53, label %105, label %49

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 10
  %97 = load i32, ptr %96, align 4
  br label %105

98:                                               ; preds = %75
  %99 = getelementptr inbounds %struct.clk_core, ptr %50, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 %65(ptr noundef %100, ptr noundef nonnull %3) #22
  %102 = icmp eq i32 %101, 0
  %103 = load i32, ptr %3, align 4
  %104 = select i1 %102, i32 %103, i32 0
  br label %105

105:                                              ; preds = %98, %95, %94, %87, %82, %44
  %106 = phi i32 [ 0, %82 ], [ %88, %87 ], [ %97, %95 ], [ 0, %44 ], [ %104, %98 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_round_rate(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %159, label %6

6:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  %7 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %23, %10
  %14 = phi ptr [ %25, %23 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %19) #22
  br label %27

20:                                               ; preds = %13
  %21 = add i32 %16, -1
  store i32 %21, ptr %15, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13

27:                                               ; preds = %23, %20, %18, %6
  %28 = load ptr, ptr %0, align 4
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ null, %10 ]
  %31 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 2
  %33 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 21
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %31, align 4
  %35 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 22
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %32, align 4
  %37 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 28
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -28
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %69, label %43

43:                                               ; preds = %43, %29
  %44 = phi i32 [ %48, %43 ], [ %34, %29 ]
  %45 = phi ptr [ %52, %43 ], [ %40, %29 ]
  %46 = getelementptr inbounds %struct.clk, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %44, i32 %47) #22
  %49 = getelementptr inbounds %struct.clk, ptr %45, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  %52 = getelementptr i8, ptr %50, i32 -28
  %53 = icmp eq ptr %52, null
  %54 = or i1 %51, %53
  br i1 %54, label %55, label %43

55:                                               ; preds = %43
  store i32 %48, ptr %31, align 4
  br i1 %42, label %69, label %56

56:                                               ; preds = %56, %55
  %57 = phi i32 [ %61, %56 ], [ %36, %55 ]
  %58 = phi ptr [ %65, %56 ], [ %40, %55 ]
  %59 = getelementptr inbounds %struct.clk, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %57, i32 %60) #22
  %62 = getelementptr inbounds %struct.clk, ptr %58, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = getelementptr i8, ptr %63, i32 -28
  %66 = icmp eq ptr %65, null
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %56

68:                                               ; preds = %56
  store i32 %61, ptr %32, align 4
  br label %69

69:                                               ; preds = %68, %55, %29
  store i32 %1, ptr %3, align 4
  %70 = icmp eq ptr %30, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 4
  %73 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 3
  br label %75

74:                                               ; preds = %124, %69
  store i32 0, ptr %3, align 4
  br label %128

75:                                               ; preds = %124, %71
  %76 = phi ptr [ %30, %71 ], [ %78, %124 ]
  %77 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.clk_core, ptr %78, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr %72, align 4
  %83 = getelementptr inbounds %struct.clk_core, ptr %78, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  br label %86

85:                                               ; preds = %75
  store ptr null, ptr %72, align 4
  br label %86

86:                                               ; preds = %85, %80
  %87 = phi i32 [ %84, %80 ], [ 0, %85 ]
  store i32 %87, ptr %73, align 4
  %88 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.clk_ops, ptr %89, i32 0, i32 12
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.clk_ops, ptr %89, i32 0, i32 11
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %119, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %105

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 20
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101, %97
  %106 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 10
  %107 = load i32, ptr %106, align 4
  br label %117

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 %91(ptr noundef %110, ptr noundef nonnull %3) #22
  br label %128

112:                                              ; preds = %97
  %113 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %95(ptr noundef %114, i32 noundef %1, ptr noundef %73) #22
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %112, %105
  %118 = phi i32 [ %107, %105 ], [ %115, %112 ]
  store i32 %118, ptr %3, align 4
  br label %128

119:                                              ; preds = %93
  %120 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 15
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br i1 %79, label %74, label %75

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %3, align 4
  br label %128

128:                                              ; preds = %125, %117, %112, %108, %74
  %129 = phi i32 [ 0, %125 ], [ 0, %74 ], [ 0, %117 ], [ %111, %108 ], [ %115, %112 ]
  %130 = load i32, ptr %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %0, align 4
  call fastcc void @clk_core_rate_protect(ptr noundef %133)
  br label %134

134:                                              ; preds = %132, %128
  %135 = load ptr, ptr @prepare_owner, align 4
  %136 = tail call ptr @llvm.thread.pointer() #22
  %137 = icmp ne ptr %135, %136
  %138 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %139 = xor i1 %138, true
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %142, !prof !11

141:                                              ; preds = %134
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %142

142:                                              ; preds = %141, %134
  %143 = load i32, ptr @prepare_refcnt, align 4
  %144 = icmp eq i32 %143, 0
  %145 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %146 = xor i1 %145, true
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %150, !prof !11

148:                                              ; preds = %142
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %149 = load i32, ptr @prepare_refcnt, align 4
  br label %150

150:                                              ; preds = %148, %142
  %151 = phi i32 [ %149, %148 ], [ %143, %142 ]
  %152 = add i32 %151, -1
  store i32 %152, ptr @prepare_refcnt, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store ptr null, ptr @prepare_owner, align 4
  call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %155

155:                                              ; preds = %154, %150
  %156 = icmp eq i32 %129, 0
  %157 = load i32, ptr %3, align 4
  %158 = select i1 %156, i32 %157, i32 %129
  br label %159

159:                                              ; preds = %155, %2
  %160 = phi i32 [ 0, %2 ], [ %158, %155 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_get_accuracy(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %4) #22
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 23
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i32 [ %14, %12 ], [ 0, %3 ]
  %17 = load ptr, ptr @prepare_owner, align 4
  %18 = tail call ptr @llvm.thread.pointer() #22
  %19 = icmp ne ptr %17, %18
  %20 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !11

23:                                               ; preds = %15
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, ptr @prepare_refcnt, align 4
  %26 = icmp eq i32 %25, 0
  %27 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32, !prof !11

30:                                               ; preds = %24
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %31 = load i32, ptr @prepare_refcnt, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %31, %30 ], [ %25, %24 ]
  %34 = add i32 %33, -1
  store i32 %34, ptr @prepare_refcnt, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %37

37:                                               ; preds = %36, %32, %1
  %38 = phi i32 [ 0, %1 ], [ %16, %32 ], [ %16, %36 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_get_rate(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %4, i32 noundef 0) #22
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16, %3
  %24 = phi i32 [ %22, %20 ], [ 0, %16 ], [ 0, %3 ]
  %25 = load ptr, ptr @prepare_owner, align 4
  %26 = tail call ptr @llvm.thread.pointer() #22
  %27 = icmp ne ptr %25, %26
  %28 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %29 = xor i1 %28, true
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %23
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, ptr @prepare_refcnt, align 4
  %34 = icmp eq i32 %33, 0
  %35 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %40, !prof !11

38:                                               ; preds = %32
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %39 = load i32, ptr @prepare_refcnt, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %39, %38 ], [ %33, %32 ]
  %42 = add i32 %41, -1
  store i32 %42, ptr @prepare_refcnt, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %45

45:                                               ; preds = %44, %40, %1
  %46 = phi i32 [ 0, %1 ], [ %24, %40 ], [ %24, %44 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_hw_get_parent_index(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1722, i32 noundef 9, ptr noundef null) #22
  br label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr %8, align 4
  %13 = tail call fastcc i32 @clk_fetch_parent_index(ptr noundef %2, ptr noundef %12)
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ -22, %10 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_fetch_parent_index(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %55, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 7
  %10 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %9, align 4
  br label %12

12:                                               ; preds = %40, %8
  %13 = phi ptr [ %11, %8 ], [ %41, %40 ]
  %14 = phi i32 [ 0, %8 ], [ %42, %40 ]
  %15 = getelementptr %struct.clk_parent_map, ptr %13, i32 %14
  %16 = getelementptr %struct.clk_parent_map, ptr %13, i32 %14, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %55, label %19

19:                                               ; preds = %12
  %20 = icmp eq ptr %17, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %10, align 4
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %46, label %40

27:                                               ; preds = %21
  %28 = trunc i32 %14 to i8
  %29 = tail call fastcc ptr @clk_core_get(ptr noundef %0, i8 noundef zeroext %28)
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %9, align 4
  %33 = getelementptr %struct.clk_parent_map, ptr %32, i32 %14, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %1, align 4
  %38 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull %34)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %31, %24, %19
  %41 = phi ptr [ %32, %31 ], [ %32, %36 ], [ %13, %24 ], [ %13, %19 ]
  %42 = add nuw nsw i32 %14, 1
  %43 = load i8, ptr %5, align 4
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %40, %36, %27, %24
  %47 = phi i32 [ %42, %40 ], [ %14, %24 ], [ %14, %27 ], [ %14, %36 ]
  %48 = load i8, ptr %5, align 4
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.clk_parent_map, ptr %53, i32 %47, i32 1
  store ptr %1, ptr %54, align 4
  br label %55

55:                                               ; preds = %51, %46, %12, %4, %2
  %56 = phi i32 [ %47, %51 ], [ -22, %2 ], [ -22, %46 ], [ -22, %4 ], [ %14, %12 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_rate(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  %5 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %21, %8
  %12 = phi ptr [ %23, %21 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %17) #22
  br label %25

18:                                               ; preds = %11
  %19 = add i32 %14, -1
  store i32 %19, ptr %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11

25:                                               ; preds = %21, %18, %16, %8, %4
  %26 = load ptr, ptr %0, align 4
  %27 = tail call fastcc i32 @clk_core_set_rate_nolock(ptr noundef %26, i32 noundef %1)
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %31)
  br label %32

32:                                               ; preds = %30, %25
  %33 = load ptr, ptr @prepare_owner, align 4
  %34 = tail call ptr @llvm.thread.pointer() #22
  %35 = icmp ne ptr %33, %34
  %36 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %32
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, ptr @prepare_refcnt, align 4
  %42 = icmp eq i32 %41, 0
  %43 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48, !prof !11

46:                                               ; preds = %40
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %47 = load i32, ptr @prepare_refcnt, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi i32 [ %47, %46 ], [ %41, %40 ]
  %50 = add i32 %49, -1
  store i32 %50, ptr @prepare_refcnt, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %53

53:                                               ; preds = %52, %48, %2
  %54 = phi i32 [ 0, %2 ], [ %27, %48 ], [ %27, %52 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_set_rate_nolock(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %183, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  %6 = getelementptr inbounds i8, ptr %3, i32 12
  store i64 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %5
  store i32 1, ptr %7, align 4
  br label %13

11:                                               ; preds = %23
  %12 = load ptr, ptr %21, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %12) #22
  br label %27

13:                                               ; preds = %23, %10
  %14 = phi ptr [ %0, %10 ], [ %21, %23 ]
  %15 = phi i32 [ 1, %10 ], [ %25, %23 ]
  %16 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 20
  %17 = add i32 %15, -1
  store i32 %17, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.clk_core, ptr %21, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %11, label %13, !prof !11

27:                                               ; preds = %19, %13, %11
  %28 = icmp slt i32 %8, 0
  br i1 %28, label %131, label %29

29:                                               ; preds = %27, %5
  %30 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 2
  %32 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 21
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %30, align 4
  %34 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %31, align 4
  %36 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 28
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 -28
  %40 = icmp eq ptr %39, null
  %41 = or i1 %38, %40
  br i1 %41, label %68, label %42

42:                                               ; preds = %42, %29
  %43 = phi i32 [ %47, %42 ], [ %33, %29 ]
  %44 = phi ptr [ %51, %42 ], [ %39, %29 ]
  %45 = getelementptr inbounds %struct.clk, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %43, i32 %46) #22
  %48 = getelementptr inbounds %struct.clk, ptr %44, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = getelementptr i8, ptr %49, i32 -28
  %52 = icmp eq ptr %51, null
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %42

54:                                               ; preds = %42
  store i32 %47, ptr %30, align 4
  br label %55

55:                                               ; preds = %55, %54
  %56 = phi i32 [ %60, %55 ], [ %35, %54 ]
  %57 = phi ptr [ %64, %55 ], [ %39, %54 ]
  %58 = getelementptr inbounds %struct.clk, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %56, i32 %59) #22
  %61 = getelementptr inbounds %struct.clk, ptr %57, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -28
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %55

67:                                               ; preds = %55
  store i32 %60, ptr %31, align 4
  br label %68

68:                                               ; preds = %67, %29
  store i32 %1, ptr %3, align 4
  %69 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 4
  br label %71

70:                                               ; preds = %120
  store i32 0, ptr %3, align 4
  br label %124

71:                                               ; preds = %120, %68
  %72 = phi ptr [ %0, %68 ], [ %74, %120 ]
  %73 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.clk_core, ptr %74, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  store ptr %78, ptr %69, align 4
  %79 = getelementptr inbounds %struct.clk_core, ptr %74, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  br label %82

81:                                               ; preds = %71
  store ptr null, ptr %69, align 4
  br label %82

82:                                               ; preds = %81, %76
  %83 = phi i32 [ %80, %76 ], [ 0, %81 ]
  store i32 %83, ptr %6, align 4
  %84 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.clk_ops, ptr %85, i32 0, i32 12
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.clk_ops, ptr %85, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %115, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 20
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %101

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 20
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 10
  %103 = load i32, ptr %102, align 4
  br label %113

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 %87(ptr noundef %106, ptr noundef nonnull %3) #22
  br label %124

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 %91(ptr noundef %110, i32 noundef %1, ptr noundef %6) #22
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %108, %101
  %114 = phi i32 [ %103, %101 ], [ %111, %108 ]
  store i32 %114, ptr %3, align 4
  br label %124

115:                                              ; preds = %89
  %116 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 15
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  br i1 %75, label %70, label %71

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.clk_core, ptr %72, i32 0, i32 10
  %123 = load i32, ptr %122, align 4
  store i32 %123, ptr %3, align 4
  br label %124

124:                                              ; preds = %121, %113, %108, %104, %70
  %125 = phi i32 [ 0, %121 ], [ 0, %70 ], [ 0, %113 ], [ %107, %104 ], [ %111, %108 ]
  br i1 %9, label %127, label %126

126:                                              ; preds = %124
  call fastcc void @clk_core_rate_protect(ptr noundef nonnull %0) #22
  store i32 %8, ptr %7, align 4
  br label %127

127:                                              ; preds = %126, %124
  %128 = icmp eq i32 %125, 0
  %129 = load i32, ptr %3, align 4
  %130 = select i1 %128, i32 %129, i32 0
  br label %131

131:                                              ; preds = %127, %27
  %132 = phi i32 [ %130, %127 ], [ %8, %27 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  %133 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %134 = load i8, ptr %133, align 4
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %136, %131
  %141 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi i32 [ %142, %140 ], [ 0, %136 ]
  %145 = icmp eq i32 %132, %144
  br i1 %145, label %183, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr %7, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %183

149:                                              ; preds = %146
  %150 = call fastcc ptr @clk_calc_new_rates(ptr noundef nonnull %0, i32 noundef %1)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %183, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %154 = load i8, ptr %153, align 1, !range !13
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = call i32 @__pm_runtime_resume(ptr noundef %158, i32 noundef 4) #22
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load ptr, ptr %157, align 4
  %163 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 11, i32 13
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %163) #22, !srcloc !15
  %164 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %163, ptr %163, i32 0, i32 -1, ptr elementtype(i32) %163) #22, !srcloc !16
  %165 = extractvalue { i32, i32, i32 } %164, 0
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %183, label %167

167:                                              ; preds = %161
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %183

168:                                              ; preds = %156, %152
  %169 = call fastcc ptr @clk_propagate_rate_change(ptr noundef nonnull %150, i32 noundef 1)
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = call fastcc ptr @clk_propagate_rate_change(ptr noundef nonnull %150, i32 noundef 4)
  br label %175

173:                                              ; preds = %168
  call fastcc void @clk_change_rate(ptr noundef nonnull %150)
  %174 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 11
  store i32 %1, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ -16, %171 ], [ 0, %173 ]
  %177 = load i8, ptr %153, align 1, !range !13
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 @__pm_runtime_idle(ptr noundef %181, i32 noundef 4) #22
  br label %183

183:                                              ; preds = %179, %175, %167, %161, %149, %146, %143, %2
  %184 = phi i32 [ 0, %2 ], [ 0, %143 ], [ -16, %146 ], [ -22, %149 ], [ %159, %161 ], [ %159, %167 ], [ %176, %175 ], [ %176, %179 ]
  ret i32 %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_rate_exclusive(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  %5 = load ptr, ptr %0, align 4
  %6 = tail call fastcc i32 @clk_core_set_rate_nolock(ptr noundef %5, i32 noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %9)
  %10 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %8, %4
  %14 = load ptr, ptr @prepare_owner, align 4
  %15 = tail call ptr @llvm.thread.pointer() #22
  %16 = icmp ne ptr %14, %15
  %17 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %13
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, ptr @prepare_refcnt, align 4
  %23 = icmp eq i32 %22, 0
  %24 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %29, !prof !11

27:                                               ; preds = %21
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %28 = load i32, ptr @prepare_refcnt, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %28, %27 ], [ %22, %21 ]
  %31 = add i32 %30, -1
  store i32 %31, ptr @prepare_refcnt, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %34

34:                                               ; preds = %33, %29, %2
  %35 = phi i32 [ 0, %2 ], [ %6, %29 ], [ %6, %33 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_rate_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_range, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #22
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_range, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %6, i32 noundef %1, i32 noundef %2) #22
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !20
  br label %32

32:                                               ; preds = %31, %9, %5
  %33 = icmp ugt i32 %1, %2
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = load ptr, ptr %0, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.clk_set_rate_range, ptr noundef %36, ptr noundef %38, ptr noundef %40, i32 noundef %1, i32 noundef %2) #23
  br label %128

42:                                               ; preds = %32
  tail call fastcc void @clk_prepare_lock()
  %43 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  store i32 %1, ptr %50, align 4
  store i32 %2, ptr %52, align 4
  br label %86

54:                                               ; preds = %64, %46
  %55 = phi ptr [ %66, %64 ], [ %47, %46 ]
  %56 = getelementptr inbounds %struct.clk_core, ptr %55, i32 0, i32 20
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61, !prof !11

59:                                               ; preds = %54
  %60 = load ptr, ptr %55, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %60) #22
  br label %68

61:                                               ; preds = %54
  %62 = add i32 %57, -1
  store i32 %62, ptr %56, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.clk_core, ptr %55, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %54

68:                                               ; preds = %64, %61, %59, %42
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  store i32 %1, ptr %70, align 4
  store i32 %2, ptr %72, align 4
  %74 = icmp eq ptr %69, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.clk_core, ptr %69, i32 0, i32 8
  %77 = load i8, ptr %76, align 4
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.clk_core, ptr %69, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79, %75
  %84 = getelementptr inbounds %struct.clk_core, ptr %69, i32 0, i32 10
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %79, %68, %49
  %87 = phi i32 [ %73, %83 ], [ %73, %68 ], [ %73, %79 ], [ %53, %49 ]
  %88 = phi ptr [ %72, %83 ], [ %72, %68 ], [ %72, %79 ], [ %52, %49 ]
  %89 = phi i32 [ %71, %83 ], [ %71, %68 ], [ %71, %79 ], [ %51, %49 ]
  %90 = phi ptr [ %70, %83 ], [ %70, %68 ], [ %70, %79 ], [ %50, %49 ]
  %91 = phi ptr [ %69, %83 ], [ null, %68 ], [ %69, %79 ], [ null, %49 ]
  %92 = phi i32 [ %85, %83 ], [ 0, %68 ], [ 0, %79 ], [ 0, %49 ]
  %93 = icmp ult i32 %92, %1
  %94 = icmp ugt i32 %92, %2
  %95 = or i1 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %86
  %97 = select i1 %93, i32 %1, i32 %2
  %98 = tail call fastcc i32 @clk_core_set_rate_nolock(ptr noundef %91, i32 noundef %97)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i32 %89, ptr %90, align 4
  store i32 %87, ptr %88, align 4
  br label %101

101:                                              ; preds = %100, %96, %86
  %102 = phi i32 [ %98, %100 ], [ 0, %96 ], [ 0, %86 ]
  %103 = load i32, ptr %43, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %106)
  br label %107

107:                                              ; preds = %105, %101
  %108 = load ptr, ptr @prepare_owner, align 4
  %109 = tail call ptr @llvm.thread.pointer() #22
  %110 = icmp ne ptr %108, %109
  %111 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %112 = xor i1 %111, true
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %115, !prof !11

114:                                              ; preds = %107
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i32, ptr @prepare_refcnt, align 4
  %117 = icmp eq i32 %116, 0
  %118 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %119 = xor i1 %118, true
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %123, !prof !11

121:                                              ; preds = %115
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %122 = load i32, ptr @prepare_refcnt, align 4
  br label %123

123:                                              ; preds = %121, %115
  %124 = phi i32 [ %122, %121 ], [ %116, %115 ]
  %125 = add i32 %124, -1
  store i32 %125, ptr @prepare_refcnt, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %128

128:                                              ; preds = %127, %123, %34, %3
  %129 = phi i32 [ -22, %34 ], [ 0, %3 ], [ %102, %123 ], [ %102, %127 ]
  ret i32 %129
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_min_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_min_rate, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #22
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !21
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_min_rate, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %5, i32 noundef %1) #22
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !22
  br label %31

31:                                               ; preds = %30, %8, %4
  %32 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @clk_set_rate_range(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi i32 [ %34, %31 ], [ 0, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_max_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_max_rate, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #22
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !23
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_max_rate, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %5, i32 noundef %1) #22
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !24
  br label %31

31:                                               ; preds = %30, %8, %4
  %32 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @clk_set_rate_range(ptr noundef nonnull %0, i32 noundef %33, i32 noundef %1)
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi i32 [ %34, %31 ], [ 0, %2 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_get_parent(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.clk_core, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ null, %3 ]
  %15 = load ptr, ptr @prepare_owner, align 4
  %16 = tail call ptr @llvm.thread.pointer() #22
  %17 = icmp ne ptr %15, %16
  %18 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %13
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, ptr @prepare_refcnt, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30, !prof !11

28:                                               ; preds = %22
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %29 = load i32, ptr @prepare_refcnt, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %29, %28 ], [ %23, %22 ]
  %32 = add i32 %31, -1
  store i32 %32, ptr @prepare_refcnt, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %35

35:                                               ; preds = %34, %30, %1
  %36 = phi ptr [ null, %1 ], [ %14, %30 ], [ %14, %34 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_reparent(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ null, %4 ]
  %11 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 16
  %12 = load i8, ptr %11, align 4, !range !13
  %13 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 27, i32 1
  %16 = load ptr, ptr %15, align 4
  store volatile ptr %14, ptr %16, align 4
  %17 = icmp eq ptr %14, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  store volatile ptr %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %9
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %21 = icmp eq ptr %10, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 16
  %24 = load i8, ptr %23, align 4, !range !13
  %25 = icmp ne i8 %24, 0
  %26 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %5
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store ptr null, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = getelementptr inbounds %struct.clk_core, ptr %10, i32 0, i32 26
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %32, ptr %13, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  store volatile ptr %13, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  store volatile ptr %13, ptr %31, align 4
  store volatile ptr %31, ptr %15, align 4
  %37 = icmp eq i8 %12, %24
  br i1 %37, label %47, label %45

38:                                               ; preds = %20
  %39 = icmp eq i8 %12, 0
  %40 = load ptr, ptr @clk_orphan_list, align 4
  store volatile ptr %40, ptr %13, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  store volatile ptr %13, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %38
  store volatile ptr %13, ptr @clk_orphan_list, align 4
  store volatile ptr @clk_orphan_list, ptr %15, align 4
  br i1 %39, label %45, label %47

45:                                               ; preds = %44, %36
  %46 = phi i1 [ %25, %36 ], [ true, %44 ]
  tail call fastcc void @clk_core_update_orphan_status(ptr noundef %5, i1 noundef zeroext %46) #22
  br label %47

47:                                               ; preds = %45, %44, %36
  %48 = getelementptr inbounds %struct.clk_core, ptr %5, i32 0, i32 6
  store ptr %10, ptr %48, align 4
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef %5) #22
  tail call fastcc void @__clk_recalc_rates(ptr noundef %5, i32 noundef 2) #22
  br label %49

49:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @clk_has_parent(ptr noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ 0, %17 ], [ %27, %21 ]
  %23 = getelementptr %struct.clk_parent_map, ptr %19, i32 %22, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %20)
  %26 = icmp eq i32 %25, 0
  %27 = add nuw nsw i32 %22, 1
  %28 = icmp eq i32 %27, %15
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %21

30:                                               ; preds = %21, %12, %6, %2
  %31 = phi i1 [ true, %2 ], [ true, %6 ], [ false, %12 ], [ %26, %21 ]
  ret i1 %31
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_hw_set_parent(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %1, align 4
  %5 = tail call fastcc i32 @clk_core_set_parent_nolock(ptr noundef %3, ptr noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_set_parent_nolock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %75, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %10 = load i8, ptr %9, align 4
  %11 = icmp ugt i8 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_ops, ptr %14, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %75, label %18

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = icmp eq ptr %1, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = tail call fastcc i32 @clk_fetch_parent_index(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %34 to i8
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i8 [ %39, %36 ], [ 0, %31 ]
  %42 = phi i32 [ %38, %36 ], [ 0, %31 ]
  %43 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %44 = load i8, ptr %43, align 1, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @__pm_runtime_resume(ptr noundef %48, i32 noundef 4) #22
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #22, !srcloc !15
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 0, i32 -1, ptr elementtype(i32) %53) #22, !srcloc !16
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %75

58:                                               ; preds = %46, %40
  %59 = tail call fastcc i32 @__clk_speculate_rates(ptr noundef nonnull %0, i32 noundef %42)
  %60 = and i32 %59, 32768
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @__clk_set_parent(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %41)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %0, i32 noundef 4)
  br label %67

66:                                               ; preds = %62
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %0, i32 noundef 2)
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %0)
  br label %67

67:                                               ; preds = %66, %65, %58
  %68 = phi i32 [ %59, %58 ], [ %63, %65 ], [ 0, %66 ]
  %69 = load i8, ptr %43, align 1, !range !13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @__pm_runtime_idle(ptr noundef %73, i32 noundef 4) #22
  br label %75

75:                                               ; preds = %71, %67, %57, %51, %33, %27, %23, %12, %4, %2
  %76 = phi i32 [ 0, %2 ], [ 0, %4 ], [ -1, %12 ], [ -16, %23 ], [ -16, %27 ], [ %34, %33 ], [ %49, %51 ], [ %49, %57 ], [ %68, %67 ], [ %68, %71 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_parent(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  %5 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %21, %8
  %12 = phi ptr [ %23, %21 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %17) #22
  br label %25

18:                                               ; preds = %11
  %19 = add i32 %14, -1
  store i32 %19, ptr %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11

25:                                               ; preds = %21, %18, %16, %8, %4
  %26 = load ptr, ptr %0, align 4
  %27 = icmp eq ptr %1, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %1, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = tail call fastcc i32 @clk_core_set_parent_nolock(ptr noundef %26, ptr noundef %31)
  %33 = load i32, ptr %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_protect(ptr noundef %36)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load ptr, ptr @prepare_owner, align 4
  %39 = tail call ptr @llvm.thread.pointer() #22
  %40 = icmp ne ptr %38, %39
  %41 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !11

44:                                               ; preds = %37
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, ptr @prepare_refcnt, align 4
  %47 = icmp eq i32 %46, 0
  %48 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %53, !prof !11

51:                                               ; preds = %45
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %52 = load i32, ptr @prepare_refcnt, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %52, %51 ], [ %46, %45 ]
  %55 = add i32 %54, -1
  store i32 %55, ptr @prepare_refcnt, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %58

58:                                               ; preds = %57, %53, %2
  %59 = phi i32 [ 0, %2 ], [ %32, %53 ], [ %32, %57 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_phase(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %133, label %4

4:                                                ; preds = %2
  %5 = srem i32 %1, 360
  %6 = icmp slt i32 %5, 0
  %7 = add nsw i32 %5, 360
  %8 = select i1 %6, i32 %7, i32 %5
  tail call fastcc void @clk_prepare_lock()
  %9 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %25, %12
  %16 = phi ptr [ %27, %25 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.clk_core, ptr %16, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22, !prof !11

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %21) #22
  br label %29

22:                                               ; preds = %15
  %23 = add i32 %18, -1
  store i32 %23, ptr %17, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.clk_core, ptr %16, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %15

29:                                               ; preds = %25, %22, %20, %4
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %102, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %32
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %36
  %40 = tail call ptr @llvm.thread.pointer() #22
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !25
  %51 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase, i32 0, i32 7), align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %53, %50
  %54 = phi ptr [ %58, %53 ], [ %51, %50 ]
  %55 = load volatile ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tracepoint_func, ptr %54, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void %55(ptr noundef %57, ptr noundef nonnull %30, i32 noundef %8) #22
  %58 = getelementptr %struct.tracepoint_func, ptr %54, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %53

61:                                               ; preds = %53, %50
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  br label %62

62:                                               ; preds = %61, %39, %36
  %63 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.clk_ops, ptr %64, i32 0, i32 19
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %66(ptr noundef %70, i32 noundef %8) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 24
  store i32 %8, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %68, %62
  %76 = phi i32 [ %71, %68 ], [ 0, %73 ], [ -22, %62 ]
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase_complete, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %75
  %80 = tail call ptr @llvm.thread.pointer() #22
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !27
  %91 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_phase_complete, i32 0, i32 7), align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %93, %90
  %94 = phi ptr [ %98, %93 ], [ %91, %90 ]
  %95 = load volatile ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.tracepoint_func, ptr %94, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %95(ptr noundef %97, ptr noundef nonnull %30, i32 noundef %8) #22
  %98 = getelementptr %struct.tracepoint_func, ptr %94, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %93

101:                                              ; preds = %93, %90
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !28
  br label %102

102:                                              ; preds = %101, %79, %75, %32, %29
  %103 = phi i32 [ %76, %101 ], [ %76, %79 ], [ %76, %75 ], [ -16, %32 ], [ 0, %29 ]
  %104 = load i32, ptr %9, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %0, align 4
  br label %108

108:                                              ; preds = %106, %12
  %109 = phi ptr [ %107, %106 ], [ null, %12 ]
  %110 = phi i32 [ %103, %106 ], [ 0, %12 ]
  tail call fastcc void @clk_core_rate_protect(ptr noundef %109)
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi i32 [ %110, %108 ], [ %103, %102 ]
  %113 = load ptr, ptr @prepare_owner, align 4
  %114 = tail call ptr @llvm.thread.pointer() #22
  %115 = icmp ne ptr %113, %114
  %116 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !11

119:                                              ; preds = %111
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i32, ptr @prepare_refcnt, align 4
  %122 = icmp eq i32 %121, 0
  %123 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %124 = xor i1 %123, true
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %128, !prof !11

126:                                              ; preds = %120
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %127 = load i32, ptr @prepare_refcnt, align 4
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ %127, %126 ], [ %121, %120 ]
  %130 = add i32 %129, -1
  store i32 %130, ptr @prepare_refcnt, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %133

133:                                              ; preds = %132, %128, %2
  %134 = phi i32 [ 0, %2 ], [ %112, %128 ], [ %112, %132 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_get_phase(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  tail call fastcc void @clk_prepare_lock()
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_ops, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %8(ptr noundef %12) #22
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 24
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %10, %3
  %18 = phi i32 [ 0, %3 ], [ %13, %15 ], [ %13, %10 ]
  %19 = load ptr, ptr @prepare_owner, align 4
  %20 = tail call ptr @llvm.thread.pointer() #22
  %21 = icmp ne ptr %19, %20
  %22 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %17
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, ptr @prepare_refcnt, align 4
  %28 = icmp eq i32 %27, 0
  %29 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34, !prof !11

32:                                               ; preds = %26
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %33 = load i32, ptr @prepare_refcnt, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %27, %26 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr @prepare_refcnt, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %39

39:                                               ; preds = %38, %34, %1
  %40 = phi i32 [ 0, %1 ], [ %18, %34 ], [ %18, %38 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_set_duty_cycle(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.clk_duty, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = icmp eq ptr %0, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  %8 = icmp ugt i32 %1, %2
  %9 = or i1 %7, %8
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  store i32 %1, ptr %4, align 8
  %11 = getelementptr inbounds %struct.clk_duty, ptr %4, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  tail call fastcc void @clk_prepare_lock()
  %12 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %28, %15
  %19 = phi ptr [ %30, %28 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.clk_core, ptr %19, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %24) #22
  br label %32

25:                                               ; preds = %18
  %26 = add i32 %21, -1
  store i32 %26, ptr %20, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.clk_core, ptr %19, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18

32:                                               ; preds = %28, %25, %23, %15, %10
  %33 = load ptr, ptr %0, align 4
  %34 = call fastcc i32 @clk_core_set_duty_cycle_nolock(ptr noundef %33, ptr noundef nonnull %4)
  %35 = load i32, ptr %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 4
  call fastcc void @clk_core_rate_protect(ptr noundef %38)
  br label %39

39:                                               ; preds = %37, %32
  %40 = load ptr, ptr @prepare_owner, align 4
  %41 = tail call ptr @llvm.thread.pointer() #22
  %42 = icmp ne ptr %40, %41
  %43 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !11

46:                                               ; preds = %39
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, ptr @prepare_refcnt, align 4
  %49 = icmp eq i32 %48, 0
  %50 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %55, !prof !11

53:                                               ; preds = %47
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %54 = load i32, ptr @prepare_refcnt, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %54, %53 ], [ %48, %47 ]
  %57 = add i32 %56, -1
  store i32 %57, ptr @prepare_refcnt, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store ptr null, ptr @prepare_owner, align 4
  call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %60

60:                                               ; preds = %59, %55, %6, %3
  %61 = phi i32 [ 0, %3 ], [ -22, %6 ], [ %34, %55 ], [ %34, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_set_duty_cycle_nolock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %2
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #22
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !29
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %0, ptr noundef %1) #22
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !30
  br label %32

32:                                               ; preds = %31, %9, %6
  %33 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_ops, ptr %34, i32 0, i32 21
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 8196
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %88, %66, %63, %49, %42, %38, %2
  %48 = phi i32 [ %50, %49 ], [ -16, %2 ], [ 0, %42 ], [ 0, %38 ], [ %58, %63 ], [ %58, %66 ], [ %58, %88 ]
  ret i32 %48

49:                                               ; preds = %42
  %50 = tail call fastcc i32 @clk_core_set_duty_cycle_nolock(ptr noundef nonnull %40, ptr noundef %1) #22
  %51 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25
  %52 = load ptr, ptr %39, align 4
  %53 = getelementptr inbounds %struct.clk_core, ptr %52, i32 0, i32 25
  %54 = load i64, ptr %53, align 4
  store i64 %54, ptr %51, align 4
  br label %47

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %36(ptr noundef %57, ptr noundef %1) #22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25
  %62 = load i64, ptr %1, align 4
  store i64 %62, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle_complete, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %47

66:                                               ; preds = %63
  %67 = tail call ptr @llvm.thread.pointer() #22
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %47, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !31
  %78 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_duty_cycle_complete, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %85, %80 ], [ %78, %77 ]
  %82 = load volatile ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.tracepoint_func, ptr %81, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %82(ptr noundef %84, ptr noundef %0, ptr noundef %1) #22
  %85 = getelementptr %struct.tracepoint_func, ptr %81, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %77
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !32
  br label %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_get_scaled_duty_cycle(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = tail call fastcc i32 @clk_core_get_scaled_duty_cycle(ptr noundef %5, i32 noundef %1)
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ 0, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_get_scaled_duty_cycle(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call fastcc void @clk_prepare_lock()
  %3 = tail call fastcc i32 @clk_core_update_duty_cycle_nolock(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25
  %7 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = freeze i32 %8
  %10 = udiv i32 %1, %9
  %11 = mul i32 %10, %9
  %12 = sub i32 %1, %11
  %13 = load i32, ptr %6, align 4
  %14 = mul i32 %13, %10
  %15 = mul i32 %13, %12
  %16 = udiv i32 %15, %8
  %17 = add i32 %14, %16
  br label %18

18:                                               ; preds = %5, %2
  %19 = phi i32 [ %3, %2 ], [ %17, %5 ]
  %20 = load ptr, ptr @prepare_owner, align 4
  %21 = tail call ptr @llvm.thread.pointer() #22
  %22 = icmp ne ptr %20, %21
  %23 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %18
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, ptr @prepare_refcnt, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35, !prof !11

33:                                               ; preds = %27
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %34 = load i32, ptr @prepare_refcnt, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %28, %27 ]
  %37 = add i32 %36, -1
  store i32 %37, ptr @prepare_refcnt, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %40

40:                                               ; preds = %39, %35
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @clk_is_match(ptr noundef readonly %0, ptr noundef readonly %1) #13 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  %10 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %8, %4
  br label %17

17:                                               ; preds = %16, %12, %2
  %18 = phi i1 [ false, %16 ], [ true, %2 ], [ true, %12 ]
  ret i1 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_debug_init() #10 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.48, ptr noundef null) #22
  store ptr %1, ptr @rootdir, align 4
  %2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @all_lists, ptr noundef nonnull @clk_summary_fops) #22
  %3 = load ptr, ptr @rootdir, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @all_lists, ptr noundef nonnull @clk_dump_fops) #22
  %5 = load ptr, ptr @rootdir, align 4
  %6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @orphan_list, ptr noundef nonnull @clk_summary_fops) #22
  %7 = load ptr, ptr @rootdir, align 4
  %8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 292, ptr noundef %7, ptr noundef nonnull @orphan_list, ptr noundef nonnull @clk_dump_fops) #22
  tail call void @mutex_lock(ptr noundef nonnull @clk_debug_lock) #22
  %9 = load ptr, ptr @clk_debug_list, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -124
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %14, %0
  %15 = phi ptr [ %20, %14 ], [ %11, %0 ]
  %16 = load ptr, ptr @rootdir, align 4
  tail call fastcc void @clk_debug_create_one(ptr noundef nonnull %15, ptr noundef %16)
  %17 = getelementptr inbounds %struct.clk_core, ptr %15, i32 0, i32 31
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -124
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %0
  store i1 true, ptr @inited, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @clk_debug_lock) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_create_clk(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %1, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %8
  store ptr %9, ptr %11, align 8
  %14 = getelementptr inbounds %struct.clk, ptr %11, i32 0, i32 2
  store ptr %2, ptr %14, align 8
  %15 = tail call ptr @kstrdup_const(ptr noundef %3, i32 noundef 3264) #22
  %16 = getelementptr inbounds %struct.clk, ptr %11, i32 0, i32 3
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk, ptr %11, i32 0, i32 5
  store i32 -1, ptr %17, align 4
  %18 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %38, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.clk, ptr %11, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i1 @try_module_get(ptr noundef %22) #22
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %16, align 4
  tail call void @kfree_const(ptr noundef %25) #22
  tail call void @kfree(ptr noundef nonnull %11) #22
  br label %38

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #22, !srcloc !15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #22, !srcloc !33
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !11

31:                                               ; preds = %26
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %31, %26
  %36 = phi i32 [ 2, %26 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #22
  br label %37

37:                                               ; preds = %35, %31
  tail call fastcc void @clk_core_link_consumer(ptr noundef %9, ptr noundef nonnull %11)
  br label %38

38:                                               ; preds = %37, %24, %13, %8, %4
  %39 = phi ptr [ %11, %37 ], [ inttoptr (i32 -2 to ptr), %24 ], [ %11, %13 ], [ %1, %4 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_link_consumer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @clk_prepare_lock()
  %3 = getelementptr inbounds %struct.clk, ptr %1, i32 0, i32 7
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  store volatile ptr %5, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  store volatile ptr %3, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  store volatile ptr %3, ptr %4, align 4
  %10 = getelementptr inbounds %struct.clk, ptr %1, i32 0, i32 7, i32 1
  store volatile ptr %4, ptr %10, align 4
  %11 = load ptr, ptr @prepare_owner, align 4
  %12 = tail call ptr @llvm.thread.pointer() #22
  %13 = icmp ne ptr %11, %12
  %14 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %9
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %18

18:                                               ; preds = %17, %9
  %19 = load i32, ptr @prepare_refcnt, align 4
  %20 = icmp eq i32 %19, 0
  %21 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %26, !prof !11

24:                                               ; preds = %18
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %25 = load i32, ptr @prepare_refcnt, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ %25, %24 ], [ %19, %18 ]
  %28 = add i32 %27, -1
  store i32 %28, ptr @prepare_refcnt, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %31

31:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_hw_get_clk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.clk_core, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %13 = tail call ptr @clk_hw_create_clk(ptr noundef %5, ptr noundef %0, ptr noundef %12, ptr noundef %1)
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %8, %4, %2
  %16 = phi ptr [ null, %2 ], [ %6, %4 ], [ %14, %12 ], [ null, %8 ]
  %17 = tail call fastcc ptr @__clk_register(ptr noundef %0, ptr noundef %16, ptr noundef %1)
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__clk_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.clk_hw, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store ptr null, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 136) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %519, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  %11 = tail call ptr @kstrdup_const(ptr noundef %10, i32 noundef 3264) #22
  store ptr %11, ptr %7, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %517, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3901, i32 noundef 9, ptr noundef null) #22
  br label %514

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 1
  store ptr %15, ptr %19, align 4
  %20 = icmp eq ptr %0, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %23 = load i16, ptr %22, align 8
  %24 = and i16 %23, 7
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 17
  store i8 1, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 4
  store ptr %0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 5
  store ptr %1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.device_driver, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 3
  store ptr %36, ptr %37, align 4
  br label %41

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 4
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 5
  store ptr %1, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %34, %28
  %42 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 2
  store ptr %2, ptr %42, align 8
  %43 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 15
  store i32 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 8
  store i8 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 21
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 22
  store i32 -1, ptr %50, align 8
  %51 = load i8, ptr %46, align 4
  %52 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq i8 %51, 0
  br i1 %58, label %127, label %59

59:                                               ; preds = %41
  %60 = zext i8 %51 to i32
  %61 = mul nuw nsw i32 %60, 20
  %62 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #26
  %63 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 7
  store ptr %62, ptr %63, align 4
  %64 = icmp eq ptr %62, null
  br i1 %64, label %514, label %65

65:                                               ; preds = %59
  %66 = icmp eq ptr %53, null
  %67 = icmp eq ptr %57, null
  %68 = icmp eq ptr %55, null
  br label %69

69:                                               ; preds = %123, %65
  %70 = phi ptr [ %62, %65 ], [ %125, %123 ]
  %71 = phi i32 [ 0, %65 ], [ %124, %123 ]
  %72 = getelementptr inbounds %struct.clk_parent_map, ptr %70, i32 0, i32 4
  store i32 -1, ptr %72, align 4
  br i1 %66, label %86, label %73

73:                                               ; preds = %69
  %74 = getelementptr ptr, ptr %53, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %81, !prof !11

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3827, i32 noundef 9, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.clk_core_populate_parent_map, ptr noundef %78) #22
  %79 = load ptr, ptr %74, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %77, %73
  %82 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %83 = getelementptr inbounds %struct.clk_parent_map, ptr %70, i32 0, i32 3
  %84 = tail call ptr @kstrdup_const(ptr noundef nonnull %82, i32 noundef 3264) #22
  store ptr %84, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %112, label %123

86:                                               ; preds = %69
  br i1 %67, label %107, label %87

87:                                               ; preds = %86
  %88 = getelementptr %struct.clk_parent_data, ptr %57, i32 %71
  %89 = load ptr, ptr %88, align 4
  store ptr %89, ptr %70, align 4
  %90 = getelementptr %struct.clk_parent_data, ptr %57, i32 %71, i32 3
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %72, align 4
  %92 = getelementptr %struct.clk_parent_data, ptr %57, i32 %71, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.clk_parent_map, ptr %70, i32 0, i32 2
  %97 = tail call ptr @kstrdup_const(ptr noundef nonnull %93, i32 noundef 3264) #22
  store ptr %97, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %112, label %99

99:                                               ; preds = %95, %87
  %100 = getelementptr %struct.clk_parent_data, ptr %57, i32 %71, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %123, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.clk_parent_map, ptr %70, i32 0, i32 3
  %105 = tail call ptr @kstrdup_const(ptr noundef nonnull %101, i32 noundef 3264) #22
  store ptr %105, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %123

107:                                              ; preds = %86
  br i1 %68, label %111, label %108

108:                                              ; preds = %107
  %109 = getelementptr ptr, ptr %55, i32 %71
  %110 = load ptr, ptr %109, align 4
  store ptr %110, ptr %70, align 4
  br label %123

111:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3843, i32 noundef 9, ptr noundef nonnull @.str.105) #22
  br label %112

112:                                              ; preds = %111, %103, %95, %81, %77
  %113 = phi i32 [ -22, %111 ], [ -22, %77 ], [ -12, %81 ], [ -12, %95 ], [ -12, %103 ]
  br label %114

114:                                              ; preds = %114, %112
  %115 = phi i32 [ %71, %112 ], [ %120, %114 ]
  %116 = getelementptr %struct.clk_parent_map, ptr %62, i32 %115, i32 3
  %117 = load ptr, ptr %116, align 4
  tail call void @kfree_const(ptr noundef %117) #22
  %118 = getelementptr %struct.clk_parent_map, ptr %62, i32 %115, i32 2
  %119 = load ptr, ptr %118, align 4
  tail call void @kfree_const(ptr noundef %119) #22
  %120 = add nsw i32 %115, -1
  %121 = icmp sgt i32 %115, 0
  br i1 %121, label %114, label %122

122:                                              ; preds = %114
  tail call void @kfree(ptr noundef nonnull %62) #22
  br label %514

123:                                              ; preds = %108, %103, %99, %81
  %124 = add nuw nsw i32 %71, 1
  %125 = getelementptr %struct.clk_parent_map, ptr %70, i32 1
  %126 = icmp eq i32 %124, %60
  br i1 %126, label %127, label %69

127:                                              ; preds = %123, %41
  %128 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 28
  store ptr null, ptr %128, align 8
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 36) #25
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.clk_hw, ptr %2, i32 0, i32 1
  store ptr inttoptr (i32 -12 to ptr), ptr %133, align 4
  br label %141

134:                                              ; preds = %127
  store ptr %7, ptr %130, align 8
  %135 = getelementptr inbounds %struct.clk, ptr %130, i32 0, i32 2
  store ptr null, ptr %135, align 8
  %136 = tail call ptr @kstrdup_const(ptr noundef null, i32 noundef 3264) #22
  %137 = getelementptr inbounds %struct.clk, ptr %130, i32 0, i32 3
  store ptr %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.clk, ptr %130, i32 0, i32 5
  store i32 -1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.clk_hw, ptr %2, i32 0, i32 1
  store ptr %130, ptr %139, align 4
  %140 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %141, label %144

141:                                              ; preds = %134, %132
  %142 = phi ptr [ inttoptr (i32 -12 to ptr), %132 ], [ %130, %134 ]
  %143 = ptrtoint ptr %142 to i32
  br label %495

144:                                              ; preds = %134
  tail call fastcc void @clk_core_link_consumer(ptr noundef nonnull %7, ptr noundef nonnull %130)
  tail call fastcc void @clk_prepare_lock() #22
  %145 = load ptr, ptr %42, align 8
  store ptr %7, ptr %145, align 4
  %146 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 17
  %147 = load i8, ptr %146, align 1, !range !13
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 4
  %151 = load ptr, ptr %150, align 8
  %152 = tail call i32 @__pm_runtime_resume(ptr noundef %151, i32 noundef 4) #22
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load ptr, ptr %150, align 8
  %156 = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %156) #22, !srcloc !15
  %157 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %156, ptr %156, i32 0, i32 -1, ptr elementtype(i32) %156) #22, !srcloc !16
  %158 = extractvalue { i32, i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %394, label %160

160:                                              ; preds = %154
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %394

161:                                              ; preds = %149, %144
  %162 = load ptr, ptr %7, align 8
  %163 = icmp eq ptr %162, null
  br i1 %163, label %198, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr @clk_root_list, align 4
  %166 = icmp eq ptr %165, null
  %167 = getelementptr i8, ptr %165, i32 -104
  %168 = icmp eq ptr %167, null
  %169 = or i1 %166, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %174, %164
  %171 = phi ptr [ %178, %174 ], [ %167, %164 ]
  %172 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %162, ptr noundef nonnull %171) #22
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %384

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.clk_core, ptr %171, i32 0, i32 27
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  %178 = getelementptr i8, ptr %176, i32 -104
  %179 = icmp eq ptr %178, null
  %180 = or i1 %177, %179
  br i1 %180, label %181, label %170

181:                                              ; preds = %174, %164
  %182 = load ptr, ptr @clk_orphan_list, align 4
  %183 = icmp eq ptr %182, null
  %184 = getelementptr i8, ptr %182, i32 -104
  %185 = icmp eq ptr %184, null
  %186 = or i1 %183, %185
  br i1 %186, label %198, label %187

187:                                              ; preds = %191, %181
  %188 = phi ptr [ %195, %191 ], [ %184, %181 ]
  %189 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef nonnull %162, ptr noundef nonnull %188) #22
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %384

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.clk_core, ptr %188, i32 0, i32 27
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  %195 = getelementptr i8, ptr %193, i32 -104
  %196 = icmp eq ptr %195, null
  %197 = or i1 %194, %196
  br i1 %197, label %198, label %187

198:                                              ; preds = %191, %181, %161
  %199 = load ptr, ptr %19, align 4
  %200 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 15
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %217, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 11
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 12
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %207, %203
  %212 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 10
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %211, %207
  %216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %162) #23
  br label %384

217:                                              ; preds = %211, %198
  %218 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 13
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 14
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %162) #23
  br label %384

227:                                              ; preds = %221, %217
  %228 = load i8, ptr %48, align 8
  %229 = icmp ugt i8 %228, 1
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 14
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %162) #23
  br label %384

236:                                              ; preds = %230, %227
  %237 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 16
  %238 = load ptr, ptr %237, align 4
  %239 = icmp ne ptr %238, null
  %240 = select i1 %220, i1 true, i1 %202
  %241 = select i1 %239, i1 %240, i1 false
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %162) #23
  br label %384

244:                                              ; preds = %236
  %245 = getelementptr inbounds %struct.clk_ops, ptr %199, i32 0, i32 22
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %254, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %42, align 8
  %250 = tail call i32 %246(ptr noundef %249) #22
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %384

252:                                              ; preds = %248
  %253 = load i8, ptr %48, align 8
  br label %254

254:                                              ; preds = %252, %244
  %255 = phi i8 [ %253, %252 ], [ %228, %244 ]
  %256 = icmp ugt i8 %255, 1
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load ptr, ptr %19, align 4
  %259 = getelementptr inbounds %struct.clk_ops, ptr %258, i32 0, i32 14
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %42, align 8
  %264 = tail call zeroext i8 %260(ptr noundef %263) #22
  br label %265

265:                                              ; preds = %262, %257, %254
  %266 = phi i8 [ %264, %262 ], [ 0, %257 ], [ 0, %254 ]
  %267 = tail call fastcc ptr @clk_core_get_parent_by_index(ptr noundef %7, i8 noundef zeroext %266) #22
  %268 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 6
  store ptr %267, ptr %268, align 8
  %269 = icmp eq ptr %267, null
  br i1 %269, label %277, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  %272 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 26
  %273 = load ptr, ptr %272, align 4
  store volatile ptr %273, ptr %271, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %301, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.hlist_node, ptr %273, i32 0, i32 1
  store volatile ptr %271, ptr %276, align 4
  br label %301

277:                                              ; preds = %265
  %278 = load i8, ptr %48, align 8
  %279 = icmp eq i8 %278, 0
  %280 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  br i1 %279, label %281, label %284

281:                                              ; preds = %277
  %282 = load ptr, ptr @clk_root_list, align 4
  store volatile ptr %282, ptr %280, align 8
  %283 = icmp eq ptr %282, null
  br i1 %283, label %292, label %287

284:                                              ; preds = %277
  %285 = load ptr, ptr @clk_orphan_list, align 4
  store volatile ptr %285, ptr %280, align 8
  %286 = icmp eq ptr %285, null
  br i1 %286, label %292, label %287

287:                                              ; preds = %284, %281
  %288 = phi ptr [ %282, %281 ], [ %285, %284 ]
  %289 = phi ptr [ @clk_root_list, %281 ], [ @clk_orphan_list, %284 ]
  %290 = phi i8 [ 0, %281 ], [ 1, %284 ]
  %291 = getelementptr inbounds %struct.hlist_node, ptr %288, i32 0, i32 1
  store volatile ptr %280, ptr %291, align 4
  br label %292

292:                                              ; preds = %287, %284, %281
  %293 = phi ptr [ @clk_root_list, %281 ], [ @clk_orphan_list, %284 ], [ %289, %287 ]
  %294 = phi i8 [ 0, %281 ], [ 1, %284 ], [ %290, %287 ]
  store volatile ptr %280, ptr %293, align 4
  %295 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27, i32 1
  store volatile ptr %293, ptr %295, align 4
  %296 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 16
  store i8 %294, ptr %296, align 4
  %297 = load ptr, ptr %19, align 4
  %298 = getelementptr inbounds %struct.clk_ops, ptr %297, i32 0, i32 17
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %321, label %312

301:                                              ; preds = %275, %270
  store volatile ptr %271, ptr %272, align 4
  %302 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27, i32 1
  store volatile ptr %272, ptr %302, align 4
  %303 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 16
  %304 = load i8, ptr %303, align 4, !range !13
  %305 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 16
  store i8 %304, ptr %305, align 4
  %306 = load ptr, ptr %19, align 4
  %307 = getelementptr inbounds %struct.clk_ops, ptr %306, i32 0, i32 17
  %308 = load ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  %310 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 23
  %311 = load i32, ptr %310, align 4
  br i1 %309, label %319, label %312

312:                                              ; preds = %301, %292
  %313 = phi ptr [ %299, %292 ], [ %308, %301 ]
  %314 = phi i32 [ 0, %292 ], [ %311, %301 ]
  %315 = load ptr, ptr %42, align 8
  %316 = tail call i32 %313(ptr noundef %315, i32 noundef %314) #22
  %317 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 23
  store i32 %316, ptr %317, align 4
  %318 = load ptr, ptr %19, align 4
  br label %323

319:                                              ; preds = %301
  %320 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 23
  store i32 %311, ptr %320, align 4
  br label %323

321:                                              ; preds = %292
  %322 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 23
  store i32 0, ptr %322, align 4
  br label %323

323:                                              ; preds = %321, %319, %312
  %324 = phi ptr [ %306, %319 ], [ %297, %321 ], [ %318, %312 ]
  %325 = getelementptr inbounds %struct.clk_ops, ptr %324, i32 0, i32 18
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %337, label %328

328:                                              ; preds = %323
  %329 = load ptr, ptr %42, align 8
  %330 = tail call i32 %326(ptr noundef %329) #22
  %331 = icmp sgt i32 %330, -1
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 24
  store i32 %330, ptr %333, align 8
  br label %337

334:                                              ; preds = %328
  %335 = load ptr, ptr %7, align 8
  %336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %335) #23
  br label %384

337:                                              ; preds = %332, %323
  %338 = tail call fastcc i32 @clk_core_update_duty_cycle_nolock(ptr noundef %7) #22
  %339 = load ptr, ptr %19, align 4
  %340 = getelementptr inbounds %struct.clk_ops, ptr %339, i32 0, i32 10
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %359, label %343

343:                                              ; preds = %337
  %344 = load ptr, ptr %42, align 8
  br i1 %269, label %356, label %345

345:                                              ; preds = %343
  %346 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 8
  %347 = load i8, ptr %346, align 4
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %353, label %349

349:                                              ; preds = %345
  %350 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 6
  %351 = load ptr, ptr %350, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %356, label %353

353:                                              ; preds = %349, %345
  %354 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 10
  %355 = load i32, ptr %354, align 4
  br label %356

356:                                              ; preds = %353, %349, %343
  %357 = phi i32 [ %355, %353 ], [ 0, %343 ], [ 0, %349 ]
  %358 = tail call i32 %341(ptr noundef %344, i32 noundef %357) #22
  br label %363

359:                                              ; preds = %337
  br i1 %269, label %363, label %360

360:                                              ; preds = %359
  %361 = getelementptr inbounds %struct.clk_core, ptr %267, i32 0, i32 10
  %362 = load i32, ptr %361, align 4
  br label %363

363:                                              ; preds = %360, %359, %356
  %364 = phi i32 [ %358, %356 ], [ %362, %360 ], [ 0, %359 ]
  %365 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 11
  store i32 %364, ptr %365, align 8
  %366 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 10
  store i32 %364, ptr %366, align 4
  %367 = load i32, ptr %45, align 8
  %368 = and i32 %367, 2048
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %382, label %370

370:                                              ; preds = %363
  %371 = tail call fastcc i32 @clk_core_prepare(ptr noundef %7) #22
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %7, align 8
  %375 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %374) #23
  br label %384

376:                                              ; preds = %370
  %377 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %7) #22
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr %7, align 8
  %381 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.__clk_core_init, ptr noundef %380) #23
  tail call fastcc void @clk_core_unprepare(ptr noundef %7) #22
  br label %384

382:                                              ; preds = %376, %363
  tail call fastcc void @clk_core_reparent_orphans_nolock() #22
  %383 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 32
  store volatile i32 1, ptr %383, align 4
  br label %384

384:                                              ; preds = %382, %379, %373, %334, %248, %242, %234, %225, %215, %187, %170
  %385 = phi i32 [ %250, %248 ], [ %330, %334 ], [ %371, %373 ], [ %377, %379 ], [ 0, %382 ], [ -22, %242 ], [ -22, %234 ], [ -22, %225 ], [ -22, %215 ], [ -17, %187 ], [ -17, %170 ]
  %386 = load i8, ptr %146, align 1, !range !13
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 4
  %390 = load ptr, ptr %389, align 8
  %391 = tail call i32 @__pm_runtime_idle(ptr noundef %390, i32 noundef 4) #22
  br label %392

392:                                              ; preds = %388, %384
  %393 = icmp eq i32 %385, 0
  br i1 %393, label %427, label %394

394:                                              ; preds = %392, %160, %154
  %395 = phi i32 [ %385, %392 ], [ %152, %154 ], [ %152, %160 ]
  %396 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  %397 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27, i32 1
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %406, label %400

400:                                              ; preds = %394
  %401 = load ptr, ptr %396, align 8
  store volatile ptr %401, ptr %398, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %405, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.hlist_node, ptr %401, i32 0, i32 1
  store volatile ptr %398, ptr %404, align 4
  br label %405

405:                                              ; preds = %403, %400
  store ptr null, ptr %396, align 8
  store ptr null, ptr %397, align 4
  br label %406

406:                                              ; preds = %405, %394
  %407 = load ptr, ptr %42, align 8
  store ptr null, ptr %407, align 4
  %408 = load ptr, ptr @prepare_owner, align 4
  %409 = tail call ptr @llvm.thread.pointer() #22
  %410 = icmp ne ptr %408, %409
  %411 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %412 = xor i1 %411, true
  %413 = select i1 %410, i1 %412, i1 false
  br i1 %413, label %414, label %415, !prof !11

414:                                              ; preds = %406
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %415

415:                                              ; preds = %414, %406
  %416 = load i32, ptr @prepare_refcnt, align 4
  %417 = icmp eq i32 %416, 0
  %418 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %419 = xor i1 %418, true
  %420 = select i1 %417, i1 %419, i1 false
  br i1 %420, label %421, label %423, !prof !11

421:                                              ; preds = %415
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %422 = load i32, ptr @prepare_refcnt, align 4
  br label %423

423:                                              ; preds = %421, %415
  %424 = phi i32 [ %422, %421 ], [ %416, %415 ]
  %425 = add i32 %424, -1
  store i32 %425, ptr @prepare_refcnt, align 4
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %459, label %462

427:                                              ; preds = %392
  %428 = load ptr, ptr @prepare_owner, align 4
  %429 = tail call ptr @llvm.thread.pointer() #22
  %430 = icmp ne ptr %428, %429
  %431 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %432 = xor i1 %431, true
  %433 = select i1 %430, i1 %432, i1 false
  br i1 %433, label %434, label %435, !prof !11

434:                                              ; preds = %427
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %435

435:                                              ; preds = %434, %427
  %436 = load i32, ptr @prepare_refcnt, align 4
  %437 = icmp eq i32 %436, 0
  %438 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %439 = xor i1 %438, true
  %440 = select i1 %437, i1 %439, i1 false
  br i1 %440, label %441, label %443, !prof !11

441:                                              ; preds = %435
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %442 = load i32, ptr @prepare_refcnt, align 4
  br label %443

443:                                              ; preds = %441, %435
  %444 = phi i32 [ %442, %441 ], [ %436, %435 ]
  %445 = add i32 %444, -1
  store i32 %445, ptr @prepare_refcnt, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %448

447:                                              ; preds = %443
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %448

448:                                              ; preds = %447, %443
  tail call void @mutex_lock(ptr noundef nonnull @clk_debug_lock) #22
  %449 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 31
  %450 = load ptr, ptr @clk_debug_list, align 4
  store volatile ptr %450, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %454, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.hlist_node, ptr %450, i32 0, i32 1
  store volatile ptr %449, ptr %453, align 4
  br label %454

454:                                              ; preds = %452, %448
  store volatile ptr %449, ptr @clk_debug_list, align 4
  %455 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 31, i32 1
  store volatile ptr @clk_debug_list, ptr %455, align 8
  %456 = load i1, ptr @inited, align 4
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load ptr, ptr @rootdir, align 4
  tail call fastcc void @clk_debug_create_one(ptr noundef %7, ptr noundef %458) #22
  br label %460

459:                                              ; preds = %423
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %462

460:                                              ; preds = %457, %454
  tail call void @mutex_unlock(ptr noundef nonnull @clk_debug_lock) #22
  %461 = load ptr, ptr %139, align 4
  br label %522

462:                                              ; preds = %459, %423
  tail call fastcc void @clk_prepare_lock()
  %463 = load ptr, ptr %139, align 4
  %464 = getelementptr inbounds %struct.clk, ptr %463, i32 0, i32 7
  %465 = load ptr, ptr %464, align 4
  %466 = getelementptr inbounds %struct.clk, ptr %463, i32 0, i32 7, i32 1
  %467 = load ptr, ptr %466, align 4
  store volatile ptr %465, ptr %467, align 4
  %468 = icmp eq ptr %465, null
  br i1 %468, label %471, label %469

469:                                              ; preds = %462
  %470 = getelementptr inbounds %struct.hlist_node, ptr %465, i32 0, i32 1
  store volatile ptr %467, ptr %470, align 4
  br label %471

471:                                              ; preds = %469, %462
  store ptr inttoptr (i32 256 to ptr), ptr %464, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %466, align 4
  %472 = load ptr, ptr @prepare_owner, align 4
  %473 = icmp ne ptr %472, %409
  %474 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %475 = xor i1 %474, true
  %476 = select i1 %473, i1 %475, i1 false
  br i1 %476, label %477, label %478, !prof !11

477:                                              ; preds = %471
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %478

478:                                              ; preds = %477, %471
  %479 = load i32, ptr @prepare_refcnt, align 4
  %480 = icmp eq i32 %479, 0
  %481 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %482 = xor i1 %481, true
  %483 = select i1 %480, i1 %482, i1 false
  br i1 %483, label %484, label %486, !prof !11

484:                                              ; preds = %478
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %485 = load i32, ptr @prepare_refcnt, align 4
  br label %486

486:                                              ; preds = %484, %478
  %487 = phi i32 [ %485, %484 ], [ %479, %478 ]
  %488 = add i32 %487, -1
  store i32 %488, ptr @prepare_refcnt, align 4
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %486
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %491

491:                                              ; preds = %490, %486
  %492 = load ptr, ptr %139, align 4
  %493 = getelementptr inbounds %struct.clk, ptr %492, i32 0, i32 3
  %494 = load ptr, ptr %493, align 4
  tail call void @kfree_const(ptr noundef %494) #22
  tail call void @kfree(ptr noundef %492) #22
  store ptr null, ptr %139, align 4
  br label %495

495:                                              ; preds = %491, %141
  %496 = phi i32 [ %143, %141 ], [ %395, %491 ]
  %497 = load i8, ptr %48, align 8
  %498 = icmp eq i8 %497, 0
  br i1 %498, label %514, label %499

499:                                              ; preds = %495
  %500 = zext i8 %497 to i32
  %501 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 7
  br label %502

502:                                              ; preds = %502, %499
  %503 = phi i32 [ %500, %499 ], [ %504, %502 ]
  %504 = add nsw i32 %503, -1
  %505 = load ptr, ptr %501, align 4
  %506 = getelementptr %struct.clk_parent_map, ptr %505, i32 %504, i32 3
  %507 = load ptr, ptr %506, align 4
  tail call void @kfree_const(ptr noundef %507) #22
  %508 = load ptr, ptr %501, align 4
  %509 = getelementptr %struct.clk_parent_map, ptr %508, i32 %504, i32 2
  %510 = load ptr, ptr %509, align 4
  tail call void @kfree_const(ptr noundef %510) #22
  %511 = icmp ugt i32 %503, 1
  br i1 %511, label %502, label %512

512:                                              ; preds = %502
  %513 = load ptr, ptr %501, align 4
  tail call void @kfree(ptr noundef %513) #22
  br label %514

514:                                              ; preds = %512, %495, %122, %59, %17
  %515 = phi i32 [ -22, %17 ], [ %113, %122 ], [ -12, %59 ], [ %496, %495 ], [ %496, %512 ]
  %516 = load ptr, ptr %7, align 8
  tail call void @kfree_const(ptr noundef %516) #22
  br label %517

517:                                              ; preds = %514, %9
  %518 = phi i32 [ %515, %514 ], [ -12, %9 ]
  tail call void @kfree(ptr noundef nonnull %7) #22
  br label %519

519:                                              ; preds = %517, %3
  %520 = phi i32 [ %518, %517 ], [ -12, %3 ]
  %521 = inttoptr i32 %520 to ptr
  br label %522

522:                                              ; preds = %519, %460
  %523 = phi ptr [ %521, %519 ], [ %461, %460 ]
  ret ptr %523
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_hw_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %8, %4, %2
  %16 = phi ptr [ null, %2 ], [ %6, %4 ], [ %14, %12 ], [ null, %8 ]
  %17 = tail call fastcc ptr @__clk_register(ptr noundef %0, ptr noundef %16, ptr noundef %1)
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %17 to i32
  %20 = select i1 %18, i32 %19, i32 0
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_hw_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @__clk_register(ptr noundef null, ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %3 to i32
  %6 = select i1 %4, i32 %5, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %195, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = load i1, ptr @clk_unregister.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %3
  store i1 true, ptr @clk_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4118, i32 noundef 9, ptr noundef null) #22
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %195, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @clk_debug_lock) #22
  %12 = getelementptr inbounds %struct.clk_core, ptr %11, i32 0, i32 31
  %13 = getelementptr inbounds %struct.clk_core, ptr %11, i32 0, i32 31, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %12, align 4
  store volatile ptr %17, ptr %14, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %14, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  store ptr null, ptr %12, align 4
  store ptr null, ptr %13, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = getelementptr inbounds %struct.clk_core, ptr %11, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  tail call void @debugfs_remove(ptr noundef %24) #22
  store ptr null, ptr %23, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @clk_debug_lock) #22
  tail call fastcc void @clk_prepare_lock()
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.clk_core, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @clk_nodrv_ops
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load ptr, ptr %25, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.clk_unregister, ptr noundef %30) #23
  %32 = tail call ptr @llvm.thread.pointer() #22
  br label %174

33:                                               ; preds = %22
  %34 = tail call fastcc i32 @clk_enable_lock()
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.clk_core, ptr %35, i32 0, i32 1
  store ptr @clk_nodrv_ops, ptr %36, align 4
  %37 = load ptr, ptr @enable_owner, align 4
  %38 = tail call ptr @llvm.thread.pointer() #22
  %39 = icmp ne ptr %37, %38
  %40 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %33
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, ptr @enable_refcnt, align 4
  %46 = icmp eq i32 %45, 0
  %47 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52, !prof !11

50:                                               ; preds = %44
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %51 = load i32, ptr @enable_refcnt, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %51, %50 ], [ %45, %44 ]
  %54 = add i32 %53, -1
  store i32 %54, ptr @enable_refcnt, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %34) #22
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr inbounds %struct.clk_ops, ptr %27, i32 0, i32 23
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.clk_core, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void %59(ptr noundef %64) #22
  br label %65

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.clk_core, ptr %66, i32 0, i32 26
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  %70 = getelementptr i8, ptr %68, i32 -104
  %71 = icmp eq ptr %70, null
  %72 = or i1 %69, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %73, %65
  %74 = phi ptr [ %79, %73 ], [ %70, %65 ]
  %75 = getelementptr inbounds %struct.clk_core, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = tail call fastcc i32 @clk_core_set_parent_nolock(ptr noundef nonnull %74, ptr noundef null)
  %78 = icmp eq ptr %76, null
  %79 = getelementptr i8, ptr %76, i32 -104
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %82, label %73

82:                                               ; preds = %73
  %83 = load ptr, ptr %0, align 4
  br label %84

84:                                               ; preds = %82, %65
  %85 = phi ptr [ %83, %82 ], [ %66, %65 ]
  %86 = load ptr, ptr @all_lists, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %110, label %88

88:                                               ; preds = %104, %84
  %89 = phi ptr [ %106, %104 ], [ %86, %84 ]
  %90 = phi ptr [ %105, %104 ], [ @all_lists, %84 ]
  %91 = load ptr, ptr %89, align 4
  %92 = icmp eq ptr %91, null
  %93 = getelementptr i8, ptr %91, i32 -104
  %94 = icmp eq ptr %93, null
  %95 = or i1 %92, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %96, %88
  %97 = phi ptr [ %101, %96 ], [ %93, %88 ]
  tail call fastcc void @clk_core_evict_parent_cache_subtree(ptr noundef nonnull %97, ptr noundef %85) #22
  %98 = getelementptr inbounds %struct.clk_core, ptr %97, i32 0, i32 27
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  %101 = getelementptr i8, ptr %99, i32 -104
  %102 = icmp eq ptr %101, null
  %103 = or i1 %100, %102
  br i1 %103, label %104, label %96

104:                                              ; preds = %96, %88
  %105 = getelementptr ptr, ptr %90, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %88

108:                                              ; preds = %104
  %109 = load ptr, ptr %0, align 4
  br label %110

110:                                              ; preds = %108, %84
  %111 = phi ptr [ %109, %108 ], [ %85, %84 ]
  %112 = getelementptr inbounds %struct.clk_core, ptr %111, i32 0, i32 27
  %113 = getelementptr inbounds %struct.clk_core, ptr %111, i32 0, i32 27, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %110
  %117 = load ptr, ptr %112, align 4
  store volatile ptr %117, ptr %114, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.hlist_node, ptr %117, i32 0, i32 1
  store volatile ptr %114, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %116
  store ptr null, ptr %112, align 4
  store ptr null, ptr %113, align 4
  %122 = load ptr, ptr %0, align 4
  br label %123

123:                                              ; preds = %121, %110
  %124 = phi ptr [ %111, %110 ], [ %122, %121 ]
  %125 = getelementptr inbounds %struct.clk_core, ptr %124, i32 0, i32 19
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr %124, align 4
  %130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.clk_unregister, ptr noundef %129) #23
  %131 = load ptr, ptr %0, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi ptr [ %131, %128 ], [ %124, %123 ]
  %134 = getelementptr inbounds %struct.clk_core, ptr %133, i32 0, i32 20
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %133, align 4
  %139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.clk_unregister, ptr noundef %138) #23
  %140 = load ptr, ptr %0, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi ptr [ %140, %137 ], [ %133, %132 ]
  %143 = getelementptr inbounds %struct.clk_core, ptr %142, i32 0, i32 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %143) #22, !srcloc !15
  %144 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %143, ptr %143, i32 1, ptr elementtype(i32) %143) #22, !srcloc !35
  %145 = extractvalue { i32, i32, i32 } %144, 0
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = icmp sgt i32 %145, 0
  br i1 %148, label %171, label %149, !prof !10

149:                                              ; preds = %147
  tail call void @refcount_warn_saturate(ptr noundef %143, i32 noundef 3) #22
  br label %171

150:                                              ; preds = %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !36
  %151 = getelementptr %struct.clk_core, ptr %142, i32 0, i32 8
  %152 = load i8, ptr %151, align 4
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %150
  %155 = zext i8 %152 to i32
  %156 = getelementptr %struct.clk_core, ptr %142, i32 0, i32 7
  br label %157

157:                                              ; preds = %157, %154
  %158 = phi i32 [ %155, %154 ], [ %159, %157 ]
  %159 = add nsw i32 %158, -1
  %160 = load ptr, ptr %156, align 4
  %161 = getelementptr %struct.clk_parent_map, ptr %160, i32 %159, i32 3
  %162 = load ptr, ptr %161, align 4
  tail call void @kfree_const(ptr noundef %162) #22
  %163 = load ptr, ptr %156, align 4
  %164 = getelementptr %struct.clk_parent_map, ptr %163, i32 %159, i32 2
  %165 = load ptr, ptr %164, align 4
  tail call void @kfree_const(ptr noundef %165) #22
  %166 = icmp ugt i32 %158, 1
  br i1 %166, label %157, label %167

167:                                              ; preds = %157
  %168 = load ptr, ptr %156, align 4
  tail call void @kfree(ptr noundef %168) #22
  br label %169

169:                                              ; preds = %167, %150
  %170 = load ptr, ptr %142, align 4
  tail call void @kfree_const(ptr noundef %170) #22
  tail call void @kfree(ptr noundef %142) #22
  br label %171

171:                                              ; preds = %169, %149, %147
  %172 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  tail call void @kfree_const(ptr noundef %173) #22
  tail call void @kfree(ptr noundef nonnull %0) #22
  br label %174

174:                                              ; preds = %171, %29
  %175 = phi ptr [ %38, %171 ], [ %32, %29 ]
  %176 = load ptr, ptr @prepare_owner, align 4
  %177 = icmp ne ptr %176, %175
  %178 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %179 = xor i1 %178, true
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %182, !prof !11

181:                                              ; preds = %174
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %182

182:                                              ; preds = %181, %174
  %183 = load i32, ptr @prepare_refcnt, align 4
  %184 = icmp eq i32 %183, 0
  %185 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %186 = xor i1 %185, true
  %187 = select i1 %184, i1 %186, i1 false
  br i1 %187, label %188, label %190, !prof !11

188:                                              ; preds = %182
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %189 = load i32, ptr @prepare_refcnt, align 4
  br label %190

190:                                              ; preds = %188, %182
  %191 = phi i32 [ %189, %188 ], [ %183, %182 ]
  %192 = add i32 %191, -1
  store i32 %192, ptr @prepare_refcnt, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %195

195:                                              ; preds = %194, %190, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_enable_lock() unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !37
  %2 = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @enable_lock) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #22, !srcloc !38
  %5 = load ptr, ptr @enable_owner, align 4
  %6 = tail call ptr @llvm.thread.pointer() #22
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr @enable_refcnt, align 4
  %10 = add i32 %9, 1
  br label %30

11:                                               ; preds = %4
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @enable_lock) #22
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i32 [ %12, %11 ], [ %1, %0 ]
  %15 = load ptr, ptr @enable_owner, align 4
  %16 = icmp ne ptr %15, null
  %17 = load i1, ptr @clk_enable_lock.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %13
  store i1 true, ptr @clk_enable_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef null) #22
  br label %21

21:                                               ; preds = %20, %13
  %22 = load i32, ptr @enable_refcnt, align 4
  %23 = icmp ne i32 %22, 0
  %24 = load i1, ptr @clk_enable_lock.__already_done.113, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %21
  store i1 true, ptr @clk_enable_lock.__already_done.113, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 181, i32 noundef 9, ptr noundef null) #22
  br label %28

28:                                               ; preds = %27, %21
  %29 = tail call ptr @llvm.thread.pointer() #22
  store ptr %29, ptr @enable_owner, align 4
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi i32 [ 1, %28 ], [ %10, %8 ]
  %32 = phi i32 [ %14, %28 ], [ %1, %8 ]
  store i32 %31, ptr @enable_refcnt, align 4
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_unregister_cb, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %11, %7, %5
  %19 = phi ptr [ null, %5 ], [ %9, %7 ], [ %17, %15 ], [ null, %11 ]
  %20 = tail call fastcc ptr @__clk_register(ptr noundef %0, ptr noundef %19, ptr noundef %1) #22
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store ptr %20, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %24

23:                                               ; preds = %18
  tail call void @devres_free(ptr noundef nonnull %3) #22
  br label %24

24:                                               ; preds = %23, %22, %2
  %25 = phi ptr [ %20, %23 ], [ %20, %22 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_unregister_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_hw_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_unregister_cb, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %15, %11, %7, %5
  %19 = phi ptr [ null, %5 ], [ %9, %7 ], [ %17, %15 ], [ null, %11 ]
  %20 = tail call fastcc ptr @__clk_register(ptr noundef %0, ptr noundef %19, ptr noundef %1) #22
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %25

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i32
  tail call void @devres_free(ptr noundef nonnull %3) #22
  br label %25

25:                                               ; preds = %23, %22, %2
  %26 = phi i32 [ -12, %2 ], [ %24, %23 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_hw_unregister_cb(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.clk_hw, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_unregister(ptr noundef %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_clk_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_clk_unregister_cb, ptr noundef nonnull @devm_clk_match, ptr noundef %1) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4280, i32 noundef 9, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_clk_match(ptr nocapture noundef readnone %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4255, i32 noundef 9, ptr noundef null) #22
  br label %9

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, %2
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 0, %5 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_clk_hw_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_clk_hw_unregister_cb, ptr noundef nonnull @devm_clk_hw_match, ptr noundef %1) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4296, i32 noundef 9, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_clk_hw_match(ptr nocapture noundef readnone %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4264, i32 noundef 9, ptr noundef null) #22
  br label %9

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, %2
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 0, %5 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_hw_get_clk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, %0
  %8 = load i1, ptr @devm_clk_hw_get_clk.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %3
  store i1 true, ptr @devm_clk_hw_get_clk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4325, i32 noundef 9, ptr noundef null) #22
  br label %12

12:                                               ; preds = %11, %3
  %13 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.clk_core, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load ptr, ptr %18, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi ptr [ %23, %22 ], [ %20, %15 ]
  %26 = tail call ptr @clk_hw_create_clk(ptr noundef %18, ptr noundef %1, ptr noundef %25, ptr noundef %2) #22
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store ptr %26, ptr %13, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %13) #22
  br label %30

29:                                               ; preds = %24
  tail call void @devres_free(ptr noundef nonnull %13) #22
  br label %30

30:                                               ; preds = %29, %28, %12
  %31 = phi ptr [ %26, %29 ], [ %26, %28 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_put(ptr noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__clk_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %100, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = load i1, ptr @__clk_put.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %3
  store i1 true, ptr @__clk_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4351, i32 noundef 9, ptr noundef null) #22
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %100, label %10

10:                                               ; preds = %9
  tail call fastcc void @clk_prepare_lock()
  %11 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !10

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4361, i32 noundef 9, ptr noundef null) #22
  %15 = load i32, ptr %11, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.clk_core, ptr %16, i32 0, i32 20
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 1, %15
  %20 = add i32 %19, %18
  store i32 %20, ptr %17, align 4
  %21 = load ptr, ptr %0, align 4
  tail call fastcc void @clk_core_rate_unprotect(ptr noundef %21)
  store i32 0, ptr %11, align 4
  br label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 7, i32 1
  %26 = load ptr, ptr %25, align 4
  store volatile ptr %24, ptr %26, align 4
  %27 = icmp eq ptr %24, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  store volatile ptr %26, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %22
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %31 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.clk_core, ptr %33, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %32, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, %35
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %30
  %42 = tail call fastcc i32 @clk_core_set_rate_nolock(ptr noundef %33, i32 noundef %35)
  %43 = load ptr, ptr %0, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi ptr [ %43, %41 ], [ %33, %37 ]
  %46 = getelementptr inbounds %struct.clk_core, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.clk_core, ptr %45, i32 0, i32 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #22, !srcloc !15
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #22, !srcloc !35
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = icmp sgt i32 %50, 0
  br i1 %53, label %76, label %54, !prof !10

54:                                               ; preds = %52
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #22
  br label %76

55:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !36
  %56 = getelementptr %struct.clk_core, ptr %45, i32 0, i32 8
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = zext i8 %57 to i32
  %61 = getelementptr %struct.clk_core, ptr %45, i32 0, i32 7
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i32 [ %60, %59 ], [ %64, %62 ]
  %64 = add nsw i32 %63, -1
  %65 = load ptr, ptr %61, align 4
  %66 = getelementptr %struct.clk_parent_map, ptr %65, i32 %64, i32 3
  %67 = load ptr, ptr %66, align 4
  tail call void @kfree_const(ptr noundef %67) #22
  %68 = load ptr, ptr %61, align 4
  %69 = getelementptr %struct.clk_parent_map, ptr %68, i32 %64, i32 2
  %70 = load ptr, ptr %69, align 4
  tail call void @kfree_const(ptr noundef %70) #22
  %71 = icmp ugt i32 %63, 1
  br i1 %71, label %62, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %73) #22
  br label %74

74:                                               ; preds = %72, %55
  %75 = load ptr, ptr %45, align 4
  tail call void @kfree_const(ptr noundef %75) #22
  tail call void @kfree(ptr noundef %45) #22
  br label %76

76:                                               ; preds = %74, %54, %52
  %77 = load ptr, ptr @prepare_owner, align 4
  %78 = tail call ptr @llvm.thread.pointer() #22
  %79 = icmp ne ptr %77, %78
  %80 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !11

83:                                               ; preds = %76
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, ptr @prepare_refcnt, align 4
  %86 = icmp eq i32 %85, 0
  %87 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %88 = xor i1 %87, true
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92, !prof !11

90:                                               ; preds = %84
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %91 = load i32, ptr @prepare_refcnt, align 4
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi i32 [ %91, %90 ], [ %85, %84 ]
  %94 = add i32 %93, -1
  store i32 %94, ptr @prepare_refcnt, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %97

97:                                               ; preds = %96, %92
  tail call void @module_put(ptr noundef %47) #22
  %98 = getelementptr inbounds %struct.clk, ptr %0, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  tail call void @kfree_const(ptr noundef %99) #22
  tail call void @kfree(ptr noundef nonnull %0) #22
  br label %100

100:                                              ; preds = %97, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_notifier_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %57

6:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  br label %7

7:                                                ; preds = %11, %6
  %8 = phi ptr [ @clk_notifier_list, %6 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @clk_notifier_list
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -244
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %25, label %7

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 252) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  store ptr %0, ptr %17, align 8
  %20 = getelementptr inbounds %struct.clk_notifier, ptr %17, i32 0, i32 1
  tail call void @srcu_init_notifier_head(ptr noundef %20) #22
  %21 = getelementptr inbounds %struct.clk_notifier, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr @clk_notifier_list, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 4
  %24 = getelementptr inbounds %struct.clk_notifier, ptr %17, i32 0, i32 2, i32 1
  store ptr @clk_notifier_list, ptr %24, align 8
  store volatile ptr %21, ptr @clk_notifier_list, align 4
  br label %27

25:                                               ; preds = %11
  %26 = getelementptr i8, ptr %9, i32 -244
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %17, %19 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.clk_notifier, ptr %28, i32 0, i32 1
  %30 = tail call i32 @srcu_notifier_chain_register(ptr noundef %29, ptr noundef nonnull %1) #22
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.clk_core, ptr %31, i32 0, i32 29
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %27, %15
  %36 = phi i32 [ %30, %27 ], [ -12, %15 ]
  %37 = load ptr, ptr @prepare_owner, align 4
  %38 = tail call ptr @llvm.thread.pointer() #22
  %39 = icmp ne ptr %37, %38
  %40 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %35
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, ptr @prepare_refcnt, align 4
  %46 = icmp eq i32 %45, 0
  %47 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %52, !prof !11

50:                                               ; preds = %44
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %51 = load i32, ptr @prepare_refcnt, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i32 [ %51, %50 ], [ %45, %44 ]
  %54 = add i32 %53, -1
  store i32 %54, ptr @prepare_refcnt, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %57

57:                                               ; preds = %56, %52, %2
  %58 = phi i32 [ -22, %2 ], [ %36, %52 ], [ %36, %56 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @srcu_init_notifier_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @clk_notifier_unregister(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  tail call fastcc void @clk_prepare_lock()
  br label %7

7:                                                ; preds = %11, %6
  %8 = phi ptr [ @clk_notifier_list, %6 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @clk_notifier_list
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -244
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -240
  %17 = tail call i32 @srcu_notifier_chain_unregister(ptr noundef %16, ptr noundef nonnull %1) #22
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.clk_core, ptr %18, i32 0, i32 29
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr i8, ptr %9, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = getelementptr i8, ptr %9, i32 -244
  %27 = getelementptr i8, ptr %9, i32 -220
  tail call void @cleanup_srcu_struct(ptr noundef %27) #22
  %28 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  tail call void @kfree(ptr noundef %26) #22
  br label %32

32:                                               ; preds = %25, %15, %7
  %33 = phi i32 [ %17, %15 ], [ %17, %25 ], [ -2, %7 ]
  %34 = load ptr, ptr @prepare_owner, align 4
  %35 = tail call ptr @llvm.thread.pointer() #22
  %36 = icmp ne ptr %34, %35
  %37 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %32
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, ptr @prepare_refcnt, align 4
  %43 = icmp eq i32 %42, 0
  %44 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49, !prof !11

47:                                               ; preds = %41
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %48 = load i32, ptr @prepare_refcnt, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i32 [ %48, %47 ], [ %42, %41 ]
  %51 = add i32 %50, -1
  store i32 %51, ptr @prepare_refcnt, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %54

54:                                               ; preds = %53, %49, %2
  %55 = phi i32 [ -22, %2 ], [ %33, %49 ], [ %33, %53 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_notifier_register(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_notifier_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @clk_notifier_register(ptr noundef %1, ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store ptr %1, ptr %4, align 4
  %10 = getelementptr inbounds %struct.clk_notifier_devres, ptr %4, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  br label %12

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #22
  br label %12

12:                                               ; preds = %11, %9, %3
  %13 = phi i32 [ -12, %3 ], [ %7, %11 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_notifier_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.clk_notifier_devres, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_notifier_unregister(ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @of_clk_src_simple_get(ptr nocapture readnone %0, ptr noundef readnone returned %1) #14 {
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @of_clk_hw_simple_get(ptr nocapture readnone %0, ptr noundef readnone returned %1) #14 {
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_src_onecell_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_onecell_data, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.of_clk_src_onecell_get, i32 noundef %4) #23
  br label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr ptr, ptr %11, i32 %4
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %13, %10 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_hw_onecell_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.of_clk_hw_onecell_get, i32 noundef %4) #23
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr %struct.clk_hw_onecell_data, ptr %1, i32 0, i32 1, i32 %4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_add_provider(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @of_node_get(ptr noundef nonnull %0) #22
  %11 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 4
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 2
  store ptr %1, ptr %13, align 4
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  %14 = load ptr, ptr @of_clk_providers, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %7, ptr %15, align 4
  store ptr %14, ptr %7, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr @of_clk_providers, ptr %16, align 4
  store volatile ptr %7, ptr @of_clk_providers, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  tail call fastcc void @clk_core_reparent_orphans()
  %17 = tail call i32 @of_clk_set_defaults(ptr noundef nonnull %0, i1 noundef zeroext true) #22
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi ptr [ @of_clk_providers, %19 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @of_clk_providers
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.of_clk_provider, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.of_clk_provider, ptr %22, i32 0, i32 1
  %30 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %34 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, -5
  store i8 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load ptr, ptr %29, align 4
  tail call void @of_node_put(ptr noundef %41) #22
  tail call void @kfree(ptr noundef %22) #22
  br label %42

42:                                               ; preds = %40, %20
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  br label %43

43:                                               ; preds = %42, %9
  %44 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %50 = load i8, ptr %49, align 4
  %51 = or i8 %50, 4
  store i8 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %43, %5, %3
  %53 = phi i32 [ 0, %3 ], [ -12, %5 ], [ %17, %43 ], [ %17, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_reparent_orphans() unnamed_addr #0 {
  tail call fastcc void @clk_prepare_lock()
  tail call fastcc void @clk_core_reparent_orphans_nolock()
  %1 = load ptr, ptr @prepare_owner, align 4
  %2 = tail call ptr @llvm.thread.pointer() #22
  %3 = icmp ne ptr %1, %2
  %4 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %0
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, ptr @prepare_refcnt, align 4
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %8
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %15 = load i32, ptr @prepare_refcnt, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %15, %14 ], [ %9, %8 ]
  %18 = add i32 %17, -1
  store i32 %18, ptr @prepare_refcnt, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %21

21:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_clk_del_provider(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @of_clk_providers, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @of_clk_providers
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.of_clk_provider, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.of_clk_provider, ptr %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -5
  store i8 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = load ptr, ptr %13, align 4
  tail call void @of_node_put(ptr noundef %27) #22
  tail call void @kfree(ptr noundef %6) #22
  br label %28

28:                                               ; preds = %26, %4
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @of_node_get(ptr noundef nonnull %0) #22
  %11 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 4
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 3
  store ptr %1, ptr %13, align 8
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  %14 = load ptr, ptr @of_clk_providers, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %7, ptr %15, align 4
  store ptr %14, ptr %7, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr @of_clk_providers, ptr %16, align 4
  store volatile ptr %7, ptr @of_clk_providers, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  tail call fastcc void @clk_core_reparent_orphans()
  %17 = tail call i32 @of_clk_set_defaults(ptr noundef nonnull %0, i1 noundef zeroext true) #22
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi ptr [ @of_clk_providers, %19 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @of_clk_providers
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.of_clk_provider, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.of_clk_provider, ptr %22, i32 0, i32 1
  %30 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %34 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, -5
  store i8 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load ptr, ptr %29, align 4
  tail call void @of_node_put(ptr noundef %41) #22
  tail call void @kfree(ptr noundef %22) #22
  br label %42

42:                                               ; preds = %40, %20
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  br label %43

43:                                               ; preds = %42, %9
  %44 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3, i32 5
  %50 = load i8, ptr %49, align 4
  %51 = or i8 %50, 4
  store i8 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %43, %5, %3
  %53 = phi i32 [ 0, %3 ], [ -12, %5 ], [ %17, %43 ], [ %17, %48 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_of_clk_release_provider, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.11) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.13, ptr noundef null) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = tail call ptr @of_find_property(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef null) #22
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr %8, ptr %16
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %8, %15 ], [ %22, %19 ]
  %25 = tail call i32 @of_clk_add_hw_provider(ptr noundef %24, ptr noundef %1, ptr noundef %2)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr %24, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #22
  br label %29

28:                                               ; preds = %23
  tail call void @devres_free(ptr noundef nonnull %4) #22
  br label %29

29:                                               ; preds = %28, %27, %3
  %30 = phi i32 [ -12, %3 ], [ %25, %28 ], [ 0, %27 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_of_clk_release_provider(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi ptr [ @of_clk_providers, %5 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @of_clk_providers
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_clk_provider, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.of_clk_provider, ptr %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 3, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, -5
  store i8 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load ptr, ptr %15, align 4
  tail call void @of_node_put(ptr noundef %27) #22
  tail call void @kfree(ptr noundef %8) #22
  br label %28

28:                                               ; preds = %26, %6
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_of_clk_del_provider(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef null) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.13, ptr noundef null) #22
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr %3, ptr %11
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ %3, %10 ], [ %17, %14 ]
  %20 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_of_clk_release_provider, ptr noundef nonnull @devm_clk_provider_match, ptr noundef %19) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4794, i32 noundef 9, ptr noundef null) #22
  br label %23

23:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_clk_provider_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4776, i32 noundef 9, ptr noundef null) #22
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_get_from_provider(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  %4 = load ptr, ptr @of_clk_providers, align 4
  %5 = icmp eq ptr %4, @of_clk_providers
  br i1 %5, label %41, label %6

6:                                                ; preds = %37, %3
  %7 = phi ptr [ %39, %37 ], [ %4, %3 ]
  %8 = phi ptr [ %38, %37 ], [ inttoptr (i32 -517 to ptr), %3 ]
  %9 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %15(ptr noundef nonnull %0, ptr noundef %19) #22
  br label %34

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.of_clk_provider, ptr %7, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr %23(ptr noundef nonnull %0, ptr noundef %25) #22
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = icmp eq ptr %26, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr inbounds %struct.clk_core, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %21, %17
  %35 = phi ptr [ %20, %17 ], [ %26, %21 ], [ %33, %30 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %6
  %38 = phi ptr [ %35, %34 ], [ %8, %6 ]
  %39 = load ptr, ptr %7, align 4
  %40 = icmp eq ptr %39, @of_clk_providers
  br i1 %40, label %41, label %6

41:                                               ; preds = %37, %34, %28, %3
  %42 = phi ptr [ inttoptr (i32 -517 to ptr), %3 ], [ %38, %37 ], [ %35, %34 ], [ null, %28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  br label %43

43:                                               ; preds = %41, %1
  %44 = phi ptr [ %42, %41 ], [ inttoptr (i32 -22 to ptr), %1 ]
  %45 = tail call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %44, ptr noundef null, ptr noundef nonnull @__func__.of_clk_get_from_provider)
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_get_hw(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %2, null
  br label %8

8:                                                ; preds = %24, %6
  %9 = phi ptr [ %0, %6 ], [ %22, %24 ]
  %10 = phi i32 [ %1, %6 ], [ 0, %24 ]
  br i1 %7, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @of_property_match_string(ptr noundef nonnull %9, ptr noundef nonnull @.str.115, ptr noundef nonnull %2) #22
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ %10, %8 ]
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef %14, ptr noundef nonnull %4) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = icmp sgt i32 %14, -1
  %19 = and i1 %7, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.device_node, ptr %9, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = call ptr @of_get_property(ptr noundef nonnull %22, ptr noundef nonnull @.str.116, ptr noundef null) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8

27:                                               ; preds = %24, %20, %17
  %28 = inttoptr i32 %15 to ptr
  br label %70

29:                                               ; preds = %13
  call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  %30 = load ptr, ptr @of_clk_providers, align 4
  %31 = icmp eq ptr %30, @of_clk_providers
  br i1 %31, label %67, label %32

32:                                               ; preds = %63, %29
  %33 = phi ptr [ %65, %63 ], [ %30, %29 ]
  %34 = phi ptr [ %64, %63 ], [ inttoptr (i32 -517 to ptr), %29 ]
  %35 = getelementptr inbounds %struct.of_clk_provider, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.of_clk_provider, ptr %33, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.of_clk_provider, ptr %33, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = call ptr %41(ptr noundef nonnull %4, ptr noundef %45) #22
  br label %60

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.of_clk_provider, ptr %33, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.of_clk_provider, ptr %33, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = call ptr %49(ptr noundef nonnull %4, ptr noundef %51) #22
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = icmp eq ptr %52, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %54
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.clk_core, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %56, %47, %43
  %61 = phi ptr [ %46, %43 ], [ %52, %47 ], [ %59, %56 ]
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %67

63:                                               ; preds = %60, %32
  %64 = phi ptr [ %61, %60 ], [ %34, %32 ]
  %65 = load ptr, ptr %33, align 4
  %66 = icmp eq ptr %65, @of_clk_providers
  br i1 %66, label %67, label %32

67:                                               ; preds = %63, %60, %54, %29
  %68 = phi ptr [ inttoptr (i32 -517 to ptr), %29 ], [ %64, %63 ], [ %61, %60 ], [ null, %54 ]
  call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  %69 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %69) #22
  br label %70

70:                                               ; preds = %67, %27, %3
  %71 = phi ptr [ %68, %67 ], [ inttoptr (i32 -2 to ptr), %3 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_clk_get_hw(ptr noundef %0, i32 noundef %1, ptr noundef null) #22
  %6 = tail call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %5, ptr noundef %4, ptr noundef null) #22
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_clk_get_hw(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1) #22
  %8 = tail call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %7, ptr noundef %6, ptr noundef %1) #22
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ %8, %4 ], [ inttoptr (i32 -2 to ptr), %2 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_get_parent_count(ptr noundef %0) #0 {
  %2 = tail call i32 @of_count_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #22
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef %1, ptr noundef nonnull %3) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = select i1 %11, i32 0, i32 %13
  %15 = load ptr, ptr %3, align 4
  %16 = call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef null) #22
  %17 = call ptr @of_prop_next_u32(ptr noundef %16, ptr noundef null, ptr noundef nonnull %5) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %24, %8
  %20 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %21 = phi ptr [ %26, %24 ], [ %17, %8 ]
  %22 = load i32, ptr %5, align 4
  %23 = icmp eq i32 %14, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = add i32 %20, 1
  %26 = call ptr @of_prop_next_u32(ptr noundef %16, ptr noundef nonnull %21, ptr noundef nonnull %5) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19

28:                                               ; preds = %24, %8
  %29 = icmp eq ptr %16, null
  br i1 %29, label %30, label %55

30:                                               ; preds = %28, %19
  %31 = phi i32 [ %14, %28 ], [ %20, %19 ]
  %32 = load ptr, ptr %3, align 4
  %33 = call i32 @of_property_read_string_helper(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %31) #22
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %3)
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, ptr %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %4, align 4
  br label %52

44:                                               ; preds = %38
  store ptr null, ptr %4, align 4
  br label %52

45:                                               ; preds = %35
  %46 = icmp eq ptr %36, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %36, align 4
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi ptr [ %49, %47 ], [ null, %45 ]
  store ptr %51, ptr %4, align 4
  call void @clk_put(ptr noundef %36) #22
  br label %52

52:                                               ; preds = %50, %44, %41, %30
  %53 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %53) #22
  %54 = load ptr, ptr %4, align 4
  br label %55

55:                                               ; preds = %52, %28, %2
  %56 = phi ptr [ %54, %52 ], [ null, %2 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #22
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_parent_fill(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %6)
  %8 = getelementptr ptr, ptr %1, i32 %6
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = add nuw i32 %6, 1
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %10, %5, %3
  %14 = phi i32 [ 0, %3 ], [ %2, %10 ], [ %6, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_clk_detect_critical(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = tail call ptr @of_find_property(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef null) #22
  %10 = call ptr @of_prop_next_u32(ptr noundef %9, ptr noundef null, ptr noundef nonnull %4) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %19, %8
  %13 = phi ptr [ %20, %19 ], [ %10, %8 ]
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, 2048
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = call ptr @of_prop_next_u32(ptr noundef %9, ptr noundef nonnull %13, ptr noundef nonnull %4) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12

22:                                               ; preds = %19, %8, %3
  %23 = phi i32 [ -22, %3 ], [ 0, %8 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %23
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @of_clk_init(ptr noundef %0) local_unnamed_addr #10 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  store ptr null, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  %6 = select i1 %5, ptr @__clk_of_table, ptr %0
  %7 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %6, ptr noundef nonnull %2) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %42, %1
  %10 = load volatile ptr, ptr %3, align 8
  %11 = icmp eq ptr %10, %3
  br i1 %11, label %95, label %45

12:                                               ; preds = %42, %1
  %13 = phi ptr [ %43, %42 ], [ %7, %1 ]
  %14 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %13) #22
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load ptr, ptr %3, align 8
  %21 = icmp eq ptr %20, %3
  br i1 %21, label %41, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %25, %22 ], [ %20, %19 ]
  %24 = getelementptr i8, ptr %23, i32 -8
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %25, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %29 = getelementptr i8, ptr %23, i32 -4
  %30 = load ptr, ptr %29, align 4
  call void @of_node_put(ptr noundef %30) #22
  call void @kfree(ptr noundef %24) #22
  %31 = icmp eq ptr %25, %3
  br i1 %31, label %41, label %22

32:                                               ; preds = %15
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.of_device_id, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %17, align 8
  %36 = call ptr @of_node_get(ptr noundef nonnull %13) #22
  %37 = getelementptr inbounds %struct.clock_provider, ptr %17, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.clock_provider, ptr %17, i32 0, i32 2
  %39 = load ptr, ptr %4, align 4
  store ptr %38, ptr %4, align 4
  store ptr %3, ptr %38, align 8
  %40 = getelementptr inbounds %struct.clock_provider, ptr %17, i32 0, i32 2, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %38, ptr %39, align 4
  br label %42

41:                                               ; preds = %22, %19
  call void @of_node_put(ptr noundef nonnull %13) #22
  br label %95

42:                                               ; preds = %32, %12
  %43 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %13, ptr noundef %6, ptr noundef nonnull %2) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %9, label %12

45:                                               ; preds = %89, %9
  %46 = phi ptr [ %93, %89 ], [ %10, %9 ]
  %47 = phi i1 [ %92, %89 ], [ false, %9 ]
  %48 = icmp eq ptr %46, %3
  br i1 %48, label %89, label %49

49:                                               ; preds = %86, %45
  %50 = phi ptr [ %53, %86 ], [ %46, %45 ]
  %51 = phi i1 [ %87, %86 ], [ false, %45 ]
  %52 = getelementptr i8, ptr %50, i32 -8
  %53 = load ptr, ptr %50, align 4
  br i1 %47, label %73, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %50, i32 -4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.device_node, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = call ptr @of_clk_get_hw(ptr noundef %56, i32 noundef 0, ptr noundef null) #22
  %60 = call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %59, ptr noundef %58, ptr noundef null) #22
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %54
  %63 = phi ptr [ %68, %62 ], [ %60, %54 ]
  %64 = phi i32 [ %65, %62 ], [ 0, %54 ]
  call void @clk_put(ptr noundef %63) #22
  %65 = add i32 %64, 1
  %66 = load ptr, ptr %57, align 4
  %67 = call ptr @of_clk_get_hw(ptr noundef %56, i32 noundef %65, ptr noundef null) #22
  %68 = call ptr @clk_hw_create_clk(ptr noundef null, ptr noundef %67, ptr noundef %66, ptr noundef null) #22
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %54
  %71 = phi ptr [ %60, %54 ], [ %68, %62 ]
  %72 = icmp eq ptr %71, inttoptr (i32 -517 to ptr)
  br i1 %72, label %86, label %73

73:                                               ; preds = %70, %49
  %74 = getelementptr i8, ptr %50, i32 -4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.device_node, ptr %75, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %76) #22
  %77 = load ptr, ptr %52, align 4
  %78 = load ptr, ptr %74, align 4
  call void %77(ptr noundef %78) #22
  %79 = load ptr, ptr %74, align 4
  %80 = call i32 @of_clk_set_defaults(ptr noundef %79, i1 noundef zeroext true) #22
  %81 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %50, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %81, align 4
  %85 = load ptr, ptr %74, align 4
  call void @of_node_put(ptr noundef %85) #22
  call void @kfree(ptr noundef %52) #22
  br label %86

86:                                               ; preds = %73, %70
  %87 = phi i1 [ true, %73 ], [ %51, %70 ]
  %88 = icmp eq ptr %53, %3
  br i1 %88, label %89, label %49

89:                                               ; preds = %86, %45
  %90 = phi i1 [ false, %45 ], [ %87, %86 ]
  %91 = xor i1 %90, true
  %92 = select i1 %91, i1 true, i1 %47
  %93 = load volatile ptr, ptr %3, align 8
  %94 = icmp eq ptr %93, %3
  br i1 %94, label %95, label %45

95:                                               ; preds = %89, %41, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %13) #22
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk_rate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clk_rate, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %13, i32 noundef %15) #22
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk_rate_range(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_clk_rate_range, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %13, i32 noundef %15, i32 noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk_parent(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clk_parent, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %13, ptr noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk_phase(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clk_phase, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %13, i32 noundef %15) #22
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #22
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_clk_duty_cycle(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_clk_duty_cycle, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %13, i32 noundef %15, i32 noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #22
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
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_core_get(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = zext i8 %1 to i32
  %7 = getelementptr %struct.clk_parent_map, ptr %5, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.clk_parent_map, ptr %5, i32 %6, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %14, %2
  %21 = phi ptr [ null, %2 ], [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %89, label %25

25:                                               ; preds = %20
  %26 = icmp ne ptr %8, null
  %27 = icmp sgt i32 %10, -1
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %29, label %98

29:                                               ; preds = %45, %25
  %30 = phi ptr [ %43, %45 ], [ %23, %25 ]
  %31 = phi i32 [ 0, %45 ], [ %10, %25 ]
  br i1 %26, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @of_property_match_string(ptr noundef nonnull %30, ptr noundef nonnull @.str.115, ptr noundef nonnull %8) #22
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi i32 [ %33, %32 ], [ %31, %29 ]
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %30, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef %35, ptr noundef nonnull %3) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = icmp sgt i32 %35, -1
  %40 = and i1 %26, %39
  br i1 %40, label %91, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.device_node, ptr %30, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = call ptr @of_get_property(ptr noundef nonnull %43, ptr noundef nonnull @.str.116, ptr noundef null) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %89, label %29

48:                                               ; preds = %34
  call void @mutex_lock(ptr noundef nonnull @of_clk_mutex) #22
  %49 = load ptr, ptr @of_clk_providers, align 4
  %50 = icmp eq ptr %49, @of_clk_providers
  br i1 %50, label %86, label %51

51:                                               ; preds = %82, %48
  %52 = phi ptr [ %84, %82 ], [ %49, %48 ]
  %53 = phi ptr [ %83, %82 ], [ inttoptr (i32 -517 to ptr), %48 ]
  %54 = getelementptr inbounds %struct.of_clk_provider, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %3, align 4
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.of_clk_provider, ptr %52, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.of_clk_provider, ptr %52, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = call ptr %60(ptr noundef nonnull %3, ptr noundef %64) #22
  br label %79

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.of_clk_provider, ptr %52, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.of_clk_provider, ptr %52, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = call ptr %68(ptr noundef nonnull %3, ptr noundef %70) #22
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = icmp eq ptr %71, null
  br i1 %74, label %86, label %75

75:                                               ; preds = %73
  %76 = load ptr, ptr %71, align 4
  %77 = getelementptr inbounds %struct.clk_core, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %75, %66, %62
  %80 = phi ptr [ %65, %62 ], [ %71, %66 ], [ %78, %75 ]
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %51
  %83 = phi ptr [ %80, %79 ], [ %53, %51 ]
  %84 = load ptr, ptr %52, align 4
  %85 = icmp eq ptr %84, @of_clk_providers
  br i1 %85, label %86, label %51

86:                                               ; preds = %82, %79, %73, %48
  %87 = phi ptr [ inttoptr (i32 -517 to ptr), %48 ], [ %83, %82 ], [ %80, %79 ], [ null, %73 ]
  call void @mutex_unlock(ptr noundef nonnull @of_clk_mutex) #22
  %88 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %88) #22
  br label %93

89:                                               ; preds = %45, %41, %20
  %90 = icmp eq ptr %8, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %89, %38
  %92 = call ptr @clk_find_hw(ptr noundef %21, ptr noundef nonnull %8) #22
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi ptr [ %92, %91 ], [ %87, %86 ]
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %94, align 4
  br label %98

98:                                               ; preds = %96, %93, %89, %25
  %99 = phi ptr [ %97, %96 ], [ %94, %93 ], [ inttoptr (i32 -2 to ptr), %89 ], [ inttoptr (i32 -2 to ptr), %25 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #22
  ret ptr %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_find_hw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_pm_runtime_get(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 1, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #22
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #22, !srcloc !15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #22, !srcloc !16
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %17

17:                                               ; preds = %16, %10, %5, %1
  %18 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %8, %10 ], [ %8, %16 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @__clk_lookup_subtree(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #6 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 @strcmp(ptr noundef %3, ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -104
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %24, label %13

13:                                               ; preds = %17, %6
  %14 = phi ptr [ %21, %17 ], [ %10, %6 ]
  %15 = tail call fastcc ptr @__clk_lookup_subtree(ptr noundef %0, ptr noundef nonnull %14)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.clk_core, ptr %14, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -104
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %13

24:                                               ; preds = %17, %13, %6, %2
  %25 = phi ptr [ %1, %2 ], [ null, %6 ], [ %15, %13 ], [ null, %17 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_unprepare(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %120, label %3

3:                                                ; preds = %116, %1
  %4 = phi ptr [ %118, %116 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 19
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 0, label %10
    i32 1, label %12
  ], !prof !39

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  br label %19

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %11) #22
  br label %120

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 816, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef %18) #22
  br label %120

19:                                               ; preds = %12, %7
  %20 = phi i32 [ %9, %7 ], [ %14, %12 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %33, %19
  %24 = phi ptr [ %35, %33 ], [ %4, %19 ]
  %25 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !11

28:                                               ; preds = %23
  %29 = load ptr, ptr %24, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 678, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %29) #22
  br label %37

30:                                               ; preds = %23
  %31 = add i32 %26, -1
  store i32 %31, ptr %25, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %23

37:                                               ; preds = %33, %30, %28, %19
  %38 = load i32, ptr %5, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %120

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !10

45:                                               ; preds = %41
  %46 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 825, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %46) #22
  br label %47

47:                                               ; preds = %45, %41
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = tail call ptr @llvm.thread.pointer() #22
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !40
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %68, ptr noundef nonnull %4) #22
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  br label %73

73:                                               ; preds = %72, %50, %47
  %74 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.clk_ops, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  tail call void %77(ptr noundef %81) #22
  br label %82

82:                                               ; preds = %79, %73
  %83 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 17
  %84 = load i8, ptr %83, align 1, !range !13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @__pm_runtime_idle(ptr noundef %88, i32 noundef 4) #22
  br label %90

90:                                               ; preds = %86, %82
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare_complete, i32 0, i32 1), align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = tail call ptr @llvm.thread.pointer() #22
  %95 = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !42
  %105 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare_complete, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %112, %107 ], [ %105, %104 ]
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %108, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void %109(ptr noundef %111, ptr noundef nonnull %4) #22
  %112 = getelementptr %struct.tracepoint_func, ptr %108, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %104
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !43
  br label %116

116:                                              ; preds = %115, %93, %90
  %117 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %3

120:                                              ; preds = %116, %37, %17, %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_prepare(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %112, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %94

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %9 = load i8, ptr %8, align 1, !range !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #22
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #22, !srcloc !15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 -1, ptr elementtype(i32) %18) #22, !srcloc !16
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %112, label %22

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %112

23:                                               ; preds = %11, %7
  %24 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = tail call fastcc i32 @clk_core_prepare(ptr noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %104

28:                                               ; preds = %23
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = tail call ptr @llvm.thread.pointer() #22
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !44
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare, i32 0, i32 7), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %50, %45 ], [ %43, %42 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tracepoint_func, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void %47(ptr noundef %49, ptr noundef nonnull %0) #22
  %50 = getelementptr %struct.tracepoint_func, ptr %46, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %42
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !45
  br label %54

54:                                               ; preds = %53, %31, %28
  %55 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %57(ptr noundef %61) #22
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i32 [ %62, %59 ], [ 0, %54 ]
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare_complete, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #22
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !46
  %79 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_prepare_complete, i32 0, i32 7), align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %81, %78
  %82 = phi ptr [ %86, %81 ], [ %79, %78 ]
  %83 = load volatile ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tracepoint_func, ptr %82, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void %83(ptr noundef %85, ptr noundef nonnull %0) #22
  %86 = getelementptr %struct.tracepoint_func, ptr %82, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %81

89:                                               ; preds = %81, %78
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !47
  br label %90

90:                                               ; preds = %89, %67, %63
  %91 = icmp eq i32 %64, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %90
  %93 = load i32, ptr %4, align 4
  br label %94

94:                                               ; preds = %92, %3
  %95 = phi i32 [ %93, %92 ], [ %5, %3 ]
  %96 = add i32 %95, 1
  store i32 %96, ptr %4, align 4
  %97 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %94
  tail call fastcc void @clk_core_rate_protect(ptr noundef nonnull %0)
  br label %112

102:                                              ; preds = %90
  %103 = load ptr, ptr %24, align 4
  tail call fastcc void @clk_core_unprepare(ptr noundef %103)
  br label %104

104:                                              ; preds = %102, %23
  %105 = phi i32 [ %26, %23 ], [ %64, %102 ]
  %106 = load i8, ptr %8, align 1, !range !13
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @__pm_runtime_idle(ptr noundef %110, i32 noundef 4) #22
  br label %112

112:                                              ; preds = %108, %104, %101, %94, %22, %16, %1
  %113 = phi i32 [ 0, %1 ], [ 0, %101 ], [ 0, %94 ], [ %14, %16 ], [ %14, %22 ], [ %105, %104 ], [ %105, %108 ]
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_disable(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %103, label %3

3:                                                ; preds = %99, %1
  %4 = phi ptr [ %101, %99 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %16 [
    i32 0, label %7
    i32 1, label %9
  ], !prof !39

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 953, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %8) #22
  br label %103

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %9
  %15 = load ptr, ptr %4, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 957, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef %15) #22
  br label %103

16:                                               ; preds = %3
  %17 = add i32 %6, -1
  store i32 %17, ptr %5, align 4
  br label %103

18:                                               ; preds = %9
  store i32 0, ptr %5, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #22
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 15728640
  %36 = icmp ne i32 %35, 0
  %37 = load i1, ptr @trace_clk_disable_rcuidle.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %32
  store i1 true, ptr @trace_clk_disable_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 51, i32 noundef 9, ptr noundef null) #22
  br label %41

41:                                               ; preds = %40, %32
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !48
  %42 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #22
  tail call void @rcu_irq_enter_irqson() #22
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable, i32 0, i32 7), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %41
  %46 = phi ptr [ %50, %45 ], [ %43, %41 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tracepoint_func, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void %47(ptr noundef %49, ptr noundef nonnull %4) #22
  %50 = getelementptr %struct.tracepoint_func, ptr %46, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %41
  tail call void @rcu_irq_exit_irqson() #22
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %42) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !49
  br label %54

54:                                               ; preds = %53, %21, %18
  %55 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.clk_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  tail call void %58(ptr noundef %62) #22
  br label %63

63:                                               ; preds = %60, %54
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable_complete, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = tail call ptr @llvm.thread.pointer() #22
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 15728640
  %81 = icmp ne i32 %80, 0
  %82 = load i1, ptr @trace_clk_disable_complete_rcuidle.__already_done, align 1
  %83 = xor i1 %82, true
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %86, !prof !11

85:                                               ; preds = %77
  store i1 true, ptr @trace_clk_disable_complete_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 58, i32 noundef 9, ptr noundef null) #22
  br label %86

86:                                               ; preds = %85, %77
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !50
  %87 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #22
  tail call void @rcu_irq_enter_irqson() #22
  %88 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable_complete, i32 0, i32 7), align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %90, %86
  %91 = phi ptr [ %95, %90 ], [ %88, %86 ]
  %92 = load volatile ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.tracepoint_func, ptr %91, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void %92(ptr noundef %94, ptr noundef nonnull %4) #22
  %95 = getelementptr %struct.tracepoint_func, ptr %91, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %90

98:                                               ; preds = %90, %86
  tail call void @rcu_irq_exit_irqson() #22
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %87) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !51
  br label %99

99:                                               ; preds = %98, %66, %63
  %100 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %3

103:                                              ; preds = %99, %16, %14, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %110, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !11

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef nonnull @.str.46, ptr noundef %8) #22
  br label %110

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %107

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call fastcc i32 @clk_core_enable(ptr noundef %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %110

18:                                               ; preds = %13
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #22
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 15728640
  %36 = icmp ne i32 %35, 0
  %37 = load i1, ptr @trace_clk_enable_rcuidle.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %32
  store i1 true, ptr @trace_clk_enable_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 37, i32 noundef 9, ptr noundef null) #22
  br label %41

41:                                               ; preds = %40, %32
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !52
  %42 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #22
  tail call void @rcu_irq_enter_irqson() #22
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable, i32 0, i32 7), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %41
  %46 = phi ptr [ %50, %45 ], [ %43, %41 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tracepoint_func, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void %47(ptr noundef %49, ptr noundef nonnull %0) #22
  %50 = getelementptr %struct.tracepoint_func, ptr %46, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %41
  tail call void @rcu_irq_exit_irqson() #22
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %42) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !53
  br label %54

54:                                               ; preds = %53, %21, %18
  %55 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.clk_ops, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %58(ptr noundef %62) #22
  br label %64

64:                                               ; preds = %60, %54
  %65 = phi i32 [ %63, %60 ], [ 0, %54 ]
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable_complete, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #22
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %101, label %79

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 15728640
  %83 = icmp ne i32 %82, 0
  %84 = load i1, ptr @trace_clk_enable_complete_rcuidle.__already_done, align 1
  %85 = xor i1 %84, true
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %88, !prof !11

87:                                               ; preds = %79
  store i1 true, ptr @trace_clk_enable_complete_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 44, i32 noundef 9, ptr noundef null) #22
  br label %88

88:                                               ; preds = %87, %79
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !54
  %89 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #22
  tail call void @rcu_irq_enter_irqson() #22
  %90 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_enable_complete, i32 0, i32 7), align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %92, %88
  %93 = phi ptr [ %97, %92 ], [ %90, %88 ]
  %94 = load volatile ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.tracepoint_func, ptr %93, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  tail call void %94(ptr noundef %96, ptr noundef nonnull %0) #22
  %97 = getelementptr %struct.tracepoint_func, ptr %93, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %92

100:                                              ; preds = %92, %88
  tail call void @rcu_irq_exit_irqson() #22
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %89) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !55
  br label %101

101:                                              ; preds = %100, %68, %64
  %102 = icmp eq i32 %65, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %101
  %104 = load i32, ptr %10, align 4
  br label %107

105:                                              ; preds = %101
  %106 = load ptr, ptr %14, align 4
  tail call fastcc void @clk_core_disable(ptr noundef %106)
  br label %110

107:                                              ; preds = %103, %9
  %108 = phi i32 [ %104, %103 ], [ %11, %9 ]
  %109 = add i32 %108, 1
  store i32 %109, ptr %10, align 4
  br label %110

110:                                              ; preds = %107, %105, %13, %7, %1
  %111 = phi i32 [ -108, %7 ], [ %65, %105 ], [ 0, %107 ], [ 0, %1 ], [ %16, %13 ]
  ret i32 %111
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @clk_disable_unused_subtree(ptr noundef %0) unnamed_addr #10 section ".init.text" {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %13, %8 ], [ %5, %1 ]
  tail call fastcc void @clk_disable_unused_subtree(ptr noundef nonnull %9) #24
  %10 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -104
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4096
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %23) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %23) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %23) #22
  br label %30

30:                                               ; preds = %29, %26, %21, %16
  %31 = tail call fastcc i32 @clk_pm_runtime_get(ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %182

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @clk_enable_lock()
  %35 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 18
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %153

38:                                               ; preds = %33
  %39 = load i32, ptr %17, align 4
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %153

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_ops, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %153, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %50 = load i8, ptr %49, align 1, !range !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #22, !srcloc !15
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #22, !srcloc !18
  %57 = load ptr, ptr %53, align 4
  %58 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 18
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 11, i32 15
  %63 = load i16, ptr %62, align 8
  %64 = and i16 %63, 7
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61, %52, %48
  %67 = load ptr, ptr %43, align 4
  %68 = getelementptr inbounds %struct.clk_ops, ptr %67, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = tail call i32 %69(ptr noundef %71) #22
  %73 = icmp eq i32 %72, 0
  %74 = load i8, ptr %49, align 1, !range !13
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %87, label %83

76:                                               ; preds = %61
  %77 = load i8, ptr %49, align 1, !range !13
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %153, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 @__pm_runtime_idle(ptr noundef %81, i32 noundef 5) #22
  br label %153

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 @__pm_runtime_idle(ptr noundef %85, i32 noundef 5) #22
  br i1 %73, label %153, label %88

87:                                               ; preds = %66
  br i1 %73, label %153, label %88

88:                                               ; preds = %87, %83
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = tail call ptr @llvm.thread.pointer() #22
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !56
  %103 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable, i32 0, i32 7), align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %105, %102
  %106 = phi ptr [ %110, %105 ], [ %103, %102 ]
  %107 = load volatile ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.tracepoint_func, ptr %106, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  tail call void %107(ptr noundef %109, ptr noundef %0) #22
  %110 = getelementptr %struct.tracepoint_func, ptr %106, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105

113:                                              ; preds = %105, %102
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !57
  br label %114

114:                                              ; preds = %113, %91, %88
  %115 = load ptr, ptr %43, align 4
  %116 = getelementptr inbounds %struct.clk_ops, ptr %115, i32 0, i32 7
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.clk_ops, ptr %115, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %119, %114
  %124 = phi ptr [ %117, %114 ], [ %121, %119 ]
  %125 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  tail call void %124(ptr noundef %126) #22
  br label %127

127:                                              ; preds = %123, %119
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable_complete, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = tail call ptr @llvm.thread.pointer() #22
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = lshr i32 %133, 5
  %135 = getelementptr i32, ptr @__cpu_online_mask, i32 %134
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %133, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %130
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !58
  %142 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_disable_complete, i32 0, i32 7), align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %144, %141
  %145 = phi ptr [ %149, %144 ], [ %142, %141 ]
  %146 = load volatile ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.tracepoint_func, ptr %145, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  tail call void %146(ptr noundef %148, ptr noundef %0) #22
  %149 = getelementptr %struct.tracepoint_func, ptr %145, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %144

152:                                              ; preds = %144, %141
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !59
  br label %153

153:                                              ; preds = %152, %130, %127, %87, %83, %79, %76, %42, %38, %33
  %154 = load ptr, ptr @enable_owner, align 4
  %155 = tail call ptr @llvm.thread.pointer() #22
  %156 = icmp ne ptr %154, %155
  %157 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %158 = xor i1 %157, true
  %159 = select i1 %156, i1 %158, i1 false
  br i1 %159, label %160, label %161, !prof !11

160:                                              ; preds = %153
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %161

161:                                              ; preds = %160, %153
  %162 = load i32, ptr @enable_refcnt, align 4
  %163 = icmp eq i32 %162, 0
  %164 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %165 = xor i1 %164, true
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %169, !prof !11

167:                                              ; preds = %161
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %168 = load i32, ptr @enable_refcnt, align 4
  br label %169

169:                                              ; preds = %167, %161
  %170 = phi i32 [ %168, %167 ], [ %162, %161 ]
  %171 = add i32 %170, -1
  store i32 %171, ptr @enable_refcnt, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %34) #22
  br label %174

174:                                              ; preds = %173, %169
  %175 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %176 = load i8, ptr %175, align 1, !range !13
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %180 = load ptr, ptr %179, align 4
  %181 = tail call i32 @__pm_runtime_idle(ptr noundef %180, i32 noundef 4) #22
  br label %182

182:                                              ; preds = %178, %174, %30
  %183 = load i32, ptr %17, align 4
  %184 = and i32 %183, 4096
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %188 = load ptr, ptr %187, align 4
  tail call fastcc void @clk_core_disable_lock(ptr noundef %188) #22
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %188) #22
  br label %189

189:                                              ; preds = %186, %182
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @clk_unprepare_unused_subtree(ptr noundef %0) unnamed_addr #10 section ".init.text" {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -104
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %13, %8 ], [ %5, %1 ]
  tail call fastcc void @clk_unprepare_unused_subtree(ptr noundef nonnull %9) #24
  %10 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -104
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %1
  %17 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %143

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %143

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @clk_pm_runtime_get(ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.clk_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, ptr %17, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %135, label %70

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %39 = load i8, ptr %38, align 1, !range !13
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #22
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %29, align 4
  %48 = getelementptr inbounds %struct.clk_ops, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %57

50:                                               ; preds = %41
  %51 = load ptr, ptr %42, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #22, !srcloc !15
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 -1, ptr elementtype(i32) %52) #22, !srcloc !16
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %135, label %56

56:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %135

57:                                               ; preds = %46, %37
  %58 = phi ptr [ %49, %46 ], [ %32, %37 ]
  %59 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %58(ptr noundef %60) #22
  %62 = icmp eq i32 %61, 0
  %63 = load i8, ptr %38, align 1, !range !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 4) #22
  br i1 %62, label %135, label %70

69:                                               ; preds = %57
  br i1 %62, label %135, label %70

70:                                               ; preds = %69, %65, %34
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = tail call ptr @llvm.thread.pointer() #22
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !40
  %85 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare, i32 0, i32 7), align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %87, %84
  %88 = phi ptr [ %92, %87 ], [ %85, %84 ]
  %89 = load volatile ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.tracepoint_func, ptr %88, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  tail call void %89(ptr noundef %91, ptr noundef %0) #22
  %92 = getelementptr %struct.tracepoint_func, ptr %88, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %87

95:                                               ; preds = %87, %84
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  br label %96

96:                                               ; preds = %95, %73, %70
  %97 = load ptr, ptr %29, align 4
  %98 = getelementptr inbounds %struct.clk_ops, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.clk_ops, ptr %97, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101, %96
  %106 = phi ptr [ %99, %96 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  tail call void %106(ptr noundef %108) #22
  br label %109

109:                                              ; preds = %105, %101
  %110 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare_complete, i32 0, i32 1), align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = tail call ptr @llvm.thread.pointer() #22
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 2
  %115 = load i32, ptr %114, align 8
  %116 = lshr i32 %115, 5
  %117 = getelementptr i32, ptr @__cpu_online_mask, i32 %116
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %115, 31
  %120 = shl nuw i32 1, %119
  %121 = and i32 %120, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %112
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !42
  %124 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_unprepare_complete, i32 0, i32 7), align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %126, %123
  %127 = phi ptr [ %131, %126 ], [ %124, %123 ]
  %128 = load volatile ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.tracepoint_func, ptr %127, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  tail call void %128(ptr noundef %130, ptr noundef %0) #22
  %131 = getelementptr %struct.tracepoint_func, ptr %127, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %126

134:                                              ; preds = %126, %123
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !43
  br label %135

135:                                              ; preds = %134, %112, %109, %69, %65, %56, %50, %34
  %136 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %137 = load i8, ptr %136, align 1, !range !13
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 @__pm_runtime_idle(ptr noundef %141, i32 noundef 4) #22
  br label %143

143:                                              ; preds = %139, %135, %25, %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_recalc_accuracies(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.clk_core, ptr %3, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.clk_ops, ptr %11, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %13(ptr noundef %17, i32 noundef %9) #22
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ %18, %15 ], [ %9, %8 ]
  %21 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 23
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = getelementptr i8, ptr %23, i32 -104
  %26 = icmp eq ptr %25, null
  %27 = or i1 %24, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %28, %19
  %29 = phi ptr [ %33, %28 ], [ %25, %19 ]
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %29)
  %30 = getelementptr inbounds %struct.clk_core, ptr %29, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -104
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %28

36:                                               ; preds = %28, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_recalc_rates(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_notifier_data, align 4
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %21 = load i8, ptr %20, align 1, !range !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @__pm_runtime_resume(ptr noundef %25, i32 noundef 4) #22
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.clk_ops, ptr %29, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  br label %39

32:                                               ; preds = %23
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #22, !srcloc !15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 0, i32 -1, ptr elementtype(i32) %34) #22, !srcloc !16
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %50

39:                                               ; preds = %28, %19
  %40 = phi ptr [ %31, %28 ], [ %17, %19 ]
  %41 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %40(ptr noundef %42, i32 noundef %13) #22
  %44 = load i8, ptr %20, align 1, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 4) #22
  br label %50

50:                                               ; preds = %46, %39, %38, %32, %12
  %51 = phi i32 [ %13, %12 ], [ %13, %32 ], [ %13, %38 ], [ %43, %39 ], [ %43, %46 ]
  store i32 %51, ptr %4, align 4
  %52 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 29
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = icmp ne i32 %1, 0
  %56 = and i1 %55, %54
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !9
  %58 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 1
  store i32 %5, ptr %58, align 4
  %59 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 2
  store i32 %51, ptr %59, align 4
  %60 = load ptr, ptr @clk_notifier_list, align 4
  %61 = icmp eq ptr %60, @clk_notifier_list
  br i1 %61, label %76, label %62

62:                                               ; preds = %73, %57
  %63 = phi ptr [ %74, %73 ], [ %60, %57 ]
  %64 = getelementptr i8, ptr %63, i32 -244
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  store ptr %65, ptr %3, align 4
  %69 = getelementptr i8, ptr %63, i32 -240
  %70 = call i32 @srcu_notifier_call_chain(ptr noundef %69, i32 noundef %1, ptr noundef nonnull %3) #22
  %71 = and i32 %70, 32768
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %62
  %74 = load ptr, ptr %63, align 4
  %75 = icmp eq ptr %74, @clk_notifier_list
  br i1 %75, label %76, label %62

76:                                               ; preds = %73, %68, %57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  br label %77

77:                                               ; preds = %76, %50
  %78 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  %81 = getelementptr i8, ptr %79, i32 -104
  %82 = icmp eq ptr %81, null
  %83 = or i1 %80, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %84, %77
  %85 = phi ptr [ %89, %84 ], [ %81, %77 ]
  call fastcc void @__clk_recalc_rates(ptr noundef nonnull %85, i32 noundef %1)
  %86 = getelementptr inbounds %struct.clk_core, ptr %85, i32 0, i32 27
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = getelementptr i8, ptr %87, i32 -104
  %90 = icmp eq ptr %89, null
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %84

92:                                               ; preds = %84, %77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @srcu_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_calc_new_rates(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_rate_request, align 4
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %161, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -28
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %46, label %21

21:                                               ; preds = %21, %7
  %22 = phi i32 [ %26, %21 ], [ %12, %7 ]
  %23 = phi ptr [ %30, %21 ], [ %18, %7 ]
  %24 = getelementptr inbounds %struct.clk, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %22, i32 %25) #22
  %27 = getelementptr inbounds %struct.clk, ptr %23, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -28
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %21

33:                                               ; preds = %21
  br i1 %20, label %46, label %34

34:                                               ; preds = %34, %33
  %35 = phi i32 [ %39, %34 ], [ %14, %33 ]
  %36 = phi ptr [ %43, %34 ], [ %18, %33 ]
  %37 = getelementptr inbounds %struct.clk, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %35, i32 %38) #22
  %40 = getelementptr inbounds %struct.clk, ptr %36, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr i8, ptr %41, i32 -28
  %44 = icmp eq ptr %43, null
  %45 = or i1 %42, %44
  br i1 %45, label %46, label %34

46:                                               ; preds = %34, %33, %7
  %47 = phi i32 [ %26, %33 ], [ %12, %7 ], [ %26, %34 ]
  %48 = phi i32 [ %14, %33 ], [ %14, %7 ], [ %39, %34 ]
  %49 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.clk_ops, ptr %50, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.clk_ops, ptr %50, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %109, label %58

58:                                               ; preds = %54, %46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #22
  store i32 %1, ptr %3, align 4
  %59 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 1
  store i32 %47, ptr %59, align 4
  %60 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 2
  store i32 %48, ptr %60, align 4
  br i1 %10, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi ptr [ %63, %61 ], [ null, %58 ]
  %68 = phi i32 [ %65, %61 ], [ 0, %58 ]
  %69 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 4
  store ptr %67, ptr %69, align 4
  %70 = getelementptr inbounds %struct.clk_rate_request, ptr %3, i32 0, i32 3
  store i32 %68, ptr %70, align 4
  %71 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  br label %87

77:                                               ; preds = %66
  br i1 %53, label %78, label %89

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.clk_ops, ptr %50, i32 0, i32 11
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %103, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = call i32 %80(ptr noundef %84, i32 noundef %1, ptr noundef %70) #22
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82, %74
  %88 = phi i32 [ %76, %74 ], [ %85, %82 ]
  store i32 %88, ptr %3, align 4
  br label %96

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %52(ptr noundef %91, ptr noundef nonnull %3) #22
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %3, align 4
  br label %96

96:                                               ; preds = %94, %87
  %97 = phi i32 [ %95, %94 ], [ %88, %87 ]
  %98 = load i32, ptr %70, align 4
  %99 = load ptr, ptr %69, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %99, align 4
  br label %104

103:                                              ; preds = %89, %82, %78
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  br label %161

104:                                              ; preds = %101, %96
  %105 = phi ptr [ %102, %101 ], [ null, %96 ]
  %106 = icmp uge i32 %97, %47
  %107 = icmp ule i32 %97, %48
  %108 = select i1 %106, i1 %107, i1 false
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #22
  br i1 %108, label %123, label %161

109:                                              ; preds = %54
  br i1 %10, label %115, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110, %109
  %116 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 12
  store i32 %117, ptr %118, align 4
  br label %161

119:                                              ; preds = %110
  %120 = tail call fastcc ptr @clk_calc_new_rates(ptr noundef nonnull %9, i32 noundef %1)
  %121 = getelementptr inbounds %struct.clk_core, ptr %9, i32 0, i32 12
  %122 = load i32, ptr %121, align 4
  br label %155

123:                                              ; preds = %104
  %124 = icmp eq ptr %105, %9
  br i1 %124, label %134, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %161

134:                                              ; preds = %130, %125, %123
  %135 = icmp eq ptr %105, null
  br i1 %135, label %155, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %138 = load i8, ptr %137, align 4
  %139 = icmp ugt i8 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = call fastcc i32 @clk_fetch_parent_index(ptr noundef %0, ptr noundef nonnull %105)
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %161, label %143

143:                                              ; preds = %140, %136
  %144 = phi i32 [ %141, %140 ], [ 0, %136 ]
  %145 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.clk_core, ptr %105, i32 0, i32 10
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %98, %151
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = call fastcc ptr @clk_calc_new_rates(ptr noundef nonnull %105, i32 noundef %98)
  br label %155

155:                                              ; preds = %153, %149, %143, %134, %119
  %156 = phi ptr [ %105, %153 ], [ %105, %149 ], [ %105, %143 ], [ %9, %119 ], [ null, %134 ]
  %157 = phi i32 [ %97, %153 ], [ %97, %149 ], [ %97, %143 ], [ %122, %119 ], [ %97, %134 ]
  %158 = phi i32 [ %144, %153 ], [ %144, %149 ], [ %144, %143 ], [ 0, %119 ], [ 0, %134 ]
  %159 = phi ptr [ %154, %153 ], [ %0, %149 ], [ %0, %143 ], [ %120, %119 ], [ %0, %134 ]
  %160 = trunc i32 %158 to i8
  call fastcc void @clk_calc_subtree(ptr noundef %0, i32 noundef %157, ptr noundef %156, i8 noundef zeroext %160)
  br label %161

161:                                              ; preds = %155, %140, %130, %115, %104, %103, %2
  %162 = phi ptr [ %159, %155 ], [ null, %104 ], [ null, %115 ], [ null, %2 ], [ null, %130 ], [ null, %140 ], [ null, %103 ]
  ret ptr %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @clk_propagate_rate_change(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_notifier_data, align 4
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %76, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 29
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !9
  %14 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 1
  store i32 %5, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 2
  store i32 %7, ptr %15, align 4
  %16 = load ptr, ptr @clk_notifier_list, align 4
  %17 = icmp eq ptr %16, @clk_notifier_list
  br i1 %17, label %34, label %18

18:                                               ; preds = %30, %13
  %19 = phi ptr [ %32, %30 ], [ %16, %13 ]
  %20 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %21 = getelementptr i8, ptr %19, i32 -244
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  store ptr %22, ptr %3, align 4
  %26 = getelementptr i8, ptr %19, i32 -240
  %27 = call i32 @srcu_notifier_call_chain(ptr noundef %26, i32 noundef %1, ptr noundef nonnull %3) #22
  %28 = and i32 %27, 32768
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25, %18
  %31 = phi i32 [ %27, %25 ], [ %20, %18 ]
  %32 = load ptr, ptr %19, align 4
  %33 = icmp eq ptr %32, @clk_notifier_list
  br i1 %33, label %34, label %18

34:                                               ; preds = %30, %25, %13
  %35 = phi i32 [ 0, %13 ], [ %27, %25 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  %36 = and i32 %35, 32768
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr null, ptr %0
  br label %39

39:                                               ; preds = %34, %9
  %40 = phi ptr [ null, %9 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -104
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %67, label %47

47:                                               ; preds = %59, %39
  %48 = phi ptr [ %64, %59 ], [ %44, %39 ]
  %49 = phi ptr [ %60, %59 ], [ %40, %39 ]
  %50 = getelementptr inbounds %struct.clk_core, ptr %48, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = icmp eq ptr %51, %0
  %54 = or i1 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = call fastcc ptr @clk_propagate_rate_change(ptr noundef nonnull %48, i32 noundef %1)
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, ptr %49, ptr %56
  br label %59

59:                                               ; preds = %55, %47
  %60 = phi ptr [ %49, %47 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.clk_core, ptr %48, i32 0, i32 27
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -104
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %47

67:                                               ; preds = %59, %39
  %68 = phi ptr [ %40, %39 ], [ %60, %59 ]
  %69 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = call fastcc ptr @clk_propagate_rate_change(ptr noundef nonnull %70, i32 noundef %1)
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr %68, ptr %73
  br label %76

76:                                               ; preds = %72, %67, %2
  %77 = phi ptr [ null, %2 ], [ %68, %67 ], [ %75, %72 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_change_rate(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.clk_notifier_data, align 4
  %3 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ %6, %1 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.clk_core, ptr %13, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ null, %8 ], [ %13, %12 ]
  %18 = phi i32 [ 0, %8 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %20 = load i8, ptr %19, align 1, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @__pm_runtime_resume(ptr noundef %24, i32 noundef 4) #22
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #22, !srcloc !15
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 0, i32 -1, ptr elementtype(i32) %29) #22, !srcloc !16
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %326, label %33

33:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %326

34:                                               ; preds = %22, %16
  %35 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = tail call fastcc i32 @clk_core_prepare(ptr noundef %0)
  %41 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %0)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load ptr, ptr %5, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %131, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %131, label %49

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @__clk_set_parent_before(ptr noundef %0, ptr noundef nonnull %43)
  %51 = load ptr, ptr %5, align 4
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = tail call ptr @llvm.thread.pointer() #22
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !60
  %66 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent, i32 0, i32 7), align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %70 = load volatile ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tracepoint_func, ptr %69, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %70(ptr noundef %72, ptr noundef %0, ptr noundef %51) #22
  %73 = getelementptr %struct.tracepoint_func, ptr %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68

76:                                               ; preds = %68, %65
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !61
  br label %77

77:                                               ; preds = %76, %54, %49
  %78 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.clk_ops, ptr %79, i32 0, i32 16
  %81 = load ptr, ptr %80, align 4
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 9
  %89 = load i8, ptr %88, align 1
  %90 = tail call i32 %81(ptr noundef %85, i32 noundef %87, i32 noundef %18, i8 noundef zeroext %89) #22
  br label %101

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.clk_ops, ptr %79, i32 0, i32 13
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 9
  %99 = load i8, ptr %98, align 1
  %100 = tail call i32 %93(ptr noundef %97, i8 noundef zeroext %99) #22
  br label %101

101:                                              ; preds = %95, %91, %83
  %102 = load ptr, ptr %5, align 4
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent_complete, i32 0, i32 1), align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %101
  %106 = tail call ptr @llvm.thread.pointer() #22
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 8
  %109 = lshr i32 %108, 5
  %110 = getelementptr i32, ptr @__cpu_online_mask, i32 %109
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %108, 31
  %113 = shl nuw i32 1, %112
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %105
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !62
  %117 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent_complete, i32 0, i32 7), align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %119, %116
  %120 = phi ptr [ %124, %119 ], [ %117, %116 ]
  %121 = load volatile ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.tracepoint_func, ptr %120, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  tail call void %121(ptr noundef %123, ptr noundef %0, ptr noundef %102) #22
  %124 = getelementptr %struct.tracepoint_func, ptr %120, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %119

127:                                              ; preds = %119, %116
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !63
  %128 = load ptr, ptr %5, align 4
  br label %129

129:                                              ; preds = %127, %105, %101
  %130 = phi ptr [ %102, %101 ], [ %102, %105 ], [ %128, %127 ]
  tail call fastcc void @__clk_set_parent_after(ptr noundef %0, ptr noundef %130, ptr noundef %50)
  br label %131

131:                                              ; preds = %129, %45, %42
  %132 = phi i1 [ %82, %129 ], [ false, %45 ], [ false, %42 ]
  %133 = load i32, ptr %35, align 4
  %134 = and i32 %133, 4096
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %131
  %137 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %17) #22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %17) #22
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %17) #22
  br label %143

143:                                              ; preds = %142, %139, %136, %131
  %144 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 12
  %145 = load i32, ptr %144, align 4
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %143
  %149 = tail call ptr @llvm.thread.pointer() #22
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !64
  %160 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate, i32 0, i32 7), align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %162, %159
  %163 = phi ptr [ %167, %162 ], [ %160, %159 ]
  %164 = load volatile ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.tracepoint_func, ptr %163, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  tail call void %164(ptr noundef %166, ptr noundef %0, i32 noundef %145) #22
  %167 = getelementptr %struct.tracepoint_func, ptr %163, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %162

170:                                              ; preds = %162, %159
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !65
  br label %171

171:                                              ; preds = %170, %148, %143
  br i1 %132, label %183, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.clk_ops, ptr %174, i32 0, i32 15
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = load i32, ptr %144, align 4
  %182 = tail call i32 %176(ptr noundef %180, i32 noundef %181, i32 noundef %18) #22
  br label %183

183:                                              ; preds = %178, %172, %171
  %184 = load i32, ptr %144, align 4
  %185 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_complete, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %183
  %188 = tail call ptr @llvm.thread.pointer() #22
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = lshr i32 %190, 5
  %192 = getelementptr i32, ptr @__cpu_online_mask, i32 %191
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %190, 31
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %193
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %210, label %198

198:                                              ; preds = %187
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !66
  %199 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_rate_complete, i32 0, i32 7), align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %209, label %201

201:                                              ; preds = %201, %198
  %202 = phi ptr [ %206, %201 ], [ %199, %198 ]
  %203 = load volatile ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.tracepoint_func, ptr %202, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  tail call void %203(ptr noundef %205, ptr noundef %0, i32 noundef %184) #22
  %206 = getelementptr %struct.tracepoint_func, ptr %202, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %201

209:                                              ; preds = %201, %198
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !67
  br label %210

210:                                              ; preds = %209, %187, %183
  %211 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.clk_ops, ptr %212, i32 0, i32 10
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %246, label %216

216:                                              ; preds = %210
  %217 = load i8, ptr %19, align 1, !range !13
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %221 = load ptr, ptr %220, align 4
  %222 = tail call i32 @__pm_runtime_resume(ptr noundef %221, i32 noundef 4) #22
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %219
  %225 = load ptr, ptr %211, align 4
  %226 = getelementptr inbounds %struct.clk_ops, ptr %225, i32 0, i32 10
  %227 = load ptr, ptr %226, align 4
  br label %235

228:                                              ; preds = %219
  %229 = load ptr, ptr %220, align 4
  %230 = getelementptr inbounds %struct.device, ptr %229, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %230) #22, !srcloc !15
  %231 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %230, ptr %230, i32 0, i32 -1, ptr elementtype(i32) %230) #22, !srcloc !16
  %232 = extractvalue { i32, i32, i32 } %231, 0
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %228
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %246

235:                                              ; preds = %224, %216
  %236 = phi ptr [ %227, %224 ], [ %214, %216 ]
  %237 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %238 = load ptr, ptr %237, align 4
  %239 = tail call i32 %236(ptr noundef %238, i32 noundef %18) #22
  %240 = load i8, ptr %19, align 1, !range !13
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %244 = load ptr, ptr %243, align 4
  %245 = tail call i32 @__pm_runtime_idle(ptr noundef %244, i32 noundef 4) #22
  br label %246

246:                                              ; preds = %242, %235, %234, %228, %210
  %247 = phi i32 [ %18, %210 ], [ %18, %228 ], [ %18, %234 ], [ %239, %235 ], [ %239, %242 ]
  store i32 %247, ptr %3, align 4
  %248 = load i32, ptr %35, align 4
  %249 = and i32 %248, 1024
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %246
  tail call fastcc void @clk_core_disable_lock(ptr noundef %0)
  tail call fastcc void @clk_core_unprepare(ptr noundef %0)
  %252 = load i32, ptr %35, align 4
  br label %253

253:                                              ; preds = %251, %246
  %254 = phi i32 [ %252, %251 ], [ %248, %246 ]
  %255 = and i32 %254, 4096
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  tail call fastcc void @clk_core_disable_lock(ptr noundef %17) #22
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %17) #22
  br label %258

258:                                              ; preds = %257, %253
  %259 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 29
  %260 = load i32, ptr %259, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %285, label %262

262:                                              ; preds = %258
  %263 = load i32, ptr %3, align 4
  %264 = icmp eq i32 %4, %263
  br i1 %264, label %285, label %265

265:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  store i32 0, ptr %2, align 4, !annotation !9
  %266 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  store i32 %4, ptr %266, align 4
  %267 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  store i32 %263, ptr %267, align 4
  %268 = load ptr, ptr @clk_notifier_list, align 4
  %269 = icmp eq ptr %268, @clk_notifier_list
  br i1 %269, label %284, label %270

270:                                              ; preds = %281, %265
  %271 = phi ptr [ %282, %281 ], [ %268, %265 ]
  %272 = getelementptr i8, ptr %271, i32 -244
  %273 = load ptr, ptr %272, align 4
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, %0
  br i1 %275, label %276, label %281

276:                                              ; preds = %270
  store ptr %273, ptr %2, align 4
  %277 = getelementptr i8, ptr %271, i32 -240
  %278 = call i32 @srcu_notifier_call_chain(ptr noundef %277, i32 noundef 2, ptr noundef nonnull %2) #22
  %279 = and i32 %278, 32768
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276, %270
  %282 = load ptr, ptr %271, align 4
  %283 = icmp eq ptr %282, @clk_notifier_list
  br i1 %283, label %284, label %270

284:                                              ; preds = %281, %276, %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  br label %285

285:                                              ; preds = %284, %262, %258
  %286 = load i32, ptr %35, align 4
  %287 = and i32 %286, 512
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %285
  %290 = load i32, ptr %144, align 4
  %291 = call fastcc ptr @clk_calc_new_rates(ptr noundef %0, i32 noundef %290)
  br label %292

292:                                              ; preds = %289, %285
  %293 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  %296 = getelementptr i8, ptr %294, i32 -104
  %297 = icmp eq ptr %296, null
  %298 = or i1 %295, %297
  br i1 %298, label %314, label %299

299:                                              ; preds = %309, %292
  %300 = phi ptr [ %311, %309 ], [ %296, %292 ]
  %301 = getelementptr inbounds %struct.clk_core, ptr %300, i32 0, i32 27
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr inbounds %struct.clk_core, ptr %300, i32 0, i32 13
  %304 = load ptr, ptr %303, align 4
  %305 = icmp eq ptr %304, null
  %306 = icmp eq ptr %304, %0
  %307 = or i1 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %299
  call fastcc void @clk_change_rate(ptr noundef nonnull %300)
  br label %309

309:                                              ; preds = %308, %299
  %310 = icmp eq ptr %302, null
  %311 = getelementptr i8, ptr %302, i32 -104
  %312 = icmp eq ptr %311, null
  %313 = or i1 %310, %312
  br i1 %313, label %314, label %299

314:                                              ; preds = %309, %292
  %315 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 14
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  call fastcc void @clk_change_rate(ptr noundef nonnull %316)
  br label %319

319:                                              ; preds = %318, %314
  %320 = load i8, ptr %19, align 1, !range !13
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %324 = load ptr, ptr %323, align 4
  %325 = call i32 @__pm_runtime_idle(ptr noundef %324, i32 noundef 4) #22
  br label %326

326:                                              ; preds = %322, %319, %33, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_calc_subtree(ptr noundef %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 12
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 13
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 9
  store i8 %3, ptr %7, align 1
  %8 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 14
  store ptr null, ptr %8, align 4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clk_core, ptr %2, i32 0, i32 14
  store ptr %0, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10, %4
  %17 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -104
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %70, label %23

23:                                               ; preds = %61, %16
  %24 = phi ptr [ %67, %61 ], [ %20, %16 ]
  %25 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.clk_ops, ptr %26, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 17
  %32 = load i8, ptr %31, align 1, !range !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #22
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr inbounds %struct.clk_ops, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  br label %50

43:                                               ; preds = %34
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #22, !srcloc !15
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 0, i32 -1, ptr elementtype(i32) %45) #22, !srcloc !16
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %61

50:                                               ; preds = %39, %30
  %51 = phi ptr [ %42, %39 ], [ %28, %30 ]
  %52 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %51(ptr noundef %53, i32 noundef %1) #22
  %55 = load i8, ptr %31, align 1, !range !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #22
  br label %61

61:                                               ; preds = %57, %50, %49, %43, %23
  %62 = phi i32 [ %1, %23 ], [ %1, %43 ], [ %1, %49 ], [ %54, %50 ], [ %54, %57 ]
  %63 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 12
  store i32 %62, ptr %63, align 4
  tail call fastcc void @clk_calc_subtree(ptr noundef nonnull %24, i32 noundef %62, ptr noundef null, i8 noundef zeroext 0)
  %64 = getelementptr inbounds %struct.clk_core, ptr %24, i32 0, i32 27
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr i8, ptr %65, i32 -104
  %68 = icmp eq ptr %67, null
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %23

70:                                               ; preds = %61, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__clk_set_parent_before(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4096
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %4) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %4) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %4) #22
  br label %16

16:                                               ; preds = %15, %12, %9
  %17 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %1) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %1) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %1) #22
  br label %23

23:                                               ; preds = %22, %19, %16, %2
  %24 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @clk_core_prepare_lock(ptr noundef %1) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %1) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %1) #22
  br label %34

34:                                               ; preds = %33, %30, %27
  %35 = tail call fastcc i32 @clk_core_enable_lock(ptr noundef %0)
  br label %36

36:                                               ; preds = %34, %23
  %37 = tail call fastcc i32 @clk_enable_lock()
  %38 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 16
  %39 = load i8, ptr %38, align 4, !range !13
  %40 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 27, i32 1
  %43 = load ptr, ptr %42, align 4
  store volatile ptr %41, ptr %43, align 4
  %44 = icmp eq ptr %41, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.hlist_node, ptr %41, i32 0, i32 1
  store volatile ptr %43, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %36
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  %48 = icmp eq ptr %1, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 16
  %51 = load i8, ptr %50, align 4, !range !13
  %52 = icmp ne i8 %51, 0
  %53 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store ptr null, ptr %53, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 26
  %59 = load ptr, ptr %58, align 4
  store volatile ptr %59, ptr %40, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.hlist_node, ptr %59, i32 0, i32 1
  store volatile ptr %40, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %57
  store volatile ptr %40, ptr %58, align 4
  store volatile ptr %58, ptr %42, align 4
  %64 = icmp eq i8 %39, %51
  br i1 %64, label %74, label %72

65:                                               ; preds = %47
  %66 = icmp eq i8 %39, 0
  %67 = load ptr, ptr @clk_orphan_list, align 4
  store volatile ptr %67, ptr %40, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  store volatile ptr %40, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %65
  store volatile ptr %40, ptr @clk_orphan_list, align 4
  store volatile ptr @clk_orphan_list, ptr %42, align 4
  br i1 %66, label %72, label %74

72:                                               ; preds = %71, %63
  %73 = phi i1 [ %52, %63 ], [ true, %71 ]
  tail call fastcc void @clk_core_update_orphan_status(ptr noundef %0, i1 noundef zeroext %73) #22
  br label %74

74:                                               ; preds = %72, %71, %63
  store ptr %1, ptr %3, align 4
  %75 = load ptr, ptr @enable_owner, align 4
  %76 = tail call ptr @llvm.thread.pointer() #22
  %77 = icmp ne ptr %75, %76
  %78 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %79 = xor i1 %78, true
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %82, !prof !11

81:                                               ; preds = %74
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32, ptr @enable_refcnt, align 4
  %84 = icmp eq i32 %83, 0
  %85 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %86 = xor i1 %85, true
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %90, !prof !11

88:                                               ; preds = %82
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %89 = load i32, ptr @enable_refcnt, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi i32 [ %89, %88 ], [ %83, %82 ]
  %92 = add i32 %91, -1
  store i32 %92, ptr @enable_refcnt, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %37) #22
  br label %95

95:                                               ; preds = %94, %90
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__clk_set_parent_after(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @clk_core_disable_lock(ptr noundef %0)
  tail call fastcc void @clk_core_disable_lock(ptr noundef %2) #22
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %2) #22
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @clk_core_disable_lock(ptr noundef %1) #22
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %1) #22
  tail call fastcc void @clk_core_disable_lock(ptr noundef %2) #22
  tail call fastcc void @clk_core_unprepare_lock(ptr noundef %2) #22
  br label %14

14:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_update_orphan_status(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #18 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 16
  store i8 %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -104
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %2
  %12 = phi ptr [ %16, %11 ], [ %8, %2 ]
  tail call fastcc void @clk_core_update_orphan_status(ptr noundef nonnull %12, i1 noundef zeroext %1)
  %13 = getelementptr inbounds %struct.clk_core, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -104
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clk_speculate_rates(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.clk_notifier_data, align 4
  %4 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_ops, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 17
  %11 = load i8, ptr %10, align 1, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #22
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.clk_ops, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  br label %29

22:                                               ; preds = %13
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #22, !srcloc !15
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 0, i32 -1, ptr elementtype(i32) %24) #22, !srcloc !16
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %40

29:                                               ; preds = %18, %9
  %30 = phi ptr [ %21, %18 ], [ %7, %9 ]
  %31 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %30(ptr noundef %32, i32 noundef %1) #22
  %34 = load i8, ptr %10, align 1, !range !13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 4) #22
  br label %40

40:                                               ; preds = %36, %29, %28, %22, %2
  %41 = phi i32 [ %1, %2 ], [ %1, %22 ], [ %1, %28 ], [ %33, %29 ], [ %33, %36 ]
  %42 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 29
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !9
  %48 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_notifier_data, ptr %3, i32 0, i32 2
  store i32 %41, ptr %49, align 4
  %50 = load ptr, ptr @clk_notifier_list, align 4
  %51 = icmp eq ptr %50, @clk_notifier_list
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  br label %73

53:                                               ; preds = %66, %45
  %54 = phi ptr [ %68, %66 ], [ %50, %45 ]
  %55 = phi i32 [ %67, %66 ], [ 0, %45 ]
  %56 = getelementptr i8, ptr %54, i32 -244
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  store ptr %57, ptr %3, align 4
  %61 = getelementptr i8, ptr %54, i32 -240
  %62 = call i32 @srcu_notifier_call_chain(ptr noundef %61, i32 noundef 1, ptr noundef nonnull %3) #22
  %63 = and i32 %62, 32768
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  br label %93

66:                                               ; preds = %60, %53
  %67 = phi i32 [ %62, %60 ], [ %55, %53 ]
  %68 = load ptr, ptr %54, align 4
  %69 = icmp eq ptr %68, @clk_notifier_list
  br i1 %69, label %70, label %53

70:                                               ; preds = %66
  %71 = and i32 %67, 32768
  %72 = icmp eq i32 %71, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  br i1 %72, label %73, label %93

73:                                               ; preds = %70, %52, %40
  %74 = phi i32 [ %67, %70 ], [ 0, %52 ], [ 0, %40 ]
  %75 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = getelementptr i8, ptr %76, i32 -104
  %79 = icmp eq ptr %78, null
  %80 = or i1 %77, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %86, %73
  %82 = phi ptr [ %90, %86 ], [ %78, %73 ]
  %83 = call fastcc i32 @__clk_speculate_rates(ptr noundef nonnull %82, i32 noundef %41)
  %84 = and i32 %83, 32768
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.clk_core, ptr %82, i32 0, i32 27
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = getelementptr i8, ptr %88, i32 -104
  %91 = icmp eq ptr %90, null
  %92 = or i1 %89, %91
  br i1 %92, label %93, label %81

93:                                               ; preds = %86, %81, %73, %70, %65
  %94 = phi i32 [ %67, %70 ], [ %74, %73 ], [ %62, %65 ], [ %83, %86 ], [ %83, %81 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__clk_set_parent(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @__clk_set_parent_before(ptr noundef %0, ptr noundef %1)
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #22
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
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !60
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %0, ptr noundef %1) #22
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !61
  br label %30

30:                                               ; preds = %29, %7, %3
  %31 = icmp eq ptr %1, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.clk_ops, ptr %34, i32 0, i32 13
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %36(ptr noundef %40, i8 noundef zeroext %2) #22
  br label %42

42:                                               ; preds = %38, %32, %30
  %43 = phi i32 [ %41, %38 ], [ 0, %32 ], [ 0, %30 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent_complete, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #22
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
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !62
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_clk_set_parent_complete, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, ptr noundef %0, ptr noundef %1) #22
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !63
  br label %69

69:                                               ; preds = %68, %46, %42
  %70 = icmp eq i32 %43, 0
  br i1 %70, label %132, label %71

71:                                               ; preds = %69
  %72 = tail call fastcc i32 @clk_enable_lock()
  %73 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 16
  %74 = load i8, ptr %73, align 4, !range !13
  %75 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 27, i32 1
  %78 = load ptr, ptr %77, align 4
  store volatile ptr %76, ptr %78, align 4
  %79 = icmp eq ptr %76, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  store volatile ptr %78, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %71
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %77, align 4
  %83 = icmp eq ptr %4, null
  br i1 %83, label %100, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 16
  %86 = load i8, ptr %85, align 4, !range !13
  %87 = icmp ne i8 %86, 0
  %88 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 14
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store ptr null, ptr %88, align 4
  br label %92

92:                                               ; preds = %91, %84
  %93 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 26
  %94 = load ptr, ptr %93, align 4
  store volatile ptr %94, ptr %75, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hlist_node, ptr %94, i32 0, i32 1
  store volatile ptr %75, ptr %97, align 4
  br label %98

98:                                               ; preds = %96, %92
  store volatile ptr %75, ptr %93, align 4
  store volatile ptr %93, ptr %77, align 4
  %99 = icmp eq i8 %74, %86
  br i1 %99, label %109, label %107

100:                                              ; preds = %82
  %101 = icmp eq i8 %74, 0
  %102 = load ptr, ptr @clk_orphan_list, align 4
  store volatile ptr %102, ptr %75, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.hlist_node, ptr %102, i32 0, i32 1
  store volatile ptr %75, ptr %105, align 4
  br label %106

106:                                              ; preds = %104, %100
  store volatile ptr %75, ptr @clk_orphan_list, align 4
  store volatile ptr @clk_orphan_list, ptr %77, align 4
  br i1 %101, label %107, label %109

107:                                              ; preds = %106, %98
  %108 = phi i1 [ %87, %98 ], [ true, %106 ]
  tail call fastcc void @clk_core_update_orphan_status(ptr noundef %0, i1 noundef zeroext %108) #22
  br label %109

109:                                              ; preds = %107, %106, %98
  %110 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  store ptr %4, ptr %110, align 4
  %111 = load ptr, ptr @enable_owner, align 4
  %112 = tail call ptr @llvm.thread.pointer() #22
  %113 = icmp ne ptr %111, %112
  %114 = load i1, ptr @clk_enable_unlock.__already_done, align 1
  %115 = xor i1 %114, true
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %118, !prof !11

117:                                              ; preds = %109
  store i1 true, ptr @clk_enable_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #22
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32, ptr @enable_refcnt, align 4
  %120 = icmp eq i32 %119, 0
  %121 = load i1, ptr @clk_enable_unlock.__already_done.114, align 1
  %122 = xor i1 %121, true
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %124, label %126, !prof !11

124:                                              ; preds = %118
  store i1 true, ptr @clk_enable_unlock.__already_done.114, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #22
  %125 = load i32, ptr @enable_refcnt, align 4
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi i32 [ %125, %124 ], [ %119, %118 ]
  %128 = add i32 %127, -1
  store i32 %128, ptr @enable_refcnt, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store ptr null, ptr @enable_owner, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @enable_lock, i32 noundef %72) #22
  br label %131

131:                                              ; preds = %130, %126
  tail call fastcc void @__clk_set_parent_after(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  br label %133

132:                                              ; preds = %69
  tail call fastcc void @__clk_set_parent_after(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  br label %133

133:                                              ; preds = %132, %131
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_core_update_duty_cycle_nolock(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25
  %3 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_ops, ptr %4, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %19

17:                                               ; preds = %38, %35, %24, %19
  %18 = phi i32 [ %20, %19 ], [ %39, %38 ], [ 0, %35 ], [ 0, %24 ]
  ret i32 %18

19:                                               ; preds = %12
  %20 = tail call fastcc i32 @clk_core_update_duty_cycle_nolock(ptr noundef nonnull %10) #22
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.clk_core, ptr %21, i32 0, i32 25
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %2, align 4
  br label %17

24:                                               ; preds = %12, %8
  store i32 1, ptr %2, align 4
  %25 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25, i32 1
  store i32 2, ptr %25, align 4
  br label %17

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %6(ptr noundef %28, ptr noundef %2) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %2, align 4
  %37 = icmp ugt i32 %36, %33
  br i1 %37, label %38, label %17

38:                                               ; preds = %35, %31, %26
  %39 = phi i32 [ %29, %26 ], [ -22, %35 ], [ -22, %31 ]
  store i32 1, ptr %2, align 4
  %40 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 25, i32 1
  store i32 2, ptr %40, align 4
  br label %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_debug_create_one(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @debugfs_create_dir(ptr noundef %7, ptr noundef nonnull %1) #22
  %9 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 30
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.73, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @clk_rate_fops) #22
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.74, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @clk_min_rate_fops) #22
  %12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.75, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @clk_max_rate_fops) #22
  %13 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 23
  tail call void @debugfs_create_ulong(ptr noundef nonnull @.str.76, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %13) #22
  %14 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 24
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.77, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %14) #22
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.78, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @clk_flags_fops) #22
  %16 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 19
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.79, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %16) #22
  %17 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 18
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.80, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %17) #22
  %18 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 20
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.81, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %18) #22
  %19 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 29
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.82, i16 noundef zeroext 292, ptr noundef %8, ptr noundef %19) #22
  %20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @clk_duty_cycle_fops) #22
  %21 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.84, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @current_parent_fops) #22
  %26 = load i8, ptr %21, align 4
  %27 = icmp ugt i8 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.85, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull @possible_parents_fops) #22
  br label %30

30:                                               ; preds = %28, %24, %6
  %31 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.clk_ops, ptr %32, i32 0, i32 24
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %9, align 4
  tail call void %34(ptr noundef %38, ptr noundef %39) #22
  br label %40

40:                                               ; preds = %36, %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_summary_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.54) #22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.55) #22
  tail call fastcc void @clk_prepare_lock()
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %23, %2
  %8 = phi ptr [ %25, %23 ], [ %5, %2 ]
  %9 = phi ptr [ %24, %23 ], [ %4, %2 ]
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, null
  %12 = getelementptr i8, ptr %10, i32 -104
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %7
  %16 = phi ptr [ %20, %15 ], [ %12, %7 ]
  tail call fastcc void @clk_summary_show_subtree(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0)
  %17 = getelementptr inbounds %struct.clk_core, ptr %16, i32 0, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -104
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %7
  %24 = getelementptr ptr, ptr %9, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7

27:                                               ; preds = %23, %2
  %28 = load ptr, ptr @prepare_owner, align 4
  %29 = tail call ptr @llvm.thread.pointer() #22
  %30 = icmp ne ptr %28, %29
  %31 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %27
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, ptr @prepare_refcnt, align 4
  %37 = icmp eq i32 %36, 0
  %38 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %43, !prof !11

41:                                               ; preds = %35
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %42 = load i32, ptr @prepare_refcnt, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ %36, %35 ]
  %45 = add i32 %44, -1
  store i32 %45, ptr @prepare_refcnt, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %48

48:                                               ; preds = %47, %43
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_summary_show_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 17
  %5 = load i8, ptr %4, align 1, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #22
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #22, !srcloc !15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 0, i32 -1, ptr elementtype(i32) %14) #22, !srcloc !16
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %19

19:                                               ; preds = %18, %12, %7, %3
  %20 = mul i32 %2, 3
  %21 = add i32 %20, 1
  %22 = sub i32 30, %20
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 19
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq ptr %1, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 15
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %1, i32 noundef 0) #22
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 8
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = phi i32 [ 0, %41 ], [ %47, %45 ]
  %50 = load i32, ptr %32, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %1) #22
  br label %54

54:                                               ; preds = %53, %48
  %55 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 23
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %19
  %58 = phi i32 [ %49, %54 ], [ 0, %19 ]
  %59 = phi i32 [ %56, %54 ], [ 0, %19 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %21, ptr noundef nonnull @.str.57, i32 noundef %22, ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %58, i32 noundef %59) #22
  %60 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.clk_ops, ptr %61, i32 0, i32 18
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %63(ptr noundef %67) #22
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 24
  store i32 %68, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %57
  %73 = phi i32 [ %68, %70 ], [ 0, %57 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %73) #22
  br label %75

74:                                               ; preds = %65
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.59) #22
  br label %75

75:                                               ; preds = %74, %72
  %76 = tail call fastcc i32 @clk_core_get_scaled_duty_cycle(ptr noundef %1, i32 noundef 100000) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %76) #22
  %77 = load ptr, ptr %60, align 4
  %78 = getelementptr inbounds %struct.clk_ops, ptr %77, i32 0, i32 6
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %115, label %81

81:                                               ; preds = %75
  %82 = load i8, ptr %4, align 1, !range !13
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #22, !srcloc !15
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #22, !srcloc !18
  %89 = load ptr, ptr %85, align 4
  %90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 11, i32 18
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 11, i32 15
  %95 = load i16, ptr %94, align 8
  %96 = and i16 %95, 7
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %93, %84, %81
  %99 = load ptr, ptr %60, align 4
  %100 = getelementptr inbounds %struct.clk_ops, ptr %99, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %101(ptr noundef %103) #22
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, i32 78, i32 89
  br label %107

107:                                              ; preds = %98, %93
  %108 = phi i32 [ %106, %98 ], [ 78, %93 ]
  %109 = load i8, ptr %4, align 1, !range !13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 @__pm_runtime_idle(ptr noundef %113, i32 noundef 5) #22
  br label %120

115:                                              ; preds = %75
  %116 = getelementptr inbounds %struct.clk_ops, ptr %77, i32 0, i32 4
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = select i1 %118, i32 89, i32 63
  br label %120

120:                                              ; preds = %115, %111, %107
  %121 = phi i32 [ %108, %107 ], [ %108, %111 ], [ %119, %115 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %121) #22
  %122 = load i8, ptr %4, align 1, !range !13
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = tail call i32 @__pm_runtime_idle(ptr noundef %126, i32 noundef 4) #22
  br label %128

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 26
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  %132 = getelementptr i8, ptr %130, i32 -104
  %133 = icmp eq ptr %132, null
  %134 = or i1 %131, %133
  br i1 %134, label %145, label %135

135:                                              ; preds = %128
  %136 = add i32 %2, 1
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi ptr [ %132, %135 ], [ %142, %137 ]
  tail call fastcc void @clk_summary_show_subtree(ptr noundef %0, ptr noundef nonnull %138, i32 noundef %136)
  %139 = getelementptr inbounds %struct.clk_core, ptr %138, i32 0, i32 27
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  %142 = getelementptr i8, ptr %140, i32 -104
  %143 = icmp eq ptr %142, null
  %144 = or i1 %141, %143
  br i1 %144, label %145, label %137

145:                                              ; preds = %137, %128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dump_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_dump_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_dump_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 123) #22
  tail call fastcc void @clk_prepare_lock()
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %32, %2
  %8 = phi ptr [ %35, %32 ], [ %5, %2 ]
  %9 = phi i1 [ %33, %32 ], [ true, %2 ]
  %10 = phi ptr [ %34, %32 ], [ %4, %2 ]
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -104
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %7
  br i1 %9, label %18, label %17

17:                                               ; preds = %16
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #22
  br label %18

18:                                               ; preds = %17, %16
  tail call fastcc void @clk_dump_subtree(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 0)
  %19 = load ptr, ptr %11, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -104
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %18
  %25 = phi ptr [ %29, %24 ], [ %21, %18 ]
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #22
  tail call fastcc void @clk_dump_subtree(ptr noundef %0, ptr noundef nonnull %25, i32 noundef 0)
  %26 = getelementptr inbounds %struct.clk_core, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %27, i32 -104
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %32, label %24, !llvm.loop !68

32:                                               ; preds = %24, %18, %7
  %33 = phi i1 [ %9, %7 ], [ false, %18 ], [ false, %24 ]
  %34 = getelementptr ptr, ptr %10, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %7

37:                                               ; preds = %32, %2
  %38 = load ptr, ptr @prepare_owner, align 4
  %39 = tail call ptr @llvm.thread.pointer() #22
  %40 = icmp ne ptr %38, %39
  %41 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !11

44:                                               ; preds = %37
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, ptr @prepare_refcnt, align 4
  %47 = icmp eq i32 %46, 0
  %48 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %53, !prof !11

51:                                               ; preds = %45
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %52 = load i32, ptr @prepare_refcnt, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i32 [ %52, %51 ], [ %46, %45 ]
  %55 = add i32 %54, -1
  store i32 %55, ptr @prepare_refcnt, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %58

58:                                               ; preds = %57, %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.62) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_dump_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -28
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %14, %3
  %15 = phi i32 [ %19, %14 ], [ %5, %3 ]
  %16 = phi ptr [ %23, %14 ], [ %11, %3 ]
  %17 = getelementptr inbounds %struct.clk, ptr %16, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %15, i32 %18) #22
  %20 = getelementptr inbounds %struct.clk, ptr %16, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -28
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %26, label %14

26:                                               ; preds = %26, %14
  %27 = phi i32 [ %31, %26 ], [ %7, %14 ]
  %28 = phi ptr [ %35, %26 ], [ %11, %14 ]
  %29 = getelementptr inbounds %struct.clk, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %27, i32 %30) #22
  %32 = getelementptr inbounds %struct.clk, ptr %28, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = getelementptr i8, ptr %33, i32 -28
  %36 = icmp eq ptr %35, null
  %37 = or i1 %34, %36
  br i1 %37, label %38, label %26

38:                                               ; preds = %26, %3
  %39 = phi i32 [ %5, %3 ], [ %19, %26 ]
  %40 = phi i32 [ %7, %3 ], [ %31, %26 ]
  %41 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %41) #22
  %42 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 18
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %43) #22
  %44 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 19
  %45 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %45) #22
  %46 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.66, i32 noundef %47) #22
  %48 = icmp eq ptr %1, null
  br i1 %48, label %75, label %49

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %1, i32 noundef 0) #22
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 8
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 10
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %65, %63 ], [ 0, %59 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef %67) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %39) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %40) #22
  %68 = load i32, ptr %50, align 4
  %69 = and i32 %68, 256
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %1) #22
  br label %72

72:                                               ; preds = %71, %66
  %73 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 23
  %74 = load i32, ptr %73, align 4
  br label %76

75:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, i32 noundef 0) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %39) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %40) #22
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 0, %75 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %77) #22
  %78 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.clk_ops, ptr %79, i32 0, i32 18
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %81(ptr noundef %85) #22
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 24
  store i32 %86, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %76
  %91 = phi i32 [ %86, %88 ], [ 0, %76 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.71, i32 noundef %91) #22
  br label %92

92:                                               ; preds = %90, %83
  %93 = tail call fastcc i32 @clk_core_get_scaled_duty_cycle(ptr noundef %1, i32 noundef 100000) #22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %93) #22
  %94 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 26
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = getelementptr i8, ptr %95, i32 -104
  %98 = icmp eq ptr %97, null
  %99 = or i1 %96, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %92
  %101 = add i32 %2, 1
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi ptr [ %97, %100 ], [ %107, %102 ]
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 44) #22
  tail call fastcc void @clk_dump_subtree(ptr noundef %0, ptr noundef nonnull %103, i32 noundef %101)
  %104 = getelementptr inbounds %struct.clk_core, ptr %103, i32 0, i32 27
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = getelementptr i8, ptr %105, i32 -104
  %108 = icmp eq ptr %107, null
  %109 = or i1 %106, %108
  br i1 %109, label %110, label %102

110:                                              ; preds = %102, %92
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 125) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_ulong(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rate_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clk_rate_get, ptr noundef null, ptr noundef nonnull @.str.86) #22
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_rate_get(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  tail call fastcc void @clk_prepare_lock()
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %0, i32 noundef 0) #22
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = phi i32 [ %20, %18 ], [ 0, %14 ], [ 0, %2 ]
  %23 = zext i32 %22 to i64
  store i64 %23, ptr %1, align 8
  %24 = load ptr, ptr @prepare_owner, align 4
  %25 = tail call ptr @llvm.thread.pointer() #22
  %26 = icmp ne ptr %24, %25
  %27 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %21
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, ptr @prepare_refcnt, align 4
  %33 = icmp eq i32 %32, 0
  %34 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %39, !prof !11

37:                                               ; preds = %31
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %38 = load i32, ptr @prepare_refcnt, align 4
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi i32 [ %38, %37 ], [ %32, %31 ]
  %41 = add i32 %40, -1
  store i32 %41, ptr @prepare_refcnt, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %44

44:                                               ; preds = %43, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_min_rate_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_min_rate_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_min_rate_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @clk_prepare_lock()
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -28
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %13, %2
  %14 = phi i32 [ %18, %13 ], [ %6, %2 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %2 ]
  %16 = getelementptr inbounds %struct.clk, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %14, i32 %17) #22
  %19 = getelementptr inbounds %struct.clk, ptr %15, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -28
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %13

25:                                               ; preds = %13
  br i1 %12, label %33, label %26

26:                                               ; preds = %26, %25
  %27 = phi ptr [ %28, %26 ], [ %8, %25 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -28
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %26

33:                                               ; preds = %26, %25, %2
  %34 = phi i32 [ %18, %25 ], [ %6, %2 ], [ %18, %26 ]
  %35 = load ptr, ptr @prepare_owner, align 4
  %36 = tail call ptr @llvm.thread.pointer() #22
  %37 = icmp ne ptr %35, %36
  %38 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %33
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, ptr @prepare_refcnt, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %50, !prof !11

48:                                               ; preds = %42
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %49 = load i32, ptr @prepare_refcnt, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i32 [ %49, %48 ], [ %43, %42 ]
  %52 = add i32 %51, -1
  store i32 %52, ptr @prepare_refcnt, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %55

55:                                               ; preds = %54, %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %34) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_max_rate_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_max_rate_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_max_rate_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call fastcc void @clk_prepare_lock()
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = getelementptr i8, ptr %8, i32 -28
  %11 = icmp eq ptr %10, null
  %12 = or i1 %9, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %13, %2
  %14 = phi ptr [ %15, %13 ], [ %8, %2 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -28
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %13

20:                                               ; preds = %13
  br i1 %12, label %33, label %21

21:                                               ; preds = %21, %20
  %22 = phi i32 [ %26, %21 ], [ %6, %20 ]
  %23 = phi ptr [ %30, %21 ], [ %10, %20 ]
  %24 = getelementptr inbounds %struct.clk, ptr %23, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %22, i32 %25) #22
  %27 = getelementptr inbounds %struct.clk, ptr %23, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -28
  %31 = icmp eq ptr %30, null
  %32 = or i1 %29, %31
  br i1 %32, label %33, label %21

33:                                               ; preds = %21, %20, %2
  %34 = phi i32 [ %6, %20 ], [ %6, %2 ], [ %26, %21 ]
  %35 = load ptr, ptr @prepare_owner, align 4
  %36 = tail call ptr @llvm.thread.pointer() #22
  %37 = icmp ne ptr %35, %36
  %38 = load i1, ptr @clk_prepare_unlock.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %33
  store i1 true, ptr @clk_prepare_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #22
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, ptr @prepare_refcnt, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load i1, ptr @clk_prepare_unlock.__already_done.39, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %50, !prof !11

48:                                               ; preds = %42
  store i1 true, ptr @clk_prepare_unlock.__already_done.39, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #22
  %49 = load i32, ptr @prepare_refcnt, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i32 [ %49, %48 ], [ %43, %42 ]
  %52 = add i32 %51, -1
  store i32 %52, ptr @prepare_refcnt, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store ptr null, ptr @prepare_owner, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @prepare_lock) #22
  br label %55

55:                                               ; preds = %54, %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %34) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_flags_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_flags_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_flags_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %20, %2
  %9 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %10 = phi i32 [ %21, %20 ], [ %6, %2 ]
  %11 = getelementptr [12 x %struct.anon.93], ptr @clk_flags, i32 0, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr [12 x %struct.anon.93], ptr @clk_flags, i32 0, i32 %9, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %17) #22
  %18 = xor i32 %12, -1
  %19 = and i32 %10, %18
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ %10, %8 ]
  %22 = add nuw nsw i32 %9, 1
  %23 = icmp ne i32 %21, 0
  %24 = icmp ult i32 %9, 11
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %8, label %26

26:                                               ; preds = %20
  br i1 %23, label %27, label %28

27:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88, i32 noundef %21) #22
  br label %28

28:                                               ; preds = %27, %26, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_duty_cycle_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @clk_duty_cycle_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_duty_cycle_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 25
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 25, i32 1
  %8 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.101, i32 noundef %6, i32 noundef %8) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_parent_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @current_parent_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @current_parent_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %9) #22
  br label %10

10:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @possible_parents_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @possible_parents_show, ptr noundef %4) #22
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @possible_parents_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.clk_core, ptr %4, i32 0, i32 8
  %6 = load i8, ptr %5, align 4
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %10, %8 ], [ 0, %2 ]
  tail call fastcc void @possible_parent_show(ptr noundef %0, ptr noundef %4, i32 noundef %9, i8 noundef zeroext 32)
  %10 = add nuw nsw i32 %9, 1
  %11 = load i8, ptr %5, align 4
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, -1
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %8, label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ 0, %2 ], [ %10, %8 ]
  tail call fastcc void @possible_parent_show(ptr noundef %0, ptr noundef %4, i32 noundef %16, i8 noundef zeroext 10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @possible_parent_show(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = trunc i32 %2 to i8
  %6 = tail call fastcc ptr @clk_core_get_parent_by_index(ptr noundef %1, i8 noundef zeroext %5)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef %9) #22
  br label %31

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.clk_parent_map, ptr %12, i32 %2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %14) #22
  br label %31

17:                                               ; preds = %10
  %18 = getelementptr %struct.clk_parent_map, ptr %12, i32 %2, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef nonnull %19) #22
  br label %31

22:                                               ; preds = %17
  %23 = getelementptr %struct.clk_parent_map, ptr %12, i32 %2, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.clk_core, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @of_clk_get_parent_name(ptr noundef %28, i32 noundef %24)
  tail call void @seq_puts(ptr noundef %0, ptr noundef %29) #22
  br label %31

30:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.103) #22
  br label %31

31:                                               ; preds = %30, %26, %21, %16, %8
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_reparent_orphans_nolock() unnamed_addr #0 {
  %1 = load ptr, ptr @clk_orphan_list, align 4
  %2 = icmp eq ptr %1, null
  %3 = getelementptr i8, ptr %1, i32 -104
  %4 = icmp eq ptr %3, null
  %5 = or i1 %2, %4
  br i1 %5, label %34, label %6

6:                                                ; preds = %29, %0
  %7 = phi ptr [ %31, %29 ], [ %3, %0 ]
  %8 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 8
  %11 = load i8, ptr %10, align 4
  %12 = icmp ugt i8 %11, 1
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.clk_ops, ptr %15, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.clk_core, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i8 %17(ptr noundef %21) #22
  br label %23

23:                                               ; preds = %19, %13, %6
  %24 = phi i8 [ %22, %19 ], [ 0, %13 ], [ 0, %6 ]
  %25 = tail call fastcc ptr @clk_core_get_parent_by_index(ptr noundef nonnull %7, i8 noundef zeroext %24) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @__clk_set_parent_before(ptr noundef nonnull %7, ptr noundef nonnull %25)
  tail call fastcc void @__clk_set_parent_after(ptr noundef nonnull %7, ptr noundef nonnull %25, ptr noundef null)
  tail call fastcc void @__clk_recalc_accuracies(ptr noundef nonnull %7)
  tail call fastcc void @__clk_recalc_rates(ptr noundef nonnull %7, i32 noundef 0)
  br label %29

29:                                               ; preds = %27, %23
  %30 = icmp eq ptr %9, null
  %31 = getelementptr i8, ptr %9, i32 -104
  %32 = icmp eq ptr %31, null
  %33 = or i1 %30, %32
  br i1 %33, label %34, label %6

34:                                               ; preds = %29, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_nodrv_prepare_enable(ptr nocapture noundef readnone %0) #14 {
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_nodrv_disable_unprepare(ptr nocapture noundef readnone %0) #0 {
  %2 = load i1, ptr @clk_nodrv_disable_unprepare.__already_done, align 1
  br i1 %2, label %4, label %3, !prof !10

3:                                                ; preds = %1
  store i1 true, ptr @clk_nodrv_disable_unprepare.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4058, i32 noundef 9, ptr noundef null) #22
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_nodrv_set_parent(ptr nocapture noundef readnone %0, i8 noundef zeroext %1) #14 {
  ret i32 -6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @clk_nodrv_set_rate(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #14 {
  ret i32 -6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clk_core_evict_parent_cache_subtree(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %17, %6
  %9 = phi i8 [ %4, %6 ], [ %18, %17 ]
  %10 = phi i32 [ 0, %6 ], [ %19, %17 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.clk_parent_map, ptr %11, i32 %10, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  store ptr null, ptr %12, align 4
  %16 = load i8, ptr %3, align 4
  br label %17

17:                                               ; preds = %15, %8
  %18 = phi i8 [ %9, %8 ], [ %16, %15 ]
  %19 = add nuw nsw i32 %10, 1
  %20 = zext i8 %18 to i32
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %8, label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.clk_core, ptr %0, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = getelementptr i8, ptr %24, i32 -104
  %27 = icmp eq ptr %26, null
  %28 = or i1 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %22
  %30 = phi ptr [ %34, %29 ], [ %26, %22 ]
  tail call fastcc void @clk_core_evict_parent_cache_subtree(ptr noundef nonnull %30, ptr noundef %1)
  %31 = getelementptr inbounds %struct.clk_core, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -104
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind allocsize(0) }

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
!12 = !{i64 485595}
!13 = !{i8 0, i8 2}
!14 = !{i64 2148073346}
!15 = !{i64 571656, i64 2148061627, i64 2148061653, i64 2148061700, i64 2148061722, i64 2148061750, i64 2148061770}
!16 = !{i64 558225, i64 558250, i64 558272, i64 558288, i64 558300, i64 558320, i64 558344, i64 558360, i64 558372}
!17 = !{i64 2148073472}
!18 = !{i64 2148073839, i64 2148073865, i64 2148073894, i64 2148073928, i64 2148073959, i64 2148073982}
!19 = !{i64 2151848400}
!20 = !{i64 2151848576}
!21 = !{i64 2151815370}
!22 = !{i64 2151815534}
!23 = !{i64 2151831703}
!24 = !{i64 2151831867}
!25 = !{i64 2151902093}
!26 = !{i64 2151902253}
!27 = !{i64 2151918365}
!28 = !{i64 2151918543}
!29 = !{i64 2151939191}
!30 = !{i64 2151939359}
!31 = !{i64 2151956098}
!32 = !{i64 2151956284}
!33 = !{i64 2148075297, i64 2148075329, i64 2148075358, i64 2148075392, i64 2148075423, i64 2148075446}
!34 = !{i64 2148175495}
!35 = !{i64 2148077654, i64 2148077686, i64 2148077715, i64 2148077749, i64 2148077780, i64 2148077803}
!36 = !{i64 2149813716}
!37 = !{i64 466895, i64 466956}
!38 = !{i64 469912}
!39 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!40 = !{i64 2151746008}
!41 = !{i64 2151746154}
!42 = !{i64 2151761983}
!43 = !{i64 2151762147}
!44 = !{i64 2151710145}
!45 = !{i64 2151710287}
!46 = !{i64 2151729997}
!47 = !{i64 2151730157}
!48 = !{i64 2151686769}
!49 = !{i64 2151686911}
!50 = !{i64 2151702947}
!51 = !{i64 2151703107}
!52 = !{i64 2151651085}
!53 = !{i64 2151651225}
!54 = !{i64 2151671232}
!55 = !{i64 2151671390}
!56 = !{i64 2151678419}
!57 = !{i64 2151678561}
!58 = !{i64 2151694210}
!59 = !{i64 2151694370}
!60 = !{i64 2151868982}
!61 = !{i64 2151869146}
!62 = !{i64 2151885587}
!63 = !{i64 2151885769}
!64 = !{i64 2151778399}
!65 = !{i64 2151778555}
!66 = !{i64 2151798767}
!67 = !{i64 2151798941}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.peeled.count", i32 1}
