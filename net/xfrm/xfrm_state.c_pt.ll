; ModuleID = '/llk/IR/net/xfrm/xfrm_state.c_pt.bc'
source_filename = "../net/xfrm/xfrm_state.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_register_type:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_register_type\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_register_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_unregister_type:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_unregister_type\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_unregister_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_register_type_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_register_type_offload\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_register_type_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_unregister_type_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_unregister_type_offload\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_unregister_type_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_free:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_free\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_state_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_state_destroy\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_state_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_state_delete\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_delete\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_flush\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_dev_state_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_dev_state_flush\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_dev_state_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_sad_getinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_sad_getinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_sad_getinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_stateonly_find:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_stateonly_find\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_stateonly_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_lookup_byspi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_lookup_byspi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_lookup_byspi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_insert\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_add:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_add\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_update:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_update\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_check_expire:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_check_expire\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_check_expire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_lookup_byaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_lookup_byaddr\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_lookup_byaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_find_acq:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_find_acq\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_find_acq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_find_acq_byseq:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_find_acq_byseq\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_find_acq_byseq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_get_acqseq:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_get_acqseq\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_get_acqseq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_verify_spi_info:\09\09\09\09\09"
module asm "\09.asciz \09\22verify_spi_info\22\09\09\09\09\09"
module asm "__kstrtabns_verify_spi_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_alloc_spi\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_alloc_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_walk\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_walk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_walk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_walk_init\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_walk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_walk_done\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_walk_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_policy_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22km_policy_notify\22\09\09\09\09\09"
module asm "__kstrtabns_km_policy_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_state_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22km_state_notify\22\09\09\09\09\09"
module asm "__kstrtabns_km_state_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_state_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22km_state_expired\22\09\09\09\09\09"
module asm "__kstrtabns_km_state_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_query:\09\09\09\09\09"
module asm "\09.asciz \09\22km_query\22\09\09\09\09\09"
module asm "__kstrtabns_km_query:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_new_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22km_new_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_km_new_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_policy_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22km_policy_expired\22\09\09\09\09\09"
module asm "__kstrtabns_km_policy_expired:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_km_report:\09\09\09\09\09"
module asm "\09.asciz \09\22km_report\22\09\09\09\09\09"
module asm "__kstrtabns_km_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_user_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_user_policy\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_user_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_register_km:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_register_km\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_register_km:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_unregister_km:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_unregister_km\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_unregister_km:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_register_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_register_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_unregister_afinfo\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_unregister_afinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_afinfo_get_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_afinfo_get_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_afinfo_get_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_flush_gc:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_flush_gc\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_flush_gc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_delete_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_delete_tunnel\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_delete_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_state_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_state_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_state_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xfrm_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22__xfrm_init_state\22\09\09\09\09\09"
module asm "__kstrtabns___xfrm_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xfrm_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22xfrm_init_state\22\09\09\09\09\09"
module asm "__kstrtabns_xfrm_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.35, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.94, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.94 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.xfrm_type = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_state_afinfo = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xfrm_type_offload = type { ptr, i8, ptr, ptr, ptr }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.78, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.79, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type {}
%union.anon.78 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.79 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, %struct.netdevice_tracker, ptr, i32, i32, i8 }
%struct.netdevice_tracker = type {}
%struct.page_frag = type { ptr, i16, i16 }
%struct.km_event = type { %union.anon.141, i32, i32, i32, ptr }
%union.anon.141 = type { i32 }
%struct.xfrm_mgr = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.120, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.120 = type { %struct.atomic_t }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.xfrmk_sadinfo = type { i32, i32, i32 }
%struct.xfrm_policy = type { %struct.possible_net_t, %struct.hlist_node, %struct.hlist_node, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.timer_list, %struct.atomic_t, i32, i32, i32, %struct.xfrm_mark, %struct.xfrm_selector, %struct.xfrm_lifetime_cfg, %struct.xfrm_lifetime_cur, %struct.xfrm_policy_walk_entry, %struct.xfrm_policy_queue, i8, i8, i8, i8, i8, i16, ptr, [6 x %struct.xfrm_tmpl], %struct.hlist_node, %struct.callback_head }
%struct.xfrm_policy_walk_entry = type { %struct.list_head, i8 }
%struct.xfrm_policy_queue = type { %struct.sk_buff_head, %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.xfrm_tmpl = type { %struct.xfrm_id, %union.xfrm_address_t, i16, i32, i8, i8, i8, i8, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.91 = type { i8, i8 }
%struct.anon.90 = type { i16, i16 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.xfrm_address_filter = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i8, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [56 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.143, ptr, ptr, ptr, ptr, [48 x i8] }
%union.anon.143 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"net/xfrm/xfrm_state.c\00", align 1
@__kstrtab_xfrm_register_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_register_type = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_register_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_register_type to i32), ptr @__kstrtab_xfrm_register_type, ptr @__kstrtabns_xfrm_register_type }, section "___ksymtab+xfrm_register_type", align 4
@__kstrtab_xfrm_unregister_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_unregister_type = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_unregister_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_unregister_type to i32), ptr @__kstrtab_xfrm_unregister_type, ptr @__kstrtabns_xfrm_unregister_type }, section "___ksymtab+xfrm_unregister_type", align 4
@__kstrtab_xfrm_register_type_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_register_type_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_register_type_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_register_type_offload to i32), ptr @__kstrtab_xfrm_register_type_offload, ptr @__kstrtabns_xfrm_register_type_offload }, section "___ksymtab+xfrm_register_type_offload", align 4
@__kstrtab_xfrm_unregister_type_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_unregister_type_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_unregister_type_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_unregister_type_offload to i32), ptr @__kstrtab_xfrm_unregister_type_offload, ptr @__kstrtabns_xfrm_unregister_type_offload }, section "___ksymtab+xfrm_unregister_type_offload", align 4
@xfrm_state_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__kstrtab_xfrm_state_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_free = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_free to i32), ptr @__kstrtab_xfrm_state_free, ptr @__kstrtabns_xfrm_state_free }, section "___ksymtab+xfrm_state_free", align 4
@__kstrtab_xfrm_state_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_alloc to i32), ptr @__kstrtab_xfrm_state_alloc, ptr @__kstrtabns_xfrm_state_alloc }, section "___ksymtab+xfrm_state_alloc", align 4
@xfrm_state_gc_lock = internal global %struct.spinlock zeroinitializer, align 4
@xfrm_state_gc_list = internal global %struct.hlist_head zeroinitializer, align 4
@xfrm_state_gc_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @xfrm_state_gc_work, i64 4), ptr getelementptr (i8, ptr @xfrm_state_gc_work, i64 4) }, ptr @xfrm_state_gc_task }, align 4
@__kstrtab___xfrm_state_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_state_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_state_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_state_destroy to i32), ptr @__kstrtab___xfrm_state_destroy, ptr @__kstrtabns___xfrm_state_destroy }, section "___ksymtab+__xfrm_state_destroy", align 4
@__kstrtab___xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_state_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_state_delete to i32), ptr @__kstrtab___xfrm_state_delete, ptr @__kstrtabns___xfrm_state_delete }, section "___ksymtab+__xfrm_state_delete", align 4
@__kstrtab_xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_delete to i32), ptr @__kstrtab_xfrm_state_delete, ptr @__kstrtabns_xfrm_state_delete }, section "___ksymtab+xfrm_state_delete", align 4
@__kstrtab_xfrm_state_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_flush to i32), ptr @__kstrtab_xfrm_state_flush, ptr @__kstrtabns_xfrm_state_flush }, section "___ksymtab+xfrm_state_flush", align 4
@__kstrtab_xfrm_dev_state_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_dev_state_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_dev_state_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_dev_state_flush to i32), ptr @__kstrtab_xfrm_dev_state_flush, ptr @__kstrtabns_xfrm_dev_state_flush }, section "___ksymtab+xfrm_dev_state_flush", align 4
@__kstrtab_xfrm_sad_getinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_sad_getinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_sad_getinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_sad_getinfo to i32), ptr @__kstrtab_xfrm_sad_getinfo, ptr @__kstrtabns_xfrm_sad_getinfo }, section "___ksymtab+xfrm_sad_getinfo", align 4
@xfrm_state_find.saddr_wildcard = internal global { i32, [12 x i8] } { i32 0, [12 x i8] undef }, align 4
@__kstrtab_xfrm_stateonly_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_stateonly_find = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_stateonly_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_stateonly_find to i32), ptr @__kstrtab_xfrm_stateonly_find, ptr @__kstrtabns_xfrm_stateonly_find }, section "___ksymtab+xfrm_stateonly_find", align 4
@__kstrtab_xfrm_state_lookup_byspi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_lookup_byspi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_lookup_byspi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_lookup_byspi to i32), ptr @__kstrtab_xfrm_state_lookup_byspi, ptr @__kstrtabns_xfrm_state_lookup_byspi }, section "___ksymtab+xfrm_state_lookup_byspi", align 4
@__kstrtab_xfrm_state_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_insert to i32), ptr @__kstrtab_xfrm_state_insert, ptr @__kstrtabns_xfrm_state_insert }, section "___ksymtab+xfrm_state_insert", align 4
@__kstrtab_xfrm_state_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_add = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_add to i32), ptr @__kstrtab_xfrm_state_add, ptr @__kstrtabns_xfrm_state_add }, section "___ksymtab+xfrm_state_add", align 4
@__kstrtab_xfrm_state_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_update = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_update to i32), ptr @__kstrtab_xfrm_state_update, ptr @__kstrtabns_xfrm_state_update }, section "___ksymtab+xfrm_state_update", align 4
@__kstrtab_xfrm_state_check_expire = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_check_expire = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_check_expire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_check_expire to i32), ptr @__kstrtab_xfrm_state_check_expire, ptr @__kstrtabns_xfrm_state_check_expire }, section "___ksymtab+xfrm_state_check_expire", align 4
@__kstrtab_xfrm_state_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_lookup to i32), ptr @__kstrtab_xfrm_state_lookup, ptr @__kstrtabns_xfrm_state_lookup }, section "___ksymtab+xfrm_state_lookup", align 4
@__kstrtab_xfrm_state_lookup_byaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_lookup_byaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_lookup_byaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_lookup_byaddr to i32), ptr @__kstrtab_xfrm_state_lookup_byaddr, ptr @__kstrtabns_xfrm_state_lookup_byaddr }, section "___ksymtab+xfrm_state_lookup_byaddr", align 4
@__kstrtab_xfrm_find_acq = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_find_acq = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_find_acq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_find_acq to i32), ptr @__kstrtab_xfrm_find_acq, ptr @__kstrtabns_xfrm_find_acq }, section "___ksymtab+xfrm_find_acq", align 4
@__kstrtab_xfrm_find_acq_byseq = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_find_acq_byseq = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_find_acq_byseq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_find_acq_byseq to i32), ptr @__kstrtab_xfrm_find_acq_byseq, ptr @__kstrtabns_xfrm_find_acq_byseq }, section "___ksymtab+xfrm_find_acq_byseq", align 4
@xfrm_get_acqseq.acqseq = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_xfrm_get_acqseq = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_get_acqseq = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_get_acqseq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_get_acqseq to i32), ptr @__kstrtab_xfrm_get_acqseq, ptr @__kstrtabns_xfrm_get_acqseq }, section "___ksymtab+xfrm_get_acqseq", align 4
@__kstrtab_verify_spi_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_verify_spi_info = external dso_local constant [0 x i8], align 1
@__ksymtab_verify_spi_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @verify_spi_info to i32), ptr @__kstrtab_verify_spi_info, ptr @__kstrtabns_verify_spi_info }, section "___ksymtab+verify_spi_info", align 4
@__kstrtab_xfrm_alloc_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_alloc_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_alloc_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_alloc_spi to i32), ptr @__kstrtab_xfrm_alloc_spi, ptr @__kstrtabns_xfrm_alloc_spi }, section "___ksymtab+xfrm_alloc_spi", align 4
@__kstrtab_xfrm_state_walk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_walk = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_walk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_walk to i32), ptr @__kstrtab_xfrm_state_walk, ptr @__kstrtabns_xfrm_state_walk }, section "___ksymtab+xfrm_state_walk", align 4
@__kstrtab_xfrm_state_walk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_walk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_walk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_walk_init to i32), ptr @__kstrtab_xfrm_state_walk_init, ptr @__kstrtabns_xfrm_state_walk_init }, section "___ksymtab+xfrm_state_walk_init", align 4
@__kstrtab_xfrm_state_walk_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_walk_done = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_walk_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_walk_done to i32), ptr @__kstrtab_xfrm_state_walk_done, ptr @__kstrtabns_xfrm_state_walk_done }, section "___ksymtab+xfrm_state_walk_done", align 4
@xfrm_km_list = internal global %struct.list_head { ptr @xfrm_km_list, ptr @xfrm_km_list }, align 4
@__kstrtab_km_policy_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_policy_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_km_policy_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_policy_notify to i32), ptr @__kstrtab_km_policy_notify, ptr @__kstrtabns_km_policy_notify }, section "___ksymtab+km_policy_notify", align 4
@__kstrtab_km_state_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_state_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_km_state_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_state_notify to i32), ptr @__kstrtab_km_state_notify, ptr @__kstrtabns_km_state_notify }, section "___ksymtab+km_state_notify", align 4
@__kstrtab_km_state_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_state_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_km_state_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_state_expired to i32), ptr @__kstrtab_km_state_expired, ptr @__kstrtabns_km_state_expired }, section "___ksymtab+km_state_expired", align 4
@__kstrtab_km_query = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_query = external dso_local constant [0 x i8], align 1
@__ksymtab_km_query = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_query to i32), ptr @__kstrtab_km_query, ptr @__kstrtabns_km_query }, section "___ksymtab+km_query", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_km_new_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_new_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_km_new_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_new_mapping to i32), ptr @__kstrtab_km_new_mapping, ptr @__kstrtabns_km_new_mapping }, section "___ksymtab+km_new_mapping", align 4
@__kstrtab_km_policy_expired = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_policy_expired = external dso_local constant [0 x i8], align 1
@__ksymtab_km_policy_expired = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_policy_expired to i32), ptr @__kstrtab_km_policy_expired, ptr @__kstrtabns_km_policy_expired }, section "___ksymtab+km_policy_expired", align 4
@__kstrtab_km_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_km_report = external dso_local constant [0 x i8], align 1
@__ksymtab_km_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @km_report to i32), ptr @__kstrtab_km_report, ptr @__kstrtabns_km_report }, section "___ksymtab+km_report", align 4
@__kstrtab_xfrm_user_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_user_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_user_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_user_policy to i32), ptr @__kstrtab_xfrm_user_policy, ptr @__kstrtabns_xfrm_user_policy }, section "___ksymtab+xfrm_user_policy", align 4
@xfrm_km_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_xfrm_register_km = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_register_km = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_register_km = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_register_km to i32), ptr @__kstrtab_xfrm_register_km, ptr @__kstrtabns_xfrm_register_km }, section "___ksymtab+xfrm_register_km", align 4
@__kstrtab_xfrm_unregister_km = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_unregister_km = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_unregister_km = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_unregister_km to i32), ptr @__kstrtab_xfrm_unregister_km, ptr @__kstrtabns_xfrm_unregister_km }, section "___ksymtab+xfrm_unregister_km", align 4
@xfrm_state_afinfo_lock = internal global %struct.spinlock zeroinitializer, align 4
@xfrm_state_afinfo = internal global [46 x ptr] zeroinitializer, align 4
@__kstrtab_xfrm_state_register_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_register_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_register_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_register_afinfo to i32), ptr @__kstrtab_xfrm_state_register_afinfo, ptr @__kstrtabns_xfrm_state_register_afinfo }, section "___ksymtab+xfrm_state_register_afinfo", align 4
@__kstrtab_xfrm_state_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_unregister_afinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_unregister_afinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_unregister_afinfo to i32), ptr @__kstrtab_xfrm_state_unregister_afinfo, ptr @__kstrtabns_xfrm_state_unregister_afinfo }, section "___ksymtab+xfrm_state_unregister_afinfo", align 4
@__kstrtab_xfrm_state_afinfo_get_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_afinfo_get_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_afinfo_get_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_afinfo_get_rcu to i32), ptr @__kstrtab_xfrm_state_afinfo_get_rcu, ptr @__kstrtabns_xfrm_state_afinfo_get_rcu }, section "___ksymtab_gpl+xfrm_state_afinfo_get_rcu", align 4
@__kstrtab_xfrm_flush_gc = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_flush_gc = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_flush_gc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_flush_gc to i32), ptr @__kstrtab_xfrm_flush_gc, ptr @__kstrtabns_xfrm_flush_gc }, section "___ksymtab+xfrm_flush_gc", align 4
@__kstrtab_xfrm_state_delete_tunnel = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_delete_tunnel = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_delete_tunnel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_delete_tunnel to i32), ptr @__kstrtab_xfrm_state_delete_tunnel, ptr @__kstrtabns_xfrm_state_delete_tunnel }, section "___ksymtab+xfrm_state_delete_tunnel", align 4
@xfrm_state_mtu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_xfrm_state_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_state_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_state_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_state_mtu to i32), ptr @__kstrtab_xfrm_state_mtu, ptr @__kstrtabns_xfrm_state_mtu }, section "___ksymtab_gpl+xfrm_state_mtu", align 4
@__kstrtab___xfrm_init_state = external dso_local constant [0 x i8], align 1
@__kstrtabns___xfrm_init_state = external dso_local constant [0 x i8], align 1
@__ksymtab___xfrm_init_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xfrm_init_state to i32), ptr @__kstrtab___xfrm_init_state, ptr @__kstrtabns___xfrm_init_state }, section "___ksymtab+__xfrm_init_state", align 4
@__kstrtab_xfrm_init_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_xfrm_init_state = external dso_local constant [0 x i8], align 1
@__ksymtab_xfrm_init_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xfrm_init_state to i32), ptr @__kstrtab_xfrm_init_state, ptr @__kstrtabns_xfrm_init_state }, section "___ksymtab+xfrm_init_state", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [11 x i8] c"xfrm_state\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xfrm4_mode_map = internal constant [5 x %struct.xfrm_mode] [%struct.xfrm_mode { i8 0, i8 2, i8 0 }, %struct.xfrm_mode { i8 1, i8 2, i8 1 }, %struct.xfrm_mode zeroinitializer, %struct.xfrm_mode zeroinitializer, %struct.xfrm_mode { i8 4, i8 2, i8 1 }], align 1
@xfrm6_mode_map = internal constant [5 x %struct.xfrm_mode] [%struct.xfrm_mode { i8 0, i8 10, i8 0 }, %struct.xfrm_mode { i8 1, i8 10, i8 1 }, %struct.xfrm_mode { i8 2, i8 10, i8 0 }, %struct.xfrm_mode zeroinitializer, %struct.xfrm_mode { i8 4, i8 10, i8 1 }], align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"xfrm-type-%d-%d\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"xfrm-offload-%d-%d\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab___xfrm_init_state, ptr @__ksymtab___xfrm_state_delete, ptr @__ksymtab___xfrm_state_destroy, ptr @__ksymtab_km_new_mapping, ptr @__ksymtab_km_policy_expired, ptr @__ksymtab_km_policy_notify, ptr @__ksymtab_km_query, ptr @__ksymtab_km_report, ptr @__ksymtab_km_state_expired, ptr @__ksymtab_km_state_notify, ptr @__ksymtab_verify_spi_info, ptr @__ksymtab_xfrm_alloc_spi, ptr @__ksymtab_xfrm_dev_state_flush, ptr @__ksymtab_xfrm_find_acq, ptr @__ksymtab_xfrm_find_acq_byseq, ptr @__ksymtab_xfrm_flush_gc, ptr @__ksymtab_xfrm_get_acqseq, ptr @__ksymtab_xfrm_init_state, ptr @__ksymtab_xfrm_register_km, ptr @__ksymtab_xfrm_register_type, ptr @__ksymtab_xfrm_register_type_offload, ptr @__ksymtab_xfrm_sad_getinfo, ptr @__ksymtab_xfrm_state_add, ptr @__ksymtab_xfrm_state_afinfo_get_rcu, ptr @__ksymtab_xfrm_state_alloc, ptr @__ksymtab_xfrm_state_check_expire, ptr @__ksymtab_xfrm_state_delete, ptr @__ksymtab_xfrm_state_delete_tunnel, ptr @__ksymtab_xfrm_state_flush, ptr @__ksymtab_xfrm_state_free, ptr @__ksymtab_xfrm_state_insert, ptr @__ksymtab_xfrm_state_lookup, ptr @__ksymtab_xfrm_state_lookup_byaddr, ptr @__ksymtab_xfrm_state_lookup_byspi, ptr @__ksymtab_xfrm_state_mtu, ptr @__ksymtab_xfrm_state_register_afinfo, ptr @__ksymtab_xfrm_state_unregister_afinfo, ptr @__ksymtab_xfrm_state_update, ptr @__ksymtab_xfrm_state_walk, ptr @__ksymtab_xfrm_state_walk_done, ptr @__ksymtab_xfrm_state_walk_init, ptr @__ksymtab_xfrm_stateonly_find, ptr @__ksymtab_xfrm_unregister_km, ptr @__ksymtab_xfrm_unregister_type, ptr @__ksymtab_xfrm_unregister_type_offload, ptr @__ksymtab_xfrm_user_policy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_register_type(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = icmp ugt i16 %1, 45
  br i1 %3, label %58, label %4, !prof !8

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %6 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %58

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.xfrm_type, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %55 [
    i8 108, label %13
    i8 51, label %19
    i8 50, label %25
    i8 4, label %31
    i8 60, label %37
    i8 43, label %43
    i8 41, label %49
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 218, i32 noundef 9, ptr noundef null) #15
  br label %18

18:                                               ; preds = %17, %13
  store ptr %0, ptr %14, align 4
  br label %56

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !11

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #15
  br label %24

24:                                               ; preds = %23, %19
  store ptr %0, ptr %20, align 4
  br label %56

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #15
  br label %30

30:                                               ; preds = %29, %25
  store ptr %0, ptr %26, align 4
  br label %56

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !11

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #15
  br label %36

36:                                               ; preds = %35, %31
  store ptr %0, ptr %32, align 4
  br label %56

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !11

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %42

42:                                               ; preds = %41, %37
  store ptr %0, ptr %38, align 4
  br label %56

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47, !prof !11

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 233, i32 noundef 9, ptr noundef null) #15
  br label %48

48:                                               ; preds = %47, %43
  store ptr %0, ptr %44, align 4
  br label %56

49:                                               ; preds = %10
  %50 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !11

53:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #15
  br label %54

54:                                               ; preds = %53, %49
  store ptr %0, ptr %50, align 4
  br label %56

55:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #15
  br label %56

56:                                               ; preds = %55, %54, %48, %42, %36, %30, %24, %18
  %57 = phi i32 [ -93, %55 ], [ 0, %54 ], [ 0, %48 ], [ 0, %42 ], [ 0, %36 ], [ 0, %30 ], [ 0, %24 ], [ 0, %18 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %58

58:                                               ; preds = %56, %9, %2
  %59 = phi i32 [ %57, %56 ], [ -97, %2 ], [ -97, %9 ]
  ret i32 %59
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_get_afinfo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 45
  br i1 %2, label %8, label %3, !prof !8

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %4 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %0
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %8

8:                                                ; preds = %7, %3, %1
  %9 = phi ptr [ null, %1 ], [ null, %7 ], [ %5, %3 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_unregister_type(ptr noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = icmp ugt i16 %1, 45
  br i1 %3, label %57, label %4, !prof !8

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %6 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %57

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.xfrm_type, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %55 [
    i8 108, label %13
    i8 51, label %19
    i8 50, label %25
    i8 4, label %31
    i8 60, label %37
    i8 43, label %43
    i8 41, label %49
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %18, label %17, !prof !11

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #15
  br label %18

18:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 4
  br label %56

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %24, label %23, !prof !11

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #15
  br label %24

24:                                               ; preds = %23, %19
  store ptr null, ptr %20, align 4
  br label %56

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #15
  br label %30

30:                                               ; preds = %29, %25
  store ptr null, ptr %26, align 4
  br label %56

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %36, label %35, !prof !11

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #15
  br label %36

36:                                               ; preds = %35, %31
  store ptr null, ptr %32, align 4
  br label %56

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %42, label %41, !prof !11

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #15
  br label %42

42:                                               ; preds = %41, %37
  store ptr null, ptr %38, align 4
  br label %56

43:                                               ; preds = %10
  %44 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %48, label %47, !prof !11

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #15
  br label %48

48:                                               ; preds = %47, %43
  store ptr null, ptr %44, align 4
  br label %56

49:                                               ; preds = %10
  %50 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %54, label %53, !prof !11

53:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 281, i32 noundef 9, ptr noundef null) #15
  br label %54

54:                                               ; preds = %53, %49
  store ptr null, ptr %50, align 4
  br label %56

55:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef null) #15
  br label %56

56:                                               ; preds = %55, %54, %48, %42, %36, %30, %24, %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %57

57:                                               ; preds = %56, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_register_type_offload(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = icmp ugt i16 %1, 45
  br i1 %3, label %23, label %4, !prof !8

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %6 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.xfrm_type_offload, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 50
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 359, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %14
  store ptr %0, ptr %15, align 4
  br label %21

20:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ 0, %19 ], [ -93, %20 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %23

23:                                               ; preds = %21, %9, %2
  %24 = phi i32 [ %22, %21 ], [ -97, %2 ], [ -97, %9 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_unregister_type_offload(ptr noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = icmp ugt i16 %1, 45
  br i1 %3, label %22, label %4, !prof !8

4:                                                ; preds = %2
  %5 = zext i16 %1 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %6 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.xfrm_type_offload, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 50
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 383, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %14
  store ptr null, ptr %15, align 4
  br label %21

20:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #15
  br label %21

21:                                               ; preds = %20, %19
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %22

22:                                               ; preds = %21, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @xfrm_state_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_alloc(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @xfrm_state_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 2848) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 5
  store volatile i32 1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 28
  store volatile i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 13
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 13, i32 0, i32 1
  store ptr %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 40
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  tail call void @hrtimer_init(ptr noundef %11, i32 noundef 7, i32 noundef 4) #15
  %12 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 40, i32 2
  store ptr @xfrm_timer_handler, ptr %12, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %13, ptr noundef nonnull @xfrm_replay_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %14 = tail call i64 @ktime_get_real_seconds() #15
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 39, i32 2
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 15
  %17 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 35
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %16, i8 -1, i64 32, i1 false)
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 36
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %19, align 4
  br label %20

20:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfrm_timer_handler(ptr noundef %0) #0 {
  %2 = alloca %struct.km_event, align 4
  %3 = alloca %struct.km_event, align 4
  %4 = getelementptr i8, ptr %0, i32 -440
  %5 = tail call i64 @ktime_get_real_seconds() #15
  %6 = getelementptr i8, ptr %0, i32 -404
  tail call void @_raw_spin_lock(ptr noundef %6) #15
  %7 = getelementptr i8, ptr %0, i32 -292
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %9 [
    i8 5, label %157
    i8 4, label %138
  ]

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -192
  %11 = load i64, ptr %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -16
  %15 = load i64, ptr %14, align 8
  %16 = sub i64 %11, %5
  %17 = add i64 %16, %15
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %0, i32 -80
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %131, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %0, i32 68
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = add i64 %5, %29
  store i64 %30, ptr %14, align 8
  %31 = trunc i64 %11 to i32
  %32 = sub i32 %31, %27
  br label %33

33:                                               ; preds = %25, %13
  %34 = phi i32 [ %32, %25 ], [ %18, %13 ]
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %33, %9
  %37 = phi i64 [ 9223372036854775807, %9 ], [ %35, %33 ]
  %38 = getelementptr i8, ptr %0, i32 -176
  %39 = load i64, ptr %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %0, i32 -8
  %43 = load i64, ptr %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = select i1 %44, i64 %5, i64 %43
  %46 = sub i64 %39, %5
  %47 = add i64 %46, %45
  %48 = trunc i64 %47 to i32
  %49 = icmp slt i32 %48, 1
  %50 = sext i32 %48 to i64
  %51 = tail call i64 @llvm.smin.i64(i64 %37, i64 %50)
  br i1 %49, label %131, label %52

52:                                               ; preds = %41, %36
  %53 = phi i64 [ %51, %41 ], [ %37, %36 ]
  %54 = getelementptr i8, ptr %0, i32 -291
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %0, i32 -200
  %59 = load i64, ptr %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %0, i32 -16
  %63 = load i64, ptr %62, align 8
  %64 = sub i64 %59, %5
  %65 = add i64 %64, %63
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = getelementptr i8, ptr %0, i32 -80
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -3
  store i32 %71, ptr %69, align 8
  br label %80

72:                                               ; preds = %61
  %73 = and i64 %65, 4294967295
  %74 = icmp sgt i64 %53, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %0, i32 -80
  %77 = load i32, ptr %76, align 8
  %78 = or i32 %77, 2
  store i32 %78, ptr %76, align 8
  %79 = getelementptr i8, ptr %0, i32 68
  store i32 %66, ptr %79, align 4
  br label %80

80:                                               ; preds = %75, %72, %68, %57
  %81 = phi i64 [ %53, %57 ], [ %53, %68 ], [ %73, %75 ], [ %53, %72 ]
  %82 = phi i1 [ true, %57 ], [ false, %68 ], [ true, %75 ], [ true, %72 ]
  %83 = phi i8 [ 0, %57 ], [ 1, %68 ], [ 0, %75 ], [ 0, %72 ]
  %84 = getelementptr i8, ptr %0, i32 -184
  %85 = load i64, ptr %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %80
  %88 = getelementptr i8, ptr %0, i32 -8
  %89 = load i64, ptr %88, align 8
  %90 = icmp eq i64 %89, 0
  %91 = select i1 %90, i64 %5, i64 %89
  %92 = sub i64 %85, %5
  %93 = add i64 %92, %91
  %94 = trunc i64 %93 to i32
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  store i8 1, ptr %54, align 1
  br label %102

97:                                               ; preds = %87
  %98 = and i64 %93, 4294967295
  %99 = tail call i64 @llvm.smin.i64(i64 %81, i64 %98)
  br label %100

100:                                              ; preds = %97, %80
  %101 = phi i64 [ %81, %80 ], [ %99, %97 ]
  store i8 %83, ptr %54, align 1
  br i1 %82, label %118, label %102

102:                                              ; preds = %100, %96
  %103 = phi i64 [ %81, %96 ], [ %101, %100 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %104 = getelementptr inbounds %struct.km_event, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  store i32 24, ptr %104, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %105 = load volatile ptr, ptr @xfrm_km_list, align 4
  %106 = icmp eq ptr %105, @xfrm_km_list
  br i1 %106, label %117, label %107

107:                                              ; preds = %114, %102
  %108 = phi ptr [ %115, %114 ], [ %105, %102 ]
  %109 = getelementptr inbounds %struct.xfrm_mgr, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = call i32 %110(ptr noundef %4, ptr noundef nonnull %3) #15
  br label %114

114:                                              ; preds = %112, %107
  %115 = load volatile ptr, ptr %108, align 4
  %116 = icmp eq ptr %115, @xfrm_km_list
  br i1 %116, label %117, label %107

117:                                              ; preds = %114, %102
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %118

118:                                              ; preds = %117, %100, %52
  %119 = phi i64 [ %53, %52 ], [ %103, %117 ], [ %101, %100 ]
  %120 = icmp eq i64 %119, 9223372036854775807
  br i1 %120, label %157, label %121

121:                                              ; preds = %118
  %122 = icmp sgt i64 %119, 9223372035
  %123 = mul i64 %119, 1000000000
  %124 = select i1 %122, i64 9223372036854775807, i64 %123, !prof !8
  %125 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %126, i32 0, i32 6
  %128 = load ptr, ptr %127, align 4
  %129 = call i64 %128() #15
  %130 = call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %129, i64 noundef %124) #15
  br label %157

131:                                              ; preds = %41, %20
  %132 = icmp eq i8 %8, 1
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = getelementptr i8, ptr %0, i32 -384
  %135 = load i32, ptr %134, align 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store i8 4, ptr %7, align 4
  br label %138

138:                                              ; preds = %137, %133, %131, %1
  %139 = tail call i32 @__xfrm_state_delete(ptr noundef %4)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  %142 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %142, i8 0, i32 16, i1 false) #15, !annotation !12
  store i32 1, ptr %2, align 4
  %143 = getelementptr inbounds %struct.km_event, ptr %2, i32 0, i32 3
  store i32 24, ptr %143, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %144 = load volatile ptr, ptr @xfrm_km_list, align 4
  %145 = icmp eq ptr %144, @xfrm_km_list
  br i1 %145, label %156, label %146

146:                                              ; preds = %153, %141
  %147 = phi ptr [ %154, %153 ], [ %144, %141 ]
  %148 = getelementptr inbounds %struct.xfrm_mgr, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  %152 = call i32 %149(ptr noundef %4, ptr noundef nonnull %2) #15
  br label %153

153:                                              ; preds = %151, %146
  %154 = load volatile ptr, ptr %147, align 4
  %155 = icmp eq ptr %154, @xfrm_km_list
  br i1 %155, label %156, label %146

156:                                              ; preds = %153, %141
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %157

157:                                              ; preds = %156, %138, %121, %118, %1
  %158 = phi i32 [ 0, %1 ], [ 1, %121 ], [ 0, %118 ], [ 0, %156 ], [ 0, %138 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %159 = load i16, ptr %6, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_replay_timer_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -372
  %3 = getelementptr i8, ptr %0, i32 -336
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr i8, ptr %0, i32 -224
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 17), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %15

11:                                               ; preds = %7
  %12 = tail call i32 @netlink_has_listeners(ptr noundef nonnull %8, i32 noundef 5) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @xfrm_replay_notify(ptr noundef %2, i32 noundef 32) #15
  br label %19

15:                                               ; preds = %11, %10
  %16 = getelementptr i8, ptr %0, i32 -12
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %15, %14, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__xfrm_state_destroy(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 5
  br i1 %5, label %7, label %6, !prof !11

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %2
  br i1 %1, label %8, label %9

8:                                                ; preds = %7
  tail call void @synchronize_rcu() #15
  tail call fastcc void @___xfrm_state_destroy(ptr noundef %0)
  br label %19

9:                                                ; preds = %7
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %11, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  store volatile ptr %10, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9
  store volatile ptr %10, ptr @xfrm_state_gc_list, align 4
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %16, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %19

19:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @___xfrm_state_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 40
  %3 = tail call i32 @hrtimer_cancel(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 37
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  tail call void @kfree(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 18
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %15 = load ptr, ptr %14, align 8
  tail call void @kfree(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %17 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %17) #15
  %18 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 30
  %19 = load ptr, ptr %18, align 8
  tail call void @kfree(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 32
  %21 = load ptr, ptr %20, align 8
  tail call void @kfree(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 49
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = load ptr, ptr %23, align 4
  tail call void @module_put(ptr noundef %26) #15
  br label %27

27:                                               ; preds = %25, %1
  %28 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.xfrm_type, ptr %29, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %0) #15
  %34 = load ptr, ptr %28, align 8
  %35 = load ptr, ptr %34, align 4
  tail call void @module_put(ptr noundef %35) #15
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 44
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %40
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %40
  %48 = ptrtoint ptr %38 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #15, !srcloc !18
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #15, !srcloc !19
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  tail call void @__put_page(ptr noundef %51) #15
  br label %57

57:                                               ; preds = %56, %49, %36
  %58 = load ptr, ptr @xfrm_state_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_state_delete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 5
  br i1 %4, label %90, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13
  store i8 5, ptr %2, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store volatile ptr %12, ptr %14, align 4
  %15 = icmp eq ptr %12, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %5
  store volatile ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  store volatile ptr %20, ptr %22, align 4
  %23 = icmp eq ptr %20, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %18
  store volatile ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 4, i32 1
  %34 = load ptr, ptr %33, align 4
  store volatile ptr %32, ptr %34, align 4
  %35 = icmp eq ptr %32, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  store volatile ptr %34, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %30
  store volatile ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3, i32 1
  %47 = load ptr, ptr %46, align 4
  store volatile ptr %45, ptr %47, align 4
  %48 = icmp eq ptr %45, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  store volatile ptr %47, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %43
  store volatile ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  %54 = add i32 %53, -1
  store i32 %54, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  %55 = load i16, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28), align 64
  %56 = add i16 %55, 1
  store i16 %56, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28), align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %57 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 25
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = load volatile ptr, ptr %57, align 4
  %62 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #15, !srcloc !18
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #15, !srcloc !22
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %70, label %68, !prof !11

68:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #15
  br label %70

69:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void @sk_free(ptr noundef %61) #15
  br label %70

70:                                               ; preds = %69, %68, %66, %52
  %71 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #15, !srcloc !18
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #15, !srcloc !22
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %90, label %77, !prof !11

77:                                               ; preds = %75
  tail call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 3) #15
  br label %90

78:                                               ; preds = %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %79 = load i8, ptr %2, align 4
  %80 = icmp eq i8 %79, 5
  br i1 %80, label %82, label %81, !prof !11

81:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %82

82:                                               ; preds = %81, %78
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %83 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %83, ptr %11, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  store volatile ptr %11, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %82
  store volatile ptr %11, ptr @xfrm_state_gc_list, align 4
  store volatile ptr @xfrm_state_gc_list, ptr %13, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %88 = load ptr, ptr @system_wq, align 4
  %89 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %88, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %90

90:                                               ; preds = %87, %77, %75, %1
  %91 = phi i32 [ -3, %1 ], [ 0, %75 ], [ 0, %77 ], [ 0, %87 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_delete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %2) #15
  %3 = tail call i32 @__xfrm_state_delete(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef %2) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_flush(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  %8 = icmp eq i8 %1, 0
  %9 = icmp eq i8 %1, -1
  %10 = load ptr, ptr %7, align 8
  br label %11

11:                                               ; preds = %93, %4
  %12 = phi ptr [ %10, %4 ], [ %94, %93 ]
  %13 = phi i32 [ 0, %4 ], [ %97, %93 ]
  %14 = phi i32 [ -3, %4 ], [ %96, %93 ]
  %15 = phi i32 [ 0, %4 ], [ %95, %93 ]
  %16 = getelementptr %struct.hlist_head, ptr %12, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %93, label %19

19:                                               ; preds = %83, %11
  %20 = phi ptr [ %86, %83 ], [ %12, %11 ]
  %21 = phi ptr [ %88, %83 ], [ %17, %11 ]
  %22 = phi i32 [ %49, %83 ], [ %14, %11 ]
  %23 = phi i32 [ %85, %83 ], [ %15, %11 ]
  br label %24

24:                                               ; preds = %90, %19
  %25 = phi ptr [ %21, %19 ], [ %91, %90 ]
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 28
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 7, i32 2
  %31 = load i8, ptr %30, align 4
  %32 = icmp eq i8 %31, %1
  %33 = or i1 %8, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  br i1 %9, label %35, label %90

35:                                               ; preds = %34
  switch i8 %31, label %90 [
    i8 108, label %36
    i8 51, label %36
    i8 50, label %36
  ]

36:                                               ; preds = %35, %35, %35, %29
  %37 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15, !srcloc !18
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15, !srcloc !24
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !8

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %47, label %45, !prof !11

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #15
  br label %47

47:                                               ; preds = %45, %41
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  %48 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %48) #15
  %49 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %25) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %48) #15
  %50 = icmp eq i32 %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 1
  br i1 %3, label %54, label %64

54:                                               ; preds = %47
  br i1 %53, label %58, label %55

55:                                               ; preds = %54
  %56 = icmp sgt i32 %52, 0
  br i1 %56, label %83, label %57, !prof !11

57:                                               ; preds = %55
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #15
  br label %83

58:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %59 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 13, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = icmp eq i8 %60, 5
  br i1 %61, label %63, label %62, !prof !11

62:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %63

63:                                               ; preds = %62, %58
  tail call void @synchronize_rcu() #15
  tail call fastcc void @___xfrm_state_destroy(ptr noundef nonnull %25) #15
  br label %83

64:                                               ; preds = %47
  br i1 %53, label %68, label %65

65:                                               ; preds = %64
  %66 = icmp sgt i32 %52, 0
  br i1 %66, label %83, label %67, !prof !11

67:                                               ; preds = %65
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #15
  br label %83

68:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %69 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 13, i32 1
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 5
  br i1 %71, label %73, label %72, !prof !11

72:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %73

73:                                               ; preds = %72, %68
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %74 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 1
  %75 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %75, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  store volatile ptr %74, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  store volatile ptr %74, ptr @xfrm_state_gc_list, align 4
  %80 = getelementptr inbounds %struct.xfrm_state, ptr %25, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %80, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %81 = load ptr, ptr @system_wq, align 4
  %82 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %81, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %83

83:                                               ; preds = %79, %67, %65, %63, %57, %55
  %84 = zext i1 %50 to i32
  %85 = add i32 %23, %84
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #15
  %86 = load ptr, ptr %7, align 8
  %87 = getelementptr %struct.hlist_head, ptr %86, i32 %13
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %19

90:                                               ; preds = %35, %34, %24
  %91 = load ptr, ptr %25, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %24

93:                                               ; preds = %90, %83, %11
  %94 = phi ptr [ %12, %11 ], [ %20, %90 ], [ %86, %83 ]
  %95 = phi i32 [ %15, %11 ], [ %23, %90 ], [ %85, %83 ]
  %96 = phi i32 [ %14, %11 ], [ %22, %90 ], [ %49, %83 ]
  %97 = add i32 %13, 1
  %98 = load i32, ptr %6, align 8
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %11

100:                                              ; preds = %93
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  %101 = icmp eq i32 %95, 0
  %102 = select i1 %101, i32 %96, i32 0
  ret i32 %102
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @xfrm_state_hold(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !24
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #15
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_dev_state_flush(ptr noundef %0, ptr noundef readnone %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %76, %3
  %9 = phi ptr [ %7, %3 ], [ %77, %76 ]
  %10 = phi i32 [ 0, %3 ], [ %80, %76 ]
  %11 = phi i32 [ -3, %3 ], [ %79, %76 ]
  %12 = phi i32 [ 0, %3 ], [ %78, %76 ]
  %13 = getelementptr %struct.hlist_head, ptr %9, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %76, label %16

16:                                               ; preds = %66, %8
  %17 = phi ptr [ %69, %66 ], [ %9, %8 ]
  %18 = phi ptr [ %71, %66 ], [ %14, %8 ]
  %19 = phi i32 [ %43, %66 ], [ %11, %8 ]
  %20 = phi i32 [ %68, %66 ], [ %12, %8 ]
  br label %21

21:                                               ; preds = %73, %16
  %22 = phi ptr [ %18, %16 ], [ %74, %73 ]
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 28
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 41
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !18
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #15, !srcloc !24
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !8

35:                                               ; preds = %30
  %36 = add i32 %33, 1
  %37 = or i32 %36, %33
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %41, label %39, !prof !11

39:                                               ; preds = %35, %30
  %40 = phi i32 [ 2, %30 ], [ 1, %35 ]
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef %40) #15
  br label %41

41:                                               ; preds = %39, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #15
  %42 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %42) #15
  %43 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %22) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %42) #15
  %44 = icmp eq i32 %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !18
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #15, !srcloc !22
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %66, label %50, !prof !11

50:                                               ; preds = %48
  tail call void @refcount_warn_saturate(ptr noundef %31, i32 noundef 3) #15
  br label %66

51:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %52 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 13, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 5
  br i1 %54, label %56, label %55, !prof !11

55:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %56

56:                                               ; preds = %55, %51
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %57 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1
  %58 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %58, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  store volatile ptr %57, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %56
  store volatile ptr %57, ptr @xfrm_state_gc_list, align 4
  %63 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %63, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %64 = load ptr, ptr @system_wq, align 4
  %65 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %64, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %66

66:                                               ; preds = %62, %50, %48
  %67 = zext i1 %44 to i32
  %68 = add i32 %20, %67
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #15
  %69 = load ptr, ptr %6, align 8
  %70 = getelementptr %struct.hlist_head, ptr %69, i32 %10
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %16

73:                                               ; preds = %26, %21
  %74 = load ptr, ptr %22, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %21

76:                                               ; preds = %73, %66, %8
  %77 = phi ptr [ %9, %8 ], [ %17, %73 ], [ %69, %66 ]
  %78 = phi i32 [ %12, %8 ], [ %20, %73 ], [ %68, %66 ]
  %79 = phi i32 [ %11, %8 ], [ %19, %73 ], [ %43, %66 ]
  %80 = add i32 %10, 1
  %81 = load i32, ptr %5, align 8
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %8

83:                                               ; preds = %76
  %84 = icmp eq i32 %78, 0
  %85 = select i1 %84, i32 %79, i32 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #15
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_sad_getinfo(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xfrmk_sadinfo, ptr %1, i32 0, i32 2
  store i32 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.xfrmk_sadinfo, ptr %1, i32 0, i32 1
  store i32 1048576, ptr %10, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5, i16 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.km_event, align 4
  %10 = getelementptr inbounds %struct.xfrm_policy, ptr %4, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, ptr %4, i32 0, i32 11, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  %15 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 2
  %16 = load i16, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false), !annotation !12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 29), align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %20, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !26
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 29), align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20, %8
  %25 = phi i32 [ %17, %8 ], [ %21, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %26 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %29 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %0, ptr noundef %1, i32 noundef %27, i16 noundef zeroext %16, i32 noundef %28) #15
  %30 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 1), align 8
  %31 = getelementptr %struct.hlist_head, ptr %30, i32 %29
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %203, label %34

34:                                               ; preds = %24
  %35 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %36 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %37 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %38 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %39 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %40 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %41 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 4
  %42 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 2
  %43 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 1
  br label %44

44:                                               ; preds = %197, %34
  %45 = phi ptr [ %32, %34 ], [ %201, %197 ]
  %46 = phi ptr [ null, %34 ], [ %200, %197 ]
  %47 = phi i32 [ 0, %34 ], [ %199, %197 ]
  %48 = phi i32 [ 0, %34 ], [ %198, %197 ]
  %49 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 7
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, %16
  br i1 %51, label %52, label %197

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14
  %54 = load i32, ptr %53, align 8
  %55 = load i32, ptr %26, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %197

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 9
  %59 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 9, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %14
  %62 = load i32, ptr %58, align 8
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %197

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 10
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, %7
  br i1 %67, label %68, label %197

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 6
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %197

73:                                               ; preds = %68
  switch i16 %16, label %197 [
    i16 2, label %74
    i16 10, label %88
  ]

74:                                               ; preds = %73
  %75 = load i32, ptr %0, align 4
  %76 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 7
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %197

79:                                               ; preds = %74
  %80 = load i32, ptr %1, align 4
  %81 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %80, %82
  %84 = icmp eq i32 %80, 0
  %85 = or i1 %84, %83
  %86 = icmp eq i32 %82, 0
  %87 = or i1 %86, %85
  br i1 %87, label %140, label %197

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 7
  %90 = load i32, ptr %0, align 4
  %91 = load i32, ptr %89, align 4
  %92 = xor i32 %91, %90
  %93 = load i32, ptr %35, align 4
  %94 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 7, i32 0, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = xor i32 %95, %93
  %97 = or i32 %96, %92
  %98 = load i32, ptr %36, align 4
  %99 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 7, i32 0, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = xor i32 %100, %98
  %102 = or i32 %97, %101
  %103 = load i32, ptr %37, align 4
  %104 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 7, i32 0, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = xor i32 %105, %103
  %107 = or i32 %102, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %197

109:                                              ; preds = %88
  %110 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 8
  %111 = load i32, ptr %1, align 4
  %112 = load i32, ptr %110, align 4
  %113 = xor i32 %112, %111
  %114 = load i32, ptr %38, align 4
  %115 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 8, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = xor i32 %116, %114
  %118 = or i32 %117, %113
  %119 = load i32, ptr %39, align 4
  %120 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 8, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %121, %119
  %123 = or i32 %118, %122
  %124 = load i32, ptr %40, align 4
  %125 = getelementptr %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 8, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = xor i32 %126, %124
  %128 = or i32 %123, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %109
  %131 = or i32 %114, %111
  %132 = or i32 %131, %119
  %133 = or i32 %132, %124
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = or i32 %116, %112
  %137 = or i32 %136, %121
  %138 = or i32 %137, %126
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %197

140:                                              ; preds = %135, %130, %109, %79
  %141 = load i8, ptr %41, align 4
  %142 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 14, i32 1
  %143 = load i8, ptr %142, align 4
  %144 = icmp eq i8 %141, %143
  br i1 %144, label %145, label %197

145:                                              ; preds = %140
  %146 = load i8, ptr %42, align 4
  %147 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 7, i32 2
  %148 = load i8, ptr %147, align 4
  %149 = icmp eq i8 %146, %148
  br i1 %149, label %150, label %197

150:                                              ; preds = %145
  %151 = load i32, ptr %43, align 4
  %152 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 7, i32 1
  %153 = load i32, ptr %152, align 8
  %154 = icmp eq i32 %151, %153
  %155 = icmp eq i32 %151, 0
  %156 = or i1 %155, %154
  br i1 %156, label %157, label %197

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 13, i32 1
  %159 = load i8, ptr %158, align 4
  switch i8 %159, label %197 [
    i8 2, label %160
    i8 1, label %186
    i8 3, label %187
    i8 4, label %187
  ]

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 8
  %162 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 8, i32 6
  %163 = load i16, ptr %162, align 8
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %160
  %166 = icmp eq i16 %163, %6
  br i1 %166, label %167, label %197

167:                                              ; preds = %165
  %168 = tail call zeroext i1 @xfrm_selector_match(ptr noundef %161, ptr noundef %2, i16 noundef zeroext %6) #15
  br i1 %168, label %169, label %197

169:                                              ; preds = %167, %160
  %170 = icmp eq ptr %46, null
  br i1 %170, label %185, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 13, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 13, i32 2
  %175 = load i8, ptr %174, align 1
  %176 = icmp ugt i8 %173, %175
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = icmp eq i8 %173, %175
  br i1 %178, label %179, label %197

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 39, i32 2
  %181 = load i64, ptr %180, align 8
  %182 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 39, i32 2
  %183 = load i64, ptr %182, align 8
  %184 = icmp ult i64 %181, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %179, %171, %169
  br label %197

186:                                              ; preds = %157
  br label %197

187:                                              ; preds = %157, %157
  %188 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 8
  %189 = getelementptr inbounds %struct.xfrm_state, ptr %45, i32 0, i32 8, i32 6
  %190 = load i16, ptr %189, align 8
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = icmp eq i16 %190, %6
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = tail call zeroext i1 @xfrm_selector_match(ptr noundef %188, ptr noundef %2, i16 noundef zeroext %6) #15
  br i1 %195, label %196, label %197

196:                                              ; preds = %194, %187
  br label %197

197:                                              ; preds = %196, %194, %192, %186, %185, %179, %177, %167, %165, %157, %150, %145, %140, %135, %88, %79, %74, %73, %68, %64, %57, %52, %44
  %198 = phi i32 [ %48, %150 ], [ %48, %145 ], [ %48, %140 ], [ %48, %68 ], [ %48, %64 ], [ %48, %57 ], [ %48, %52 ], [ %48, %44 ], [ %48, %73 ], [ %48, %157 ], [ %48, %196 ], [ %48, %194 ], [ %48, %192 ], [ 1, %186 ], [ %48, %185 ], [ %48, %179 ], [ %48, %177 ], [ %48, %167 ], [ %48, %165 ], [ %48, %79 ], [ %48, %74 ], [ %48, %135 ], [ %48, %88 ]
  %199 = phi i32 [ %47, %150 ], [ %47, %145 ], [ %47, %140 ], [ %47, %68 ], [ %47, %64 ], [ %47, %57 ], [ %47, %52 ], [ %47, %44 ], [ %47, %73 ], [ %47, %157 ], [ -3, %196 ], [ %47, %194 ], [ %47, %192 ], [ %47, %186 ], [ %47, %185 ], [ %47, %179 ], [ %47, %177 ], [ %47, %167 ], [ %47, %165 ], [ %47, %79 ], [ %47, %74 ], [ %47, %135 ], [ %47, %88 ]
  %200 = phi ptr [ %46, %150 ], [ %46, %145 ], [ %46, %140 ], [ %46, %68 ], [ %46, %64 ], [ %46, %57 ], [ %46, %52 ], [ %46, %44 ], [ %46, %73 ], [ %46, %157 ], [ %46, %196 ], [ %46, %194 ], [ %46, %192 ], [ %46, %186 ], [ %45, %185 ], [ %46, %179 ], [ %46, %177 ], [ %46, %167 ], [ %46, %165 ], [ %46, %79 ], [ %46, %74 ], [ %46, %135 ], [ %46, %88 ]
  %201 = load volatile ptr, ptr %45, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %44

203:                                              ; preds = %197, %24
  %204 = phi i32 [ 0, %24 ], [ %198, %197 ]
  %205 = phi i32 [ 0, %24 ], [ %199, %197 ]
  %206 = phi ptr [ null, %24 ], [ %200, %197 ]
  %207 = icmp ne ptr %206, null
  %208 = icmp ne i32 %204, 0
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %342, label %210

210:                                              ; preds = %203
  %211 = load i32, ptr %26, align 4
  %212 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %213 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %0, ptr noundef nonnull @xfrm_state_find.saddr_wildcard, i32 noundef %211, i16 noundef zeroext %16, i32 noundef %212) #15
  %214 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 1), align 8
  %215 = getelementptr %struct.hlist_head, ptr %214, i32 %213
  %216 = load volatile ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %342, label %218

218:                                              ; preds = %210
  %219 = icmp eq i16 %16, 10
  %220 = getelementptr [4 x i32], ptr %0, i32 0, i32 1
  %221 = getelementptr [4 x i32], ptr %0, i32 0, i32 2
  %222 = getelementptr [4 x i32], ptr %0, i32 0, i32 3
  %223 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 4
  %224 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 2
  %225 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 1
  br label %226

226:                                              ; preds = %336, %218
  %227 = phi ptr [ %216, %218 ], [ %340, %336 ]
  %228 = phi ptr [ null, %218 ], [ %339, %336 ]
  %229 = phi i32 [ %205, %218 ], [ %338, %336 ]
  %230 = phi i32 [ 0, %218 ], [ %337, %336 ]
  %231 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 14, i32 7
  %232 = load i16, ptr %231, align 2
  %233 = icmp eq i16 %232, %16
  br i1 %233, label %234, label %336

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 14
  %236 = load i32, ptr %235, align 8
  %237 = load i32, ptr %26, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %336

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 9
  %241 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 9, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, %14
  %244 = load i32, ptr %240, align 8
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %336

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 10
  %248 = load i32, ptr %247, align 8
  %249 = icmp eq i32 %248, %7
  br i1 %249, label %250, label %336

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 14, i32 6
  %252 = load i8, ptr %251, align 1
  %253 = and i8 %252, 8
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %336

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 7
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %0, align 4
  br i1 %219, label %259, label %277

259:                                              ; preds = %255
  %260 = xor i32 %258, %257
  %261 = getelementptr %struct.xfrm_state, ptr %227, i32 0, i32 7, i32 0, i32 0, i32 1
  %262 = load i32, ptr %261, align 4
  %263 = load i32, ptr %220, align 4
  %264 = xor i32 %263, %262
  %265 = or i32 %264, %260
  %266 = getelementptr %struct.xfrm_state, ptr %227, i32 0, i32 7, i32 0, i32 0, i32 2
  %267 = load i32, ptr %266, align 4
  %268 = load i32, ptr %221, align 4
  %269 = xor i32 %268, %267
  %270 = or i32 %265, %269
  %271 = getelementptr %struct.xfrm_state, ptr %227, i32 0, i32 7, i32 0, i32 0, i32 3
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr %222, align 4
  %274 = xor i32 %273, %272
  %275 = or i32 %270, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %336

277:                                              ; preds = %255
  %278 = icmp eq i32 %257, %258
  br i1 %278, label %279, label %336

279:                                              ; preds = %277, %259
  %280 = load i8, ptr %223, align 4
  %281 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 14, i32 1
  %282 = load i8, ptr %281, align 4
  %283 = icmp eq i8 %280, %282
  br i1 %283, label %284, label %336

284:                                              ; preds = %279
  %285 = load i8, ptr %224, align 4
  %286 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 7, i32 2
  %287 = load i8, ptr %286, align 4
  %288 = icmp eq i8 %285, %287
  br i1 %288, label %289, label %336

289:                                              ; preds = %284
  %290 = load i32, ptr %225, align 4
  %291 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 7, i32 1
  %292 = load i32, ptr %291, align 8
  %293 = icmp eq i32 %290, %292
  %294 = icmp eq i32 %290, 0
  %295 = or i1 %294, %293
  br i1 %295, label %296, label %336

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 13, i32 1
  %298 = load i8, ptr %297, align 4
  switch i8 %298, label %336 [
    i8 2, label %299
    i8 1, label %325
    i8 3, label %326
    i8 4, label %326
  ]

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 8
  %301 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 8, i32 6
  %302 = load i16, ptr %301, align 8
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %299
  %305 = icmp eq i16 %302, %6
  br i1 %305, label %306, label %336

306:                                              ; preds = %304
  %307 = tail call zeroext i1 @xfrm_selector_match(ptr noundef %300, ptr noundef %2, i16 noundef zeroext %6) #15
  br i1 %307, label %308, label %336

308:                                              ; preds = %306, %299
  %309 = icmp eq ptr %228, null
  br i1 %309, label %324, label %310

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.xfrm_state, ptr %228, i32 0, i32 13, i32 2
  %312 = load i8, ptr %311, align 1
  %313 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 13, i32 2
  %314 = load i8, ptr %313, align 1
  %315 = icmp ugt i8 %312, %314
  br i1 %315, label %324, label %316

316:                                              ; preds = %310
  %317 = icmp eq i8 %312, %314
  br i1 %317, label %318, label %336

318:                                              ; preds = %316
  %319 = getelementptr inbounds %struct.xfrm_state, ptr %228, i32 0, i32 39, i32 2
  %320 = load i64, ptr %319, align 8
  %321 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 39, i32 2
  %322 = load i64, ptr %321, align 8
  %323 = icmp ult i64 %320, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %318, %310, %308
  br label %336

325:                                              ; preds = %296
  br label %336

326:                                              ; preds = %296, %296
  %327 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 8
  %328 = getelementptr inbounds %struct.xfrm_state, ptr %227, i32 0, i32 8, i32 6
  %329 = load i16, ptr %328, align 8
  %330 = icmp eq i16 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %326
  %332 = icmp eq i16 %329, %6
  br i1 %332, label %333, label %336

333:                                              ; preds = %331
  %334 = tail call zeroext i1 @xfrm_selector_match(ptr noundef %327, ptr noundef %2, i16 noundef zeroext %6) #15
  br i1 %334, label %335, label %336

335:                                              ; preds = %333, %326
  br label %336

336:                                              ; preds = %335, %333, %331, %325, %324, %318, %316, %306, %304, %296, %289, %284, %279, %277, %259, %250, %246, %239, %234, %226
  %337 = phi i32 [ %230, %289 ], [ %230, %284 ], [ %230, %279 ], [ %230, %277 ], [ %230, %250 ], [ %230, %246 ], [ %230, %239 ], [ %230, %234 ], [ %230, %226 ], [ %230, %259 ], [ %230, %296 ], [ %230, %335 ], [ %230, %333 ], [ %230, %331 ], [ 1, %325 ], [ %230, %324 ], [ %230, %318 ], [ %230, %316 ], [ %230, %306 ], [ %230, %304 ]
  %338 = phi i32 [ %229, %289 ], [ %229, %284 ], [ %229, %279 ], [ %229, %277 ], [ %229, %250 ], [ %229, %246 ], [ %229, %239 ], [ %229, %234 ], [ %229, %226 ], [ %229, %259 ], [ %229, %296 ], [ -3, %335 ], [ %229, %333 ], [ %229, %331 ], [ %229, %325 ], [ %229, %324 ], [ %229, %318 ], [ %229, %316 ], [ %229, %306 ], [ %229, %304 ]
  %339 = phi ptr [ %228, %289 ], [ %228, %284 ], [ %228, %279 ], [ %228, %277 ], [ %228, %250 ], [ %228, %246 ], [ %228, %239 ], [ %228, %234 ], [ %228, %226 ], [ %228, %259 ], [ %228, %296 ], [ %228, %335 ], [ %228, %333 ], [ %228, %331 ], [ %228, %325 ], [ %227, %324 ], [ %228, %318 ], [ %228, %316 ], [ %228, %306 ], [ %228, %304 ]
  %340 = load volatile ptr, ptr %227, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %226

342:                                              ; preds = %336, %210, %203
  %343 = phi i32 [ %204, %203 ], [ 0, %210 ], [ %337, %336 ]
  %344 = phi i32 [ %205, %203 ], [ %205, %210 ], [ %338, %336 ]
  %345 = phi ptr [ %206, %203 ], [ null, %210 ], [ %339, %336 ]
  %346 = icmp ne ptr %345, null
  %347 = icmp ne i32 %344, 0
  %348 = select i1 %346, i1 true, i1 %347
  %349 = icmp ne i32 %343, 0
  %350 = select i1 %348, i1 true, i1 %349
  br i1 %350, label %712, label %351

351:                                              ; preds = %342
  %352 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 1
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %360, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.xfrm_id, ptr %3, i32 0, i32 2
  %357 = load i8, ptr %356, align 4
  %358 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %14, ptr noundef %0, i32 noundef %353, i8 noundef zeroext %357, i16 noundef zeroext %16)
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %743

360:                                              ; preds = %355, %351
  %361 = getelementptr inbounds %struct.km_event, ptr %9, i32 0, i32 4
  store ptr @init_net, ptr %361, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %362 = load volatile ptr, ptr @xfrm_km_list, align 4
  %363 = icmp eq ptr %362, @xfrm_km_list
  br i1 %363, label %374, label %364

364:                                              ; preds = %371, %360
  %365 = phi ptr [ %372, %371 ], [ %362, %360 ]
  %366 = getelementptr inbounds %struct.xfrm_mgr, ptr %365, i32 0, i32 8
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  br i1 %368, label %371, label %369

369:                                              ; preds = %364
  %370 = call zeroext i1 %367(ptr noundef nonnull %9) #15
  br i1 %370, label %375, label %371

371:                                              ; preds = %369, %364
  %372 = load volatile ptr, ptr %365, align 4
  %373 = icmp eq ptr %372, @xfrm_km_list
  br i1 %373, label %374, label %364

374:                                              ; preds = %371, %360
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %743

375:                                              ; preds = %369
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %376 = load ptr, ptr @xfrm_state_cache, align 4
  %377 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %376, i32 noundef 2848) #15
  %378 = icmp eq ptr %377, null
  br i1 %378, label %743, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 5
  store volatile i32 1, ptr %380, align 8
  %381 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 28
  store volatile i32 0, ptr %381, align 8
  %382 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 13
  store volatile ptr %382, ptr %382, align 4
  %383 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 13, i32 0, i32 1
  store ptr %382, ptr %383, align 8
  %384 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 1
  %385 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 40
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %384, i8 0, i64 32, i1 false) #15
  call void @hrtimer_init(ptr noundef %385, i32 noundef 7, i32 noundef 4) #15
  %386 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 40, i32 2
  store ptr @xfrm_timer_handler, ptr %386, align 8
  %387 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 37
  call void @init_timer_key(ptr noundef %387, ptr noundef nonnull @xfrm_replay_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %388 = call i64 @ktime_get_real_seconds() #15
  %389 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 39, i32 2
  store i64 %388, ptr %389, align 8
  %390 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 15
  %391 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 35
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %390, i8 -1, i64 32, i1 false) #15
  store i32 0, ptr %391, align 4
  %392 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 36
  store i32 0, ptr %392, align 8
  %393 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 6
  store i32 0, ptr %393, align 4
  switch i16 %6, label %496 [
    i16 2, label %394
    i16 10, label %440
  ]

394:                                              ; preds = %379
  %395 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8
  %396 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  %397 = load i32, ptr %396, align 4
  store i32 %397, ptr %395, align 8
  %398 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  %399 = load i32, ptr %398, align 8
  %400 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 1
  store i32 %399, ptr %400, align 8
  %401 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 3
  %402 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  %403 = load i8, ptr %402, align 2
  switch i8 %403, label %417 [
    i8 6, label %404
    i8 17, label %404
    i8 -120, label %404
    i8 -124, label %404
    i8 1, label %406
    i8 58, label %406
    i8 47, label %411
  ]

404:                                              ; preds = %394, %394, %394, %394
  %405 = load i16, ptr %401, align 4
  br label %417

406:                                              ; preds = %394, %394
  %407 = getelementptr inbounds %struct.anon.91, ptr %401, i32 0, i32 1
  %408 = load i8, ptr %407, align 1
  %409 = zext i8 %408 to i16
  %410 = shl nuw i16 %409, 8
  br label %417

411:                                              ; preds = %394
  %412 = load i32, ptr %401, align 4
  %413 = lshr i32 %412, 16
  %414 = trunc i32 %413 to i16
  %415 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 2
  store i16 %414, ptr %415, align 8
  %416 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 3
  store i16 -1, ptr %416, align 2
  br label %434

417:                                              ; preds = %406, %404, %394
  %418 = phi i16 [ %410, %406 ], [ %405, %404 ], [ 0, %394 ]
  %419 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 2
  store i16 %418, ptr %419, align 8
  %420 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 3
  store i16 -1, ptr %420, align 2
  switch i8 %403, label %484 [
    i8 6, label %423
    i8 17, label %423
    i8 -120, label %423
    i8 -124, label %423
    i8 1, label %426
    i8 58, label %426
    i8 -121, label %430
    i8 47, label %421
  ]

421:                                              ; preds = %417
  %422 = load i32, ptr %401, align 4
  br label %434

423:                                              ; preds = %417, %417, %417, %417
  %424 = getelementptr inbounds %struct.anon.90, ptr %401, i32 0, i32 1
  %425 = load i16, ptr %424, align 2
  br label %484

426:                                              ; preds = %417, %417
  %427 = load i8, ptr %401, align 4
  %428 = zext i8 %427 to i16
  %429 = shl nuw i16 %428, 8
  br label %484

430:                                              ; preds = %417
  %431 = load i8, ptr %401, align 4
  %432 = zext i8 %431 to i16
  %433 = shl nuw i16 %432, 8
  br label %484

434:                                              ; preds = %421, %411
  %435 = phi i32 [ %422, %421 ], [ %412, %411 ]
  %436 = call i32 @llvm.bswap.i32(i32 %435) #15
  %437 = lshr i32 %436, 16
  %438 = trunc i32 %437 to i16
  %439 = call i16 @llvm.bswap.i16(i16 %438) #15
  br label %484

440:                                              ; preds = %379
  %441 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8
  %442 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %441, ptr noundef align 8 dereferenceable(16) %442, i32 16, i1 false) #15
  %443 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 1
  %444 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %443, ptr noundef align 8 dereferenceable(16) %444, i32 16, i1 false) #15
  %445 = getelementptr inbounds %struct.flowi6, ptr %2, i32 0, i32 4
  %446 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  %447 = load i8, ptr %446, align 2
  switch i8 %447, label %461 [
    i8 6, label %448
    i8 17, label %448
    i8 -120, label %448
    i8 -124, label %448
    i8 1, label %450
    i8 58, label %450
    i8 47, label %455
  ]

448:                                              ; preds = %440, %440, %440, %440
  %449 = load i16, ptr %445, align 4
  br label %461

450:                                              ; preds = %440, %440
  %451 = getelementptr inbounds %struct.anon.91, ptr %445, i32 0, i32 1
  %452 = load i8, ptr %451, align 1
  %453 = zext i8 %452 to i16
  %454 = shl nuw i16 %453, 8
  br label %461

455:                                              ; preds = %440
  %456 = load i32, ptr %445, align 4
  %457 = lshr i32 %456, 16
  %458 = trunc i32 %457 to i16
  %459 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 2
  store i16 %458, ptr %459, align 8
  %460 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 3
  store i16 -1, ptr %460, align 2
  br label %478

461:                                              ; preds = %450, %448, %440
  %462 = phi i16 [ %454, %450 ], [ %449, %448 ], [ 0, %440 ]
  %463 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 2
  store i16 %462, ptr %463, align 8
  %464 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 3
  store i16 -1, ptr %464, align 2
  switch i8 %447, label %484 [
    i8 6, label %467
    i8 17, label %467
    i8 -120, label %467
    i8 -124, label %467
    i8 1, label %470
    i8 58, label %470
    i8 -121, label %474
    i8 47, label %465
  ]

465:                                              ; preds = %461
  %466 = load i32, ptr %445, align 4
  br label %478

467:                                              ; preds = %461, %461, %461, %461
  %468 = getelementptr inbounds %struct.anon.90, ptr %445, i32 0, i32 1
  %469 = load i16, ptr %468, align 2
  br label %484

470:                                              ; preds = %461, %461
  %471 = load i8, ptr %445, align 4
  %472 = zext i8 %471 to i16
  %473 = shl nuw i16 %472, 8
  br label %484

474:                                              ; preds = %461
  %475 = load i8, ptr %445, align 4
  %476 = zext i8 %475 to i16
  %477 = shl nuw i16 %476, 8
  br label %484

478:                                              ; preds = %465, %455
  %479 = phi i32 [ %466, %465 ], [ %456, %455 ]
  %480 = call i32 @llvm.bswap.i32(i32 %479) #15
  %481 = lshr i32 %480, 16
  %482 = trunc i32 %481 to i16
  %483 = call i16 @llvm.bswap.i16(i16 %482) #15
  br label %484

484:                                              ; preds = %478, %474, %470, %467, %461, %434, %430, %426, %423, %417
  %485 = phi i8 [ 47, %434 ], [ -121, %430 ], [ %403, %426 ], [ %403, %423 ], [ %403, %417 ], [ 47, %478 ], [ -121, %474 ], [ %447, %470 ], [ %447, %467 ], [ %447, %461 ]
  %486 = phi i16 [ %439, %434 ], [ %433, %430 ], [ %429, %426 ], [ %425, %423 ], [ 0, %417 ], [ %483, %478 ], [ %477, %474 ], [ %473, %470 ], [ %469, %467 ], [ 0, %461 ]
  %487 = phi i8 [ 32, %434 ], [ 32, %430 ], [ 32, %426 ], [ 32, %423 ], [ 32, %417 ], [ -128, %478 ], [ -128, %474 ], [ -128, %470 ], [ -128, %467 ], [ -128, %461 ]
  %488 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 4
  store i16 %486, ptr %488, align 4
  %489 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 5
  store i16 -1, ptr %489, align 2
  %490 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 6
  store i16 %6, ptr %490, align 8
  %491 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 7
  store i8 %487, ptr %491, align 2
  %492 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 8
  store i8 %487, ptr %492, align 1
  %493 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 9
  store i8 %485, ptr %493, align 4
  %494 = load i32, ptr %2, align 8
  %495 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 8, i32 10
  store i32 %494, ptr %495, align 8
  br label %496

496:                                              ; preds = %484, %379
  %497 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %497, ptr noundef align 4 dereferenceable(24) %3, i32 24, i1 false) #15
  %498 = load i16, ptr %15, align 4
  switch i16 %498, label %539 [
    i16 2, label %499
    i16 10, label %511
  ]

499:                                              ; preds = %496
  %500 = load i32, ptr %497, align 8
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %499
  %503 = load i32, ptr %0, align 4
  store i32 %503, ptr %497, align 8
  br label %504

504:                                              ; preds = %502, %499
  %505 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 8
  %506 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %505, ptr noundef align 4 dereferenceable(16) %506, i32 16, i1 false) #15
  %507 = load i32, ptr %505, align 4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %539

509:                                              ; preds = %504
  %510 = load i32, ptr %1, align 4
  store i32 %510, ptr %505, align 4
  br label %539

511:                                              ; preds = %496
  %512 = load i32, ptr %497, align 8
  %513 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 1
  %514 = load i32, ptr %513, align 4
  %515 = or i32 %514, %512
  %516 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 2
  %517 = load i32, ptr %516, align 8
  %518 = or i32 %515, %517
  %519 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 3
  %520 = load i32, ptr %519, align 4
  %521 = or i32 %518, %520
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %511
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %497, ptr noundef align 4 dereferenceable(16) %0, i32 16, i1 false) #15
  br label %524

524:                                              ; preds = %523, %511
  %525 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 8
  %526 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %525, ptr noundef align 4 dereferenceable(16) %526, i32 16, i1 false) #15
  %527 = load i32, ptr %525, align 4
  %528 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 8, i32 0, i32 1
  %529 = load i32, ptr %528, align 8
  %530 = or i32 %529, %527
  %531 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 8, i32 0, i32 2
  %532 = load i32, ptr %531, align 4
  %533 = or i32 %530, %532
  %534 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 8, i32 0, i32 3
  %535 = load i32, ptr %534, align 8
  %536 = or i32 %533, %535
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %524
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %525, ptr noundef align 4 dereferenceable(16) %1, i32 16, i1 false) #15
  br label %539

539:                                              ; preds = %538, %524, %509, %504, %496
  %540 = getelementptr inbounds %struct.xfrm_tmpl, ptr %3, i32 0, i32 4
  %541 = load i8, ptr %540, align 4
  %542 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 14
  %543 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 1
  store i8 %541, ptr %543, align 4
  %544 = load i32, ptr %26, align 4
  store i32 %544, ptr %542, align 8
  %545 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 14, i32 7
  store i16 %498, ptr %545, align 2
  %546 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 9
  %547 = load i64, ptr %10, align 8
  store i64 %547, ptr %546, align 8
  %548 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 10
  store i32 %7, ptr %548, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %549 = load volatile ptr, ptr @xfrm_km_list, align 4
  %550 = icmp eq ptr %549, @xfrm_km_list
  br i1 %550, label %551, label %552

551:                                              ; preds = %539
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %710

552:                                              ; preds = %552, %539
  %553 = phi ptr [ %560, %552 ], [ %549, %539 ]
  %554 = phi i32 [ %559, %552 ], [ -22, %539 ]
  %555 = getelementptr inbounds %struct.xfrm_mgr, ptr %553, i32 0, i32 2
  %556 = load ptr, ptr %555, align 4
  %557 = call i32 %556(ptr noundef %377, ptr noundef %3, ptr noundef %4) #15
  %558 = icmp eq i32 %557, 0
  %559 = select i1 %558, i32 0, i32 %554
  %560 = load volatile ptr, ptr %553, align 4
  %561 = icmp eq ptr %560, @xfrm_km_list
  br i1 %561, label %562, label %552

562:                                              ; preds = %552
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %563 = icmp eq i32 %559, 0
  br i1 %563, label %564, label %710

564:                                              ; preds = %562
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %565 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 13, i32 1
  store i8 1, ptr %565, align 4
  %566 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), align 64
  %567 = getelementptr inbounds %struct.list_head, ptr %566, i32 0, i32 1
  store ptr %382, ptr %567, align 4
  store ptr %566, ptr %382, align 4
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), ptr %383, align 8
  store volatile ptr %382, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), align 64
  %568 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 1), align 8
  %569 = getelementptr %struct.hlist_head, ptr %568, i32 %29
  %570 = load ptr, ptr %569, align 4
  store ptr %570, ptr %384, align 8
  %571 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %569, ptr %571, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %384, ptr %569, align 4
  %572 = icmp eq ptr %570, null
  br i1 %572, label %575, label %573

573:                                              ; preds = %564
  %574 = getelementptr inbounds %struct.hlist_node, ptr %570, i32 0, i32 1
  store volatile ptr %384, ptr %574, align 4
  br label %575

575:                                              ; preds = %573, %564
  %576 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %577 = call fastcc i32 @__xfrm_src_hash(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %16, i32 noundef %576) #15
  %578 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 2
  %579 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 2), align 4
  %580 = getelementptr %struct.hlist_head, ptr %579, i32 %577
  %581 = load ptr, ptr %580, align 4
  store ptr %581, ptr %578, align 8
  %582 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 2, i32 1
  store volatile ptr %580, ptr %582, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %578, ptr %580, align 4
  %583 = icmp eq ptr %581, null
  br i1 %583, label %586, label %584

584:                                              ; preds = %575
  %585 = getelementptr inbounds %struct.hlist_node, ptr %581, i32 0, i32 1
  store volatile ptr %578, ptr %585, align 4
  br label %586

586:                                              ; preds = %584, %575
  %587 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 1
  %588 = load i32, ptr %587, align 8
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %672, label %590

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 2
  %592 = load i8, ptr %591, align 4
  %593 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %594 = zext i8 %592 to i32
  %595 = xor i32 %588, %594
  switch i16 %16, label %657 [
    i16 2, label %596
    i16 10, label %600
  ]

596:                                              ; preds = %590
  %597 = load i32, ptr %497, align 8
  %598 = call i32 @llvm.bswap.i32(i32 %597) #15
  %599 = xor i32 %598, %595
  br label %657

600:                                              ; preds = %590
  %601 = load i32, ptr %497, align 8
  %602 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 1
  %603 = load i32, ptr %602, align 4
  %604 = add i32 %603, -559038721
  %605 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 2
  %606 = load i32, ptr %605, align 8
  %607 = add i32 %606, -559038721
  %608 = sub i32 %601, %606
  %609 = call i32 @llvm.fshl.i32(i32 %607, i32 %607, i32 4) #15
  %610 = xor i32 %609, %608
  %611 = add i32 %607, %604
  %612 = sub i32 %604, %610
  %613 = call i32 @llvm.fshl.i32(i32 %610, i32 %610, i32 6) #15
  %614 = xor i32 %612, %613
  %615 = add i32 %610, %611
  %616 = sub i32 %611, %614
  %617 = call i32 @llvm.fshl.i32(i32 %614, i32 %614, i32 8) #15
  %618 = xor i32 %616, %617
  %619 = add i32 %614, %615
  %620 = sub i32 %615, %618
  %621 = call i32 @llvm.fshl.i32(i32 %618, i32 %618, i32 16) #15
  %622 = xor i32 %620, %621
  %623 = add i32 %618, %619
  %624 = sub i32 %619, %622
  %625 = call i32 @llvm.fshl.i32(i32 %622, i32 %622, i32 19) #15
  %626 = xor i32 %624, %625
  %627 = add i32 %622, %623
  %628 = sub i32 %623, %626
  %629 = call i32 @llvm.fshl.i32(i32 %626, i32 %626, i32 4) #15
  %630 = xor i32 %628, %629
  %631 = add i32 %626, %627
  %632 = getelementptr %struct.xfrm_state, ptr %377, i32 0, i32 7, i32 0, i32 0, i32 3
  %633 = load i32, ptr %632, align 4
  %634 = add i32 %627, %633
  %635 = xor i32 %630, %631
  %636 = call i32 @llvm.fshl.i32(i32 %631, i32 %631, i32 14) #15
  %637 = sub i32 %635, %636
  %638 = xor i32 %637, %634
  %639 = call i32 @llvm.fshl.i32(i32 %637, i32 %637, i32 11) #15
  %640 = sub i32 %638, %639
  %641 = xor i32 %640, %631
  %642 = call i32 @llvm.fshl.i32(i32 %640, i32 %640, i32 25) #15
  %643 = sub i32 %641, %642
  %644 = xor i32 %643, %637
  %645 = call i32 @llvm.fshl.i32(i32 %643, i32 %643, i32 16) #15
  %646 = sub i32 %644, %645
  %647 = xor i32 %646, %640
  %648 = call i32 @llvm.fshl.i32(i32 %646, i32 %646, i32 4) #15
  %649 = sub i32 %647, %648
  %650 = xor i32 %649, %643
  %651 = call i32 @llvm.fshl.i32(i32 %649, i32 %649, i32 14) #15
  %652 = sub i32 %650, %651
  %653 = xor i32 %652, %646
  %654 = call i32 @llvm.fshl.i32(i32 %652, i32 %652, i32 24) #15
  %655 = sub i32 %653, %654
  %656 = xor i32 %655, %595
  br label %657

657:                                              ; preds = %600, %596, %590
  %658 = phi i32 [ %595, %590 ], [ %656, %600 ], [ %599, %596 ]
  %659 = lshr i32 %658, 10
  %660 = xor i32 %659, %658
  %661 = lshr i32 %658, 20
  %662 = xor i32 %660, %661
  %663 = and i32 %662, %593
  %664 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 3
  %665 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 3), align 16
  %666 = getelementptr %struct.hlist_head, ptr %665, i32 %663
  %667 = load ptr, ptr %666, align 4
  store ptr %667, ptr %664, align 8
  %668 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 3, i32 1
  store volatile ptr %666, ptr %668, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %664, ptr %666, align 4
  %669 = icmp eq ptr %667, null
  br i1 %669, label %672, label %670

670:                                              ; preds = %657
  %671 = getelementptr inbounds %struct.hlist_node, ptr %667, i32 0, i32 1
  store volatile ptr %664, ptr %671, align 4
  br label %672

672:                                              ; preds = %670, %657, %586
  %673 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 13, i32 4
  %674 = load i32, ptr %673, align 8
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %691, label %676

676:                                              ; preds = %672
  %677 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %678 = lshr i32 %674, 10
  %679 = xor i32 %678, %674
  %680 = lshr i32 %674, 20
  %681 = xor i32 %679, %680
  %682 = and i32 %677, %681
  %683 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 4
  %684 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 4), align 4
  %685 = getelementptr %struct.hlist_head, ptr %684, i32 %682
  %686 = load ptr, ptr %685, align 4
  store ptr %686, ptr %683, align 8
  %687 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 4, i32 1
  store volatile ptr %685, ptr %687, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %683, ptr %685, align 4
  %688 = icmp eq ptr %686, null
  br i1 %688, label %691, label %689

689:                                              ; preds = %676
  %690 = getelementptr inbounds %struct.hlist_node, ptr %686, i32 0, i32 1
  store volatile ptr %683, ptr %690, align 4
  br label %691

691:                                              ; preds = %689, %676, %672
  %692 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 22), align 16
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 15, i32 5
  store i64 %693, ptr %694, align 8
  %695 = mul nuw nsw i64 %693, 1000000000
  call void @hrtimer_start_range_ns(ptr noundef %385, i64 noundef %695, i64 noundef 0, i32 noundef 5) #15
  %696 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  %697 = add i32 %696, 1
  store i32 %697, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  %698 = load ptr, ptr %384, align 8
  %699 = icmp eq ptr %698, null
  br i1 %699, label %709, label %700

700:                                              ; preds = %691
  %701 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %702 = add i32 %701, 1
  %703 = icmp ult i32 %702, 1048576
  %704 = icmp ugt i32 %697, %701
  %705 = select i1 %703, i1 %704, i1 false
  br i1 %705, label %706, label %709

706:                                              ; preds = %700
  %707 = load ptr, ptr @system_wq, align 4
  %708 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %707, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 7)) #15
  br label %709

709:                                              ; preds = %706, %700, %691
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %712

710:                                              ; preds = %562, %551
  %711 = getelementptr inbounds %struct.xfrm_state, ptr %377, i32 0, i32 13, i32 1
  store i8 5, ptr %711, align 4
  br label %743

712:                                              ; preds = %709, %342
  %713 = phi i32 [ %344, %342 ], [ 0, %709 ]
  %714 = phi ptr [ %345, %342 ], [ %377, %709 ]
  %715 = icmp eq ptr %714, null
  br i1 %715, label %743, label %716

716:                                              ; preds = %712
  %717 = getelementptr inbounds %struct.xfrm_state, ptr %714, i32 0, i32 5
  %718 = load volatile i32, ptr %717, align 4
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %732, label %720

720:                                              ; preds = %730, %716
  %721 = phi i32 [ %728, %730 ], [ %718, %716 ]
  %722 = add i32 %721, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %717) #15, !srcloc !18
  br label %723

723:                                              ; preds = %723, %720
  %724 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %717, ptr %717, i32 %721, i32 %722, ptr elementtype(i32) %717) #15, !srcloc !29
  %725 = extractvalue { i32, i32 } %724, 0
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %723

727:                                              ; preds = %723
  %728 = extractvalue { i32, i32 } %724, 1
  %729 = icmp eq i32 %728, %721
  br i1 %729, label %732, label %730, !prof !11

730:                                              ; preds = %727
  %731 = icmp eq i32 %728, 0
  br i1 %731, label %732, label %720

732:                                              ; preds = %730, %727, %716
  %733 = phi i32 [ 0, %716 ], [ %721, %727 ], [ 0, %730 ]
  %734 = add i32 %733, 1
  %735 = or i32 %734, %733
  %736 = icmp sgt i32 %735, -1
  br i1 %736, label %738, label %737, !prof !11

737:                                              ; preds = %732
  call void @refcount_warn_saturate(ptr noundef %717, i32 noundef 0) #15
  br label %738

738:                                              ; preds = %737, %732
  %739 = icmp eq i32 %733, 0
  br i1 %739, label %740, label %741

740:                                              ; preds = %738
  store i32 -11, ptr %5, align 4
  br label %741

741:                                              ; preds = %740, %738
  %742 = phi ptr [ null, %740 ], [ %714, %738 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %772

743:                                              ; preds = %712, %710, %375, %374, %355
  %744 = phi ptr [ null, %712 ], [ null, %375 ], [ %358, %355 ], [ null, %374 ], [ %377, %710 ]
  %745 = phi i32 [ %713, %712 ], [ -12, %375 ], [ -17, %355 ], [ -3, %374 ], [ -3, %710 ]
  %746 = icmp eq i32 %343, 0
  %747 = select i1 %746, i32 %745, i32 -11
  store i32 %747, ptr %5, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %748 = icmp eq ptr %744, null
  br i1 %748, label %772, label %749

749:                                              ; preds = %743
  %750 = getelementptr inbounds %struct.xfrm_state, ptr %744, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %750) #15, !srcloc !18
  %751 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %750, ptr %750, i32 1, ptr elementtype(i32) %750) #15, !srcloc !22
  %752 = extractvalue { i32, i32, i32 } %751, 0
  %753 = icmp eq i32 %752, 1
  br i1 %753, label %757, label %754

754:                                              ; preds = %749
  %755 = icmp sgt i32 %752, 0
  br i1 %755, label %772, label %756, !prof !11

756:                                              ; preds = %754
  call void @refcount_warn_saturate(ptr noundef %750, i32 noundef 3) #15
  br label %772

757:                                              ; preds = %749
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %758 = getelementptr inbounds %struct.xfrm_state, ptr %744, i32 0, i32 13, i32 1
  %759 = load i8, ptr %758, align 4
  %760 = icmp eq i8 %759, 5
  br i1 %760, label %762, label %761, !prof !11

761:                                              ; preds = %757
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %762

762:                                              ; preds = %761, %757
  call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %763 = getelementptr inbounds %struct.xfrm_state, ptr %744, i32 0, i32 1
  %764 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %764, ptr %763, align 4
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766

766:                                              ; preds = %762
  %767 = getelementptr inbounds %struct.hlist_node, ptr %764, i32 0, i32 1
  store volatile ptr %763, ptr %767, align 4
  br label %768

768:                                              ; preds = %766, %762
  store volatile ptr %763, ptr @xfrm_state_gc_list, align 4
  %769 = getelementptr inbounds %struct.xfrm_state, ptr %744, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %769, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %770 = load ptr, ptr @system_wq, align 4
  %771 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %770, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %772

772:                                              ; preds = %768, %756, %754, %743, %741
  %773 = phi ptr [ %742, %741 ], [ null, %743 ], [ null, %754 ], [ null, %756 ], [ null, %768 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  %774 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 29), align 4
  %775 = icmp eq i32 %774, %25
  br i1 %775, label %801, label %776

776:                                              ; preds = %772
  store i32 -11, ptr %5, align 4
  %777 = icmp eq ptr %773, null
  br i1 %777, label %801, label %778

778:                                              ; preds = %776
  %779 = getelementptr inbounds %struct.xfrm_state, ptr %773, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %779) #15, !srcloc !18
  %780 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %779, ptr %779, i32 1, ptr elementtype(i32) %779) #15, !srcloc !22
  %781 = extractvalue { i32, i32, i32 } %780, 0
  %782 = icmp eq i32 %781, 1
  br i1 %782, label %786, label %783

783:                                              ; preds = %778
  %784 = icmp sgt i32 %781, 0
  br i1 %784, label %801, label %785, !prof !11

785:                                              ; preds = %783
  call void @refcount_warn_saturate(ptr noundef %779, i32 noundef 3) #15
  br label %801

786:                                              ; preds = %778
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %787 = getelementptr inbounds %struct.xfrm_state, ptr %773, i32 0, i32 13, i32 1
  %788 = load i8, ptr %787, align 4
  %789 = icmp eq i8 %788, 5
  br i1 %789, label %791, label %790, !prof !11

790:                                              ; preds = %786
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %791

791:                                              ; preds = %790, %786
  call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %792 = getelementptr inbounds %struct.xfrm_state, ptr %773, i32 0, i32 1
  %793 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %793, ptr %792, align 4
  %794 = icmp eq ptr %793, null
  br i1 %794, label %797, label %795

795:                                              ; preds = %791
  %796 = getelementptr inbounds %struct.hlist_node, ptr %793, i32 0, i32 1
  store volatile ptr %792, ptr %796, align 4
  br label %797

797:                                              ; preds = %795, %791
  store volatile ptr %792, ptr @xfrm_state_gc_list, align 4
  %798 = getelementptr inbounds %struct.xfrm_state, ptr %773, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %798, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %799 = load ptr, ptr @system_wq, align 4
  %800 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %799, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %801

801:                                              ; preds = %797, %785, %783, %776, %772
  %802 = phi ptr [ null, %776 ], [ %773, %772 ], [ null, %783 ], [ null, %785 ], [ null, %797 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #15
  ret ptr %802
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__xfrm_state_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = zext i8 %4 to i32
  %10 = xor i32 %9, %3
  switch i16 %5, label %72 [
    i16 2, label %11
    i16 10, label %15
  ]

11:                                               ; preds = %6
  %12 = load i32, ptr %2, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #15
  %14 = xor i32 %13, %10
  br label %72

15:                                               ; preds = %6
  %16 = load i32, ptr %2, align 4
  %17 = getelementptr i32, ptr %2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -559038721
  %20 = getelementptr i32, ptr %2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -559038721
  %23 = sub i32 %16, %21
  %24 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 4) #15
  %25 = xor i32 %24, %23
  %26 = add i32 %22, %19
  %27 = sub i32 %19, %25
  %28 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 6) #15
  %29 = xor i32 %27, %28
  %30 = add i32 %25, %26
  %31 = sub i32 %26, %29
  %32 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 8) #15
  %33 = xor i32 %31, %32
  %34 = add i32 %29, %30
  %35 = sub i32 %30, %33
  %36 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 16) #15
  %37 = xor i32 %35, %36
  %38 = add i32 %33, %34
  %39 = sub i32 %34, %37
  %40 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 19) #15
  %41 = xor i32 %39, %40
  %42 = add i32 %37, %38
  %43 = sub i32 %38, %41
  %44 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %41, i32 4) #15
  %45 = xor i32 %43, %44
  %46 = add i32 %41, %42
  %47 = getelementptr i32, ptr %2, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %42, %48
  %50 = xor i32 %45, %46
  %51 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 14) #15
  %52 = sub i32 %50, %51
  %53 = xor i32 %52, %49
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 11) #15
  %55 = sub i32 %53, %54
  %56 = xor i32 %55, %46
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 25) #15
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 16) #15
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 4) #15
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 14) #15
  %67 = sub i32 %65, %66
  %68 = xor i32 %67, %61
  %69 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 24) #15
  %70 = sub i32 %68, %69
  %71 = xor i32 %70, %10
  br label %72

72:                                               ; preds = %15, %11, %6
  %73 = phi i32 [ %10, %6 ], [ %71, %15 ], [ %14, %11 ]
  %74 = lshr i32 %73, 10
  %75 = xor i32 %74, %73
  %76 = lshr i32 %73, 20
  %77 = xor i32 %75, %76
  %78 = and i32 %77, %8
  %79 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 3
  %80 = load ptr, ptr %79, align 16
  %81 = getelementptr %struct.hlist_head, ptr %80, i32 %78
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = getelementptr i8, ptr %82, i32 -16
  %85 = icmp eq ptr %84, null
  %86 = or i1 %83, %85
  br i1 %86, label %167, label %87

87:                                               ; preds = %72
  %88 = icmp eq i16 %5, 10
  %89 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %90 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %91 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  br label %92

92:                                               ; preds = %160, %87
  %93 = phi ptr [ %84, %87 ], [ %164, %160 ]
  %94 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 14, i32 7
  %95 = load i16, ptr %94, align 2
  %96 = icmp eq i16 %95, %5
  br i1 %96, label %97, label %160

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 7
  %99 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 7, i32 1
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, %3
  br i1 %101, label %102, label %160

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 7, i32 2
  %104 = load i8, ptr %103, align 4
  %105 = icmp eq i8 %104, %4
  br i1 %105, label %106, label %160

106:                                              ; preds = %102
  %107 = load i32, ptr %98, align 4
  %108 = load i32, ptr %2, align 4
  br i1 %88, label %109, label %127

109:                                              ; preds = %106
  %110 = xor i32 %108, %107
  %111 = getelementptr %struct.xfrm_state, ptr %93, i32 0, i32 7, i32 0, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %89, align 4
  %114 = xor i32 %113, %112
  %115 = or i32 %114, %110
  %116 = getelementptr %struct.xfrm_state, ptr %93, i32 0, i32 7, i32 0, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %90, align 4
  %119 = xor i32 %118, %117
  %120 = or i32 %115, %119
  %121 = getelementptr %struct.xfrm_state, ptr %93, i32 0, i32 7, i32 0, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %91, align 4
  %124 = xor i32 %123, %122
  %125 = or i32 %120, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %160

127:                                              ; preds = %106
  %128 = icmp eq i32 %107, %108
  br i1 %128, label %129, label %160

129:                                              ; preds = %127, %109
  %130 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 9
  %131 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 9, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, %1
  %134 = load i32, ptr %130, align 8
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 5
  %138 = load volatile i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %150, %136
  %141 = phi i32 [ %148, %150 ], [ %138, %136 ]
  %142 = add i32 %141, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %137) #15, !srcloc !18
  br label %143

143:                                              ; preds = %143, %140
  %144 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %137, ptr %137, i32 %141, i32 %142, ptr elementtype(i32) %137) #15, !srcloc !29
  %145 = extractvalue { i32, i32 } %144, 0
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %143

147:                                              ; preds = %143
  %148 = extractvalue { i32, i32 } %144, 1
  %149 = icmp eq i32 %148, %141
  br i1 %149, label %152, label %150, !prof !11

150:                                              ; preds = %147
  %151 = icmp eq i32 %148, 0
  br i1 %151, label %152, label %140

152:                                              ; preds = %150, %147, %136
  %153 = phi i32 [ 0, %136 ], [ %141, %147 ], [ 0, %150 ]
  %154 = add i32 %153, 1
  %155 = or i32 %154, %153
  %156 = icmp sgt i32 %155, -1
  br i1 %156, label %158, label %157, !prof !11

157:                                              ; preds = %152
  tail call void @refcount_warn_saturate(ptr noundef %137, i32 noundef 0) #15
  br label %158

158:                                              ; preds = %157, %152
  %159 = icmp eq i32 %153, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %158, %129, %127, %109, %102, %97, %92
  %161 = getelementptr inbounds %struct.xfrm_state, ptr %93, i32 0, i32 3
  %162 = load volatile ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, null
  %164 = getelementptr i8, ptr %162, i32 -16
  %165 = icmp eq ptr %164, null
  %166 = or i1 %163, %165
  br i1 %166, label %167, label %92

167:                                              ; preds = %160, %158, %72
  %168 = phi ptr [ null, %72 ], [ null, %160 ], [ %93, %158 ]
  ret ptr %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @km_query(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %4 = load volatile ptr, ptr @xfrm_km_list, align 4
  %5 = icmp eq ptr %4, @xfrm_km_list
  br i1 %5, label %16, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %14, %6 ], [ %4, %3 ]
  %8 = phi i32 [ %13, %6 ], [ -22, %3 ]
  %9 = getelementptr inbounds %struct.xfrm_mgr, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 %8
  %14 = load volatile ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, @xfrm_km_list
  br i1 %15, label %16, label %6

16:                                               ; preds = %6, %3
  %17 = phi i32 [ -22, %3 ], [ %13, %6 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_stateonly_find(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %3, ptr noundef %4, i32 noundef %8, i16 noundef zeroext %5, i32 noundef %12) #15
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr %struct.hlist_head, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %144, label %19

19:                                               ; preds = %9
  %20 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %21 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %22 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  %23 = getelementptr [4 x i32], ptr %4, i32 0, i32 1
  %24 = getelementptr [4 x i32], ptr %4, i32 0, i32 2
  %25 = getelementptr [4 x i32], ptr %4, i32 0, i32 3
  br label %26

26:                                               ; preds = %130, %19
  %27 = phi ptr [ %17, %19 ], [ %131, %130 ]
  %28 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 7
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, %5
  br i1 %30, label %31, label %130

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %8
  br i1 %34, label %35, label %130

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 9
  %37 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 9, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %1
  %40 = load i32, ptr %36, align 8
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 10
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %2
  br i1 %45, label %46, label %130

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %130

51:                                               ; preds = %46
  switch i16 %5, label %130 [
    i16 2, label %52
    i16 10, label %66
  ]

52:                                               ; preds = %51
  %53 = load i32, ptr %3, align 4
  %54 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 7
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %130

57:                                               ; preds = %52
  %58 = load i32, ptr %4, align 4
  %59 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %58, %60
  %62 = icmp eq i32 %58, 0
  %63 = or i1 %62, %61
  %64 = icmp eq i32 %60, 0
  %65 = or i1 %64, %63
  br i1 %65, label %118, label %130

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 7
  %68 = load i32, ptr %3, align 4
  %69 = load i32, ptr %67, align 4
  %70 = xor i32 %69, %68
  %71 = load i32, ptr %20, align 4
  %72 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %73, %71
  %75 = or i32 %74, %70
  %76 = load i32, ptr %21, align 4
  %77 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = xor i32 %78, %76
  %80 = or i32 %75, %79
  %81 = load i32, ptr %22, align 4
  %82 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = xor i32 %83, %81
  %85 = or i32 %80, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %130

87:                                               ; preds = %66
  %88 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8
  %89 = load i32, ptr %4, align 4
  %90 = load i32, ptr %88, align 4
  %91 = xor i32 %90, %89
  %92 = load i32, ptr %23, align 4
  %93 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %94, %92
  %96 = or i32 %95, %91
  %97 = load i32, ptr %24, align 4
  %98 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = xor i32 %99, %97
  %101 = or i32 %96, %100
  %102 = load i32, ptr %25, align 4
  %103 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = xor i32 %104, %102
  %106 = or i32 %101, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %87
  %109 = or i32 %92, %89
  %110 = or i32 %109, %97
  %111 = or i32 %110, %102
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = or i32 %94, %90
  %115 = or i32 %114, %99
  %116 = or i32 %115, %104
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %113, %108, %87, %57
  %119 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 1
  %120 = load i8, ptr %119, align 4
  %121 = icmp eq i8 %120, %6
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 2
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %124, %7
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 13, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = icmp eq i8 %128, 2
  br i1 %129, label %133, label %130

130:                                              ; preds = %126, %122, %118, %113, %66, %57, %52, %51, %46, %42, %35, %31, %26
  %131 = load ptr, ptr %27, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %144, label %26

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #15, !srcloc !18
  %135 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 1, ptr elementtype(i32) %134) #15, !srcloc !24
  %136 = extractvalue { i32, i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138, !prof !8

138:                                              ; preds = %133
  %139 = add i32 %136, 1
  %140 = or i32 %139, %136
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %144, label %142, !prof !11

142:                                              ; preds = %138, %133
  %143 = phi i32 [ 2, %133 ], [ 1, %138 ]
  tail call void @refcount_warn_saturate(ptr noundef %134, i32 noundef %143) #15
  br label %144

144:                                              ; preds = %142, %138, %130, %9
  %145 = phi ptr [ %27, %138 ], [ %27, %142 ], [ null, %9 ], [ null, %130 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #15
  ret ptr %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_lookup_byspi(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %5) #15
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %32, label %8

8:                                                ; preds = %29, %3
  %9 = phi ptr [ %30, %29 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 30
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, %2
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 -84
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %9, i32 -140
  %19 = getelementptr i8, ptr %9, i32 -108
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #15, !srcloc !18
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !srcloc !24
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !8

23:                                               ; preds = %17
  %24 = add i32 %21, 1
  %25 = or i32 %24, %21
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %32, label %27, !prof !11

27:                                               ; preds = %23, %17
  %28 = phi i32 [ 2, %17 ], [ 1, %23 ]
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef %28) #15
  br label %32

29:                                               ; preds = %13, %8
  %30 = load ptr, ptr %9, align 4
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %32, label %8

32:                                               ; preds = %29, %27, %23, %3
  %33 = phi ptr [ %18, %23 ], [ %18, %27 ], [ null, %3 ], [ null, %29 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %5) #15
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_insert(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  tail call fastcc void @__xfrm_state_bump_genids(ptr noundef %0)
  tail call fastcc void @__xfrm_state_insert(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xfrm_state_bump_genids(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %4 = load i16, ptr %3, align 2
  %5 = load i32, ptr %2, align 8
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7
  %14 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %16 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %13, ptr noundef %14, i32 noundef %5, i16 noundef zeroext %4, i32 noundef %15) #15
  %17 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 1), align 8
  %18 = getelementptr %struct.hlist_head, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %106, label %21

21:                                               ; preds = %1
  %22 = icmp eq i16 %4, 10
  %23 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %24 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 2
  %25 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 3
  %26 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 1
  %27 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 2
  %28 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8, i32 0, i32 3
  br label %29

29:                                               ; preds = %103, %21
  %30 = phi ptr [ %19, %21 ], [ %104, %103 ]
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 7
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, %4
  br i1 %33, label %34, label %103

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 14
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, %5
  br i1 %37, label %38, label %103

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 10
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, %12
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 9
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 9, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %10, %45
  %47 = load i32, ptr %43, align 8
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %13, align 4
  br i1 %22, label %53, label %71

53:                                               ; preds = %49
  %54 = xor i32 %52, %51
  %55 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 7, i32 0, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %23, align 4
  %58 = xor i32 %57, %56
  %59 = or i32 %58, %54
  %60 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 7, i32 0, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %24, align 4
  %63 = xor i32 %62, %61
  %64 = or i32 %59, %63
  %65 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 7, i32 0, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %25, align 4
  %68 = xor i32 %67, %66
  %69 = or i32 %64, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %103

71:                                               ; preds = %49
  %72 = icmp eq i32 %51, %52
  br i1 %72, label %94, label %103

73:                                               ; preds = %53
  %74 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 8
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %14, align 4
  %77 = xor i32 %76, %75
  %78 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 8, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load i32, ptr %26, align 4
  %81 = xor i32 %80, %79
  %82 = or i32 %81, %77
  %83 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 8, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %27, align 4
  %86 = xor i32 %85, %84
  %87 = or i32 %82, %86
  %88 = getelementptr %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 8, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %28, align 4
  %91 = xor i32 %90, %89
  %92 = or i32 %87, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %103

94:                                               ; preds = %71
  %95 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 14, i32 8
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %14, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %94, %73
  %100 = getelementptr inbounds %struct.xfrm_state, ptr %30, i32 0, i32 12
  %101 = load i32, ptr %100, align 8
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8
  br label %103

103:                                              ; preds = %99, %94, %73, %71, %53, %42, %38, %34, %29
  %104 = load ptr, ptr %30, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %29

106:                                              ; preds = %103, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xfrm_state_insert(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), align 64
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  store ptr %3, ptr %2, align 4
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 0, i32 1
  store ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), ptr %5, align 4
  store volatile ptr %2, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40), align 64
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %9 = load i32, ptr %7, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %11 = load i16, ptr %10, align 2
  %12 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %13 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %6, ptr noundef %8, i32 noundef %9, i16 noundef zeroext %11, i32 noundef %12) #15
  %14 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 1), align 8
  %16 = getelementptr %struct.hlist_head, ptr %15, i32 %13
  %17 = load ptr, ptr %16, align 4
  store ptr %17, ptr %14, align 4
  %18 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %16, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %14, ptr %16, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %14, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i16, ptr %10, align 2
  %24 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %25 = tail call fastcc i32 @__xfrm_src_hash(ptr noundef %6, ptr noundef %8, i16 noundef zeroext %23, i32 noundef %24) #15
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 2), align 4
  %28 = getelementptr %struct.hlist_head, ptr %27, i32 %25
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 2, i32 1
  store volatile ptr %28, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %26, ptr %28, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  store volatile ptr %26, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %121, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = load i16, ptr %10, align 2
  %42 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %43 = zext i8 %40 to i32
  %44 = xor i32 %36, %43
  switch i16 %41, label %106 [
    i16 2, label %45
    i16 10, label %49
  ]

45:                                               ; preds = %38
  %46 = load i32, ptr %6, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  %48 = xor i32 %47, %44
  br label %106

49:                                               ; preds = %38
  %50 = load i32, ptr %6, align 4
  %51 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -559038721
  %54 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -559038721
  %57 = sub i32 %50, %55
  %58 = tail call i32 @llvm.fshl.i32(i32 %56, i32 %56, i32 4) #15
  %59 = xor i32 %58, %57
  %60 = add i32 %56, %53
  %61 = sub i32 %53, %59
  %62 = tail call i32 @llvm.fshl.i32(i32 %59, i32 %59, i32 6) #15
  %63 = xor i32 %61, %62
  %64 = add i32 %59, %60
  %65 = sub i32 %60, %63
  %66 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 8) #15
  %67 = xor i32 %65, %66
  %68 = add i32 %63, %64
  %69 = sub i32 %64, %67
  %70 = tail call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 16) #15
  %71 = xor i32 %69, %70
  %72 = add i32 %67, %68
  %73 = sub i32 %68, %71
  %74 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 19) #15
  %75 = xor i32 %73, %74
  %76 = add i32 %71, %72
  %77 = sub i32 %72, %75
  %78 = tail call i32 @llvm.fshl.i32(i32 %75, i32 %75, i32 4) #15
  %79 = xor i32 %77, %78
  %80 = add i32 %75, %76
  %81 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %76, %82
  %84 = xor i32 %79, %80
  %85 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 14) #15
  %86 = sub i32 %84, %85
  %87 = xor i32 %86, %83
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 11) #15
  %89 = sub i32 %87, %88
  %90 = xor i32 %89, %80
  %91 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 25) #15
  %92 = sub i32 %90, %91
  %93 = xor i32 %92, %86
  %94 = tail call i32 @llvm.fshl.i32(i32 %92, i32 %92, i32 16) #15
  %95 = sub i32 %93, %94
  %96 = xor i32 %95, %89
  %97 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 4) #15
  %98 = sub i32 %96, %97
  %99 = xor i32 %98, %92
  %100 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 14) #15
  %101 = sub i32 %99, %100
  %102 = xor i32 %101, %95
  %103 = tail call i32 @llvm.fshl.i32(i32 %101, i32 %101, i32 24) #15
  %104 = sub i32 %102, %103
  %105 = xor i32 %104, %44
  br label %106

106:                                              ; preds = %49, %45, %38
  %107 = phi i32 [ %44, %38 ], [ %105, %49 ], [ %48, %45 ]
  %108 = lshr i32 %107, 10
  %109 = xor i32 %108, %107
  %110 = lshr i32 %107, 20
  %111 = xor i32 %109, %110
  %112 = and i32 %111, %42
  %113 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3
  %114 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 3), align 16
  %115 = getelementptr %struct.hlist_head, ptr %114, i32 %112
  %116 = load ptr, ptr %115, align 4
  store ptr %116, ptr %113, align 4
  %117 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr %115, ptr %117, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %113, ptr %115, align 4
  %118 = icmp eq ptr %116, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.hlist_node, ptr %116, i32 0, i32 1
  store volatile ptr %113, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %106, %34
  %122 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %121
  %126 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %127 = lshr i32 %123, 10
  %128 = xor i32 %127, %123
  %129 = lshr i32 %123, 20
  %130 = xor i32 %128, %129
  %131 = and i32 %126, %130
  %132 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 4
  %133 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 4), align 4
  %134 = getelementptr %struct.hlist_head, ptr %133, i32 %131
  %135 = load ptr, ptr %134, align 4
  store ptr %135, ptr %132, align 4
  %136 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %134, ptr %136, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %132, ptr %134, align 4
  %137 = icmp eq ptr %135, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %125
  %139 = getelementptr inbounds %struct.hlist_node, ptr %135, i32 0, i32 1
  store volatile ptr %132, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %125, %121
  %141 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 40
  tail call void @hrtimer_start_range_ns(ptr noundef %141, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #15
  %142 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 35
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 37
  %147 = load volatile i32, ptr @jiffies, align 64
  %148 = add i32 %147, %143
  %149 = tail call i32 @mod_timer(ptr noundef %146, i32 noundef %148) #15
  br label %150

150:                                              ; preds = %145, %140
  %151 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  %152 = add i32 %151, 1
  store i32 %152, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 6), align 4
  %153 = load ptr, ptr %14, align 8
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155

155:                                              ; preds = %150
  %156 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %157 = add i32 %156, 1
  %158 = icmp ult i32 %157, 1048576
  %159 = icmp ugt i32 %152, %156
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load ptr, ptr @system_wq, align 4
  %163 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %162, ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 7)) #15
  br label %164

164:                                              ; preds = %161, %155, %150
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, %3
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %12 = load i16, ptr %11, align 2
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %13 = load i32, ptr %2, align 8
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, %13
  switch i8 %9, label %16 [
    i8 -1, label %21
    i8 108, label %21
    i8 51, label %21
    i8 50, label %21
  ]

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %18 = load i8, ptr %8, align 4
  %19 = tail call fastcc ptr @__xfrm_state_lookup_byaddr(ptr noundef nonnull @init_net, i32 noundef %15, ptr noundef %7, ptr noundef %17, i8 noundef zeroext %18, i16 noundef zeroext %12) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %125, label %123

21:                                               ; preds = %1, %1, %1, %1
  %22 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = load i8, ptr %8, align 4
  %25 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %15, ptr noundef %7, i32 noundef %23, i8 noundef zeroext %24, i16 noundef zeroext %12) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %123

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %112, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %33 = lshr i32 %29, 10
  %34 = xor i32 %33, %29
  %35 = lshr i32 %29, 20
  %36 = xor i32 %34, %35
  %37 = and i32 %32, %36
  %38 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 4), align 4
  %39 = getelementptr %struct.hlist_head, ptr %38, i32 %37
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -24
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %112, label %45

45:                                               ; preds = %72, %31
  %46 = phi ptr [ %76, %72 ], [ %42, %31 ]
  %47 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 13, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %29
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 9
  %52 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 9, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %6, %53
  %55 = load i32, ptr %51, align 8
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 13, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #15, !srcloc !18
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #15, !srcloc !24
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !8

66:                                               ; preds = %61
  %67 = add i32 %64, 1
  %68 = or i32 %67, %64
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %79, label %70, !prof !11

70:                                               ; preds = %66, %61
  %71 = phi i32 [ 2, %61 ], [ 1, %66 ]
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef %71) #15
  br label %79

72:                                               ; preds = %57, %50, %45
  %73 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 4
  %74 = load volatile ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  %76 = getelementptr i8, ptr %74, i32 -24
  %77 = icmp eq ptr %76, null
  %78 = or i1 %75, %77
  br i1 %78, label %112, label %45

79:                                               ; preds = %70, %66
  %80 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 7, i32 2
  %81 = load i8, ptr %80, align 4
  %82 = load i8, ptr %8, align 4
  %83 = icmp eq i8 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.xfrm_state, ptr %46, i32 0, i32 7
  %86 = icmp eq i16 %12, 10
  %87 = load i32, ptr %85, align 4
  %88 = load i32, ptr %7, align 4
  br i1 %86, label %89, label %110

89:                                               ; preds = %84
  %90 = xor i32 %88, %87
  %91 = getelementptr %struct.xfrm_state, ptr %46, i32 0, i32 7, i32 0, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %94, %92
  %96 = or i32 %95, %90
  %97 = getelementptr %struct.xfrm_state, ptr %46, i32 0, i32 7, i32 0, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = xor i32 %100, %98
  %102 = or i32 %96, %101
  %103 = getelementptr %struct.xfrm_state, ptr %46, i32 0, i32 7, i32 0, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = xor i32 %106, %104
  %108 = or i32 %102, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %125, label %112

110:                                              ; preds = %84
  %111 = icmp eq i32 %87, %88
  br i1 %111, label %125, label %112

112:                                              ; preds = %110, %89, %79, %72, %31, %27
  %113 = phi ptr [ null, %27 ], [ null, %31 ], [ %46, %110 ], [ %46, %79 ], [ %46, %89 ], [ null, %72 ]
  switch i8 %9, label %125 [
    i8 -1, label %114
    i8 108, label %114
    i8 51, label %114
    i8 50, label %114
  ]

114:                                              ; preds = %112, %112, %112, %112
  %115 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %116 = load i8, ptr %115, align 4
  %117 = load i32, ptr %10, align 8
  %118 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 10
  %119 = load i32, ptr %118, align 8
  %120 = load i8, ptr %8, align 4
  %121 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %122 = tail call fastcc ptr @__find_acq_core(ptr noundef nonnull @init_net, ptr noundef %2, i16 noundef zeroext %12, i8 noundef zeroext %116, i32 noundef %117, i32 noundef %119, i8 noundef zeroext %120, ptr noundef %7, ptr noundef %121, i32 noundef 0)
  br label %125

123:                                              ; preds = %21, %16
  %124 = phi ptr [ %25, %21 ], [ %19, %16 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %156

125:                                              ; preds = %114, %112, %110, %89, %16
  %126 = phi ptr [ %113, %112 ], [ %113, %114 ], [ null, %110 ], [ null, %89 ], [ null, %16 ]
  %127 = phi ptr [ null, %112 ], [ %122, %114 ], [ %46, %110 ], [ %46, %89 ], [ null, %16 ]
  tail call fastcc void @__xfrm_state_bump_genids(ptr noundef %0)
  tail call fastcc void @__xfrm_state_insert(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %128 = icmp eq ptr %127, null
  br i1 %128, label %154, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %130) #15
  %131 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %127) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %130) #15
  %132 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %132) #15, !srcloc !18
  %133 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %132, ptr %132, i32 1, ptr elementtype(i32) %132) #15, !srcloc !22
  %134 = extractvalue { i32, i32, i32 } %133, 0
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = icmp sgt i32 %134, 0
  br i1 %137, label %154, label %138, !prof !11

138:                                              ; preds = %136
  tail call void @refcount_warn_saturate(ptr noundef %132, i32 noundef 3) #15
  br label %154

139:                                              ; preds = %129
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %140 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 13, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = icmp eq i8 %141, 5
  br i1 %142, label %144, label %143, !prof !11

143:                                              ; preds = %139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %144

144:                                              ; preds = %143, %139
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %145 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 1
  %146 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %146, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.hlist_node, ptr %146, i32 0, i32 1
  store volatile ptr %145, ptr %149, align 4
  br label %150

150:                                              ; preds = %148, %144
  store volatile ptr %145, ptr @xfrm_state_gc_list, align 4
  %151 = getelementptr inbounds %struct.xfrm_state, ptr %127, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %151, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %152 = load ptr, ptr @system_wq, align 4
  %153 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %152, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %154

154:                                              ; preds = %150, %138, %136, %125
  %155 = icmp eq ptr %126, null
  br i1 %155, label %181, label %156

156:                                              ; preds = %154, %123
  %157 = phi ptr [ %124, %123 ], [ %126, %154 ]
  %158 = phi i32 [ -17, %123 ], [ 0, %154 ]
  %159 = getelementptr inbounds %struct.xfrm_state, ptr %157, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %159) #15, !srcloc !18
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %159, ptr %159, i32 1, ptr elementtype(i32) %159) #15, !srcloc !22
  %161 = extractvalue { i32, i32, i32 } %160, 0
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %166, label %163

163:                                              ; preds = %156
  %164 = icmp sgt i32 %161, 0
  br i1 %164, label %181, label %165, !prof !11

165:                                              ; preds = %163
  tail call void @refcount_warn_saturate(ptr noundef %159, i32 noundef 3) #15
  br label %181

166:                                              ; preds = %156
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %167 = getelementptr inbounds %struct.xfrm_state, ptr %157, i32 0, i32 13, i32 1
  %168 = load i8, ptr %167, align 4
  %169 = icmp eq i8 %168, 5
  br i1 %169, label %171, label %170, !prof !11

170:                                              ; preds = %166
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %171

171:                                              ; preds = %170, %166
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %172 = getelementptr inbounds %struct.xfrm_state, ptr %157, i32 0, i32 1
  %173 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %173, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.hlist_node, ptr %173, i32 0, i32 1
  store volatile ptr %172, ptr %176, align 4
  br label %177

177:                                              ; preds = %175, %171
  store volatile ptr %172, ptr @xfrm_state_gc_list, align 4
  %178 = getelementptr inbounds %struct.xfrm_state, ptr %157, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %178, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %179 = load ptr, ptr @system_wq, align 4
  %180 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %179, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %181

181:                                              ; preds = %177, %165, %163, %154
  %182 = phi i32 [ 0, %154 ], [ %158, %163 ], [ %158, %165 ], [ %158, %177 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__find_acq_core(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6, ptr nocapture noundef readonly %7, ptr nocapture noundef readonly %8, i32 noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %7, ptr noundef %8, i32 noundef %4, i16 noundef zeroext %2, i32 noundef %12) #15
  %14 = load i32, ptr %1, align 4
  %15 = getelementptr inbounds %struct.xfrm_mark, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %14
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40
  %19 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.hlist_head, ptr %20, i32 %13
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %118, label %24

24:                                               ; preds = %10
  %25 = icmp eq i16 %2, 10
  %26 = getelementptr [4 x i32], ptr %7, i32 0, i32 1
  %27 = getelementptr [4 x i32], ptr %7, i32 0, i32 2
  %28 = getelementptr [4 x i32], ptr %7, i32 0, i32 3
  %29 = getelementptr [4 x i32], ptr %8, i32 0, i32 1
  %30 = getelementptr [4 x i32], ptr %8, i32 0, i32 2
  %31 = getelementptr [4 x i32], ptr %8, i32 0, i32 3
  br label %32

32:                                               ; preds = %115, %24
  %33 = phi ptr [ %22, %24 ], [ %116, %115 ]
  %34 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 14
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, %4
  br i1 %36, label %37, label %115

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, %3
  br i1 %40, label %41, label %115

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 7
  %43 = load i16, ptr %42, align 2
  %44 = icmp eq i16 %43, %2
  br i1 %44, label %45, label %115

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 13, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %49, label %115

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 7
  %51 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 7, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 7, i32 2
  %56 = load i8, ptr %55, align 4
  %57 = icmp eq i8 %56, %6
  br i1 %57, label %58, label %115

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 9
  %60 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 9, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %17, %61
  %63 = load i32, ptr %59, align 8
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %58
  %66 = load i32, ptr %50, align 4
  %67 = load i32, ptr %7, align 4
  br i1 %25, label %68, label %86

68:                                               ; preds = %65
  %69 = xor i32 %67, %66
  %70 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 7, i32 0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %26, align 4
  %73 = xor i32 %72, %71
  %74 = or i32 %73, %69
  %75 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 7, i32 0, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %27, align 4
  %78 = xor i32 %77, %76
  %79 = or i32 %74, %78
  %80 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 7, i32 0, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %28, align 4
  %83 = xor i32 %82, %81
  %84 = or i32 %79, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %115

86:                                               ; preds = %65
  %87 = icmp eq i32 %66, %67
  br i1 %87, label %109, label %115

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 8
  %90 = load i32, ptr %89, align 4
  %91 = load i32, ptr %8, align 4
  %92 = xor i32 %91, %90
  %93 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 8, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %29, align 4
  %96 = xor i32 %95, %94
  %97 = or i32 %96, %92
  %98 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 8, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = load i32, ptr %30, align 4
  %101 = xor i32 %100, %99
  %102 = or i32 %97, %101
  %103 = getelementptr %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 8, i32 0, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %31, align 4
  %106 = xor i32 %105, %104
  %107 = or i32 %102, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %115

109:                                              ; preds = %86
  %110 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 14, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = load i32, ptr %8, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109, %88
  tail call fastcc void @xfrm_state_hold(ptr noundef nonnull %33)
  br label %220

115:                                              ; preds = %109, %88, %86, %68, %58, %54, %49, %45, %41, %37, %32
  %116 = load ptr, ptr %33, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %32

118:                                              ; preds = %115, %10
  %119 = icmp eq i32 %9, 0
  br i1 %119, label %220, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr @xfrm_state_cache, align 4
  %122 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %121, i32 noundef 2848) #15
  %123 = icmp eq ptr %122, null
  br i1 %123, label %220, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 5
  store volatile i32 1, ptr %125, align 8
  %126 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 28
  store volatile i32 0, ptr %126, align 8
  %127 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 13
  store volatile ptr %127, ptr %127, align 4
  %128 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 13, i32 0, i32 1
  store ptr %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 1
  %130 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 40
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %129, i8 0, i64 32, i1 false) #15
  tail call void @hrtimer_init(ptr noundef %130, i32 noundef 7, i32 noundef 4) #15
  %131 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 40, i32 2
  store ptr @xfrm_timer_handler, ptr %131, align 8
  %132 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 37
  tail call void @init_timer_key(ptr noundef %132, ptr noundef nonnull @xfrm_replay_timer_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %133 = tail call i64 @ktime_get_real_seconds() #15
  %134 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 39, i32 2
  store i64 %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 15
  %136 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 35
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %135, i8 -1, i64 32, i1 false) #15
  store i32 0, ptr %136, align 4
  %137 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 36
  store i32 0, ptr %137, align 8
  %138 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 6
  store i32 0, ptr %138, align 4
  switch i16 %2, label %155 [
    i16 2, label %139
    i16 10, label %148
  ]

139:                                              ; preds = %124
  %140 = load i32, ptr %7, align 4
  %141 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8
  store i32 %140, ptr %141, align 8
  %142 = load i32, ptr %8, align 4
  %143 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 1
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 7
  store i8 32, ptr %144, align 2
  %145 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 8
  store i8 32, ptr %145, align 1
  %146 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 14, i32 8
  store i32 %142, ptr %146, align 4
  %147 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 7
  store i32 %140, ptr %147, align 8
  br label %155

148:                                              ; preds = %124
  %149 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %149, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  %150 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %150, ptr noundef align 4 dereferenceable(16) %8, i32 16, i1 false)
  %151 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 7
  store i8 -128, ptr %151, align 2
  %152 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 8, i32 8
  store i8 -128, ptr %152, align 1
  %153 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 14, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %153, ptr noundef align 4 dereferenceable(16) %8, i32 16, i1 false)
  %154 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %154, ptr noundef align 4 dereferenceable(16) %7, i32 16, i1 false)
  br label %155

155:                                              ; preds = %148, %139, %124
  %156 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 13, i32 1
  store i8 1, ptr %156, align 4
  %157 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 7, i32 2
  store i8 %6, ptr %157, align 4
  %158 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 14
  %159 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 14, i32 7
  store i16 %2, ptr %159, align 2
  %160 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 14, i32 1
  store i8 %3, ptr %160, align 4
  store i32 %4, ptr %158, align 8
  %161 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 10
  store i32 %5, ptr %161, align 8
  %162 = load i32, ptr %1, align 4
  %163 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 9
  store i32 %162, ptr %163, align 8
  %164 = load i32, ptr %15, align 4
  %165 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 9, i32 1
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 22
  %167 = load i32, ptr %166, align 16
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 15, i32 5
  store i64 %168, ptr %169, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #15, !srcloc !18
  %170 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #15, !srcloc !24
  %171 = extractvalue { i32, i32, i32 } %170, 0
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173, !prof !8

173:                                              ; preds = %155
  %174 = add i32 %171, 1
  %175 = or i32 %174, %171
  %176 = icmp sgt i32 %175, -1
  br i1 %176, label %179, label %177, !prof !11

177:                                              ; preds = %173, %155
  %178 = phi i32 [ 2, %155 ], [ 1, %173 ]
  tail call void @refcount_warn_saturate(ptr noundef %125, i32 noundef %178) #15
  br label %179

179:                                              ; preds = %177, %173
  %180 = load i32, ptr %166, align 16
  %181 = zext i32 %180 to i64
  %182 = mul nuw nsw i64 %181, 1000000000
  tail call void @hrtimer_start_range_ns(ptr noundef %130, i64 noundef %182, i64 noundef 0, i32 noundef 5) #15
  %183 = load ptr, ptr %18, align 4
  %184 = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  store ptr %127, ptr %184, align 4
  store ptr %183, ptr %127, align 4
  store ptr %18, ptr %128, align 8
  store volatile ptr %127, ptr %18, align 4
  %185 = load ptr, ptr %19, align 8
  %186 = getelementptr %struct.hlist_head, ptr %185, i32 %13
  %187 = load ptr, ptr %186, align 4
  store ptr %187, ptr %129, align 8
  %188 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %186, ptr %188, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %129, ptr %186, align 4
  %189 = icmp eq ptr %187, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %179
  %191 = getelementptr inbounds %struct.hlist_node, ptr %187, i32 0, i32 1
  store volatile ptr %129, ptr %191, align 4
  br label %192

192:                                              ; preds = %190, %179
  %193 = load i32, ptr %11, align 8
  %194 = tail call fastcc i32 @__xfrm_src_hash(ptr noundef %7, ptr noundef %8, i16 noundef zeroext %2, i32 noundef %193) #15
  %195 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 2
  %196 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr %struct.hlist_head, ptr %197, i32 %194
  %199 = load ptr, ptr %198, align 4
  store ptr %199, ptr %195, align 8
  %200 = getelementptr inbounds %struct.xfrm_state, ptr %122, i32 0, i32 2, i32 1
  store volatile ptr %198, ptr %200, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %195, ptr %198, align 4
  %201 = icmp eq ptr %199, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %192
  %203 = getelementptr inbounds %struct.hlist_node, ptr %199, i32 0, i32 1
  store volatile ptr %195, ptr %203, align 4
  br label %204

204:                                              ; preds = %202, %192
  %205 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 6
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 4
  %208 = load ptr, ptr %129, align 8
  %209 = icmp eq ptr %208, null
  br i1 %209, label %220, label %210

210:                                              ; preds = %204
  %211 = load i32, ptr %11, align 8
  %212 = add i32 %211, 1
  %213 = icmp ult i32 %212, 1048576
  %214 = icmp ugt i32 %207, %211
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %216, label %220

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7
  %218 = load ptr, ptr @system_wq, align 4
  %219 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %218, ptr noundef %217) #15
  br label %220

220:                                              ; preds = %216, %210, %204, %120, %118, %114
  %221 = phi ptr [ %33, %114 ], [ null, %118 ], [ %122, %204 ], [ %122, %210 ], [ %122, %216 ], [ null, %120 ]
  ret ptr %221
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_update(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %3 = load i8, ptr %2, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7
  switch i8 %3, label %17 [
    i8 -1, label %12
    i8 108, label %12
    i8 51, label %12
    i8 50, label %12
  ]

12:                                               ; preds = %1, %1, %1, %1
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = load i8, ptr %2, align 4
  %16 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %10, ptr noundef %11, i32 noundef %14, i8 noundef zeroext %15, i16 noundef zeroext %5) #15
  br label %21

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 8
  %19 = load i8, ptr %2, align 4
  %20 = tail call fastcc ptr @__xfrm_state_lookup_byaddr(ptr noundef nonnull @init_net, i32 noundef %10, ptr noundef %11, ptr noundef %18, i8 noundef zeroext %19, i16 noundef zeroext %5) #15
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %16, %12 ], [ %20, %17 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 28
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 13, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  tail call fastcc void @__xfrm_state_insert(ptr noundef %0)
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %59

33:                                               ; preds = %24
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %34 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #15, !srcloc !18
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #15, !srcloc !22
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %185, label %40, !prof !11

40:                                               ; preds = %38
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #15
  br label %185

41:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %42 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 13, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 5
  br i1 %44, label %46, label %45, !prof !11

45:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %46

46:                                               ; preds = %45, %41
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %47 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1
  %48 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %48, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  store volatile ptr %47, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %46
  store volatile ptr %47, ptr @xfrm_state_gc_list, align 4
  %53 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %53, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %54 = load ptr, ptr @system_wq, align 4
  %55 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %54, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %185

56:                                               ; preds = %21
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %185

57:                                               ; preds = %28
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %58 = icmp eq ptr %0, null
  br i1 %58, label %59, label %83

59:                                               ; preds = %57, %32
  %60 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %60) #15
  %61 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %22) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %60) #15
  %62 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #15, !srcloc !18
  %63 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #15, !srcloc !22
  %64 = extractvalue { i32, i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = icmp sgt i32 %64, 0
  br i1 %67, label %185, label %68, !prof !11

68:                                               ; preds = %66
  tail call void @refcount_warn_saturate(ptr noundef %62, i32 noundef 3) #15
  br label %185

69:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %70 = load i8, ptr %29, align 4
  %71 = icmp eq i8 %70, 5
  br i1 %71, label %73, label %72, !prof !11

72:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %73

73:                                               ; preds = %72, %69
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %74 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1
  %75 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %75, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  store volatile ptr %74, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  store volatile ptr %74, ptr @xfrm_state_gc_list, align 4
  %80 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %80, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %81 = load ptr, ptr @system_wq, align 4
  %82 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %81, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %185

83:                                               ; preds = %57
  %84 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %84) #15
  %85 = load i8, ptr %29, align 4
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %87, label %162, !prof !11

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 24
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  %91 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 24
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %90, label %100, label %94

94:                                               ; preds = %87
  br i1 %93, label %162, label %95

95:                                               ; preds = %94
  %96 = load i16, ptr %89, align 4
  %97 = load i16, ptr %92, align 4
  %98 = icmp eq i16 %96, %97
  br i1 %98, label %99, label %162

99:                                               ; preds = %95
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %92, ptr noundef nonnull align 4 dereferenceable(24) %89, i32 24, i1 false)
  br label %101

100:                                              ; preds = %87
  br i1 %93, label %101, label %162

101:                                              ; preds = %100, %99
  %102 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 26
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 26
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %107, ptr noundef nonnull align 4 dereferenceable(16) %103, i32 16, i1 false)
  br label %110

110:                                              ; preds = %109, %105, %101
  switch i8 %3, label %111 [
    i8 -1, label %117
    i8 108, label %117
    i8 51, label %117
    i8 50, label %117
  ]

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 8
  %113 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 8
  %114 = tail call i32 @bcmp(ptr noundef dereferenceable(56) %112, ptr noundef dereferenceable(56) %113, i32 56)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(56) %112, ptr noundef align 8 dereferenceable(56) %113, i32 56, i1 false)
  br label %117

117:                                              ; preds = %116, %111, %110, %110, %110, %110
  %118 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 15
  %119 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %118, ptr noundef align 8 dereferenceable(64) %119, i32 64, i1 false)
  %120 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 13, i32 2
  store i8 0, ptr %120, align 1
  %121 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 40
  tail call void @hrtimer_start_range_ns(ptr noundef %121, i64 noundef 1000000000, i64 noundef 0, i32 noundef 5) #15
  %122 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 39, i32 3
  %123 = load i64, ptr %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = tail call i32 @xfrm_state_check_expire(ptr noundef nonnull %22)
  br label %127

127:                                              ; preds = %125, %117
  %128 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 12
  %129 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 12, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i32, ptr %128, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 10
  %137 = load i32, ptr %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %135, %132, %127
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  %140 = load i32, ptr %129, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, ptr %128, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %142, %139
  %146 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 14, i32 12
  %147 = load i64, ptr %128, align 8
  store i64 %147, ptr %146, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 10
  %150 = load i32, ptr %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 10
  store i32 %150, ptr %153, align 8
  br label %154

154:                                              ; preds = %152, %148
  tail call fastcc void @__xfrm_state_bump_genids(ptr noundef nonnull %22)
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %155

155:                                              ; preds = %154, %135
  %156 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  store i8 5, ptr %156, align 4
  %157 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #15, !srcloc !18
  %158 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #15, !srcloc !22
  %159 = extractvalue { i32, i32, i32 } %158, 0
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %162, !prof !8

161:                                              ; preds = %155
  tail call void @refcount_warn_saturate(ptr noundef %157, i32 noundef 4) #15
  br label %162

162:                                              ; preds = %161, %155, %100, %95, %94, %83
  %163 = phi i32 [ -22, %100 ], [ -22, %83 ], [ 0, %155 ], [ 0, %161 ], [ -22, %95 ], [ -22, %94 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %84) #15
  %164 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %164) #15, !srcloc !18
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %164, ptr %164, i32 1, ptr elementtype(i32) %164) #15, !srcloc !22
  %166 = extractvalue { i32, i32, i32 } %165, 0
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %171, label %168

168:                                              ; preds = %162
  %169 = icmp sgt i32 %166, 0
  br i1 %169, label %185, label %170, !prof !11

170:                                              ; preds = %168
  tail call void @refcount_warn_saturate(ptr noundef %164, i32 noundef 3) #15
  br label %185

171:                                              ; preds = %162
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %172 = load i8, ptr %29, align 4
  %173 = icmp eq i8 %172, 5
  br i1 %173, label %175, label %174, !prof !11

174:                                              ; preds = %171
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %175

175:                                              ; preds = %174, %171
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %176 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1
  %177 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %177, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.hlist_node, ptr %177, i32 0, i32 1
  store volatile ptr %176, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %175
  store volatile ptr %176, ptr @xfrm_state_gc_list, align 4
  %182 = getelementptr inbounds %struct.xfrm_state, ptr %22, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %182, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %183 = load ptr, ptr @system_wq, align 4
  %184 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %183, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %185

185:                                              ; preds = %181, %170, %168, %79, %68, %66, %56, %52, %40, %38
  %186 = phi i32 [ -3, %56 ], [ 0, %66 ], [ 0, %68 ], [ 0, %79 ], [ %163, %168 ], [ %163, %170 ], [ %163, %181 ], [ -17, %38 ], [ -17, %40 ], [ -17, %52 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_check_expire(ptr noundef %0) #0 {
  %2 = alloca %struct.km_event, align 4
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 39
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 39, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i64 @ktime_get_real_seconds() #15
  store i64 %8, ptr %4, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, ptr %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 15, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 39, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 15, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %9
  %22 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  store i8 4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 40
  tail call void @hrtimer_start_range_ns(ptr noundef %23, i64 noundef 0, i64 noundef 0, i32 noundef 5) #15
  br label %50

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i64, ptr %11, align 8
  %30 = icmp ult i64 %10, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 15, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = icmp ult i64 %17, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %31, %28
  store i8 1, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  %36 = getelementptr inbounds %struct.km_event, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  store i32 24, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %37 = load volatile ptr, ptr @xfrm_km_list, align 4
  %38 = icmp eq ptr %37, @xfrm_km_list
  br i1 %38, label %49, label %39

39:                                               ; preds = %46, %35
  %40 = phi ptr [ %47, %46 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.xfrm_mgr, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 %42(ptr noundef %0, ptr noundef nonnull %2) #15
  br label %46

46:                                               ; preds = %44, %39
  %47 = load volatile ptr, ptr %40, align 4
  %48 = icmp eq ptr %47, @xfrm_km_list
  br i1 %48, label %49, label %39

49:                                               ; preds = %46, %35
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %50

50:                                               ; preds = %49, %31, %24, %21
  %51 = phi i32 [ -22, %21 ], [ 0, %49 ], [ 0, %31 ], [ 0, %24 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @km_state_expired(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.km_event, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #15
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 16, i1 false), !annotation !12
  store i32 %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.km_event, ptr %4, i32 0, i32 2
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.km_event, ptr %4, i32 0, i32 3
  store i32 24, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %8 = load volatile ptr, ptr @xfrm_km_list, align 4
  %9 = icmp eq ptr %8, @xfrm_km_list
  br i1 %9, label %20, label %10

10:                                               ; preds = %17, %3
  %11 = phi ptr [ %18, %17 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.xfrm_mgr, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 %13(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %17

17:                                               ; preds = %15, %10
  %18 = load volatile ptr, ptr %11, align 4
  %19 = icmp eq ptr %18, @xfrm_km_list
  br i1 %19, label %20, label %10

20:                                               ; preds = %17, %3
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_lookup(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %7 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_state_lookup_byaddr(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #15
  %8 = tail call fastcc ptr @__xfrm_state_lookup_byaddr(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef zeroext %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #15
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__xfrm_state_lookup_byaddr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = tail call fastcc i32 @__xfrm_src_hash(ptr noundef %2, ptr noundef %3, i16 noundef zeroext %5, i32 noundef %8) #15
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.hlist_head, ptr %11, i32 %9
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = getelementptr i8, ptr %13, i32 -8
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %123, label %18

18:                                               ; preds = %6
  %19 = icmp eq i16 %5, 10
  %20 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %21 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %22 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %23 = getelementptr [4 x i32], ptr %3, i32 0, i32 1
  %24 = getelementptr [4 x i32], ptr %3, i32 0, i32 2
  %25 = getelementptr [4 x i32], ptr %3, i32 0, i32 3
  br label %26

26:                                               ; preds = %116, %18
  %27 = phi ptr [ %15, %18 ], [ %120, %116 ]
  %28 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 7
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, %5
  br i1 %30, label %31, label %116

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, %4
  br i1 %34, label %35, label %116

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %2, align 4
  br i1 %19, label %39, label %57

39:                                               ; preds = %35
  %40 = xor i32 %38, %37
  %41 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %20, align 4
  %44 = xor i32 %43, %42
  %45 = or i32 %44, %40
  %46 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %21, align 4
  %49 = xor i32 %48, %47
  %50 = or i32 %45, %49
  %51 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 7, i32 0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %22, align 4
  %54 = xor i32 %53, %52
  %55 = or i32 %50, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %116

57:                                               ; preds = %35
  %58 = icmp eq i32 %37, %38
  br i1 %58, label %80, label %116

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %3, align 4
  %63 = xor i32 %62, %61
  %64 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = load i32, ptr %23, align 4
  %67 = xor i32 %66, %65
  %68 = or i32 %67, %63
  %69 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %24, align 4
  %72 = xor i32 %71, %70
  %73 = or i32 %68, %72
  %74 = getelementptr %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %25, align 4
  %77 = xor i32 %76, %75
  %78 = or i32 %73, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %116

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 14, i32 8
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %3, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %80, %59
  %86 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 9
  %87 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 9, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %1
  %90 = load i32, ptr %86, align 8
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 5
  %94 = load volatile i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %106, %92
  %97 = phi i32 [ %104, %106 ], [ %94, %92 ]
  %98 = add i32 %97, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #15, !srcloc !18
  br label %99

99:                                               ; preds = %99, %96
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 %97, i32 %98, ptr elementtype(i32) %93) #15, !srcloc !29
  %101 = extractvalue { i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %99

103:                                              ; preds = %99
  %104 = extractvalue { i32, i32 } %100, 1
  %105 = icmp eq i32 %104, %97
  br i1 %105, label %108, label %106, !prof !11

106:                                              ; preds = %103
  %107 = icmp eq i32 %104, 0
  br i1 %107, label %108, label %96

108:                                              ; preds = %106, %103, %92
  %109 = phi i32 [ 0, %92 ], [ %97, %103 ], [ 0, %106 ]
  %110 = add i32 %109, 1
  %111 = or i32 %110, %109
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %114, label %113, !prof !11

113:                                              ; preds = %108
  tail call void @refcount_warn_saturate(ptr noundef %93, i32 noundef 0) #15
  br label %114

114:                                              ; preds = %113, %108
  %115 = icmp eq i32 %109, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %114, %85, %80, %59, %57, %39, %31, %26
  %117 = getelementptr inbounds %struct.xfrm_state, ptr %27, i32 0, i32 2
  %118 = load volatile ptr, ptr %117, align 8
  %119 = icmp eq ptr %118, null
  %120 = getelementptr i8, ptr %118, i32 -8
  %121 = icmp eq ptr %120, null
  %122 = or i1 %119, %121
  br i1 %122, label %123, label %26

123:                                              ; preds = %116, %114, %6
  %124 = phi ptr [ null, %6 ], [ null, %116 ], [ %27, %114 ]
  ret ptr %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_find_acq(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, i32 noundef %8, i16 noundef zeroext %9) #0 {
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %11) #15
  %12 = tail call fastcc ptr @__find_acq_core(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %9, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  tail call void @_raw_spin_unlock_bh(ptr noundef %11) #15
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xfrm_find_acq_byseq(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %2, 10
  %8 = xor i32 %7, %2
  %9 = lshr i32 %2, 20
  %10 = xor i32 %8, %9
  %11 = and i32 %6, %10
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.hlist_head, ptr %13, i32 %11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -24
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %54, label %20

20:                                               ; preds = %47, %3
  %21 = phi ptr [ %51, %47 ], [ %17, %3 ]
  %22 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 13, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 9
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 9, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %1
  %30 = load i32, ptr %26, align 8
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 13, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15, !srcloc !18
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15, !srcloc !24
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !8

41:                                               ; preds = %36
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %54, label %45, !prof !11

45:                                               ; preds = %41, %36
  %46 = phi i32 [ 2, %36 ], [ 1, %41 ]
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #15
  br label %54

47:                                               ; preds = %32, %25, %20
  %48 = getelementptr inbounds %struct.xfrm_state, ptr %21, i32 0, i32 4
  %49 = load volatile ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  %51 = getelementptr i8, ptr %49, i32 -24
  %52 = icmp eq ptr %51, null
  %53 = or i1 %50, %52
  br i1 %53, label %54, label %20

54:                                               ; preds = %47, %45, %41, %3
  %55 = phi ptr [ %21, %45 ], [ %21, %41 ], [ null, %3 ], [ null, %47 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #15
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_get_acqseq() #0 {
  br label %1

1:                                                ; preds = %1, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @xfrm_get_acqseq.acqseq) #15, !srcloc !18
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @xfrm_get_acqseq.acqseq, ptr nonnull @xfrm_get_acqseq.acqseq, i32 1, ptr nonnull elementtype(i32) @xfrm_get_acqseq.acqseq) #15, !srcloc !32
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %1, label %5

5:                                                ; preds = %1
  %6 = extractvalue { i32, i32 } %2, 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @verify_spi_info(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) #7 {
  switch i8 %0, label %9 [
    i8 51, label %6
    i8 50, label %6
    i8 108, label %4
  ]

4:                                                ; preds = %3
  %5 = icmp ugt i32 %2, 65535
  br i1 %5, label %9, label %6

6:                                                ; preds = %4, %3, %3
  %7 = icmp ugt i32 %1, %2
  %8 = select i1 %7, i32 -22, i32 0
  br label %9

9:                                                ; preds = %6, %4, %3
  %10 = phi i32 [ -22, %4 ], [ -22, %3 ], [ %8, %6 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_alloc_spi(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 9, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 5
  br i1 %13, label %182, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %182

19:                                               ; preds = %14
  %20 = icmp eq i32 %2, %1
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = sub i32 %2, %1
  %23 = add i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %182, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  br label %58

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %32 = load i16, ptr %31, align 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %33 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %9, ptr noundef %15, i32 noundef %4, i8 noundef zeroext %30, i16 noundef zeroext %32) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %94, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #15, !srcloc !18
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #15, !srcloc !22
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %182, label %42, !prof !11

42:                                               ; preds = %40
  tail call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #15
  br label %182

43:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %44 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 13, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 5
  br i1 %46, label %48, label %47, !prof !11

47:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %48

48:                                               ; preds = %47, %43
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %49 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 1
  %50 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %50, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  store volatile ptr %49, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %48
  store volatile ptr %49, ptr @xfrm_state_gc_list, align 4
  %55 = getelementptr inbounds %struct.xfrm_state, ptr %33, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %55, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %56 = load ptr, ptr @system_wq, align 4
  %57 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %56, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %182

58:                                               ; preds = %91, %25
  %59 = phi i32 [ 0, %25 ], [ %92, %91 ]
  %60 = tail call i32 @prandom_u32() #15
  %61 = urem i32 %60, %23
  %62 = add i32 %61, %1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = load i8, ptr %26, align 4
  %65 = load i16, ptr %27, align 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %66 = tail call fastcc ptr @__xfrm_state_lookup(ptr noundef nonnull @init_net, i32 noundef %9, ptr noundef %15, i32 noundef %63, i8 noundef zeroext %64, i16 noundef zeroext %65) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.xfrm_state, ptr %66, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #15, !srcloc !18
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #15, !srcloc !22
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %91, label %75, !prof !11

75:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef %69, i32 noundef 3) #15
  br label %91

76:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %77 = getelementptr inbounds %struct.xfrm_state, ptr %66, i32 0, i32 13, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 5
  br i1 %79, label %81, label %80, !prof !11

80:                                               ; preds = %76
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %81

81:                                               ; preds = %80, %76
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %82 = getelementptr inbounds %struct.xfrm_state, ptr %66, i32 0, i32 1
  %83 = load ptr, ptr @xfrm_state_gc_list, align 4
  store volatile ptr %83, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  store volatile ptr %82, ptr %86, align 4
  br label %87

87:                                               ; preds = %85, %81
  store volatile ptr %82, ptr @xfrm_state_gc_list, align 4
  %88 = getelementptr inbounds %struct.xfrm_state, ptr %66, i32 0, i32 1, i32 0, i32 1
  store volatile ptr @xfrm_state_gc_list, ptr %88, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %89 = load ptr, ptr @system_wq, align 4
  %90 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %89, ptr noundef nonnull @xfrm_state_gc_work) #15
  br label %91

91:                                               ; preds = %87, %75, %73
  %92 = add nuw i32 %59, 1
  %93 = icmp eq i32 %59, %22
  br i1 %93, label %182, label %58

94:                                               ; preds = %58, %28
  %95 = phi i32 [ %4, %28 ], [ %63, %58 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %182, label %97

97:                                               ; preds = %94
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  store i32 %95, ptr %16, align 8
  %98 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %99 = load i8, ptr %98, align 4
  %100 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %101 = load i16, ptr %100, align 2
  %102 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 5), align 8
  %103 = zext i8 %99 to i32
  %104 = xor i32 %95, %103
  switch i16 %101, label %166 [
    i16 2, label %105
    i16 10, label %109
  ]

105:                                              ; preds = %97
  %106 = load i32, ptr %15, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #15
  %108 = xor i32 %107, %104
  br label %166

109:                                              ; preds = %97
  %110 = load i32, ptr %15, align 4
  %111 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, -559038721
  %114 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, -559038721
  %117 = sub i32 %110, %115
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 4) #15
  %119 = xor i32 %118, %117
  %120 = add i32 %116, %113
  %121 = sub i32 %113, %119
  %122 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 6) #15
  %123 = xor i32 %121, %122
  %124 = add i32 %119, %120
  %125 = sub i32 %120, %123
  %126 = tail call i32 @llvm.fshl.i32(i32 %123, i32 %123, i32 8) #15
  %127 = xor i32 %125, %126
  %128 = add i32 %123, %124
  %129 = sub i32 %124, %127
  %130 = tail call i32 @llvm.fshl.i32(i32 %127, i32 %127, i32 16) #15
  %131 = xor i32 %129, %130
  %132 = add i32 %127, %128
  %133 = sub i32 %128, %131
  %134 = tail call i32 @llvm.fshl.i32(i32 %131, i32 %131, i32 19) #15
  %135 = xor i32 %133, %134
  %136 = add i32 %131, %132
  %137 = sub i32 %132, %135
  %138 = tail call i32 @llvm.fshl.i32(i32 %135, i32 %135, i32 4) #15
  %139 = xor i32 %137, %138
  %140 = add i32 %135, %136
  %141 = getelementptr %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 0, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %136, %142
  %144 = xor i32 %139, %140
  %145 = tail call i32 @llvm.fshl.i32(i32 %140, i32 %140, i32 14) #15
  %146 = sub i32 %144, %145
  %147 = xor i32 %146, %143
  %148 = tail call i32 @llvm.fshl.i32(i32 %146, i32 %146, i32 11) #15
  %149 = sub i32 %147, %148
  %150 = xor i32 %149, %140
  %151 = tail call i32 @llvm.fshl.i32(i32 %149, i32 %149, i32 25) #15
  %152 = sub i32 %150, %151
  %153 = xor i32 %152, %146
  %154 = tail call i32 @llvm.fshl.i32(i32 %152, i32 %152, i32 16) #15
  %155 = sub i32 %153, %154
  %156 = xor i32 %155, %149
  %157 = tail call i32 @llvm.fshl.i32(i32 %155, i32 %155, i32 4) #15
  %158 = sub i32 %156, %157
  %159 = xor i32 %158, %152
  %160 = tail call i32 @llvm.fshl.i32(i32 %158, i32 %158, i32 14) #15
  %161 = sub i32 %159, %160
  %162 = xor i32 %161, %155
  %163 = tail call i32 @llvm.fshl.i32(i32 %161, i32 %161, i32 24) #15
  %164 = sub i32 %162, %163
  %165 = xor i32 %164, %104
  br label %166

166:                                              ; preds = %109, %105, %97
  %167 = phi i32 [ %104, %97 ], [ %165, %109 ], [ %108, %105 ]
  %168 = lshr i32 %167, 10
  %169 = xor i32 %168, %167
  %170 = lshr i32 %167, 20
  %171 = xor i32 %169, %170
  %172 = and i32 %171, %102
  %173 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3
  %174 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 3), align 16
  %175 = getelementptr %struct.hlist_head, ptr %174, i32 %172
  %176 = load ptr, ptr %175, align 4
  store ptr %176, ptr %173, align 4
  %177 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 3, i32 1
  store volatile ptr %175, ptr %177, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %173, ptr %175, align 4
  %178 = icmp eq ptr %176, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %166
  %180 = getelementptr inbounds %struct.hlist_node, ptr %176, i32 0, i32 1
  store volatile ptr %173, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %166
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 28)) #15
  br label %182

182:                                              ; preds = %181, %94, %91, %54, %42, %40, %21, %14, %3
  %183 = phi i32 [ -2, %3 ], [ 0, %14 ], [ 0, %181 ], [ -2, %94 ], [ -2, %40 ], [ -2, %42 ], [ -2, %54 ], [ -2, %21 ], [ -2, %91 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #15
  ret i32 %183
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_walk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.xfrm_state_walk, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load volatile ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %126, label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #15
  %14 = load volatile ptr, ptr %1, align 4
  %15 = icmp eq ptr %14, %1
  %16 = select i1 %15, ptr %12, ptr %1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %116, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.xfrm_state_walk, ptr %1, i32 0, i32 3
  %21 = getelementptr inbounds %struct.xfrm_state_walk, ptr %1, i32 0, i32 5
  br label %22

22:                                               ; preds = %113, %19
  %23 = phi ptr [ %17, %19 ], [ %114, %113 ]
  %24 = getelementptr inbounds %struct.xfrm_state_walk, ptr %23, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 5
  br i1 %26, label %113, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %23, i32 -140
  %29 = getelementptr i8, ptr %23, i32 -80
  %30 = load i8, ptr %29, align 4
  %31 = load i8, ptr %20, align 2
  %32 = icmp eq i8 %31, 0
  %33 = icmp eq i8 %30, %31
  %34 = or i1 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = icmp eq i8 %31, -1
  br i1 %36, label %37, label %113

37:                                               ; preds = %35
  switch i8 %30, label %113 [
    i8 108, label %38
    i8 51, label %38
    i8 50, label %38
  ]

38:                                               ; preds = %37, %37, %37, %27
  %39 = load ptr, ptr %21, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %99, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.xfrm_address_filter, ptr %39, i32 0, i32 2
  %43 = load i16, ptr %42, align 4
  switch i16 %43, label %48 [
    i16 2, label %44
    i16 10, label %44
  ]

44:                                               ; preds = %41, %41
  %45 = getelementptr i8, ptr %23, i32 30
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, %43
  br i1 %47, label %48, label %113

48:                                               ; preds = %44, %41
  %49 = getelementptr i8, ptr %23, i32 32
  %50 = getelementptr inbounds %struct.xfrm_address_filter, ptr %39, i32 0, i32 3
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = lshr i32 %52, 5
  %54 = and i32 %52, 31
  %55 = icmp ult i8 %51, 32
  br i1 %55, label %60, label %56

56:                                               ; preds = %48
  %57 = shl nuw nsw i32 %53, 2
  %58 = tail call i32 @bcmp(ptr %49, ptr nonnull %39, i32 %57) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %56, %48
  %61 = icmp eq i32 %54, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %60
  %63 = sub nuw nsw i32 32, %54
  %64 = shl nsw i32 -1, %63
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  %66 = getelementptr i32, ptr %49, i32 %53
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i32, ptr %39, i32 %53
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %67
  %71 = and i32 %70, %65
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %62, %60
  %74 = getelementptr i8, ptr %23, i32 -100
  %75 = getelementptr inbounds %struct.xfrm_address_filter, ptr %39, i32 0, i32 1
  %76 = getelementptr inbounds %struct.xfrm_address_filter, ptr %39, i32 0, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, 5
  %80 = and i32 %78, 31
  %81 = icmp ult i8 %77, 32
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = shl nuw nsw i32 %79, 2
  %84 = tail call i32 @bcmp(ptr %74, ptr %75, i32 %83) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %82, %73
  %87 = icmp eq i32 %80, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %86
  %89 = sub nuw nsw i32 32, %80
  %90 = shl nsw i32 -1, %89
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #15
  %92 = getelementptr i32, ptr %74, i32 %79
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr i32, ptr %75, i32 %79
  %95 = load i32, ptr %94, align 4
  %96 = xor i32 %95, %93
  %97 = and i32 %96, %91
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %88, %86, %38
  %100 = load i32, ptr %5, align 4
  %101 = tail call i32 %2(ptr noundef %28, i32 noundef %100, ptr noundef %3) #15
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %1, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %107, align 4
  store volatile ptr %106, ptr %105, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  store ptr %1, ptr %108, align 4
  store ptr %23, ptr %1, align 4
  store ptr %109, ptr %104, align 4
  store volatile ptr %1, ptr %109, align 4
  br label %124

110:                                              ; preds = %99
  %111 = load i32, ptr %5, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr %5, align 4
  br label %113

113:                                              ; preds = %110, %88, %82, %62, %56, %44, %37, %35, %22
  %114 = load ptr, ptr %23, align 4
  %115 = icmp eq ptr %114, %12
  br i1 %115, label %116, label %22

116:                                              ; preds = %113, %11
  %117 = load i32, ptr %5, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %1, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store volatile ptr %1, ptr %1, align 4
  store ptr %1, ptr %120, align 4
  br label %124

124:                                              ; preds = %119, %116, %103
  %125 = phi i32 [ %101, %103 ], [ 0, %119 ], [ -2, %116 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #15
  br label %126

126:                                              ; preds = %124, %8
  %127 = phi i32 [ %125, %124 ], [ 0, %8 ]
  ret i32 %127
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_walk_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #9 {
  store volatile ptr %0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xfrm_state_walk, ptr %0, i32 0, i32 3
  store i8 %1, ptr %5, align 2
  %6 = getelementptr inbounds %struct.xfrm_state_walk, ptr %0, i32 0, i32 1
  store i8 5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xfrm_state_walk, ptr %0, i32 0, i32 4
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xfrm_state_walk, ptr %0, i32 0, i32 5
  store ptr %2, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_walk_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm_state_walk, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #15
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 28
  tail call void @_raw_spin_lock_bh(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %8) #15
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @km_policy_notify(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %4 = load volatile ptr, ptr @xfrm_km_list, align 4
  %5 = icmp eq ptr %4, @xfrm_km_list
  br i1 %5, label %16, label %6

6:                                                ; preds = %13, %3
  %7 = phi ptr [ %14, %13 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.xfrm_mgr, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %13

13:                                               ; preds = %11, %6
  %14 = load volatile ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, @xfrm_km_list
  br i1 %15, label %16, label %6

16:                                               ; preds = %13, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @km_state_notify(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %3 = load volatile ptr, ptr @xfrm_km_list, align 4
  %4 = icmp eq ptr %3, @xfrm_km_list
  br i1 %4, label %15, label %5

5:                                                ; preds = %12, %2
  %6 = phi ptr [ %13, %12 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.xfrm_mgr, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #15
  br label %12

12:                                               ; preds = %10, %5
  %13 = load volatile ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, @xfrm_km_list
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @km_new_mapping(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = udiv i32 %8, 100
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 8
  %12 = sub i32 %9, %11
  %13 = icmp ugt i32 %12, %5
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 21
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %2
  br i1 %17, label %55, label %18

18:                                               ; preds = %14, %7
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 21
  store i16 %2, ptr %19, align 4
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = udiv i32 %20, 100
  store i32 %21, ptr %10, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %22

22:                                               ; preds = %33, %18
  %23 = phi ptr [ @xfrm_km_list, %18 ], [ %25, %33 ]
  %24 = phi i32 [ -22, %18 ], [ %34, %33 ]
  %25 = load volatile ptr, ptr %23, align 4
  %26 = icmp eq ptr %25, @xfrm_km_list
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.xfrm_mgr, ptr %25, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #15
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %24, %27 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %22
  %37 = phi i32 [ 0, %33 ], [ %24, %22 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %55

38:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  br label %39

39:                                               ; preds = %50, %38
  %40 = phi ptr [ @xfrm_km_list, %38 ], [ %42, %50 ]
  %41 = phi i32 [ -22, %38 ], [ %51, %50 ]
  %42 = load volatile ptr, ptr %40, align 4
  %43 = icmp eq ptr %42, @xfrm_km_list
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.xfrm_mgr, ptr %42, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i32 %46(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) #15
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %49, %48 ], [ %41, %44 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %39

53:                                               ; preds = %50, %39
  %54 = phi i32 [ 0, %50 ], [ %41, %39 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %55

55:                                               ; preds = %53, %36, %14
  %56 = phi i32 [ %37, %36 ], [ 0, %14 ], [ %54, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @km_policy_expired(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.km_event, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 16, i1 false), !annotation !12
  store i32 %2, ptr %5, align 4
  %7 = getelementptr inbounds %struct.km_event, ptr %5, i32 0, i32 2
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.km_event, ptr %5, i32 0, i32 3
  store i32 27, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %9 = load volatile ptr, ptr @xfrm_km_list, align 4
  %10 = icmp eq ptr %9, @xfrm_km_list
  br i1 %10, label %21, label %11

11:                                               ; preds = %18, %4
  %12 = phi ptr [ %19, %18 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.xfrm_mgr, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 %14(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #15
  br label %18

18:                                               ; preds = %16, %11
  %19 = load volatile ptr, ptr %12, align 4
  %20 = icmp eq ptr %19, @xfrm_km_list
  br i1 %20, label %21, label %11

21:                                               ; preds = %18, %4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @km_report(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %5 = load volatile ptr, ptr @xfrm_km_list, align 4
  %6 = icmp eq ptr %5, @xfrm_km_list
  br i1 %6, label %21, label %7

7:                                                ; preds = %17, %4
  %8 = phi ptr [ %19, %17 ], [ %5, %4 ]
  %9 = phi i32 [ %18, %17 ], [ -22, %4 ]
  %10 = getelementptr inbounds %struct.xfrm_mgr, ptr %8, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call i32 %11(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #15
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 %9
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %9, %7 ], [ %16, %13 ]
  %19 = load volatile ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, @xfrm_km_list
  br i1 %20, label %21, label %7

21:                                               ; preds = %17, %4
  %22 = phi i32 [ -22, %4 ], [ %18, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_user_policy(ptr noundef %0, i32 noundef %1, [2 x i32] %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %6 = extractvalue [2 x i32] %2, 0
  %7 = or i32 %6, %3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call i32 @xfrm_sk_policy_insert(ptr noundef %0, i32 noundef 0, ptr noundef null) #15
  %11 = tail call i32 @xfrm_sk_policy_insert(ptr noundef %0, i32 noundef 1, ptr noundef null) #15
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !34
  store volatile ptr null, ptr %14, align 8
  tail call void @dst_release(ptr noundef %15) #15
  br label %85

16:                                               ; preds = %4
  %17 = add i32 %3, -4097
  %18 = icmp ult i32 %17, -4096
  br i1 %18, label %85, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.returnaddress(i32 0) #15
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call ptr @__kmalloc_track_caller(i32 noundef %3, i32 noundef 1060032, i32 noundef %21) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %19
  %25 = inttoptr i32 %6 to ptr
  %26 = extractvalue [2 x i32] %2, 1
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 %3, i32 -1090519040) #16, !srcloc !35
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41, !prof !11

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #15
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #17, !srcloc !36
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #15, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !38
  %39 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %22, ptr noundef %25, i32 noundef %3) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #15, !srcloc !37
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41, !prof !11

41:                                               ; preds = %33, %29
  %42 = phi i32 [ %39, %33 ], [ %3, %29 ]
  %43 = sub i32 %3, %42
  %44 = getelementptr i8, ptr %22, i32 %43
  tail call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %42, i1 false) #15
  tail call void @kfree(ptr noundef nonnull %22) #15
  br label %48

45:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %22, ptr align 1 %25, i32 %3, i1 false) #15
  br label %46

46:                                               ; preds = %45, %33
  %47 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %46, %41, %19
  %49 = phi ptr [ %22, %46 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -14 to ptr), %41 ]
  %50 = ptrtoint ptr %49 to i32
  br label %85

51:                                               ; preds = %46
  store i32 -22, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %52 = load volatile ptr, ptr @xfrm_km_list, align 4
  %53 = icmp eq ptr %52, @xfrm_km_list
  br i1 %53, label %64, label %57

54:                                               ; preds = %57
  %55 = load volatile ptr, ptr %58, align 4
  %56 = icmp eq ptr %55, @xfrm_km_list
  br i1 %56, label %64, label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %55, %54 ], [ %52, %51 ]
  %59 = getelementptr inbounds %struct.xfrm_mgr, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = call ptr %60(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %22, i32 noundef %3, ptr noundef nonnull %5) #15
  %62 = load i32, ptr %5, align 4
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %54

64:                                               ; preds = %57, %54, %51
  %65 = phi ptr [ null, %51 ], [ %61, %57 ], [ %61, %54 ]
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %66 = load i32, ptr %5, align 4
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = call i32 @xfrm_sk_policy_insert(ptr noundef %0, i32 noundef %66, ptr noundef %65) #15
  %70 = getelementptr inbounds %struct.xfrm_policy, ptr %65, i32 0, i32 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #15, !srcloc !18
  %71 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #15, !srcloc !22
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = icmp sgt i32 %72, 0
  br i1 %75, label %78, label %76, !prof !11

76:                                               ; preds = %74
  call void @refcount_warn_saturate(ptr noundef %70, i32 noundef 3) #15
  br label %78

77:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  call void @xfrm_policy_destroy(ptr noundef %65) #15
  br label %78

78:                                               ; preds = %77, %76, %74
  %79 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  %82 = load ptr, ptr %81, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !34
  store volatile ptr null, ptr %81, align 8
  call void @dst_release(ptr noundef %82) #15
  store i32 0, ptr %5, align 4
  br label %83

83:                                               ; preds = %78, %64
  call void @kfree(ptr noundef nonnull %22) #15
  %84 = load i32, ptr %5, align 4
  br label %85

85:                                               ; preds = %83, %48, %16, %9
  %86 = phi i32 [ %50, %48 ], [ %84, %83 ], [ 0, %9 ], [ -90, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_sk_policy_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_register_km(ptr noundef %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_km_lock) #15
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @xfrm_km_list, i32 0, i32 1), align 4
  store ptr @xfrm_km_list, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  store volatile ptr %0, ptr %2, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @xfrm_km_list, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_km_lock) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_unregister_km(ptr nocapture noundef %0) #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_km_lock) #15
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_km_lock) #15
  tail call void @synchronize_rcu() #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_register_afinfo(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp ugt i8 %2, 45
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2507, i32 noundef 9, ptr noundef null) #15
  br label %17

5:                                                ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_afinfo_lock) #15
  %6 = load i8, ptr %0, align 4
  %7 = zext i8 %6 to i32
  %8 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15, !prof !11

11:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !40
  %12 = load i8, ptr %0, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %13
  store volatile ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i32 [ 0, %11 ], [ -17, %5 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_afinfo_lock) #15
  br label %17

17:                                               ; preds = %15, %4
  %18 = phi i32 [ -97, %4 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_unregister_afinfo(ptr noundef readonly %0) #0 {
  %2 = load i8, ptr %0, align 4
  %3 = zext i8 %2 to i32
  %4 = icmp ugt i8 %2, 45
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2524, i32 noundef 9, ptr noundef null) #15
  br label %19

6:                                                ; preds = %1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_afinfo_lock) #15
  %7 = load i8, ptr %0, align 4
  %8 = zext i8 %7 to i32
  %9 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !8

12:                                               ; preds = %6
  %13 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store volatile ptr null, ptr %9, align 4
  br label %17

17:                                               ; preds = %16, %12, %6
  %18 = phi i32 [ 0, %16 ], [ 0, %6 ], [ -22, %12 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_afinfo_lock) #15
  tail call void @synchronize_rcu() #15
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ -97, %5 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @xfrm_state_afinfo_get_rcu(i32 noundef %0) #10 {
  %2 = icmp ugt i32 %0, 45
  br i1 %2, label %6, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %0
  %5 = load volatile ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_flush_gc() #0 {
  %1 = tail call zeroext i1 @flush_work(ptr noundef nonnull @xfrm_state_gc_work) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_delete_tunnel(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 28
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %10) #15
  %11 = tail call i32 @__xfrm_state_delete(ptr noundef nonnull %3) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %10) #15
  br label %12

12:                                               ; preds = %9, %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !18
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #15, !srcloc !41
  %14 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #15, !srcloc !18
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #15, !srcloc !22
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %27, label %20, !prof !11

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #15
  br label %27

21:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %22 = getelementptr inbounds %struct.xfrm_state, ptr %3, i32 0, i32 13, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 5
  br i1 %24, label %26, label %25, !prof !11

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %21
  tail call void @synchronize_rcu() #15
  tail call fastcc void @___xfrm_state_destroy(ptr noundef nonnull %3) #15
  br label %27

27:                                               ; preds = %26, %20, %18
  store ptr null, ptr %2, align 4
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  %4 = load volatile ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 2
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.xfrm_type, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 50
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %1, %16
  br label %51

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 51
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.crypto_aead, ptr %20, i32 0, i32 3, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.crypto_alg, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 3
  %26 = and i32 %25, -4
  %27 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %28 = load i8, ptr %27, align 4
  switch i8 %28, label %36 [
    i8 0, label %29
    i8 4, label %29
    i8 1, label %39
  ]

29:                                               ; preds = %18, %18
  %30 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, 10
  %33 = select i1 %32, i32 40, i32 0
  %34 = icmp eq i16 %31, 2
  %35 = select i1 %34, i32 20, i32 %33
  br label %39

36:                                               ; preds = %18
  %37 = load i1, ptr @xfrm_state_mtu.__already_done, align 1
  br i1 %37, label %39, label %38, !prof !11

38:                                               ; preds = %36
  store i1 true, ptr @xfrm_state_mtu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2606, i32 noundef 9, ptr noundef null) #15
  br label %39

39:                                               ; preds = %38, %36, %29, %18
  %40 = phi i32 [ 0, %18 ], [ 0, %38 ], [ 0, %36 ], [ %35, %29 ]
  %41 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %20, align 64
  %44 = add i32 %40, %42
  %45 = add i32 %44, %43
  %46 = sub i32 %1, %45
  %47 = sub i32 0, %26
  %48 = and i32 %46, %47
  %49 = add nsw i32 %40, -2
  %50 = add i32 %49, %48
  br label %51

51:                                               ; preds = %39, %14
  %52 = phi i32 [ %17, %14 ], [ %50, %39 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xfrm_init_state(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 7
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i16 %5, 2
  %8 = xor i1 %7, true
  %9 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 32), align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = or i8 %14, 4
  store i8 %15, ptr %13, align 1
  br label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 8, i32 6
  %18 = load i16, ptr %17, align 8
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp ugt i8 %21, 4
  br i1 %19, label %42, label %24

24:                                               ; preds = %16
  br i1 %23, label %195, label %25, !prof !8

25:                                               ; preds = %24
  switch i16 %18, label %195 [
    i16 2, label %26
    i16 10, label %29
  ]

26:                                               ; preds = %25
  %27 = add nsw i32 %22, -4
  %28 = icmp ult i32 %27, -2
  br i1 %28, label %31, label %195

29:                                               ; preds = %25
  %30 = icmp eq i8 %21, 3
  br i1 %30, label %195, label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ @xfrm6_mode_map, %29 ], [ @xfrm4_mode_map, %26 ]
  %33 = getelementptr [5 x %struct.xfrm_mode], ptr %32, i32 0, i32 %22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %195, label %35

35:                                               ; preds = %31
  %36 = getelementptr [5 x %struct.xfrm_mode], ptr %32, i32 0, i32 %22, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 1
  %39 = icmp ne i8 %38, 0
  %40 = icmp eq i16 %5, %18
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %76, label %195

42:                                               ; preds = %16
  br i1 %23, label %195, label %43, !prof !8

43:                                               ; preds = %42
  switch i16 %5, label %195 [
    i16 2, label %44
    i16 10, label %47
  ]

44:                                               ; preds = %43
  %45 = add nsw i32 %22, -4
  %46 = icmp ult i32 %45, -2
  br i1 %46, label %49, label %195

47:                                               ; preds = %43
  %48 = icmp eq i8 %21, 3
  br i1 %48, label %195, label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ @xfrm6_mode_map, %47 ], [ @xfrm4_mode_map, %44 ]
  %51 = getelementptr [5 x %struct.xfrm_mode], ptr %50, i32 0, i32 %22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %195, label %53

53:                                               ; preds = %49
  %54 = getelementptr [5 x %struct.xfrm_mode], ptr %50, i32 0, i32 %22, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %195, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %59, ptr noundef nonnull align 1 dereferenceable(3) %51, i32 3, i1 false)
  br i1 %7, label %63, label %60

60:                                               ; preds = %58
  %61 = add nsw i32 %22, -4
  %62 = icmp ult i32 %61, -2
  br i1 %62, label %65, label %79

63:                                               ; preds = %58
  %64 = icmp eq i8 %21, 3
  br i1 %64, label %79, label %65

65:                                               ; preds = %63, %60
  %66 = phi ptr [ @xfrm6_mode_map, %63 ], [ @xfrm4_mode_map, %60 ]
  %67 = getelementptr [5 x %struct.xfrm_mode], ptr %66, i32 0, i32 %22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = getelementptr [5 x %struct.xfrm_mode], ptr %66, i32 0, i32 %22, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 47
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %75, ptr noundef nonnull align 1 dereferenceable(3) %67, i32 3, i1 false)
  br label %79

76:                                               ; preds = %35
  %77 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 46
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(3) %77, ptr noundef nonnull align 1 dereferenceable(3) %33, i32 3, i1 false)
  %78 = icmp ugt i16 %5, 45
  br i1 %78, label %136, label %79, !prof !8

79:                                               ; preds = %76, %74, %69, %65, %63, %60
  %80 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 7, i32 2
  %81 = load i8, ptr %80, align 4
  %82 = getelementptr [46 x ptr], ptr @xfrm_state_afinfo, i32 0, i32 %6
  %83 = zext i8 %81 to i32
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %84 = load volatile ptr, ptr %82, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87, !prof !8

86:                                               ; preds = %109, %79
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %136

87:                                               ; preds = %79
  switch i8 %81, label %109 [
    i8 108, label %88
    i8 51, label %90
    i8 50, label %92
    i8 4, label %94
    i8 60, label %96
    i8 43, label %98
    i8 41, label %100
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 6
  br label %102

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 7
  br label %102

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 3
  br label %102

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 4
  br label %102

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 9
  br label %102

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 8
  br label %102

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %84, i32 0, i32 5
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92, %90, %88
  %103 = phi ptr [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ]
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %104, align 4
  %108 = tail call zeroext i1 @try_module_get(ptr noundef %107) #15
  br i1 %108, label %138, label %109, !prof !11

109:                                              ; preds = %106, %102, %87
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %110 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %83) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %111 = load volatile ptr, ptr %82, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %86, label %113, !prof !8

113:                                              ; preds = %109
  switch i8 %81, label %135 [
    i8 108, label %126
    i8 51, label %124
    i8 50, label %122
    i8 4, label %120
    i8 60, label %118
    i8 43, label %116
    i8 41, label %114
  ]

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 5
  br label %128

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 8
  br label %128

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 9
  br label %128

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 4
  br label %128

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 3
  br label %128

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 7
  br label %128

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %111, i32 0, i32 6
  br label %128

128:                                              ; preds = %126, %124, %122, %120, %118, %116, %114
  %129 = phi ptr [ %115, %114 ], [ %117, %116 ], [ %119, %118 ], [ %121, %120 ], [ %123, %122 ], [ %125, %124 ], [ %127, %126 ]
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %130, align 4
  %134 = tail call zeroext i1 @try_module_get(ptr noundef %133) #15
  br i1 %134, label %138, label %135, !prof !11

135:                                              ; preds = %132, %128, %113
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %136

136:                                              ; preds = %135, %86, %76
  %137 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  store ptr null, ptr %137, align 8
  br label %195

138:                                              ; preds = %132, %106
  %139 = phi ptr [ %104, %106 ], [ %130, %132 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %140 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 45
  store ptr %139, ptr %140, align 8
  %141 = load i8, ptr %80, align 4
  %142 = zext i8 %141 to i32
  %143 = icmp eq i8 %141, 50
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %144 = load volatile ptr, ptr %82, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146, !prof !8

146:                                              ; preds = %138
  %147 = xor i1 %2, true
  br label %149

148:                                              ; preds = %164, %138
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  br label %168

149:                                              ; preds = %164, %146
  %150 = phi ptr [ %166, %164 ], [ %144, %146 ]
  %151 = phi i1 [ true, %164 ], [ %147, %146 ]
  br i1 %143, label %152, label %160

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.xfrm_state_afinfo, ptr %150, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load ptr, ptr %154, align 4
  %158 = tail call zeroext i1 @try_module_get(ptr noundef %157) #15
  %159 = select i1 %158, ptr %154, ptr null
  br label %160

160:                                              ; preds = %156, %152, %149
  %161 = phi ptr [ null, %152 ], [ %159, %156 ], [ null, %149 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !10
  %162 = icmp ne ptr %161, null
  %163 = or i1 %151, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.5, i32 noundef %6, i32 noundef %142) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !9
  %166 = load volatile ptr, ptr %82, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %148, label %149, !prof !8

168:                                              ; preds = %160, %148
  %169 = phi ptr [ null, %148 ], [ %161, %160 ]
  %170 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 49
  store ptr %169, ptr %170, align 8
  %171 = load ptr, ptr %140, align 8
  %172 = getelementptr inbounds %struct.xfrm_type, ptr %171, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = tail call i32 %173(ptr noundef %0) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 14, i32 1
  %178 = load i8, ptr %177, align 4
  %179 = zext i8 %178 to i32
  %180 = icmp ugt i8 %178, 4
  br i1 %180, label %195, label %181, !prof !8

181:                                              ; preds = %176
  switch i16 %5, label %195 [
    i16 2, label %182
    i16 10, label %185
  ]

182:                                              ; preds = %181
  %183 = add nsw i32 %179, -4
  %184 = icmp ult i32 %183, -2
  br i1 %184, label %187, label %195

185:                                              ; preds = %181
  %186 = icmp eq i8 %178, 3
  br i1 %186, label %195, label %187

187:                                              ; preds = %185, %182
  %188 = phi ptr [ @xfrm6_mode_map, %185 ], [ @xfrm4_mode_map, %182 ]
  %189 = getelementptr [5 x %struct.xfrm_mode], ptr %188, i32 0, i32 %179
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 48
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %192, ptr noundef nonnull align 1 dereferenceable(3) %189, i32 3, i1 false)
  br i1 %1, label %193, label %195

193:                                              ; preds = %191
  %194 = tail call i32 @xfrm_init_replay(ptr noundef %0) #15
  br label %195

195:                                              ; preds = %193, %191, %187, %185, %182, %181, %176, %168, %136, %53, %49, %47, %44, %43, %42, %35, %31, %29, %26, %25, %24
  %196 = phi i32 [ -93, %31 ], [ %174, %168 ], [ %194, %193 ], [ 0, %191 ], [ -93, %187 ], [ -93, %53 ], [ -93, %49 ], [ -93, %136 ], [ -93, %24 ], [ -93, %25 ], [ -93, %26 ], [ -93, %29 ], [ -93, %42 ], [ -93, %43 ], [ -93, %44 ], [ -93, %47 ], [ -93, %176 ], [ -93, %181 ], [ -93, %182 ], [ -93, %185 ], [ -93, %35 ]
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfrm_init_replay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xfrm_init_state(ptr noundef %0) #0 {
  %2 = tail call i32 @__xfrm_init_state(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.xfrm_state, ptr %0, i32 0, i32 13, i32 1
  store i8 2, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @xfrm_state_init(ptr noundef %0) local_unnamed_addr #11 section ".init.text" {
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 560, i32 noundef 8, i32 noundef 270336, ptr noundef null) #15
  store ptr %2, ptr @xfrm_state_cache, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #15
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  store ptr %5, ptr %6, align 8
  %7 = icmp eq ptr %5, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #15
  %10 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #15
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 3
  store ptr %13, ptr %14, align 16
  %15 = icmp eq ptr %13, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @xfrm_hash_alloc(i32 noundef 32) #15
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 4
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  store i32 7, ptr %21, align 8
  %22 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7
  store i32 -32, ptr %23, align 32
  %24 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7, i32 1, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7, i32 2
  store ptr @xfrm_hash_resize, ptr %26, align 4
  %27 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 28
  store i32 0, ptr %27, align 64
  %28 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 29
  store i32 0, ptr %28, align 4
  br label %35

29:                                               ; preds = %16
  %30 = load ptr, ptr %14, align 16
  tail call void @xfrm_hash_free(ptr noundef %30, i32 noundef 32) #15
  br label %31

31:                                               ; preds = %29, %12
  %32 = load ptr, ptr %10, align 4
  tail call void @xfrm_hash_free(ptr noundef %32, i32 noundef 32) #15
  br label %33

33:                                               ; preds = %31, %8
  %34 = load ptr, ptr %6, align 8
  tail call void @xfrm_hash_free(ptr noundef %34, i32 noundef 32) #15
  br label %35

35:                                               ; preds = %33, %20, %1
  %36 = phi i32 [ 0, %20 ], [ -12, %1 ], [ -12, %33 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_hash_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_hash_resize(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load i32, ptr %2, align 8
  %4 = shl i32 %3, 3
  %5 = add i32 %4, 8
  %6 = tail call ptr @xfrm_hash_alloc(i32 noundef %5) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %183, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @xfrm_hash_alloc(i32 noundef %5) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @xfrm_hash_free(ptr noundef nonnull %6, i32 noundef %5) #15
  br label %183

12:                                               ; preds = %8
  %13 = tail call ptr @xfrm_hash_alloc(i32 noundef %5) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @xfrm_hash_free(ptr noundef nonnull %6, i32 noundef %5) #15
  tail call void @xfrm_hash_free(ptr noundef nonnull %9, i32 noundef %5) #15
  br label %183

16:                                               ; preds = %12
  %17 = tail call ptr @xfrm_hash_alloc(i32 noundef %5) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @xfrm_hash_free(ptr noundef nonnull %6, i32 noundef %5) #15
  tail call void @xfrm_hash_free(ptr noundef nonnull %9, i32 noundef %5) #15
  tail call void @xfrm_hash_free(ptr noundef nonnull %13, i32 noundef %5) #15
  br label %183

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 608
  tail call void @_raw_spin_lock_bh(ptr noundef %21) #15
  %22 = getelementptr i8, ptr %0, i32 612
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !42
  %25 = lshr exact i32 %5, 2
  %26 = add nsw i32 %25, -1
  %27 = getelementptr i8, ptr %0, i32 -24
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %2, align 8
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %171

31:                                               ; preds = %166, %20
  %32 = phi i32 [ %167, %166 ], [ %29, %20 ]
  %33 = getelementptr %struct.hlist_head, ptr %28, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %166, label %36

36:                                               ; preds = %164, %31
  %37 = phi ptr [ %38, %164 ], [ %34, %31 ]
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 7
  %40 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 14
  %41 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 14, i32 8
  %42 = load i32, ptr %40, align 8
  %43 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 14, i32 7
  %44 = load i16, ptr %43, align 2
  %45 = tail call fastcc i32 @__xfrm_dst_hash(ptr noundef %39, ptr noundef %41, i32 noundef %42, i16 noundef zeroext %44, i32 noundef %26) #15
  %46 = getelementptr %struct.hlist_head, ptr %6, i32 %45
  %47 = load ptr, ptr %46, align 4
  store ptr %47, ptr %37, align 4
  %48 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %46, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %37, ptr %46, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  store volatile ptr %37, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %36
  %53 = load i16, ptr %43, align 2
  %54 = tail call fastcc i32 @__xfrm_src_hash(ptr noundef %39, ptr noundef %41, i16 noundef zeroext %53, i32 noundef %26) #15
  %55 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 2
  %56 = getelementptr %struct.hlist_head, ptr %9, i32 %54
  %57 = load ptr, ptr %56, align 4
  store ptr %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 2, i32 1
  store volatile ptr %56, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %55, ptr %56, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  store volatile ptr %55, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 1
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %147, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 2
  %68 = load i8, ptr %67, align 4
  %69 = load i16, ptr %43, align 2
  %70 = zext i8 %68 to i32
  %71 = xor i32 %64, %70
  switch i16 %69, label %133 [
    i16 2, label %72
    i16 10, label %76
  ]

72:                                               ; preds = %66
  %73 = load i32, ptr %39, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #15
  %75 = xor i32 %74, %71
  br label %133

76:                                               ; preds = %66
  %77 = load i32, ptr %39, align 4
  %78 = getelementptr %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 0, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -559038721
  %81 = getelementptr %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 0, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -559038721
  %84 = sub i32 %77, %82
  %85 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 4) #15
  %86 = xor i32 %85, %84
  %87 = add i32 %83, %80
  %88 = sub i32 %80, %86
  %89 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 6) #15
  %90 = xor i32 %88, %89
  %91 = add i32 %86, %87
  %92 = sub i32 %87, %90
  %93 = tail call i32 @llvm.fshl.i32(i32 %90, i32 %90, i32 8) #15
  %94 = xor i32 %92, %93
  %95 = add i32 %90, %91
  %96 = sub i32 %91, %94
  %97 = tail call i32 @llvm.fshl.i32(i32 %94, i32 %94, i32 16) #15
  %98 = xor i32 %96, %97
  %99 = add i32 %94, %95
  %100 = sub i32 %95, %98
  %101 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 19) #15
  %102 = xor i32 %100, %101
  %103 = add i32 %98, %99
  %104 = sub i32 %99, %102
  %105 = tail call i32 @llvm.fshl.i32(i32 %102, i32 %102, i32 4) #15
  %106 = xor i32 %104, %105
  %107 = add i32 %102, %103
  %108 = getelementptr %struct.xfrm_state, ptr %37, i32 0, i32 7, i32 0, i32 0, i32 3
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %103, %109
  %111 = xor i32 %106, %107
  %112 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 14) #15
  %113 = sub i32 %111, %112
  %114 = xor i32 %113, %110
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 11) #15
  %116 = sub i32 %114, %115
  %117 = xor i32 %116, %107
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 25) #15
  %119 = sub i32 %117, %118
  %120 = xor i32 %119, %113
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 16) #15
  %122 = sub i32 %120, %121
  %123 = xor i32 %122, %116
  %124 = tail call i32 @llvm.fshl.i32(i32 %122, i32 %122, i32 4) #15
  %125 = sub i32 %123, %124
  %126 = xor i32 %125, %119
  %127 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %125, i32 14) #15
  %128 = sub i32 %126, %127
  %129 = xor i32 %128, %122
  %130 = tail call i32 @llvm.fshl.i32(i32 %128, i32 %128, i32 24) #15
  %131 = sub i32 %129, %130
  %132 = xor i32 %131, %71
  br label %133

133:                                              ; preds = %76, %72, %66
  %134 = phi i32 [ %71, %66 ], [ %132, %76 ], [ %75, %72 ]
  %135 = lshr i32 %134, 10
  %136 = xor i32 %135, %134
  %137 = lshr i32 %134, 20
  %138 = xor i32 %136, %137
  %139 = and i32 %138, %26
  %140 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 3
  %141 = getelementptr %struct.hlist_head, ptr %13, i32 %139
  %142 = load ptr, ptr %141, align 4
  store ptr %142, ptr %140, align 4
  %143 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 3, i32 1
  store volatile ptr %141, ptr %143, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %140, ptr %141, align 4
  %144 = icmp eq ptr %142, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %133
  %146 = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  store volatile ptr %140, ptr %146, align 4
  br label %147

147:                                              ; preds = %145, %133, %62
  %148 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 13, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %147
  %152 = lshr i32 %149, 10
  %153 = xor i32 %152, %149
  %154 = lshr i32 %149, 20
  %155 = xor i32 %153, %154
  %156 = and i32 %155, %26
  %157 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 4
  %158 = getelementptr %struct.hlist_head, ptr %17, i32 %156
  %159 = load ptr, ptr %158, align 4
  store ptr %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.xfrm_state, ptr %37, i32 0, i32 4, i32 1
  store volatile ptr %158, ptr %160, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  store volatile ptr %157, ptr %158, align 4
  %161 = icmp eq ptr %159, null
  br i1 %161, label %164, label %162

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.hlist_node, ptr %159, i32 0, i32 1
  store volatile ptr %157, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %151, %147
  %165 = icmp eq ptr %38, null
  br i1 %165, label %166, label %36

166:                                              ; preds = %164, %31
  %167 = add nsw i32 %32, -1
  %168 = icmp sgt i32 %32, 0
  br i1 %168, label %31, label %169

169:                                              ; preds = %166
  %170 = load i32, ptr %2, align 8
  br label %171

171:                                              ; preds = %169, %20
  %172 = phi i32 [ %170, %169 ], [ %29, %20 ]
  %173 = getelementptr i8, ptr %0, i32 -20
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr i8, ptr %0, i32 -16
  %176 = load ptr, ptr %175, align 16
  %177 = getelementptr i8, ptr %0, i32 -12
  %178 = load ptr, ptr %177, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !43
  store volatile ptr %6, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !44
  store volatile ptr %9, ptr %173, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !45
  store volatile ptr %13, ptr %175, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !46
  store volatile ptr %17, ptr %177, align 4
  store i32 %26, ptr %2, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !47
  %179 = load i32, ptr %22, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %22, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %21) #15
  %181 = shl i32 %172, 2
  %182 = add i32 %181, 4
  tail call void @synchronize_rcu() #15
  tail call void @xfrm_hash_free(ptr noundef %28, i32 noundef %182) #15
  tail call void @xfrm_hash_free(ptr noundef %174, i32 noundef %182) #15
  tail call void @xfrm_hash_free(ptr noundef %176, i32 noundef %182) #15
  tail call void @xfrm_hash_free(ptr noundef %178, i32 noundef %182) #15
  br label %183

183:                                              ; preds = %171, %19, %15, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_hash_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xfrm_state_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 7
  %4 = tail call zeroext i1 @flush_work(ptr noundef %3) #15
  %5 = tail call zeroext i1 @flush_work(ptr noundef nonnull @xfrm_state_gc_work) #15
  %6 = tail call i32 @xfrm_state_flush(ptr noundef %0, i8 noundef zeroext 0, i1 noundef zeroext false, i1 noundef zeroext true)
  %7 = load volatile ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2754, i32 noundef 9, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = shl i32 %12, 2
  %14 = add i32 %13, 4
  %15 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !11

19:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2757, i32 noundef 9, ptr noundef null) #15
  %20 = load ptr, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi ptr [ %20, %19 ], [ %16, %10 ]
  tail call void @xfrm_hash_free(ptr noundef %22, i32 noundef %14) #15
  %23 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 3
  %24 = load ptr, ptr %23, align 16
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !11

27:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2759, i32 noundef 9, ptr noundef null) #15
  %28 = load ptr, ptr %23, align 16
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %28, %27 ], [ %24, %21 ]
  tail call void @xfrm_hash_free(ptr noundef %30, i32 noundef %14) #15
  %31 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2761, i32 noundef 9, ptr noundef null) #15
  %36 = load ptr, ptr %31, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %32, %29 ]
  tail call void @xfrm_hash_free(ptr noundef %38, i32 noundef %14) #15
  %39 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 40, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2763, i32 noundef 9, ptr noundef null) #15
  %44 = load ptr, ptr %39, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %44, %43 ], [ %40, %37 ]
  tail call void @xfrm_hash_free(ptr noundef %46, i32 noundef %14) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfrm_state_gc_task(ptr nocapture noundef readnone %0) #0 {
  %2 = alloca %struct.hlist_head, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  %3 = load ptr, ptr @xfrm_state_gc_list, align 4
  store ptr %3, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  store ptr null, ptr @xfrm_state_gc_list, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @xfrm_state_gc_lock) #15
  call void @synchronize_rcu() #15
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8
  call fastcc void @___xfrm_state_destroy(ptr noundef nonnull %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__xfrm_dst_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #12 {
  %6 = zext i16 %3 to i32
  %7 = xor i32 %6, %2
  switch i16 %3, label %127 [
    i16 2, label %8
    i16 10, label %14
  ]

8:                                                ; preds = %5
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %10, %9
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  %13 = xor i32 %12, %7
  br label %127

14:                                               ; preds = %5
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr i32, ptr %0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -559038721
  %19 = getelementptr i32, ptr %0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -559038721
  %22 = sub i32 %15, %20
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 4) #15
  %24 = xor i32 %23, %22
  %25 = add i32 %21, %18
  %26 = sub i32 %18, %24
  %27 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 6) #15
  %28 = xor i32 %26, %27
  %29 = add i32 %24, %25
  %30 = sub i32 %25, %28
  %31 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 8) #15
  %32 = xor i32 %30, %31
  %33 = add i32 %28, %29
  %34 = sub i32 %29, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16) #15
  %36 = xor i32 %34, %35
  %37 = add i32 %32, %33
  %38 = sub i32 %33, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 19) #15
  %40 = xor i32 %38, %39
  %41 = add i32 %36, %37
  %42 = sub i32 %37, %40
  %43 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 4) #15
  %44 = xor i32 %42, %43
  %45 = add i32 %40, %41
  %46 = getelementptr i32, ptr %0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %41, %47
  %49 = xor i32 %44, %45
  %50 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 14) #15
  %51 = sub i32 %49, %50
  %52 = xor i32 %51, %48
  %53 = tail call i32 @llvm.fshl.i32(i32 %51, i32 %51, i32 11) #15
  %54 = sub i32 %52, %53
  %55 = xor i32 %54, %45
  %56 = tail call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 25) #15
  %57 = sub i32 %55, %56
  %58 = xor i32 %57, %51
  %59 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 16) #15
  %60 = sub i32 %58, %59
  %61 = xor i32 %60, %54
  %62 = tail call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 4) #15
  %63 = sub i32 %61, %62
  %64 = xor i32 %63, %57
  %65 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 14) #15
  %66 = sub i32 %64, %65
  %67 = xor i32 %66, %60
  %68 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 24) #15
  %69 = sub i32 %67, %68
  %70 = load i32, ptr %1, align 4
  %71 = getelementptr i32, ptr %1, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, -559038721
  %74 = getelementptr i32, ptr %1, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -559038721
  %77 = sub i32 %70, %75
  %78 = tail call i32 @llvm.fshl.i32(i32 %76, i32 %76, i32 4) #15
  %79 = xor i32 %78, %77
  %80 = add i32 %76, %73
  %81 = sub i32 %73, %79
  %82 = tail call i32 @llvm.fshl.i32(i32 %79, i32 %79, i32 6) #15
  %83 = xor i32 %81, %82
  %84 = add i32 %79, %80
  %85 = sub i32 %80, %83
  %86 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 8) #15
  %87 = xor i32 %85, %86
  %88 = add i32 %83, %84
  %89 = sub i32 %84, %87
  %90 = tail call i32 @llvm.fshl.i32(i32 %87, i32 %87, i32 16) #15
  %91 = xor i32 %89, %90
  %92 = add i32 %87, %88
  %93 = sub i32 %88, %91
  %94 = tail call i32 @llvm.fshl.i32(i32 %91, i32 %91, i32 19) #15
  %95 = xor i32 %93, %94
  %96 = add i32 %91, %92
  %97 = sub i32 %92, %95
  %98 = tail call i32 @llvm.fshl.i32(i32 %95, i32 %95, i32 4) #15
  %99 = xor i32 %97, %98
  %100 = add i32 %95, %96
  %101 = getelementptr i32, ptr %1, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %96, %102
  %104 = xor i32 %99, %100
  %105 = tail call i32 @llvm.fshl.i32(i32 %100, i32 %100, i32 14) #15
  %106 = sub i32 %104, %105
  %107 = xor i32 %106, %103
  %108 = tail call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 11) #15
  %109 = sub i32 %107, %108
  %110 = xor i32 %109, %100
  %111 = tail call i32 @llvm.fshl.i32(i32 %109, i32 %109, i32 25) #15
  %112 = sub i32 %110, %111
  %113 = xor i32 %112, %106
  %114 = tail call i32 @llvm.fshl.i32(i32 %112, i32 %112, i32 16) #15
  %115 = sub i32 %113, %114
  %116 = xor i32 %115, %109
  %117 = tail call i32 @llvm.fshl.i32(i32 %115, i32 %115, i32 4) #15
  %118 = sub i32 %116, %117
  %119 = xor i32 %118, %112
  %120 = tail call i32 @llvm.fshl.i32(i32 %118, i32 %118, i32 14) #15
  %121 = sub i32 %119, %120
  %122 = xor i32 %121, %115
  %123 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 24) #15
  %124 = sub i32 %122, %123
  %125 = xor i32 %69, %7
  %126 = xor i32 %125, %124
  br label %127

127:                                              ; preds = %14, %8, %5
  %128 = phi i32 [ %7, %5 ], [ %126, %14 ], [ %13, %8 ]
  %129 = lshr i32 %128, 16
  %130 = xor i32 %129, %128
  %131 = and i32 %130, %4
  ret i32 %131
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfrm_selector_match(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__xfrm_src_hash(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #12 {
  %5 = zext i16 %2 to i32
  switch i16 %2, label %125 [
    i16 2, label %6
    i16 10, label %12
  ]

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 4
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, %7
  %10 = xor i32 %9, 33554432
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  br label %125

12:                                               ; preds = %4
  %13 = load i32, ptr %0, align 4
  %14 = getelementptr i32, ptr %0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -559038721
  %17 = getelementptr i32, ptr %0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -559038721
  %20 = sub i32 %13, %18
  %21 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 4) #15
  %22 = xor i32 %21, %20
  %23 = add i32 %19, %16
  %24 = sub i32 %16, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 6) #15
  %26 = xor i32 %24, %25
  %27 = add i32 %22, %23
  %28 = sub i32 %23, %26
  %29 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 8) #15
  %30 = xor i32 %28, %29
  %31 = add i32 %26, %27
  %32 = sub i32 %27, %30
  %33 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 16) #15
  %34 = xor i32 %32, %33
  %35 = add i32 %30, %31
  %36 = sub i32 %31, %34
  %37 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 19) #15
  %38 = xor i32 %36, %37
  %39 = add i32 %34, %35
  %40 = sub i32 %35, %38
  %41 = tail call i32 @llvm.fshl.i32(i32 %38, i32 %38, i32 4) #15
  %42 = xor i32 %40, %41
  %43 = add i32 %38, %39
  %44 = getelementptr i32, ptr %0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %39, %45
  %47 = xor i32 %42, %43
  %48 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 14) #15
  %49 = sub i32 %47, %48
  %50 = xor i32 %49, %46
  %51 = tail call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 11) #15
  %52 = sub i32 %50, %51
  %53 = xor i32 %52, %43
  %54 = tail call i32 @llvm.fshl.i32(i32 %52, i32 %52, i32 25) #15
  %55 = sub i32 %53, %54
  %56 = xor i32 %55, %49
  %57 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16) #15
  %58 = sub i32 %56, %57
  %59 = xor i32 %58, %52
  %60 = tail call i32 @llvm.fshl.i32(i32 %58, i32 %58, i32 4) #15
  %61 = sub i32 %59, %60
  %62 = xor i32 %61, %55
  %63 = tail call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 14) #15
  %64 = sub i32 %62, %63
  %65 = xor i32 %64, %58
  %66 = tail call i32 @llvm.fshl.i32(i32 %64, i32 %64, i32 24) #15
  %67 = sub i32 %65, %66
  %68 = load i32, ptr %1, align 4
  %69 = getelementptr i32, ptr %1, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -559038721
  %72 = getelementptr i32, ptr %1, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, -559038721
  %75 = sub i32 %68, %73
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 4) #15
  %77 = xor i32 %76, %75
  %78 = add i32 %74, %71
  %79 = sub i32 %71, %77
  %80 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 6) #15
  %81 = xor i32 %79, %80
  %82 = add i32 %77, %78
  %83 = sub i32 %78, %81
  %84 = tail call i32 @llvm.fshl.i32(i32 %81, i32 %81, i32 8) #15
  %85 = xor i32 %83, %84
  %86 = add i32 %81, %82
  %87 = sub i32 %82, %85
  %88 = tail call i32 @llvm.fshl.i32(i32 %85, i32 %85, i32 16) #15
  %89 = xor i32 %87, %88
  %90 = add i32 %85, %86
  %91 = sub i32 %86, %89
  %92 = tail call i32 @llvm.fshl.i32(i32 %89, i32 %89, i32 19) #15
  %93 = xor i32 %91, %92
  %94 = add i32 %89, %90
  %95 = sub i32 %90, %93
  %96 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 4) #15
  %97 = xor i32 %95, %96
  %98 = add i32 %93, %94
  %99 = getelementptr i32, ptr %1, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %94, %100
  %102 = xor i32 %97, %98
  %103 = tail call i32 @llvm.fshl.i32(i32 %98, i32 %98, i32 14) #15
  %104 = sub i32 %102, %103
  %105 = xor i32 %104, %101
  %106 = tail call i32 @llvm.fshl.i32(i32 %104, i32 %104, i32 11) #15
  %107 = sub i32 %105, %106
  %108 = xor i32 %107, %98
  %109 = tail call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 25) #15
  %110 = sub i32 %108, %109
  %111 = xor i32 %110, %104
  %112 = tail call i32 @llvm.fshl.i32(i32 %110, i32 %110, i32 16) #15
  %113 = sub i32 %111, %112
  %114 = xor i32 %113, %107
  %115 = tail call i32 @llvm.fshl.i32(i32 %113, i32 %113, i32 4) #15
  %116 = sub i32 %114, %115
  %117 = xor i32 %116, %110
  %118 = tail call i32 @llvm.fshl.i32(i32 %116, i32 %116, i32 14) #15
  %119 = sub i32 %117, %118
  %120 = xor i32 %119, %113
  %121 = tail call i32 @llvm.fshl.i32(i32 %119, i32 %119, i32 24) #15
  %122 = sub i32 %120, %121
  %123 = xor i32 %67, %122
  %124 = xor i32 %123, 10
  br label %125

125:                                              ; preds = %12, %6, %4
  %126 = phi i32 [ %5, %4 ], [ %124, %12 ], [ %11, %6 ]
  %127 = lshr i32 %126, 16
  %128 = xor i32 %127, %126
  %129 = and i32 %128, %3
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_replay_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_policy_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!9 = !{i64 2149162354}
!10 = !{i64 2149162571}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"auto-init"}
!13 = !{i64 2148970487}
!14 = !{i64 2148966311}
!15 = !{i64 2148966386, i64 2148966413, i64 2148966460, i64 2148966482, i64 2148966510, i64 2148966530}
!16 = !{i64 2148993490}
!17 = !{i64 2148103618}
!18 = !{i64 501577, i64 2147991548, i64 2147991574, i64 2147991621, i64 2147991643, i64 2147991671, i64 2147991691}
!19 = !{i64 2148006004, i64 2148006036, i64 2148006065, i64 2148006099, i64 2148006130, i64 2148006153}
!20 = !{i64 2148103821}
!21 = !{i64 2148104619}
!22 = !{i64 2148006778, i64 2148006810, i64 2148006839, i64 2148006873, i64 2148006904, i64 2148006927}
!23 = !{i64 2149199255}
!24 = !{i64 2148004421, i64 2148004453, i64 2148004482, i64 2148004516, i64 2148004547, i64 2148004570}
!25 = !{i64 2156613715}
!26 = !{i64 2156613557}
!27 = !{i64 2156613859}
!28 = !{i64 2149840832}
!29 = !{i64 487640, i64 487664, i64 487685, i64 487702, i64 487719}
!30 = !{i64 2149505777}
!31 = !{i64 2148100785}
!32 = !{i64 2148003647, i64 2148003679, i64 2148003708, i64 2148003742, i64 2148003773, i64 2148003796}
!33 = !{i64 2148100988}
!34 = !{i64 2155563163}
!35 = !{i64 2151127746, i64 2151127771}
!36 = !{i64 3623858}
!37 = !{i64 3624055}
!38 = !{i64 2151109334}
!39 = !{i64 2149764763}
!40 = !{i64 2157000319}
!41 = !{i64 2148005320, i64 2148005346, i64 2148005375, i64 2148005409, i64 2148005440, i64 2148005463}
!42 = !{i64 2149506076}
!43 = !{i64 2156490985}
!44 = !{i64 2156499222}
!45 = !{i64 2156507459}
!46 = !{i64 2156515696}
!47 = !{i64 2149506377}
