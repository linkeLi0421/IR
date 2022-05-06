; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dp_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dp_helper.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_channel_eq_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_channel_eq_ok\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_channel_eq_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_clock_recovery_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_clock_recovery_ok\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_clock_recovery_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_adjust_request_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_adjust_request_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_adjust_request_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_adjust_request_pre_emphasis:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_adjust_request_pre_emphasis\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_adjust_request_pre_emphasis:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_adjust_tx_ffe_preset:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_adjust_tx_ffe_preset\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_adjust_tx_ffe_preset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_adjust_request_post_cursor:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_adjust_request_post_cursor\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_adjust_request_post_cursor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_clock_recovery_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_channel_eq_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_link_train_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_link_train_clock_recovery_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_link_train_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_link_train_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_link_train_channel_eq_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_link_train_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_link_train_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_link_train_clock_recovery_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_link_train_clock_recovery_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_link_train_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_link_train_channel_eq_delay\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_link_train_channel_eq_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_link_rate_to_bw_code:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_link_rate_to_bw_code\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_link_rate_to_bw_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_bw_code_to_link_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_bw_code_to_link_rate\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_bw_code_to_link_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dpcd_read:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dpcd_read\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dpcd_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dpcd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dpcd_write\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dpcd_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dpcd_read_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dpcd_read_link_status\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dpcd_read_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dpcd_read_phy_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dpcd_read_phy_link_status\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dpcd_read_phy_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_is_type:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_is_type\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_is_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_is_tmds:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_is_tmds\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_is_tmds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_send_real_edid_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_send_real_edid_checksum\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_send_real_edid_checksum:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_dpcd_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_dpcd_caps\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_dpcd_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_downstream_info:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_downstream_info\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_downstream_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_max_dotclock:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_max_dotclock\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_max_dotclock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_max_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_max_tmds_clock\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_max_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_min_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_min_tmds_clock\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_min_tmds_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_max_bpc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_max_bpc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_max_bpc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_420_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_420_passthrough\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_420_passthrough:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_444_to_420_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_444_to_420_conversion\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_444_to_420_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_rgb_to_ycbcr_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_rgb_to_ycbcr_conversion\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_rgb_to_ycbcr_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_id:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_id\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_downstream_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_downstream_debug\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_downstream_debug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_subconnector_type:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_subconnector_type\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_subconnector_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_set_subconnector_property:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_set_subconnector_property\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_set_subconnector_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_sink_count_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_sink_count_cap\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_sink_count_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_sink_count:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_sink_count\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_sink_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_remote_aux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_remote_aux_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_remote_aux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_aux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_aux_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_aux_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_aux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_aux_register\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_aux_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_aux_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_aux_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_aux_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_psr_setup_time:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_psr_setup_time\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_psr_setup_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_start_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_start_crc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_start_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_stop_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_stop_crc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_stop_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_desc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dsc_sink_max_slice_count:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dsc_sink_max_slice_count\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dsc_sink_max_slice_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dsc_sink_line_buf_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dsc_sink_line_buf_depth\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dsc_sink_line_buf_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_dsc_sink_supported_input_bpcs:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_dsc_sink_supported_input_bpcs\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_dsc_sink_supported_input_bpcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_lttpr_common_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_lttpr_common_caps\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_lttpr_common_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_read_lttpr_phy_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_read_lttpr_phy_caps\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_read_lttpr_phy_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_count:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_count\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_max_link_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_max_link_rate\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_max_link_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_max_lane_count:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_max_lane_count\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_max_lane_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_voltage_swing_level_3_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_voltage_swing_level_3_supported\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_voltage_swing_level_3_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_lttpr_pre_emphasis_level_3_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_lttpr_pre_emphasis_level_3_supported\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_lttpr_pre_emphasis_level_3_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_phy_test_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_phy_test_pattern\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_phy_test_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_set_phy_test_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_set_phy_test_pattern\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_set_phy_test_pattern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_vsc_sdp_log:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_vsc_sdp_log\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_vsc_sdp_log:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_get_pcon_max_frl_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_get_pcon_max_frl_bw\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_get_pcon_max_frl_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_frl_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_frl_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_frl_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_is_frl_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_is_frl_ready\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_is_frl_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_frl_configure_1:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_frl_configure_1\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_frl_configure_1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_frl_configure_2:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_frl_configure_2\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_frl_configure_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_reset_frl_config:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_reset_frl_config\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_reset_frl_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_frl_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_frl_enable\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_frl_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_hdmi_link_active:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_hdmi_link_active\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_hdmi_link_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_hdmi_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_hdmi_link_mode\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_hdmi_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_hdmi_frl_link_error_count:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_hdmi_frl_link_error_count\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_hdmi_frl_link_error_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_enc_is_dsc_1_2:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_enc_is_dsc_1_2\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_enc_is_dsc_1_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_dsc_max_slices:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_dsc_max_slices\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_dsc_max_slices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_dsc_max_slice_width:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_dsc_max_slice_width\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_dsc_max_slice_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_dsc_bpp_incr:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_dsc_bpp_incr\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_dsc_bpp_incr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_pps_default:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_pps_default\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_pps_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_pps_override_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_pps_override_buf\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_pps_override_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_pps_override_param:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_pps_override_param\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_pps_override_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_dp_pcon_convert_rgb_to_ycbcr:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_dp_pcon_convert_rgb_to_ycbcr\22\09\09\09\09\09"
module asm "__kstrtabns_drm_dp_pcon_convert_rgb_to_ycbcr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_edp_backlight_set_level:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_edp_backlight_set_level\22\09\09\09\09\09"
module asm "__kstrtabns_drm_edp_backlight_set_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_edp_backlight_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_edp_backlight_enable\22\09\09\09\09\09"
module asm "__kstrtabns_drm_edp_backlight_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_edp_backlight_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_edp_backlight_disable\22\09\09\09\09\09"
module asm "__kstrtabns_drm_edp_backlight_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_edp_backlight_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_edp_backlight_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_edp_backlight_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_panel_dp_aux_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_panel_dp_aux_backlight\22\09\09\09\09\09"
module asm "__kstrtabns_drm_panel_dp_aux_backlight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.lock_class_key = type {}
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dpcd_quirk = type { [3 x i8], [6 x i8], i8, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.76 }
%union.anon.76 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_dp_phy_test_params = type { i32, i8, i8, [2 x i8], [10 x i8], i8 }
%struct.drm_dp_vsc_sdp = type { i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.drm_edp_backlight_info = type { i8, i8, i16, i8 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_aux_backlight = type { ptr, ptr, %struct.drm_edp_backlight_info, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_drm_dp_channel_eq_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_channel_eq_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_channel_eq_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_channel_eq_ok to i32), ptr @__kstrtab_drm_dp_channel_eq_ok, ptr @__kstrtabns_drm_dp_channel_eq_ok }, section "___ksymtab+drm_dp_channel_eq_ok", align 4
@__kstrtab_drm_dp_clock_recovery_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_clock_recovery_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_clock_recovery_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_clock_recovery_ok to i32), ptr @__kstrtab_drm_dp_clock_recovery_ok, ptr @__kstrtabns_drm_dp_clock_recovery_ok }, section "___ksymtab+drm_dp_clock_recovery_ok", align 4
@__kstrtab_drm_dp_get_adjust_request_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_adjust_request_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_adjust_request_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_adjust_request_voltage to i32), ptr @__kstrtab_drm_dp_get_adjust_request_voltage, ptr @__kstrtabns_drm_dp_get_adjust_request_voltage }, section "___ksymtab+drm_dp_get_adjust_request_voltage", align 4
@__kstrtab_drm_dp_get_adjust_request_pre_emphasis = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_adjust_request_pre_emphasis = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_adjust_request_pre_emphasis = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_adjust_request_pre_emphasis to i32), ptr @__kstrtab_drm_dp_get_adjust_request_pre_emphasis, ptr @__kstrtabns_drm_dp_get_adjust_request_pre_emphasis }, section "___ksymtab+drm_dp_get_adjust_request_pre_emphasis", align 4
@__kstrtab_drm_dp_get_adjust_tx_ffe_preset = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_adjust_tx_ffe_preset = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_adjust_tx_ffe_preset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_adjust_tx_ffe_preset to i32), ptr @__kstrtab_drm_dp_get_adjust_tx_ffe_preset, ptr @__kstrtabns_drm_dp_get_adjust_tx_ffe_preset }, section "___ksymtab+drm_dp_get_adjust_tx_ffe_preset", align 4
@__kstrtab_drm_dp_get_adjust_request_post_cursor = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_adjust_request_post_cursor = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_adjust_request_post_cursor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_adjust_request_post_cursor to i32), ptr @__kstrtab_drm_dp_get_adjust_request_post_cursor, ptr @__kstrtabns_drm_dp_get_adjust_request_post_cursor }, section "___ksymtab+drm_dp_get_adjust_request_post_cursor", align 4
@__kstrtab_drm_dp_read_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_clock_recovery_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_clock_recovery_delay to i32), ptr @__kstrtab_drm_dp_read_clock_recovery_delay, ptr @__kstrtabns_drm_dp_read_clock_recovery_delay }, section "___ksymtab+drm_dp_read_clock_recovery_delay", align 4
@__kstrtab_drm_dp_read_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_channel_eq_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_channel_eq_delay to i32), ptr @__kstrtab_drm_dp_read_channel_eq_delay, ptr @__kstrtabns_drm_dp_read_channel_eq_delay }, section "___ksymtab+drm_dp_read_channel_eq_delay", align 4
@__kstrtab_drm_dp_link_train_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_link_train_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_link_train_clock_recovery_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_link_train_clock_recovery_delay to i32), ptr @__kstrtab_drm_dp_link_train_clock_recovery_delay, ptr @__kstrtabns_drm_dp_link_train_clock_recovery_delay }, section "___ksymtab+drm_dp_link_train_clock_recovery_delay", align 4
@__kstrtab_drm_dp_link_train_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_link_train_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_link_train_channel_eq_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_link_train_channel_eq_delay to i32), ptr @__kstrtab_drm_dp_link_train_channel_eq_delay, ptr @__kstrtabns_drm_dp_link_train_channel_eq_delay }, section "___ksymtab+drm_dp_link_train_channel_eq_delay", align 4
@__kstrtab_drm_dp_lttpr_link_train_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_link_train_clock_recovery_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_link_train_clock_recovery_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_link_train_clock_recovery_delay to i32), ptr @__kstrtab_drm_dp_lttpr_link_train_clock_recovery_delay, ptr @__kstrtabns_drm_dp_lttpr_link_train_clock_recovery_delay }, section "___ksymtab+drm_dp_lttpr_link_train_clock_recovery_delay", align 4
@__kstrtab_drm_dp_lttpr_link_train_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_link_train_channel_eq_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_link_train_channel_eq_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_link_train_channel_eq_delay to i32), ptr @__kstrtab_drm_dp_lttpr_link_train_channel_eq_delay, ptr @__kstrtabns_drm_dp_lttpr_link_train_channel_eq_delay }, section "___ksymtab+drm_dp_lttpr_link_train_channel_eq_delay", align 4
@__kstrtab_drm_dp_link_rate_to_bw_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_link_rate_to_bw_code = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_link_rate_to_bw_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_link_rate_to_bw_code to i32), ptr @__kstrtab_drm_dp_link_rate_to_bw_code, ptr @__kstrtabns_drm_dp_link_rate_to_bw_code }, section "___ksymtab+drm_dp_link_rate_to_bw_code", align 4
@__kstrtab_drm_dp_bw_code_to_link_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_bw_code_to_link_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_bw_code_to_link_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_bw_code_to_link_rate to i32), ptr @__kstrtab_drm_dp_bw_code_to_link_rate, ptr @__kstrtabns_drm_dp_bw_code_to_link_rate }, section "___ksymtab+drm_dp_bw_code_to_link_rate", align 4
@__kstrtab_drm_dp_dpcd_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dpcd_read = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dpcd_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dpcd_read to i32), ptr @__kstrtab_drm_dp_dpcd_read, ptr @__kstrtabns_drm_dp_dpcd_read }, section "___ksymtab+drm_dp_dpcd_read", align 4
@__kstrtab_drm_dp_dpcd_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dpcd_write = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dpcd_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dpcd_write to i32), ptr @__kstrtab_drm_dp_dpcd_write, ptr @__kstrtabns_drm_dp_dpcd_write }, section "___ksymtab+drm_dp_dpcd_write", align 4
@__kstrtab_drm_dp_dpcd_read_link_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dpcd_read_link_status = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dpcd_read_link_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dpcd_read_link_status to i32), ptr @__kstrtab_drm_dp_dpcd_read_link_status, ptr @__kstrtabns_drm_dp_dpcd_read_link_status }, section "___ksymtab+drm_dp_dpcd_read_link_status", align 4
@.str = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_dp_helper.c\00", align 1
@__kstrtab_drm_dp_dpcd_read_phy_link_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dpcd_read_phy_link_status = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dpcd_read_phy_link_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dpcd_read_phy_link_status to i32), ptr @__kstrtab_drm_dp_dpcd_read_phy_link_status, ptr @__kstrtabns_drm_dp_dpcd_read_phy_link_status }, section "___ksymtab+drm_dp_dpcd_read_phy_link_status", align 4
@__kstrtab_drm_dp_downstream_is_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_is_type = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_is_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_is_type to i32), ptr @__kstrtab_drm_dp_downstream_is_type, ptr @__kstrtabns_drm_dp_downstream_is_type }, section "___ksymtab+drm_dp_downstream_is_type", align 4
@__kstrtab_drm_dp_downstream_is_tmds = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_is_tmds = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_is_tmds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_is_tmds to i32), ptr @__kstrtab_drm_dp_downstream_is_tmds, ptr @__kstrtabns_drm_dp_downstream_is_tmds }, section "___ksymtab+drm_dp_downstream_is_tmds", align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"[drm] *ERROR* %s: DPCD failed read at register 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: Source DUT does not support TEST_EDID_READ\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"[drm] *ERROR* %s: DPCD failed write at register 0x%x\0A\00", align 1
@__kstrtab_drm_dp_send_real_edid_checksum = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_send_real_edid_checksum = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_send_real_edid_checksum = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_send_real_edid_checksum to i32), ptr @__kstrtab_drm_dp_send_real_edid_checksum, ptr @__kstrtabns_drm_dp_send_real_edid_checksum }, section "___ksymtab+drm_dp_send_real_edid_checksum", align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"%s: DPCD: %*ph\0A\00", align 1
@__kstrtab_drm_dp_read_dpcd_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_dpcd_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_dpcd_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_dpcd_caps to i32), ptr @__kstrtab_drm_dp_read_dpcd_caps, ptr @__kstrtabns_drm_dp_read_dpcd_caps }, section "___ksymtab+drm_dp_read_dpcd_caps", align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"%s: DPCD DFP: %*ph\0A\00", align 1
@__kstrtab_drm_dp_read_downstream_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_downstream_info = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_downstream_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_downstream_info to i32), ptr @__kstrtab_drm_dp_read_downstream_info, ptr @__kstrtabns_drm_dp_read_downstream_info }, section "___ksymtab+drm_dp_read_downstream_info", align 4
@__kstrtab_drm_dp_downstream_max_dotclock = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_max_dotclock = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_max_dotclock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_max_dotclock to i32), ptr @__kstrtab_drm_dp_downstream_max_dotclock, ptr @__kstrtabns_drm_dp_downstream_max_dotclock }, section "___ksymtab+drm_dp_downstream_max_dotclock", align 4
@__kstrtab_drm_dp_downstream_max_tmds_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_max_tmds_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_max_tmds_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_max_tmds_clock to i32), ptr @__kstrtab_drm_dp_downstream_max_tmds_clock, ptr @__kstrtabns_drm_dp_downstream_max_tmds_clock }, section "___ksymtab+drm_dp_downstream_max_tmds_clock", align 4
@__kstrtab_drm_dp_downstream_min_tmds_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_min_tmds_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_min_tmds_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_min_tmds_clock to i32), ptr @__kstrtab_drm_dp_downstream_min_tmds_clock, ptr @__kstrtabns_drm_dp_downstream_min_tmds_clock }, section "___ksymtab+drm_dp_downstream_min_tmds_clock", align 4
@__kstrtab_drm_dp_downstream_max_bpc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_max_bpc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_max_bpc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_max_bpc to i32), ptr @__kstrtab_drm_dp_downstream_max_bpc, ptr @__kstrtabns_drm_dp_downstream_max_bpc }, section "___ksymtab+drm_dp_downstream_max_bpc", align 4
@__kstrtab_drm_dp_downstream_420_passthrough = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_420_passthrough = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_420_passthrough = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_420_passthrough to i32), ptr @__kstrtab_drm_dp_downstream_420_passthrough, ptr @__kstrtabns_drm_dp_downstream_420_passthrough }, section "___ksymtab+drm_dp_downstream_420_passthrough", align 4
@__kstrtab_drm_dp_downstream_444_to_420_conversion = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_444_to_420_conversion = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_444_to_420_conversion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_444_to_420_conversion to i32), ptr @__kstrtab_drm_dp_downstream_444_to_420_conversion, ptr @__kstrtabns_drm_dp_downstream_444_to_420_conversion }, section "___ksymtab+drm_dp_downstream_444_to_420_conversion", align 4
@__kstrtab_drm_dp_downstream_rgb_to_ycbcr_conversion = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_rgb_to_ycbcr_conversion = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_rgb_to_ycbcr_conversion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_rgb_to_ycbcr_conversion to i32), ptr @__kstrtab_drm_dp_downstream_rgb_to_ycbcr_conversion, ptr @__kstrtabns_drm_dp_downstream_rgb_to_ycbcr_conversion }, section "___ksymtab+drm_dp_downstream_rgb_to_ycbcr_conversion", align 4
@__kstrtab_drm_dp_downstream_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_mode to i32), ptr @__kstrtab_drm_dp_downstream_mode, ptr @__kstrtabns_drm_dp_downstream_mode }, section "___ksymtab+drm_dp_downstream_mode", align 4
@__kstrtab_drm_dp_downstream_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_id = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_id to i32), ptr @__kstrtab_drm_dp_downstream_id, ptr @__kstrtabns_drm_dp_downstream_id }, section "___ksymtab+drm_dp_downstream_id", align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"\09DP branch device present: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"\09\09Type: DisplayPort\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\09\09Type: VGA\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09\09Type: DVI\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\09\09Type: HDMI\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\09\09Type: others without EDID support\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\09\09Type: DP++\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\09\09Type: Wireless\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\09\09Type: N/A\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\09\09ID: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"\09\09HW: %d.%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"\09\09SW: %d.%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\09\09Max dot clock: %d kHz\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"\09\09Max TMDS clock: %d kHz\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\09\09Min TMDS clock: %d kHz\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"\09\09Max bpc: %d\0A\00", align 1
@__kstrtab_drm_dp_downstream_debug = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_downstream_debug = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_downstream_debug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_downstream_debug to i32), ptr @__kstrtab_drm_dp_downstream_debug, ptr @__kstrtabns_drm_dp_downstream_debug }, section "___ksymtab+drm_dp_downstream_debug", align 4
@__kstrtab_drm_dp_subconnector_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_subconnector_type = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_subconnector_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_subconnector_type to i32), ptr @__kstrtab_drm_dp_subconnector_type, ptr @__kstrtabns_drm_dp_subconnector_type }, section "___ksymtab+drm_dp_subconnector_type", align 4
@__kstrtab_drm_dp_set_subconnector_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_set_subconnector_property = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_set_subconnector_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_set_subconnector_property to i32), ptr @__kstrtab_drm_dp_set_subconnector_property, ptr @__kstrtabns_drm_dp_set_subconnector_property }, section "___ksymtab+drm_dp_set_subconnector_property", align 4
@__kstrtab_drm_dp_read_sink_count_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_sink_count_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_sink_count_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_sink_count_cap to i32), ptr @__kstrtab_drm_dp_read_sink_count_cap, ptr @__kstrtabns_drm_dp_read_sink_count_cap }, section "___ksymtab+drm_dp_read_sink_count_cap", align 4
@__kstrtab_drm_dp_read_sink_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_sink_count = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_sink_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_sink_count to i32), ptr @__kstrtab_drm_dp_read_sink_count, ptr @__kstrtabns_drm_dp_read_sink_count }, section "___ksymtab+drm_dp_read_sink_count", align 4
@__param_str_dp_aux_i2c_speed_khz = internal constant [36 x i8] c"drm_kms_helper.dp_aux_i2c_speed_khz\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dp_aux_i2c_speed_khz = internal global i32 10, section ".data..read_mostly", align 4
@__param_dp_aux_i2c_speed_khz = internal constant %struct.kernel_param { ptr @__param_str_dp_aux_i2c_speed_khz, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 1, %union.anon.64 { ptr @dp_aux_i2c_speed_khz } }, section "__param", align 4
@__UNIQUE_ID_dp_aux_i2c_speed_khztype266 = internal constant [49 x i8] c"drm_kms_helper.parmtype=dp_aux_i2c_speed_khz:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dp_aux_i2c_speed_khz267 = internal constant [98 x i8] c"drm_kms_helper.parm=dp_aux_i2c_speed_khz:Assumed speed of the i2c bus in kHz, (1-400, default 10)\00", section ".modinfo", align 1
@__param_str_dp_aux_i2c_transfer_size = internal constant [40 x i8] c"drm_kms_helper.dp_aux_i2c_transfer_size\00", align 1
@dp_aux_i2c_transfer_size = internal global i32 16, section ".data..read_mostly", align 4
@__param_dp_aux_i2c_transfer_size = internal constant %struct.kernel_param { ptr @__param_str_dp_aux_i2c_transfer_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 1, %union.anon.64 { ptr @dp_aux_i2c_transfer_size } }, section "__param", align 4
@__UNIQUE_ID_dp_aux_i2c_transfer_sizetype270 = internal constant [53 x i8] c"drm_kms_helper.parmtype=dp_aux_i2c_transfer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dp_aux_i2c_transfer_size271 = internal constant [132 x i8] c"drm_kms_helper.parm=dp_aux_i2c_transfer_size:Number of bytes to transfer in a single I2C over DP AUX CH message, (1-16, default 16)\00", section ".modinfo", align 1
@__kstrtab_drm_dp_remote_aux_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_remote_aux_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_remote_aux_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_remote_aux_init to i32), ptr @__kstrtab_drm_dp_remote_aux_init, ptr @__kstrtabns_drm_dp_remote_aux_init }, section "___ksymtab+drm_dp_remote_aux_init", align 4
@drm_dp_aux_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"&aux->hw_mutex\00", align 1
@drm_dp_aux_init.__key.25 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"&aux->cec.lock\00", align 1
@drm_dp_i2c_algo = internal constant %struct.i2c_algorithm { ptr @drm_dp_i2c_xfer, ptr null, ptr null, ptr null, ptr @drm_dp_i2c_functionality, ptr null, ptr null }, align 4
@drm_dp_i2c_lock_ops = internal constant %struct.i2c_lock_operations { ptr @lock_bus, ptr @trylock_bus, ptr @unlock_bus }, align 4
@__kstrtab_drm_dp_aux_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_aux_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_aux_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_aux_init to i32), ptr @__kstrtab_drm_dp_aux_init, ptr @__kstrtabns_drm_dp_aux_init }, section "___ksymtab+drm_dp_aux_init", align 4
@drm_dp_aux_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_dp_aux_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_aux_register = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_aux_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_aux_register to i32), ptr @__kstrtab_drm_dp_aux_register, ptr @__kstrtabns_drm_dp_aux_register }, section "___ksymtab+drm_dp_aux_register", align 4
@__kstrtab_drm_dp_aux_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_aux_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_aux_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_aux_unregister to i32), ptr @__kstrtab_drm_dp_aux_unregister, ptr @__kstrtabns_drm_dp_aux_unregister }, section "___ksymtab+drm_dp_aux_unregister", align 4
@drm_dp_psr_setup_time.psr_setup_time_us = internal unnamed_addr constant [7 x i16] [i16 330, i16 275, i16 220, i16 165, i16 110, i16 55, i16 0], align 2
@__kstrtab_drm_dp_psr_setup_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_psr_setup_time = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_psr_setup_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_psr_setup_time to i32), ptr @__kstrtab_drm_dp_psr_setup_time, ptr @__kstrtabns_drm_dp_psr_setup_time }, section "___ksymtab+drm_dp_psr_setup_time", align 4
@__kstrtab_drm_dp_start_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_start_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_start_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_start_crc to i32), ptr @__kstrtab_drm_dp_start_crc, ptr @__kstrtabns_drm_dp_start_crc }, section "___ksymtab+drm_dp_start_crc", align 4
@__kstrtab_drm_dp_stop_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_stop_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_stop_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_stop_crc to i32), ptr @__kstrtab_drm_dp_stop_crc, ptr @__kstrtabns_drm_dp_stop_crc }, section "___ksymtab+drm_dp_stop_crc", align 4
@.str.27 = private unnamed_addr constant [74 x i8] c"%s: DP %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d quirks 0x%04x\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@__kstrtab_drm_dp_read_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_desc to i32), ptr @__kstrtab_drm_dp_read_desc, ptr @__kstrtabns_drm_dp_read_desc }, section "___ksymtab+drm_dp_read_desc", align 4
@__kstrtab_drm_dp_dsc_sink_max_slice_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dsc_sink_max_slice_count = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dsc_sink_max_slice_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dsc_sink_max_slice_count to i32), ptr @__kstrtab_drm_dp_dsc_sink_max_slice_count, ptr @__kstrtabns_drm_dp_dsc_sink_max_slice_count }, section "___ksymtab+drm_dp_dsc_sink_max_slice_count", align 4
@__kstrtab_drm_dp_dsc_sink_line_buf_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dsc_sink_line_buf_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dsc_sink_line_buf_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dsc_sink_line_buf_depth to i32), ptr @__kstrtab_drm_dp_dsc_sink_line_buf_depth, ptr @__kstrtabns_drm_dp_dsc_sink_line_buf_depth }, section "___ksymtab+drm_dp_dsc_sink_line_buf_depth", align 4
@__kstrtab_drm_dp_dsc_sink_supported_input_bpcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_dsc_sink_supported_input_bpcs = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_dsc_sink_supported_input_bpcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_dsc_sink_supported_input_bpcs to i32), ptr @__kstrtab_drm_dp_dsc_sink_supported_input_bpcs, ptr @__kstrtabns_drm_dp_dsc_sink_supported_input_bpcs }, section "___ksymtab+drm_dp_dsc_sink_supported_input_bpcs", align 4
@__kstrtab_drm_dp_read_lttpr_common_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_lttpr_common_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_lttpr_common_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_lttpr_common_caps to i32), ptr @__kstrtab_drm_dp_read_lttpr_common_caps, ptr @__kstrtabns_drm_dp_read_lttpr_common_caps }, section "___ksymtab+drm_dp_read_lttpr_common_caps", align 4
@__kstrtab_drm_dp_read_lttpr_phy_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_read_lttpr_phy_caps = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_read_lttpr_phy_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_read_lttpr_phy_caps to i32), ptr @__kstrtab_drm_dp_read_lttpr_phy_caps, ptr @__kstrtabns_drm_dp_read_lttpr_phy_caps }, section "___ksymtab+drm_dp_read_lttpr_phy_caps", align 4
@__kstrtab_drm_dp_lttpr_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_count = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_count to i32), ptr @__kstrtab_drm_dp_lttpr_count, ptr @__kstrtabns_drm_dp_lttpr_count }, section "___ksymtab+drm_dp_lttpr_count", align 4
@__kstrtab_drm_dp_lttpr_max_link_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_max_link_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_max_link_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_max_link_rate to i32), ptr @__kstrtab_drm_dp_lttpr_max_link_rate, ptr @__kstrtabns_drm_dp_lttpr_max_link_rate }, section "___ksymtab+drm_dp_lttpr_max_link_rate", align 4
@__kstrtab_drm_dp_lttpr_max_lane_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_max_lane_count = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_max_lane_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_max_lane_count to i32), ptr @__kstrtab_drm_dp_lttpr_max_lane_count, ptr @__kstrtabns_drm_dp_lttpr_max_lane_count }, section "___ksymtab+drm_dp_lttpr_max_lane_count", align 4
@__kstrtab_drm_dp_lttpr_voltage_swing_level_3_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_voltage_swing_level_3_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_voltage_swing_level_3_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_voltage_swing_level_3_supported to i32), ptr @__kstrtab_drm_dp_lttpr_voltage_swing_level_3_supported, ptr @__kstrtabns_drm_dp_lttpr_voltage_swing_level_3_supported }, section "___ksymtab+drm_dp_lttpr_voltage_swing_level_3_supported", align 4
@__kstrtab_drm_dp_lttpr_pre_emphasis_level_3_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_lttpr_pre_emphasis_level_3_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_lttpr_pre_emphasis_level_3_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_lttpr_pre_emphasis_level_3_supported to i32), ptr @__kstrtab_drm_dp_lttpr_pre_emphasis_level_3_supported, ptr @__kstrtabns_drm_dp_lttpr_pre_emphasis_level_3_supported }, section "___ksymtab+drm_dp_lttpr_pre_emphasis_level_3_supported", align 4
@__kstrtab_drm_dp_get_phy_test_pattern = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_phy_test_pattern = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_phy_test_pattern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_phy_test_pattern to i32), ptr @__kstrtab_drm_dp_get_phy_test_pattern, ptr @__kstrtabns_drm_dp_get_phy_test_pattern }, section "___ksymtab+drm_dp_get_phy_test_pattern", align 4
@__kstrtab_drm_dp_set_phy_test_pattern = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_set_phy_test_pattern = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_set_phy_test_pattern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_set_phy_test_pattern to i32), ptr @__kstrtab_drm_dp_set_phy_test_pattern, ptr @__kstrtabns_drm_dp_set_phy_test_pattern }, section "___ksymtab+drm_dp_set_phy_test_pattern", align 4
@.str.30 = private unnamed_addr constant [36 x i8] c"DP SDP: %s, revision %u, length %u\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"VSC\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"    pixelformat: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"    colorimetry: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"    bpc: %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"    dynamic range: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"    content type: %s\0A\00", align 1
@__kstrtab_drm_dp_vsc_sdp_log = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_vsc_sdp_log = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_vsc_sdp_log = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_vsc_sdp_log to i32), ptr @__kstrtab_drm_dp_vsc_sdp_log, ptr @__kstrtabns_drm_dp_vsc_sdp_log }, section "___ksymtab+drm_dp_vsc_sdp_log", align 4
@__kstrtab_drm_dp_get_pcon_max_frl_bw = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_get_pcon_max_frl_bw = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_get_pcon_max_frl_bw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_get_pcon_max_frl_bw to i32), ptr @__kstrtab_drm_dp_get_pcon_max_frl_bw, ptr @__kstrtabns_drm_dp_get_pcon_max_frl_bw }, section "___ksymtab+drm_dp_get_pcon_max_frl_bw", align 4
@__kstrtab_drm_dp_pcon_frl_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_frl_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_frl_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_frl_prepare to i32), ptr @__kstrtab_drm_dp_pcon_frl_prepare, ptr @__kstrtabns_drm_dp_pcon_frl_prepare }, section "___ksymtab+drm_dp_pcon_frl_prepare", align 4
@__kstrtab_drm_dp_pcon_is_frl_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_is_frl_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_is_frl_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_is_frl_ready to i32), ptr @__kstrtab_drm_dp_pcon_is_frl_ready, ptr @__kstrtabns_drm_dp_pcon_is_frl_ready }, section "___ksymtab+drm_dp_pcon_is_frl_ready", align 4
@__kstrtab_drm_dp_pcon_frl_configure_1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_frl_configure_1 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_frl_configure_1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_frl_configure_1 to i32), ptr @__kstrtab_drm_dp_pcon_frl_configure_1, ptr @__kstrtabns_drm_dp_pcon_frl_configure_1 }, section "___ksymtab+drm_dp_pcon_frl_configure_1", align 4
@__kstrtab_drm_dp_pcon_frl_configure_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_frl_configure_2 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_frl_configure_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_frl_configure_2 to i32), ptr @__kstrtab_drm_dp_pcon_frl_configure_2, ptr @__kstrtabns_drm_dp_pcon_frl_configure_2 }, section "___ksymtab+drm_dp_pcon_frl_configure_2", align 4
@__kstrtab_drm_dp_pcon_reset_frl_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_reset_frl_config = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_reset_frl_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_reset_frl_config to i32), ptr @__kstrtab_drm_dp_pcon_reset_frl_config, ptr @__kstrtabns_drm_dp_pcon_reset_frl_config }, section "___ksymtab+drm_dp_pcon_reset_frl_config", align 4
@.str.37 = private unnamed_addr constant [47 x i8] c"%s: PCON in Autonomous mode, can't enable FRL\0A\00", align 1
@__kstrtab_drm_dp_pcon_frl_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_frl_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_frl_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_frl_enable to i32), ptr @__kstrtab_drm_dp_pcon_frl_enable, ptr @__kstrtabns_drm_dp_pcon_frl_enable }, section "___ksymtab+drm_dp_pcon_frl_enable", align 4
@__kstrtab_drm_dp_pcon_hdmi_link_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_hdmi_link_active = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_hdmi_link_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_hdmi_link_active to i32), ptr @__kstrtab_drm_dp_pcon_hdmi_link_active, ptr @__kstrtabns_drm_dp_pcon_hdmi_link_active }, section "___ksymtab+drm_dp_pcon_hdmi_link_active", align 4
@__kstrtab_drm_dp_pcon_hdmi_link_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_hdmi_link_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_hdmi_link_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_hdmi_link_mode to i32), ptr @__kstrtab_drm_dp_pcon_hdmi_link_mode, ptr @__kstrtabns_drm_dp_pcon_hdmi_link_mode }, section "___ksymtab+drm_dp_pcon_hdmi_link_mode", align 4
@.str.38 = private unnamed_addr constant [70 x i8] c"[drm] *ERROR* %s: More than %d errors since the last read for lane %d\00", align 1
@__kstrtab_drm_dp_pcon_hdmi_frl_link_error_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_hdmi_frl_link_error_count = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_hdmi_frl_link_error_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_hdmi_frl_link_error_count to i32), ptr @__kstrtab_drm_dp_pcon_hdmi_frl_link_error_count, ptr @__kstrtabns_drm_dp_pcon_hdmi_frl_link_error_count }, section "___ksymtab+drm_dp_pcon_hdmi_frl_link_error_count", align 4
@__kstrtab_drm_dp_pcon_enc_is_dsc_1_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_enc_is_dsc_1_2 = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_enc_is_dsc_1_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_enc_is_dsc_1_2 to i32), ptr @__kstrtab_drm_dp_pcon_enc_is_dsc_1_2, ptr @__kstrtabns_drm_dp_pcon_enc_is_dsc_1_2 }, section "___ksymtab+drm_dp_pcon_enc_is_dsc_1_2", align 4
@__kstrtab_drm_dp_pcon_dsc_max_slices = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_dsc_max_slices = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_dsc_max_slices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_dsc_max_slices to i32), ptr @__kstrtab_drm_dp_pcon_dsc_max_slices, ptr @__kstrtabns_drm_dp_pcon_dsc_max_slices }, section "___ksymtab+drm_dp_pcon_dsc_max_slices", align 4
@__kstrtab_drm_dp_pcon_dsc_max_slice_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_dsc_max_slice_width = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_dsc_max_slice_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_dsc_max_slice_width to i32), ptr @__kstrtab_drm_dp_pcon_dsc_max_slice_width, ptr @__kstrtabns_drm_dp_pcon_dsc_max_slice_width }, section "___ksymtab+drm_dp_pcon_dsc_max_slice_width", align 4
@__kstrtab_drm_dp_pcon_dsc_bpp_incr = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_dsc_bpp_incr = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_dsc_bpp_incr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_dsc_bpp_incr to i32), ptr @__kstrtab_drm_dp_pcon_dsc_bpp_incr, ptr @__kstrtabns_drm_dp_pcon_dsc_bpp_incr }, section "___ksymtab+drm_dp_pcon_dsc_bpp_incr", align 4
@__kstrtab_drm_dp_pcon_pps_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_pps_default = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_pps_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_pps_default to i32), ptr @__kstrtab_drm_dp_pcon_pps_default, ptr @__kstrtabns_drm_dp_pcon_pps_default }, section "___ksymtab+drm_dp_pcon_pps_default", align 4
@__kstrtab_drm_dp_pcon_pps_override_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_pps_override_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_pps_override_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_pps_override_buf to i32), ptr @__kstrtab_drm_dp_pcon_pps_override_buf, ptr @__kstrtabns_drm_dp_pcon_pps_override_buf }, section "___ksymtab+drm_dp_pcon_pps_override_buf", align 4
@__kstrtab_drm_dp_pcon_pps_override_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_pps_override_param = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_pps_override_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_pps_override_param to i32), ptr @__kstrtab_drm_dp_pcon_pps_override_param, ptr @__kstrtabns_drm_dp_pcon_pps_override_param }, section "___ksymtab+drm_dp_pcon_pps_override_param", align 4
@__kstrtab_drm_dp_pcon_convert_rgb_to_ycbcr = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_dp_pcon_convert_rgb_to_ycbcr = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_dp_pcon_convert_rgb_to_ycbcr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_dp_pcon_convert_rgb_to_ycbcr to i32), ptr @__kstrtab_drm_dp_pcon_convert_rgb_to_ycbcr, ptr @__kstrtabns_drm_dp_pcon_convert_rgb_to_ycbcr }, section "___ksymtab+drm_dp_pcon_convert_rgb_to_ycbcr", align 4
@.str.39 = private unnamed_addr constant [59 x i8] c"[drm] *ERROR* %s: Failed to write aux backlight level: %d\0A\00", align 1
@__kstrtab_drm_edp_backlight_set_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_edp_backlight_set_level = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_edp_backlight_set_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_edp_backlight_set_level to i32), ptr @__kstrtab_drm_edp_backlight_set_level, ptr @__kstrtabns_drm_edp_backlight_set_level }, section "___ksymtab+drm_edp_backlight_set_level", align 4
@.str.40 = private unnamed_addr constant [46 x i8] c"%s: Failed to write aux pwmgen bit count: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: Failed to write aux backlight frequency: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"%s: Failed to write aux backlight mode: %d\0A\00", align 1
@__kstrtab_drm_edp_backlight_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_edp_backlight_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_edp_backlight_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_edp_backlight_enable to i32), ptr @__kstrtab_drm_edp_backlight_enable, ptr @__kstrtabns_drm_edp_backlight_enable }, section "___ksymtab+drm_edp_backlight_enable", align 4
@__kstrtab_drm_edp_backlight_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_edp_backlight_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_edp_backlight_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_edp_backlight_disable to i32), ptr @__kstrtab_drm_edp_backlight_disable, ptr @__kstrtabns_drm_edp_backlight_disable }, section "___ksymtab+drm_edp_backlight_disable", align 4
@.str.43 = private unnamed_addr constant [68 x i8] c"%s: Panel supports neither AUX or PWM brightness control? Aborting\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"%s: Found backlight: aux_set=%d aux_enable=%d mode=%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [73 x i8] c"%s: Backlight caps: level=%d/%d pwm_freq_pre_divider=%d lsb_reg_used=%d\0A\00", align 1
@__kstrtab_drm_edp_backlight_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_edp_backlight_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_edp_backlight_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_edp_backlight_init to i32), ptr @__kstrtab_drm_edp_backlight_init, ptr @__kstrtabns_drm_edp_backlight_init }, section "___ksymtab+drm_edp_backlight_init", align 4
@.str.46 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"DP AUX backlight is not supported\0A\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"dp_aux_backlight\00", align 1
@dp_aux_bl_ops = internal constant %struct.backlight_ops { i32 0, ptr @dp_aux_backlight_update_status, ptr null, ptr null }, align 4
@__kstrtab_drm_panel_dp_aux_backlight = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_panel_dp_aux_backlight = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_panel_dp_aux_backlight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_panel_dp_aux_backlight to i32), ptr @__kstrtab_drm_panel_dp_aux_backlight, ptr @__kstrtabns_drm_panel_dp_aux_backlight }, section "___ksymtab+drm_panel_dp_aux_backlight", align 4
@.str.49 = private unnamed_addr constant [29 x i8] c"%s: failed rd interval read\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%s: invalid AUX interval 0x%02x\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"%s: invalid AUX interval 0x%02x (max 4)\0A\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"%s: Too many retries, giving up. First error: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"%s: 0x%05x AUX %s (ret=%3d) %*ph\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"%s: 0x%05x AUX %s (ret=%3d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"%s: Extended DPCD rev less than base DPCD rev (%d > %d)\0A\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"%s: Base DPCD: %*ph\0A\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"%s: Get CRC failed after retrying: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"%s: Failed to get a CRC: %d\0A\00", align 1
@drm_dp_i2c_do_msg.rs_ = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.drm_dp_i2c_do_msg = private unnamed_addr constant [18 x i8] c"drm_dp_i2c_do_msg\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"%s: transaction timed out\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"%s: transaction failed: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"%s: native nack (result=%d, size=%zu)\0A\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"%s: native defer\0A\00", align 1
@.str.66 = private unnamed_addr constant [46 x i8] c"[drm] *ERROR* %s: invalid native reply %#04x\0A\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"%s: I2C nack (result=%d, size=%zu)\0A\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"%s: I2C defer\0A\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"[drm] *ERROR* %s: invalid I2C reply %#04x\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"%s: Too many retries, giving up\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.71 = private unnamed_addr constant [57 x i8] c"%s: Partial I2C reply: requested %zu bytes got %d bytes\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dpcd_quirk_list = internal constant [6 x %struct.dpcd_quirk] [%struct.dpcd_quirk { [3 x i8] c"\00\22\B9", [6 x i8] zeroinitializer, i8 1, i32 1 }, %struct.dpcd_quirk { [3 x i8] c"\00\22\B9", [6 x i8] c"sivarT", i8 0, i32 1 }, %struct.dpcd_quirk { [3 x i8] c"\00\10\FA", [6 x i8] zeroinitializer, i8 0, i32 2 }, %struct.dpcd_quirk { [3 x i8] zeroinitializer, [6 x i8] c"CH7511", i8 0, i32 4 }, %struct.dpcd_quirk { [3 x i8] c"\90\CC$", [6 x i8] zeroinitializer, i8 1, i32 8 }, %struct.dpcd_quirk { [3 x i8] c"\00\10\FA", [6 x i8] c"eD\15eba", i8 0, i32 16 }], align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"YUV444\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"YUV422\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"YUV420\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"Y_ONLY\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"BT.601\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"DICOM PS3.14\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"Custom Color Profile\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"Wide Fixed\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"BT.709\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"Wide Float\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"xvYCC 601\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"OpRGB\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"xvYCC 709\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"DCI-P3\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"sYCC 601\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"Custom Profile\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"OpYCC 601\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"BT.2020 RGB\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"BT.2020 CYCC\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"BT.2020 YCC\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"VESA range\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"CTA range\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"Not defined\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"Photo\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.104 = private unnamed_addr constant [67 x i8] c"[drm] *ERROR* %s: Failed to read eDP display control register: %d\0A\00", align 1
@.str.105 = private unnamed_addr constant [68 x i8] c"[drm] *ERROR* %s: Failed to write eDP display control register: %d\0A\00", align 1
@.str.106 = private unnamed_addr constant [45 x i8] c"%s: Failed to read pwmgen bit count cap: %d\0A\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"%s: Failed to read pwmgen bit count cap min: %d\0A\00", align 1
@.str.108 = private unnamed_addr constant [49 x i8] c"%s: Failed to read pwmgen bit count cap max: %d\0A\00", align 1
@.str.109 = private unnamed_addr constant [58 x i8] c"%s: Driver defined backlight frequency (%d) out of range\0A\00", align 1
@.str.110 = private unnamed_addr constant [50 x i8] c"%s: Using backlight frequency from driver (%dHz)\0A\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"%s: Failed to read backlight mode: %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"%s: Failed to read backlight level: %d\0A\00", align 1
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_dp_aux_i2c_speed_khz267, ptr @__UNIQUE_ID_dp_aux_i2c_speed_khztype266, ptr @__UNIQUE_ID_dp_aux_i2c_transfer_size271, ptr @__UNIQUE_ID_dp_aux_i2c_transfer_sizetype270, ptr @__ksymtab_drm_dp_aux_init, ptr @__ksymtab_drm_dp_aux_register, ptr @__ksymtab_drm_dp_aux_unregister, ptr @__ksymtab_drm_dp_bw_code_to_link_rate, ptr @__ksymtab_drm_dp_channel_eq_ok, ptr @__ksymtab_drm_dp_clock_recovery_ok, ptr @__ksymtab_drm_dp_downstream_420_passthrough, ptr @__ksymtab_drm_dp_downstream_444_to_420_conversion, ptr @__ksymtab_drm_dp_downstream_debug, ptr @__ksymtab_drm_dp_downstream_id, ptr @__ksymtab_drm_dp_downstream_is_tmds, ptr @__ksymtab_drm_dp_downstream_is_type, ptr @__ksymtab_drm_dp_downstream_max_bpc, ptr @__ksymtab_drm_dp_downstream_max_dotclock, ptr @__ksymtab_drm_dp_downstream_max_tmds_clock, ptr @__ksymtab_drm_dp_downstream_min_tmds_clock, ptr @__ksymtab_drm_dp_downstream_mode, ptr @__ksymtab_drm_dp_downstream_rgb_to_ycbcr_conversion, ptr @__ksymtab_drm_dp_dpcd_read, ptr @__ksymtab_drm_dp_dpcd_read_link_status, ptr @__ksymtab_drm_dp_dpcd_read_phy_link_status, ptr @__ksymtab_drm_dp_dpcd_write, ptr @__ksymtab_drm_dp_dsc_sink_line_buf_depth, ptr @__ksymtab_drm_dp_dsc_sink_max_slice_count, ptr @__ksymtab_drm_dp_dsc_sink_supported_input_bpcs, ptr @__ksymtab_drm_dp_get_adjust_request_post_cursor, ptr @__ksymtab_drm_dp_get_adjust_request_pre_emphasis, ptr @__ksymtab_drm_dp_get_adjust_request_voltage, ptr @__ksymtab_drm_dp_get_adjust_tx_ffe_preset, ptr @__ksymtab_drm_dp_get_pcon_max_frl_bw, ptr @__ksymtab_drm_dp_get_phy_test_pattern, ptr @__ksymtab_drm_dp_link_rate_to_bw_code, ptr @__ksymtab_drm_dp_link_train_channel_eq_delay, ptr @__ksymtab_drm_dp_link_train_clock_recovery_delay, ptr @__ksymtab_drm_dp_lttpr_count, ptr @__ksymtab_drm_dp_lttpr_link_train_channel_eq_delay, ptr @__ksymtab_drm_dp_lttpr_link_train_clock_recovery_delay, ptr @__ksymtab_drm_dp_lttpr_max_lane_count, ptr @__ksymtab_drm_dp_lttpr_max_link_rate, ptr @__ksymtab_drm_dp_lttpr_pre_emphasis_level_3_supported, ptr @__ksymtab_drm_dp_lttpr_voltage_swing_level_3_supported, ptr @__ksymtab_drm_dp_pcon_convert_rgb_to_ycbcr, ptr @__ksymtab_drm_dp_pcon_dsc_bpp_incr, ptr @__ksymtab_drm_dp_pcon_dsc_max_slice_width, ptr @__ksymtab_drm_dp_pcon_dsc_max_slices, ptr @__ksymtab_drm_dp_pcon_enc_is_dsc_1_2, ptr @__ksymtab_drm_dp_pcon_frl_configure_1, ptr @__ksymtab_drm_dp_pcon_frl_configure_2, ptr @__ksymtab_drm_dp_pcon_frl_enable, ptr @__ksymtab_drm_dp_pcon_frl_prepare, ptr @__ksymtab_drm_dp_pcon_hdmi_frl_link_error_count, ptr @__ksymtab_drm_dp_pcon_hdmi_link_active, ptr @__ksymtab_drm_dp_pcon_hdmi_link_mode, ptr @__ksymtab_drm_dp_pcon_is_frl_ready, ptr @__ksymtab_drm_dp_pcon_pps_default, ptr @__ksymtab_drm_dp_pcon_pps_override_buf, ptr @__ksymtab_drm_dp_pcon_pps_override_param, ptr @__ksymtab_drm_dp_pcon_reset_frl_config, ptr @__ksymtab_drm_dp_psr_setup_time, ptr @__ksymtab_drm_dp_read_channel_eq_delay, ptr @__ksymtab_drm_dp_read_clock_recovery_delay, ptr @__ksymtab_drm_dp_read_desc, ptr @__ksymtab_drm_dp_read_downstream_info, ptr @__ksymtab_drm_dp_read_dpcd_caps, ptr @__ksymtab_drm_dp_read_lttpr_common_caps, ptr @__ksymtab_drm_dp_read_lttpr_phy_caps, ptr @__ksymtab_drm_dp_read_sink_count, ptr @__ksymtab_drm_dp_read_sink_count_cap, ptr @__ksymtab_drm_dp_remote_aux_init, ptr @__ksymtab_drm_dp_send_real_edid_checksum, ptr @__ksymtab_drm_dp_set_phy_test_pattern, ptr @__ksymtab_drm_dp_set_subconnector_property, ptr @__ksymtab_drm_dp_start_crc, ptr @__ksymtab_drm_dp_stop_crc, ptr @__ksymtab_drm_dp_subconnector_type, ptr @__ksymtab_drm_dp_vsc_sdp_log, ptr @__ksymtab_drm_edp_backlight_disable, ptr @__ksymtab_drm_edp_backlight_enable, ptr @__ksymtab_drm_edp_backlight_init, ptr @__ksymtab_drm_edp_backlight_set_level, ptr @__ksymtab_drm_panel_dp_aux_backlight, ptr @__param_dp_aux_i2c_speed_khz, ptr @__param_dp_aux_i2c_transfer_size], section "llvm.metadata"
@switch.table.drm_dp_downstream_mode = private unnamed_addr constant [7 x i8] c"\06\15\05\14\04\06\13", align 1
@switch.table.drm_dp_downstream_debug = private unnamed_addr constant [7 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@switch.table.drm_dp_downstream_debug.113 = private unnamed_addr constant [4 x i32] [i32 8, i32 10, i32 12, i32 16], align 4
@switch.table.drm_dp_set_subconnector_property = private unnamed_addr constant [5 x i32] [i32 10, i32 0, i32 1, i32 0, i32 3], align 4
@switch.table.drm_dp_set_subconnector_property.115 = private unnamed_addr constant [7 x i32] [i32 10, i32 1, i32 3, i32 11, i32 0, i32 10, i32 18], align 4
@switch.table.drm_dp_dsc_sink_line_buf_depth = private unnamed_addr constant [9 x i8] c"\09\0A\0B\0C\0D\0E\0F\10\08", align 1
@switch.table.drm_dp_vsc_sdp_log = private unnamed_addr constant [6 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], align 4
@switch.table.drm_dp_vsc_sdp_log.116 = private unnamed_addr constant [6 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.81, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 4
@switch.table.drm_dp_vsc_sdp_log.117 = private unnamed_addr constant [4 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.85, ptr @.str.85], align 4
@switch.table.drm_dp_vsc_sdp_log.118 = private unnamed_addr constant [4 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.87, ptr @.str.87], align 4
@switch.table.drm_dp_vsc_sdp_log.119 = private unnamed_addr constant [4 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.89, ptr @.str.89], align 4
@switch.table.drm_dp_vsc_sdp_log.120 = private unnamed_addr constant [4 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.91, ptr @.str.91], align 4
@switch.table.drm_dp_vsc_sdp_log.121 = private unnamed_addr constant [4 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.93, ptr @.str.93], align 4
@switch.table.drm_dp_vsc_sdp_log.122 = private unnamed_addr constant [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.95, ptr @.str.95], align 4
@switch.table.drm_dp_vsc_sdp_log.123 = private unnamed_addr constant [5 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], align 4
@switch.table.drm_dp_get_pcon_max_frl_bw = private unnamed_addr constant [6 x i32] [i32 9, i32 18, i32 24, i32 32, i32 40, i32 48], align 4
@switch.table.drm_dp_pcon_hdmi_frl_link_error_count = private unnamed_addr constant [4 x i32] [i32 3, i32 10, i32 0, i32 100], align 4
@switch.table.drm_dp_pcon_dsc_bpp_incr = private unnamed_addr constant [5 x i32] [i32 16, i32 8, i32 4, i32 2, i32 1], align 4
@switch.table.__128b132b_channel_eq_delay_us = private unnamed_addr constant [7 x i32] [i32 400, i32 4000, i32 8000, i32 12000, i32 16000, i32 32000, i32 64000], align 4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %21, %9 ], [ 0, %7 ]
  %11 = lshr i32 %10, 1
  %12 = shl i32 %10, 2
  %13 = and i32 %12, 4
  %14 = getelementptr i8, ptr %0, i32 %11
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = lshr i32 %16, %13
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, 7
  %20 = xor i1 %19, true
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, %1
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %9

24:                                               ; preds = %9, %7, %2
  %25 = phi i1 [ false, %2 ], [ true, %7 ], [ %19, %9 ]
  ret i1 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = load i8, ptr %0, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %12, %4
  %9 = phi i32 [ %10, %12 ], [ 0, %4 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = lshr i32 %10, 1
  %14 = shl i32 %10, 2
  %15 = and i32 %14, 4
  %16 = getelementptr i8, ptr %0, i32 %13
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 1, %15
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %8

22:                                               ; preds = %12, %8
  %23 = icmp sge i32 %10, %1
  br label %24

24:                                               ; preds = %22, %4, %2
  %25 = phi i1 [ true, %2 ], [ false, %4 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = ashr i32 %1, 1
  %4 = shl i32 %1, 2
  %5 = and i32 %4, 4
  %6 = add nsw i32 %3, 4
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %9, %5
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 3
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = ashr i32 %1, 1
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i8 2, i8 6
  %7 = add nsw i32 %3, 4
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = lshr i8 %9, %6
  %11 = shl i8 %10, 3
  %12 = and i8 %11, 24
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_get_adjust_tx_ffe_preset(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = ashr i32 %1, 1
  %4 = shl i32 %1, 2
  %5 = and i32 %4, 4
  %6 = add nsw i32 %3, 4
  %7 = getelementptr i8, ptr %0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %9, %5
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 15
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_get_adjust_request_post_cursor(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 10
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl i32 %1, 1
  %7 = lshr i32 %5, %6
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 3
  ret i8 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_clock_recovery_delay(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #3 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  br i1 %3, label %41, label %8

8:                                                ; preds = %7
  %9 = load i8, ptr %1, align 1
  %10 = icmp ugt i8 %9, 19
  br i1 %10, label %41, label %16

11:                                               ; preds = %4
  br i1 %3, label %12, label %41

12:                                               ; preds = %11
  %13 = mul i32 %2, 80
  %14 = add i32 %13, 982994
  %15 = icmp ult i32 %14, 15
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %14, %12 ], [ 14, %8 ]
  %18 = phi ptr [ @__128b132b_channel_eq_delay_us, %12 ], [ @__8b10b_clock_recovery_delay_us, %8 ]
  %19 = getelementptr i8, ptr %1, i32 %17
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr %5, align 1
  br label %36

21:                                               ; preds = %12
  %22 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5, i32 noundef 1) #15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8, ptr %5, align 1
  br label %36

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ null, %26 ]
  %35 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef %35) #15
  br label %41

36:                                               ; preds = %24, %16
  %37 = phi i8 [ %25, %24 ], [ %20, %16 ]
  %38 = phi ptr [ @__128b132b_channel_eq_delay_us, %24 ], [ %18, %16 ]
  %39 = and i8 %37, 127
  %40 = call i32 %38(ptr noundef %0, i8 noundef zeroext %39) #15, !callees !9
  br label %41

41:                                               ; preds = %36, %33, %11, %8, %7
  %42 = phi i32 [ %40, %36 ], [ 400, %33 ], [ 100, %8 ], [ 100, %11 ], [ 100, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_channel_eq_delay(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #3 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br i1 %3, label %19, label %14

8:                                                ; preds = %4
  %9 = select i1 %3, ptr @__128b132b_channel_eq_delay_us, ptr @__8b10b_channel_eq_delay_us
  %10 = select i1 %3, i32 982994, i32 982992
  %11 = mul i32 %2, 80
  %12 = add i32 %10, %11
  %13 = icmp ult i32 %12, 15
  br i1 %13, label %14, label %19

14:                                               ; preds = %8, %7
  %15 = phi i32 [ %12, %8 ], [ 14, %7 ]
  %16 = phi ptr [ %9, %8 ], [ @__8b10b_channel_eq_delay_us, %7 ]
  %17 = getelementptr i8, ptr %1, i32 %15
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr %5, align 1
  br label %36

19:                                               ; preds = %8, %7
  %20 = phi i32 [ %12, %8 ], [ 8726, %7 ]
  %21 = phi ptr [ %9, %8 ], [ @__128b132b_channel_eq_delay_us, %7 ]
  %22 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %20, ptr noundef nonnull %5, i32 noundef 1) #15
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8, ptr %5, align 1
  br label %36

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ null, %26 ]
  %35 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 4, ptr noundef nonnull @.str.49, ptr noundef %35) #15
  br label %41

36:                                               ; preds = %24, %14
  %37 = phi i8 [ %25, %24 ], [ %18, %14 ]
  %38 = phi ptr [ %21, %24 ], [ %16, %14 ]
  %39 = and i8 %37, 127
  %40 = call i32 %38(ptr noundef %0, i8 noundef zeroext %39) #15, !callees !9
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i32 [ %40, %36 ], [ 400, %33 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_link_train_clock_recovery_delay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i8, ptr %1, align 1
  %4 = icmp ugt i8 %3, 19
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %1, i32 14
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 127
  %9 = zext i8 %8 to i32
  %10 = icmp ugt i8 %8, 4
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ null, %11 ]
  %20 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef %20, i32 noundef %9) #15
  br label %21

21:                                               ; preds = %18, %5
  %22 = icmp eq i8 %8, 0
  %23 = mul nuw nsw i32 %9, 4000
  %24 = select i1 %22, i32 100, i32 %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i32 [ %24, %21 ], [ 100, %2 ]
  %27 = shl nuw nsw i32 %26, 1
  tail call void @usleep_range_state(i32 noundef %26, i32 noundef %27, i32 noundef 2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__8b10b_clock_recovery_delay_us(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = zext i8 %1 to i32
  %4 = icmp ugt i8 %1, 4
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef %14, i32 noundef %3) #15
  br label %15

15:                                               ; preds = %12, %2
  %16 = icmp eq i8 %1, 0
  %17 = mul nuw nsw i32 %3, 4000
  %18 = select i1 %16, i32 100, i32 %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_link_train_channel_eq_delay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 127
  %6 = zext i8 %5 to i32
  %7 = icmp ugt i8 %5, 4
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  %17 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef %17, i32 noundef %6) #15
  br label %18

18:                                               ; preds = %15, %2
  %19 = icmp eq i8 %5, 0
  %20 = mul nuw nsw i32 %6, 4000
  %21 = select i1 %19, i32 400, i32 %20
  %22 = shl nuw nsw i32 %21, 1
  tail call void @usleep_range_state(i32 noundef %21, i32 noundef %22, i32 noundef 2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_lttpr_link_train_clock_recovery_delay() #3 {
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_lttpr_link_train_channel_eq_delay(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 127
  %5 = zext i8 %4 to i32
  %6 = icmp ugt i8 %4, 4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  %16 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %15, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef %16, i32 noundef %5) #15
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq i8 %4, 0
  %19 = mul nuw nsw i32 %5, 4000
  %20 = select i1 %18, i32 400, i32 %19
  %21 = shl nuw nsw i32 %20, 1
  tail call void @usleep_range_state(i32 noundef %20, i32 noundef %21, i32 noundef 2) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %0) #4 {
  switch i32 %0, label %4 [
    i32 1000000, label %7
    i32 1350000, label %2
    i32 2000000, label %3
  ]

2:                                                ; preds = %1
  br label %7

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = sdiv i32 %0, 27000
  %6 = trunc i32 %5 to i8
  br label %7

7:                                                ; preds = %4, %3, %2, %1
  %8 = phi i8 [ %6, %4 ], [ 2, %3 ], [ 4, %2 ], [ 1, %1 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %0) #4 {
  switch i8 %0, label %4 [
    i8 1, label %7
    i8 4, label %2
    i8 2, label %3
  ]

2:                                                ; preds = %1
  br label %7

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = zext i8 %0 to i32
  %6 = mul nuw nsw i32 %5, 27000
  br label %7

7:                                                ; preds = %4, %3, %2, %1
  %8 = phi i32 [ %6, %4 ], [ 2000000, %3 ], [ 1350000, %2 ], [ 1000000, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 8, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @drm_dp_dpcd_access(ptr noundef %0, i8 noundef zeroext 9, i32 noundef 0, ptr noundef %2, i32 noundef 1)
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %4
  %15 = tail call i32 @drm_dp_mst_dpcd_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #15
  br label %18

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @drm_dp_dpcd_access(ptr noundef %0, i8 noundef zeroext 9, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %18

18:                                               ; preds = %16, %14, %8
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ %9, %8 ]
  %20 = icmp sgt i32 %19, 0
  %21 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %20, label %24, label %32

24:                                               ; preds = %18
  br i1 %23, label %28, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi ptr [ %27, %25 ], [ null, %24 ]
  %30 = load ptr, ptr %0, align 8
  %31 = tail call i32 @llvm.smin.i32(i32 %19, i32 20) #15
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %29, i32 noundef 256, ptr noundef nonnull @.str.55, ptr noundef %30, i32 noundef %1, ptr noundef nonnull @.str.53, i32 noundef %19, i32 noundef %31, ptr noundef %2) #15
  br label %39

32:                                               ; preds = %18
  br i1 %23, label %36, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi ptr [ %35, %33 ], [ null, %32 ]
  %38 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 256, ptr noundef nonnull @.str.56, ptr noundef %38, i32 noundef %1, ptr noundef nonnull @.str.53, i32 noundef %19) #15
  br label %39

39:                                               ; preds = %36, %28
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_dp_dpcd_access(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 {
  %6 = alloca %struct.drm_dp_aux_msg, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %7, align 4
  store i32 %2, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %6, i32 0, i32 1
  store i8 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %6, i32 0, i32 3
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %6, i32 0, i32 4
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %6, i32 0, i32 2
  br label %14

14:                                               ; preds = %29, %5
  %15 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %16 = phi i32 [ 0, %5 ], [ %32, %29 ]
  %17 = phi i32 [ 0, %5 ], [ %33, %29 ]
  switch i32 %15, label %18 [
    i32 -110, label %19
    i32 0, label %19
  ]

18:                                               ; preds = %14
  call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #15
  br label %19

19:                                               ; preds = %18, %14, %14
  %20 = load ptr, ptr %12, align 4
  %21 = call i32 %20(ptr noundef %0, ptr noundef nonnull %6) #15
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i8, ptr %13, align 1
  %25 = and i8 %24, 3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = icmp eq i32 %21, %4
  br i1 %28, label %45, label %29

29:                                               ; preds = %27, %23, %19
  %30 = phi i32 [ %21, %19 ], [ -71, %27 ], [ -5, %23 ]
  %31 = icmp eq i32 %16, 0
  %32 = select i1 %31, i32 %30, i32 %16
  %33 = add nuw nsw i32 %17, 1
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %14

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %41, %39 ], [ null, %35 ]
  %44 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %44, i32 noundef %32) #15
  br label %45

45:                                               ; preds = %42, %27
  %46 = phi i32 [ %32, %42 ], [ %4, %27 ]
  call void @mutex_unlock(ptr noundef %11) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 8, !range !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @drm_dp_mst_dpcd_write(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #15
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @drm_dp_dpcd_access(ptr noundef %0, i8 noundef zeroext 8, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = icmp sgt i32 %13, 0
  %15 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %14, label %18, label %26

18:                                               ; preds = %12
  br i1 %17, label %22, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi ptr [ %21, %19 ], [ null, %18 ]
  %24 = load ptr, ptr %0, align 8
  %25 = tail call i32 @llvm.smin.i32(i32 %13, i32 20) #15
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %23, i32 noundef 256, ptr noundef nonnull @.str.55, ptr noundef %24, i32 noundef %1, ptr noundef nonnull @.str.54, i32 noundef %13, i32 noundef %25, ptr noundef %2) #15
  br label %33

26:                                               ; preds = %12
  br i1 %17, label %30, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi ptr [ %29, %27 ], [ null, %26 ]
  %32 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %31, i32 noundef 256, ptr noundef nonnull @.str.56, ptr noundef %32, i32 noundef %1, ptr noundef nonnull @.str.54, i32 noundef %13) #15
  br label %33

33:                                               ; preds = %30, %22
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 514, ptr noundef %1, i32 noundef 6)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_dpcd_read_phy_link_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 514, ptr noundef %2, i32 noundef 6)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %6, 6
  br i1 %9, label %23, label %10, !prof !11

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 9, ptr noundef null) #15
  br label %23

11:                                               ; preds = %3
  %12 = mul i32 %1, 80
  %13 = add i32 %12, 983008
  %14 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %13, ptr noundef %2, i32 noundef 5)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = icmp eq i32 %14, 5
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 593, i32 noundef 9, ptr noundef null) #15
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr i8, ptr %2, i32 4
  %21 = getelementptr i8, ptr %2, i32 3
  %22 = load i16, ptr %21, align 1
  store i16 %22, ptr %20, align 1
  store i8 0, ptr %21, align 1
  br label %23

23:                                               ; preds = %19, %11, %10, %8, %5
  %24 = phi i32 [ 0, %19 ], [ %6, %5 ], [ 0, %10 ], [ 0, %8 ], [ %14, %11 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_downstream_is_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp ugt i8 %9, 16
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i8, ptr %1, align 1
  %13 = and i8 %12, 7
  %14 = icmp eq i8 %13, %2
  br label %15

15:                                               ; preds = %11, %8, %3
  %16 = phi i1 [ false, %8 ], [ false, %3 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_downstream_is_tmds(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp ult i8 %4, 17
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 6
  %10 = icmp eq i8 %9, 4
  br label %27

11:                                               ; preds = %3
  %12 = load i8, ptr %1, align 1
  %13 = and i8 %12, 7
  %14 = zext i8 %13 to i32
  switch i32 %14, label %27 [
    i32 5, label %15
    i32 2, label %26
    i32 3, label %26
  ]

15:                                               ; preds = %11
  %16 = icmp eq ptr %2, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = icmp ugt i8 %19, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 8
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, -121
  %25 = icmp eq i8 %24, -123
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %17, %15, %11, %11
  br label %27

27:                                               ; preds = %26, %21, %11, %6
  %28 = phi i1 [ true, %26 ], [ %10, %6 ], [ false, %11 ], [ false, %21 ]
  ret i1 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %0, i8 noundef zeroext %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  %7 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 513, ptr noundef nonnull %5, i32 noundef 1)
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef 513) #16
  br label %70

15:                                               ; preds = %2
  %16 = load i8, ptr %5, align 1
  %17 = and i8 %16, 2
  store i8 %17, ptr %5, align 1
  %18 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 536, ptr noundef nonnull %4, i32 noundef 1)
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef 536) #16
  br label %70

26:                                               ; preds = %15
  %27 = load i8, ptr %4, align 1
  %28 = and i8 %27, 4
  store i8 %28, ptr %4, align 1
  %29 = load i8, ptr %5, align 1
  %30 = icmp ne i8 %29, 0
  %31 = icmp ne i8 %28, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi ptr [ %39, %37 ], [ null, %33 ]
  %42 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %41, i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef %42) #15
  br label %70

43:                                               ; preds = %26
  %44 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 513, ptr noundef nonnull %5, i32 noundef 1)
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef %51, i32 noundef 513) #16
  br label %70

52:                                               ; preds = %43
  %53 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 609, ptr noundef nonnull %3, i32 noundef 1)
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.3, ptr noundef %60, i32 noundef 609) #16
  br label %70

61:                                               ; preds = %52
  store i8 4, ptr %6, align 1
  %62 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 608, ptr noundef nonnull %6, i32 noundef 1)
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.3, ptr noundef %69, i32 noundef 608) #16
  br label %70

70:                                               ; preds = %64, %61, %55, %46, %40, %20, %9
  %71 = phi i1 [ false, %9 ], [ false, %20 ], [ false, %46 ], [ false, %55 ], [ false, %64 ], [ false, %40 ], [ true, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i1 %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_dpcd_caps(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca [15 x i8], align 1
  %4 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 0, ptr noundef %1, i32 noundef 15)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 15
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %3, i8 0, i32 15, i1 false) #15, !annotation !8
  %12 = getelementptr i8, ptr %1, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %51, label %15

15:                                               ; preds = %11
  %16 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 8704, ptr noundef nonnull %3, i32 noundef 15) #15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %16, 15
  br i1 %19, label %20, label %49

20:                                               ; preds = %18
  %21 = load i8, ptr %1, align 1
  %22 = load i8, ptr %3, align 1
  %23 = icmp ugt i8 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ null, %24 ]
  %33 = load ptr, ptr %0, align 8
  %34 = zext i8 %21 to i32
  %35 = zext i8 %22 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %32, i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef %33, i32 noundef %34, i32 noundef %35) #15
  br label %51

36:                                               ; preds = %20
  %37 = call i32 @bcmp(ptr noundef dereferenceable(15) %1, ptr noundef nonnull dereferenceable(15) %3, i32 15) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %45, %43 ], [ null, %39 ]
  %48 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %47, i32 noundef 4, ptr noundef nonnull @.str.58, ptr noundef %48, i32 noundef 15, ptr noundef %1) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %1, ptr noundef nonnull align 1 dereferenceable(15) %3, i32 15, i1 false) #15
  br label %51

49:                                               ; preds = %18, %15
  %50 = phi i32 [ %16, %15 ], [ -5, %18 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #15
  br label %61

51:                                               ; preds = %46, %36, %31, %11
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #15
  %52 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi ptr [ %57, %55 ], [ null, %51 ]
  %60 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %59, i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef %60, i32 noundef 15, ptr noundef %1) #15
  br label %61

61:                                               ; preds = %58, %49, %8, %6, %2
  %62 = phi i32 [ 0, %58 ], [ %4, %2 ], [ -5, %8 ], [ -5, %6 ], [ %50, %49 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_downstream_info(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %4 = getelementptr i8, ptr %1, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 16
  br i1 %10, label %40, label %11

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %1, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 15
  %15 = and i8 %5, 16
  %16 = icmp ne i8 %15, 0
  %17 = icmp ugt i8 %14, 4
  %18 = select i1 %16, i1 %17, i1 false
  %19 = select i1 %18, i8 4, i8 %14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %11
  %22 = icmp eq i8 %15, 0
  %23 = shl nuw nsw i8 %19, 2
  %24 = select i1 %22, i8 %19, i8 %23
  %25 = zext i8 %24 to i32
  %26 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 128, ptr noundef %2, i32 noundef %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = icmp eq i32 %26, %25
  br i1 %29, label %30, label %40

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi ptr [ %36, %34 ], [ null, %30 ]
  %39 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %38, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %39, i32 noundef %25, ptr noundef %2) #15
  br label %40

40:                                               ; preds = %37, %28, %21, %11, %8, %3
  %41 = phi i32 [ 0, %37 ], [ 0, %8 ], [ 0, %3 ], [ 0, %11 ], [ %26, %21 ], [ -5, %28 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_downstream_max_dotclock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1
  %9 = icmp ult i8 %8, 17
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %1, align 1
  %12 = and i8 %11, 7
  %13 = icmp ne i8 %12, 1
  %14 = and i8 %4, 16
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %1, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 8000
  br label %22

22:                                               ; preds = %17, %10, %7, %2
  %23 = phi i32 [ %21, %17 ], [ 0, %2 ], [ 0, %7 ], [ 0, %10 ]
  ret i32 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_downstream_max_tmds_clock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp ult i8 %9, 17
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = and i8 %5, 6
  %13 = icmp eq i8 %12, 4
  %14 = select i1 %13, i32 165000, i32 0
  br label %46

15:                                               ; preds = %8
  %16 = load i8, ptr %1, align 1
  %17 = and i8 %16, 7
  %18 = zext i8 %17 to i32
  switch i32 %18, label %46 [
    i32 5, label %19
    i32 3, label %30
    i32 2, label %38
  ]

19:                                               ; preds = %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 7
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, -121
  %29 = icmp eq i8 %28, -123
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %21, %19, %15
  %31 = and i8 %5, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %1, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = mul nuw nsw i32 %36, 2500
  br label %46

38:                                               ; preds = %15
  %39 = and i8 %5, 16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %1, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 2500
  br label %46

46:                                               ; preds = %41, %38, %33, %30, %25, %15, %11, %3
  %47 = phi i32 [ %45, %41 ], [ %37, %33 ], [ 0, %3 ], [ %14, %11 ], [ 300000, %30 ], [ 165000, %38 ], [ 0, %15 ], [ 0, %25 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_downstream_min_tmds_clock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp ult i8 %9, 17
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = and i8 %5, 6
  %13 = icmp eq i8 %12, 4
  %14 = select i1 %13, i32 25000, i32 0
  br label %31

15:                                               ; preds = %8
  %16 = load i8, ptr %1, align 1
  %17 = and i8 %16, 7
  %18 = zext i8 %17 to i32
  switch i32 %18, label %31 [
    i32 5, label %19
    i32 2, label %30
    i32 3, label %30
  ]

19:                                               ; preds = %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 7
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, -121
  %29 = icmp eq i8 %28, -123
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %21, %19, %15, %15
  br label %31

31:                                               ; preds = %30, %25, %15, %11, %3
  %32 = phi i32 [ 25000, %30 ], [ 0, %3 ], [ %14, %11 ], [ 0, %15 ], [ 0, %25 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_downstream_max_bpc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp ult i8 %9, 17
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = and i8 %5, 6
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 0, i32 8
  br label %41

15:                                               ; preds = %8
  %16 = load i8, ptr %1, align 1
  %17 = and i8 %16, 7
  %18 = zext i8 %17 to i32
  switch i32 %18, label %40 [
    i32 0, label %41
    i32 5, label %19
    i32 3, label %30
    i32 2, label %30
    i32 1, label %30
  ]

19:                                               ; preds = %15
  %20 = icmp eq ptr %2, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 7
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.edid, ptr %2, i32 0, i32 8
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, -121
  %29 = icmp eq i8 %28, -123
  br i1 %29, label %41, label %30

30:                                               ; preds = %25, %21, %19, %15, %15, %15
  %31 = and i8 %5, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %1, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 3
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds [4 x i32], ptr @switch.table.drm_dp_downstream_debug.113, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  br label %41

40:                                               ; preds = %15
  br label %41

41:                                               ; preds = %40, %33, %30, %25, %15, %11, %3
  %42 = phi i32 [ 8, %40 ], [ 0, %3 ], [ %14, %11 ], [ %18, %15 ], [ 8, %30 ], [ 0, %25 ], [ %39, %33 ]
  ret i32 %42
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_downstream_420_passthrough(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1
  %9 = icmp ult i8 %8, 19
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %1, align 1
  %12 = and i8 %11, 7
  %13 = zext i8 %12 to i32
  switch i32 %13, label %22 [
    i32 0, label %23
    i32 3, label %14
  ]

14:                                               ; preds = %10
  %15 = and i8 %4, 16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 4
  %21 = icmp ne i8 %20, 0
  br label %23

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %17, %14, %10, %7, %2
  %24 = phi i1 [ false, %22 ], [ %21, %17 ], [ false, %2 ], [ false, %7 ], [ true, %10 ], [ false, %14 ]
  ret i1 %24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_downstream_444_to_420_conversion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1
  %9 = icmp ult i8 %8, 19
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr %1, align 1
  %12 = and i8 %11, 7
  %13 = icmp ne i8 %12, 3
  %14 = and i8 %4, 16
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 16
  %21 = icmp ne i8 %20, 0
  br label %22

22:                                               ; preds = %17, %10, %7, %2
  %23 = phi i1 [ %21, %17 ], [ false, %2 ], [ false, %7 ], [ false, %10 ]
  ret i1 %23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_downstream_rgb_to_ycbcr_conversion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1
  %10 = icmp ult i8 %9, 19
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %1, align 1
  %13 = and i8 %12, 7
  %14 = icmp ne i8 %13, 3
  %15 = and i8 %5, 16
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %1, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, %2
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %18, %11, %8, %3
  %24 = phi i1 [ %22, %18 ], [ false, %3 ], [ false, %8 ], [ false, %11 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_dp_downstream_mode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr i8, ptr %1, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 1
  %10 = icmp ult i8 %9, 17
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %2, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 7
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = and i32 %13, 240
  %18 = add nsw i32 %17, -16
  %19 = lshr exact i32 %18, 4
  %20 = icmp ult i32 %18, 112
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = trunc i32 %19 to i8
  %23 = lshr i8 95, %22
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [7 x i8], ptr @switch.table.drm_dp_downstream_mode, i32 0, i32 %19
  %28 = load i8, ptr %27, align 1
  %29 = tail call ptr @drm_display_mode_from_cea_vic(ptr noundef %0, i8 noundef zeroext %28) #15
  br label %30

30:                                               ; preds = %26, %21, %16, %11, %8, %3
  %31 = phi ptr [ %29, %26 ], [ null, %3 ], [ null, %8 ], [ null, %16 ], [ null, %11 ], [ null, %21 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_display_mode_from_cea_vic(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_downstream_id(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1283, ptr noundef %1, i32 noundef 6)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_downstream_debug(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) #3 {
  %6 = alloca [7 x i8], align 1
  %7 = alloca [2 x i8], align 2
  %8 = getelementptr i8, ptr %1, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 0, ptr %7, align 2, !annotation !8
  %12 = load i8, ptr %2, align 1
  %13 = and i8 %9, 1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %15) #15
  br i1 %14, label %168, label %16

16:                                               ; preds = %5
  %17 = and i8 %12, 7
  %18 = icmp eq i8 %17, 7
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32
  %21 = getelementptr inbounds [7 x ptr], ptr @switch.table.drm_dp_downstream_debug, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi ptr [ %22, %19 ], [ @.str.16, %16 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %24) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %6, i8 0, i32 7, i1 false)
  %25 = call i32 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1283, ptr noundef nonnull %6, i32 noundef 6) #15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #15
  %26 = call i32 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1289, ptr noundef nonnull %7, i32 noundef 1)
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8, ptr %7, align 2
  %30 = zext i8 %29 to i32
  %31 = lshr i32 %30, 4
  %32 = and i32 %30, 15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %31, i32 noundef %32) #15
  br label %33

33:                                               ; preds = %28, %23
  %34 = call i32 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 1290, ptr noundef nonnull %7, i32 noundef 2)
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i8, ptr %7, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %38, i32 noundef %41) #15
  br label %42

42:                                               ; preds = %36, %33
  br i1 %11, label %168, label %43

43:                                               ; preds = %42
  %44 = load i8, ptr %8, align 1
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %168, label %47

47:                                               ; preds = %43
  %48 = load i8, ptr %1, align 1
  %49 = icmp ult i8 %48, 17
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr %2, align 1
  %52 = and i8 %51, 7
  %53 = icmp ne i8 %52, 1
  %54 = and i8 %44, 16
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = getelementptr i8, ptr %2, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = zext i8 %59 to i32
  %63 = mul nuw nsw i32 %62, 8000
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %63) #15
  %64 = load i8, ptr %8, align 1
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %168, label %67

67:                                               ; preds = %61, %57, %50
  %68 = phi i8 [ %44, %57 ], [ %44, %50 ], [ %64, %61 ]
  %69 = load i8, ptr %1, align 1
  %70 = icmp ult i8 %69, 17
  br i1 %70, label %71, label %75

71:                                               ; preds = %67, %47
  %72 = phi i8 [ %68, %67 ], [ %44, %47 ]
  %73 = and i8 %72, 6
  %74 = icmp eq i8 %73, 4
  br i1 %74, label %102, label %107

75:                                               ; preds = %67
  %76 = load i8, ptr %2, align 1
  %77 = and i8 %76, 7
  %78 = zext i8 %77 to i32
  switch i32 %78, label %107 [
    i32 5, label %79
    i32 3, label %90
    i32 2, label %93
  ]

79:                                               ; preds = %75
  %80 = icmp eq ptr %3, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 7
  %83 = load i8, ptr %82, align 1
  %84 = icmp ugt i8 %83, 3
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 8
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, -121
  %89 = icmp eq i8 %88, -123
  br i1 %89, label %107, label %90

90:                                               ; preds = %85, %81, %79, %75
  %91 = and i8 %68, 16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %102, label %96

93:                                               ; preds = %75
  %94 = and i8 %68, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93, %90
  %97 = getelementptr i8, ptr %2, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = mul nuw nsw i32 %99, 2500
  %101 = icmp eq i8 %98, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %96, %93, %90, %71
  %103 = phi i32 [ %100, %96 ], [ 165000, %93 ], [ 300000, %90 ], [ 165000, %71 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %103) #15
  %104 = load i8, ptr %8, align 1
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %168, label %107

107:                                              ; preds = %102, %96, %85, %75, %71
  %108 = phi i8 [ %104, %102 ], [ %68, %96 ], [ %72, %71 ], [ %68, %75 ], [ %68, %85 ]
  %109 = load i8, ptr %1, align 1
  %110 = icmp ult i8 %109, 17
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = and i8 %108, 6
  %113 = icmp eq i8 %112, 4
  br i1 %113, label %129, label %137

114:                                              ; preds = %107
  %115 = load i8, ptr %2, align 1
  %116 = and i8 %115, 7
  %117 = zext i8 %116 to i32
  switch i32 %117, label %133 [
    i32 5, label %118
    i32 2, label %129
    i32 3, label %129
  ]

118:                                              ; preds = %114
  %119 = icmp eq ptr %3, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 7
  %122 = load i8, ptr %121, align 1
  %123 = icmp ugt i8 %122, 3
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 8
  %126 = load i8, ptr %125, align 1
  %127 = and i8 %126, -121
  %128 = icmp eq i8 %127, -123
  br i1 %128, label %133, label %129

129:                                              ; preds = %124, %120, %118, %114, %114, %111
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 25000) #15
  %130 = load i8, ptr %8, align 1
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %168, label %133

133:                                              ; preds = %129, %124, %114
  %134 = phi i8 [ %108, %114 ], [ %108, %124 ], [ %130, %129 ]
  %135 = load i8, ptr %1, align 1
  %136 = icmp ult i8 %135, 17
  br i1 %136, label %137, label %141

137:                                              ; preds = %133, %111
  %138 = phi i8 [ %134, %133 ], [ %108, %111 ]
  %139 = and i8 %138, 6
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %168, label %166

141:                                              ; preds = %133
  %142 = load i8, ptr %2, align 1
  %143 = and i8 %142, 7
  %144 = zext i8 %143 to i32
  switch i32 %144, label %166 [
    i32 0, label %168
    i32 5, label %145
    i32 3, label %156
    i32 2, label %156
    i32 1, label %156
  ]

145:                                              ; preds = %141
  %146 = icmp eq ptr %3, null
  br i1 %146, label %156, label %147

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 7
  %149 = load i8, ptr %148, align 1
  %150 = icmp ugt i8 %149, 3
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.edid, ptr %3, i32 0, i32 8
  %153 = load i8, ptr %152, align 1
  %154 = and i8 %153, -121
  %155 = icmp eq i8 %154, -123
  br i1 %155, label %168, label %156

156:                                              ; preds = %151, %147, %145, %141, %141, %141
  %157 = and i8 %134, 16
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %2, i32 2
  %161 = load i8, ptr %160, align 1
  %162 = and i8 %161, 3
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds [4 x i32], ptr @switch.table.drm_dp_downstream_debug.113, i32 0, i32 %163
  %165 = load i32, ptr %164, align 4
  br label %166

166:                                              ; preds = %159, %156, %141, %137
  %167 = phi i32 [ 8, %156 ], [ 8, %137 ], [ 8, %141 ], [ %165, %159 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %167) #15
  br label %168

168:                                              ; preds = %166, %151, %141, %137, %129, %102, %61, %43, %42, %5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_subconnector_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1
  %9 = icmp eq i8 %8, 16
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = and i8 %4, 6
  %12 = icmp ult i8 %11, 5
  br i1 %12, label %17, label %26

13:                                               ; preds = %7
  %14 = load i8, ptr %1, align 1
  %15 = and i8 %14, 7
  %16 = icmp eq i8 %15, 7
  br i1 %16, label %26, label %20

17:                                               ; preds = %10
  %18 = zext i8 %11 to i32
  %19 = getelementptr inbounds [5 x i32], ptr @switch.table.drm_dp_set_subconnector_property, i32 0, i32 %18
  br label %23

20:                                               ; preds = %13
  %21 = zext i8 %15 to i32
  %22 = getelementptr inbounds [7 x i32], ptr @switch.table.drm_dp_set_subconnector_property.115, i32 0, i32 %21
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %22, %20 ], [ %19, %17 ]
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %13, %10, %2
  %27 = phi i32 [ 15, %2 ], [ 0, %10 ], [ 0, %13 ], [ %25, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_set_subconnector_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #3 {
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %6, label %30

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %2, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = load i8, ptr %2, align 1
  %13 = icmp eq i8 %12, 16
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = and i8 %8, 6
  %16 = icmp ult i8 %15, 5
  br i1 %16, label %21, label %30

17:                                               ; preds = %11
  %18 = load i8, ptr %3, align 1
  %19 = and i8 %18, 7
  %20 = icmp eq i8 %19, 7
  br i1 %20, label %30, label %24

21:                                               ; preds = %14
  %22 = zext i8 %15 to i32
  %23 = getelementptr inbounds [5 x i32], ptr @switch.table.drm_dp_set_subconnector_property, i32 0, i32 %22
  br label %27

24:                                               ; preds = %17
  %25 = zext i8 %19 to i32
  %26 = getelementptr inbounds [7 x i32], ptr @switch.table.drm_dp_set_subconnector_property.115, i32 0, i32 %25
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %23, %21 ]
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %17, %14, %6, %4
  %31 = phi i32 [ 0, %4 ], [ 15, %6 ], [ 0, %14 ], [ 0, %17 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 59
  %35 = load ptr, ptr %34, align 4
  %36 = zext i32 %31 to i64
  %37 = tail call i32 @drm_object_property_set_value(ptr noundef %32, ptr noundef %35, i64 noundef %36) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_read_sink_count_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 14
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = icmp ugt i8 %8, 16
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %1, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.drm_dp_desc, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %15, %10, %7, %3
  %21 = phi i1 [ false, %10 ], [ false, %7 ], [ false, %3 ], [ %19, %15 ]
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_sink_count(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %2, i32 noundef 1) #15
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %9, 1
  %11 = and i32 %10, 64
  %12 = and i32 %9, 63
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %7, %5, %1
  %15 = phi i32 [ %13, %7 ], [ %3, %1 ], [ -5, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i32 %15
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_remote_aux_init(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6
  store i32 -32, ptr %2, align 8
  %3 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 2
  store ptr @drm_dp_aux_crc_work, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_dp_aux_crc_work(ptr noundef %0) #3 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca [3 x i32], align 4
  %4 = getelementptr i8, ptr %0, i32 -696
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8, !prof !12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 26, i32 2
  %10 = load i8, ptr %9, align 8, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %73, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  %15 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  %16 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  %18 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  %19 = getelementptr inbounds [3 x i32], ptr %3, i32 0, i32 2
  %20 = getelementptr i8, ptr %0, i32 -28
  br label %22

21:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1847, i32 noundef 9, ptr noundef null) #15
  br label %73

22:                                               ; preds = %41, %12
  call void @drm_crtc_wait_one_vblank(ptr noundef nonnull %6) #15
  %23 = load i8, ptr %9, align 8, !range !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %73, label %25

25:                                               ; preds = %22
  %26 = call fastcc i32 @drm_dp_aux_get_crc(ptr noundef %4, ptr noundef nonnull %2)
  %27 = icmp eq i32 %26, -11
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #15
  %29 = call fastcc i32 @drm_dp_aux_get_crc(ptr noundef %4, ptr noundef nonnull %2)
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ %26, %25 ]
  switch i32 %31, label %44 [
    i32 -11, label %32
    i32 0, label %53
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi ptr [ %37, %35 ], [ null, %32 ]
  %40 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %39, i32 noundef 4, ptr noundef nonnull @.str.59, ptr noundef %40, i32 noundef -11) #15
  br label %41

41:                                               ; preds = %53, %50, %38
  %42 = load i8, ptr %9, align 8, !range !10
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %73, label %22

44:                                               ; preds = %30
  %45 = load ptr, ptr %20, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ null, %44 ]
  %52 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %51, i32 noundef 4, ptr noundef nonnull @.str.60, ptr noundef %52, i32 noundef %31) #15
  br label %41

53:                                               ; preds = %30
  %54 = load i8, ptr %2, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, ptr %13, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 8
  %59 = or i32 %58, %55
  store i32 %59, ptr %3, align 4
  %60 = load i8, ptr %14, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, ptr %15, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = or i32 %64, %61
  store i32 %65, ptr %16, align 4
  %66 = load i8, ptr %17, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, ptr %18, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %70, %67
  store i32 %71, ptr %19, align 4
  %72 = call i32 @drm_crtc_add_crc_entry(ptr noundef nonnull %6, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %3) #15
  br label %41

73:                                               ; preds = %41, %22, %21, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_aux_init(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @drm_dp_aux_init.__key) #15
  %3 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull @drm_dp_aux_init.__key.25) #15
  %4 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6
  store i32 -32, ptr %4, align 8
  %5 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 2
  store ptr @drm_dp_aux_crc_work, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 2
  store ptr @drm_dp_i2c_algo, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 3
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 8
  store i32 3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 4
  store ptr @drm_dp_i2c_lock_ops, ptr %11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_register(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @drm_dp_aux_register.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %1
  store i1 true, ptr @drm_dp_aux_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1953, i32 noundef 9, ptr noundef null) #15
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef nonnull @drm_dp_aux_init.__key) #15
  %16 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.26, ptr noundef nonnull @drm_dp_aux_init.__key.25) #15
  %17 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6
  store i32 -32, ptr %17, align 8
  %18 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6, i32 2
  store ptr @drm_dp_aux_crc_work, ptr %20, align 4
  store ptr @drm_dp_i2c_algo, ptr %11, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 3
  store ptr %0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 8
  store i32 3, ptr %22, align 8
  %23 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 4
  store ptr @drm_dp_i2c_lock_ops, ptr %23, align 8
  br label %24

24:                                               ; preds = %14, %9
  %25 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 1
  store i32 8, ptr %25, align 4
  store ptr null, ptr %10, align 8
  %26 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 9, i32 1
  store ptr %27, ptr %28, align 4
  %29 = load ptr, ptr %0, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load ptr, ptr %27, align 4
  br label %37

37:                                               ; preds = %35, %31, %24
  %38 = phi ptr [ %29, %24 ], [ %36, %35 ], [ %33, %31 ]
  %39 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1, i32 12
  %40 = tail call i32 @strlcpy(ptr noundef %39, ptr noundef %38, i32 noundef 48) #15
  %41 = tail call i32 @i2c_add_adapter(ptr noundef %10) #15
  ret i32 %41
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_aux_unregister(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_psr_setup_time(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 7
  %6 = icmp eq i8 %5, 7
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i32
  %9 = getelementptr [7 x i16], ptr @drm_dp_psr_setup_time.psr_setup_time_us, i32 0, i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ %11, %7 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_start_crc(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %4, i32 noundef 1) #15
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %4, align 1
  %9 = or i8 %8, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %9, ptr %3, align 1
  %10 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 7
  store i8 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 4
  store ptr %1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr @system_wq, align 4
  %17 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15) #15
  br label %18

18:                                               ; preds = %12, %7, %2
  %19 = phi i32 [ 0, %12 ], [ %5, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_stop_crc(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %3, i32 noundef 1) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %8, ptr %2, align 1
  %9 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %2, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 6
  %13 = call zeroext i1 @flush_work(ptr noundef %12) #15
  %14 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 4
  store ptr null, ptr %14, align 8
  br label %15

15:                                               ; preds = %11, %6, %1
  %16 = phi i32 [ 0, %11 ], [ %4, %1 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_desc(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 {
  %4 = alloca [6 x i8], align 1
  %5 = select i1 %2, i32 1280, i32 1024
  %6 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef 12)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false) #15
  %9 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %31, %8
  %11 = phi i32 [ 0, %8 ], [ %33, %31 ]
  %12 = phi i32 [ 0, %8 ], [ %32, %31 ]
  %13 = and i32 %11, 268435451
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, %2
  br i1 %15, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr [6 x %struct.dpcd_quirk], ptr @dpcd_quirk_list, i32 0, i32 %11
  %18 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %17, ptr noundef dereferenceable(3) %1, i32 3) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr [6 x %struct.dpcd_quirk], ptr @dpcd_quirk_list, i32 0, i32 %11, i32 1
  %22 = call i32 @bcmp(ptr noundef dereferenceable(6) %21, ptr noundef nonnull dereferenceable(6) %4, i32 6) #15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %21, ptr noundef dereferenceable(6) %9, i32 6) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %20
  %28 = getelementptr [6 x %struct.dpcd_quirk], ptr @dpcd_quirk_list, i32 0, i32 %11, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %12
  br label %31

31:                                               ; preds = %27, %24, %16, %10
  %32 = phi i32 [ %12, %10 ], [ %12, %16 ], [ %12, %24 ], [ %30, %27 ]
  %33 = add nuw nsw i32 %11, 1
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %10

35:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #15
  %36 = getelementptr inbounds %struct.drm_dp_desc, ptr %1, i32 0, i32 1
  store i32 %32, ptr %36, align 4
  %37 = tail call i32 @strnlen(ptr noundef %9, i32 noundef 6)
  %38 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi ptr [ %43, %41 ], [ null, %35 ]
  %46 = load ptr, ptr %0, align 8
  %47 = select i1 %2, ptr @.str.28, ptr @.str.29
  %48 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %1, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = lshr i32 %50, 4
  %52 = and i32 %50, 15
  %53 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %1, i32 0, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.drm_dp_dpcd_ident, ptr %1, i32 0, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %45, i32 noundef 4, ptr noundef nonnull @.str.27, ptr noundef %46, ptr noundef nonnull %47, i32 noundef 3, ptr noundef %1, i32 noundef %37, ptr noundef %9, i32 noundef %51, i32 noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %32) #15
  br label %59

59:                                               ; preds = %44, %3
  %60 = phi i32 [ 0, %44 ], [ %6, %3 ]
  ret i32 %60
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_dsc_sink_max_slice_count(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = load i8, ptr %3, align 1
  br i1 %1, label %5, label %15

5:                                                ; preds = %2
  %6 = zext i8 %4 to i32
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %50

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %0, i32 13
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = and i32 %18, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = and i32 %18, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = zext i8 %4 to i32
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = and i32 %28, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = and i32 %28, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = and i32 %28, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = and i32 %28, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = and i32 %28, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = and i32 %28, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %12
  br label %50

50:                                               ; preds = %49, %46, %43, %40, %37, %34, %31, %27, %24, %21, %15, %12, %9, %5
  %51 = phi i8 [ 0, %49 ], [ 1, %46 ], [ 4, %5 ], [ 2, %9 ], [ 1, %12 ], [ 2, %43 ], [ 4, %40 ], [ 6, %37 ], [ 8, %34 ], [ 10, %31 ], [ 12, %27 ], [ 16, %24 ], [ 20, %21 ], [ 24, %15 ]
  ret i8 %51
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @drm_dp_dsc_sink_line_buf_depth(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 5
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 15
  %5 = icmp ult i8 %4, 9
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = getelementptr inbounds [9 x i8], ptr @switch.table.drm_dp_dsc_sink_line_buf_depth, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i8 [ %9, %6 ], [ 0, %1 ]
  ret i8 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_dsc_sink_supported_input_bpcs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = getelementptr i8, ptr %0, i32 10
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8 12, ptr %1, align 1
  br label %9

9:                                                ; preds = %8, %2
  %10 = phi i32 [ 1, %8 ], [ 0, %2 ]
  %11 = and i32 %5, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %10, 1
  %15 = getelementptr i8, ptr %1, i32 %10
  store i8 10, ptr %15, align 1
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %14, %13 ], [ %10, %9 ]
  %18 = and i32 %5, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %17, 1
  %22 = getelementptr i8, ptr %1, i32 %17
  store i8 8, ptr %22, align 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %21, %20 ], [ %17, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_lttpr_common_caps(ptr noundef %0, ptr noundef %1) #3 {
  %3 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 983040, ptr noundef %1, i32 noundef 8)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %3, 8
  br i1 %6, label %8, label %7, !prof !11

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2339, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %5, %2
  %9 = phi i32 [ %3, %2 ], [ 0, %7 ], [ 0, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_read_lttpr_phy_caps(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  %4 = mul i32 %1, 80
  %5 = add i32 %4, 982992
  %6 = tail call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %5, ptr noundef %2, i32 noundef 3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %6, 3
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2367, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %8, %3
  %12 = phi i32 [ %6, %3 ], [ 0, %10 ], [ 0, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_lttpr_count(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 2
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = tail call i32 @__sw_hweight8(i32 noundef %4) #15
  switch i32 %5, label %13 [
    i32 0, label %14
    i32 1, label %6
    i32 8, label %12
  ]

6:                                                ; preds = %1
  %7 = icmp eq i8 %3, 0
  %8 = zext i8 %3 to i32
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #15, !range !13
  %10 = add nsw i32 %9, -23
  %11 = select i1 %7, i32 9, i32 %10
  br label %14

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %12, %6, %1
  %15 = phi i32 [ -22, %13 ], [ -34, %12 ], [ %11, %6 ], [ %5, %1 ]
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_lttpr_max_link_rate(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %6 [
    i8 1, label %9
    i8 4, label %4
    i8 2, label %5
  ]

4:                                                ; preds = %1
  br label %9

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = zext i8 %3 to i32
  %8 = mul nuw nsw i32 %7, 27000
  br label %9

9:                                                ; preds = %6, %5, %4, %1
  %10 = phi i32 [ %8, %6 ], [ 2000000, %5 ], [ 1350000, %4 ], [ 1000000, %1 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_lttpr_max_lane_count(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 31
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_lttpr_voltage_swing_level_3_supported(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 1
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_lttpr_pre_emphasis_level_3_supported(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 2
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_get_phy_test_pattern(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 537, ptr noundef nonnull %3, i32 noundef 1) #15
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %3, align 1
  switch i8 %8, label %11 [
    i8 1, label %14
    i8 4, label %9
    i8 2, label %10
  ]

9:                                                ; preds = %7
  br label %14

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  %12 = zext i8 %8 to i32
  %13 = mul nuw nsw i32 %12, 27000
  br label %14

14:                                               ; preds = %11, %10, %9, %7
  %15 = phi i32 [ %13, %11 ], [ 2000000, %10 ], [ 1350000, %9 ], [ 1000000, %7 ]
  store i32 %15, ptr %1, align 4
  %16 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 544, ptr noundef nonnull %4, i32 noundef 1) #15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %4, align 1
  %20 = and i8 %19, 31
  %21 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 1
  store i8 %20, ptr %21, align 4
  %22 = icmp sgt i8 %19, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 5
  store i8 1, ptr %24, align 2
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 2
  %27 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 584, ptr noundef %26, i32 noundef 1) #15
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %26, align 1
  switch i8 %30, label %39 [
    i8 4, label %31
    i8 5, label %35
  ]

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 4
  %33 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 592, ptr noundef %32, i32 noundef 10)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 3
  %37 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 586, ptr noundef %36, i32 noundef 2)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %31, %29
  br label %40

40:                                               ; preds = %39, %35, %31, %25, %14, %2
  %41 = phi i32 [ 0, %39 ], [ %5, %2 ], [ %16, %14 ], [ %27, %25 ], [ %33, %31 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_set_phy_test_pattern(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #3 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  %7 = load i32, ptr %1, align 4
  switch i32 %7, label %10 [
    i32 1000000, label %13
    i32 1350000, label %8
    i32 2000000, label %9
  ]

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3
  br label %13

10:                                               ; preds = %3
  %11 = sdiv i32 %7, 27000
  %12 = trunc i32 %11 to i8
  br label %13

13:                                               ; preds = %10, %9, %8, %3
  %14 = phi i8 [ %12, %10 ], [ 2, %9 ], [ 4, %8 ], [ 1, %3 ]
  store i8 %14, ptr %6, align 2
  %15 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 5
  %19 = load i8, ptr %18, align 2, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = or i8 %16, -128
  store i8 %22, ptr %17, align 1
  br label %23

23:                                               ; preds = %21, %13
  %24 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %6, i32 noundef 2)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.drm_dp_phy_test_params, ptr %1, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = icmp ult i8 %2, 18
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr %15, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %48, label %43

33:                                               ; preds = %26
  %34 = shl i8 %28, 2
  %35 = and i8 %34, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %35, ptr %5, align 1
  %36 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 258, ptr noundef nonnull %5, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %49, label %48

38:                                               ; preds = %43
  %39 = add nuw nsw i32 %44, 1
  %40 = load i8, ptr %15, align 4
  %41 = zext i8 %40 to i32
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %30
  %44 = phi i32 [ %39, %38 ], [ 0, %30 ]
  %45 = add nuw nsw i32 %44, 267
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %28, ptr %4, align 1
  %46 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef %45, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %49, label %38

48:                                               ; preds = %38, %33, %30
  br label %49

49:                                               ; preds = %48, %43, %33, %23
  %50 = phi i32 [ 0, %48 ], [ %24, %23 ], [ %36, %33 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_vsc_sdp_log(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 2
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %6, i32 noundef %9) #16
  %10 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 6
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = icmp eq i32 %11, 6
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds [6 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log, i32 0, i32 %11
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %13, %3
  %19 = phi ptr [ @.str.72, %3 ], [ %17, %15 ], [ @.str.79, %13 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull %19) #16
  %20 = load i32, ptr %10, align 4
  %21 = icmp ugt i32 %20, 6
  br i1 %21, label %64, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %64 [
    i32 0, label %25
    i32 1, label %27
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
    i32 5, label %35
    i32 6, label %37
    i32 7, label %39
  ]

25:                                               ; preds = %22
  %26 = icmp ult i32 %20, 6
  br i1 %26, label %43, label %64

27:                                               ; preds = %22
  %28 = icmp ult i32 %20, 4
  br i1 %28, label %46, label %64

29:                                               ; preds = %22
  %30 = icmp ult i32 %20, 4
  br i1 %30, label %49, label %64

31:                                               ; preds = %22
  %32 = icmp ult i32 %20, 4
  br i1 %32, label %52, label %64

33:                                               ; preds = %22
  %34 = icmp ult i32 %20, 4
  br i1 %34, label %55, label %64

35:                                               ; preds = %22
  %36 = icmp ult i32 %20, 4
  br i1 %36, label %58, label %64

37:                                               ; preds = %22
  %38 = icmp ult i32 %20, 4
  br i1 %38, label %61, label %64

39:                                               ; preds = %22
  %40 = add nsw i32 %20, -1
  %41 = icmp ult i32 %40, 3
  %42 = select i1 %41, ptr @.str.96, ptr @.str.79
  br label %64

43:                                               ; preds = %25
  %44 = getelementptr inbounds [6 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.116, i32 0, i32 %20
  %45 = load ptr, ptr %44, align 4
  br label %64

46:                                               ; preds = %27
  %47 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.117, i32 0, i32 %20
  %48 = load ptr, ptr %47, align 4
  br label %64

49:                                               ; preds = %29
  %50 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.118, i32 0, i32 %20
  %51 = load ptr, ptr %50, align 4
  br label %64

52:                                               ; preds = %31
  %53 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.119, i32 0, i32 %20
  %54 = load ptr, ptr %53, align 4
  br label %64

55:                                               ; preds = %33
  %56 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.120, i32 0, i32 %20
  %57 = load ptr, ptr %56, align 4
  br label %64

58:                                               ; preds = %35
  %59 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.121, i32 0, i32 %20
  %60 = load ptr, ptr %59, align 4
  br label %64

61:                                               ; preds = %37
  %62 = getelementptr inbounds [4 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.122, i32 0, i32 %20
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %58, %55, %52, %49, %46, %43, %39, %37, %35, %33, %31, %29, %27, %25, %22, %18
  %65 = phi ptr [ @.str.72, %18 ], [ %42, %39 ], [ @.str.72, %22 ], [ %45, %43 ], [ @.str.79, %25 ], [ %48, %46 ], [ @.str.79, %27 ], [ %51, %49 ], [ @.str.79, %29 ], [ %54, %52 ], [ @.str.79, %31 ], [ %57, %55 ], [ @.str.79, %33 ], [ %60, %58 ], [ @.str.79, %35 ], [ %63, %61 ], [ @.str.79, %37 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %65) #16
  %66 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %67) #16
  %68 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 1
  %71 = select i1 %70, ptr @.str.98, ptr @.str.72
  %72 = icmp eq i32 %69, 0
  %73 = select i1 %72, ptr @.str.97, ptr %71
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %73) #16
  %74 = getelementptr inbounds %struct.drm_dp_vsc_sdp, ptr %2, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %75, 5
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = getelementptr inbounds [5 x ptr], ptr @switch.table.drm_dp_vsc_sdp_log.123, i32 0, i32 %75
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %64
  %81 = phi ptr [ %79, %77 ], [ @.str.79, %64 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %81) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_get_pcon_max_frl_bw(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 7
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds [6 x i32], ptr @switch.table.drm_dp_get_pcon_max_frl_bw, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ %12, %10 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_frl_prepare(ptr noundef %0, i1 noundef zeroext %1) #3 {
  %3 = alloca i8, align 1
  %4 = select i1 %1, i8 104, i8 40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %4, ptr %3, align 1
  %5 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dp_pcon_is_frl_ready(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %2, i32 noundef 1) #15
  %4 = icmp sgt i32 %3, -1
  %5 = load i8, ptr %2, align 1
  %6 = and i8 %5, 2
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_frl_configure_1(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #3 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %5, i32 noundef 1) #15
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = icmp eq i8 %2, 16
  %10 = load i8, ptr %5, align 1
  %11 = and i8 %10, -17
  %12 = select i1 %9, i8 16, i8 0
  %13 = or i8 %11, %12
  store i8 %13, ptr %5, align 1
  switch i32 %1, label %30 [
    i32 9, label %14
    i32 18, label %16
    i32 24, label %18
    i32 32, label %20
    i32 40, label %22
    i32 48, label %24
    i32 0, label %26
  ]

14:                                               ; preds = %8
  %15 = or i8 %13, 1
  store i8 %15, ptr %5, align 1
  br label %26

16:                                               ; preds = %8
  %17 = or i8 %13, 2
  store i8 %17, ptr %5, align 1
  br label %26

18:                                               ; preds = %8
  %19 = or i8 %13, 3
  store i8 %19, ptr %5, align 1
  br label %26

20:                                               ; preds = %8
  %21 = or i8 %13, 4
  store i8 %21, ptr %5, align 1
  br label %26

22:                                               ; preds = %8
  %23 = or i8 %13, 5
  store i8 %23, ptr %5, align 1
  br label %26

24:                                               ; preds = %8
  %25 = or i8 %13, 6
  store i8 %25, ptr %5, align 1
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %14, %8
  %27 = phi i8 [ %13, %8 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %27, ptr %4, align 1
  %28 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %29 = call i32 @llvm.smin.i32(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26, %8, %3
  %31 = phi i32 [ %6, %3 ], [ -22, %8 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_frl_configure_2(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #3 {
  %4 = alloca i8, align 1
  %5 = icmp eq i8 %2, 64
  %6 = trunc i32 %1 to i8
  %7 = and i8 %6, -65
  %8 = select i1 %5, i8 64, i8 0
  %9 = or i8 %8, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %9, ptr %4, align 1
  %10 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12379, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 0)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_reset_frl_config(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 0, ptr %2, align 1
  %3 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %2, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_frl_enable(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1
  %4 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %3, i32 noundef 1) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  %19 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %18, i32 noundef 4, ptr noundef nonnull @.str.37, ptr noundef %19) #15
  br label %24

20:                                               ; preds = %6
  %21 = or i8 %7, -128
  store i8 %21, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %21, ptr %2, align 1
  %22 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12378, ptr noundef nonnull %2, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 0)
  br label %24

24:                                               ; preds = %20, %17, %1
  %25 = phi i32 [ -22, %17 ], [ %4, %1 ], [ %23, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_dp_pcon_hdmi_link_active(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12347, ptr noundef nonnull %2, i32 noundef 1) #15
  %4 = icmp sgt i32 %3, -1
  %5 = load i8, ptr %2, align 1
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_hdmi_link_mode(ptr noundef %0, ptr noundef writeonly %1) #3 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12342, ptr noundef nonnull %3, i32 noundef 1) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne ptr %1, null
  %11 = icmp ne i8 %8, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = lshr i8 %7, 1
  %15 = and i8 %14, 63
  store i8 %15, ptr %1, align 1
  br label %16

16:                                               ; preds = %13, %6, %2
  %17 = phi i32 [ %4, %2 ], [ %9, %13 ], [ %9, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_dp_pcon_hdmi_frl_link_error_count(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 16, i32 6
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %23, %7
  %10 = phi i32 [ 0, %7 ], [ %29, %23 ]
  %11 = add nuw nsw i32 %10, 12343
  %12 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %3, i32 noundef 1) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %9
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, 7
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds [4 x i32], ptr @switch.table.drm_dp_pcon_hdmi_frl_link_error_count, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %22, %20 ], [ 0, %14 ]
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.38, ptr noundef %28, i32 noundef %24, i32 noundef %10) #16
  %29 = add nuw nsw i32 %10, 1
  %30 = load i8, ptr %4, align 2
  %31 = zext i8 %30 to i32
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %23, %9, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dp_pcon_enc_is_dsc_1_2(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 33
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_pcon_dsc_max_slices(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr i8, ptr %0, i32 10
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = zext i8 %3 to i32
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = and i32 %16, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = and i32 %16, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = and i32 %16, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = and i32 %16, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = and i32 %16, 2
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %16, 1
  %35 = select i1 %33, i32 %34, i32 2
  br label %36

36:                                               ; preds = %31, %28, %25, %22, %19, %15, %12, %9, %1
  %37 = phi i32 [ 24, %1 ], [ 20, %9 ], [ 16, %12 ], [ 12, %15 ], [ 10, %19 ], [ 8, %22 ], [ 6, %25 ], [ 4, %28 ], [ %35, %31 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_pcon_dsc_max_slice_width(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 9
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 320
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_dp_pcon_dsc_bpp_incr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 12
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 7
  %5 = icmp ult i8 %4, 5
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = getelementptr inbounds [5 x i32], ptr @switch.table.drm_dp_pcon_dsc_bpp_incr, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_pps_default(ptr noundef %0) #3 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %3, i32 noundef 1) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, -15
  %9 = or i8 %8, 2
  store i8 %9, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 %9, ptr %2, align 1
  %10 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %2, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 0) #15
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %4, %1 ], [ %11, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_pps_override_buf(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 4
  store ptr %1, ptr %5, align 4
  %6 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12544, ptr noundef nonnull %5, i32 noundef 128)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %9 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %4, i32 noundef 1) #15
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %4, align 1
  %13 = and i8 %12, -15
  %14 = or i8 %13, 10
  store i8 %14, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 %14, ptr %3, align 1
  %15 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 0) #15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %9, %8 ], [ %16, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %6, %2 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_pps_override_param(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12672, ptr noundef %1, i32 noundef 2)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = tail call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12674, ptr noundef %8, i32 noundef 2)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 4
  %13 = tail call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12676, ptr noundef %12, i32 noundef 2)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %16 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %4, i32 noundef 1) #15
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %4, align 1
  %20 = and i8 %19, -15
  %21 = or i8 %20, 10
  store i8 %21, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 %21, ptr %3, align 1
  %22 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %23 = call i32 @llvm.smin.i32(i32 %22, i32 0) #15
  br label %24

24:                                               ; preds = %18, %15
  %25 = phi i32 [ %16, %15 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %26

26:                                               ; preds = %24, %11, %7, %2
  %27 = phi i32 [ %5, %2 ], [ %9, %7 ], [ %13, %11 ], [ %25, %24 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_dp_pcon_convert_rgb_to_ycbcr(ptr noundef %0, i8 noundef zeroext %1) #3 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %4, i32 noundef 1) #15
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = and i8 %1, 112
  %9 = icmp eq i8 %8, 0
  %10 = load i8, ptr %4, align 1
  %11 = and i8 %10, -113
  %12 = or i8 %10, %8
  %13 = select i1 %9, i8 %11, i8 %12
  store i8 %13, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %13, ptr %3, align 1
  %14 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 12370, ptr noundef nonnull %3, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %15 = call i32 @llvm.smin.i32(i32 %14, i32 0)
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i32 [ %5, %2 ], [ %15, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_edp_backlight_set_level(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #3 {
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = and i8 %6, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = lshr i16 %2, 8
  %14 = trunc i16 %13 to i8
  store i8 %14, ptr %4, align 2
  %15 = trunc i16 %2 to i8
  %16 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  br label %19

17:                                               ; preds = %9
  %18 = trunc i16 %2 to i8
  store i8 %18, ptr %4, align 2
  br label %19

19:                                               ; preds = %17, %12
  %20 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1826, ptr noundef nonnull %4, i32 noundef 2)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef %27, i32 noundef %20) #16
  %28 = icmp slt i32 %20, 0
  %29 = select i1 %28, i32 %20, i32 -5
  br label %30

30:                                               ; preds = %22, %19, %3
  %31 = phi i32 [ %29, %22 ], [ 0, %3 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_edp_backlight_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) #3 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = lshr i8 %9, 1
  %11 = and i8 %10, 2
  %12 = load i8, ptr %1, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 %12, ptr %7, align 1
  %15 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1828, ptr noundef nonnull %7, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ null, %17 ]
  %26 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %25, i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef %26, i32 noundef %15) #15
  br label %27

27:                                               ; preds = %24, %14, %3
  %28 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %29, ptr %6, align 1
  %32 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1832, ptr noundef nonnull %6, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi ptr [ %40, %38 ], [ null, %34 ]
  %43 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %42, i32 noundef 4, ptr noundef nonnull @.str.41, ptr noundef %43, i32 noundef %32) #15
  br label %46

44:                                               ; preds = %31
  %45 = or i8 %11, 8
  br label %46

46:                                               ; preds = %44, %41, %27
  %47 = phi i8 [ %11, %41 ], [ %45, %44 ], [ %11, %27 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %47, ptr %5, align 1
  %48 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1825, ptr noundef nonnull %5, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi ptr [ %56, %54 ], [ null, %50 ]
  %59 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %58, i32 noundef 4, ptr noundef nonnull @.str.42, ptr noundef %59, i32 noundef %48) #15
  %60 = icmp slt i32 %48, 0
  %61 = select i1 %60, i32 %48, i32 -5
  br label %90

62:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2
  %63 = load i8, ptr %8, align 2
  %64 = and i8 %63, 4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %87, label %66

66:                                               ; preds = %62
  %67 = and i8 %63, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = lshr i16 %2, 8
  %71 = trunc i16 %70 to i8
  store i8 %71, ptr %4, align 2
  %72 = trunc i16 %2 to i8
  %73 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %72, ptr %73, align 1
  br label %76

74:                                               ; preds = %66
  %75 = trunc i16 %2 to i8
  store i8 %75, ptr %4, align 2
  br label %76

76:                                               ; preds = %74, %69
  %77 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1826, ptr noundef nonnull %4, i32 noundef 2) #15
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %87, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.39, ptr noundef %84, i32 noundef %77) #16
  %85 = icmp slt i32 %77, 0
  %86 = select i1 %85, i32 %77, i32 -5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %90

87:                                               ; preds = %76, %62
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  %88 = call fastcc i32 @drm_edp_backlight_set_enable(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  %89 = call i32 @llvm.smin.i32(i32 %88, i32 0)
  br label %90

90:                                               ; preds = %87, %79, %57
  %91 = phi i32 [ %61, %57 ], [ %89, %87 ], [ %86, %79 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_edp_backlight_set_enable(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %3
  %11 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1824, ptr noundef nonnull %5, i32 noundef 1) #15
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.104, ptr noundef %18, i32 noundef %11) #16
  %19 = icmp slt i32 %11, 0
  %20 = select i1 %19, i32 %11, i32 -5
  br label %36

21:                                               ; preds = %10
  %22 = load i8, ptr %5, align 1
  %23 = and i8 %22, -2
  %24 = zext i1 %2 to i8
  %25 = or i8 %23, %24
  store i8 %25, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %25, ptr %4, align 1
  %26 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1824, ptr noundef nonnull %4, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.105, ptr noundef %33, i32 noundef %26) #16
  %34 = icmp slt i32 %26, 0
  %35 = select i1 %34, i32 %26, i32 -5
  br label %36

36:                                               ; preds = %28, %21, %13, %3
  %37 = phi i32 [ %20, %13 ], [ %35, %28 ], [ 0, %3 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_edp_backlight_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = tail call fastcc i32 @drm_edp_backlight_set_enable(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_edp_backlight_init(ptr noundef %0, ptr nocapture noundef %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #3 {
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = getelementptr i8, ptr %3, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = or i8 %19, 2
  store i8 %20, ptr %18, align 2
  br label %21

21:                                               ; preds = %17, %6
  %22 = getelementptr i8, ptr %3, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = or i8 %28, 4
  store i8 %29, ptr %27, align 2
  %30 = load i8, ptr %22, align 1
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i8 [ %30, %26 ], [ %23, %21 ]
  %33 = and i8 %32, 4
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %36 = load i8, ptr %35, align 2
  br i1 %34, label %39, label %37

37:                                               ; preds = %31
  %38 = or i8 %36, 1
  store i8 %38, ptr %35, align 2
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi i8 [ %38, %37 ], [ %36, %31 ]
  %41 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 3
  %42 = and i8 %40, 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i8, ptr %22, align 1
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  br label %197

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ null, %49 ]
  %58 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %57, i32 noundef 4, ptr noundef nonnull @.str.43, ptr noundef %58) #15
  br label %297

59:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #15
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #15
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  store i8 0, ptr %12, align 1, !annotation !8
  %60 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1828, ptr noundef nonnull %10, i32 noundef 1) #15
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %194, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  br label %194

69:                                               ; preds = %59
  %70 = load i8, ptr %10, align 1
  %71 = and i8 %70, 31
  store i8 %71, ptr %10, align 1
  %72 = zext i8 %71 to i32
  %73 = shl nsw i32 -1, %72
  %74 = trunc i32 %73 to i16
  %75 = xor i16 %74, -1
  %76 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 2
  store i16 %75, ptr %76, align 2
  %77 = icmp eq i16 %2, 0
  br i1 %77, label %197, label %78

78:                                               ; preds = %69
  %79 = zext i16 %2 to i32
  %80 = lshr i32 %79, 1
  %81 = add nuw nsw i32 %80, 27000000
  %82 = udiv i32 %81, %79
  %83 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1829, ptr noundef nonnull %11, i32 noundef 1) #15
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %95, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %91, %89 ], [ null, %85 ]
  %94 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %93, i32 noundef 4, ptr noundef nonnull @.str.107, ptr noundef %94, i32 noundef %83) #15
  br label %197

95:                                               ; preds = %78
  %96 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1830, ptr noundef nonnull %12, i32 noundef 1) #15
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %108, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.drm_device, ptr %100, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi ptr [ %104, %102 ], [ null, %98 ]
  %107 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %106, i32 noundef 4, ptr noundef nonnull @.str.108, ptr noundef %107, i32 noundef %96) #15
  br label %197

108:                                              ; preds = %95
  %109 = load i8, ptr %11, align 1
  %110 = and i8 %109, 31
  store i8 %110, ptr %11, align 1
  %111 = load i8, ptr %12, align 1
  %112 = and i8 %111, 31
  store i8 %112, ptr %12, align 1
  %113 = mul nuw nsw i32 %82, 3
  %114 = add nuw nsw i32 %113, 2
  %115 = lshr i32 %114, 2
  %116 = mul nuw nsw i32 %82, 5
  %117 = add nuw nsw i32 %116, 2
  %118 = lshr i32 %117, 2
  %119 = zext i8 %110 to i32
  %120 = shl nuw i32 1, %119
  %121 = icmp slt i32 %115, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %108
  %123 = zext i8 %112 to i32
  %124 = shl i32 255, %123
  %125 = icmp slt i32 %124, %118
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = icmp ult i8 %112, %110
  br i1 %127, label %159, label %138

128:                                              ; preds = %122, %108
  %129 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.drm_device, ptr %130, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi ptr [ %134, %132 ], [ null, %128 ]
  %137 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %136, i32 noundef 4, ptr noundef nonnull @.str.109, ptr noundef %137, i32 noundef %79) #15
  br label %197

138:                                              ; preds = %153, %126
  %139 = phi i8 [ %154, %153 ], [ %112, %126 ]
  %140 = zext i8 %139 to i32
  %141 = shl nuw i32 1, %140
  %142 = icmp eq i8 %139, 31
  %143 = select i1 %142, i32 -2, i32 2
  %144 = sdiv i32 %141, %143
  %145 = add nsw i32 %144, %82
  %146 = sdiv i32 %145, %141
  %147 = call i32 @llvm.smax.i32(i32 %146, i32 1) #15
  %148 = call i32 @llvm.umin.i32(i32 %147, i32 255) #15
  %149 = shl i32 %148, %140
  %150 = icmp sgt i32 %115, %149
  %151 = icmp sgt i32 %149, %118
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %138
  %154 = add i8 %139, -1
  %155 = icmp ult i8 %154, %110
  br i1 %155, label %156, label %138

156:                                              ; preds = %153, %138
  %157 = phi i8 [ %154, %153 ], [ %139, %138 ]
  %158 = trunc i32 %148 to i8
  br label %159

159:                                              ; preds = %156, %126
  %160 = phi i8 [ %112, %126 ], [ %157, %156 ]
  %161 = phi i8 [ 1, %126 ], [ %158, %156 ]
  store i8 %160, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 %160, ptr %9, align 1
  %162 = call i32 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef 1828, ptr noundef nonnull %9, i32 noundef 1) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %174, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.drm_device, ptr %166, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  br label %171

171:                                              ; preds = %168, %164
  %172 = phi ptr [ %170, %168 ], [ null, %164 ]
  %173 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %172, i32 noundef 4, ptr noundef nonnull @.str.40, ptr noundef %173, i32 noundef %162) #15
  br label %197

174:                                              ; preds = %159
  %175 = load i8, ptr %10, align 1
  store i8 %175, ptr %1, align 2
  %176 = zext i8 %175 to i32
  %177 = shl nsw i32 -1, %176
  %178 = trunc i32 %177 to i16
  %179 = xor i16 %178, -1
  store i16 %179, ptr %76, align 2
  %180 = load i8, ptr %22, align 1
  %181 = and i8 %180, 32
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 1
  store i8 %161, ptr %184, align 1
  %185 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.drm_device, ptr %186, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  br label %191

191:                                              ; preds = %188, %183
  %192 = phi ptr [ %190, %188 ], [ null, %183 ]
  %193 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %192, i32 noundef 4, ptr noundef nonnull @.str.110, ptr noundef %193, i32 noundef %79) #15
  br label %197

194:                                              ; preds = %66, %62
  %195 = phi ptr [ %68, %66 ], [ null, %62 ]
  %196 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %195, i32 noundef 4, ptr noundef nonnull @.str.106, ptr noundef %196, i32 noundef %60) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  br label %297

197:                                              ; preds = %191, %174, %171, %135, %105, %92, %69, %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #15
  store i16 0, ptr %7, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #15
  store i8 0, ptr %8, align 1, !annotation !8
  %198 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1825, ptr noundef nonnull %8, i32 noundef 1) #15
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %210, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.drm_device, ptr %202, i32 0, i32 2
  %206 = load ptr, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi ptr [ %206, %204 ], [ null, %200 ]
  %209 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %208, i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef %209, i32 noundef %198) #15
  br label %250

210:                                              ; preds = %197
  %211 = load i8, ptr %8, align 1
  %212 = and i8 %211, 3
  store i8 %212, ptr %5, align 1
  %213 = load i8, ptr %41, align 2
  %214 = and i8 %213, 4
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %254, label %216

216:                                              ; preds = %210
  %217 = icmp eq i8 %212, 2
  br i1 %217, label %218, label %246

218:                                              ; preds = %216
  %219 = and i8 %213, 1
  %220 = add nuw nsw i8 %219, 1
  %221 = zext i8 %220 to i32
  %222 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1826, ptr noundef nonnull %7, i32 noundef %221) #15
  %223 = icmp eq i32 %222, %221
  br i1 %223, label %234, label %224

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.drm_device, ptr %226, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  br label %231

231:                                              ; preds = %228, %224
  %232 = phi ptr [ %230, %228 ], [ null, %224 ]
  %233 = load ptr, ptr %0, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %232, i32 noundef 4, ptr noundef nonnull @.str.112, ptr noundef %233, i32 noundef %222) #15
  br label %250

234:                                              ; preds = %218
  %235 = load i8, ptr %41, align 2
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  %238 = load i8, ptr %7, align 2
  %239 = zext i8 %238 to i32
  br i1 %237, label %254, label %240

240:                                              ; preds = %234
  %241 = shl nuw nsw i32 %239, 8
  %242 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %243 = load i8, ptr %242, align 1
  %244 = zext i8 %243 to i32
  %245 = or i32 %241, %244
  br label %254

246:                                              ; preds = %216
  %247 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 2
  %248 = load i16, ptr %247, align 2
  %249 = zext i16 %248 to i32
  br label %254

250:                                              ; preds = %231, %207
  %251 = phi i32 [ %222, %231 ], [ %198, %207 ]
  %252 = icmp slt i32 %251, 0
  %253 = select i1 %252, i32 %251, i32 -5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  br label %297

254:                                              ; preds = %246, %240, %234, %210
  %255 = phi i32 [ %249, %246 ], [ 0, %210 ], [ %245, %240 ], [ %239, %234 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #15
  %256 = trunc i32 %255 to i16
  store i16 %256, ptr %4, align 2
  %257 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %263, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.drm_device, ptr %258, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %254
  %264 = phi ptr [ %262, %260 ], [ null, %254 ]
  %265 = load ptr, ptr %0, align 8
  %266 = load i8, ptr %41, align 2
  %267 = lshr i8 %266, 2
  %268 = and i8 %267, 1
  %269 = zext i8 %268 to i32
  %270 = lshr i8 %266, 1
  %271 = and i8 %270, 1
  %272 = zext i8 %271 to i32
  %273 = load i8, ptr %5, align 1
  %274 = zext i8 %273 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %264, i32 noundef 4, ptr noundef nonnull @.str.44, ptr noundef %265, i32 noundef %269, i32 noundef %272, i32 noundef %274) #15
  %275 = load i8, ptr %41, align 2
  %276 = and i8 %275, 4
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %263
  %279 = load ptr, ptr %257, align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.drm_device, ptr %279, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  br label %284

284:                                              ; preds = %281, %278
  %285 = phi ptr [ %283, %281 ], [ null, %278 ]
  %286 = load ptr, ptr %0, align 8
  %287 = load i16, ptr %4, align 2
  %288 = zext i16 %287 to i32
  %289 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 2
  %290 = load i16, ptr %289, align 2
  %291 = zext i16 %290 to i32
  %292 = getelementptr inbounds %struct.drm_edp_backlight_info, ptr %1, i32 0, i32 1
  %293 = load i8, ptr %292, align 1
  %294 = zext i8 %293 to i32
  %295 = and i8 %275, 1
  %296 = zext i8 %295 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %285, i32 noundef 4, ptr noundef nonnull @.str.45, ptr noundef %286, i32 noundef %288, i32 noundef %291, i32 noundef %294, i32 noundef %296) #15
  br label %297

297:                                              ; preds = %284, %263, %250, %194, %56
  %298 = phi i32 [ -22, %56 ], [ -19, %194 ], [ 0, %284 ], [ 0, %263 ], [ %253, %250 ]
  ret i32 %298
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_panel_dp_aux_backlight(ptr noundef %0, ptr noundef %1) #3 {
  %3 = alloca %struct.backlight_properties, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #15
  %7 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false), !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %1, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %68

14:                                               ; preds = %9
  %15 = call i32 @drm_dp_dpcd_read(ptr noundef nonnull %1, i32 noundef 1792, ptr noundef nonnull %6, i32 noundef 3)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %68, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %6, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %0, align 4
  br i1 %21, label %23, label %24

23:                                               ; preds = %17
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #15
  br label %68

24:                                               ; preds = %17
  %25 = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 16, i32 noundef 3520) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dp_aux_backlight, ptr %25, i32 0, i32 1
  store ptr %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.dp_aux_backlight, ptr %25, i32 0, i32 2
  %30 = call i32 @drm_edp_backlight_init(ptr noundef nonnull %1, ptr noundef %29, i16 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 4
  store i32 1, ptr %33, align 4
  %34 = load i16, ptr %4, align 2
  %35 = zext i16 %34 to i32
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds %struct.dp_aux_backlight, ptr %25, i32 0, i32 2, i32 2
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.backlight_properties, ptr %3, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = call ptr @devm_backlight_device_register(ptr noundef %40, ptr noundef nonnull @.str.48, ptr noundef %40, ptr noundef nonnull %25, ptr noundef nonnull @dp_aux_bl_ops, ptr noundef nonnull %3) #15
  store ptr %41, ptr %25, align 4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = ptrtoint ptr %41 to i32
  br label %68

45:                                               ; preds = %32
  %46 = icmp eq ptr %41, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.backlight_properties, ptr %41, i32 0, i32 2
  store i32 4, ptr %48, align 8
  %49 = getelementptr inbounds %struct.backlight_properties, ptr %41, i32 0, i32 3
  store i32 4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.backlight_properties, ptr %41, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 2
  store i32 %52, ptr %50, align 4
  %53 = getelementptr inbounds %struct.backlight_device, ptr %41, i32 0, i32 1
  call void @mutex_lock(ptr noundef %53) #15
  %54 = getelementptr inbounds %struct.backlight_device, ptr %41, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.backlight_ops, ptr %55, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 %59(ptr noundef nonnull %41) #15
  br label %63

63:                                               ; preds = %61, %57, %47
  call void @mutex_unlock(ptr noundef %53) #15
  %64 = load ptr, ptr %25, align 4
  br label %65

65:                                               ; preds = %63, %45
  %66 = phi ptr [ null, %45 ], [ %64, %63 ]
  %67 = getelementptr inbounds %struct.drm_panel, ptr %0, i32 0, i32 1
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %43, %27, %24, %23, %14, %9, %2
  %69 = phi i32 [ %44, %43 ], [ 0, %65 ], [ 0, %23 ], [ -22, %9 ], [ -22, %2 ], [ %15, %14 ], [ -12, %24 ], [ %30, %27 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #15
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__128b132b_channel_eq_delay_us(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = zext i8 %1 to i32
  %4 = icmp ult i8 %1, 7
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.50, ptr noundef %14, i32 noundef %3) #15
  br label %19

15:                                               ; preds = %2
  %16 = sext i8 %1 to i32
  %17 = getelementptr inbounds [7 x i32], ptr @switch.table.__128b132b_channel_eq_delay_us, i32 0, i32 %16
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ 400, %12 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__8b10b_channel_eq_delay_us(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = zext i8 %1 to i32
  %4 = icmp ugt i8 %1, 4
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ null, %5 ]
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 4, ptr noundef nonnull @.str.51, ptr noundef %14, i32 noundef %3) #15
  br label %15

15:                                               ; preds = %12, %2
  %16 = icmp eq i8 %1, 0
  %17 = mul nuw nsw i32 %3, 4000
  %18 = select i1 %16, i32 400, i32 %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_dp_aux_get_crc(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %3, i32 noundef 1) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %3, align 1
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1815, i32 noundef 9, ptr noundef null) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 582, ptr noundef nonnull %3, i32 noundef 1) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, 15
  %17 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 7
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  store i8 %16, ptr %17, align 8
  %21 = call i32 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 576, ptr noundef %1, i32 noundef 6)
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 0)
  br label %23

23:                                               ; preds = %20, %14, %11, %2
  %24 = phi i32 [ %4, %2 ], [ %12, %11 ], [ -11, %14 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_dp_i2c_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = alloca %struct.drm_dp_aux_msg, align 4
  %5 = alloca %struct.drm_dp_aux_msg, align 4
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %8 = load i32, ptr @dp_aux_i2c_transfer_size, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 16)
  store i32 %10, ptr @dp_aux_i2c_transfer_size, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %105, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 1
  %14 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 4
  %16 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.drm_dp_aux, ptr %7, i32 0, i32 3
  %18 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %4, i32 0, i32 3
  br label %19

19:                                               ; preds = %101, %12
  %20 = phi i32 [ 0, %12 ], [ %103, %101 ]
  %21 = getelementptr %struct.i2c_msg, ptr %1, i32 %20
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  store i32 %23, ptr %5, align 4
  %24 = getelementptr %struct.i2c_msg, ptr %1, i32 %20, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 1
  %28 = or i8 %27, 4
  %29 = icmp slt i16 %25, 0
  %30 = select i1 %29, i8 %27, i8 %28
  store i8 %30, ptr %13, align 4
  store ptr null, ptr %14, align 4
  store i32 0, ptr %15, align 4
  %31 = call fastcc i32 @drm_dp_i2c_do_msg(ptr noundef %7, ptr noundef nonnull %5)
  %32 = load i16, ptr %24, align 2
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 1
  %35 = or i8 %34, 4
  %36 = icmp slt i16 %32, 0
  %37 = select i1 %36, i8 %34, i8 %35
  store i8 %37, ptr %13, align 4
  %38 = icmp slt i32 %31, 0
  br i1 %38, label %105, label %39

39:                                               ; preds = %19
  %40 = getelementptr %struct.i2c_msg, ptr %1, i32 %20, i32 2
  %41 = load i16, ptr %40, align 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %101, label %43

43:                                               ; preds = %39
  %44 = zext i16 %41 to i32
  %45 = load i32, ptr @dp_aux_i2c_transfer_size, align 4
  %46 = getelementptr %struct.i2c_msg, ptr %1, i32 %20, i32 3
  br label %47

47:                                               ; preds = %95, %43
  %48 = phi i32 [ %44, %43 ], [ %99, %95 ]
  %49 = phi i32 [ 0, %43 ], [ %97, %95 ]
  %50 = phi i32 [ %45, %43 ], [ %87, %95 ]
  %51 = load ptr, ptr %46, align 4
  %52 = getelementptr i8, ptr %51, i32 %49
  store ptr %52, ptr %14, align 4
  %53 = sub i32 %48, %49
  %54 = call i32 @llvm.umin.i32(i32 %50, i32 %53)
  store i32 %54, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #15
  %55 = load i32, ptr %16, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %86, label %57

57:                                               ; preds = %79, %47
  %58 = phi i32 [ %81, %79 ], [ %54, %47 ]
  %59 = call fastcc i32 @drm_dp_i2c_do_msg(ptr noundef %7, ptr noundef nonnull %4) #15
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = icmp eq i32 %59, 0
  %63 = select i1 %62, i32 -71, i32 %59
  br label %86

64:                                               ; preds = %57
  %65 = load i32, ptr %16, align 4
  %66 = icmp ult i32 %59, %65
  %67 = icmp slt i32 %59, %58
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load ptr, ptr %17, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi ptr [ %74, %72 ], [ null, %69 ]
  %77 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %76, i32 noundef 4, ptr noundef nonnull @.str.71, ptr noundef %77, i32 noundef %65, i32 noundef %59) #15
  %78 = load i32, ptr %16, align 4
  br label %79

79:                                               ; preds = %75, %64
  %80 = phi i32 [ %78, %75 ], [ %65, %64 ]
  %81 = phi i32 [ %59, %75 ], [ %58, %64 ]
  %82 = sub i32 %80, %59
  store i32 %82, ptr %16, align 4
  %83 = load ptr, ptr %18, align 4
  %84 = getelementptr i8, ptr %83, i32 %59
  store ptr %84, ptr %18, align 4
  %85 = icmp eq i32 %80, %59
  br i1 %85, label %86, label %57

86:                                               ; preds = %79, %61, %47
  %87 = phi i32 [ %54, %47 ], [ %63, %61 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %88 = load i16, ptr %24, align 2
  %89 = trunc i16 %88 to i8
  %90 = and i8 %89, 1
  %91 = or i8 %90, 4
  %92 = icmp slt i16 %88, 0
  %93 = select i1 %92, i8 %90, i8 %91
  store i8 %93, ptr %13, align 4
  %94 = icmp slt i32 %87, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %86
  %96 = load i32, ptr %15, align 4
  %97 = add i32 %96, %49
  %98 = load i16, ptr %40, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp ult i32 %97, %99
  br i1 %100, label %47, label %101

101:                                              ; preds = %95, %39
  %102 = phi i8 [ %37, %39 ], [ %93, %95 ]
  %103 = add nuw i32 %20, 1
  %104 = icmp eq i32 %103, %2
  br i1 %104, label %105, label %19

105:                                              ; preds = %101, %86, %19, %3
  %106 = phi i8 [ 0, %3 ], [ %93, %86 ], [ %37, %19 ], [ %102, %101 ]
  %107 = phi i32 [ 0, %3 ], [ %87, %86 ], [ %31, %19 ], [ %2, %101 ]
  %108 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 1
  %109 = and i8 %106, -5
  store i8 %109, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 3
  store ptr null, ptr %110, align 4
  %111 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %5, i32 0, i32 4
  store i32 0, ptr %111, align 4
  %112 = call fastcc i32 @drm_dp_i2c_do_msg(ptr noundef %7, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i32 %107
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @drm_dp_i2c_functionality(ptr nocapture noundef readnone %0) #4 {
  ret i32 268402699
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_dp_i2c_do_msg(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = load i32, ptr @dp_aux_i2c_speed_khz, align 4
  %4 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 3
  %11 = add i32 %10, 42
  %12 = add i32 %10, 566
  %13 = select i1 %7, i32 %12, i32 566
  %14 = select i1 %7, i32 42, i32 %11
  %15 = mul i32 %9, 9000
  %16 = add i32 %3, 10999
  %17 = add i32 %16, %15
  %18 = udiv i32 %17, %3
  %19 = add i32 %13, %14
  %20 = add i32 %18, -1
  %21 = add i32 %20, %19
  %22 = sdiv i32 %21, %19
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 7)
  %24 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 8
  %25 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  %26 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 3
  %27 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 10
  br label %28

28:                                               ; preds = %140, %2
  %29 = phi i32 [ 0, %2 ], [ %142, %140 ]
  %30 = phi i32 [ 0, %2 ], [ %141, %140 ]
  %31 = load ptr, ptr %24, align 4
  %32 = tail call i32 %31(ptr noundef %0, ptr noundef %1) #15
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  switch i32 %32, label %51 [
    i32 -16, label %140
    i32 -110, label %35
  ]

35:                                               ; preds = %34
  %36 = load ptr, ptr %26, align 4
  %37 = load i32, ptr @__drm_debug, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %154, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @___ratelimit(ptr noundef nonnull @drm_dp_i2c_do_msg.rs_, ptr noundef nonnull @__func__.drm_dp_i2c_do_msg) #15
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %154, label %43

43:                                               ; preds = %40
  %44 = icmp eq ptr %36, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = phi ptr [ %47, %45 ], [ null, %43 ]
  %50 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %49, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %50) #15
  br label %154

51:                                               ; preds = %34
  %52 = load ptr, ptr %26, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %56, %54 ], [ null, %51 ]
  %59 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %58, i32 noundef 4, ptr noundef nonnull @.str.63, ptr noundef %59, i32 noundef %32) #15
  br label %154

60:                                               ; preds = %28
  %61 = load i8, ptr %25, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 3
  switch i32 %63, label %83 [
    i32 0, label %89
    i32 1, label %64
    i32 2, label %74
  ]

64:                                               ; preds = %60
  %65 = load ptr, ptr %26, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi ptr [ %69, %67 ], [ null, %64 ]
  %72 = load ptr, ptr %0, align 8
  %73 = load i32, ptr %8, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %71, i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef %72, i32 noundef %32, i32 noundef %73) #15
  br label %154

74:                                               ; preds = %60
  %75 = load ptr, ptr %26, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = phi ptr [ %79, %77 ], [ null, %74 ]
  %82 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %81, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef %82) #15
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #15
  br label %140

83:                                               ; preds = %60
  %84 = zext i8 %61 to i32
  %85 = load ptr, ptr %26, align 4
  %86 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.66, ptr noundef %88, i32 noundef %84) #16
  br label %154

89:                                               ; preds = %60
  %90 = and i32 %62, 12
  switch i32 %90, label %134 [
    i32 0, label %91
    i32 4, label %101
    i32 8, label %114
  ]

91:                                               ; preds = %89
  %92 = load i32, ptr %8, align 4
  %93 = icmp eq i32 %32, %92
  br i1 %93, label %154, label %94

94:                                               ; preds = %91
  %95 = load i8, ptr %4, align 4
  %96 = and i8 %95, -5
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %154

98:                                               ; preds = %94
  %99 = and i8 %95, 4
  %100 = or i8 %99, 2
  store i8 %100, ptr %4, align 4
  br label %154

101:                                              ; preds = %89
  %102 = load ptr, ptr %26, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.drm_device, ptr %102, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi ptr [ %106, %104 ], [ null, %101 ]
  %109 = load ptr, ptr %0, align 8
  %110 = load i32, ptr %8, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %108, i32 noundef 4, ptr noundef nonnull @.str.67, ptr noundef %109, i32 noundef %32, i32 noundef %110) #15
  %111 = getelementptr inbounds %struct.drm_dp_aux, ptr %0, i32 0, i32 9
  %112 = load i32, ptr %111, align 8
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8
  br label %154

114:                                              ; preds = %89
  %115 = load ptr, ptr %26, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.drm_device, ptr %115, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi ptr [ %119, %117 ], [ null, %114 ]
  %122 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %121, i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %122) #15
  %123 = load i32, ptr %27, align 4
  %124 = add i32 %123, 1
  store i32 %124, ptr %27, align 4
  %125 = icmp ult i32 %30, 7
  %126 = zext i1 %125 to i32
  %127 = add i32 %30, %126
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #15
  %128 = load i8, ptr %4, align 4
  %129 = and i8 %128, -5
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = and i8 %128, 4
  %133 = or i8 %132, 2
  store i8 %133, ptr %4, align 4
  br label %140

134:                                              ; preds = %89
  %135 = zext i8 %61 to i32
  %136 = load ptr, ptr %26, align 4
  %137 = getelementptr inbounds %struct.drm_device, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.69, ptr noundef %139, i32 noundef %135) #16
  br label %154

140:                                              ; preds = %131, %120, %80, %34
  %141 = phi i32 [ %30, %34 ], [ %30, %80 ], [ %127, %120 ], [ %127, %131 ]
  %142 = add nuw i32 %29, 1
  %143 = add i32 %141, %23
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %28, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %26, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.drm_device, ptr %146, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %145
  %152 = phi ptr [ %150, %148 ], [ null, %145 ]
  %153 = load ptr, ptr %0, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %152, i32 noundef 4, ptr noundef nonnull @.str.70, ptr noundef %153) #15
  br label %154

154:                                              ; preds = %151, %134, %107, %98, %94, %91, %83, %70, %57, %48, %40, %35
  %155 = phi i32 [ -121, %83 ], [ -121, %70 ], [ -121, %134 ], [ -121, %107 ], [ -121, %151 ], [ -110, %35 ], [ -110, %40 ], [ -110, %48 ], [ %32, %57 ], [ %32, %91 ], [ %32, %94 ], [ %32, %98 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lock_bus(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 668
  tail call void @mutex_lock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trylock_bus(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 668
  %4 = tail call i32 @mutex_trylock(ptr noundef %3) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unlock_bus(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 668
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dp_aux_backlight_update_status(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, ptr %0, align 8
  %19 = trunc i32 %18 to i16
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i16 [ %19, %17 ], [ 0, %12 ]
  %22 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 3
  %28 = load i8, ptr %27, align 2, !range !10
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 2
  %34 = tail call i32 @drm_edp_backlight_enable(ptr noundef %31, ptr noundef %33, i16 noundef zeroext %21)
  store i8 1, ptr %27, align 2
  br label %72

35:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  store i16 0, ptr %2, align 2
  %36 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 2, i32 3
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %61, label %40

40:                                               ; preds = %35
  %41 = and i8 %37, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = lshr i16 %21, 8
  %45 = trunc i16 %44 to i8
  store i8 %45, ptr %2, align 2
  %46 = trunc i16 %21 to i8
  %47 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  br label %50

48:                                               ; preds = %40
  %49 = trunc i16 %21 to i8
  store i8 %49, ptr %2, align 2
  br label %50

50:                                               ; preds = %48, %43
  %51 = call i32 @drm_dp_dpcd_write(ptr noundef %31, i32 noundef 1826, ptr noundef nonnull %2, i32 noundef 2) #15
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.drm_dp_aux, ptr %31, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %31, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.39, ptr noundef %58, i32 noundef %51) #16
  %59 = icmp slt i32 %51, 0
  %60 = select i1 %59, i32 %51, i32 -5
  br label %61

61:                                               ; preds = %53, %50, %35
  %62 = phi i32 [ %60, %53 ], [ 0, %35 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  br label %72

63:                                               ; preds = %20, %8, %1
  %64 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 3
  %65 = load i8, ptr %64, align 2, !range !10
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dp_aux_backlight, ptr %4, i32 0, i32 2
  %71 = tail call fastcc i32 @drm_edp_backlight_set_enable(ptr noundef %69, ptr noundef %70, i1 noundef zeroext false) #15
  store i8 0, ptr %64, align 2
  br label %72

72:                                               ; preds = %67, %63, %61, %32
  %73 = phi i32 [ 0, %32 ], [ 0, %67 ], [ 0, %63 ], [ %62, %61 ]
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }

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
!9 = !{ptr @__128b132b_channel_eq_delay_us, ptr @__8b10b_channel_eq_delay_us, ptr @__8b10b_clock_recovery_delay_us}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i32 0, i32 33}
