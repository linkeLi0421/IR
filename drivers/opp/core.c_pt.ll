; ModuleID = '/llk/IR/drivers/opp/core.c_pt.bc'
source_filename = "../drivers/opp/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_freq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_level:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_level\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_required_pstate:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_required_pstate\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_required_pstate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_is_turbo:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_is_turbo\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_is_turbo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_max_clock_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_max_clock_latency\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_max_clock_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_max_volt_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_max_volt_latency\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_max_volt_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_max_transition_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_max_transition_latency\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_max_transition_latency:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_suspend_opp_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_suspend_opp_freq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_suspend_opp_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_opp_count:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_opp_count\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_opp_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_freq_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_freq_exact\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_freq_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_level_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_level_exact\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_level_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_level_ceil:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_level_ceil\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_level_ceil:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_freq_ceil:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_freq_ceil\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_freq_ceil:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_freq_floor:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_freq_floor\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_freq_floor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_find_freq_ceil_by_volt:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_find_freq_ceil_by_volt\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_find_freq_ceil_by_volt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_rate\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_opp\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_opp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_opp_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_opp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put_opp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put_opp_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put_opp_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_remove_all_dynamic:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_remove_all_dynamic\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_remove_all_dynamic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_supported_hw\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put_supported_hw\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_opp_set_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_opp_set_supported_hw\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_opp_set_supported_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_prop_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_prop_name\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_prop_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put_prop_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put_prop_name\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put_prop_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_opp_set_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_opp_set_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_opp_set_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_clkname\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_put_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_put_clkname\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_put_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_opp_set_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_opp_set_clkname\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_opp_set_clkname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_register_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_register_set_opp_helper\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_register_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_unregister_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_unregister_set_opp_helper\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_unregister_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_opp_register_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_opp_register_set_opp_helper\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_opp_register_set_opp_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_attach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_attach_genpd\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_attach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_detach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_detach_genpd\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_detach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_opp_attach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_opp_attach_genpd\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_opp_attach_genpd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_xlate_required_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_xlate_required_opp\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_xlate_required_opp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_add\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_adjust_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_adjust_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_adjust_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_enable\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_disable\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_remove_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_sync_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_sync_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_sync_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.opp_table = type { %struct.list_head, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, [255 x i8] }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.opp_device = type { %struct.list_head, ptr, ptr }
%struct.dev_pm_opp = type { %struct.list_head, %struct.kref, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.71 = type { i32, i32 }
%struct.dev_pm_opp_supply = type { i32, i32, i32, i32 }
%struct.dev_pm_opp_icc_bw = type { i32, i32 }
%struct.dev_pm_opp_info = type { i32, ptr }
%struct.dev_pm_set_opp_data = type { %struct.dev_pm_opp_info, %struct.dev_pm_opp_info, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@opp_tables = dso_local global %struct.list_head { ptr @opp_tables, ptr @opp_tables }, align 4
@lazy_opp_tables = dso_local global %struct.list_head { ptr @lazy_opp_tables, ptr @lazy_opp_tables }, align 4
@opp_table_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @opp_table_lock, i64 12), ptr getelementptr (i8, ptr @opp_table_lock, i64 12) } }, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013core: %s: Invalid parameters\0A\00", align 1
@__func__._find_opp_table = private unnamed_addr constant [16 x i8] c"_find_opp_table\00", align 1
@__func__.dev_pm_opp_get_voltage = private unnamed_addr constant [23 x i8] c"dev_pm_opp_get_voltage\00", align 1
@__kstrtab_dev_pm_opp_get_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_voltage to i32), ptr @__kstrtab_dev_pm_opp_get_voltage, ptr @__kstrtabns_dev_pm_opp_get_voltage }, section "___ksymtab_gpl+dev_pm_opp_get_voltage", align 4
@__func__.dev_pm_opp_get_freq = private unnamed_addr constant [20 x i8] c"dev_pm_opp_get_freq\00", align 1
@__kstrtab_dev_pm_opp_get_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_freq to i32), ptr @__kstrtab_dev_pm_opp_get_freq, ptr @__kstrtabns_dev_pm_opp_get_freq }, section "___ksymtab_gpl+dev_pm_opp_get_freq", align 4
@__func__.dev_pm_opp_get_level = private unnamed_addr constant [21 x i8] c"dev_pm_opp_get_level\00", align 1
@__kstrtab_dev_pm_opp_get_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_level = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_level to i32), ptr @__kstrtab_dev_pm_opp_get_level, ptr @__kstrtabns_dev_pm_opp_get_level }, section "___ksymtab_gpl+dev_pm_opp_get_level", align 4
@__func__.dev_pm_opp_get_required_pstate = private unnamed_addr constant [31 x i8] c"dev_pm_opp_get_required_pstate\00", align 1
@__kstrtab_dev_pm_opp_get_required_pstate = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_required_pstate = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_required_pstate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_required_pstate to i32), ptr @__kstrtab_dev_pm_opp_get_required_pstate, ptr @__kstrtabns_dev_pm_opp_get_required_pstate }, section "___ksymtab_gpl+dev_pm_opp_get_required_pstate", align 4
@__func__.dev_pm_opp_is_turbo = private unnamed_addr constant [20 x i8] c"dev_pm_opp_is_turbo\00", align 1
@__kstrtab_dev_pm_opp_is_turbo = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_is_turbo = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_is_turbo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_is_turbo to i32), ptr @__kstrtab_dev_pm_opp_is_turbo, ptr @__kstrtabns_dev_pm_opp_is_turbo }, section "___ksymtab_gpl+dev_pm_opp_is_turbo", align 4
@__kstrtab_dev_pm_opp_get_max_clock_latency = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_max_clock_latency = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_max_clock_latency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_max_clock_latency to i32), ptr @__kstrtab_dev_pm_opp_get_max_clock_latency, ptr @__kstrtabns_dev_pm_opp_get_max_clock_latency }, section "___ksymtab_gpl+dev_pm_opp_get_max_clock_latency", align 4
@__kstrtab_dev_pm_opp_get_max_volt_latency = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_max_volt_latency = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_max_volt_latency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_max_volt_latency to i32), ptr @__kstrtab_dev_pm_opp_get_max_volt_latency, ptr @__kstrtabns_dev_pm_opp_get_max_volt_latency }, section "___ksymtab_gpl+dev_pm_opp_get_max_volt_latency", align 4
@__kstrtab_dev_pm_opp_get_max_transition_latency = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_max_transition_latency = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_max_transition_latency = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_max_transition_latency to i32), ptr @__kstrtab_dev_pm_opp_get_max_transition_latency, ptr @__kstrtabns_dev_pm_opp_get_max_transition_latency }, section "___ksymtab_gpl+dev_pm_opp_get_max_transition_latency", align 4
@__kstrtab_dev_pm_opp_get_suspend_opp_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_suspend_opp_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_suspend_opp_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_suspend_opp_freq to i32), ptr @__kstrtab_dev_pm_opp_get_suspend_opp_freq, ptr @__kstrtabns_dev_pm_opp_get_suspend_opp_freq }, section "___ksymtab_gpl+dev_pm_opp_get_suspend_opp_freq", align 4
@__kstrtab_dev_pm_opp_get_opp_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_opp_count = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_opp_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_opp_count to i32), ptr @__kstrtab_dev_pm_opp_get_opp_count, ptr @__kstrtabns_dev_pm_opp_get_opp_count }, section "___ksymtab_gpl+dev_pm_opp_get_opp_count", align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: OPP table not found (%d)\0A\00", align 1
@__func__.dev_pm_opp_find_freq_exact = private unnamed_addr constant [27 x i8] c"dev_pm_opp_find_freq_exact\00", align 1
@__kstrtab_dev_pm_opp_find_freq_exact = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_freq_exact = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_freq_exact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_freq_exact to i32), ptr @__kstrtab_dev_pm_opp_find_freq_exact, ptr @__kstrtabns_dev_pm_opp_find_freq_exact }, section "___ksymtab_gpl+dev_pm_opp_find_freq_exact", align 4
@__func__.dev_pm_opp_find_level_exact = private unnamed_addr constant [28 x i8] c"dev_pm_opp_find_level_exact\00", align 1
@__kstrtab_dev_pm_opp_find_level_exact = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_level_exact = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_level_exact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_level_exact to i32), ptr @__kstrtab_dev_pm_opp_find_level_exact, ptr @__kstrtabns_dev_pm_opp_find_level_exact }, section "___ksymtab_gpl+dev_pm_opp_find_level_exact", align 4
@__func__.dev_pm_opp_find_level_ceil = private unnamed_addr constant [27 x i8] c"dev_pm_opp_find_level_ceil\00", align 1
@__kstrtab_dev_pm_opp_find_level_ceil = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_level_ceil = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_level_ceil = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_level_ceil to i32), ptr @__kstrtab_dev_pm_opp_find_level_ceil, ptr @__kstrtabns_dev_pm_opp_find_level_ceil }, section "___ksymtab_gpl+dev_pm_opp_find_level_ceil", align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Invalid argument freq=%p\0A\00", align 1
@__func__.dev_pm_opp_find_freq_ceil = private unnamed_addr constant [26 x i8] c"dev_pm_opp_find_freq_ceil\00", align 1
@__kstrtab_dev_pm_opp_find_freq_ceil = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_freq_ceil = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_freq_ceil = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_freq_ceil to i32), ptr @__kstrtab_dev_pm_opp_find_freq_ceil, ptr @__kstrtabns_dev_pm_opp_find_freq_ceil }, section "___ksymtab_gpl+dev_pm_opp_find_freq_ceil", align 4
@__func__.dev_pm_opp_find_freq_floor = private unnamed_addr constant [27 x i8] c"dev_pm_opp_find_freq_floor\00", align 1
@__kstrtab_dev_pm_opp_find_freq_floor = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_freq_floor = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_freq_floor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_freq_floor to i32), ptr @__kstrtab_dev_pm_opp_find_freq_floor, ptr @__kstrtabns_dev_pm_opp_find_freq_floor }, section "___ksymtab_gpl+dev_pm_opp_find_freq_floor", align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: Invalid argument volt=%lu\0A\00", align 1
@__func__.dev_pm_opp_find_freq_ceil_by_volt = private unnamed_addr constant [34 x i8] c"dev_pm_opp_find_freq_ceil_by_volt\00", align 1
@__kstrtab_dev_pm_opp_find_freq_ceil_by_volt = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_find_freq_ceil_by_volt = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_find_freq_ceil_by_volt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_find_freq_ceil_by_volt to i32), ptr @__kstrtab_dev_pm_opp_find_freq_ceil_by_volt, ptr @__kstrtabns_dev_pm_opp_find_freq_ceil_by_volt }, section "___ksymtab_gpl+dev_pm_opp_find_freq_ceil_by_volt", align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: device's opp table doesn't exist\0A\00", align 1
@__func__.dev_pm_opp_set_rate = private unnamed_addr constant [20 x i8] c"dev_pm_opp_set_rate\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: failed to find OPP for freq %lu (%d)\0A\00", align 1
@__kstrtab_dev_pm_opp_set_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_rate to i32), ptr @__kstrtab_dev_pm_opp_set_rate, ptr @__kstrtabns_dev_pm_opp_set_rate }, section "___ksymtab_gpl+dev_pm_opp_set_rate", align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: device opp doesn't exist\0A\00", align 1
@__func__.dev_pm_opp_set_opp = private unnamed_addr constant [19 x i8] c"dev_pm_opp_set_opp\00", align 1
@__kstrtab_dev_pm_opp_set_opp = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_opp = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_opp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_opp to i32), ptr @__kstrtab_dev_pm_opp_set_opp, ptr @__kstrtabns_dev_pm_opp_set_opp }, section "___ksymtab_gpl+dev_pm_opp_set_opp", align 4
@opp_tables_busy = internal unnamed_addr global i1 false, align 1
@__kstrtab_dev_pm_opp_get_opp_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_opp_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_opp_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_opp_table to i32), ptr @__kstrtab_dev_pm_opp_get_opp_table, ptr @__kstrtabns_dev_pm_opp_get_opp_table }, section "___ksymtab_gpl+dev_pm_opp_get_opp_table", align 4
@__kstrtab_dev_pm_opp_put_opp_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put_opp_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put_opp_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put_opp_table to i32), ptr @__kstrtab_dev_pm_opp_put_opp_table, ptr @__kstrtabns_dev_pm_opp_put_opp_table }, section "___ksymtab_gpl+dev_pm_opp_put_opp_table", align 4
@__kstrtab_dev_pm_opp_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put to i32), ptr @__kstrtab_dev_pm_opp_put, ptr @__kstrtabns_dev_pm_opp_put }, section "___ksymtab_gpl+dev_pm_opp_put", align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"%s: Couldn't find OPP with freq: %lu\0A\00", align 1
@__func__.dev_pm_opp_remove = private unnamed_addr constant [18 x i8] c"dev_pm_opp_remove\00", align 1
@__kstrtab_dev_pm_opp_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_remove to i32), ptr @__kstrtab_dev_pm_opp_remove, ptr @__kstrtabns_dev_pm_opp_remove }, section "___ksymtab_gpl+dev_pm_opp_remove", align 4
@__kstrtab_dev_pm_opp_remove_all_dynamic = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_remove_all_dynamic = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_remove_all_dynamic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_remove_all_dynamic to i32), ptr @__kstrtab_dev_pm_opp_remove_all_dynamic, ptr @__kstrtabns_dev_pm_opp_remove_all_dynamic }, section "___ksymtab_gpl+dev_pm_opp_remove_all_dynamic", align 4
@.str.8 = private unnamed_addr constant [58 x i8] c"\014core: %s: OPP not supported by required OPP %pOF (%lu)\0A\00", align 1
@__func__._required_opps_available = private unnamed_addr constant [25 x i8] c"_required_opps_available\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%s: OPP not supported by regulators (%lu)\0A\00", align 1
@__func__._opp_add = private unnamed_addr constant [9 x i8] c"_opp_add\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"drivers/opp/core.c\00", align 1
@__kstrtab_dev_pm_opp_set_supported_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_supported_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_supported_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_supported_hw to i32), ptr @__kstrtab_dev_pm_opp_set_supported_hw, ptr @__kstrtabns_dev_pm_opp_set_supported_hw }, section "___ksymtab_gpl+dev_pm_opp_set_supported_hw", align 4
@__kstrtab_dev_pm_opp_put_supported_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put_supported_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put_supported_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put_supported_hw to i32), ptr @__kstrtab_dev_pm_opp_put_supported_hw, ptr @__kstrtabns_dev_pm_opp_put_supported_hw }, section "___ksymtab_gpl+dev_pm_opp_put_supported_hw", align 4
@__kstrtab_devm_pm_opp_set_supported_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_opp_set_supported_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_opp_set_supported_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_opp_set_supported_hw to i32), ptr @__kstrtab_devm_pm_opp_set_supported_hw, ptr @__kstrtabns_devm_pm_opp_set_supported_hw }, section "___ksymtab_gpl+devm_pm_opp_set_supported_hw", align 4
@__kstrtab_dev_pm_opp_set_prop_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_prop_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_prop_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_prop_name to i32), ptr @__kstrtab_dev_pm_opp_set_prop_name, ptr @__kstrtabns_dev_pm_opp_set_prop_name }, section "___ksymtab_gpl+dev_pm_opp_set_prop_name", align 4
@__kstrtab_dev_pm_opp_put_prop_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put_prop_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put_prop_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put_prop_name to i32), ptr @__kstrtab_dev_pm_opp_put_prop_name, ptr @__kstrtabns_dev_pm_opp_put_prop_name }, section "___ksymtab_gpl+dev_pm_opp_put_prop_name", align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: no regulator (%s) found: %d\0A\00", align 1
@__func__.dev_pm_opp_set_regulators = private unnamed_addr constant [26 x i8] c"dev_pm_opp_set_regulators\00", align 1
@__kstrtab_dev_pm_opp_set_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_regulators to i32), ptr @__kstrtab_dev_pm_opp_set_regulators, ptr @__kstrtabns_dev_pm_opp_set_regulators }, section "___ksymtab_gpl+dev_pm_opp_set_regulators", align 4
@__kstrtab_dev_pm_opp_put_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put_regulators to i32), ptr @__kstrtab_dev_pm_opp_put_regulators, ptr @__kstrtabns_dev_pm_opp_put_regulators }, section "___ksymtab_gpl+dev_pm_opp_put_regulators", align 4
@__kstrtab_devm_pm_opp_set_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_opp_set_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_opp_set_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_opp_set_regulators to i32), ptr @__kstrtab_devm_pm_opp_set_regulators, ptr @__kstrtabns_devm_pm_opp_set_regulators }, section "___ksymtab_gpl+devm_pm_opp_set_regulators", align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"%s: Couldn't find clock: %d\0A\00", align 1
@__func__.dev_pm_opp_set_clkname = private unnamed_addr constant [23 x i8] c"dev_pm_opp_set_clkname\00", align 1
@__kstrtab_dev_pm_opp_set_clkname = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_clkname = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_clkname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_clkname to i32), ptr @__kstrtab_dev_pm_opp_set_clkname, ptr @__kstrtabns_dev_pm_opp_set_clkname }, section "___ksymtab_gpl+dev_pm_opp_set_clkname", align 4
@__kstrtab_dev_pm_opp_put_clkname = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_put_clkname = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_put_clkname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_put_clkname to i32), ptr @__kstrtab_dev_pm_opp_put_clkname, ptr @__kstrtabns_dev_pm_opp_put_clkname }, section "___ksymtab_gpl+dev_pm_opp_put_clkname", align 4
@__kstrtab_devm_pm_opp_set_clkname = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_opp_set_clkname = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_opp_set_clkname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_opp_set_clkname to i32), ptr @__kstrtab_devm_pm_opp_set_clkname, ptr @__kstrtabns_devm_pm_opp_set_clkname }, section "___ksymtab_gpl+devm_pm_opp_set_clkname", align 4
@__kstrtab_dev_pm_opp_register_set_opp_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_register_set_opp_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_register_set_opp_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_register_set_opp_helper to i32), ptr @__kstrtab_dev_pm_opp_register_set_opp_helper, ptr @__kstrtabns_dev_pm_opp_register_set_opp_helper }, section "___ksymtab_gpl+dev_pm_opp_register_set_opp_helper", align 4
@__kstrtab_dev_pm_opp_unregister_set_opp_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_unregister_set_opp_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_unregister_set_opp_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_unregister_set_opp_helper to i32), ptr @__kstrtab_dev_pm_opp_unregister_set_opp_helper, ptr @__kstrtabns_dev_pm_opp_unregister_set_opp_helper }, section "___ksymtab_gpl+dev_pm_opp_unregister_set_opp_helper", align 4
@__kstrtab_devm_pm_opp_register_set_opp_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_opp_register_set_opp_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_opp_register_set_opp_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_opp_register_set_opp_helper to i32), ptr @__kstrtab_devm_pm_opp_register_set_opp_helper, ptr @__kstrtabns_devm_pm_opp_register_set_opp_helper }, section "___ksymtab_gpl+devm_pm_opp_register_set_opp_helper", align 4
@.str.13 = private unnamed_addr constant [66 x i8] c"Index can't be greater than required-opp-count - 1, %s (%d : %d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Couldn't attach to pm_domain: %d\0A\00", align 1
@__kstrtab_dev_pm_opp_attach_genpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_attach_genpd = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_attach_genpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_attach_genpd to i32), ptr @__kstrtab_dev_pm_opp_attach_genpd, ptr @__kstrtabns_dev_pm_opp_attach_genpd }, section "___ksymtab_gpl+dev_pm_opp_attach_genpd", align 4
@__kstrtab_dev_pm_opp_detach_genpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_detach_genpd = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_detach_genpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_detach_genpd to i32), ptr @__kstrtab_dev_pm_opp_detach_genpd, ptr @__kstrtabns_dev_pm_opp_detach_genpd }, section "___ksymtab_gpl+dev_pm_opp_detach_genpd", align 4
@__kstrtab_devm_pm_opp_attach_genpd = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_opp_attach_genpd = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_opp_attach_genpd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_opp_attach_genpd to i32), ptr @__kstrtab_devm_pm_opp_attach_genpd, ptr @__kstrtabns_devm_pm_opp_attach_genpd }, section "___ksymtab_gpl+devm_pm_opp_attach_genpd", align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"\013core: %s: Couldn't find matching OPP (%p: %p)\0A\00", align 1
@__func__.dev_pm_opp_xlate_required_opp = private unnamed_addr constant [30 x i8] c"dev_pm_opp_xlate_required_opp\00", align 1
@__kstrtab_dev_pm_opp_xlate_required_opp = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_xlate_required_opp = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_xlate_required_opp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_xlate_required_opp to i32), ptr @__kstrtab_dev_pm_opp_xlate_required_opp, ptr @__kstrtabns_dev_pm_opp_xlate_required_opp }, section "___ksymtab_gpl+dev_pm_opp_xlate_required_opp", align 4
@.str.16 = private unnamed_addr constant [55 x i8] c"\013core: %s: Couldn't find matching OPP table (%p: %p)\0A\00", align 1
@__func__.dev_pm_opp_xlate_performance_state = private unnamed_addr constant [35 x i8] c"dev_pm_opp_xlate_performance_state\00", align 1
@__kstrtab_dev_pm_opp_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_add = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_add to i32), ptr @__kstrtab_dev_pm_opp_add, ptr @__kstrtabns_dev_pm_opp_add }, section "___ksymtab_gpl+dev_pm_opp_add", align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"%s: Device OPP not found (%d)\0A\00", align 1
@__func__.dev_pm_opp_adjust_voltage = private unnamed_addr constant [26 x i8] c"dev_pm_opp_adjust_voltage\00", align 1
@__kstrtab_dev_pm_opp_adjust_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_adjust_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_adjust_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_adjust_voltage to i32), ptr @__kstrtab_dev_pm_opp_adjust_voltage, ptr @__kstrtabns_dev_pm_opp_adjust_voltage }, section "___ksymtab_gpl+dev_pm_opp_adjust_voltage", align 4
@__kstrtab_dev_pm_opp_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_enable to i32), ptr @__kstrtab_dev_pm_opp_enable, ptr @__kstrtabns_dev_pm_opp_enable }, section "___ksymtab_gpl+dev_pm_opp_enable", align 4
@__kstrtab_dev_pm_opp_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_disable to i32), ptr @__kstrtab_dev_pm_opp_disable, ptr @__kstrtabns_dev_pm_opp_disable }, section "___ksymtab_gpl+dev_pm_opp_disable", align 4
@__kstrtab_dev_pm_opp_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_register_notifier to i32), ptr @__kstrtab_dev_pm_opp_register_notifier, ptr @__kstrtabns_dev_pm_opp_register_notifier }, section "___ksymtab+dev_pm_opp_register_notifier", align 4
@__kstrtab_dev_pm_opp_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_unregister_notifier to i32), ptr @__kstrtab_dev_pm_opp_unregister_notifier, ptr @__kstrtabns_dev_pm_opp_unregister_notifier }, section "___ksymtab+dev_pm_opp_unregister_notifier", align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"%s: opp_table: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Invalid device\00", align 1
@__kstrtab_dev_pm_opp_remove_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_remove_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_remove_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_remove_table to i32), ptr @__kstrtab_dev_pm_opp_remove_table, ptr @__kstrtabns_dev_pm_opp_remove_table }, section "___ksymtab_gpl+dev_pm_opp_remove_table", align 4
@__kstrtab_dev_pm_opp_sync_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_sync_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_sync_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_sync_regulators to i32), ptr @__kstrtab_dev_pm_opp_sync_regulators, ptr @__kstrtabns_dev_pm_opp_sync_regulators }, section "___ksymtab_gpl+dev_pm_opp_sync_regulators", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"%s: failed to set clock rate: %d\0A\00", align 1
@__func__._generic_set_opp_clk_only = private unnamed_addr constant [26 x i8] c"_generic_set_opp_clk_only\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Failed to set required opps: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Failed to set bw: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"required-opps don't belong to a genpd\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"Failed to set performance rate of %s: %d (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Failed to %s bandwidth[%d]: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"multiple regulators are not supported\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Failed to enable regulator: %d\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"%s: failed to restore old-freq (%lu Hz)\0A\00", align 1
@__func__._generic_set_opp_regulator = private unnamed_addr constant [27 x i8] c"_generic_set_opp_regulator\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"%s: failed to set voltage (%lu %lu %lu mV): %d\0A\00", align 1
@__func__._set_opp_voltage = private unnamed_addr constant [17 x i8] c"_set_opp_voltage\00", align 1
@_allocate_opp_table.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"&opp_table->lock\00", align 1
@_allocate_opp_table.__key.33 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"&opp_table->genpd_virt_dev_lock\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"%s: Error finding interconnect paths: %d\0A\00", align 1
@__func__._allocate_opp_table = private unnamed_addr constant [20 x i8] c"_allocate_opp_table\00", align 1
@_allocate_opp_table.__key.36 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"&(&opp_table->head)->rwsem\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Couldn't find clock\0A\00", align 1
@.str.39 = private unnamed_addr constant [114 x i8] c"%s: duplicate OPPs detected. Existing: freq: %lu, volt: %lu, enabled: %d. New: freq: %lu, volt: %lu, enabled: %d\0A\00", align 1
@__func__._opp_is_duplicate = private unnamed_addr constant [18 x i8] c"_opp_is_duplicate\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"\014core: %s: OPP minuV: %lu maxuV: %lu, not supported by regulator\0A\00", align 1
@__func__._opp_supported_by_regulators = private unnamed_addr constant [29 x i8] c"_opp_supported_by_regulators\00", align 1
@__func__._opp_set_availability = private unnamed_addr constant [22 x i8] c"_opp_set_availability\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab_dev_pm_opp_add, ptr @__ksymtab_dev_pm_opp_adjust_voltage, ptr @__ksymtab_dev_pm_opp_attach_genpd, ptr @__ksymtab_dev_pm_opp_detach_genpd, ptr @__ksymtab_dev_pm_opp_disable, ptr @__ksymtab_dev_pm_opp_enable, ptr @__ksymtab_dev_pm_opp_find_freq_ceil, ptr @__ksymtab_dev_pm_opp_find_freq_ceil_by_volt, ptr @__ksymtab_dev_pm_opp_find_freq_exact, ptr @__ksymtab_dev_pm_opp_find_freq_floor, ptr @__ksymtab_dev_pm_opp_find_level_ceil, ptr @__ksymtab_dev_pm_opp_find_level_exact, ptr @__ksymtab_dev_pm_opp_get_freq, ptr @__ksymtab_dev_pm_opp_get_level, ptr @__ksymtab_dev_pm_opp_get_max_clock_latency, ptr @__ksymtab_dev_pm_opp_get_max_transition_latency, ptr @__ksymtab_dev_pm_opp_get_max_volt_latency, ptr @__ksymtab_dev_pm_opp_get_opp_count, ptr @__ksymtab_dev_pm_opp_get_opp_table, ptr @__ksymtab_dev_pm_opp_get_required_pstate, ptr @__ksymtab_dev_pm_opp_get_suspend_opp_freq, ptr @__ksymtab_dev_pm_opp_get_voltage, ptr @__ksymtab_dev_pm_opp_is_turbo, ptr @__ksymtab_dev_pm_opp_put, ptr @__ksymtab_dev_pm_opp_put_clkname, ptr @__ksymtab_dev_pm_opp_put_opp_table, ptr @__ksymtab_dev_pm_opp_put_prop_name, ptr @__ksymtab_dev_pm_opp_put_regulators, ptr @__ksymtab_dev_pm_opp_put_supported_hw, ptr @__ksymtab_dev_pm_opp_register_notifier, ptr @__ksymtab_dev_pm_opp_register_set_opp_helper, ptr @__ksymtab_dev_pm_opp_remove, ptr @__ksymtab_dev_pm_opp_remove_all_dynamic, ptr @__ksymtab_dev_pm_opp_remove_table, ptr @__ksymtab_dev_pm_opp_set_clkname, ptr @__ksymtab_dev_pm_opp_set_opp, ptr @__ksymtab_dev_pm_opp_set_prop_name, ptr @__ksymtab_dev_pm_opp_set_rate, ptr @__ksymtab_dev_pm_opp_set_regulators, ptr @__ksymtab_dev_pm_opp_set_supported_hw, ptr @__ksymtab_dev_pm_opp_sync_regulators, ptr @__ksymtab_dev_pm_opp_unregister_notifier, ptr @__ksymtab_dev_pm_opp_unregister_set_opp_helper, ptr @__ksymtab_dev_pm_opp_xlate_required_opp, ptr @__ksymtab_devm_pm_opp_attach_genpd, ptr @__ksymtab_devm_pm_opp_register_set_opp_helper, ptr @__ksymtab_devm_pm_opp_set_clkname, ptr @__ksymtab_devm_pm_opp_set_regulators, ptr @__ksymtab_devm_pm_opp_set_supported_hw], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_find_opp_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %9

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0)
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_find_opp_table_unlocked(ptr noundef readnone %0) unnamed_addr #0 {
  %2 = load ptr, ptr @opp_tables, align 4
  %3 = icmp eq ptr %2, @opp_tables
  br i1 %3, label %30, label %4

4:                                                ; preds = %16, %1
  %5 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 3
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.opp_device, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %19, label %8

16:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef %6) #11
  %17 = load ptr, ptr %5, align 4
  %18 = icmp eq ptr %17, @opp_tables
  br i1 %18, label %30, label %4

19:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef %6) #11
  %20 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #11, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #11, !srcloc !9
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %19
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !11

28:                                               ; preds = %24, %19
  %29 = phi i32 [ 2, %19 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef %29) #11
  br label %30

30:                                               ; preds = %28, %24, %16, %1
  %31 = phi ptr [ %5, %24 ], [ %5, %28 ], [ inttoptr (i32 -19 to ptr), %1 ], [ inttoptr (i32 -19 to ptr), %16 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_voltage(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_get_voltage) #10
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ 0, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_freq(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_get_freq) #10
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ 0, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_level(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_get_level) #10
  br label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ 0, %9 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_required_pstate(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %10, %6, %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_get_required_pstate) #10
  br label %29

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 1
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr ptr, ptr %24, i32 %1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dev_pm_opp, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %22, %18, %16
  %30 = phi i32 [ 0, %16 ], [ %28, %22 ], [ 0, %18 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dev_pm_opp_is_turbo(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_is_turbo) #10
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 2, !range !12
  %14 = icmp ne i8 %13, 0
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i1 [ false, %9 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_max_clock_latency(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %13

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %13

13:                                               ; preds = %10, %7, %5
  %14 = phi i32 [ %12, %10 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put_opp_table(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 5
  %3 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %2, ptr noundef nonnull @opp_table_lock) #11
  br i1 %3, label %4, label %64

4:                                                ; preds = %1
  %5 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @dev_pm_opp_put(ptr noundef nonnull %10) #11
  br label %13

13:                                               ; preds = %12, %4
  tail call void @_of_clear_opp_table(ptr noundef %0) #11
  %14 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @clk_put(ptr noundef %15) #11
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 25
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %34, %26 ], [ %20, %22 ]
  %28 = phi i32 [ %31, %26 ], [ 0, %22 ]
  %29 = getelementptr ptr, ptr %27, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call void @icc_put(ptr noundef %30) #11
  %31 = add nuw i32 %28, 1
  %32 = load i32, ptr %23, align 4
  %33 = icmp ult i32 %31, %32
  %34 = load ptr, ptr %19, align 4
  br i1 %33, label %26, label %35

35:                                               ; preds = %26, %22
  %36 = phi ptr [ %20, %22 ], [ %34, %26 ]
  tail call void @kfree(ptr noundef %36) #11
  br label %37

37:                                               ; preds = %35, %18
  %38 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 4
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %42, label %41, !prof !11

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1396, i32 noundef 9, ptr noundef null) #11
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.opp_table, ptr %0, i32 0, i32 28
  br label %48

48:                                               ; preds = %57, %46
  %49 = phi ptr [ %44, %46 ], [ %50, %57 ]
  %50 = load ptr, ptr %49, align 4
  %51 = load i8, ptr %47, align 1, !range !12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.opp_device, ptr %49, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %55, i32 noundef 0) #11
  br label %57

57:                                               ; preds = %53, %48
  tail call void @opp_debug_unregister(ptr noundef %49, ptr noundef %0) #11
  %58 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %49, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  tail call void @kfree(ptr noundef %49) #11
  %62 = icmp eq ptr %50, %43
  br i1 %62, label %63, label %48

63:                                               ; preds = %57, %42
  tail call void @kfree(ptr noundef %0) #11
  br label %64

64:                                               ; preds = %63, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_max_volt_latency(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %87

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %87, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 8) #11
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %85, label %19, !prof !10

19:                                               ; preds = %14
  %20 = extractvalue { i32, i1 } %17, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %85, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %24) #11
  %25 = icmp eq i32 %16, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef %24) #11
  br label %83

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 4
  br label %29

29:                                               ; preds = %62, %27
  %30 = phi i32 [ 0, %27 ], [ %63, %62 ]
  %31 = getelementptr %struct.anon.71, ptr %21, i32 %30
  store i32 -1, ptr %31, align 8
  %32 = getelementptr %struct.anon.71, ptr %21, i32 %30, i32 1
  store i32 0, ptr %32, align 4
  %33 = load ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, %28
  br i1 %34, label %62, label %35

35:                                               ; preds = %57, %29
  %36 = phi i32 [ %58, %57 ], [ 0, %29 ]
  %37 = phi i32 [ %59, %57 ], [ -1, %29 ]
  %38 = phi ptr [ %60, %57 ], [ %33, %29 ]
  %39 = getelementptr inbounds %struct.dev_pm_opp, ptr %38, i32 0, i32 2
  %40 = load i8, ptr %39, align 4, !range !12
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.dev_pm_opp, ptr %38, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.dev_pm_opp_supply, ptr %44, i32 %30, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %46, %37
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  store i32 %46, ptr %31, align 8
  %49 = load ptr, ptr %43, align 4
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %49, %48 ], [ %44, %42 ]
  %52 = phi i32 [ %46, %48 ], [ %37, %42 ]
  %53 = getelementptr %struct.dev_pm_opp_supply, ptr %51, i32 %30, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %36
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 %54, ptr %32, align 4
  br label %57

57:                                               ; preds = %56, %50, %35
  %58 = phi i32 [ %36, %50 ], [ %54, %56 ], [ %36, %35 ]
  %59 = phi i32 [ %52, %50 ], [ %52, %56 ], [ %37, %35 ]
  %60 = load ptr, ptr %38, align 4
  %61 = icmp eq ptr %60, %28
  br i1 %61, label %62, label %35

62:                                               ; preds = %57, %29
  %63 = add nuw nsw i32 %30, 1
  %64 = icmp eq i32 %63, %16
  br i1 %64, label %65, label %29

65:                                               ; preds = %62
  tail call void @mutex_unlock(ptr noundef %24) #11
  br i1 %25, label %83, label %66

66:                                               ; preds = %66, %65
  %67 = phi i32 [ %81, %66 ], [ 0, %65 ]
  %68 = phi i32 [ %80, %66 ], [ 0, %65 ]
  %69 = load ptr, ptr %11, align 4
  %70 = getelementptr ptr, ptr %69, i32 %67
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.anon.71, ptr %21, i32 %67
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr %struct.anon.71, ptr %21, i32 %67, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = tail call i32 @regulator_set_voltage_time(ptr noundef %71, i32 noundef %73, i32 noundef %75) #11
  %77 = icmp sgt i32 %76, 0
  %78 = mul i32 %76, 1000
  %79 = select i1 %77, i32 %78, i32 0
  %80 = add i32 %79, %68
  %81 = add nuw nsw i32 %67, 1
  %82 = icmp eq i32 %81, %16
  br i1 %82, label %83, label %66

83:                                               ; preds = %66, %65, %26
  %84 = phi i32 [ 0, %65 ], [ 0, %26 ], [ %80, %66 ]
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %85

85:                                               ; preds = %83, %19, %14, %10
  %86 = phi i32 [ %84, %83 ], [ 0, %19 ], [ 0, %10 ], [ 0, %14 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %87

87:                                               ; preds = %85, %7, %5
  %88 = phi i32 [ %86, %85 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_max_transition_latency(ptr noundef %0) #0 {
  %2 = tail call i32 @dev_pm_opp_get_max_volt_latency(ptr noundef %0)
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %14

8:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9) #11
  br label %14

14:                                               ; preds = %11, %8, %6
  %15 = phi i32 [ %13, %11 ], [ 0, %8 ], [ 0, %6 ]
  %16 = add i32 %15, %2
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_suspend_opp_freq(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %27

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dev_pm_opp, ptr %12, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dev_pm_opp_get_freq) #10
  br label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dev_pm_opp, ptr %12, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20, %14, %10
  %26 = phi i32 [ 0, %14 ], [ 0, %10 ], [ 0, %20 ], [ %24, %22 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %27

27:                                               ; preds = %25, %7, %5
  %28 = phi i32 [ %26, %25 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_get_opp_count(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %15, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = phi i32 [ %12, %6 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.dev_pm_opp, ptr %7, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = zext i8 %10 to i32
  %12 = add i32 %8, %11
  %13 = load ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %6 ]
  tail call void @mutex_unlock(ptr noundef %2) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %10

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %5
  %11 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %8, %7 ]
  %12 = ptrtoint ptr %11 to i32
  br label %29

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %25, %18 ], [ %16, %13 ]
  %20 = phi i32 [ %24, %18 ], [ 0, %13 ]
  %21 = getelementptr inbounds %struct.dev_pm_opp, ptr %19, i32 0, i32 2
  %22 = load i8, ptr %21, align 4, !range !12
  %23 = zext i8 %22 to i32
  %24 = add i32 %20, %23
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %25, %15
  br i1 %26, label %27, label %18

27:                                               ; preds = %18, %13
  %28 = phi i32 [ 0, %13 ], [ %24, %18 ]
  tail call void @mutex_unlock(ptr noundef %14) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi i32 [ %12, %10 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %12

9:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %10 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %7
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %10, %9 ]
  %14 = ptrtoint ptr %13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dev_pm_opp_find_freq_exact, i32 noundef %14) #10
  br label %47

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = zext i1 %2 to i8
  br label %22

22:                                               ; preds = %42, %20
  %23 = phi ptr [ %18, %20 ], [ %43, %42 ]
  %24 = getelementptr inbounds %struct.dev_pm_opp, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4, !range !12
  %26 = icmp eq i8 %25, %21
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dev_pm_opp, ptr %23, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dev_pm_opp, ptr %23, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #11, !srcloc !9
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !10

36:                                               ; preds = %31
  %37 = add i32 %34, 1
  %38 = or i32 %37, %34
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %45, label %40, !prof !11

40:                                               ; preds = %36, %31
  %41 = phi i32 [ 2, %31 ], [ 1, %36 ]
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef %41) #11
  br label %45

42:                                               ; preds = %27, %22
  %43 = load ptr, ptr %23, align 4
  %44 = icmp eq ptr %43, %17
  br i1 %44, label %45, label %22

45:                                               ; preds = %42, %40, %36, %15
  %46 = phi ptr [ %23, %36 ], [ %23, %40 ], [ inttoptr (i32 -34 to ptr), %15 ], [ inttoptr (i32 -34 to ptr), %42 ]
  tail call void @mutex_unlock(ptr noundef %16) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %10)
  br label %47

47:                                               ; preds = %45, %12
  %48 = phi ptr [ %13, %12 ], [ %46, %45 ]
  ret ptr %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #11
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_level_exact(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  %13 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dev_pm_opp_find_level_exact, i32 noundef %13) #10
  br label %38

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 4
  br label %17

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %16, %14 ], [ %19, %21 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dev_pm_opp, ptr %19, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %17

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dev_pm_opp, ptr %19, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #11, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #11, !srcloc !9
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !11

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #11
  br label %36

36:                                               ; preds = %34, %30, %17
  %37 = phi ptr [ %19, %30 ], [ %19, %34 ], [ inttoptr (i32 -34 to ptr), %17 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %38

38:                                               ; preds = %36, %11
  %39 = phi ptr [ %12, %11 ], [ %37, %36 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_level_ceil(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  %13 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dev_pm_opp_find_level_ceil, i32 noundef %13) #10
  br label %45

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %43, label %19

19:                                               ; preds = %40, %14
  %20 = phi ptr [ %41, %40 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 4, !range !12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %1, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  store i32 %26, ptr %1, align 4
  %30 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #11, !srcloc !9
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !10

34:                                               ; preds = %29
  %35 = add i32 %32, 1
  %36 = or i32 %35, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %43, label %38, !prof !11

38:                                               ; preds = %34, %29
  %39 = phi i32 [ 2, %29 ], [ 1, %34 ]
  tail call void @refcount_warn_saturate(ptr noundef %30, i32 noundef %39) #11
  br label %43

40:                                               ; preds = %24, %19
  %41 = load ptr, ptr %20, align 4
  %42 = icmp eq ptr %41, %16
  br i1 %42, label %43, label %19

43:                                               ; preds = %40, %38, %34, %14
  %44 = phi ptr [ %20, %34 ], [ %20, %38 ], [ inttoptr (i32 -34 to ptr), %14 ], [ inttoptr (i32 -34 to ptr), %40 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %45

45:                                               ; preds = %43, %11
  %46 = phi ptr [ %12, %11 ], [ %44, %43 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dev_pm_opp_find_freq_ceil, ptr noundef %1) #10
  br label %16

7:                                                ; preds = %2
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %16

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %12 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @_find_freq_ceil(ptr noundef %12, ptr noundef nonnull %1)
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %12)
  br label %16

16:                                               ; preds = %14, %11, %9, %6
  %17 = phi ptr [ %15, %14 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %9 ], [ %12, %11 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_find_freq_ceil(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %31, label %7

7:                                                ; preds = %28, %2
  %8 = phi ptr [ %29, %28 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.dev_pm_opp, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dev_pm_opp, ptr %8, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %1, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  store i32 %14, ptr %1, align 4
  %18 = getelementptr inbounds %struct.dev_pm_opp, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #11, !srcloc !8
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #11, !srcloc !9
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %31, label %26, !prof !11

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #11
  br label %31

28:                                               ; preds = %12, %7
  %29 = load ptr, ptr %8, align 4
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %31, label %7

31:                                               ; preds = %28, %26, %22, %2
  %32 = phi ptr [ %8, %22 ], [ %8, %26 ], [ inttoptr (i32 -34 to ptr), %2 ], [ inttoptr (i32 -34 to ptr), %28 ]
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dev_pm_opp_find_freq_floor, ptr noundef %1) #10
  br label %53

7:                                                ; preds = %2
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %53

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %12 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %53, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %51, label %19

19:                                               ; preds = %30, %14
  %20 = phi ptr [ %32, %30 ], [ %17, %14 ]
  %21 = phi ptr [ %31, %30 ], [ inttoptr (i32 -34 to ptr), %14 ]
  %22 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 2
  %23 = load i8, ptr %22, align 4, !range !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %1, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %21, %19 ], [ %20, %25 ]
  %32 = load ptr, ptr %20, align 4
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %19

34:                                               ; preds = %30, %25
  %35 = phi ptr [ %31, %30 ], [ %21, %25 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dev_pm_opp, ptr %35, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #11, !srcloc !8
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #11, !srcloc !9
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !10

42:                                               ; preds = %37
  %43 = add i32 %40, 1
  %44 = or i32 %43, %40
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %42, %37
  %47 = phi i32 [ 2, %37 ], [ 1, %42 ]
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef %47) #11
  br label %48

48:                                               ; preds = %46, %42
  tail call void @mutex_unlock(ptr noundef %15) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %12)
  %49 = getelementptr inbounds %struct.dev_pm_opp, ptr %35, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %1, align 4
  br label %53

51:                                               ; preds = %34, %14
  %52 = phi ptr [ %35, %34 ], [ inttoptr (i32 -34 to ptr), %14 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %12)
  br label %53

53:                                               ; preds = %51, %48, %11, %9, %6
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %35, %48 ], [ inttoptr (i32 -22 to ptr), %9 ], [ %12, %11 ], [ %52, %51 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_find_freq_ceil_by_volt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dev_pm_opp_find_freq_ceil_by_volt, i32 noundef %1) #10
  br label %50

7:                                                ; preds = %2
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %50

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %12 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %48, label %19

19:                                               ; preds = %30, %14
  %20 = phi ptr [ %32, %30 ], [ %17, %14 ]
  %21 = phi ptr [ %31, %30 ], [ inttoptr (i32 -34 to ptr), %14 ]
  %22 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 2
  %23 = load i8, ptr %22, align 4, !range !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dev_pm_opp, ptr %20, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %19
  %31 = phi ptr [ %21, %19 ], [ %20, %25 ]
  %32 = load ptr, ptr %20, align 4
  %33 = icmp eq ptr %32, %16
  br i1 %33, label %34, label %19

34:                                               ; preds = %30, %25
  %35 = phi ptr [ %31, %30 ], [ %21, %25 ]
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.dev_pm_opp, ptr %35, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #11, !srcloc !8
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #11, !srcloc !9
  %40 = extractvalue { i32, i32, i32 } %39, 0
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !10

42:                                               ; preds = %37
  %43 = add i32 %40, 1
  %44 = or i32 %43, %40
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %48, label %46, !prof !11

46:                                               ; preds = %42, %37
  %47 = phi i32 [ 2, %37 ], [ 1, %42 ]
  tail call void @refcount_warn_saturate(ptr noundef %38, i32 noundef %47) #11
  br label %48

48:                                               ; preds = %46, %42, %34, %14
  %49 = phi ptr [ %35, %46 ], [ %35, %42 ], [ %35, %34 ], [ inttoptr (i32 -34 to ptr), %14 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %12)
  br label %50

50:                                               ; preds = %48, %11, %9, %6
  %51 = phi ptr [ %49, %48 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %9 ], [ %12, %11 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %12

9:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %10 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %7
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %10, %9 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dev_pm_opp_set_rate) #10
  %14 = ptrtoint ptr %13 to i32
  br label %58

15:                                               ; preds = %9
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @_set_opp(ptr noundef nonnull %0, ptr noundef %10, ptr noundef null, i32 noundef 0)
  br label %56

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %20) #11
  %21 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @mutex_unlock(ptr noundef %20) #11
  br label %36

25:                                               ; preds = %25, %19
  %26 = phi ptr [ %32, %25 ], [ %22, %19 ]
  %27 = phi i32 [ %31, %25 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.dev_pm_opp, ptr %26, i32 0, i32 2
  %29 = load i8, ptr %28, align 4, !range !12
  %30 = zext i8 %29 to i32
  %31 = add i32 %27, %30
  %32 = load ptr, ptr %26, align 4
  %33 = icmp eq ptr %32, %21
  br i1 %33, label %34, label %25

34:                                               ; preds = %25
  tail call void @mutex_unlock(ptr noundef %20) #11
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %34, %24
  %37 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 22
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @clk_set_rate(ptr noundef %38, i32 noundef %1) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._generic_set_opp_clk_only, i32 noundef %41) #10
  br label %56

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.opp_table, ptr %10, i32 0, i32 22
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @clk_round_rate(ptr noundef %46, i32 noundef %1) #11
  %48 = icmp slt i32 %47, 1
  %49 = select i1 %48, i32 %1, i32 %47
  store i32 %49, ptr %3, align 4
  %50 = call fastcc ptr @_find_freq_ceil(ptr noundef %10, ptr noundef nonnull %3)
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = ptrtoint ptr %50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dev_pm_opp_set_rate, i32 noundef %49, i32 noundef %53) #10
  br label %56

54:                                               ; preds = %44
  %55 = tail call fastcc i32 @_set_opp(ptr noundef %0, ptr noundef %10, ptr noundef %50, i32 noundef %49)
  tail call void @dev_pm_opp_put(ptr noundef %50)
  br label %56

56:                                               ; preds = %54, %52, %43, %40, %36, %17
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ], [ 0, %36 ], [ %41, %43 ], [ 0, %40 ], [ %18, %17 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %10)
  br label %58

58:                                               ; preds = %56, %12
  %59 = phi i32 [ %14, %12 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_set_opp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %8, !prof !10

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @_disable_opp_table(ptr noundef %0, ptr noundef %1)
  br label %295

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14, !prof !10

12:                                               ; preds = %8
  tail call fastcc void @_find_current_opp(ptr noundef %1)
  %13 = load ptr, ptr %9, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %3
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 27
  %23 = load i8, ptr %22, align 4, !range !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %295

25:                                               ; preds = %21, %17, %14
  %26 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = icmp ult i32 %27, %29
  br i1 %32, label %55, label %95

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %35, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %39, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = icmp ult i32 %43, %45
  br i1 %48, label %55, label %95

49:                                               ; preds = %41, %37, %33
  %50 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %95, label %55

55:                                               ; preds = %49, %47, %31
  %56 = tail call fastcc i32 @_set_required_opps(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext true)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %56) #10
  br label %295

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 25
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %95, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 26
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %69, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr %61, align 4
  %74 = tail call i32 @icc_set_bw(ptr noundef %73, i32 noundef %70, i32 noundef %72) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %81, %67
  %77 = phi i32 [ %78, %81 ], [ 0, %67 ]
  %78 = add nuw i32 %77, 1
  %79 = load i32, ptr %64, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load ptr, ptr %60, align 4
  %83 = load ptr, ptr %68, align 4
  %84 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %83, i32 %78
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %83, i32 %78, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr ptr, ptr %82, i32 %78
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @icc_set_bw(ptr noundef %89, i32 noundef %85, i32 noundef %87) #11
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %76, label %92

92:                                               ; preds = %81, %67
  %93 = phi i32 [ 0, %67 ], [ %78, %81 ]
  %94 = phi i32 [ %74, %67 ], [ %90, %81 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %93, i32 noundef %94) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %94) #10
  br label %295

95:                                               ; preds = %76, %63, %59, %49, %47, %31
  %96 = phi i1 [ false, %47 ], [ false, %31 ], [ true, %59 ], [ true, %63 ], [ false, %49 ], [ true, %76 ]
  %97 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 30
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %120, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 32
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %9, align 4
  %104 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 31
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %224, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 24
  %109 = load i32, ptr %108, align 4
  %110 = shl i32 %109, 4
  %111 = getelementptr inbounds %struct.dev_pm_opp_info, ptr %102, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dev_pm_opp, ptr %103, i32 0, i32 10
  %114 = load ptr, ptr %113, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %112, ptr align 4 %114, i32 %110, i1 false) #11
  %115 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 1, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %116, ptr align 4 %118, i32 %110, i1 false) #11
  %119 = load i32, ptr %108, align 4
  br label %224

120:                                              ; preds = %95
  %121 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 23
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %216, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %122, align 4
  %126 = load ptr, ptr %9, align 4
  %127 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 24
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %131, !prof !10

130:                                              ; preds = %124
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 761, i32 noundef 9, ptr noundef null) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28) #10
  br label %295

131:                                              ; preds = %124
  br i1 %96, label %132, label %151

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 10
  %134 = load ptr, ptr %133, align 4
  %135 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %151, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %134, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = load i32, ptr %134, align 4
  %140 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %134, i32 0, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %139, i32 noundef %141) #11
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %136
  %145 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %138, i32 noundef %141) #11
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load i32, ptr %137, align 4
  %149 = load i32, ptr %134, align 4
  %150 = load i32, ptr %140, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._set_opp_voltage, i32 noundef %148, i32 noundef %149, i32 noundef %150, i32 noundef %145) #10
  br label %196

151:                                              ; preds = %144, %136, %132, %131
  %152 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 22
  %153 = load ptr, ptr %152, align 4
  %154 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = tail call i32 @clk_set_rate(ptr noundef %153, i32 noundef %3) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._generic_set_opp_clk_only, i32 noundef %156) #10
  br label %196

159:                                              ; preds = %155, %151
  br i1 %96, label %175, label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 10
  %162 = load ptr, ptr %161, align 4
  %163 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %175, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %162, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = load i32, ptr %162, align 4
  %168 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %162, i32 0, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %167, i32 noundef %169) #11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %164
  %173 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %166, i32 noundef %169) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172, %164, %160, %159
  %176 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 27
  %177 = load i8, ptr %176, align 4, !range !12
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %240, !prof !10

179:                                              ; preds = %175
  %180 = tail call i32 @regulator_enable(ptr noundef %125) #11
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %240

182:                                              ; preds = %179
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %180) #10
  br label %240

183:                                              ; preds = %172
  %184 = load i32, ptr %165, align 4
  %185 = load i32, ptr %162, align 4
  %186 = load i32, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._set_opp_voltage, i32 noundef %184, i32 noundef %185, i32 noundef %186, i32 noundef %173) #10
  %187 = load ptr, ptr %152, align 4
  %188 = getelementptr inbounds %struct.dev_pm_opp, ptr %126, i32 0, i32 8
  %189 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  br i1 %189, label %196, label %190

190:                                              ; preds = %183
  %191 = load i32, ptr %188, align 4
  %192 = tail call i32 @clk_set_rate(ptr noundef %187, i32 noundef %191) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._generic_set_opp_clk_only, i32 noundef %192) #10
  %195 = load i32, ptr %188, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._generic_set_opp_regulator, i32 noundef %195) #10
  br label %196

196:                                              ; preds = %194, %190, %183, %158, %147
  %197 = phi i32 [ %156, %158 ], [ %173, %194 ], [ %145, %147 ], [ %173, %183 ], [ %173, %190 ]
  %198 = getelementptr inbounds %struct.dev_pm_opp, ptr %126, i32 0, i32 10
  %199 = load ptr, ptr %198, align 4
  %200 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %295, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %199, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = load i32, ptr %199, align 4
  %205 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %199, i32 0, i32 2
  %206 = load i32, ptr %205, align 4
  %207 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %204, i32 noundef %206) #11
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %295, label %209

209:                                              ; preds = %201
  %210 = tail call i32 @regulator_set_voltage(ptr noundef %125, i32 noundef %203, i32 noundef %206) #11
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %295, label %212

212:                                              ; preds = %209
  %213 = load i32, ptr %202, align 4
  %214 = load i32, ptr %199, align 4
  %215 = load i32, ptr %205, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._set_opp_voltage, i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %210) #10
  br label %295

216:                                              ; preds = %120
  %217 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 22
  %218 = load ptr, ptr %217, align 4
  %219 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %240, label %220

220:                                              ; preds = %216
  %221 = tail call i32 @clk_set_rate(ptr noundef %218, i32 noundef %3) #11
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %240, label %223

223:                                              ; preds = %220
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._generic_set_opp_clk_only, i32 noundef %221) #10
  br label %295

224:                                              ; preds = %107, %100
  %225 = phi i32 [ %119, %107 ], [ 0, %100 ]
  %226 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 3
  store i32 %225, ptr %226, align 4
  %227 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 23
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 2
  store ptr %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 22
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 4
  store ptr %231, ptr %232, align 4
  %233 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 5
  store ptr %0, ptr %233, align 4
  %234 = getelementptr inbounds %struct.dev_pm_opp, ptr %103, i32 0, i32 8
  %235 = load i32, ptr %234, align 4
  store i32 %235, ptr %102, align 4
  %236 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %102, i32 0, i32 1
  store i32 %3, ptr %236, align 4
  %237 = load ptr, ptr %97, align 4
  %238 = tail call i32 %237(ptr noundef %102) #11
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %295

240:                                              ; preds = %224, %220, %216, %182, %179, %175
  br i1 %96, label %281, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 25
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %277, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 26
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %277, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 11
  %251 = load ptr, ptr %250, align 4
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %251, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = load ptr, ptr %243, align 4
  %256 = tail call i32 @icc_set_bw(ptr noundef %255, i32 noundef %252, i32 noundef %254) #11
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %274

258:                                              ; preds = %263, %249
  %259 = phi i32 [ %260, %263 ], [ 0, %249 ]
  %260 = add nuw i32 %259, 1
  %261 = load i32, ptr %246, align 4
  %262 = icmp ult i32 %260, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load ptr, ptr %242, align 4
  %265 = load ptr, ptr %250, align 4
  %266 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %265, i32 %260
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr %struct.dev_pm_opp_icc_bw, ptr %265, i32 %260, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr ptr, ptr %264, i32 %260
  %271 = load ptr, ptr %270, align 4
  %272 = tail call i32 @icc_set_bw(ptr noundef %271, i32 noundef %267, i32 noundef %269) #11
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %258, label %274

274:                                              ; preds = %263, %249
  %275 = phi i32 [ 0, %249 ], [ %260, %263 ]
  %276 = phi i32 [ %256, %249 ], [ %272, %263 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %275, i32 noundef %276) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %276) #10
  br label %295

277:                                              ; preds = %258, %245, %241
  %278 = tail call fastcc i32 @_set_required_opps(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext false)
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %277
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %278) #10
  br label %295

281:                                              ; preds = %277, %240
  %282 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 27
  store i8 1, ptr %282, align 4
  tail call void @dev_pm_opp_put(ptr noundef %15)
  %283 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %283) #11, !srcloc !8
  %284 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %283, ptr %283, i32 1, ptr elementtype(i32) %283) #11, !srcloc !9
  %285 = extractvalue { i32, i32, i32 } %284, 0
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %291, label %287, !prof !10

287:                                              ; preds = %281
  %288 = add i32 %285, 1
  %289 = or i32 %288, %285
  %290 = icmp sgt i32 %289, -1
  br i1 %290, label %293, label %291, !prof !11

291:                                              ; preds = %287, %281
  %292 = phi i32 [ 2, %281 ], [ 1, %287 ]
  tail call void @refcount_warn_saturate(ptr noundef %283, i32 noundef %292) #11
  br label %293

293:                                              ; preds = %291, %287
  store ptr %2, ptr %9, align 4
  %294 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 12
  store i32 %3, ptr %294, align 4
  br label %295

295:                                              ; preds = %293, %280, %274, %224, %223, %212, %209, %201, %196, %130, %92, %58, %21, %6
  %296 = phi i32 [ %7, %6 ], [ %276, %274 ], [ %278, %280 ], [ 0, %293 ], [ %56, %58 ], [ %94, %92 ], [ 0, %21 ], [ %238, %224 ], [ %221, %223 ], [ %197, %212 ], [ %197, %209 ], [ %197, %201 ], [ %197, %196 ], [ -22, %130 ]
  ret i32 %296
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 1
  %3 = getelementptr %struct.dev_pm_opp, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 6
  %6 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %2, ptr noundef %5) #11
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr %struct.dev_pm_opp, ptr %0, i32 0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 2
  %15 = tail call i32 @blocking_notifier_call_chain(ptr noundef %14, i32 noundef 1, ptr noundef %0) #11
  tail call void @_of_opp_free_required_opps(ptr noundef %8, ptr noundef %0) #11
  tail call void @opp_debug_remove_one(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  br label %16

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_set_opp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dev_pm_opp_set_opp) #10
  %13 = ptrtoint ptr %12 to i32
  br label %22

14:                                               ; preds = %8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %18, %16 ], [ 0, %14 ]
  %21 = tail call fastcc i32 @_set_opp(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %1, i32 noundef %20)
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi i32 [ %13, %11 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_add_opp_dev(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.opp_device, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  store ptr %10, ptr %4, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %9, ptr %12, align 4
  store volatile ptr %4, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #11
  tail call void @opp_debug_register(ptr noundef nonnull %4, ptr noundef %1) #11
  br label %13

13:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @opp_debug_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_get_opp_table_kref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #11
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %4 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef %0)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %71

6:                                                ; preds = %8, %3
  %7 = load i1, ptr @opp_tables_busy, align 1
  br i1 %7, label %8, label %11, !prof !10

8:                                                ; preds = %6
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !14
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef %0)
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %6, label %71

11:                                               ; preds = %6
  store i1 true, ptr @opp_tables_busy, align 1
  %12 = tail call ptr @_managed_opp(ptr noundef %0, i32 noundef %1) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 16) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.opp_device, ptr %16, i32 0, i32 1
  store ptr %0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %20) #11
  %21 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %16, ptr %23, align 4
  store ptr %22, ptr %16, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %21, ptr %24, align 4
  store volatile ptr %16, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %20) #11
  tail call void @opp_debug_register(ptr noundef nonnull %16, ptr noundef nonnull %12) #11
  br label %26

25:                                               ; preds = %14
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %12)
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi ptr [ %12, %18 ], [ inttoptr (i32 -12 to ptr), %25 ]
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  br label %69

28:                                               ; preds = %11
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 456) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %33, ptr noundef nonnull @.str.32, ptr noundef nonnull @_allocate_opp_table.__key) #11
  %34 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.34, ptr noundef nonnull @_allocate_opp_table.__key.33) #11
  %35 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 3
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 3, i32 1
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 1
  store volatile ptr %37, ptr %37, align 8
  %38 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 1, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 24
  store i32 -1, ptr %39, align 8
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 16) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.opp_device, ptr %41, i32 0, i32 1
  store ptr %0, ptr %44, align 8
  tail call void @mutex_lock(ptr noundef %33) #11
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %41, ptr %46, align 4
  store ptr %45, ptr %41, align 8
  %47 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %35, ptr %47, align 4
  store volatile ptr %41, ptr %35, align 4
  tail call void @mutex_unlock(ptr noundef %33) #11
  tail call void @opp_debug_register(ptr noundef nonnull %41, ptr noundef nonnull %30) #11
  tail call void @_of_init_opp_table(ptr noundef nonnull %30, ptr noundef %0, i32 noundef %1) #11
  %48 = tail call i32 @dev_pm_opp_of_find_icc_paths(ptr noundef %0, ptr noundef nonnull %30) #11
  switch i32 %48, label %49 [
    i32 0, label %58
    i32 -517, label %50
  ]

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__._allocate_opp_table, i32 noundef %48) #10
  br label %58

50:                                               ; preds = %43
  tail call void @opp_debug_unregister(ptr noundef nonnull %41, ptr noundef nonnull %30) #11
  %51 = load ptr, ptr %47, align 4
  %52 = load ptr, ptr %41, align 8
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  tail call void @kfree(ptr noundef nonnull %41) #11
  br label %54

54:                                               ; preds = %50, %32
  %55 = phi ptr [ inttoptr (i32 -517 to ptr), %50 ], [ inttoptr (i32 -12 to ptr), %32 ]
  tail call void @kfree(ptr noundef nonnull %30) #11
  br label %56

56:                                               ; preds = %54, %28
  %57 = phi ptr [ inttoptr (i32 -12 to ptr), %28 ], [ %55, %54 ]
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  br label %69

58:                                               ; preds = %49, %43
  %59 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %59, ptr noundef nonnull @.str.37, ptr noundef nonnull @_allocate_opp_table.__key.36) #11
  %60 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 2, i32 1
  store ptr null, ptr %60, align 8
  %61 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 4
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 4, i32 1
  store ptr %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.opp_table, ptr %30, i32 0, i32 5
  store volatile i32 1, ptr %63, align 4
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %64 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = load ptr, ptr @opp_tables, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %30, ptr %67, align 4
  store ptr %66, ptr %30, align 8
  %68 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr @opp_tables, ptr %68, align 4
  store volatile ptr %30, ptr @opp_tables, align 4
  br label %69

69:                                               ; preds = %65, %58, %56, %26
  %70 = phi ptr [ %27, %26 ], [ %30, %58 ], [ %30, %65 ], [ %57, %56 ]
  store i1 false, ptr @opp_tables_busy, align 1
  br label %71

71:                                               ; preds = %69, %8, %3
  %72 = phi ptr [ %70, %69 ], [ %4, %3 ], [ %9, %8 ]
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %73 = icmp ule ptr %72, inttoptr (i32 -4096 to ptr)
  %74 = and i1 %73, %2
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.opp_table, ptr %72, i32 0, i32 22
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = tail call ptr @clk_get(ptr noundef %0, ptr noundef null) #11
  store ptr %80, ptr %76, align 4
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  %82 = ptrtoint ptr %80 to i32
  %83 = select i1 %81, i32 %82, i32 0
  switch i32 %83, label %84 [
    i32 0, label %87
    i32 -2, label %87
  ]

84:                                               ; preds = %79
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %72) #11
  %85 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %83, ptr noundef nonnull @.str.38) #11
  %86 = inttoptr i32 %83 to ptr
  br label %87

87:                                               ; preds = %84, %79, %79, %75, %71
  %88 = phi ptr [ %86, %84 ], [ %72, %75 ], [ %72, %71 ], [ %72, %79 ], [ %72, %79 ]
  ret ptr %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_managed_opp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_get_opp_table(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %9

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_opp_free(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_remove(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %25

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 4
  br label %14

14:                                               ; preds = %18, %11
  %15 = phi ptr [ %13, %11 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef %12) #11
  tail call void @dev_pm_opp_put(ptr noundef %16)
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %24

23:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %12) #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dev_pm_opp_remove, i32 noundef %1) #10
  br label %24

24:                                               ; preds = %23, %22
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %25

25:                                               ; preds = %24, %8, %6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @_opp_remove_all_static(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #11
  br label %11

7:                                                ; preds = %1
  %8 = add i32 %4, -1
  store i32 %8, ptr %3, align 4
  %9 = icmp eq i32 %8, 0
  tail call void @mutex_unlock(ptr noundef %2) #11
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call fastcc void @_opp_remove_all(ptr noundef %0, i1 noundef zeroext false)
  br label %11

11:                                               ; preds = %10, %7, %6
  %12 = xor i1 %5, true
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_opp_remove_all(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = zext i1 %1 to i8
  br label %9

9:                                                ; preds = %21, %7
  %10 = phi ptr [ %5, %7 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.dev_pm_opp, ptr %10, i32 0, i32 6
  %12 = load i8, ptr %11, align 4, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dev_pm_opp, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 1, !range !12
  %17 = icmp eq i8 %16, %8
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %9
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %23, label %21

21:                                               ; preds = %29, %18
  %22 = phi ptr [ %19, %18 ], [ %30, %29 ]
  br label %9

23:                                               ; preds = %29, %18, %2
  tail call void @mutex_unlock(ptr noundef %3) #11
  br label %32

24:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %3) #11
  %25 = icmp eq ptr %10, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.dev_pm_opp, ptr %10, i32 0, i32 6
  store i8 1, ptr %27, align 4
  tail call void @dev_pm_opp_put(ptr noundef nonnull %10)
  br i1 %1, label %28, label %29

28:                                               ; preds = %26
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %0)
  br label %29

29:                                               ; preds = %28, %26
  tail call void @mutex_lock(ptr noundef %3) #11
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %23, label %21

32:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_remove_all_dynamic(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call fastcc void @_opp_remove_all(ptr noundef %8, i1 noundef zeroext true)
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %11

11:                                               ; preds = %10, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_opp_allocate(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 1)
  %5 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 3
  %8 = shl i32 %4, 4
  %9 = add i32 %8, 60
  %10 = add i32 %9, %7
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = getelementptr %struct.dev_pm_opp, ptr %11, i32 1
  %15 = getelementptr inbounds %struct.dev_pm_opp, ptr %11, i32 0, i32 10
  store ptr %14, ptr %15, align 32
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.dev_pm_opp_supply, ptr %14, i32 %4
  %19 = getelementptr inbounds %struct.dev_pm_opp, ptr %11, i32 0, i32 11
  store ptr %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %13
  store volatile ptr %11, ptr %11, align 64
  %21 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %1
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @_opp_compare_key(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %4, %6
  %10 = select i1 %9, i32 -1, i32 1
  br label %37

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = icmp ult i32 %21, %23
  %27 = select i1 %26, i32 -1, i32 1
  br label %37

28:                                               ; preds = %19, %15, %11
  %29 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = icmp ult i32 %30, %32
  %36 = select i1 %35, i32 -1, i32 1
  br label %37

37:                                               ; preds = %34, %28, %25, %8
  %38 = phi i32 [ %10, %8 ], [ %27, %25 ], [ %36, %34 ], [ 0, %28 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_required_opps_available(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %23, %4
  %8 = phi i32 [ 0, %4 ], [ %24, %23 ]
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dev_pm_opp, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 4, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = getelementptr ptr, ptr %6, i32 %8
  %16 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 2
  store i8 0, ptr %16, align 4
  %17 = load ptr, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dev_pm_opp, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dev_pm_opp, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__._required_opps_available, ptr noundef %19, i32 noundef %21) #10
  br label %26

23:                                               ; preds = %7
  %24 = add nuw nsw i32 %8, 1
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %7

26:                                               ; preds = %23, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_opp_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %71, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 8
  %11 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 11
  %12 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 9
  %13 = load i32, ptr %10, align 4
  br label %14

14:                                               ; preds = %44, %9
  %15 = phi ptr [ %6, %9 ], [ %16, %44 ]
  %16 = phi ptr [ %7, %9 ], [ %45, %44 ]
  %17 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = icmp ult i32 %13, %18
  br i1 %21, label %71, label %44

22:                                               ; preds = %14
  %23 = load ptr, ptr %11, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %23, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, ptr %27, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = icmp ult i32 %31, %33
  br i1 %36, label %71, label %44

37:                                               ; preds = %29, %25, %22
  %38 = load i32, ptr %12, align 4
  %39 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = icmp ult i32 %38, %40
  br i1 %43, label %71, label %44

44:                                               ; preds = %42, %35, %20
  %45 = load ptr, ptr %16, align 4
  %46 = icmp eq ptr %45, %6
  br i1 %46, label %71, label %14

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 10
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dev_pm_opp, ptr %16, i32 0, i32 2
  %52 = load i8, ptr %51, align 4, !range !12
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 2
  %58 = load i8, ptr %57, align 4, !range !12
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__._opp_is_duplicate, i32 noundef %13, i32 noundef %50, i32 noundef %53, i32 noundef %13, i32 noundef %56, i32 noundef %59) #10
  %60 = load i8, ptr %51, align 4, !range !12
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %47
  %63 = load ptr, ptr %54, align 4
  %64 = load i32, ptr %63, align 4
  %65 = load ptr, ptr %48, align 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  %68 = select i1 %67, i32 -16, i32 -17
  br label %69

69:                                               ; preds = %62, %47
  %70 = phi i32 [ -17, %47 ], [ %68, %62 ]
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %152

71:                                               ; preds = %44, %42, %35, %20, %4
  %72 = phi ptr [ %6, %4 ], [ %16, %42 ], [ %6, %44 ], [ %16, %35 ], [ %16, %20 ]
  %73 = phi ptr [ %6, %4 ], [ %15, %42 ], [ %16, %44 ], [ %15, %35 ], [ %15, %20 ]
  %74 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %1, ptr %74, align 4
  store ptr %72, ptr %1, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %1, ptr %73, align 4
  tail call void @mutex_unlock(ptr noundef %5) #11
  %76 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 14
  store ptr %2, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 1
  store volatile i32 1, ptr %77, align 4
  tail call void @opp_debug_create_one(ptr noundef %1, ptr noundef %2) #11
  %78 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 23
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %122, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 24
  %83 = load i32, ptr %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 10
  %87 = load ptr, ptr %79, align 4
  %88 = load ptr, ptr %86, align 4
  %89 = getelementptr %struct.dev_pm_opp_supply, ptr %88, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.dev_pm_opp_supply, ptr %88, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = tail call i32 @regulator_is_supported_voltage(ptr noundef %87, i32 noundef %90, i32 noundef %92) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %100, %85
  %96 = phi i32 [ %97, %100 ], [ 0, %85 ]
  %97 = add nuw nsw i32 %96, 1
  %98 = load i32, ptr %82, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load ptr, ptr %78, align 4
  %102 = getelementptr ptr, ptr %101, i32 %97
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %86, align 4
  %105 = getelementptr %struct.dev_pm_opp_supply, ptr %104, i32 %97, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.dev_pm_opp_supply, ptr %104, i32 %97, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @regulator_is_supported_voltage(ptr noundef %103, i32 noundef %106, i32 noundef %108) #11
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %95

111:                                              ; preds = %100, %85
  %112 = phi i32 [ 0, %85 ], [ %97, %100 ]
  %113 = load ptr, ptr %86, align 4
  %114 = getelementptr %struct.dev_pm_opp_supply, ptr %113, i32 %112, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr %struct.dev_pm_opp_supply, ptr %113, i32 %112, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._opp_supported_by_regulators, i32 noundef %115, i32 noundef %117) #10
  %119 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 2
  store i8 0, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 8
  %121 = load i32, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._opp_add, i32 noundef %121) #10
  br label %122

122:                                              ; preds = %111, %95, %81, %71
  %123 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 1
  %124 = load volatile ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.opp_table, ptr %2, i32 0, i32 18
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 13
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %149, %130
  %134 = phi i32 [ 0, %130 ], [ %150, %149 ]
  %135 = getelementptr ptr, ptr %132, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.dev_pm_opp, ptr %136, i32 0, i32 2
  %138 = load i8, ptr %137, align 4, !range !12
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = getelementptr ptr, ptr %132, i32 %134
  %142 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 2
  store i8 0, ptr %142, align 4
  %143 = load ptr, ptr %141, align 4
  %144 = getelementptr inbounds %struct.dev_pm_opp, ptr %143, i32 0, i32 15
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.dev_pm_opp, ptr %1, i32 0, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__._required_opps_available, ptr noundef %145, i32 noundef %147) #10
  br label %152

149:                                              ; preds = %133
  %150 = add nuw nsw i32 %134, 1
  %151 = icmp eq i32 %150, %128
  br i1 %151, label %152, label %133

152:                                              ; preds = %149, %140, %126, %122, %69
  %153 = phi i32 [ %70, %69 ], [ 0, %122 ], [ 0, %126 ], [ 0, %140 ], [ 0, %149 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @opp_debug_create_one(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_opp_add_v1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1) #11
  %9 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 26
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 3
  %12 = shl i32 %8, 4
  %13 = add i32 %12, 60
  %14 = add i32 %13, %11
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %5
  %18 = getelementptr %struct.dev_pm_opp, ptr %15, i32 1
  %19 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 10
  store ptr %18, ptr %19, align 32
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr %struct.dev_pm_opp_supply, ptr %18, i32 %8
  %23 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 11
  store ptr %22, ptr %23, align 4
  br label %24

24:                                               ; preds = %21, %17
  store volatile ptr %15, ptr %15, align 64
  %25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %15, ptr %25, align 4
  %26 = zext i1 %4 to i8
  %27 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 8
  store i32 %2, ptr %27, align 8
  %28 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %3
  %31 = udiv i32 %30, 100
  store i32 %3, ptr %18, align 4
  %32 = sub i32 %3, %31
  %33 = getelementptr %struct.dev_pm_opp, ptr %15, i32 1, i32 0, i32 1
  store i32 %32, ptr %33, align 64
  %34 = add i32 %31, %3
  %35 = getelementptr %struct.dev_pm_opp, ptr %15, i32 1, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 2
  store i8 1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dev_pm_opp, ptr %15, i32 0, i32 3
  store i8 %26, ptr %37, align 1
  %38 = tail call i32 @_opp_add(ptr noundef %1, ptr noundef nonnull %15, ptr noundef %0, i1 zeroext undef)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = icmp eq i32 %38, -16
  %42 = select i1 %41, i32 0, i32 %38
  tail call void @kfree(ptr noundef nonnull %15) #11
  br label %46

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 2
  %45 = tail call i32 @blocking_notifier_call_chain(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %15) #11
  br label %46

46:                                               ; preds = %43, %40, %5
  %47 = phi i32 [ %42, %40 ], [ 0, %43 ], [ -12, %5 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1827, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = shl i32 %2, 2
  %17 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %16, i32 noundef 3264) #11
  store ptr %17, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %4)
  br label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 20
  store i32 %2, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %19, %11, %3
  %23 = phi ptr [ %4, %20 ], [ inttoptr (i32 -12 to ptr), %19 ], [ %4, %3 ], [ %4, %11 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put_supported_hw(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 20
  store i32 0, ptr %6, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_opp_set_supported_hw(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1827, i32 noundef 9, ptr noundef null) #11
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = shl i32 %2, 2
  %17 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %16, i32 noundef 3264) #11
  store ptr %17, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %4) #11
  br label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 20
  store i32 %2, ptr %21, align 4
  br label %25

22:                                               ; preds = %19, %3
  %23 = phi ptr [ inttoptr (i32 -12 to ptr), %19 ], [ %4, %3 ]
  %24 = ptrtoint ptr %23 to i32
  br label %34

25:                                               ; preds = %20, %11
  %26 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pm_opp_supported_hw_release, ptr noundef %4) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = icmp eq ptr %4, null
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #11
  store ptr null, ptr %31, align 4
  %33 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 20
  store i32 0, ptr %33, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %4) #11
  br label %34

34:                                               ; preds = %30, %28, %25, %22
  %35 = phi i32 [ %24, %22 ], [ %26, %30 ], [ %26, %28 ], [ 0, %25 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pm_opp_supported_hw_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 20
  store i32 0, ptr %6, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0) #11
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_set_prop_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1915, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #11
  store ptr %15, ptr %11, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %3)
  br label %18

18:                                               ; preds = %17, %14, %10, %2
  %19 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %3, %2 ], [ %3, %10 ], [ %3, %14 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put_prop_name(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  store ptr null, ptr %4, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_set_regulators(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %80, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1977, i32 noundef 9, ptr noundef null) #11
  br label %77

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %80

15:                                               ; preds = %11
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #11
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %18, label %19, !prof !10

18:                                               ; preds = %15
  store ptr null, ptr %12, align 4
  br label %77

19:                                               ; preds = %15
  %20 = extractvalue { i32, i1 } %16, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3264) #12
  store ptr %21, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %77, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %37, %23
  %26 = phi i32 [ %40, %37 ], [ 0, %23 ]
  %27 = getelementptr ptr, ptr %1, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @regulator_get_optional(ptr noundef %0, ptr noundef %28) #11
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = icmp eq ptr %29, inttoptr (i32 -517 to ptr)
  br i1 %32, label %63, label %33

33:                                               ; preds = %31
  %34 = getelementptr ptr, ptr %1, i32 %26
  %35 = ptrtoint ptr %29 to i32
  %36 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.dev_pm_opp_set_regulators, ptr noundef %36, i32 noundef %35) #10
  br label %63

37:                                               ; preds = %25
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr ptr, ptr %38, i32 %26
  store ptr %29, ptr %39, align 4
  %40 = add nuw i32 %26, 1
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %42, label %25

42:                                               ; preds = %37, %23
  %43 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 24
  store i32 %2, ptr %43, align 4
  %44 = shl i32 %2, 1
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 16) #11
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %63, label %47, !prof !10

47:                                               ; preds = %42
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 3264) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %52) #11
  %53 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 31
  store ptr %49, ptr %53, align 4
  %54 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 32
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.dev_pm_opp_info, ptr %55, i32 0, i32 1
  store ptr %49, ptr %58, align 4
  %59 = getelementptr %struct.dev_pm_opp_supply, ptr %49, i32 %2
  %60 = load ptr, ptr %54, align 4
  %61 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %60, i32 0, i32 1, i32 1
  store ptr %59, ptr %61, align 4
  br label %62

62:                                               ; preds = %57, %51
  tail call void @mutex_unlock(ptr noundef %52) #11
  br label %80

63:                                               ; preds = %47, %42, %33, %31
  %64 = phi i32 [ %26, %33 ], [ %26, %31 ], [ %2, %47 ], [ %2, %42 ]
  %65 = phi i32 [ %35, %33 ], [ -517, %31 ], [ -12, %47 ], [ -12, %42 ]
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %70, %67 ], [ %64, %63 ]
  %69 = load ptr, ptr %12, align 4
  %70 = add i32 %68, -1
  %71 = getelementptr ptr, ptr %69, i32 %70
  %72 = load ptr, ptr %71, align 4
  tail call void @regulator_put(ptr noundef %72) #11
  %73 = icmp eq i32 %70, 0
  br i1 %73, label %74, label %67

74:                                               ; preds = %67, %63
  %75 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %75) #11
  store ptr null, ptr %12, align 4
  %76 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 24
  store i32 -1, ptr %76, align 4
  br label %77

77:                                               ; preds = %74, %19, %18, %10
  %78 = phi i32 [ -16, %10 ], [ %65, %74 ], [ -12, %19 ], [ -12, %18 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %4)
  %79 = inttoptr i32 %78 to ptr
  br label %80

80:                                               ; preds = %77, %62, %11, %3
  %81 = phi ptr [ %79, %77 ], [ %4, %62 ], [ %4, %3 ], [ %4, %11 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put_regulators(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 27
  %9 = load i8, ptr %8, align 4, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = getelementptr ptr, ptr %5, i32 %14
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @regulator_disable(ptr noundef %18) #11
  %20 = add i32 %13, -2
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %30

22:                                               ; preds = %22, %16
  %23 = phi i32 [ %28, %22 ], [ %20, %16 ]
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr ptr, ptr %24, i32 %23
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regulator_disable(ptr noundef %26) #11
  %28 = add i32 %23, -1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %22, label %30

30:                                               ; preds = %22, %16, %11, %7
  %31 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 24
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %35, %30
  %36 = phi i32 [ %40, %35 ], [ %33, %30 ]
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr ptr, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  tail call void @regulator_put(ptr noundef %39) #11
  %40 = add nsw i32 %36, -1
  %41 = icmp sgt i32 %36, 0
  br i1 %41, label %35, label %42

42:                                               ; preds = %35, %30
  %43 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %43) #11
  %44 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 32
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.dev_pm_opp_info, ptr %45, i32 0, i32 1
  store ptr null, ptr %48, align 4
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %49, i32 0, i32 1, i32 1
  store ptr null, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 31
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #11
  store ptr null, ptr %52, align 4
  tail call void @mutex_unlock(ptr noundef %43) #11
  %54 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %54) #11
  store ptr null, ptr %4, align 4
  store i32 -1, ptr %31, align 4
  br label %55

55:                                               ; preds = %51, %3
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %56

56:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_opp_set_regulators(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @dev_pm_opp_set_regulators(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %12

8:                                                ; preds = %3
  %9 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pm_opp_regulators_release, ptr noundef %4) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @dev_pm_opp_put_regulators(ptr noundef %4) #11
  br label %12

12:                                               ; preds = %11, %8, %6
  %13 = phi i32 [ %7, %6 ], [ 0, %8 ], [ %9, %11 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pm_opp_regulators_release(ptr noundef %0) #0 {
  tail call void @dev_pm_opp_put_regulators(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_set_clkname(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2132, i32 noundef 9, ptr noundef null) #11
  br label %22

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2138, i32 noundef 9, ptr noundef null) #11
  br label %22

15:                                               ; preds = %10
  %16 = tail call ptr @clk_get(ptr noundef %0, ptr noundef %1) #11
  store ptr %16, ptr %11, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = ptrtoint ptr %16 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dev_pm_opp_set_clkname, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %20, %18, %14, %9
  %23 = phi ptr [ inttoptr (i32 -16 to ptr), %9 ], [ inttoptr (i32 -16 to ptr), %14 ], [ %16, %20 ], [ inttoptr (i32 -517 to ptr), %18 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %3)
  br label %24

24:                                               ; preds = %22, %15, %2
  %25 = phi ptr [ %23, %22 ], [ %3, %2 ], [ %3, %15 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_put_clkname(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %5) #11
  store ptr inttoptr (i32 -22 to ptr), ptr %4, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_opp_set_clkname(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @dev_pm_opp_set_clkname(ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %15

7:                                                ; preds = %2
  %8 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pm_opp_clkname_release, ptr noundef %3) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %3, null
  br i1 %11, label %15, label %12, !prof !10

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_put(ptr noundef %14) #11
  store ptr inttoptr (i32 -22 to ptr), ptr %13, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %3) #11
  br label %15

15:                                               ; preds = %12, %10, %7, %5
  %16 = phi i32 [ %6, %5 ], [ %8, %12 ], [ %8, %10 ], [ 0, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pm_opp_clkname_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %5) #11
  store ptr inttoptr (i32 -22 to ptr), ptr %4, align 4
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0) #11
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_register_set_opp_helper(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %34, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !11

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2230, i32 noundef 9, ptr noundef null) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %5)
  br label %34

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 30
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 32) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 32
  store ptr %18, ptr %22, align 4
  %23 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 31
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dev_pm_opp_info, ptr %18, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr inbounds %struct.opp_table, ptr %5, i32 0, i32 24
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.dev_pm_opp_supply, ptr %28, i32 %30
  %32 = getelementptr inbounds %struct.dev_pm_set_opp_data, ptr %18, i32 0, i32 1, i32 1
  store ptr %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %26, %20
  tail call void @mutex_unlock(ptr noundef %21) #11
  store ptr %1, ptr %13, align 4
  br label %34

34:                                               ; preds = %33, %16, %12, %11, %4, %2
  %35 = phi ptr [ inttoptr (i32 -16 to ptr), %11 ], [ %5, %33 ], [ %5, %4 ], [ %5, %12 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %16 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_unregister_set_opp_helper(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 30
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #11
  store ptr null, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_opp_register_set_opp_helper(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @dev_pm_opp_register_set_opp_helper(ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %17

7:                                                ; preds = %2
  %8 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pm_opp_unregister_set_opp_helper, ptr noundef %3) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %3, null
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 30
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 32
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #11
  store ptr null, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %14) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %3) #11
  br label %17

17:                                               ; preds = %12, %10, %7, %5
  %18 = phi i32 [ %6, %5 ], [ %8, %12 ], [ %8, %10 ], [ 0, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pm_opp_unregister_set_opp_helper(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 30
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #11
  store ptr null, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0) #11
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_attach_genpd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %58, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %15) #11
  %16 = load i32, ptr %11, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 4) #11
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  store ptr null, ptr %7, align 4
  br label %53

20:                                               ; preds = %14
  %21 = extractvalue { i32, i1 } %17, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #12
  store ptr %22, ptr %7, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %39, %24
  %28 = phi ptr [ %44, %39 ], [ %25, %24 ]
  %29 = phi ptr [ %43, %39 ], [ %1, %24 ]
  %30 = phi i32 [ %42, %39 ], [ 0, %24 ]
  %31 = load i32, ptr %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %28, i32 noundef %31, i32 noundef %30) #10
  br label %51

34:                                               ; preds = %27
  %35 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %0, ptr noundef nonnull %28) #11
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = ptrtoint ptr %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %38) #10
  br label %51

39:                                               ; preds = %34
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr ptr, ptr %40, i32 %30
  store ptr %35, ptr %41, align 4
  %42 = add nuw i32 %30, 1
  %43 = getelementptr ptr, ptr %29, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %27

46:                                               ; preds = %39, %24
  %47 = icmp eq ptr %2, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = load ptr, ptr %7, align 4
  store ptr %49, ptr %2, align 4
  br label %50

50:                                               ; preds = %48, %46
  tail call void @mutex_unlock(ptr noundef %15) #11
  br label %58

51:                                               ; preds = %37, %33
  %52 = phi i32 [ -22, %33 ], [ %38, %37 ]
  tail call fastcc void @_opp_detach_genpd(ptr noundef %4)
  br label %53

53:                                               ; preds = %51, %20, %19
  %54 = phi i32 [ %52, %51 ], [ -22, %20 ], [ -22, %19 ]
  tail call void @mutex_unlock(ptr noundef %15) #11
  br label %55

55:                                               ; preds = %53, %10
  %56 = phi i32 [ %54, %53 ], [ -517, %10 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %4)
  %57 = inttoptr i32 %56 to ptr
  br label %58

58:                                               ; preds = %55, %50, %6, %3
  %59 = phi ptr [ %57, %55 ], [ %4, %50 ], [ %4, %3 ], [ %4, %6 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_opp_detach_genpd(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %20, %5
  %10 = phi i32 [ %21, %20 ], [ %7, %5 ]
  %11 = phi ptr [ %24, %20 ], [ %3, %5 ]
  %12 = phi i32 [ %22, %20 ], [ 0, %5 ]
  %13 = getelementptr ptr, ptr %11, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %14, i1 noundef zeroext false) #11
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr ptr, ptr %17, i32 %12
  store ptr null, ptr %18, align 4
  %19 = load i32, ptr %6, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i32 [ %10, %9 ], [ %19, %16 ]
  %22 = add nuw i32 %12, 1
  %23 = icmp ult i32 %22, %21
  %24 = load ptr, ptr %2, align 4
  br i1 %23, label %9, label %25

25:                                               ; preds = %20, %5
  %26 = phi ptr [ %3, %5 ], [ %24, %20 ]
  tail call void @kfree(ptr noundef %26) #11
  store ptr null, ptr %2, align 4
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_detach_genpd(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3, !prof !10

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %24, %8
  %13 = phi ptr [ %25, %24 ], [ %6, %8 ]
  %14 = phi i32 [ %26, %24 ], [ %10, %8 ]
  %15 = phi i32 [ %27, %24 ], [ 0, %8 ]
  %16 = getelementptr ptr, ptr %13, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  tail call void @dev_pm_domain_detach(ptr noundef nonnull %17, i1 noundef zeroext false) #11
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr ptr, ptr %20, i32 %15
  store ptr null, ptr %21, align 4
  %22 = load i32, ptr %9, align 4
  %23 = load ptr, ptr %5, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = phi ptr [ %13, %12 ], [ %23, %19 ]
  %26 = phi i32 [ %14, %12 ], [ %22, %19 ]
  %27 = add nuw i32 %15, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %12, label %29

29:                                               ; preds = %24, %8
  %30 = phi ptr [ %6, %8 ], [ %25, %24 ]
  tail call void @kfree(ptr noundef %30) #11
  store ptr null, ptr %5, align 4
  br label %31

31:                                               ; preds = %29, %3
  tail call void @mutex_unlock(ptr noundef %4) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef nonnull %0)
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_opp_attach_genpd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @dev_pm_opp_attach_genpd(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %12

8:                                                ; preds = %3
  %9 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pm_opp_detach_genpd, ptr noundef %4) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @dev_pm_opp_detach_genpd(ptr noundef %4) #11
  br label %12

12:                                               ; preds = %11, %8, %6
  %13 = phi i32 [ %7, %6 ], [ 0, %8 ], [ %9, %11 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pm_opp_detach_genpd(ptr noundef %0) #0 {
  tail call void @dev_pm_opp_detach_genpd(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dev_pm_opp_xlate_required_opp(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %59

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 18
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %56, label %21

21:                                               ; preds = %51, %17
  %22 = phi i32 [ %52, %51 ], [ 0, %17 ]
  %23 = getelementptr ptr, ptr %11, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  br label %29

29:                                               ; preds = %34, %26
  %30 = phi ptr [ %28, %26 ], [ %31, %34 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %28
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %27) #11
  br label %56

34:                                               ; preds = %29
  %35 = icmp eq ptr %31, %2
  br i1 %35, label %36, label %29

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 13
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr ptr, ptr %38, i32 %22
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dev_pm_opp, ptr %40, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #11, !srcloc !8
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #11, !srcloc !9
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %36
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %54, label %49, !prof !11

49:                                               ; preds = %45, %36
  %50 = phi i32 [ 2, %36 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #11
  br label %54

51:                                               ; preds = %21
  %52 = add nuw i32 %22, 1
  %53 = icmp eq i32 %52, %19
  br i1 %53, label %56, label %21

54:                                               ; preds = %49, %45
  tail call void @mutex_unlock(ptr noundef %27) #11
  %55 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %54, %51, %33, %17
  %57 = phi ptr [ %40, %54 ], [ inttoptr (i32 -19 to ptr), %33 ], [ inttoptr (i32 -19 to ptr), %17 ], [ inttoptr (i32 -19 to ptr), %51 ]
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dev_pm_opp_xlate_required_opp, ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %59

59:                                               ; preds = %56, %54, %13, %9, %3
  %60 = phi ptr [ %57, %56 ], [ %40, %54 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -16 to ptr), %13 ]
  ret ptr %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_xlate_performance_state(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 1
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %25, %13
  %19 = phi i32 [ 0, %13 ], [ %26, %25 ]
  %20 = getelementptr ptr, ptr %15, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.opp_table, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = add nuw i32 %19, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %30, label %18

28:                                               ; preds = %18
  %29 = icmp eq i32 %19, %7
  br i1 %29, label %30, label %32, !prof !10

30:                                               ; preds = %28, %25
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dev_pm_opp_xlate_performance_state, ptr noundef nonnull %0, ptr noundef %1) #10
  br label %54

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  br label %35

35:                                               ; preds = %39, %32
  %36 = phi ptr [ %34, %32 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %34
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dev_pm_opp, ptr %37, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %2
  br i1 %42, label %43, label %35

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.dev_pm_opp, ptr %37, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr ptr, ptr %45, i32 %19
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dev_pm_opp, ptr %47, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  br label %52

50:                                               ; preds = %35
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dev_pm_opp_xlate_performance_state, ptr noundef nonnull %0, ptr noundef %1) #10
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi i32 [ %49, %43 ], [ -22, %50 ]
  tail call void @mutex_unlock(ptr noundef %33) #11
  br label %54

54:                                               ; preds = %52, %30, %9, %5, %3
  %55 = phi i32 [ -22, %30 ], [ %53, %52 ], [ %2, %5 ], [ %2, %3 ], [ -16, %9 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_add(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @_add_opp_table_indexed(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.opp_table, ptr %4, i32 0, i32 24
  store i32 1, ptr %9, align 4
  %10 = tail call i32 @_opp_add_v1(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %4)
  br label %13

13:                                               ; preds = %12, %8, %6
  %14 = phi i32 [ %7, %6 ], [ %10, %12 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_adjust_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq ptr %0, null
  %7 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %14

11:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %12 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %9
  %15 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ %12, %11 ]
  %16 = ptrtoint ptr %15 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dev_pm_opp_adjust_voltage, i32 noundef %16) #10
  br label %60

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 4
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dev_pm_opp, ptr %22, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %22, %28 ], [ inttoptr (i32 -19 to ptr), %20 ]
  %32 = ptrtoint ptr %31 to i32
  br label %56

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.dev_pm_opp, ptr %22, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %56, label %38

38:                                               ; preds = %33
  store i32 %2, ptr %35, align 4
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %39, i32 0, i32 1
  store i32 %3, ptr %40, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.dev_pm_opp_supply, ptr %41, i32 0, i32 2
  store i32 %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dev_pm_opp, ptr %22, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #11, !srcloc !8
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #11, !srcloc !9
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47, !prof !10

47:                                               ; preds = %38
  %48 = add i32 %45, 1
  %49 = or i32 %48, %45
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %47, %38
  %52 = phi i32 [ 2, %38 ], [ 1, %47 ]
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef %52) #11
  br label %53

53:                                               ; preds = %51, %47
  tail call void @mutex_unlock(ptr noundef %18) #11
  %54 = getelementptr inbounds %struct.opp_table, ptr %12, i32 0, i32 2
  %55 = tail call i32 @blocking_notifier_call_chain(ptr noundef %54, i32 noundef 4, ptr noundef %22) #11
  tail call void @dev_pm_opp_put(ptr noundef %22)
  br label %58

56:                                               ; preds = %33, %30
  %57 = phi i32 [ %32, %30 ], [ 0, %33 ]
  tail call void @mutex_unlock(ptr noundef %18) #11
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %57, %56 ], [ 0, %53 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %12)
  br label %60

60:                                               ; preds = %58, %14
  %61 = phi i32 [ %16, %14 ], [ %59, %58 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @_opp_set_availability(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_opp_set_availability(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = zext i1 %2 to i8
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %13

10:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %11 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %8
  %14 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %11, %10 ]
  %15 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._opp_set_availability, i32 noundef %15) #10
  br label %55

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.opp_table, ptr %11, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.opp_table, ptr %11, i32 0, i32 4
  br label %19

19:                                               ; preds = %23, %16
  %20 = phi ptr [ %18, %16 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dev_pm_opp, ptr %21, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %21, %27 ], [ inttoptr (i32 -19 to ptr), %19 ]
  %31 = ptrtoint ptr %30 to i32
  br label %51

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dev_pm_opp, ptr %21, i32 0, i32 2
  %34 = load i8, ptr %33, align 4, !range !12
  %35 = icmp eq i8 %34, %4
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  store i8 %4, ptr %33, align 4
  %37 = getelementptr inbounds %struct.dev_pm_opp, ptr %21, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #11, !srcloc !8
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #11, !srcloc !9
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !10

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #11
  br label %47

47:                                               ; preds = %45, %41
  tail call void @mutex_unlock(ptr noundef %17) #11
  %48 = getelementptr inbounds %struct.opp_table, ptr %11, i32 0, i32 2
  %49 = select i1 %2, i32 2, i32 3
  %50 = tail call i32 @blocking_notifier_call_chain(ptr noundef %48, i32 noundef %49, ptr noundef %21) #11
  tail call void @dev_pm_opp_put(ptr noundef %21)
  br label %53

51:                                               ; preds = %32, %29
  %52 = phi i32 [ %31, %29 ], [ 0, %32 ]
  tail call void @mutex_unlock(ptr noundef %17) #11
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ 0, %47 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %11)
  br label %55

55:                                               ; preds = %53, %13
  %56 = phi i32 [ %15, %13 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_disable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @_opp_set_availability(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_register_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  %13 = ptrtoint ptr %12 to i32
  br label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 2
  %16 = tail call i32 @blocking_notifier_chain_register(ptr noundef %15, ptr noundef %1) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_unregister_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %11

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %9 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %6
  %12 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %9, %8 ]
  %13 = ptrtoint ptr %12 to i32
  br label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.opp_table, ptr %9, i32 0, i32 2
  %16 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %15, ptr noundef %1) #11
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %9)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_remove_table(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %6 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  %10 = icmp eq ptr %6, inttoptr (i32 -19 to ptr)
  br i1 %10, label %34, label %13

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 4
  br label %19

19:                                               ; preds = %17, %13, %11
  %20 = phi i32 [ -22, %11 ], [ %9, %13 ], [ %9, %17 ]
  %21 = phi ptr [ @.str.19, %11 ], [ %15, %13 ], [ %18, %17 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 2878, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %21, i32 noundef %20) #11
  br label %34

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.opp_table, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.opp_table, ptr %6, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = add i32 %25, -1
  store i32 %28, ptr %24, align 4
  %29 = icmp eq i32 %28, 0
  tail call void @mutex_unlock(ptr noundef %23) #11
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  tail call fastcc void @_opp_remove_all(ptr noundef %6, i1 noundef zeroext false) #11
  br label %32

31:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef %23) #11
  br label %33

32:                                               ; preds = %30, %27
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %6)
  br label %33

33:                                               ; preds = %32, %31
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %6)
  br label %34

34:                                               ; preds = %33, %19, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_sync_regulators(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._find_opp_table) #10
  br label %39

7:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @opp_table_lock) #11
  %8 = tail call fastcc ptr @_find_opp_table_unlocked(ptr noundef nonnull %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @opp_table_lock) #11
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %39, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 23
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14, !prof !10

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 27
  %16 = load i8, ptr %15, align 4, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.opp_table, ptr %8, i32 0, i32 24
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load ptr, ptr %12, align 4
  %24 = tail call i32 @regulator_sync_voltage(ptr noundef %23) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %31, %22
  %27 = phi i32 [ %28, %31 ], [ 0, %22 ]
  %28 = add nuw nsw i32 %27, 1
  %29 = load i32, ptr %19, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr ptr, ptr %32, i32 %28
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @regulator_sync_voltage(ptr noundef %34) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %26, label %37

37:                                               ; preds = %31, %26, %22, %18, %14, %10
  %38 = phi i32 [ 0, %10 ], [ 0, %14 ], [ 0, %18 ], [ %24, %22 ], [ %35, %31 ], [ 0, %26 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %8)
  br label %39

39:                                               ; preds = %37, %7, %5
  %40 = phi i32 [ %38, %37 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_sync_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_disable_opp_table(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 27
  %4 = load i8, ptr %3, align 4, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %58, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef %7) #11
  br label %58

12:                                               ; preds = %12, %6
  %13 = phi ptr [ %19, %12 ], [ %9, %6 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct.dev_pm_opp, ptr %13, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !12
  %17 = zext i8 %16 to i32
  %18 = add i32 %14, %17
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, %8
  br i1 %20, label %21, label %12

21:                                               ; preds = %12
  tail call void @mutex_unlock(ptr noundef %7) #11
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 25
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 26
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 4
  %33 = tail call i32 @icc_set_bw(ptr noundef %32, i32 noundef 0, i32 noundef 0) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %40, %31
  %36 = phi i32 [ %37, %40 ], [ 0, %31 ]
  %37 = add nuw i32 %36, 1
  %38 = load i32, ptr %28, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr ptr, ptr %41, i32 %37
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @icc_set_bw(ptr noundef %43, i32 noundef 0, i32 noundef 0) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %35, label %46

46:                                               ; preds = %40, %31
  %47 = phi i32 [ 0, %31 ], [ %37, %40 ]
  %48 = phi i32 [ %33, %31 ], [ %44, %40 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %47, i32 noundef %48) #10
  br label %58

49:                                               ; preds = %35, %27, %23
  %50 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 23
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 4
  %55 = tail call i32 @regulator_disable(ptr noundef %54) #11
  br label %56

56:                                               ; preds = %53, %49
  %57 = tail call fastcc i32 @_set_required_opps(ptr noundef %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false)
  store i8 0, ptr %3, align 4
  br label %58

58:                                               ; preds = %56, %46, %21, %11, %2
  %59 = phi i32 [ %57, %56 ], [ 0, %2 ], [ 0, %21 ], [ %48, %46 ], [ 0, %11 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_find_current_opp(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @clk_get_rate(ptr noundef %4) #11
  store i32 %7, ptr %2, align 4
  %8 = call fastcc ptr @_find_freq_ceil(ptr noundef %0, ptr noundef nonnull %2)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %25

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dev_pm_opp, ptr %13, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #11, !srcloc !8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #11, !srcloc !9
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !10

18:                                               ; preds = %10
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18, %10
  %23 = phi i32 [ 2, %10 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #11
  br label %24

24:                                               ; preds = %22, %18
  tail call void @mutex_unlock(ptr noundef %11) #11
  br label %25

25:                                               ; preds = %24, %6
  %26 = phi ptr [ %13, %24 ], [ %8, %6 ]
  %27 = getelementptr inbounds %struct.opp_table, ptr %0, i32 0, i32 13
  store ptr %26, ptr %27, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_set_required_opps(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %119, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %119

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.opp_table, ptr %15, i32 0, i32 29
  %17 = load i8, ptr %16, align 2, !range !12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  br label %119

20:                                               ; preds = %14
  %21 = icmp eq ptr %8, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %20
  %23 = icmp eq ptr %2, null
  br i1 %23, label %30, label %24, !prof !10

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dev_pm_opp, ptr %27, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i32 [ %29, %24 ], [ 0, %22 ]
  %32 = icmp eq ptr %0, null
  br i1 %32, label %119, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef nonnull %0, i32 noundef %31) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %119, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %43, i32 noundef %31, i32 noundef %34) #10
  br label %119

44:                                               ; preds = %20
  %45 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %45) #11
  %46 = getelementptr inbounds %struct.opp_table, ptr %1, i32 0, i32 18
  %47 = load i32, ptr %46, align 4
  br i1 %3, label %48, label %84

48:                                               ; preds = %44
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %117, label %50

50:                                               ; preds = %48
  %51 = icmp eq ptr %2, null
  %52 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 13
  br label %53

53:                                               ; preds = %80, %50
  %54 = phi i32 [ %47, %50 ], [ %81, %80 ]
  %55 = phi i32 [ 0, %50 ], [ %82, %80 ]
  %56 = getelementptr ptr, ptr %8, i32 %55
  %57 = load ptr, ptr %56, align 4
  br i1 %51, label %64, label %58, !prof !10

58:                                               ; preds = %53
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr ptr, ptr %59, i32 %55
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dev_pm_opp, ptr %61, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %63, %58 ], [ 0, %53 ]
  %66 = icmp eq ptr %57, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef nonnull %57, i32 noundef %65) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, ptr %46, align 4
  br label %80

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load ptr, ptr %57, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi ptr [ %77, %76 ], [ %74, %72 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %79, i32 noundef %65, i32 noundef %68) #10
  br label %117

80:                                               ; preds = %70, %64
  %81 = phi i32 [ %71, %70 ], [ %54, %64 ]
  %82 = add nuw i32 %55, 1
  %83 = icmp ult i32 %82, %81
  br i1 %83, label %53, label %117

84:                                               ; preds = %44
  %85 = add i32 %47, -1
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = icmp eq ptr %2, null
  %89 = getelementptr inbounds %struct.dev_pm_opp, ptr %2, i32 0, i32 13
  br label %90

90:                                               ; preds = %114, %87
  %91 = phi i32 [ %85, %87 ], [ %115, %114 ]
  %92 = getelementptr ptr, ptr %8, i32 %91
  %93 = load ptr, ptr %92, align 4
  br i1 %88, label %100, label %94, !prof !10

94:                                               ; preds = %90
  %95 = load ptr, ptr %89, align 4
  %96 = getelementptr ptr, ptr %95, i32 %91
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.dev_pm_opp, ptr %97, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %94, %90
  %101 = phi i32 [ %99, %94 ], [ 0, %90 ]
  %102 = icmp eq ptr %93, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef nonnull %93, i32 noundef %101) #11
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load ptr, ptr %93, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi ptr [ %111, %110 ], [ %108, %106 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %113, i32 noundef %101, i32 noundef %104) #10
  br label %117

114:                                              ; preds = %103, %100
  %115 = add i32 %91, -1
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %90, label %117

117:                                              ; preds = %114, %112, %84, %80, %78, %48
  %118 = phi i32 [ %68, %78 ], [ %104, %112 ], [ 0, %48 ], [ 0, %84 ], [ 0, %80 ], [ 0, %114 ]
  tail call void @mutex_unlock(ptr noundef %45) #11
  br label %119

119:                                              ; preds = %117, %42, %33, %30, %19, %10, %4
  %120 = phi i32 [ -2, %19 ], [ %118, %117 ], [ 0, %4 ], [ -16, %10 ], [ 0, %30 ], [ %34, %42 ], [ 0, %33 ]
  ret i32 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_of_init_opp_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_find_icc_paths(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @opp_debug_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_of_clear_opp_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_of_opp_free_required_opps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @opp_debug_remove_one(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{i64 516907, i64 2148006878, i64 2148006904, i64 2148006951, i64 2148006973, i64 2148007001, i64 2148007021}
!9 = !{i64 2148020548, i64 2148020580, i64 2148020609, i64 2148020643, i64 2148020674, i64 2148020697}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i8 0, i8 2}
!13 = !{i64 2153718149}
!14 = !{i64 2153717991}
