; ModuleID = '/llk/IR/net/bluetooth/hci_event.c_pt.bc'
source_filename = "../net/bluetooth/hci_event.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_ev = type { i8, %union.anon.137, i16, i16 }
%union.anon.137 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.hci_cc = type { i16, ptr, i16, i16 }
%struct.hci_cs = type { i16, ptr }
%struct.hci_le_ev = type { ptr, i16, i16 }
%struct.sk_buff = type { %union.anon.1, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_ev_conn_complete = type <{ i8, i16, %struct.bdaddr_t, i8, i8 }>
%struct.hci_ev_cmd_complete = type <{ i8, i16 }>
%struct.hci_cp_remote_name_req = type { %struct.bdaddr_t, i8, i8, i16 }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_ev_inquiry_result = type <{ i8, [0 x %struct.inquiry_info] }>
%struct.inquiry_info = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16 }
%struct.hci_cp_read_remote_features = type { i16 }
%struct.hci_cp_change_conn_ptype = type { i16, i16 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_cp_reject_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_accept_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_accept_sync_conn_req = type <{ %struct.bdaddr_t, i32, i32, i16, i16, i8, i16 }>
%struct.hci_ev_conn_request = type { %struct.bdaddr_t, [3 x i8], i8 }
%struct.hci_ev_disconn_complete = type <{ i8, i16, i8 }>
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.hci_cp_set_conn_encrypt = type <{ i16, i8 }>
%struct.hci_ev_auth_complete = type <{ i8, i16 }>
%struct.hci_cp_auth_requested = type { i16 }
%struct.hci_ev_remote_name = type { i8, %struct.bdaddr_t, [248 x i8] }
%struct.hci_cp_read_enc_key_size = type { i16 }
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.hci_cp_write_auth_payload_to = type { i16, i16 }
%struct.hci_ev_encrypt_change = type <{ i8, i16, i8 }>
%struct.hci_ev_change_link_key_complete = type <{ i8, i16 }>
%struct.hci_cp_read_remote_ext_features = type <{ i16, i8 }>
%struct.hci_ev_remote_features = type <{ i8, i16, [8 x i8] }>
%struct.hci_ev_cmd_status = type { i8, i8, i16 }
%struct.hci_ev_role_change = type { i8, %struct.bdaddr_t, i8 }
%struct.hci_ev_num_comp_pkts = type <{ i8, [0 x %struct.hci_comp_pkts_info] }>
%struct.hci_comp_pkts_info = type { i16, i16 }
%struct.hci_ev_mode_change = type <{ i8, i16, i8, i16 }>
%struct.hci_cp_link_key_reply = type { %struct.bdaddr_t, [16 x i8] }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.hci_ev_link_key_notify = type { %struct.bdaddr_t, [16 x i8], i8 }
%struct.hci_ev_clock_offset = type <{ i8, i16, i16 }>
%struct.hci_ev_pkt_type_change = type <{ i8, i16, i16 }>
%struct.hci_ev_pscan_rep_mode = type { %struct.bdaddr_t, i8 }
%struct.inquiry_info_rssi_pscan = type <{ %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8 }>
%struct.inquiry_info_rssi = type <{ %struct.bdaddr_t, i8, i8, [3 x i8], i16, i8 }>
%struct.hci_ev_remote_ext_features = type <{ i8, i16, i8, i8, [8 x i8] }>
%struct.hci_ev_sync_conn_complete = type <{ i8, i16, %struct.bdaddr_t, i8, i8, i8, i16, i16, i8 }>
%struct.hci_ev_ext_inquiry_result = type { i8, [0 x %struct.extended_inquiry_info] }
%struct.extended_inquiry_info = type <{ %struct.bdaddr_t, i8, i8, [3 x i8], i16, i8, [240 x i8] }>
%struct.hci_ev_key_refresh_complete = type <{ i8, i16 }>
%struct.hci_cp_io_capability_reply = type { %struct.bdaddr_t, i8, i8, i8 }
%struct.hci_cp_io_capability_neg_reply = type { %struct.bdaddr_t, i8 }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.hci_ev_io_capa_reply = type { %struct.bdaddr_t, i8, i8, i8 }
%struct.hci_ev_user_confirm_req = type <{ %struct.bdaddr_t, i32 }>
%struct.hci_cp_remote_oob_data_neg_reply = type { %struct.bdaddr_t }
%struct.hci_cp_remote_oob_ext_data_reply = type { %struct.bdaddr_t, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.hci_cp_remote_oob_data_reply = type { %struct.bdaddr_t, [16 x i8], [16 x i8] }
%struct.hci_ev_simple_pair_complete = type { i8, %struct.bdaddr_t }
%struct.hci_ev_user_passkey_notify = type <{ %struct.bdaddr_t, i32 }>
%struct.hci_ev_keypress_notify = type { %struct.bdaddr_t, i8 }
%struct.hci_ev_remote_host_features = type { %struct.bdaddr_t, [8 x i8] }
%struct.hci_ev_num_comp_blocks = type <{ i16, i8, [0 x %struct.hci_comp_blocks_info] }>
%struct.hci_comp_blocks_info = type { i16, i16, i16 }
%struct.hci_chan = type { %struct.list_head, i16, ptr, %struct.sk_buff_head, i32, i8, i8 }
%struct.hci_rp_read_enc_key_size = type <{ i8, i16, i8 }>
%struct.hci_rp_role_discovery = type <{ i8, i16, i8 }>
%struct.hci_rp_read_link_policy = type <{ i8, i16, i16 }>
%struct.hci_rp_write_link_policy = type <{ i8, i16 }>
%struct.hci_rp_read_def_link_policy = type <{ i8, i16 }>
%struct.hci_cp_read_stored_link_key = type { %struct.bdaddr_t, i8 }
%struct.hci_rp_read_stored_link_key = type <{ i8, i16, i16 }>
%struct.hci_rp_delete_stored_link_key = type <{ i8, i16 }>
%struct.hci_rp_read_local_name = type { i8, [248 x i8] }
%struct.hci_rp_read_class_of_dev = type { i8, [3 x i8] }
%struct.hci_rp_read_voice_setting = type <{ i8, i16 }>
%struct.hci_rp_read_num_supported_iac = type { i8, i8 }
%struct.hci_rp_read_auth_payload_to = type <{ i8, i16, i16 }>
%struct.hci_rp_write_auth_payload_to = type <{ i8, i16 }>
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>
%struct.hci_rp_read_local_commands = type { i8, [64 x i8] }
%struct.hci_rp_read_local_features = type { i8, [8 x i8] }
%struct.hci_rp_read_local_ext_features = type { i8, i8, i8, [8 x i8] }
%struct.hci_rp_read_buffer_size = type <{ i8, i16, i8, i16, i16 }>
%struct.hci_rp_read_bd_addr = type { i8, %struct.bdaddr_t }
%struct.hci_rp_read_local_pairing_opts = type { i8, i8, i8 }
%struct.hci_rp_read_page_scan_activity = type <{ i8, i16, i16 }>
%struct.hci_cp_write_page_scan_activity = type { i16, i16 }
%struct.hci_rp_read_page_scan_type = type { i8, i8 }
%struct.hci_rp_read_data_block_size = type <{ i8, i16, i16, i16 }>
%struct.hci_rp_read_flow_control_mode = type { i8, i8 }
%struct.hci_rp_read_local_amp_info = type <{ i8, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32 }>
%struct.hci_cp_read_clock = type <{ i16, i8 }>
%struct.hci_rp_read_clock = type <{ i8, i16, i32, i16 }>
%struct.hci_rp_read_inq_rsp_tx_power = type { i8, i8 }
%struct.hci_rp_read_def_err_data_reporting = type { i8, i8 }
%struct.hci_rp_pin_code_reply = type { i8, %struct.bdaddr_t }
%struct.hci_cp_pin_code_reply = type { %struct.bdaddr_t, i8, [16 x i8] }
%struct.hci_rp_pin_code_neg_reply = type { i8, %struct.bdaddr_t }
%struct.hci_rp_le_read_buffer_size = type <{ i8, i16, i8 }>
%struct.hci_rp_le_read_local_features = type { i8, [8 x i8] }
%struct.hci_rp_le_read_adv_tx_power = type { i8, i8 }
%struct.hci_rp_user_confirm_reply = type { i8, %struct.bdaddr_t }
%struct.hci_rp_le_read_accept_list_size = type { i8, i8 }
%struct.hci_cp_le_add_to_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_del_from_accept_list = type { i8, %struct.bdaddr_t }
%struct.hci_rp_le_read_supported_states = type { i8, [8 x i8] }
%struct.hci_rp_le_read_def_data_len = type <{ i8, i16, i16 }>
%struct.hci_cp_le_write_def_data_len = type { i16, i16 }
%struct.hci_cp_le_add_to_resolv_list = type { i8, %struct.bdaddr_t, [16 x i8], [16 x i8] }
%struct.hci_cp_le_del_from_resolv_list = type { i8, %struct.bdaddr_t }
%struct.hci_rp_le_read_resolv_list_size = type { i8, i8 }
%struct.hci_rp_le_read_max_data_len = type <{ i8, i16, i16, i16, i16 }>
%struct.hci_cp_write_le_host_supported = type { i8, i8 }
%struct.hci_cp_le_set_adv_param = type <{ i16, i16, i8, i8, i8, %struct.bdaddr_t, i8, i8 }>
%struct.hci_rp_read_rssi = type <{ i8, i16, i8 }>
%struct.hci_rp_read_tx_power = type <{ i8, i16, i8 }>
%struct.hci_cp_read_tx_power = type <{ i16, i8 }>
%struct.hci_cp_le_set_ext_scan_params = type { i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_default_phy = type { i8, i8, i8 }
%struct.hci_rp_le_read_num_supported_adv_sets = type { i8, i8 }
%struct.hci_cp_le_set_ext_adv_params = type <{ i8, i16, [3 x i8], [3 x i8], i8, i8, i8, %struct.bdaddr_t, i8, i8, i8, i8, i8, i8, i8 }>
%struct.hci_rp_le_set_ext_adv_params = type { i8, i8 }
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.hci_cp_le_set_ext_adv_enable = type { i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_set_rand_addr = type { i8, %struct.bdaddr_t }
%struct.hci_rp_le_read_transmit_power = type { i8, i8, i8 }
%struct.hci_cp_le_set_privacy_mode = type { i8, %struct.bdaddr_t, i8 }
%struct.hci_cp_disconnect = type <{ i16, i8 }>
%struct.hci_cp_le_create_conn = type <{ i16, i16, i8, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16 }>
%struct.hci_cp_le_ext_create_conn = type { i8, i8, i8, %struct.bdaddr_t, i8, [0 x i8] }
%struct.hci_ev_le_conn_complete = type <{ i8, i16, i8, i8, %struct.bdaddr_t, i16, i16, i16, i8 }>
%struct.hci_ev_le_advertising_info = type { i8, i8, %struct.bdaddr_t, i8, [0 x i8] }
%struct.hci_ev_le_conn_update_complete = type <{ i8, i16, i16, i16, i16 }>
%struct.hci_ev_le_remote_feat_complete = type <{ i8, i16, [8 x i8] }>
%struct.hci_cp_le_ltk_reply = type { i16, [16 x i8] }
%struct.hci_cp_le_ltk_neg_reply = type { i16 }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.hci_ev_le_ltk_req = type <{ i16, i64, i16 }>
%struct.hci_cp_le_conn_param_req_neg_reply = type <{ i16, i8 }>
%struct.hci_cp_le_conn_param_req_reply = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.hci_ev_le_remote_conn_param_req = type { i16, i16, i16, i16, i16 }
%struct.hci_ev_le_enh_conn_complete = type <{ i8, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i16, i16, i16, i8 }>
%struct.hci_ev_le_direct_adv_report = type { i8, [0 x %struct.hci_ev_le_direct_adv_info] }
%struct.hci_ev_le_direct_adv_info = type { i8, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8 }
%struct.hci_ev_le_phy_update_complete = type <{ i8, i16, i8, i8 }>
%struct.hci_ev_le_ext_adv_info = type { i16, i8, %struct.bdaddr_t, i8, i8, i8, i8, i8, i16, i8, %struct.bdaddr_t, i8, [0 x i8] }
%struct.hci_evt_le_ext_adv_set_term = type <{ i8, i8, i16, i8 }>
%struct.hci_cp_le_read_remote_features = type { i16 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }

@.str = private unnamed_addr constant [25 x i8] c"%s: Malformed HCI Event\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Received unexpected HCI Event 0x%2.2x\0A\00", align 1
@hci_ev_table = internal unnamed_addr constant [256 x %struct.hci_ev] [%struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_inquiry_complete_evt }, i16 1, i16 1 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_inquiry_result_evt }, i16 1, i16 260 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_conn_complete_evt }, i16 11, i16 11 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_conn_request_evt }, i16 10, i16 10 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_disconn_complete_evt }, i16 4, i16 4 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_auth_complete_evt }, i16 3, i16 3 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_remote_name_evt }, i16 255, i16 255 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_encrypt_change_evt }, i16 4, i16 4 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_change_link_key_complete_evt }, i16 3, i16 3 }, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_remote_features_evt }, i16 11, i16 11 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 1, %union.anon.137 { ptr @hci_cmd_complete_evt }, i16 3, i16 260 }, %struct.hci_ev { i8 1, %union.anon.137 { ptr @hci_cmd_status_evt }, i16 4, i16 4 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_hardware_error_evt }, i16 1, i16 1 }, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_role_change_evt }, i16 8, i16 8 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_num_comp_pkts_evt }, i16 1, i16 260 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_mode_change_evt }, i16 6, i16 6 }, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_pin_code_request_evt }, i16 6, i16 6 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_link_key_request_evt }, i16 6, i16 6 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_link_key_notify_evt }, i16 23, i16 23 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_clock_offset_evt }, i16 5, i16 5 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_pkt_type_change_evt }, i16 5, i16 5 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_pscan_rep_mode_evt }, i16 7, i16 7 }, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_inquiry_result_with_rssi_evt }, i16 1, i16 260 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_remote_ext_features_evt }, i16 13, i16 13 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_sync_conn_complete_evt }, i16 17, i16 17 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_extended_inquiry_result_evt }, i16 1, i16 260 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_key_refresh_complete_evt }, i16 3, i16 3 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_io_capa_request_evt }, i16 6, i16 6 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_io_capa_reply_evt }, i16 9, i16 9 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_user_confirm_request_evt }, i16 10, i16 10 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_user_passkey_request_evt }, i16 6, i16 6 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_remote_oob_data_request_evt }, i16 6, i16 6 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_simple_pair_complete_evt }, i16 7, i16 7 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_user_passkey_notify_evt }, i16 10, i16 10 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_keypress_notify_evt }, i16 7, i16 7 }, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_remote_host_features_evt }, i16 14, i16 14 }, %struct.hci_ev { i8 1, %union.anon.137 { ptr @hci_le_meta_evt }, i16 1, i16 260 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @hci_num_comp_blocks_evt }, i16 3, i16 3 }, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev zeroinitializer, %struct.hci_ev { i8 0, %union.anon.137 { ptr @msft_vendor_evt }, i16 0, i16 0 }], align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: unexpected event 0x%2.2x length: %u < %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s: unexpected event 0x%2.2x length: %u > %u\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: no memory for new conn\0A\00", align 1
@hci_cb_list_lock = external dso_local global %struct.mutex, align 4
@hci_cb_list = external dso_local global %struct.list_head, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: no memory for new connection\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unknown link type %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"%s: re-auth of legacy device is not possible.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: Name resolve takes too long.\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: sending read key size failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s: invalid read key size response\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: failed to read key size for handle %u\0A\00", align 1
@hci_cc_table = internal unnamed_addr constant [89 x %struct.hci_cc] [%struct.hci_cc { i16 1026, ptr @hci_cc_inquiry_cancel, i16 1, i16 1 }, %struct.hci_cc { i16 1027, ptr @hci_cc_periodic_inq, i16 1, i16 1 }, %struct.hci_cc { i16 1028, ptr @hci_cc_exit_periodic_inq, i16 1, i16 1 }, %struct.hci_cc { i16 1050, ptr @hci_cc_remote_name_req_cancel, i16 1, i16 1 }, %struct.hci_cc { i16 2057, ptr @hci_cc_role_discovery, i16 4, i16 4 }, %struct.hci_cc { i16 2060, ptr @hci_cc_read_link_policy, i16 5, i16 5 }, %struct.hci_cc { i16 2061, ptr @hci_cc_write_link_policy, i16 3, i16 3 }, %struct.hci_cc { i16 2062, ptr @hci_cc_read_def_link_policy, i16 3, i16 3 }, %struct.hci_cc { i16 2063, ptr @hci_cc_write_def_link_policy, i16 1, i16 1 }, %struct.hci_cc { i16 3075, ptr @hci_cc_reset, i16 1, i16 1 }, %struct.hci_cc { i16 3085, ptr @hci_cc_read_stored_link_key, i16 5, i16 5 }, %struct.hci_cc { i16 3090, ptr @hci_cc_delete_stored_link_key, i16 3, i16 3 }, %struct.hci_cc { i16 3091, ptr @hci_cc_write_local_name, i16 1, i16 1 }, %struct.hci_cc { i16 3092, ptr @hci_cc_read_local_name, i16 249, i16 249 }, %struct.hci_cc { i16 3104, ptr @hci_cc_write_auth_enable, i16 1, i16 1 }, %struct.hci_cc { i16 3106, ptr @hci_cc_write_encrypt_mode, i16 1, i16 1 }, %struct.hci_cc { i16 3098, ptr @hci_cc_write_scan_enable, i16 1, i16 1 }, %struct.hci_cc { i16 3077, ptr @hci_cc_set_event_filter, i16 1, i16 1 }, %struct.hci_cc { i16 3107, ptr @hci_cc_read_class_of_dev, i16 4, i16 4 }, %struct.hci_cc { i16 3108, ptr @hci_cc_write_class_of_dev, i16 1, i16 1 }, %struct.hci_cc { i16 3109, ptr @hci_cc_read_voice_setting, i16 3, i16 3 }, %struct.hci_cc { i16 3110, ptr @hci_cc_write_voice_setting, i16 1, i16 1 }, %struct.hci_cc { i16 3128, ptr @hci_cc_read_num_supported_iac, i16 2, i16 2 }, %struct.hci_cc { i16 3158, ptr @hci_cc_write_ssp_mode, i16 1, i16 1 }, %struct.hci_cc { i16 3194, ptr @hci_cc_write_sc_support, i16 1, i16 1 }, %struct.hci_cc { i16 3195, ptr @hci_cc_read_auth_payload_timeout, i16 5, i16 5 }, %struct.hci_cc { i16 3196, ptr @hci_cc_write_auth_payload_timeout, i16 3, i16 3 }, %struct.hci_cc { i16 4097, ptr @hci_cc_read_local_version, i16 9, i16 9 }, %struct.hci_cc { i16 4098, ptr @hci_cc_read_local_commands, i16 65, i16 65 }, %struct.hci_cc { i16 4099, ptr @hci_cc_read_local_features, i16 9, i16 9 }, %struct.hci_cc { i16 4100, ptr @hci_cc_read_local_ext_features, i16 11, i16 11 }, %struct.hci_cc { i16 4101, ptr @hci_cc_read_buffer_size, i16 8, i16 8 }, %struct.hci_cc { i16 4105, ptr @hci_cc_read_bd_addr, i16 7, i16 7 }, %struct.hci_cc { i16 4108, ptr @hci_cc_read_local_pairing_opts, i16 3, i16 3 }, %struct.hci_cc { i16 3099, ptr @hci_cc_read_page_scan_activity, i16 5, i16 5 }, %struct.hci_cc { i16 3100, ptr @hci_cc_write_page_scan_activity, i16 1, i16 1 }, %struct.hci_cc { i16 3142, ptr @hci_cc_read_page_scan_type, i16 2, i16 2 }, %struct.hci_cc { i16 3143, ptr @hci_cc_write_page_scan_type, i16 1, i16 1 }, %struct.hci_cc { i16 4106, ptr @hci_cc_read_data_block_size, i16 7, i16 7 }, %struct.hci_cc { i16 3174, ptr @hci_cc_read_flow_control_mode, i16 2, i16 2 }, %struct.hci_cc { i16 5129, ptr @hci_cc_read_local_amp_info, i16 31, i16 31 }, %struct.hci_cc { i16 5127, ptr @hci_cc_read_clock, i16 9, i16 9 }, %struct.hci_cc { i16 3160, ptr @hci_cc_read_inq_rsp_tx_power, i16 2, i16 2 }, %struct.hci_cc { i16 3162, ptr @hci_cc_read_def_err_data_reporting, i16 2, i16 2 }, %struct.hci_cc { i16 3163, ptr @hci_cc_write_def_err_data_reporting, i16 1, i16 1 }, %struct.hci_cc { i16 1037, ptr @hci_cc_pin_code_reply, i16 7, i16 7 }, %struct.hci_cc { i16 1038, ptr @hci_cc_pin_code_neg_reply, i16 7, i16 7 }, %struct.hci_cc { i16 3159, ptr @hci_cc_read_local_oob_data, i16 33, i16 33 }, %struct.hci_cc { i16 3197, ptr @hci_cc_read_local_oob_ext_data, i16 65, i16 65 }, %struct.hci_cc { i16 8194, ptr @hci_cc_le_read_buffer_size, i16 4, i16 4 }, %struct.hci_cc { i16 8195, ptr @hci_cc_le_read_local_features, i16 9, i16 9 }, %struct.hci_cc { i16 8199, ptr @hci_cc_le_read_adv_tx_power, i16 2, i16 2 }, %struct.hci_cc { i16 1068, ptr @hci_cc_user_confirm_reply, i16 7, i16 7 }, %struct.hci_cc { i16 1069, ptr @hci_cc_user_confirm_neg_reply, i16 7, i16 7 }, %struct.hci_cc { i16 1070, ptr @hci_cc_user_passkey_reply, i16 7, i16 7 }, %struct.hci_cc { i16 1071, ptr @hci_cc_user_passkey_neg_reply, i16 7, i16 7 }, %struct.hci_cc { i16 8197, ptr @hci_cc_le_set_random_addr, i16 1, i16 1 }, %struct.hci_cc { i16 8202, ptr @hci_cc_le_set_adv_enable, i16 1, i16 1 }, %struct.hci_cc { i16 8203, ptr @hci_cc_le_set_scan_param, i16 1, i16 1 }, %struct.hci_cc { i16 8204, ptr @hci_cc_le_set_scan_enable, i16 1, i16 1 }, %struct.hci_cc { i16 8207, ptr @hci_cc_le_read_accept_list_size, i16 2, i16 2 }, %struct.hci_cc { i16 8208, ptr @hci_cc_le_clear_accept_list, i16 1, i16 1 }, %struct.hci_cc { i16 8209, ptr @hci_cc_le_add_to_accept_list, i16 1, i16 1 }, %struct.hci_cc { i16 8210, ptr @hci_cc_le_del_from_accept_list, i16 1, i16 1 }, %struct.hci_cc { i16 8220, ptr @hci_cc_le_read_supported_states, i16 9, i16 9 }, %struct.hci_cc { i16 8227, ptr @hci_cc_le_read_def_data_len, i16 5, i16 5 }, %struct.hci_cc { i16 8228, ptr @hci_cc_le_write_def_data_len, i16 1, i16 1 }, %struct.hci_cc { i16 8231, ptr @hci_cc_le_add_to_resolv_list, i16 1, i16 1 }, %struct.hci_cc { i16 8232, ptr @hci_cc_le_del_from_resolv_list, i16 1, i16 1 }, %struct.hci_cc { i16 8233, ptr @hci_cc_le_clear_resolv_list, i16 1, i16 1 }, %struct.hci_cc { i16 8234, ptr @hci_cc_le_read_resolv_list_size, i16 2, i16 2 }, %struct.hci_cc { i16 8237, ptr @hci_cc_le_set_addr_resolution_enable, i16 1, i16 1 }, %struct.hci_cc { i16 8239, ptr @hci_cc_le_read_max_data_len, i16 9, i16 9 }, %struct.hci_cc { i16 3181, ptr @hci_cc_write_le_host_supported, i16 1, i16 1 }, %struct.hci_cc { i16 8198, ptr @hci_cc_set_adv_param, i16 1, i16 1 }, %struct.hci_cc { i16 5125, ptr @hci_cc_read_rssi, i16 4, i16 4 }, %struct.hci_cc { i16 3117, ptr @hci_cc_read_tx_power, i16 4, i16 4 }, %struct.hci_cc { i16 6148, ptr @hci_cc_write_ssp_debug_mode, i16 1, i16 1 }, %struct.hci_cc { i16 8257, ptr @hci_cc_le_set_ext_scan_param, i16 1, i16 1 }, %struct.hci_cc { i16 8258, ptr @hci_cc_le_set_ext_scan_enable, i16 1, i16 1 }, %struct.hci_cc { i16 8241, ptr @hci_cc_le_set_default_phy, i16 1, i16 1 }, %struct.hci_cc { i16 8251, ptr @hci_cc_le_read_num_adv_sets, i16 2, i16 2 }, %struct.hci_cc { i16 8246, ptr @hci_cc_set_ext_adv_param, i16 2, i16 2 }, %struct.hci_cc { i16 8249, ptr @hci_cc_le_set_ext_adv_enable, i16 1, i16 1 }, %struct.hci_cc { i16 8245, ptr @hci_cc_le_set_adv_set_random_addr, i16 1, i16 1 }, %struct.hci_cc { i16 8252, ptr @hci_cc_le_remove_adv_set, i16 1, i16 1 }, %struct.hci_cc { i16 8253, ptr @hci_cc_le_clear_adv_sets, i16 1, i16 1 }, %struct.hci_cc { i16 8267, ptr @hci_cc_le_read_transmit_power, i16 3, i16 3 }, %struct.hci_cc { i16 8270, ptr @hci_cc_le_set_privacy_mode, i16 1, i16 1 }], align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"%s: unexpected event for opcode 0x%4.4x\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"%s: Ignoring error of Inquiry Cancel command\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s: use of reserved LE_Scan_Enable param %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"%s: unexpected cc 0x%4.4x length: %u < %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"%s: unexpected cc 0x%4.4x length: %u > %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"%s: Malformed Command Complete: 0x%4.4x\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@hci_cs_table = internal unnamed_addr constant [18 x %struct.hci_cs] [%struct.hci_cs { i16 1025, ptr @hci_cs_inquiry }, %struct.hci_cs { i16 1029, ptr @hci_cs_create_conn }, %struct.hci_cs { i16 1030, ptr @hci_cs_disconnect }, %struct.hci_cs { i16 1031, ptr @hci_cs_add_sco }, %struct.hci_cs { i16 1041, ptr @hci_cs_auth_requested }, %struct.hci_cs { i16 1043, ptr @hci_cs_set_conn_encrypt }, %struct.hci_cs { i16 1049, ptr @hci_cs_remote_name_req }, %struct.hci_cs { i16 1051, ptr @hci_cs_read_remote_features }, %struct.hci_cs { i16 1052, ptr @hci_cs_read_remote_ext_features }, %struct.hci_cs { i16 1064, ptr @hci_cs_setup_sync_conn }, %struct.hci_cs { i16 1085, ptr @hci_cs_enhanced_setup_sync_conn }, %struct.hci_cs { i16 2051, ptr @hci_cs_sniff_mode }, %struct.hci_cs { i16 2052, ptr @hci_cs_exit_sniff_mode }, %struct.hci_cs { i16 2059, ptr @hci_cs_switch_role }, %struct.hci_cs { i16 8205, ptr @hci_cs_le_create_conn }, %struct.hci_cs { i16 8214, ptr @hci_cs_le_read_remote_features }, %struct.hci_cs { i16 8217, ptr @hci_cs_le_start_enc }, %struct.hci_cs { i16 8259, ptr @hci_cs_le_ext_create_conn }], align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"%s: wrong event for mode %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"%s: unknown type %d conn %p\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s: Malformed HCI Event: 0x%2.2x\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"%s: Ignoring connect complete event for existing connection\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"%s: unexpected subevent 0x%2.2x length: %u < %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"%s: unexpected subevent 0x%2.2x length: %u > %u\0A\00", align 1
@hci_le_ev_table = internal unnamed_addr constant <{ [19 x %struct.hci_le_ev], [237 x %struct.hci_le_ev] }> <{ [19 x %struct.hci_le_ev] [%struct.hci_le_ev zeroinitializer, %struct.hci_le_ev { ptr @hci_le_conn_complete_evt, i16 18, i16 18 }, %struct.hci_le_ev { ptr @hci_le_adv_report_evt, i16 1, i16 260 }, %struct.hci_le_ev { ptr @hci_le_conn_update_complete_evt, i16 9, i16 9 }, %struct.hci_le_ev { ptr @hci_le_remote_feat_complete_evt, i16 11, i16 11 }, %struct.hci_le_ev { ptr @hci_le_ltk_request_evt, i16 12, i16 12 }, %struct.hci_le_ev { ptr @hci_le_remote_conn_param_req_evt, i16 10, i16 10 }, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev { ptr @hci_le_enh_conn_complete_evt, i16 30, i16 30 }, %struct.hci_le_ev { ptr @hci_le_direct_adv_report_evt, i16 1, i16 260 }, %struct.hci_le_ev { ptr @hci_le_phy_update_evt, i16 5, i16 5 }, %struct.hci_le_ev { ptr @hci_le_ext_adv_report_evt, i16 1, i16 260 }, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev zeroinitializer, %struct.hci_le_ev { ptr @hci_le_ext_adv_term_evt, i16 5, i16 5 }], [237 x %struct.hci_le_ev] zeroinitializer }>, align 4
@.str.26 = private unnamed_addr constant [39 x i8] c"%s: Dropping invalid advertising data\0A\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"%s: unknown advertising packet type: 0x%02x\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"%s: legacy adv larger than 31 bytes\00", align 1
@.str.29 = private unnamed_addr constant [44 x i8] c"%s: Unknown advertising packet type: 0x%02x\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"%s: Unexpected advertising set terminated event\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"%s: Malformed LE Event: 0x%2.2x\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"%s: unknown dev_type %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"%s: Malformed Event: 0x%2.2x\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"%s: last event is not cmd complete (0x%2.2x)\0A\00", align 1
@switch.table.hci_le_ext_adv_report_evt = private unnamed_addr constant [12 x i8] c"\03\00\02\00\00\01\00\00\00\00\04\04", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_event_packet(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %13) #15
  br label %170

14:                                               ; preds = %2
  %15 = load i8, ptr %8, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.1, ptr noundef %18, i32 noundef 0) #15
  br label %170

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 12
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, -1024
  %27 = icmp eq i16 %26, 8192
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 15
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, %15
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  call void @hci_req_cmd_complete(ptr noundef %0, i16 noundef zeroext %25, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %33 = load ptr, ptr %4, align 4
  br label %34

34:                                               ; preds = %32, %28, %23, %19
  %35 = phi ptr [ %33, %32 ], [ null, %28 ], [ null, %23 ], [ null, %19 ]
  %36 = phi i8 [ %15, %32 ], [ 0, %28 ], [ 0, %23 ], [ 0, %19 ]
  %37 = freeze ptr %35
  %38 = icmp ne ptr %37, null
  %39 = and i8 %15, -2
  %40 = icmp eq i8 %39, 14
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call ptr @skb_clone(ptr noundef %1, i32 noundef 3264) #15
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi ptr [ %43, %42 ], [ null, %34 ]
  %46 = call ptr @skb_pull(ptr noundef %1, i32 noundef 2) #15
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %48) #15
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %50 = load i8, ptr %49, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 180
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %96

56:                                               ; preds = %52
  store i8 2, ptr %53, align 2
  switch i8 %15, label %95 [
    i8 4, label %57
    i8 3, label %61
    i8 62, label %64
  ]

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  %59 = getelementptr inbounds %struct.hci_ev_conn_complete, ptr %47, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %58, ptr noundef align 1 dereferenceable(6) %59, i32 6, i1 false) #15
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  store i8 0, ptr %60, align 1
  br label %96

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %62, ptr noundef align 1 dereferenceable(6) %47, i32 6, i1 false) #15
  %63 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  store i8 0, ptr %63, align 1
  br label %96

64:                                               ; preds = %56
  %65 = load ptr, ptr %7, align 4
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %65, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %66, 2
  %70 = icmp eq i8 %66, 11
  %71 = or i1 %69, %70
  %72 = icmp eq i8 %66, 13
  %73 = or i1 %72, %71
  %74 = icmp ne i8 %68, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %96

76:                                               ; preds = %64
  switch i8 %66, label %96 [
    i8 2, label %77
    i8 11, label %83
    i8 13, label %89
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  %79 = getelementptr i8, ptr %65, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %78, ptr noundef align 1 dereferenceable(6) %79, i32 6, i1 false) #15
  %80 = getelementptr i8, ptr %65, i32 3
  %81 = load i8, ptr %80, align 1
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  store i8 %81, ptr %82, align 1
  br label %96

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  %85 = getelementptr i8, ptr %65, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %84, ptr noundef align 1 dereferenceable(6) %85, i32 6, i1 false) #15
  %86 = getelementptr i8, ptr %65, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  store i8 %87, ptr %88, align 1
  br label %96

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  %91 = getelementptr i8, ptr %65, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %90, ptr noundef align 1 dereferenceable(6) %91, i32 6, i1 false) #15
  %92 = getelementptr i8, ptr %65, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  store i8 %93, ptr %94, align 1
  br label %96

95:                                               ; preds = %56
  store i8 1, ptr %53, align 2
  br label %96

96:                                               ; preds = %95, %89, %83, %77, %76, %64, %61, %57, %52, %44
  call void @mutex_unlock(ptr noundef %48) #15
  %97 = zext i8 %15 to i32
  %98 = getelementptr [256 x %struct.hci_ev], ptr @hci_ev_table, i32 0, i32 %97
  %99 = getelementptr [256 x %struct.hci_ev], ptr @hci_ev_table, i32 0, i32 %97, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %127, label %102

102:                                              ; preds = %96
  %103 = load i32, ptr %9, align 8
  %104 = getelementptr [256 x %struct.hci_ev], ptr @hci_ev_table, i32 0, i32 %97, i32 2
  %105 = load i16, ptr %104, align 4
  %106 = zext i16 %105 to i32
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %109, i32 noundef %97, i32 noundef %103, i32 noundef %106) #15
  br label %127

110:                                              ; preds = %102
  %111 = getelementptr [256 x %struct.hci_ev], ptr @hci_ev_table, i32 0, i32 %97, i32 3
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = icmp ugt i32 %103, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.3, ptr noundef %116, i32 noundef %97, i32 noundef %103, i32 noundef %113) #15
  br label %117

117:                                              ; preds = %115, %110
  %118 = call ptr @skb_pull_data(ptr noundef %1, i32 noundef %106) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %121, i32 noundef %97) #15
  br label %127

122:                                              ; preds = %117
  %123 = load i8, ptr %98, align 4, !range !8
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call void %100(ptr noundef %0, ptr noundef nonnull %118, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  br label %127

126:                                              ; preds = %122
  call void %100(ptr noundef %0, ptr noundef nonnull %118, ptr noundef %1) #15
  br label %127

127:                                              ; preds = %126, %125, %120, %108, %96
  %128 = load ptr, ptr %3, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i8, ptr %5, align 1
  %132 = load i16, ptr %6, align 2
  call void %128(ptr noundef %0, i8 noundef zeroext %131, i16 noundef zeroext %132) #15
  br label %170

133:                                              ; preds = %127
  %134 = load ptr, ptr %4, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %170, label %136

136:                                              ; preds = %133
  %137 = load i16, ptr %6, align 2
  %138 = icmp eq ptr %45, null
  br i1 %138, label %164, label %139

139:                                              ; preds = %136
  %140 = call ptr @skb_pull_data(ptr noundef nonnull %45, i32 noundef 2) #15
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %144 = zext i8 %36 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %143, i32 noundef %144) #15
  br label %164

145:                                              ; preds = %139
  %146 = icmp eq i8 %36, 0
  %147 = load i8, ptr %140, align 1
  br i1 %146, label %150, label %148

148:                                              ; preds = %145
  %149 = icmp eq i8 %147, %36
  br i1 %149, label %165, label %164

150:                                              ; preds = %145
  switch i8 %147, label %151 [
    i8 15, label %164
    i8 14, label %154
  ]

151:                                              ; preds = %150
  %152 = zext i8 %147 to i32
  %153 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.34, ptr noundef %153, i32 noundef %152) #15
  br label %164

154:                                              ; preds = %150
  %155 = call ptr @skb_pull_data(ptr noundef nonnull %45, i32 noundef 3) #15
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %159 = zext i16 %137 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %158, i32 noundef %159) #15
  br label %164

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.hci_ev_cmd_complete, ptr %155, i32 0, i32 1
  %162 = load i16, ptr %161, align 1
  %163 = icmp eq i16 %162, %137
  br i1 %163, label %165, label %164

164:                                              ; preds = %160, %157, %151, %150, %148, %142, %136
  call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #15
  br label %165

165:                                              ; preds = %164, %160, %148
  %166 = phi ptr [ %45, %160 ], [ null, %164 ], [ %45, %148 ]
  %167 = load ptr, ptr %4, align 4
  %168 = load i8, ptr %5, align 1
  %169 = load i16, ptr %6, align 2
  call void %167(ptr noundef %0, i8 noundef zeroext %168, i16 noundef zeroext %169, ptr noundef %166) #15
  br label %170

170:                                              ; preds = %165, %133, %130, %17, %12
  %171 = phi ptr [ null, %12 ], [ %45, %130 ], [ %166, %165 ], [ %45, %133 ], [ null, %17 ]
  call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #15
  call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #15
  %172 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 199, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = add i32 %173, 1
  store i32 %174, ptr %172, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_cmd_complete(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_inquiry_complete_evt(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_remote_name_req, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  tail call void @hci_conn_check_pending(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 7) #15
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %10, align 4
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1024
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %27, %23
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  br label %64

33:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %34 = call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #15
  %37 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %37, i32 6, i1 false) #15
  %38 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4, i32 1
  %39 = load i8, ptr %38, align 2
  %40 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %4, i32 0, i32 1
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4, i32 3
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %4, i32 0, i32 2
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4, i32 5
  %45 = load i16, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %4, i32 0, i32 3
  store i16 %45, ptr %46, align 1
  %47 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1049, i32 noundef 10, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 2
  store i32 2, ptr %50, align 4
  call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 3) #15
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = add i32 %51, 1024
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 20
  store i32 %52, ptr %53, align 4
  br label %64

54:                                               ; preds = %36, %33
  %55 = load volatile i32, ptr %10, align 4
  %56 = and i32 %55, 16384
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1024
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54
  call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  br label %64

64:                                               ; preds = %63, %58, %49, %32, %27, %14
  call void @mutex_unlock(ptr noundef %15) #15
  br label %65

65:                                               ; preds = %64, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_inquiry_result_evt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.inquiry_data, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 14
  %8 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %11, i32 noundef 2) #15
  br label %50

12:                                               ; preds = %3
  %13 = load i8, ptr %1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = load i8, ptr %1, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 5
  %30 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 6
  %31 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 7
  br label %32

32:                                               ; preds = %32, %24
  %33 = phi i32 [ 0, %24 ], [ %45, %32 ]
  %34 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false) #15
  %35 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 1
  %36 = load i8, ptr %35, align 1
  store i8 %36, ptr %25, align 2
  %37 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 2
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %26, align 1
  %39 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 3
  %40 = load i8, ptr %39, align 1
  store i8 %40, ptr %27, align 2
  %41 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %28, ptr noundef align 1 dereferenceable(3) %41, i32 3, i1 false)
  %42 = getelementptr %struct.hci_ev_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 5
  %43 = load i16, ptr %42, align 1
  store i16 %43, ptr %29, align 2
  store i8 127, ptr %30, align 2
  store i8 0, ptr %31, align 1
  %44 = call i32 @hci_inquiry_cache_update(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  call void @mgmt_device_found(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %41, i8 noundef signext 127, i32 noundef %44, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0) #15
  %45 = add nuw nsw i32 %33, 1
  %46 = load i8, ptr %1, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %32, label %49

49:                                               ; preds = %32, %20
  call void @mutex_unlock(ptr noundef %21) #15
  br label %50

50:                                               ; preds = %49, %15, %12, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_conn_complete_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_read_remote_features, align 2
  %5 = alloca %struct.hci_cp_change_conn_ptype, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_ev_conn_complete, ptr %1, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_ev_conn_complete, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %25, label %13

13:                                               ; preds = %22, %3
  %14 = phi ptr [ %23, %22 ], [ %11, %3 ]
  %15 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, %8
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef dereferenceable(6) %9, i32 6) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = load volatile ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %25, label %13

25:                                               ; preds = %22, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %28

26:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %27 = icmp eq ptr %14, null
  br i1 %27, label %28, label %65

28:                                               ; preds = %26, %25
  %29 = load i8, ptr %7, align 1
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %33 = tail call ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef %32, ptr noundef %9, i8 noundef zeroext 0) #15
  %34 = icmp eq ptr %33, null
  %35 = load i8, ptr %7, align 1
  br i1 %34, label %42, label %36

36:                                               ; preds = %31
  %37 = zext i8 %35 to i32
  %38 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef %37, ptr noundef %9, i8 noundef zeroext 1) #15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %41) #15
  br label %212

42:                                               ; preds = %31, %28
  %43 = phi i8 [ %29, %28 ], [ %35, %31 ]
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %212

45:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %46 = load volatile ptr, ptr %10, align 4
  %47 = icmp eq ptr %46, %10
  br i1 %47, label %60, label %48

48:                                               ; preds = %57, %45
  %49 = phi ptr [ %58, %57 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 14
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 2
  %55 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %54, ptr noundef dereferenceable(6) %9, i32 6) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %48
  %58 = load volatile ptr, ptr %49, align 4
  %59 = icmp eq ptr %58, %10
  br i1 %59, label %60, label %48

60:                                               ; preds = %57, %45
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %212

61:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %62 = icmp eq ptr %49, null
  br i1 %62, label %212, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 14
  store i8 0, ptr %64, align 1
  br label %65

65:                                               ; preds = %63, %36, %26
  %66 = phi ptr [ %14, %26 ], [ %38, %36 ], [ %49, %63 ]
  %67 = load i8, ptr %1, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %142

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hci_ev_conn_complete, ptr %1, i32 0, i32 1
  %71 = load i16, ptr %70, align 1
  %72 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 11
  store i16 %71, ptr %72, align 2
  %73 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 14
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 1
  %76 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 12
  br i1 %75, label %77, label %104

77:                                               ; preds = %69
  store i16 7, ptr %76, align 4
  %78 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #15, !srcloc !13
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #15, !srcloc !14
  %80 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 58
  %81 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %80) #15
  %82 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 16
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 65
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.hci_dev, ptr %87, i32 0, i32 206
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 32768
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 47
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 128
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %85
  %98 = tail call ptr @hci_find_link_key(ptr noundef %0, ptr noundef %9) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 31
  store i16 6000, ptr %101, align 2
  br label %105

102:                                              ; preds = %97, %92, %77
  %103 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 31
  store i16 200, ptr %103, align 2
  br label %105

104:                                              ; preds = %69
  store i16 1, ptr %76, align 4
  br label %105

105:                                              ; preds = %104, %102, %100
  tail call void @hci_debugfs_create_conn(ptr noundef nonnull %66) #15
  tail call void @hci_conn_add_sysfs(ptr noundef nonnull %66) #15
  %106 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %107, 32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 13, ptr noundef %111) #15
  br label %112

112:                                              ; preds = %110, %105
  %113 = load volatile i32, ptr %106, align 4
  %114 = and i32 %113, 64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 12, ptr noundef %117) #15
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i8, ptr %73, align 1
  %120 = icmp eq i8 %119, 1
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %122 = load i16, ptr %70, align 1
  store i16 %122, ptr %4, align 2
  %123 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1051, i32 noundef 2, ptr noundef nonnull %4) #15
  %124 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156
  %127 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %125, ptr noundef %126) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %128

128:                                              ; preds = %121, %118
  %129 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 16
  %130 = load i8, ptr %129, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %134 = load i8, ptr %133, align 1
  %135 = icmp ult i8 %134, 3
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %137 = load i16, ptr %70, align 1
  store i16 %137, ptr %5, align 4
  %138 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 20
  %139 = load i16, ptr %138, align 2
  %140 = getelementptr inbounds %struct.hci_cp_change_conn_ptype, ptr %5, i32 0, i32 1
  store i16 %139, ptr %140, align 2
  %141 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1039, i32 noundef 4, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %152

142:                                              ; preds = %65
  %143 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 12
  store i16 9, ptr %143, align 4
  %144 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 14
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 1
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 2
  %149 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 3
  %150 = load i8, ptr %149, align 2
  %151 = load i8, ptr %1, align 1
  tail call void @mgmt_connect_failed(ptr noundef %0, ptr noundef %148, i8 noundef zeroext 1, i8 noundef zeroext %150, i8 noundef zeroext %151) #15
  br label %152

152:                                              ; preds = %147, %142, %136, %132, %128
  %153 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 14
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i8, ptr %1, align 1
  call void @hci_sco_setup(ptr noundef nonnull %66, i8 noundef zeroext %157) #15
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i8, ptr %1, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %180, label %161

161:                                              ; preds = %158
  call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %162 = load ptr, ptr @hci_cb_list, align 4
  %163 = icmp eq ptr %162, @hci_cb_list
  br i1 %163, label %173, label %164

164:                                              ; preds = %170, %161
  %165 = phi ptr [ %171, %170 ], [ %162, %161 ]
  %166 = getelementptr inbounds %struct.hci_cb, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  call void %167(ptr noundef %66, i8 noundef zeroext %159) #15
  br label %170

170:                                              ; preds = %169, %164
  %171 = load ptr, ptr %165, align 4
  %172 = icmp eq ptr %171, @hci_cb_list
  br i1 %172, label %173, label %164

173:                                              ; preds = %170, %161
  call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %174 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 71
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void %175(ptr noundef %66, i8 noundef zeroext %159) #15
  br label %178

178:                                              ; preds = %177, %173
  %179 = call i32 @hci_conn_del(ptr noundef %66) #15
  br label %212

180:                                              ; preds = %158
  %181 = load i8, ptr %7, align 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %212

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 33
  %185 = load i16, ptr %184, align 2
  %186 = and i16 %185, 3
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 232
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  call void %190(ptr noundef %0, i32 noundef 4) #15
  %193 = load i8, ptr %1, align 1
  br label %194

194:                                              ; preds = %192, %188, %183
  %195 = phi i8 [ 0, %188 ], [ %193, %192 ], [ 0, %183 ]
  call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %196 = load ptr, ptr @hci_cb_list, align 4
  %197 = icmp eq ptr %196, @hci_cb_list
  br i1 %197, label %207, label %198

198:                                              ; preds = %204, %194
  %199 = phi ptr [ %205, %204 ], [ %196, %194 ]
  %200 = getelementptr inbounds %struct.hci_cb, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  call void %201(ptr noundef %66, i8 noundef zeroext %195) #15
  br label %204

204:                                              ; preds = %203, %198
  %205 = load ptr, ptr %199, align 4
  %206 = icmp eq ptr %205, @hci_cb_list
  br i1 %206, label %207, label %198

207:                                              ; preds = %204, %194
  call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %208 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 71
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void %209(ptr noundef %66, i8 noundef zeroext %195) #15
  br label %212

212:                                              ; preds = %211, %207, %180, %178, %61, %60, %42, %40
  call void @mutex_unlock(ptr noundef %6) #15
  call void @hci_conn_check_pending(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_conn_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_reject_conn_req, align 1
  %5 = alloca %struct.hci_cp_reject_conn_req, align 1
  %6 = alloca %struct.hci_cp_reject_conn_req, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.hci_cp_accept_conn_req, align 1
  %9 = alloca %struct.hci_cp_accept_sync_conn_req, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 101
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1
  %13 = getelementptr inbounds %struct.hci_ev_conn_request, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %19 [
    i8 1, label %15
    i8 0, label %17
    i8 2, label %17
  ]

15:                                               ; preds = %3
  %16 = tail call i32 @l2cap_connect_ind(ptr noundef %0, ptr noundef %1) #15
  br label %21

17:                                               ; preds = %3, %3
  %18 = call i32 @sco_connect_ind(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #15
  br label %21

19:                                               ; preds = %3
  %20 = zext i8 %14 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, i32 noundef %20) #15
  br label %21

21:                                               ; preds = %19, %17, %15
  %22 = phi i32 [ -22, %19 ], [ %18, %17 ], [ %16, %15 ]
  %23 = or i32 %22, %12
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %27 = getelementptr inbounds %struct.hci_cp_reject_conn_req, ptr %6, i32 0, i32 1
  store i8 15, ptr %27, align 1
  %28 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1034, i32 noundef 7, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #15
  br label %143

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %31 = call ptr @hci_bdaddr_list_lookup(ptr noundef %30, ptr noundef %1, i8 noundef zeroext 0) #15
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %34 = getelementptr inbounds %struct.hci_cp_reject_conn_req, ptr %5, i32 0, i32 1
  store i8 15, ptr %34, align 1
  %35 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1034, i32 noundef 7, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #15
  br label %143

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load volatile i32, ptr %37, align 4
  %43 = and i32 %42, 67108864
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %47 = call ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef %46, ptr noundef %1, i8 noundef zeroext 0) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %50 = getelementptr inbounds %struct.hci_cp_reject_conn_req, ptr %4, i32 0, i32 1
  store i8 15, ptr %50, align 1
  %51 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1034, i32 noundef 7, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #15
  br label %143

52:                                               ; preds = %45, %41, %36
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %53) #15
  %54 = call ptr @hci_inquiry_cache_lookup(ptr noundef %0, ptr noundef %1) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.inquiry_entry, ptr %54, i32 0, i32 4, i32 4
  %58 = getelementptr inbounds %struct.hci_ev_conn_request, ptr %1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %57, ptr noundef align 1 dereferenceable(3) %58, i32 3, i1 false)
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i8, ptr %13, align 1
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %76, label %64

64:                                               ; preds = %73, %59
  %65 = phi ptr [ %74, %73 ], [ %62, %59 ]
  %66 = getelementptr inbounds %struct.hci_conn, ptr %65, i32 0, i32 14
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, %60
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.hci_conn, ptr %65, i32 0, i32 2
  %71 = call i32 @bcmp(ptr noundef dereferenceable(6) %70, ptr noundef dereferenceable(6) %1, i32 6) #15
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %64
  %74 = load volatile ptr, ptr %65, align 4
  %75 = icmp eq ptr %74, %61
  br i1 %75, label %76, label %64

76:                                               ; preds = %73, %59
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %79

77:                                               ; preds = %69
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %78 = icmp eq ptr %65, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %77, %76
  %80 = load i8, ptr %13, align 1
  %81 = zext i8 %80 to i32
  %82 = call ptr @hci_conn_add(ptr noundef %0, i32 noundef %81, ptr noundef %1, i8 noundef zeroext 1) #15
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %85) #15
  call void @mutex_unlock(ptr noundef %53) #15
  br label %143

86:                                               ; preds = %79, %77
  %87 = phi ptr [ %65, %77 ], [ %82, %79 ]
  %88 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 18
  %89 = getelementptr inbounds %struct.hci_ev_conn_request, ptr %1, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %88, ptr noundef align 1 dereferenceable(3) %89, i32 3, i1 false)
  call void @mutex_unlock(ptr noundef %53) #15
  %90 = load i8, ptr %13, align 1
  %91 = icmp eq i8 %90, 1
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load i8, ptr %7, align 1
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  %97 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = icmp sgt i8 %98, -1
  br i1 %99, label %100, label %112

100:                                              ; preds = %96, %86
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %8) #15
  %101 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 12
  store i16 5, ptr %101, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %102 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 21
  %103 = load i8, ptr %102, align 2
  %104 = and i8 %103, 32
  %105 = icmp eq i8 %104, 0
  %106 = and i32 %23, 1
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %105, i1 true, i1 %107
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.hci_cp_accept_conn_req, ptr %8, i32 0, i32 1
  store i8 %109, ptr %110, align 1
  %111 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1033, i32 noundef 7, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %8) #15
  br label %143

112:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %9) #15
  %113 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 12
  store i16 5, ptr %113, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %114 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 20
  %115 = load i16, ptr %114, align 2
  %116 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 6
  store i16 %115, ptr %116, align 1
  %117 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 1
  store i32 8000, ptr %117, align 1
  %118 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 2
  store i32 8000, ptr %118, align 1
  %119 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 3
  store i16 -1, ptr %119, align 1
  %120 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 33
  %121 = load i16, ptr %120, align 2
  %122 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 4
  store i16 %121, ptr %122, align 1
  %123 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %9, i32 0, i32 5
  store i8 -1, ptr %123, align 1
  %124 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1065, i32 noundef 21, ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %9) #15
  br label %143

125:                                              ; preds = %92
  %126 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 12
  store i16 6, ptr %126, align 4
  call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %127 = load ptr, ptr @hci_cb_list, align 4
  %128 = icmp eq ptr %127, @hci_cb_list
  br i1 %128, label %138, label %129

129:                                              ; preds = %135, %125
  %130 = phi ptr [ %136, %135 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.hci_cb, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  call void %132(ptr noundef %87, i8 noundef zeroext 0) #15
  br label %135

135:                                              ; preds = %134, %129
  %136 = load ptr, ptr %130, align 4
  %137 = icmp eq ptr %136, @hci_cb_list
  br i1 %137, label %138, label %129

138:                                              ; preds = %135, %125
  call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %139 = getelementptr inbounds %struct.hci_conn, ptr %87, i32 0, i32 71
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  call void %140(ptr noundef %87, i8 noundef zeroext 0) #15
  br label %143

143:                                              ; preds = %142, %138, %112, %100, %84, %49, %33, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_disconn_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_disconn_complete, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %116

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %116, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %24 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 3
  %27 = load i8, ptr %26, align 2
  tail call void @mgmt_disconnect_failed(ptr noundef %0, ptr noundef %23, i8 noundef zeroext %25, i8 noundef zeroext %27, i8 noundef zeroext %20) #15
  br label %116

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 12
  store i16 9, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %30) #15
  %32 = icmp ne i32 %31, 0
  %33 = load volatile i32, ptr %30, align 4
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.hci_ev_disconn_complete, ptr %1, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  switch i8 %38, label %41 [
    i8 8, label %42
    i8 19, label %39
    i8 20, label %39
    i8 21, label %39
    i8 22, label %40
  ]

39:                                               ; preds = %36, %36, %36
  br label %42

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %40, %39, %36, %28
  %43 = phi i8 [ 4, %28 ], [ 0, %41 ], [ 2, %40 ], [ 3, %39 ], [ 1, %36 ]
  %44 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %45 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 3
  %48 = load i8, ptr %47, align 2
  tail call void @mgmt_device_disconnected(ptr noundef %0, ptr noundef %44, i8 noundef zeroext %46, i8 noundef zeroext %48, i8 noundef zeroext %43, i1 noundef zeroext %32) #15
  %49 = load i8, ptr %45, align 1
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %42
  %52 = load volatile i32, ptr %30, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = tail call i32 @hci_remove_link_key(ptr noundef %0, ptr noundef %44) #15
  br label %57

57:                                               ; preds = %55, %51
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 156
  %61 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %59, ptr noundef %60) #15
  br label %62

62:                                               ; preds = %57, %42
  %63 = load i8, ptr %47, align 2
  %64 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %44, i8 noundef zeroext %63) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %83, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.hci_conn_params, ptr %64, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  switch i32 %68, label %83 [
    i32 4, label %69
    i32 2, label %73
    i32 3, label %73
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.hci_ev_disconn_complete, ptr %1, i32 0, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 8
  br i1 %72, label %73, label %83

73:                                               ; preds = %69, %66, %66
  %74 = getelementptr inbounds %struct.hci_conn_params, ptr %64, i32 0, i32 1
  %75 = getelementptr inbounds %struct.hci_conn_params, ptr %64, i32 0, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  store volatile ptr %74, ptr %74, align 4
  store ptr %74, ptr %75, align 4
  %79 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %74, ptr %81, align 4
  store ptr %80, ptr %74, align 4
  store ptr %79, ptr %75, align 4
  store volatile ptr %74, ptr %79, align 4
  %82 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #15
  br label %83

83:                                               ; preds = %73, %69, %66, %62
  %84 = getelementptr inbounds %struct.hci_ev_disconn_complete, ptr %1, i32 0, i32 2
  %85 = load i8, ptr %84, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %86 = load ptr, ptr @hci_cb_list, align 4
  %87 = icmp eq ptr %86, @hci_cb_list
  br i1 %87, label %97, label %88

88:                                               ; preds = %94, %83
  %89 = phi ptr [ %95, %94 ], [ %86, %83 ]
  %90 = getelementptr inbounds %struct.hci_cb, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void %91(ptr noundef nonnull %10, i8 noundef zeroext %85) #15
  br label %94

94:                                               ; preds = %93, %88
  %95 = load ptr, ptr %89, align 4
  %96 = icmp eq ptr %95, @hci_cb_list
  br i1 %96, label %97, label %88

97:                                               ; preds = %94, %83
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %98 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 73
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void %99(ptr noundef nonnull %10, i8 noundef zeroext %85) #15
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i8, ptr %45, align 1
  %104 = icmp eq i8 %103, -128
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 15
  %107 = load i8, ptr %106, align 8
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 10
  %111 = load i8, ptr %110, align 8
  %112 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 %111, ptr %112, align 8
  %113 = tail call i32 @hci_enable_advertising(ptr noundef %0) #15
  br label %114

114:                                              ; preds = %109, %105, %102
  %115 = tail call i32 @hci_conn_del(ptr noundef nonnull %10) #15
  br label %116

116:                                              ; preds = %114, %22, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_auth_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_set_conn_encrypt, align 2
  %5 = alloca %struct.hci_cp_set_conn_encrypt, align 2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_ev_auth_complete, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %10

10:                                               ; preds = %14, %3
  %11 = phi ptr [ %9, %3 ], [ %12, %14 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, %8
  br i1 %17, label %19, label %10

18:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %200

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %20 = icmp eq ptr %12, null
  br i1 %20, label %200, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 1
  switch i8 %22, label %48 [
    i8 0, label %23
    i8 6, label %45
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.hci_dev, ptr %26, i32 0, i32 206
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 32768
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load volatile i32, ptr %24, align 4
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31, %23
  %36 = load volatile i32, ptr %24, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.7, ptr noundef %40) #15
  br label %50

41:                                               ; preds = %35, %31
  tail call void @_set_bit(i32 noundef 13, ptr noundef %24) #15
  %42 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 25
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 24
  store i8 %43, ptr %44, align 4
  br label %50

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 22, ptr noundef %46) #15
  %47 = load i8, ptr %1, align 1
  br label %48

48:                                               ; preds = %45, %21
  %49 = phi i8 [ %22, %21 ], [ %47, %45 ]
  tail call void @mgmt_auth_failed(ptr noundef nonnull %12, i8 noundef zeroext %49) #15
  br label %50

50:                                               ; preds = %48, %41, %39
  %51 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %51) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %51) #15
  %52 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 12
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 7
  %55 = load i8, ptr %1, align 1
  br i1 %54, label %56, label %126

56:                                               ; preds = %50
  %57 = icmp eq i8 %55, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.hci_dev, ptr %60, i32 0, i32 206
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 32768
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = load volatile i32, ptr %51, align 4
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %70 = load i16, ptr %7, align 1
  store i16 %70, ptr %4, align 2
  %71 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, ptr %4, i32 0, i32 1
  store i8 1, ptr %71, align 2
  %72 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1043, i32 noundef 3, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %187

73:                                               ; preds = %65, %58, %56
  store i16 1, ptr %52, align 4
  %74 = load i8, ptr %1, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %75 = load ptr, ptr @hci_cb_list, align 4
  %76 = icmp eq ptr %75, @hci_cb_list
  br i1 %76, label %86, label %77

77:                                               ; preds = %83, %73
  %78 = phi ptr [ %84, %83 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.hci_cb, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call void %80(ptr noundef %12, i8 noundef zeroext %74) #15
  br label %83

83:                                               ; preds = %82, %77
  %84 = load ptr, ptr %78, align 4
  %85 = icmp eq ptr %84, @hci_cb_list
  br i1 %85, label %86, label %77

86:                                               ; preds = %83, %73
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %87 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 71
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  tail call void %88(ptr noundef %12, i8 noundef zeroext %74) #15
  br label %91

91:                                               ; preds = %90, %86
  %92 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #15, !srcloc !13
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #15, !srcloc !16
  %94 = extractvalue { i32, i32 } %93, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %187

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %98 = load i8, ptr %97, align 1
  switch i8 %98, label %117 [
    i8 1, label %99
    i8 -128, label %99
    i8 -127, label %113
  ]

99:                                               ; preds = %96, %96
  %100 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 60
  %101 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %100) #15
  %102 = load i16, ptr %52, align 4
  %103 = icmp eq i16 %102, 1
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 31
  %106 = load i16, ptr %105, align 2
  %107 = zext i16 %106 to i32
  %108 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 16
  %109 = load i8, ptr %108, align 1, !range !8
  %110 = xor i8 %109, 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %107, %111
  br label %117

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 31
  %115 = load i16, ptr %114, align 2
  %116 = zext i16 %115 to i32
  br label %117

117:                                              ; preds = %113, %104, %99, %96
  %118 = phi i32 [ %116, %113 ], [ %112, %104 ], [ 0, %99 ], [ 0, %96 ]
  %119 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 58
  %120 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %119) #15
  %121 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %124 = load ptr, ptr %123, align 4
  %125 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %124, ptr noundef %119, i32 noundef %118) #15
  br label %187

126:                                              ; preds = %50
  %127 = load volatile i32, ptr %51, align 4
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %126
  %131 = load volatile i32, ptr %51, align 4
  %132 = lshr i32 %131, 12
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %135 = load ptr, ptr @hci_cb_list, align 4
  %136 = icmp eq ptr %135, @hci_cb_list
  br i1 %136, label %146, label %137

137:                                              ; preds = %143, %130
  %138 = phi ptr [ %144, %143 ], [ %135, %130 ]
  %139 = getelementptr inbounds %struct.hci_cb, ptr %138, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  tail call void %140(ptr noundef %12, i8 noundef zeroext %55, i8 noundef zeroext %134) #15
  br label %143

143:                                              ; preds = %142, %137
  %144 = load ptr, ptr %138, align 4
  %145 = icmp eq ptr %144, @hci_cb_list
  br i1 %145, label %146, label %137

146:                                              ; preds = %143, %130
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %147 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 72
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call void %148(ptr noundef %12, i8 noundef zeroext %55) #15
  br label %151

151:                                              ; preds = %150, %146, %126
  %152 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #15, !srcloc !13
  %153 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #15, !srcloc !14
  %154 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 58
  %155 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %154) #15
  %156 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 31
  store i16 200, ptr %156, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %152) #15, !srcloc !13
  %157 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %152, ptr %152, i32 1, ptr elementtype(i32) %152) #15, !srcloc !16
  %158 = extractvalue { i32, i32 } %157, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %187

160:                                              ; preds = %151
  %161 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %162 = load i8, ptr %161, align 1
  switch i8 %162, label %179 [
    i8 1, label %163
    i8 -128, label %163
    i8 -127, label %176
  ]

163:                                              ; preds = %160, %160
  %164 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 60
  %165 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %164) #15
  %166 = load i16, ptr %52, align 4
  %167 = icmp eq i16 %166, 1
  br i1 %167, label %168, label %179

168:                                              ; preds = %163
  %169 = load i16, ptr %156, align 2
  %170 = zext i16 %169 to i32
  %171 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 16
  %172 = load i8, ptr %171, align 1, !range !8
  %173 = xor i8 %172, 1
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %170, %174
  br label %179

176:                                              ; preds = %160
  %177 = load i16, ptr %156, align 2
  %178 = zext i16 %177 to i32
  br label %179

179:                                              ; preds = %176, %168, %163, %160
  %180 = phi i32 [ %178, %176 ], [ %175, %168 ], [ 0, %163 ], [ 0, %160 ]
  %181 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %154) #15
  %182 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.hci_dev, ptr %183, i32 0, i32 138
  %185 = load ptr, ptr %184, align 4
  %186 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %185, ptr noundef %154, i32 noundef %180) #15
  br label %187

187:                                              ; preds = %179, %151, %117, %91, %69
  %188 = load volatile i32, ptr %51, align 4
  %189 = and i32 %188, 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %200, label %191

191:                                              ; preds = %187
  %192 = load i8, ptr %1, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #15
  %195 = load i16, ptr %7, align 1
  store i16 %195, ptr %5, align 2
  %196 = getelementptr inbounds %struct.hci_cp_set_conn_encrypt, ptr %5, i32 0, i32 1
  store i8 1, ptr %196, align 2
  %197 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1043, i32 noundef 3, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #15
  br label %200

198:                                              ; preds = %191
  call void @_clear_bit(i32 noundef 2, ptr noundef %51) #15
  %199 = load i8, ptr %1, align 1
  call fastcc void @hci_encrypt_cfm(ptr noundef nonnull %12, i8 noundef zeroext %199)
  br label %200

200:                                              ; preds = %198, %194, %187, %19, %18
  call void @mutex_unlock(ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_remote_name_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_auth_requested, align 2
  tail call void @hci_conn_check_pending(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.hci_ev_remote_name, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %23, label %10

10:                                               ; preds = %20, %3
  %11 = phi ptr [ %21, %20 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 2
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef dereferenceable(6) %6, i32 6) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %24

20:                                               ; preds = %15, %10
  %21 = load volatile ptr, ptr %11, align 4
  %22 = icmp eq ptr %21, %7
  br i1 %22, label %23, label %10

23:                                               ; preds = %20, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi ptr [ %11, %19 ], [ null, %23 ]
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i8, ptr %1, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_ev_remote_name, ptr %1, i32 0, i32 2
  %35 = tail call i32 @strnlen(ptr noundef %34, i32 noundef 248)
  %36 = trunc i32 %35 to i8
  tail call fastcc void @hci_check_pending_name(ptr noundef %0, ptr noundef %25, ptr noundef %6, ptr noundef %34, i8 noundef zeroext %36)
  br label %38

37:                                               ; preds = %30
  tail call fastcc void @hci_check_pending_name(ptr noundef %0, ptr noundef %25, ptr noundef %6, ptr noundef null, i8 noundef zeroext 0)
  br label %38

38:                                               ; preds = %37, %33, %24
  %39 = icmp eq ptr %25, null
  br i1 %39, label %80, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 12
  %42 = load i16, ptr %41, align 4
  %43 = icmp eq i16 %42, 7
  br i1 %43, label %44, label %80

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 16
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %80, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 25
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %80, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 65
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hci_dev, ptr %54, i32 0, i32 206
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 32768
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 47
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %52
  %65 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 23
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 1
  %68 = icmp ne i8 %67, 0
  %69 = add i8 %50, -2
  %70 = icmp ult i8 %69, 3
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64, %59
  %73 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 47
  %74 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %73) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  tail call void @_set_bit(i32 noundef 17, ptr noundef %73) #15
  %77 = getelementptr inbounds %struct.hci_conn, ptr %25, i32 0, i32 11
  %78 = load i16, ptr %77, align 2
  store i16 %78, ptr %4, align 2
  %79 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1041, i32 noundef 2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %80

80:                                               ; preds = %76, %72, %64, %48, %44, %40, %38
  call void @mutex_unlock(ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_encrypt_change_evt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_read_enc_key_size, align 2
  %5 = alloca %struct.hci_request, align 4
  %6 = alloca %struct.hci_cp_write_auth_payload_to, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_ev_encrypt_change, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ %10, %3 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %166

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %22 = icmp eq ptr %13, null
  br i1 %22, label %166, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %1, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_ev_encrypt_change, ptr %1, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  br i1 %29, label %46, label %31

31:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 13, ptr noundef %30) #15
  tail call void @_set_bit(i32 noundef 12, ptr noundef %30) #15
  %32 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 25
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 24
  store i8 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 22
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 8
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @_set_bit(i32 noundef 15, ptr noundef %30) #15
  br label %39

39:                                               ; preds = %38, %31
  %40 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  switch i8 %41, label %47 [
    i8 1, label %42
    i8 -128, label %45
  ]

42:                                               ; preds = %39
  %43 = load i8, ptr %27, align 1
  %44 = icmp eq i8 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %39
  tail call void @_set_bit(i32 noundef 9, ptr noundef %30) #15
  br label %47

46:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %30) #15
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %30) #15
  br label %47

47:                                               ; preds = %46, %45, %42, %39
  %48 = load i8, ptr %1, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47, %23
  %51 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, -128
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 20, ptr noundef %55) #15
  tail call void @hci_adv_instances_set_rpa_expired(ptr noundef %0, i1 noundef zeroext true) #15
  br label %56

56:                                               ; preds = %54, %50, %47
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %57) #15
  %58 = tail call i32 @hci_conn_check_link_mode(ptr noundef nonnull %13) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load i8, ptr %1, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %113, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %65 = load i16, ptr %64, align 4
  %66 = icmp eq i16 %65, 1
  br i1 %66, label %71, label %135

67:                                               ; preds = %56
  store i8 5, ptr %1, align 1
  %68 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %69 = load i16, ptr %68, align 4
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %75, label %135

71:                                               ; preds = %63
  %72 = icmp eq i8 %61, 6
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  tail call void @_set_bit(i32 noundef 22, ptr noundef %57) #15
  %74 = load i8, ptr %1, align 1
  br label %75

75:                                               ; preds = %73, %71, %67
  %76 = phi i8 [ %74, %73 ], [ %61, %71 ], [ 5, %67 ]
  %77 = phi ptr [ %64, %73 ], [ %64, %71 ], [ %68, %67 ]
  tail call fastcc void @hci_encrypt_cfm(ptr noundef nonnull %13, i8 noundef zeroext %76)
  %78 = tail call i32 @hci_disconnect(ptr noundef nonnull %13, i8 noundef zeroext 5) #15
  %79 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #15, !srcloc !13
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #15, !srcloc !16
  %81 = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %166

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %85 = load i8, ptr %84, align 1
  switch i8 %85, label %104 [
    i8 1, label %86
    i8 -128, label %86
    i8 -127, label %100
  ]

86:                                               ; preds = %83, %83
  %87 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %88 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %87) #15
  %89 = load i16, ptr %77, align 4
  %90 = icmp eq i16 %89, 1
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %96 = load i8, ptr %95, align 1, !range !8
  %97 = xor i8 %96, 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %94, %98
  br label %104

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  br label %104

104:                                              ; preds = %100, %91, %86, %83
  %105 = phi i32 [ %103, %100 ], [ %99, %91 ], [ 0, %86 ], [ 0, %83 ]
  %106 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %107 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %106) #15
  %108 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.hci_dev, ptr %109, i32 0, i32 138
  %111 = load ptr, ptr %110, align 4
  %112 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %111, ptr noundef %106, i32 noundef %105) #15
  br label %166

113:                                              ; preds = %60
  %114 = getelementptr inbounds %struct.hci_ev_encrypt_change, ptr %1, i32 0, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %119 = load i8, ptr %118, align 1
  %120 = icmp eq i8 %119, 1
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %122 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 20
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 16
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  call void @hci_req_init(ptr noundef nonnull %5, ptr noundef %0) #15
  %127 = load i16, ptr %21, align 2
  store i16 %127, ptr %4, align 2
  call void @hci_req_add(ptr noundef nonnull %5, i16 noundef zeroext 5128, i32 noundef 2, ptr noundef nonnull %4) #15
  %128 = call i32 @hci_req_run_skb(ptr noundef nonnull %5, ptr noundef nonnull @read_enc_key_size_complete) #15
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %131) #15
  br label %132

132:                                              ; preds = %130, %121
  %133 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 27
  store i8 16, ptr %133, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %164

134:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %166

135:                                              ; preds = %117, %113, %67, %63
  %136 = load volatile i32, ptr %57, align 4
  %137 = and i32 %136, 4096
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %164, label %139

139:                                              ; preds = %135
  %140 = load volatile i32, ptr %57, align 4
  %141 = and i32 %140, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %164, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %145 = load i8, ptr %144, align 1
  switch i8 %145, label %164 [
    i8 1, label %146
    i8 -128, label %151
  ]

146:                                              ; preds = %143
  %147 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %148 = load i8, ptr %147, align 1
  %149 = and i8 %148, 2
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %164, label %156

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %153 = load i8, ptr %152, align 2
  %154 = and i8 %153, 16
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %151, %146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  %157 = load i16, ptr %21, align 2
  store i16 %157, ptr %6, align 4
  %158 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 72
  %159 = load i16, ptr %158, align 2
  %160 = getelementptr inbounds %struct.hci_cp_write_auth_payload_to, ptr %6, i32 0, i32 1
  store i16 %159, ptr %160, align 2
  %161 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %162 = load ptr, ptr %161, align 4
  %163 = call i32 @hci_send_cmd(ptr noundef %162, i16 noundef zeroext 3196, i32 noundef 4, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %164

164:                                              ; preds = %156, %151, %146, %143, %139, %135, %132
  %165 = load i8, ptr %1, align 1
  call fastcc void @hci_encrypt_cfm(ptr noundef nonnull %13, i8 noundef zeroext %165)
  br label %166

166:                                              ; preds = %164, %134, %104, %75, %20, %19
  call void @mutex_unlock(ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_change_link_key_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_change_link_key_complete, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %39

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 14, ptr noundef %23) #15
  br label %24

24:                                               ; preds = %22, %19
  %25 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %25) #15
  %26 = load i8, ptr %1, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %24
  %30 = phi ptr [ %36, %35 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %10, i8 noundef zeroext %26) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %24
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  br label %39

39:                                               ; preds = %38, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_remote_features_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_read_remote_ext_features, align 2
  %5 = alloca %struct.hci_cp_remote_name_req, align 1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_ev_remote_features, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %10

10:                                               ; preds = %14, %3
  %11 = phi ptr [ %9, %3 ], [ %12, %14 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, %8
  br i1 %17, label %19, label %10

18:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %146

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %20 = icmp eq ptr %12, null
  br i1 %20, label %146, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 19
  %26 = getelementptr inbounds %struct.hci_ev_remote_features, ptr %1, i32 0, i32 2
  %27 = load i64, ptr %26, align 1
  store i64 %27, ptr %25, align 2
  br label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 7
  br i1 %31, label %32, label %146

32:                                               ; preds = %28
  %33 = load i8, ptr %1, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 7
  %37 = load i8, ptr %36, align 1
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.hci_conn, ptr %12, i32 0, i32 19, i32 0, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = icmp sgt i8 %41, -1
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  %44 = load i16, ptr %7, align 1
  store i16 %44, ptr %4, align 2
  %45 = getelementptr inbounds %struct.hci_cp_read_remote_ext_features, ptr %4, i32 0, i32 1
  store i8 1, ptr %45, align 2
  %46 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1052, i32 noundef 3, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %146

47:                                               ; preds = %39, %35
  %48 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #15
  %53 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 2
  %54 = getelementptr inbounds i8, ptr %5, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %54, i8 0, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %53, i32 6, i1 false) #15
  %55 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %5, i32 0, i32 1
  store i8 2, ptr %55, align 1
  %56 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1049, i32 noundef 10, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #15
  br label %62

57:                                               ; preds = %47, %32
  %58 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  %59 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %58) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @mgmt_device_connected(ptr noundef %0, ptr noundef nonnull %12, ptr noundef null, i8 noundef zeroext 0) #15
  br label %62

62:                                               ; preds = %61, %57, %52
  %63 = load i16, ptr %29, align 4
  %64 = icmp eq i16 %63, 7
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 16
  %67 = load i8, ptr %66, align 1, !range !8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 25
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.hci_dev, ptr %75, i32 0, i32 206
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %146

85:                                               ; preds = %80, %73
  %86 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 23
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 1
  %89 = icmp ne i8 %88, 0
  %90 = add i8 %71, -2
  %91 = icmp ult i8 %90, 3
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %146, label %93

93:                                               ; preds = %85, %69, %65, %62
  store i16 1, ptr %29, align 4
  %94 = load i8, ptr %1, align 1
  call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %95 = load ptr, ptr @hci_cb_list, align 4
  %96 = icmp eq ptr %95, @hci_cb_list
  br i1 %96, label %106, label %97

97:                                               ; preds = %103, %93
  %98 = phi ptr [ %104, %103 ], [ %95, %93 ]
  %99 = getelementptr inbounds %struct.hci_cb, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  call void %100(ptr noundef nonnull %12, i8 noundef zeroext %94) #15
  br label %103

103:                                              ; preds = %102, %97
  %104 = load ptr, ptr %98, align 4
  %105 = icmp eq ptr %104, @hci_cb_list
  br i1 %105, label %106, label %97

106:                                              ; preds = %103, %93
  call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %107 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 71
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void %108(ptr noundef %12, i8 noundef zeroext %94) #15
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %112) #15, !srcloc !13
  %113 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %112, ptr %112, i32 1, ptr elementtype(i32) %112) #15, !srcloc !16
  %114 = extractvalue { i32, i32 } %113, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %118 = load i8, ptr %117, align 1
  switch i8 %118, label %137 [
    i8 1, label %119
    i8 -128, label %119
    i8 -127, label %133
  ]

119:                                              ; preds = %116, %116
  %120 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 60
  %121 = call zeroext i1 @cancel_delayed_work(ptr noundef %120) #15
  %122 = load i16, ptr %29, align 4
  %123 = icmp eq i16 %122, 1
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 31
  %126 = load i16, ptr %125, align 2
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 16
  %129 = load i8, ptr %128, align 1, !range !8
  %130 = xor i8 %129, 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 %127, %131
  br label %137

133:                                              ; preds = %116
  %134 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 31
  %135 = load i16, ptr %134, align 2
  %136 = zext i16 %135 to i32
  br label %137

137:                                              ; preds = %133, %124, %119, %116
  %138 = phi i32 [ %136, %133 ], [ %132, %124 ], [ 0, %119 ], [ 0, %116 ]
  %139 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 58
  %140 = call zeroext i1 @cancel_delayed_work(ptr noundef %139) #15
  %141 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 65
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.hci_dev, ptr %142, i32 0, i32 138
  %144 = load ptr, ptr %143, align 4
  %145 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %144, ptr noundef %139, i32 noundef %138) #15
  br label %146

146:                                              ; preds = %137, %111, %85, %80, %43, %28, %19, %18
  call void @mutex_unlock(ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.hci_ev_cmd_complete, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  store i16 %9, ptr %3, align 2
  br label %10

10:                                               ; preds = %45, %7
  %11 = phi i32 [ 0, %7 ], [ %46, %45 ]
  %12 = getelementptr [89 x %struct.hci_cc], ptr @hci_cc_table, i32 0, i32 %11
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, %9
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr [89 x %struct.hci_cc], ptr @hci_cc_table, i32 0, i32 %11, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %24 = zext i16 %9 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %23, i32 noundef %24, i32 noundef %17, i32 noundef %20) #15
  br label %43

25:                                               ; preds = %15
  %26 = getelementptr [89 x %struct.hci_cc], ptr @hci_cc_table, i32 0, i32 %11, i32 3
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ugt i32 %17, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %32 = zext i16 %9 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.16, ptr noundef %31, i32 noundef %32, i32 noundef %17, i32 noundef %28) #15
  br label %33

33:                                               ; preds = %30, %25
  %34 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %20) #15
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %38 = zext i16 %9 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %37, i32 noundef %38) #15
  br label %43

39:                                               ; preds = %33
  %40 = getelementptr [89 x %struct.hci_cc], ptr @hci_cc_table, i32 0, i32 %11, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call zeroext i8 %41(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %2) #15
  br label %43

43:                                               ; preds = %39, %36, %22
  %44 = phi i8 [ 31, %22 ], [ %42, %39 ], [ 31, %36 ]
  store i8 %44, ptr %4, align 1
  br label %48

45:                                               ; preds = %10
  %46 = add nuw nsw i32 %11, 1
  %47 = icmp eq i32 %46, 89
  br i1 %47, label %48, label %10

48:                                               ; preds = %45, %43
  %49 = load i8, ptr %1, align 1
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 150
  %51 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %50) #15
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = icmp eq i8 %49, 0
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 151
  br i1 %57, label %62, label %59

59:                                               ; preds = %56
  %60 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %58) #15
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  store volatile i32 1, ptr %61, align 4
  br label %65

62:                                               ; preds = %56
  %63 = load ptr, ptr @system_wq, align 4
  %64 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %63, ptr noundef %58, i32 noundef 400) #15
  br label %65

65:                                               ; preds = %62, %59, %48
  %66 = load i16, ptr %3, align 2
  %67 = load i8, ptr %4, align 1
  tail call void @hci_req_cmd_complete(ptr noundef %0, i16 noundef zeroext %66, i8 noundef zeroext %67, ptr noundef %5, ptr noundef %6) #15
  %68 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 1024
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %74 = load i16, ptr %3, align 2
  %75 = zext i16 %74 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %73, i32 noundef %75) #15
  br label %89

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  %78 = load volatile i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %88 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %86, ptr noundef %87) #15
  br label %89

89:                                               ; preds = %84, %80, %76, %72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_status_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.hci_ev_cmd_status, ptr %1, i32 0, i32 2
  %9 = load i16, ptr %8, align 1
  store i16 %9, ptr %3, align 2
  %10 = load i8, ptr %1, align 1
  store i8 %10, ptr %4, align 1
  %11 = load i16, ptr %3, align 2
  switch i16 %11, label %34 [
    i16 1025, label %29
    i16 1029, label %12
    i16 1030, label %13
    i16 1031, label %14
    i16 1041, label %15
    i16 1043, label %16
    i16 1049, label %17
    i16 1051, label %18
    i16 1052, label %19
    i16 1064, label %20
    i16 1085, label %21
    i16 2051, label %22
    i16 2052, label %23
    i16 2059, label %24
    i16 8205, label %25
    i16 8214, label %26
    i16 8217, label %27
    i16 8259, label %28
  ]

12:                                               ; preds = %7
  br label %29

13:                                               ; preds = %7
  br label %29

14:                                               ; preds = %7
  br label %29

15:                                               ; preds = %7
  br label %29

16:                                               ; preds = %7
  br label %29

17:                                               ; preds = %7
  br label %29

18:                                               ; preds = %7
  br label %29

19:                                               ; preds = %7
  br label %29

20:                                               ; preds = %7
  br label %29

21:                                               ; preds = %7
  br label %29

22:                                               ; preds = %7
  br label %29

23:                                               ; preds = %7
  br label %29

24:                                               ; preds = %7
  br label %29

25:                                               ; preds = %7
  br label %29

26:                                               ; preds = %7
  br label %29

27:                                               ; preds = %7
  br label %29

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %7
  %30 = phi i32 [ 0, %7 ], [ 1, %12 ], [ 2, %13 ], [ 3, %14 ], [ 4, %15 ], [ 5, %16 ], [ 6, %17 ], [ 7, %18 ], [ 8, %19 ], [ 9, %20 ], [ 10, %21 ], [ 11, %22 ], [ 12, %23 ], [ 13, %24 ], [ 14, %25 ], [ 15, %26 ], [ 16, %27 ], [ 17, %28 ]
  %31 = getelementptr [18 x %struct.hci_cs], ptr @hci_cs_table, i32 0, i32 %30, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %1, align 1
  tail call void %32(ptr noundef %0, i8 noundef zeroext %33) #15
  br label %34

34:                                               ; preds = %29, %7
  %35 = getelementptr inbounds %struct.hci_ev_cmd_status, ptr %1, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 150
  %38 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %37) #15
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = icmp eq i8 %36, 0
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 151
  br i1 %44, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %45) #15
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  store volatile i32 1, ptr %48, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load ptr, ptr @system_wq, align 4
  %51 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %45, i32 noundef 400) #15
  br label %52

52:                                               ; preds = %49, %46, %34
  %53 = load i8, ptr %1, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 3, i32 15
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %52
  %64 = load i16, ptr %3, align 2
  tail call void @hci_req_cmd_complete(ptr noundef %0, i16 noundef zeroext %64, i8 noundef zeroext %53, ptr noundef %5, ptr noundef %6) #15
  %65 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %71 = load i16, ptr %3, align 2
  %72 = zext i16 %71 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %70, i32 noundef %72) #15
  br label %86

73:                                               ; preds = %63, %59, %55
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  %75 = load volatile i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %85 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %83, ptr noundef %84) #15
  br label %86

86:                                               ; preds = %81, %77, %73, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_hardware_error_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 77
  store i8 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 142
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_role_change_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_role_change, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %21, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef dereferenceable(6) %5, i32 6) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %9
  %19 = load volatile ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %48

22:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %23 = icmp eq ptr %10, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %22
  %25 = load i8, ptr %1, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_ev_role_change, ptr %1, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 15
  store i8 %29, ptr %30, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %32) #15
  %33 = load i8, ptr %1, align 1
  %34 = getelementptr inbounds %struct.hci_ev_role_change, ptr %1, i32 0, i32 2
  %35 = load i8, ptr %34, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %36 = load ptr, ptr @hci_cb_list, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %47, label %38

38:                                               ; preds = %44, %31
  %39 = phi ptr [ %45, %44 ], [ %36, %31 ]
  %40 = getelementptr inbounds %struct.hci_cb, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void %41(ptr noundef nonnull %10, i8 noundef zeroext %33, i8 noundef zeroext %35) #15
  br label %44

44:                                               ; preds = %43, %38
  %45 = load ptr, ptr %39, align 4
  %46 = icmp eq ptr %45, @hci_cb_list
  br i1 %46, label %47, label %38

47:                                               ; preds = %44, %31
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  br label %48

48:                                               ; preds = %47, %22, %21
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_num_comp_pkts_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 2
  %7 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %10, i32 noundef 19) #15
  br label %88

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 116
  %13 = load i8, ptr %12, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i8, ptr %1, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %83, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 121
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 127
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 128
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 122
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 126
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %30

27:                                               ; preds = %11
  %28 = zext i8 %13 to i32
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %29, i32 noundef %28) #15
  br label %88

30:                                               ; preds = %78, %18
  %31 = phi i32 [ 0, %18 ], [ %79, %78 ]
  %32 = getelementptr %struct.hci_ev_num_comp_pkts, ptr %1, i32 0, i32 1, i32 %31
  %33 = load i16, ptr %32, align 1
  %34 = getelementptr %struct.hci_ev_num_comp_pkts, ptr %1, i32 0, i32 1, i32 %31, i32 1
  %35 = load i16, ptr %34, align 1
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %36

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %19, %30 ], [ %38, %40 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %19
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 11
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, %33
  br i1 %43, label %45, label %36

44:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

45:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %46 = icmp eq ptr %38, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %45
  %48 = zext i16 %35 to i32
  %49 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 55
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 14
  %53 = load i8, ptr %52, align 1
  switch i8 %53, label %76 [
    i8 1, label %54
    i8 -128, label %59
    i8 0, label %71
  ]

54:                                               ; preds = %47
  %55 = load i32, ptr %24, align 8
  %56 = add i32 %55, %48
  %57 = load i32, ptr %25, align 8
  %58 = tail call i32 @llvm.umin.i32(i32 %56, i32 %57)
  store i32 %58, ptr %24, align 8
  br label %78

59:                                               ; preds = %47
  %60 = load i32, ptr %22, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %23, align 8
  %64 = add i32 %63, %48
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %60)
  store i32 %65, ptr %23, align 8
  br label %78

66:                                               ; preds = %59
  %67 = load i32, ptr %24, align 8
  %68 = add i32 %67, %48
  %69 = load i32, ptr %25, align 8
  %70 = tail call i32 @llvm.umin.i32(i32 %68, i32 %69)
  store i32 %70, ptr %24, align 8
  br label %78

71:                                               ; preds = %47
  %72 = load i32, ptr %20, align 4
  %73 = add i32 %72, %48
  %74 = load i32, ptr %21, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %73, i32 %74)
  store i32 %75, ptr %20, align 4
  br label %78

76:                                               ; preds = %47
  %77 = zext i8 %53 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %26, i32 noundef %77, ptr noundef nonnull %38) #15
  br label %78

78:                                               ; preds = %76, %71, %66, %62, %54, %45, %44
  %79 = add nuw nsw i32 %31, 1
  %80 = load i8, ptr %1, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %30, label %83

83:                                               ; preds = %78, %15
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 154
  %87 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %85, ptr noundef %86) #15
  br label %88

88:                                               ; preds = %83, %27, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_mode_change_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_mode_change, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %36

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.hci_ev_mode_change, ptr %1, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 13
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  %24 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i8, ptr %22, align 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 10, ptr noundef %23) #15
  br label %31

30:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %23) #15
  br label %31

31:                                               ; preds = %30, %29, %19
  %32 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %23) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %1, align 1
  tail call void @hci_sco_setup(ptr noundef nonnull %10, i8 noundef zeroext %35) #15
  br label %36

36:                                               ; preds = %34, %31, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_pin_code_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %17, %3
  %9 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %1, i32 6) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %8
  %18 = load volatile ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %84

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %23 = icmp eq ptr %9, null
  br i1 %23, label %84, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 12
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #15, !srcloc !14
  %31 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 58
  %32 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %31) #15
  %33 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 31
  store i16 6000, ptr %33, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #15, !srcloc !13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #15, !srcloc !16
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = load i8, ptr %22, align 1
  switch i8 %38, label %55 [
    i8 1, label %39
    i8 -128, label %39
    i8 -127, label %52
  ]

39:                                               ; preds = %37, %37
  %40 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 60
  %41 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %40) #15
  %42 = load i16, ptr %25, align 4
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i16, ptr %33, align 2
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 16
  %48 = load i8, ptr %47, align 1, !range !8
  %49 = xor i8 %48, 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %46, %50
  br label %55

52:                                               ; preds = %37
  %53 = load i16, ptr %33, align 2
  %54 = zext i16 %53 to i32
  br label %55

55:                                               ; preds = %52, %44, %39, %37
  %56 = phi i32 [ %54, %52 ], [ %51, %44 ], [ 0, %39 ], [ 0, %37 ]
  %57 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %31) #15
  %58 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 65
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 138
  %61 = load ptr, ptr %60, align 4
  %62 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %61, ptr noundef %31, i32 noundef %56) #15
  br label %63

63:                                               ; preds = %55, %28, %24
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 47
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 131072
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = tail call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1038, i32 noundef 6, ptr noundef %1) #15
  br label %84

75:                                               ; preds = %68, %63
  %76 = load volatile i32, ptr %64, align 4
  %77 = and i32 %76, 16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 25
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 3
  %83 = zext i1 %82 to i8
  tail call void @mgmt_pin_code_request(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %83) #15
  br label %84

84:                                               ; preds = %79, %75, %73, %21, %20
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_link_key_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_link_key_reply, align 1
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(22) %4, i8 0, i32 22, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = tail call ptr @hci_find_link_key(ptr noundef %0, ptr noundef %1) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %29, label %17

17:                                               ; preds = %26, %13
  %18 = phi ptr [ %27, %26 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 14
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 2
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %23, ptr noundef dereferenceable(6) %1, i32 6) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %17
  %27 = load volatile ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %29, label %17

29:                                               ; preds = %26, %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %74

30:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %31 = icmp eq ptr %18, null
  br i1 %31, label %74, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %33) #15
  %34 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 3
  %35 = load i8, ptr %34, align 2
  switch i8 %35, label %57 [
    i8 4, label %36
    i8 7, label %36
    i8 0, label %43
    i8 6, label %74
  ]

36:                                               ; preds = %32, %32
  %37 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 23
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -1
  %40 = and i8 %38, 1
  %41 = icmp eq i8 %40, 0
  %42 = or i1 %39, %41
  br i1 %42, label %55, label %78

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = icmp ult i8 %45, 16
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 25
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, -3
  %51 = icmp ult i8 %50, 2
  br i1 %51, label %78, label %52

52:                                               ; preds = %47, %43
  %53 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 26
  store i8 %45, ptr %53, align 2
  %54 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 22
  store i8 0, ptr %54, align 2
  br label %62

55:                                               ; preds = %36
  %56 = icmp eq i8 %35, 6
  br i1 %56, label %74, label %57

57:                                               ; preds = %55, %32
  %58 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 5
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 26
  store i8 %59, ptr %60, align 2
  %61 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 22
  store i8 %35, ptr %61, align 2
  switch i8 %35, label %74 [
    i8 8, label %72
    i8 5, label %70
    i8 7, label %68
    i8 0, label %62
    i8 4, label %68
  ]

62:                                               ; preds = %57, %52
  %63 = phi i8 [ %45, %52 ], [ %59, %57 ]
  %64 = icmp eq i8 %63, 16
  %65 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 25
  br i1 %64, label %66, label %67

66:                                               ; preds = %62
  store i8 3, ptr %65, align 1
  br label %74

67:                                               ; preds = %62
  store i8 2, ptr %65, align 1
  br label %74

68:                                               ; preds = %57, %57
  %69 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 25
  store i8 2, ptr %69, align 1
  br label %74

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 25
  store i8 3, ptr %71, align 1
  br label %74

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 25
  store i8 4, ptr %73, align 1
  br label %74

74:                                               ; preds = %72, %70, %68, %67, %66, %57, %55, %32, %30, %29
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %75 = getelementptr inbounds %struct.hci_cp_link_key_reply, ptr %4, i32 0, i32 1
  %76 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %75, ptr noundef align 1 dereferenceable(16) %76, i32 16, i1 false)
  %77 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1035, i32 noundef 22, ptr noundef nonnull %4) #15
  call void @mutex_unlock(ptr noundef %10) #15
  br label %80

78:                                               ; preds = %47, %36, %9
  %79 = tail call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1036, i32 noundef 6, ptr noundef %1) #15
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %80

80:                                               ; preds = %78, %74, %3
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_link_key_notify_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !10
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %21, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef dereferenceable(6) %1, i32 6) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %9
  %19 = load volatile ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %134

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %10, null
  br i1 %24, label %134, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !13
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #15, !srcloc !14
  %28 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #15
  %30 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  store i16 200, ptr %30, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !13
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #15, !srcloc !16
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %25
  %35 = load i8, ptr %23, align 1
  switch i8 %35, label %53 [
    i8 1, label %36
    i8 -128, label %36
    i8 -127, label %50
  ]

36:                                               ; preds = %34, %34
  %37 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %38 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %37) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 12
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i16, ptr %30, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %46 = load i8, ptr %45, align 1, !range !8
  %47 = xor i8 %46, 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %44, %48
  br label %53

50:                                               ; preds = %34
  %51 = load i16, ptr %30, align 2
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %50, %42, %36, %34
  %54 = phi i32 [ %52, %50 ], [ %49, %42 ], [ 0, %36 ], [ 0, %34 ]
  %55 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #15
  %56 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.hci_dev, ptr %57, i32 0, i32 138
  %59 = load ptr, ptr %58, align 4
  %60 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %59, ptr noundef %28, i32 noundef %54) #15
  br label %61

61:                                               ; preds = %53, %25
  %62 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 20, ptr noundef %62) #15
  %63 = getelementptr inbounds %struct.hci_ev_link_key_notify, ptr %1, i32 0, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 26
  %66 = load i8, ptr %65, align 2
  %67 = icmp eq i8 %64, 6
  br i1 %67, label %81, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 22
  store i8 %64, ptr %69, align 2
  switch i8 %64, label %81 [
    i8 8, label %79
    i8 5, label %77
    i8 7, label %75
    i8 0, label %70
    i8 4, label %75
  ]

70:                                               ; preds = %68
  %71 = icmp eq i8 %66, 16
  %72 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  br i1 %71, label %73, label %74

73:                                               ; preds = %70
  store i8 3, ptr %72, align 1
  br label %81

74:                                               ; preds = %70
  store i8 2, ptr %72, align 1
  br label %81

75:                                               ; preds = %68, %68
  %76 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 2, ptr %76, align 1
  br label %81

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 3, ptr %78, align 1
  br label %81

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 4, ptr %80, align 1
  br label %81

81:                                               ; preds = %79, %77, %75, %74, %73, %68, %61
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %134, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.hci_ev_link_key_notify, ptr %1, i32 0, i32 1
  %88 = load i8, ptr %63, align 1
  %89 = call ptr @hci_add_link_key(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %87, i8 noundef zeroext %88, i8 noundef zeroext 0, ptr noundef nonnull %4) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %134, label %91

91:                                               ; preds = %86
  %92 = load i8, ptr %63, align 1
  %93 = icmp eq i8 %92, 6
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.link_key, ptr %89, i32 0, i32 3
  %96 = load i8, ptr %95, align 2
  %97 = getelementptr inbounds %struct.link_key, ptr %89, i32 0, i32 5
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %96, 6
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  store i8 %98, ptr %65, align 2
  %101 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 22
  store i8 %96, ptr %101, align 2
  switch i8 %96, label %113 [
    i8 8, label %111
    i8 5, label %109
    i8 7, label %107
    i8 0, label %102
    i8 4, label %107
  ]

102:                                              ; preds = %100
  %103 = icmp eq i8 %98, 16
  %104 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  br i1 %103, label %105, label %106

105:                                              ; preds = %102
  store i8 3, ptr %104, align 1
  br label %113

106:                                              ; preds = %102
  store i8 2, ptr %104, align 1
  br label %113

107:                                              ; preds = %100, %100
  %108 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 2, ptr %108, align 1
  br label %113

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 3, ptr %110, align 1
  br label %113

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  store i8 4, ptr %112, align 1
  br label %113

113:                                              ; preds = %111, %109, %107, %106, %105, %100, %94, %91
  %114 = load i8, ptr %4, align 1, !range !8
  %115 = icmp ne i8 %114, 0
  call void @mgmt_new_link_key(ptr noundef %0, ptr noundef nonnull %89, i1 noundef zeroext %115) #15
  %116 = getelementptr inbounds %struct.link_key, ptr %89, i32 0, i32 3
  %117 = load i8, ptr %116, align 2
  %118 = icmp eq i8 %117, 3
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load volatile i32, ptr %82, align 4
  %121 = and i32 %120, 128
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %89, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store volatile ptr %126, ptr %125, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %124, align 4
  %128 = getelementptr inbounds %struct.link_key, ptr %89, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %128, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  br label %134

129:                                              ; preds = %119, %113
  %130 = load i8, ptr %4, align 1, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void @_clear_bit(i32 noundef 11, ptr noundef %62) #15
  br label %134

133:                                              ; preds = %129
  call void @_set_bit(i32 noundef 11, ptr noundef %62) #15
  br label %134

134:                                              ; preds = %133, %132, %123, %86, %81, %22, %21
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_clock_offset_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_clock_offset, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %32

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %24 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %0, ptr noundef %23) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_ev_clock_offset, ptr %1, i32 0, i32 2
  %28 = load i16, ptr %27, align 1
  %29 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 4, i32 5
  store i16 %28, ptr %29, align 4
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = getelementptr inbounds %struct.inquiry_entry, ptr %24, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %22, %19, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_pkt_type_change_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_pkt_type_change, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_ev_pkt_type_change, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 20
  store i16 %24, ptr %25, align 2
  br label %26

26:                                               ; preds = %22, %19, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_pscan_rep_mode_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %0, ptr noundef %1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hci_ev_pscan_rep_mode, ptr %1, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.inquiry_entry, ptr %5, i32 0, i32 4, i32 1
  store i8 %9, ptr %10, align 2
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = getelementptr inbounds %struct.inquiry_entry, ptr %5, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %7, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_inquiry_result_with_rssi_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.inquiry_data, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %5 = load i8, ptr %1, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %92, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = load i8, ptr %1, align 1
  %17 = zext i8 %16 to i32
  %18 = mul nuw nsw i32 %17, 15
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %12
  %21 = icmp eq i8 %16, 0
  br i1 %21, label %91, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 3
  %26 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 4
  %27 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 5
  %28 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 6
  %29 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 7
  br label %30

30:                                               ; preds = %36, %22
  %31 = phi i32 [ 0, %22 ], [ %50, %36 ]
  %32 = call ptr @skb_pull_data(ptr noundef %2, i32 noundef 15) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %35, i32 noundef 34) #15
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %35, i32 noundef 34) #15
  br label %92

36:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) %32, i32 6, i1 false) #15
  %37 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %23, align 2
  %39 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  store i8 %40, ptr %24, align 1
  %41 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  store i8 %42, ptr %25, align 2
  %43 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %26, ptr noundef align 1 dereferenceable(3) %43, i32 3, i1 false)
  %44 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 5
  %45 = load i16, ptr %44, align 1
  store i16 %45, ptr %27, align 2
  %46 = getelementptr inbounds %struct.inquiry_info_rssi_pscan, ptr %32, i32 0, i32 6
  %47 = load i8, ptr %46, align 1
  store i8 %47, ptr %28, align 2
  store i8 0, ptr %29, align 1
  %48 = call i32 @hci_inquiry_cache_update(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  %49 = load i8, ptr %46, align 1
  call void @mgmt_device_found(ptr noundef %0, ptr noundef nonnull %32, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %43, i8 noundef signext %49, i32 noundef %48, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0) #15
  %50 = add nuw nsw i32 %31, 1
  %51 = load i8, ptr %1, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %30, label %91

54:                                               ; preds = %12
  %55 = mul nuw nsw i32 %17, 14
  %56 = icmp eq i32 %15, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = icmp eq i8 %16, 0
  br i1 %58, label %91, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 1
  %61 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 2
  %62 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 3
  %63 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 4
  %64 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 5
  %65 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 6
  %66 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 7
  br label %67

67:                                               ; preds = %73, %59
  %68 = phi i32 [ 0, %59 ], [ %85, %73 ]
  %69 = call ptr @skb_pull_data(ptr noundef %2, i32 noundef 14) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %72, i32 noundef 34) #15
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %72, i32 noundef 34) #15
  br label %92

73:                                               ; preds = %67
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 1 dereferenceable(6) %69, i32 6, i1 false) #15
  %74 = getelementptr inbounds %struct.inquiry_info_rssi, ptr %69, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  store i8 %75, ptr %60, align 2
  %76 = getelementptr inbounds %struct.inquiry_info_rssi, ptr %69, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  store i8 %77, ptr %61, align 1
  store i8 0, ptr %62, align 2
  %78 = getelementptr inbounds %struct.inquiry_info_rssi, ptr %69, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %63, ptr noundef align 1 dereferenceable(3) %78, i32 3, i1 false)
  %79 = getelementptr inbounds %struct.inquiry_info_rssi, ptr %69, i32 0, i32 4
  %80 = load i16, ptr %79, align 1
  store i16 %80, ptr %64, align 2
  %81 = getelementptr inbounds %struct.inquiry_info_rssi, ptr %69, i32 0, i32 5
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %65, align 2
  store i8 0, ptr %66, align 1
  %83 = call i32 @hci_inquiry_cache_update(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false) #15
  %84 = load i8, ptr %81, align 1
  call void @mgmt_device_found(ptr noundef %0, ptr noundef nonnull %69, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %78, i8 noundef signext %84, i32 noundef %83, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0) #15
  %85 = add nuw nsw i32 %68, 1
  %86 = load i8, ptr %1, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %67, label %91

89:                                               ; preds = %54
  %90 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %90, i32 noundef 34) #15
  br label %91

91:                                               ; preds = %89, %73, %57, %36, %20
  call void @mutex_unlock(ptr noundef %13) #15
  br label %92

92:                                               ; preds = %91, %71, %34, %7, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_remote_ext_features_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_remote_name_req, align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.hci_ev_remote_ext_features, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %9

9:                                                ; preds = %13, %3
  %10 = phi ptr [ %8, %3 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 11
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, %7
  br i1 %16, label %18, label %9

17:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %164

18:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %19 = icmp eq ptr %11, null
  br i1 %19, label %164, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hci_ev_remote_ext_features, ptr %1, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp ult i8 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = zext i8 %22 to i32
  %26 = getelementptr %struct.hci_conn, ptr %11, i32 0, i32 19, i32 %25
  %27 = getelementptr inbounds %struct.hci_ev_remote_ext_features, ptr %1, i32 0, i32 4
  %28 = load i64, ptr %27, align 1
  store i64 %28, ptr %26, align 2
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i8, ptr %1, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i8, ptr %21, align 1
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %58

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 2
  %37 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %0, ptr noundef %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.hci_ev_remote_ext_features, ptr %1, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.inquiry_entry, ptr %37, i32 0, i32 4, i32 7
  store i8 %42, ptr %43, align 1
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.hci_ev_remote_ext_features, ptr %1, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  br i1 %48, label %51, label %50

50:                                               ; preds = %44
  tail call void @_set_bit(i32 noundef 7, ptr noundef %49) #15
  br label %52

51:                                               ; preds = %44
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %49) #15
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i8, ptr %45, align 1
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 8, ptr noundef %57) #15
  br label %58

58:                                               ; preds = %56, %52, %32, %29
  %59 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 12
  %60 = load i16, ptr %59, align 4
  %61 = icmp eq i16 %60, 7
  br i1 %61, label %62, label %164

62:                                               ; preds = %58
  %63 = load i8, ptr %1, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 64
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #15
  %71 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 2
  %72 = getelementptr inbounds i8, ptr %4, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %72, i8 0, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %71, i32 6, i1 false) #15
  %73 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %4, i32 0, i32 1
  store i8 2, ptr %73, align 1
  %74 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1049, i32 noundef 10, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #15
  br label %80

75:                                               ; preds = %65, %62
  %76 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  %77 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %76) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  tail call void @mgmt_device_connected(ptr noundef %0, ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 0) #15
  br label %80

80:                                               ; preds = %79, %75, %70
  %81 = load i16, ptr %59, align 4
  %82 = icmp eq i16 %81, 7
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 16
  %85 = load i8, ptr %84, align 1, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 25
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 65
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hci_dev, ptr %93, i32 0, i32 206
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 32768
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 128
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %164

103:                                              ; preds = %98, %91
  %104 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, 1
  %107 = icmp ne i8 %106, 0
  %108 = add i8 %89, -2
  %109 = icmp ult i8 %108, 3
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %164, label %111

111:                                              ; preds = %103, %87, %83, %80
  store i16 1, ptr %59, align 4
  %112 = load i8, ptr %1, align 1
  call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %113 = load ptr, ptr @hci_cb_list, align 4
  %114 = icmp eq ptr %113, @hci_cb_list
  br i1 %114, label %124, label %115

115:                                              ; preds = %121, %111
  %116 = phi ptr [ %122, %121 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.hci_cb, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  call void %118(ptr noundef nonnull %11, i8 noundef zeroext %112) #15
  br label %121

121:                                              ; preds = %120, %115
  %122 = load ptr, ptr %116, align 4
  %123 = icmp eq ptr %122, @hci_cb_list
  br i1 %123, label %124, label %115

124:                                              ; preds = %121, %111
  call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %125 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 71
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void %126(ptr noundef %11, i8 noundef zeroext %112) #15
  br label %129

129:                                              ; preds = %128, %124
  %130 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #15, !srcloc !13
  %131 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 1, ptr elementtype(i32) %130) #15, !srcloc !16
  %132 = extractvalue { i32, i32 } %131, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 14
  %136 = load i8, ptr %135, align 1
  switch i8 %136, label %155 [
    i8 1, label %137
    i8 -128, label %137
    i8 -127, label %151
  ]

137:                                              ; preds = %134, %134
  %138 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 60
  %139 = call zeroext i1 @cancel_delayed_work(ptr noundef %138) #15
  %140 = load i16, ptr %59, align 4
  %141 = icmp eq i16 %140, 1
  br i1 %141, label %142, label %155

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 31
  %144 = load i16, ptr %143, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 16
  %147 = load i8, ptr %146, align 1, !range !8
  %148 = xor i8 %147, 1
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %145, %149
  br label %155

151:                                              ; preds = %134
  %152 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 31
  %153 = load i16, ptr %152, align 2
  %154 = zext i16 %153 to i32
  br label %155

155:                                              ; preds = %151, %142, %137, %134
  %156 = phi i32 [ %154, %151 ], [ %150, %142 ], [ 0, %137 ], [ 0, %134 ]
  %157 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 58
  %158 = call zeroext i1 @cancel_delayed_work(ptr noundef %157) #15
  %159 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 65
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.hci_dev, ptr %160, i32 0, i32 138
  %162 = load ptr, ptr %161, align 4
  %163 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %162, ptr noundef %157, i32 noundef %156) #15
  br label %164

164:                                              ; preds = %155, %129, %103, %98, %58, %18, %17
  call void @mutex_unlock(ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_sync_conn_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, ptr %1, i32 0, i32 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %23, label %11

11:                                               ; preds = %20, %3
  %12 = phi ptr [ %21, %20 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 2
  %18 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %17, ptr noundef dereferenceable(6) %7, i32 6) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %11
  %21 = load volatile ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %23, label %11

23:                                               ; preds = %20, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

24:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %25 = icmp eq ptr %12, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %24, %23
  %27 = load i8, ptr %5, align 1
  %28 = icmp eq i8 %27, 2
  br i1 %28, label %115, label %29

29:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %30 = load volatile ptr, ptr %8, align 4
  %31 = icmp eq ptr %30, %8
  br i1 %31, label %44, label %32

32:                                               ; preds = %41, %29
  %33 = phi ptr [ %42, %41 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.hci_conn, ptr %33, i32 0, i32 14
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hci_conn, ptr %33, i32 0, i32 2
  %39 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %38, ptr noundef dereferenceable(6) %7, i32 6) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %32
  %42 = load volatile ptr, ptr %33, align 4
  %43 = icmp eq ptr %42, %8
  br i1 %43, label %44, label %32

44:                                               ; preds = %41, %29
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %115

45:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %46 = icmp eq ptr %33, null
  br i1 %46, label %115, label %47

47:                                               ; preds = %45, %24
  %48 = phi ptr [ %12, %24 ], [ %33, %45 ]
  %49 = load i8, ptr %1, align 1
  switch i8 %49, label %76 [
    i8 0, label %50
    i8 16, label %62
    i8 13, label %62
    i8 17, label %62
    i8 28, label %62
    i8 26, label %62
    i8 30, label %62
    i8 31, label %62
    i8 32, label %62
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 12
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %55) #15
  br label %115

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, ptr %1, i32 0, i32 1
  %58 = load i16, ptr %57, align 1
  %59 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 11
  store i16 %58, ptr %59, align 2
  store i16 1, ptr %51, align 4
  %60 = load i8, ptr %5, align 1
  %61 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 14
  store i8 %60, ptr %61, align 1
  tail call void @hci_debugfs_create_conn(ptr noundef nonnull %48) #15
  tail call void @hci_conn_add_sysfs(ptr noundef nonnull %48) #15
  br label %78

62:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47
  %63 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 16
  %64 = load i8, ptr %63, align 1, !range !8
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, 967
  %70 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 20
  store i16 %69, ptr %70, align 2
  %71 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 69
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.hci_conn, ptr %72, i32 0, i32 11
  %74 = load i16, ptr %73, align 2
  %75 = tail call zeroext i1 @hci_setup_sync(ptr noundef nonnull %48, i16 noundef zeroext %74) #15
  br i1 %75, label %115, label %76

76:                                               ; preds = %66, %62, %47
  %77 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 12
  store i16 9, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %56
  %79 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 70, i32 3
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 232
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.hci_ev_sync_conn_complete, ptr %1, i32 0, i32 8
  %88 = load i8, ptr %87, align 1
  switch i8 %88, label %92 [
    i8 2, label %90
    i8 3, label %89
  ]

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ 5, %89 ], [ 4, %86 ]
  tail call void %84(ptr noundef %0, i32 noundef %91) #15
  br label %92

92:                                               ; preds = %90, %86, %82, %78
  %93 = load i8, ptr %1, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %94 = load ptr, ptr @hci_cb_list, align 4
  %95 = icmp eq ptr %94, @hci_cb_list
  br i1 %95, label %105, label %96

96:                                               ; preds = %102, %92
  %97 = phi ptr [ %103, %102 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.hci_cb, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void %99(ptr noundef %48, i8 noundef zeroext %93) #15
  br label %102

102:                                              ; preds = %101, %96
  %103 = load ptr, ptr %97, align 4
  %104 = icmp eq ptr %103, @hci_cb_list
  br i1 %104, label %105, label %96

105:                                              ; preds = %102, %92
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %106 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 71
  %107 = load ptr, ptr %106, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void %107(ptr noundef %48, i8 noundef zeroext %93) #15
  br label %110

110:                                              ; preds = %109, %105
  %111 = load i8, ptr %1, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = tail call i32 @hci_conn_del(ptr noundef %48) #15
  br label %115

115:                                              ; preds = %113, %110, %66, %54, %45, %44, %26
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_extended_inquiry_result_evt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.inquiry_data, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !10
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 254
  %8 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %11, i32 noundef 47) #15
  br label %97

12:                                               ; preds = %3
  %13 = load i8, ptr %1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %97, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1073741824
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %21) #15
  %22 = load i8, ptr %1, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %96, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 2
  %27 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 3
  %28 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 4
  %29 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 5
  %30 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 6
  %31 = getelementptr inbounds %struct.inquiry_data, ptr %4, i32 0, i32 7
  br label %32

32:                                               ; preds = %88, %24
  %33 = phi i32 [ 0, %24 ], [ %92, %88 ]
  %34 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false) #15
  %35 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 1
  %36 = load i8, ptr %35, align 1
  store i8 %36, ptr %25, align 2
  %37 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 2
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %26, align 1
  store i8 0, ptr %27, align 2
  %39 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %28, ptr noundef align 1 dereferenceable(3) %39, i32 3, i1 false)
  %40 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 4
  %41 = load i16, ptr %40, align 1
  store i16 %41, ptr %29, align 2
  %42 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 5
  %43 = load i8, ptr %42, align 1
  store i8 %43, ptr %30, align 2
  store i8 1, ptr %31, align 1
  %44 = load volatile i32, ptr %16, align 4
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %32
  %48 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 6
  br label %49

49:                                               ; preds = %67, %47
  %50 = phi i32 [ 0, %47 ], [ %57, %67 ]
  %51 = phi ptr [ %48, %47 ], [ %68, %67 ]
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  %55 = zext i8 %52 to i32
  %56 = add nuw nsw i32 %55, 1
  %57 = add nuw nsw i32 %56, %50
  %58 = icmp ugt i32 %57, 240
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %51, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 9
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = icmp eq i8 %52, 1
  %65 = getelementptr i8, ptr %51, i32 2
  %66 = select i1 %64, ptr null, ptr %65
  br label %70

67:                                               ; preds = %59
  %68 = getelementptr i8, ptr %51, i32 %56
  %69 = icmp ult i32 %57, 239
  br i1 %69, label %49, label %70

70:                                               ; preds = %67, %63, %54, %49
  %71 = phi ptr [ %66, %63 ], [ null, %67 ], [ null, %54 ], [ null, %49 ]
  %72 = icmp ne ptr %71, null
  br label %73

73:                                               ; preds = %70, %32
  %74 = phi i1 [ %72, %70 ], [ true, %32 ]
  %75 = call i32 @hci_inquiry_cache_update(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext %74) #15
  %76 = getelementptr %struct.hci_ev_ext_inquiry_result, ptr %1, i32 0, i32 1, i32 %33, i32 6
  br label %77

77:                                               ; preds = %81, %73
  %78 = phi ptr [ %76, %73 ], [ %87, %81 ]
  %79 = phi i32 [ 0, %73 ], [ %86, %81 ]
  %80 = icmp ult i32 %79, 240
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i8, ptr %78, align 1
  %83 = icmp eq i8 %82, 0
  %84 = zext i8 %82 to i32
  %85 = add nuw nsw i32 %84, 1
  %86 = add nuw nsw i32 %85, %79
  %87 = getelementptr i8, ptr %78, i32 %85
  br i1 %83, label %88, label %77

88:                                               ; preds = %81, %77
  %89 = phi i32 [ %79, %81 ], [ 240, %77 ]
  %90 = load i8, ptr %42, align 1
  %91 = trunc i32 %89 to i16
  call void @mgmt_device_found(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %39, i8 noundef signext %90, i32 noundef %75, ptr noundef %76, i16 noundef zeroext %91, ptr noundef null, i8 noundef zeroext 0) #15
  %92 = add nuw nsw i32 %33, 1
  %93 = load i8, ptr %1, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %32, label %96

96:                                               ; preds = %88, %20
  call void @mutex_unlock(ptr noundef %21) #15
  br label %97

97:                                               ; preds = %96, %15, %12, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_key_refresh_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_key_refresh_complete, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %188

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %188, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, -128
  br i1 %22, label %23, label %188

23:                                               ; preds = %19
  %24 = load i8, ptr %1, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 25
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 24
  store i8 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %31) #15
  %32 = load i8, ptr %1, align 1
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 12
  %35 = load i16, ptr %34, align 4
  br i1 %33, label %72, label %36

36:                                               ; preds = %30
  switch i16 %35, label %128 [
    i16 1, label %37
    i16 7, label %76
  ]

37:                                               ; preds = %36
  %38 = tail call i32 @hci_disconnect(ptr noundef nonnull %10, i8 noundef zeroext 5) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #15, !srcloc !13
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #15, !srcloc !16
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %188

43:                                               ; preds = %37
  %44 = load i8, ptr %20, align 1
  switch i8 %44, label %63 [
    i8 1, label %45
    i8 -128, label %45
    i8 -127, label %59
  ]

45:                                               ; preds = %43, %43
  %46 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %47 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %46) #15
  %48 = load i16, ptr %34, align 4
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %52 = load i16, ptr %51, align 2
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %55 = load i8, ptr %54, align 1, !range !8
  %56 = xor i8 %55, 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %53, %57
  br label %63

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %59, %50, %45, %43
  %64 = phi i32 [ %62, %59 ], [ %58, %50 ], [ 0, %45 ], [ 0, %43 ]
  %65 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %66 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %65) #15
  %67 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.hci_dev, ptr %68, i32 0, i32 138
  %70 = load ptr, ptr %69, align 4
  %71 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %70, ptr noundef %65, i32 noundef %64) #15
  br label %188

72:                                               ; preds = %30
  %73 = icmp eq i16 %35, 7
  br i1 %73, label %74, label %128

74:                                               ; preds = %72
  store i16 1, ptr %34, align 4
  %75 = load i8, ptr %1, align 1
  br label %76

76:                                               ; preds = %74, %36
  %77 = phi i8 [ %75, %74 ], [ %32, %36 ]
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %78 = load ptr, ptr @hci_cb_list, align 4
  %79 = icmp eq ptr %78, @hci_cb_list
  br i1 %79, label %89, label %80

80:                                               ; preds = %86, %76
  %81 = phi ptr [ %87, %86 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.hci_cb, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  tail call void %83(ptr noundef nonnull %10, i8 noundef zeroext %77) #15
  br label %86

86:                                               ; preds = %85, %80
  %87 = load ptr, ptr %81, align 4
  %88 = icmp eq ptr %87, @hci_cb_list
  br i1 %88, label %89, label %80

89:                                               ; preds = %86, %76
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %90 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 71
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void %91(ptr noundef nonnull %10, i8 noundef zeroext %77) #15
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #15, !srcloc !13
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #15, !srcloc !16
  %97 = extractvalue { i32, i32 } %96, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %188

99:                                               ; preds = %94
  %100 = load i8, ptr %20, align 1
  switch i8 %100, label %119 [
    i8 1, label %101
    i8 -128, label %101
    i8 -127, label %115
  ]

101:                                              ; preds = %99, %99
  %102 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %103 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %102) #15
  %104 = load i16, ptr %34, align 4
  %105 = icmp eq i16 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %111 = load i8, ptr %110, align 1, !range !8
  %112 = xor i8 %111, 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %109, %113
  br label %119

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  br label %119

119:                                              ; preds = %115, %106, %101, %99
  %120 = phi i32 [ %118, %115 ], [ %114, %106 ], [ 0, %101 ], [ 0, %99 ]
  %121 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %122 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %121) #15
  %123 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.hci_dev, ptr %124, i32 0, i32 138
  %126 = load ptr, ptr %125, align 4
  %127 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %126, ptr noundef %121, i32 noundef %120) #15
  br label %188

128:                                              ; preds = %72, %36
  %129 = load volatile i32, ptr %31, align 4
  %130 = and i32 %129, 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = load volatile i32, ptr %31, align 4
  %134 = lshr i32 %133, 12
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %137 = load ptr, ptr @hci_cb_list, align 4
  %138 = icmp eq ptr %137, @hci_cb_list
  br i1 %138, label %148, label %139

139:                                              ; preds = %145, %132
  %140 = phi ptr [ %146, %145 ], [ %137, %132 ]
  %141 = getelementptr inbounds %struct.hci_cb, ptr %140, i32 0, i32 4
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void %142(ptr noundef nonnull %10, i8 noundef zeroext %32, i8 noundef zeroext %136) #15
  br label %145

145:                                              ; preds = %144, %139
  %146 = load ptr, ptr %140, align 4
  %147 = icmp eq ptr %146, @hci_cb_list
  br i1 %147, label %148, label %139

148:                                              ; preds = %145, %132
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %149 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 72
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void %150(ptr noundef nonnull %10, i8 noundef zeroext %32) #15
  br label %153

153:                                              ; preds = %152, %148, %128
  %154 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #15, !srcloc !13
  %155 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #15, !srcloc !14
  %156 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %157 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %156) #15
  %158 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  store i16 200, ptr %158, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #15, !srcloc !13
  %159 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #15, !srcloc !16
  %160 = extractvalue { i32, i32 } %159, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %153
  %163 = load i8, ptr %20, align 1
  switch i8 %163, label %180 [
    i8 1, label %164
    i8 -128, label %164
    i8 -127, label %177
  ]

164:                                              ; preds = %162, %162
  %165 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %166 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %165) #15
  %167 = load i16, ptr %34, align 4
  %168 = icmp eq i16 %167, 1
  br i1 %168, label %169, label %180

169:                                              ; preds = %164
  %170 = load i16, ptr %158, align 2
  %171 = zext i16 %170 to i32
  %172 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %173 = load i8, ptr %172, align 1, !range !8
  %174 = xor i8 %173, 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %171, %175
  br label %180

177:                                              ; preds = %162
  %178 = load i16, ptr %158, align 2
  %179 = zext i16 %178 to i32
  br label %180

180:                                              ; preds = %177, %169, %164, %162
  %181 = phi i32 [ %179, %177 ], [ %176, %169 ], [ 0, %164 ], [ 0, %162 ]
  %182 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %156) #15
  %183 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.hci_dev, ptr %184, i32 0, i32 138
  %186 = load ptr, ptr %185, align 4
  %187 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %186, ptr noundef %156, i32 noundef %181) #15
  br label %188

188:                                              ; preds = %180, %153, %119, %94, %63, %37, %19, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_io_capa_request_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_io_capability_reply, align 1
  %5 = alloca %struct.hci_cp_io_capability_neg_reply, align 1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %22, label %10

10:                                               ; preds = %19, %3
  %11 = phi ptr [ %20, %19 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 2
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef dereferenceable(6) %1, i32 6) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15, %10
  %20 = load volatile ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %22, label %10

22:                                               ; preds = %19, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %146

23:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %11, null
  br i1 %24, label %146, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !13
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #15, !srcloc !14
  %28 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 58
  %29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #15
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %146, label %34

34:                                               ; preds = %25
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 47
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 53
  %45 = load i8, ptr %44, align 1
  %46 = icmp ult i8 %45, 2
  br i1 %46, label %47, label %143

47:                                               ; preds = %43, %38, %34
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #15
  %48 = getelementptr inbounds i8, ptr %4, i32 7
  store i8 0, ptr %48, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %49 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 28
  %50 = load i8, ptr %49, align 8
  %51 = icmp eq i8 %50, 4
  %52 = select i1 %51, i8 1, i8 %50
  %53 = getelementptr inbounds %struct.hci_cp_io_capability_reply, ptr %4, i32 0, i32 1
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, -1
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = icmp eq i8 %50, 3
  br i1 %58, label %89, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = or i8 %61, 1
  store i8 %64, ptr %60, align 1
  br label %89

65:                                               ; preds = %47
  %66 = icmp ult i8 %55, 2
  br i1 %66, label %67, label %72

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 1
  %71 = or i8 %70, %55
  br label %86

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 52
  %74 = load i8, ptr %73, align 8
  %75 = icmp eq i8 %74, 3
  %76 = icmp eq i8 %50, 3
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = or i8 %55, 1
  br label %86

80:                                               ; preds = %72
  %81 = and i8 %55, -2
  %82 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 1
  %85 = or i8 %84, %81
  br label %86

86:                                               ; preds = %80, %78, %67
  %87 = phi i8 [ %71, %67 ], [ %79, %78 ], [ %85, %80 ]
  %88 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  store i8 %87, ptr %88, align 1
  br label %89

89:                                               ; preds = %86, %63, %59, %57
  %90 = load volatile i32, ptr %30, align 4
  %91 = and i32 %90, 32
  %92 = icmp eq i32 %91, 0
  %93 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 23
  %94 = load i8, ptr %93, align 1
  br i1 %92, label %95, label %97

95:                                               ; preds = %89
  %96 = and i8 %94, 1
  store i8 %96, ptr %93, align 1
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i8 [ %96, %95 ], [ %94, %89 ]
  %99 = getelementptr inbounds %struct.hci_cp_io_capability_reply, ptr %4, i32 0, i32 3
  store i8 %98, ptr %99, align 1
  %100 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 65
  %101 = load ptr, ptr %100, align 4
  %102 = tail call ptr @hci_find_remote_oob_data(ptr noundef %101, ptr noundef %16, i8 noundef zeroext 0) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %139, label %104

104:                                              ; preds = %97
  %105 = getelementptr %struct.hci_dev, ptr %101, i32 0, i32 21, i32 2, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.hci_dev, ptr %101, i32 0, i32 206
  %111 = load volatile i32, ptr %110, align 4
  %112 = and i32 %111, 65536
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %109
  %115 = load volatile i32, ptr %110, align 4
  %116 = and i32 %115, 131072
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.oob_data, ptr %102, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  br label %139

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.oob_data, ptr %102, i32 0, i32 7
  %123 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %122, ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.oob_data, ptr %102, i32 0, i32 6
  %127 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %126, ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #15
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i8 0, i8 2
  br label %139

130:                                              ; preds = %109, %104
  %131 = getelementptr inbounds %struct.oob_data, ptr %102, i32 0, i32 5
  %132 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %131, ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #15
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.oob_data, ptr %102, i32 0, i32 4
  %136 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %135, ptr noundef nonnull dereferenceable(16) @.str.22, i32 16) #15
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i8
  br label %139

139:                                              ; preds = %134, %130, %125, %121, %118, %97
  %140 = phi i8 [ %120, %118 ], [ 0, %97 ], [ 0, %121 ], [ 0, %130 ], [ %129, %125 ], [ %138, %134 ]
  %141 = getelementptr inbounds %struct.hci_cp_io_capability_reply, ptr %4, i32 0, i32 2
  store i8 %140, ptr %141, align 1
  %142 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1067, i32 noundef 9, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #15
  br label %146

143:                                              ; preds = %43
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %144 = getelementptr inbounds %struct.hci_cp_io_capability_neg_reply, ptr %5, i32 0, i32 1
  store i8 24, ptr %144, align 1
  %145 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1076, i32 noundef 7, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #15
  br label %146

146:                                              ; preds = %143, %139, %25, %23, %22
  call void @mutex_unlock(ptr noundef %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_io_capa_reply_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %17, %3
  %9 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %1, i32 6) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %8
  %18 = load volatile ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %30

21:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %22 = icmp eq ptr %9, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hci_ev_io_capa_reply, ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 52
  store i8 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.hci_ev_io_capa_reply, ptr %1, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 53
  store i8 %28, ptr %29, align 1
  br label %30

30:                                               ; preds = %23, %21, %20
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_user_confirm_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %89, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %25, label %13

13:                                               ; preds = %22, %9
  %14 = phi ptr [ %23, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef dereferenceable(6) %1, i32 6) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = load volatile ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %25, label %13

25:                                               ; preds = %22, %9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %89

26:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %27 = icmp eq ptr %14, null
  br i1 %27, label %89, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 23
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 53
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 25
  %36 = load i8, ptr %35, align 1
  %37 = icmp ugt i8 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 52
  %40 = load i8, ptr %39, align 8
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1069, i32 noundef 6, ptr noundef %1) #15
  br label %89

44:                                               ; preds = %38, %28
  %45 = icmp ne i8 %31, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 52
  %48 = load i8, ptr %47, align 8
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %50, label %84

50:                                               ; preds = %46, %44
  %51 = icmp ne i8 %34, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 28
  %54 = load i8, ptr %53, align 8
  %55 = icmp eq i8 %54, 3
  br i1 %55, label %56, label %84

56:                                               ; preds = %52, %50
  %57 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 47
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 28
  %63 = load i8, ptr %62, align 8
  %64 = icmp ne i8 %63, 3
  %65 = select i1 %45, i1 true, i1 %51
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %84, label %67

67:                                               ; preds = %61, %56
  %68 = tail call ptr @hci_find_link_key(ptr noundef %0, ptr noundef %1) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 117
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = tail call i32 @__msecs_to_jiffies(i32 noundef %72) #15
  %76 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 65
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %77, i32 0, i32 138
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 59
  %81 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %79, ptr noundef %80, i32 noundef %75) #15
  br label %89

82:                                               ; preds = %70
  %83 = tail call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1068, i32 noundef 6, ptr noundef %1) #15
  br label %89

84:                                               ; preds = %67, %61, %52, %46
  %85 = phi i8 [ 0, %52 ], [ 0, %46 ], [ 1, %61 ], [ 1, %67 ]
  %86 = getelementptr inbounds %struct.hci_ev_user_confirm_req, ptr %1, i32 0, i32 1
  %87 = load i32, ptr %86, align 1
  %88 = tail call i32 @mgmt_user_confirm_request(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %87, i8 noundef zeroext %85) #15
  br label %89

89:                                               ; preds = %84, %82, %74, %42, %26, %25, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_user_passkey_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @mgmt_user_passkey_request(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  br label %10

10:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_remote_oob_data_request_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_remote_oob_data_neg_reply, align 1
  %5 = alloca %struct.hci_cp_remote_oob_ext_data_reply, align 1
  %6 = alloca %struct.hci_cp_remote_oob_data_reply, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @hci_find_remote_oob_data(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %16 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1075, i32 noundef 6, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #15
  br label %49

17:                                               ; preds = %12
  %18 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load volatile i32, ptr %8, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 70, ptr nonnull %5) #15
  %27 = getelementptr inbounds i8, ptr %5, i32 6
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %27, i8 0, i32 32, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %28 = load volatile i32, ptr %8, align 4
  %29 = and i32 %28, 131072
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, ptr %5, i32 0, i32 1
  br i1 %30, label %33, label %32

32:                                               ; preds = %26
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(32) %31, i8 0, i64 32, i1 false)
  br label %37

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %31, ptr noundef align 4 dereferenceable(16) %34, i32 16, i1 false)
  %35 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, ptr %5, i32 0, i32 2
  %36 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %35, ptr noundef align 4 dereferenceable(16) %36, i32 16, i1 false)
  br label %37

37:                                               ; preds = %33, %32
  %38 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, ptr %5, i32 0, i32 3
  %39 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %38, ptr noundef align 4 dereferenceable(16) %39, i32 16, i1 false)
  %40 = getelementptr inbounds %struct.hci_cp_remote_oob_ext_data_reply, ptr %5, i32 0, i32 4
  %41 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %40, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false)
  %42 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1093, i32 noundef 70, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 70, ptr nonnull %5) #15
  br label %49

43:                                               ; preds = %22, %17
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %44 = getelementptr inbounds %struct.hci_cp_remote_oob_data_reply, ptr %6, i32 0, i32 1
  %45 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %44, ptr noundef align 4 dereferenceable(16) %45, i32 16, i1 false)
  %46 = getelementptr inbounds %struct.hci_cp_remote_oob_data_reply, ptr %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.oob_data, ptr %13, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %46, ptr noundef align 4 dereferenceable(16) %47, i32 16, i1 false)
  %48 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1072, i32 noundef 38, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %6) #15
  br label %49

49:                                               ; preds = %43, %37, %15, %3
  call void @mutex_unlock(ptr noundef %7) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_simple_pair_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_simple_pair_complete, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %21, label %9

9:                                                ; preds = %18, %3
  %10 = phi ptr [ %19, %18 ], [ %7, %3 ]
  %11 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %15, ptr noundef dereferenceable(6) %5, i32 6) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %9
  %19 = load volatile ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %70

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %10, null
  br i1 %24, label %70, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 53
  store i8 -1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 47
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8, ptr %1, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @mgmt_auth_failed(ptr noundef nonnull %10, i8 noundef zeroext %32) #15
  br label %35

35:                                               ; preds = %34, %31, %25
  %36 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #15, !srcloc !13
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #15, !srcloc !16
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = load i8, ptr %23, align 1
  switch i8 %41, label %61 [
    i8 1, label %42
    i8 -128, label %42
    i8 -127, label %57
  ]

42:                                               ; preds = %40, %40
  %43 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %44 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %43) #15
  %45 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 12
  %46 = load i16, ptr %45, align 4
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %53 = load i8, ptr %52, align 1, !range !8
  %54 = xor i8 %53, 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %51, %55
  br label %61

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  br label %61

61:                                               ; preds = %57, %48, %42, %40
  %62 = phi i32 [ %60, %57 ], [ %56, %48 ], [ 0, %42 ], [ 0, %40 ]
  %63 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %64 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %63) #15
  %65 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.hci_dev, ptr %66, i32 0, i32 138
  %68 = load ptr, ptr %67, align 4
  %69 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %68, ptr noundef %63, i32 noundef %62) #15
  br label %70

70:                                               ; preds = %61, %35, %22, %21
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_user_passkey_notify_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 2
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %13, ptr noundef dereferenceable(6) %1, i32 6) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %7
  %17 = load volatile ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %37

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %22 = icmp eq ptr %8, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hci_ev_user_passkey_notify, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 29
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  store i8 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load i8, ptr %21, align 1
  %34 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 3
  %35 = load i8, ptr %34, align 2
  %36 = tail call i32 @mgmt_user_passkey_notify(ptr noundef %0, ptr noundef %13, i8 noundef zeroext %33, i8 noundef zeroext %35, i32 noundef %25, i8 noundef zeroext 0) #15
  br label %37

37:                                               ; preds = %32, %23, %20, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_keypress_notify_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 2
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %13, ptr noundef dereferenceable(6) %1, i32 6) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %7
  %17 = load volatile ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %52

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %22 = icmp eq ptr %8, null
  br i1 %22, label %52, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hci_ev_keypress_notify, ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  switch i8 %25, label %38 [
    i8 0, label %26
    i8 1, label %28
    i8 2, label %32
    i8 3, label %36
    i8 4, label %52
  ]

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  store i8 0, ptr %27, align 8
  br label %52

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  %30 = load i8, ptr %29, align 8
  %31 = add i8 %30, 1
  store i8 %31, ptr %29, align 8
  br label %38

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  %34 = load i8, ptr %33, align 8
  %35 = add i8 %34, -1
  store i8 %35, ptr %33, align 8
  br label %38

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  store i8 0, ptr %37, align 8
  br label %38

38:                                               ; preds = %36, %32, %28, %23
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr %21, align 1
  %45 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 29
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 30
  %50 = load i8, ptr %49, align 8
  %51 = tail call i32 @mgmt_user_passkey_notify(ptr noundef %0, ptr noundef %13, i8 noundef zeroext %44, i8 noundef zeroext %46, i32 noundef %48, i8 noundef zeroext %50) #15
  br label %52

52:                                               ; preds = %43, %38, %26, %23, %20, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_remote_host_features_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %20, label %8

8:                                                ; preds = %17, %3
  %9 = phi ptr [ %18, %17 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %9, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %1, i32 6) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %8
  %18 = load volatile ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %3
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %27

21:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %22 = icmp eq ptr %9, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.hci_conn, ptr %9, i32 0, i32 19, i32 1
  %25 = getelementptr inbounds %struct.hci_ev_remote_host_features, ptr %1, i32 0, i32 1
  %26 = load i64, ptr %25, align 1
  store i64 %26, ptr %24, align 2
  br label %27

27:                                               ; preds = %23, %21, %20
  %28 = tail call ptr @hci_inquiry_cache_lookup(ptr noundef %0, ptr noundef %1) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.hci_ev_remote_host_features, ptr %1, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.inquiry_entry, ptr %28, i32 0, i32 4, i32 7
  store i8 %33, ptr %34, align 1
  br label %35

35:                                               ; preds = %30, %27
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_meta_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 12
  %13 = load i16, ptr %12, align 4
  %14 = and i16 %13, -1024
  %15 = icmp eq i16 %14, 8192
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 3, i32 15
  %18 = load i8, ptr %17, align 1
  %19 = load i8, ptr %1, align 1
  %20 = icmp eq i8 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i16 %13, ptr %3, align 2
  tail call void @hci_req_cmd_complete(ptr noundef %0, i16 noundef zeroext %13, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6) #15
  br label %22

22:                                               ; preds = %21, %16, %11, %7
  %23 = load i8, ptr %1, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr [256 x %struct.hci_le_ev], ptr @hci_le_ev_table, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr [256 x %struct.hci_le_ev], ptr @hci_le_ev_table, i32 0, i32 %24, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %36, i32 noundef %24, i32 noundef %30, i32 noundef %33) #15
  br label %53

37:                                               ; preds = %28
  %38 = getelementptr [256 x %struct.hci_le_ev], ptr @hci_le_ev_table, i32 0, i32 %24, i32 2
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ugt i32 %30, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.24, ptr noundef %43, i32 noundef %24, i32 noundef %30, i32 noundef %40) #15
  %44 = load i8, ptr %1, align 1
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i8 [ %44, %42 ], [ %23, %37 ]
  %47 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %33) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %51 = zext i8 %46 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %50, i32 noundef %51) #15
  br label %53

52:                                               ; preds = %45
  tail call void %26(ptr noundef %0, ptr noundef nonnull %47, ptr noundef %2) #15
  br label %53

53:                                               ; preds = %52, %49, %35, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_num_comp_blocks_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hci_ev_num_comp_blocks, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 6
  %8 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.33, ptr noundef %11, i32 noundef 72) #15
  br label %81

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 116
  %14 = load i8, ptr %13, align 8
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i8, ptr %4, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 132
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 131
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %28

25:                                               ; preds = %12
  %26 = zext i8 %14 to i32
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %27, i32 noundef %26) #15
  br label %81

28:                                               ; preds = %71, %19
  %29 = phi i32 [ 0, %19 ], [ %72, %71 ]
  %30 = getelementptr %struct.hci_ev_num_comp_blocks, ptr %1, i32 0, i32 2, i32 %29
  %31 = load i16, ptr %30, align 1
  %32 = getelementptr %struct.hci_ev_num_comp_blocks, ptr %1, i32 0, i32 2, i32 %29, i32 2
  %33 = load i16, ptr %32, align 1
  %34 = load i8, ptr %20, align 1
  switch i8 %34, label %52 [
    i8 0, label %35
    i8 1, label %46
  ]

35:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %36

36:                                               ; preds = %40, %35
  %37 = phi ptr [ %21, %35 ], [ %38, %40 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %21
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 11
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, %31
  br i1 %43, label %44, label %36

44:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %54

45:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %71

46:                                               ; preds = %28
  %47 = tail call ptr @hci_chan_lookup_handle(ptr noundef %0, i16 noundef zeroext %31) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.hci_chan, ptr %47, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  br label %54

52:                                               ; preds = %28
  %53 = zext i8 %34 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.32, ptr noundef %24, i32 noundef %53) #15
  br label %71

54:                                               ; preds = %49, %44
  %55 = phi ptr [ %51, %49 ], [ %38, %44 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = zext i16 %33 to i32
  %59 = getelementptr inbounds %struct.hci_conn, ptr %55, i32 0, i32 55
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %60, %58
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.hci_conn, ptr %55, i32 0, i32 14
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %69 [
    i8 1, label %64
    i8 -127, label %64
  ]

64:                                               ; preds = %57, %57
  %65 = load i16, ptr %22, align 2
  %66 = add i16 %65, %33
  %67 = load i16, ptr %23, align 8
  %68 = tail call i16 @llvm.umin.i16(i16 %66, i16 %67)
  store i16 %68, ptr %22, align 2
  br label %71

69:                                               ; preds = %57
  %70 = zext i8 %63 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %24, i32 noundef %70, ptr noundef nonnull %55) #15
  br label %71

71:                                               ; preds = %69, %64, %54, %52, %46, %45
  %72 = add nuw nsw i32 %29, 1
  %73 = load i8, ptr %4, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %28, label %76

76:                                               ; preds = %71, %16
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 154
  %80 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %78, ptr noundef %79) #15
  br label %81

81:                                               ; preds = %76, %25, %10
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msft_vendor_evt(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_check_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_discovery_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup_resolve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_inquiry_cache_update(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_device_found(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef signext, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_add(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_link_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_debugfs_create_conn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_add_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_connect_failed(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sco_setup(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_connect_ind(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sco_connect_ind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_disconnect_failed(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_device_disconnected(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_link_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_enable_advertising(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_auth_failed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_encrypt_cfm(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 7
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  store i16 1, ptr %3, align 4
  br label %9

9:                                                ; preds = %8, %6
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %10 = load ptr, ptr @hci_cb_list, align 4
  %11 = icmp eq ptr %10, @hci_cb_list
  br i1 %11, label %21, label %12

12:                                               ; preds = %18, %9
  %13 = phi ptr [ %19, %18 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.hci_cb, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void %15(ptr noundef %0, i8 noundef zeroext %1) #15
  br label %18

18:                                               ; preds = %17, %12
  %19 = load ptr, ptr %13, align 4
  %20 = icmp eq ptr %19, @hci_cb_list
  br i1 %20, label %21, label %12

21:                                               ; preds = %18, %9
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %22 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 71
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %0, i8 noundef zeroext %1) #15
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #15, !srcloc !13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #15, !srcloc !16
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %102

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %33 = load i8, ptr %32, align 1
  switch i8 %33, label %52 [
    i8 1, label %34
    i8 -128, label %34
    i8 -127, label %48
  ]

34:                                               ; preds = %31, %31
  %35 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 60
  %36 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %35) #15
  %37 = load i16, ptr %3, align 4
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 31
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 16
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = xor i8 %44, 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw nsw i32 %42, %46
  br label %52

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 31
  %50 = load i16, ptr %49, align 2
  %51 = zext i16 %50 to i32
  br label %52

52:                                               ; preds = %48, %39, %34, %31
  %53 = phi i32 [ %51, %48 ], [ %47, %39 ], [ 0, %34 ], [ 0, %31 ]
  %54 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 58
  %55 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %54) #15
  %56 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.hci_dev, ptr %57, i32 0, i32 138
  %59 = load ptr, ptr %58, align 4
  %60 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %59, ptr noundef %54, i32 noundef %53) #15
  br label %102

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 47
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 4096
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load volatile i32, ptr %62, align 4
  %68 = and i32 %67, 512
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i8 1, i8 2
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i8 [ 0, %61 ], [ %70, %66 ]
  %73 = icmp eq i8 %1, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 24
  %76 = load i8, ptr %75, align 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8 1, ptr %75, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i8 [ 1, %78 ], [ %76, %74 ]
  %81 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 25
  %82 = load i8, ptr %81, align 1
  %83 = icmp ugt i8 %82, %80
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i8 %82, ptr %75, align 4
  br label %85

85:                                               ; preds = %84, %79, %71
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %86 = load ptr, ptr @hci_cb_list, align 4
  %87 = icmp eq ptr %86, @hci_cb_list
  br i1 %87, label %97, label %88

88:                                               ; preds = %94, %85
  %89 = phi ptr [ %95, %94 ], [ %86, %85 ]
  %90 = getelementptr inbounds %struct.hci_cb, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void %91(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %72) #15
  br label %94

94:                                               ; preds = %93, %88
  %95 = load ptr, ptr %89, align 4
  %96 = icmp eq ptr %95, @hci_cb_list
  br i1 %96, label %97, label %88

97:                                               ; preds = %94, %85
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %98 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 72
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void %99(ptr noundef %0, i8 noundef zeroext %1) #15
  br label %102

102:                                              ; preds = %101, %97, %52, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_check_pending_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.hci_cp_remote_name_req, align 1
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = icmp eq ptr %1, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 12
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %17 [
    i16 7, label %12
    i16 1, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 47
  %14 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @mgmt_device_connected(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %3, i8 noundef zeroext %4) #15
  br label %17

17:                                               ; preds = %16, %12, %9, %5
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %65 [
    i32 3, label %20
    i32 4, label %64
  ]

20:                                               ; preds = %17
  %21 = tail call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %0, ptr noundef %2, i32 noundef 2) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.inquiry_entry, ptr %21, i32 0, i32 1
  %25 = getelementptr inbounds %struct.inquiry_entry, ptr %21, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %24, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = icmp eq ptr %3, null
  %30 = select i1 %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.inquiry_entry, ptr %21, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inquiry_entry, ptr %21, i32 0, i32 4, i32 6
  %33 = load i8, ptr %32, align 2
  tail call void @mgmt_remote_name(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef signext %33, ptr noundef %3, i8 noundef zeroext %4) #15
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7)
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %61, label %37

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 20
  %39 = load i32, ptr %38, align 4
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = sub i32 %39, %40
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.8, ptr noundef %44) #15
  br label %61

45:                                               ; preds = %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false) #15
  %46 = call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #15
  %49 = getelementptr inbounds %struct.inquiry_entry, ptr %46, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %49, i32 6, i1 false) #15
  %50 = getelementptr inbounds %struct.inquiry_entry, ptr %46, i32 0, i32 4, i32 1
  %51 = load i8, ptr %50, align 2
  %52 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %6, i32 0, i32 1
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.inquiry_entry, ptr %46, i32 0, i32 4, i32 3
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %6, i32 0, i32 2
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.inquiry_entry, ptr %46, i32 0, i32 4, i32 5
  %57 = load i16, ptr %56, align 4
  %58 = getelementptr inbounds %struct.hci_cp_remote_name_req, ptr %6, i32 0, i32 3
  store i16 %57, ptr %58, align 1
  %59 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1049, i32 noundef 10, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %48, %45, %43, %23
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7)
  br label %64

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.inquiry_entry, ptr %46, i32 0, i32 2
  store i32 2, ptr %63, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7)
  br label %65

64:                                               ; preds = %61, %17
  call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  br label %65

65:                                               ; preds = %64, %62, %20, %17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_device_connected(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_remote_name(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef signext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn_ratelimited(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_adv_instances_set_rpa_expired(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_check_link_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_add(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_run_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @read_enc_key_size_complete(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %11) #15
  br label %43

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hci_rp_read_enc_key_size, ptr %14, i32 0, i32 1
  %16 = load i16, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %17) #15
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %19

19:                                               ; preds = %23, %12
  %20 = phi ptr [ %18, %12 ], [ %21, %23 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 11
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, %16
  br i1 %26, label %28, label %19

27:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %42

28:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %29 = icmp eq ptr %21, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = load i8, ptr %14, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %35 = zext i16 %16 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %34, i32 noundef %35) #15
  br label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.hci_rp_read_enc_key_size, ptr %14, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i8 [ %38, %36 ], [ 0, %33 ]
  %41 = getelementptr inbounds %struct.hci_conn, ptr %21, i32 0, i32 27
  store i8 %40, ptr %41, align 1
  tail call fastcc void @hci_encrypt_cfm(ptr noundef nonnull %21, i8 noundef zeroext 0)
  br label %42

42:                                               ; preds = %39, %28, %27
  tail call void @mutex_unlock(ptr noundef %17) #15
  br label %43

43:                                               ; preds = %42, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_inquiry_cancel(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  switch i8 %4, label %26 [
    i8 12, label %5
    i8 0, label %12
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.13, ptr noundef %11) #15
  store i8 0, ptr %1, align 1
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %13) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  tail call void @wake_up_bit(ptr noundef %13, i32 noundef 7) #15
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  %21 = load i8, ptr %20, align 8
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %12
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  br label %24

24:                                               ; preds = %23, %19
  tail call void @mutex_unlock(ptr noundef %14) #15
  tail call void @hci_conn_check_pending(ptr noundef %0) #15
  %25 = load i8, ptr %1, align 1
  br label %26

26:                                               ; preds = %24, %5, %3
  %27 = phi i8 [ %25, %24 ], [ 12, %5 ], [ %4, %3 ]
  ret i8 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_periodic_inq(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 30, ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ %4, %3 ]
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_exit_periodic_inq(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 30, ptr noundef %7) #15
  tail call void @hci_conn_check_pending(ptr noundef %0) #15
  %8 = load i8, ptr %1, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ %4, %3 ]
  ret i8 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_remote_name_req_cancel(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #8 {
  %4 = load i8, ptr %1, align 1
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_role_discovery(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_rp_role_discovery, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_rp_role_discovery, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 15
  store i8 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  %27 = load i8, ptr %1, align 1
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i8 [ %27, %26 ], [ %4, %3 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_link_policy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_rp_read_link_policy, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_rp_read_link_policy, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 21
  store i16 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  %27 = load i8, ptr %1, align 1
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i8 [ %27, %26 ], [ %4, %3 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_link_policy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 2061) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_rp_write_link_policy, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %14

14:                                               ; preds = %18, %9
  %15 = phi ptr [ %13, %9 ], [ %16, %18 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 11
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %12
  br i1 %21, label %23, label %14

22:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %29

23:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %16, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %7, i32 2
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 21
  store i16 %27, ptr %28, align 8
  br label %29

29:                                               ; preds = %25, %23, %22
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %30

30:                                               ; preds = %29, %6
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %30 ]
  ret i8 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_def_link_policy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_def_link_policy, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 100
  store i16 %8, ptr %9, align 8
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_def_link_policy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 2063) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 100
  store i16 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i8 [ %4, %3 ], [ %13, %12 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_reset(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %4) #15
  %5 = load i8, ptr %1, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %8) #15
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %8) #15
  tail call void @_clear_bit(i32 noundef 40, ptr noundef %8) #15
  tail call void @_clear_bit(i32 noundef 30, ptr noundef %8) #15
  tail call void @_clear_bit(i32 noundef 44, ptr noundef %8) #15
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 38
  store i8 127, ptr %9, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 208
  store i8 127, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 209
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  store i8 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 76
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(504) %11, i8 0, i64 504, i1 false)
  tail call void @hci_bdaddr_list_clear(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  tail call void @hci_bdaddr_list_clear(ptr noundef %15) #15
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %7, %3
  %18 = phi i8 [ %16, %7 ], [ %5, %3 ]
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_stored_link_key(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3085) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_cp_read_stored_link_key, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 35
  store i16 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.hci_rp_read_stored_link_key, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 36
  store i16 %18, ptr %19, align 8
  br label %20

20:                                               ; preds = %13, %9, %6, %3
  %21 = load i8, ptr %1, align 1
  ret i8 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_delete_stored_link_key(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_delete_stored_link_key, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 36
  %10 = load i16, ptr %9, align 8
  %11 = tail call i16 @llvm.usub.sat.i16(i16 %10, i16 %8)
  store i16 %11, ptr %9, align 8
  %12 = load i8, ptr %1, align 1
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i8 [ %12, %6 ], [ %4, %3 ]
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_local_name(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3091) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = load i8, ptr %1, align 1
  br i1 %11, label %14, label %13

13:                                               ; preds = %6
  tail call void @mgmt_set_local_name_complete(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %12) #15
  br label %18

14:                                               ; preds = %6
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %17, ptr noundef nonnull align 1 dereferenceable(248) %4, i32 248, i1 false)
  br label %18

18:                                               ; preds = %16, %14, %13
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i8, ptr %1, align 1
  ret i8 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_name(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #10 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  %17 = getelementptr inbounds %struct.hci_rp_read_local_name, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %16, ptr noundef align 1 dereferenceable(248) %17, i32 248, i1 false)
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i8 [ %4, %3 ], [ %18, %15 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_auth_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3104) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i8, ptr %4, align 1
  %12 = icmp eq i8 %11, 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  br i1 %12, label %14, label %15

14:                                               ; preds = %10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %13) #15
  br label %16

15:                                               ; preds = %10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %13) #15
  br label %16

16:                                               ; preds = %15, %14, %6
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i8, ptr %1, align 1
  tail call void @mgmt_auth_enable_complete(ptr noundef %0, i8 noundef zeroext %22) #15
  br label %23

23:                                               ; preds = %21, %16
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i8, ptr %1, align 1
  ret i8 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_encrypt_mode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3106) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  br i1 %11, label %14, label %13

13:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %12) #15
  br label %15

14:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %12) #15
  br label %15

15:                                               ; preds = %14, %13, %6
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i8 [ %4, %3 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_scan_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3098) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %4, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %12, align 4
  br label %26

13:                                               ; preds = %6
  %14 = zext i8 %7 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  br i1 %16, label %19, label %18

18:                                               ; preds = %13
  tail call void @_set_bit(i32 noundef 4, ptr noundef %17) #15
  br label %20

19:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %17) #15
  br label %20

20:                                               ; preds = %19, %18
  %21 = and i32 %14, 2
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  br i1 %22, label %25, label %24

24:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 3, ptr noundef %23) #15
  br label %26

25:                                               ; preds = %20
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %23) #15
  br label %26

26:                                               ; preds = %25, %24, %11
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i8, ptr %1, align 1
  ret i8 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_set_event_filter(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3077) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %11, label %13, label %14

13:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 35, ptr noundef %12) #15
  br label %15

14:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 35, ptr noundef %12) #15
  br label %15

15:                                               ; preds = %14, %13, %6
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i8 [ %4, %3 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_class_of_dev(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #11 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  %8 = getelementptr inbounds %struct.hci_rp_read_class_of_dev, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %7, ptr noundef align 1 dereferenceable(3) %8, i32 3, i1 false)
  %9 = load i8, ptr %1, align 1
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i8 [ %9, %6 ], [ %4, %3 ]
  ret i8 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_class_of_dev(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3108) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(3) %11, ptr noundef nonnull align 1 dereferenceable(3) %4, i32 3, i1 false)
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr %1, align 1
  tail call void @mgmt_set_class_of_dev_complete(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %18) #15
  br label %19

19:                                               ; preds = %17, %12
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i8, ptr %1, align 1
  ret i8 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_voice_setting(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_voice_setting, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 33
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, %8
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  store i16 %8, ptr %9, align 2
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 232
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void %14(ptr noundef %0, i32 noundef 3) #15
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = phi i8 [ %18, %17 ], [ %4, %3 ], [ 0, %6 ]
  ret i8 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_voice_setting(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3110) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 33
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, %10
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  store i16 %10, ptr %11, align 2
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 232
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef %0, i32 noundef 3) #15
  br label %19

19:                                               ; preds = %18, %14, %9, %6
  %20 = load i8, ptr %1, align 1
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i8 [ %4, %3 ], [ %20, %19 ]
  ret i8 %22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_num_supported_iac(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_num_supported_iac, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 34
  store i8 %8, ptr %9, align 4
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_ssp_mode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3158) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load i8, ptr %4, align 1
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, -2
  %16 = zext i1 %12 to i8
  %17 = or i8 %15, %16
  store i8 %17, ptr %13, align 2
  %18 = load i8, ptr %1, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %10
  %21 = load i8, ptr %4, align 1
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %22, label %25, label %24

24:                                               ; preds = %20
  tail call void @_set_bit(i32 noundef 15, ptr noundef %23) #15
  br label %26

25:                                               ; preds = %20
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %23) #15
  br label %26

26:                                               ; preds = %25, %24, %10, %6
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i8, ptr %1, align 1
  ret i8 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_sc_support(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3194) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i8, ptr %4, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, -9
  %16 = select i1 %12, i8 0, i8 8
  %17 = or i8 %15, %16
  store i8 %17, ptr %13, align 2
  br label %18

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8, ptr %1, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8, ptr %4, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @_set_bit(i32 noundef 16, ptr noundef %19) #15
  br label %31

30:                                               ; preds = %26
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %19) #15
  br label %31

31:                                               ; preds = %30, %29, %23, %18
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i8, ptr %1, align 1
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_auth_payload_timeout(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_rp_read_auth_payload_to, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_rp_read_auth_payload_to, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 34
  store i16 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  %27 = load i8, ptr %1, align 1
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i8 [ %27, %26 ], [ %4, %3 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_auth_payload_timeout(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3196) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_rp_write_auth_payload_to, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %14

14:                                               ; preds = %18, %9
  %15 = phi ptr [ %13, %9 ], [ %16, %18 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 11
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %12
  br i1 %21, label %23, label %14

22:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %29

23:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %16, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %7, i32 2
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 34
  store i16 %27, ptr %28, align 8
  br label %29

29:                                               ; preds = %25, %23, %22
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %30

30:                                               ; preds = %29, %6
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %30 ]
  ret i8 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_version(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #12 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %1, i32 0, i32 2
  %20 = load i16, ptr %19, align 1
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 29
  store i16 %20, ptr %21, align 2
  %22 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 30
  store i8 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %1, i32 0, i32 4
  %26 = load i16, ptr %25, align 1
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 31
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %1, i32 0, i32 5
  %29 = load i16, ptr %28, align 1
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 32
  store i16 %29, ptr %30, align 8
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %15, %11, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %15 ], [ 0, %11 ]
  ret i8 %33
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_commands(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #10 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 27
  %17 = getelementptr inbounds %struct.hci_rp_read_local_commands, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %16, ptr noundef align 1 dereferenceable(64) %17, i32 64, i1 false)
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %15, %11, %3
  %20 = phi i8 [ %4, %3 ], [ %18, %15 ], [ 0, %11 ]
  ret i8 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_features(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 21
  %8 = getelementptr inbounds %struct.hci_rp_read_local_features, ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  store i64 %9, ptr %7, align 2
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = lshr i64 %9, 8
  %14 = trunc i64 %13 to i8
  %15 = lshr i64 %9, 32
  %16 = trunc i64 %15 to i8
  %17 = lshr i64 %9, 40
  %18 = trunc i64 %17 to i8
  br i1 %12, label %23, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %21 = load i16, ptr %20, align 4
  %22 = or i16 %21, 3072
  store i16 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %6
  %24 = and i8 %10, 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %28 = load i16, ptr %27, align 4
  %29 = or i16 %28, -16384
  store i16 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i8 %14, 16
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %35 = load i16, ptr %34, align 4
  %36 = or i16 %35, 64
  store i16 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %38 = load i16, ptr %37, align 2
  %39 = or i16 %38, 2
  store i16 %39, ptr %37, align 2
  br label %40

40:                                               ; preds = %33, %30
  %41 = and i8 %14, 32
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %45 = load i16, ptr %44, align 4
  %46 = or i16 %45, 128
  store i16 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %48 = load i16, ptr %47, align 2
  %49 = or i16 %48, 4
  store i16 %49, ptr %47, align 2
  br label %50

50:                                               ; preds = %43, %40
  %51 = and i64 %9, 2147483648
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %55 = load i16, ptr %54, align 2
  %56 = or i16 %55, 8
  store i16 %56, ptr %54, align 2
  br label %57

57:                                               ; preds = %53, %50
  %58 = and i8 %16, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %62 = load i16, ptr %61, align 2
  %63 = or i16 %62, 16
  store i16 %63, ptr %61, align 2
  br label %64

64:                                               ; preds = %60, %57
  %65 = and i8 %16, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %69 = load i16, ptr %68, align 2
  %70 = or i16 %69, 32
  store i16 %70, ptr %68, align 2
  br label %71

71:                                               ; preds = %67, %64
  %72 = and i8 %18, 32
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %76 = load i16, ptr %75, align 2
  %77 = or i16 %76, 64
  store i16 %77, ptr %75, align 2
  br label %78

78:                                               ; preds = %74, %71
  %79 = and i8 %18, 64
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %83 = load i16, ptr %82, align 2
  %84 = or i16 %83, 128
  store i16 %84, ptr %82, align 2
  br label %85

85:                                               ; preds = %81, %78
  %86 = icmp sgt i8 %18, -1
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 99
  %89 = load i16, ptr %88, align 2
  %90 = or i16 %89, 768
  store i16 %90, ptr %88, align 2
  br label %91

91:                                               ; preds = %87, %85
  %92 = load i8, ptr %1, align 1
  br label %93

93:                                               ; preds = %91, %3
  %94 = phi i8 [ %92, %91 ], [ %4, %3 ]
  ret i8 %94
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_ext_features(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 20
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp ult i8 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i8 %10, ptr %7, align 1
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp ult i8 %15, 3
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = zext i8 %15 to i32
  %19 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 %18
  %20 = getelementptr inbounds %struct.hci_rp_read_local_ext_features, ptr %1, i32 0, i32 3
  %21 = load i64, ptr %20, align 1
  store i64 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %17, %13
  %23 = load i8, ptr %1, align 1
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi i8 [ %23, %22 ], [ %4, %3 ]
  ret i8 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_buffer_size(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #12 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_buffer_size, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 123
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_rp_read_buffer_size, ptr %1, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 124
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_buffer_size, ptr %1, i32 0, i32 3
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 126
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_buffer_size, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 1
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 127
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 64, ptr %14, align 8
  store i32 8, ptr %22, align 4
  br label %28

28:                                               ; preds = %27, %6
  %29 = phi i32 [ 8, %27 ], [ %21, %6 ]
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  store i32 %17, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 121
  store i32 %29, ptr %31, align 4
  %32 = load i8, ptr %1, align 1
  br label %33

33:                                               ; preds = %28, %3
  %34 = phi i8 [ %32, %28 ], [ %4, %3 ]
  ret i8 %34
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_bd_addr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #10 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  %13 = getelementptr inbounds %struct.hci_rp_read_bd_addr, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %12, ptr noundef align 1 dereferenceable(6) %13, i32 6, i1 false) #15
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 8
  %21 = getelementptr inbounds %struct.hci_rp_read_bd_addr, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %20, ptr noundef align 1 dereferenceable(6) %21, i32 6, i1 false) #15
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i8, ptr %1, align 1
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi i8 [ %23, %22 ], [ %4, %3 ]
  ret i8 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_pairing_opts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #12 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.hci_rp_read_local_pairing_opts, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 75
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.hci_rp_read_local_pairing_opts, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 74
  store i8 %20, ptr %21, align 1
  %22 = load i8, ptr %1, align 1
  br label %23

23:                                               ; preds = %15, %11, %3
  %24 = phi i8 [ %4, %3 ], [ %22, %15 ], [ 0, %11 ]
  ret i8 %24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_page_scan_activity(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #12 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_rp_read_page_scan_activity, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 40
  store i16 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.hci_rp_read_page_scan_activity, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 41
  store i16 %16, ptr %17, align 8
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %11, %6, %3
  %20 = phi i8 [ %4, %3 ], [ %18, %11 ], [ 0, %6 ]
  ret i8 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_page_scan_activity(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3100) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 40
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.hci_cp_write_page_scan_activity, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 41
  store i16 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %9, %6
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i8 [ %4, %3 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_page_scan_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #12 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_rp_read_page_scan_type, ptr %1, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 42
  store i8 %13, ptr %14, align 2
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %11, %6, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %11 ], [ 0, %6 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_page_scan_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3143) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 42
  store i8 %10, ptr %11, align 2
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i8 [ %13, %12 ], [ %4, %3 ]
  ret i8 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_data_block_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_data_block_size, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 130
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hci_rp_read_data_block_size, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 129
  store i16 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_rp_read_data_block_size, ptr %1, i32 0, i32 3
  %14 = load i16, ptr %13, align 1
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 131
  store i16 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 132
  store i16 %14, ptr %16, align 2
  %17 = load i8, ptr %1, align 1
  br label %18

18:                                               ; preds = %6, %3
  %19 = phi i8 [ %17, %6 ], [ %4, %3 ]
  ret i8 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_flow_control_mode(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_flow_control_mode, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 116
  store i8 %8, ptr %9, align 8
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_amp_info(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 105
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 106
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 1
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 107
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 108
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 109
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 110
  store i8 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 7
  %26 = load i16, ptr %25, align 1
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 111
  store i16 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 8
  %29 = load i16, ptr %28, align 1
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 112
  store i16 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 10
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 114
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.hci_rp_read_local_amp_info, ptr %1, i32 0, i32 9
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 113
  store i32 %35, ptr %36, align 8
  %37 = load i8, ptr %1, align 1
  br label %38

38:                                               ; preds = %6, %3
  %39 = phi i8 [ %37, %6 ], [ %4, %3 ]
  ret i8 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_clock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 5127) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_cp_read_clock, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_rp_read_clock, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 78
  store i32 %16, ptr %17, align 4
  br label %40

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.hci_rp_read_clock, ptr %1, i32 0, i32 1
  %20 = load i16, ptr %19, align 1
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %22

22:                                               ; preds = %26, %18
  %23 = phi ptr [ %21, %18 ], [ %24, %26 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 11
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, %20
  br i1 %29, label %31, label %22

30:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %40

31:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %32 = icmp eq ptr %24, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hci_rp_read_clock, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 49
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.hci_rp_read_clock, ptr %1, i32 0, i32 3
  %38 = load i16, ptr %37, align 1
  %39 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 50
  store i16 %38, ptr %39, align 8
  br label %40

40:                                               ; preds = %33, %31, %30, %14, %6
  tail call void @mutex_unlock(ptr noundef %7) #15
  %41 = load i8, ptr %1, align 1
  br label %42

42:                                               ; preds = %40, %3
  %43 = phi i8 [ %41, %40 ], [ %4, %3 ]
  ret i8 %43
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_inq_rsp_tx_power(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_inq_rsp_tx_power, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 38
  store i8 %8, ptr %9, align 1
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_def_err_data_reporting(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_read_def_err_data_reporting, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 39
  store i8 %8, ptr %9, align 4
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_def_err_data_reporting(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3163) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 39
  store i8 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i8 [ %4, %3 ], [ %13, %12 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_pin_code_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_pin_code_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  tail call void @mgmt_pin_code_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext %11) #15
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i8, ptr %1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1037) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %34, label %22

22:                                               ; preds = %31, %18
  %23 = phi ptr [ %32, %31 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 14
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 2
  %29 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %28, ptr noundef nonnull dereferenceable(6) %16, i32 6) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %22
  %32 = load volatile ptr, ptr %23, align 4
  %33 = icmp eq ptr %32, %19
  br i1 %33, label %34, label %22

34:                                               ; preds = %31, %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %41

35:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %36 = icmp eq ptr %23, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.hci_cp_pin_code_reply, ptr %16, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 26
  store i8 %39, ptr %40, align 2
  br label %41

41:                                               ; preds = %37, %35, %34, %15, %12
  tail call void @mutex_unlock(ptr noundef %4) #15
  %42 = load i8, ptr %1, align 1
  ret i8 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_pin_code_neg_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_pin_code_neg_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  tail call void @mgmt_pin_code_neg_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext %11) #15
  br label %12

12:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  %13 = load i8, ptr %1, align 1
  ret i8 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_oob_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #8 {
  %4 = load i8, ptr %1, align 1
  ret i8 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_read_local_oob_ext_data(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #8 {
  %4 = load i8, ptr %1, align 1
  ret i8 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_buffer_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_buffer_size, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 125
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_rp_le_read_buffer_size, ptr %1, i32 0, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 128
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 122
  store i32 %13, ptr %15, align 8
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %6, %3
  %18 = phi i8 [ %16, %6 ], [ %4, %3 ]
  ret i8 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_local_features(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %8 = getelementptr inbounds %struct.hci_rp_le_read_local_features, ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  store i64 %9, ptr %7, align 2
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_adv_tx_power(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_adv_tx_power, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 208
  store i8 %8, ptr %9, align 8
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_user_confirm_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_user_confirm_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  %12 = tail call i32 @mgmt_user_confirm_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %11) #15
  br label %13

13:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  %14 = load i8, ptr %1, align 1
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_user_confirm_neg_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_user_confirm_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  %12 = tail call i32 @mgmt_user_confirm_neg_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %11) #15
  br label %13

13:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  %14 = load i8, ptr %1, align 1
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_user_passkey_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_user_confirm_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  %12 = tail call i32 @mgmt_user_passkey_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %11) #15
  br label %13

13:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  %14 = load i8, ptr %1, align 1
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_user_passkey_neg_reply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_rp_user_confirm_reply, ptr %1, i32 0, i32 1
  %11 = load i8, ptr %1, align 1
  %12 = tail call i32 @mgmt_user_passkey_neg_reply_complete(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %11) #15
  br label %13

13:                                               ; preds = %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #15
  %14 = load i8, ptr %1, align 1
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_random_addr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8197) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %11, ptr noundef nonnull align 1 dereferenceable(6) %7, i32 6, i1 false) #15
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %16) #15
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 222
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 221
  %21 = load i32, ptr %20, align 8
  %22 = mul i32 %21, 1000
  %23 = tail call i32 @__msecs_to_jiffies(i32 noundef %22) #15
  %24 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19, i32 noundef %23) #15
  br label %25

25:                                               ; preds = %15, %9
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %26

26:                                               ; preds = %25, %6
  %27 = load i8, ptr %1, align 1
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i8 [ %4, %3 ], [ %27, %26 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_adv_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8202) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %12, label %46, label %14

14:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 13, ptr noundef %13) #15
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %35, label %18

18:                                               ; preds = %32, %14
  %19 = phi ptr [ %33, %32 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 14
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, -128
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 12
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 5
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 47
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27, %23, %18
  %33 = load volatile ptr, ptr %19, align 4
  %34 = icmp eq ptr %33, %15
  br i1 %34, label %35, label %18

35:                                               ; preds = %32, %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %47

36:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %37 = icmp eq ptr %19, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 61
  %42 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 32
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %40, ptr noundef %41, i32 noundef %44) #15
  br label %47

46:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %13) #15
  br label %47

47:                                               ; preds = %46, %38, %36, %35
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i8, ptr %1, align 1
  br label %50

50:                                               ; preds = %48, %3
  %51 = phi i8 [ %4, %3 ], [ %49, %48 ]
  ret i8 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_scan_param(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8203) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = load i8, ptr %7, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  store i8 %11, ptr %12, align 8
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i8, ptr %1, align 1
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i8 [ %4, %3 ], [ %14, %13 ]
  ret i8 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_scan_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8204) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  tail call fastcc void @le_set_scan_enable_complete(ptr noundef %0, i8 noundef zeroext %10)
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8, ptr %1, align 1
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i8 [ %4, %3 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_accept_list_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_accept_list_size, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 23
  store i8 %8, ptr %9, align 2
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_clear_accept_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  tail call void @hci_bdaddr_list_clear(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ %4, %3 ]
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_add_to_accept_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8209) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  %11 = getelementptr inbounds %struct.hci_cp_le_add_to_accept_list, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = tail call i32 @hci_bdaddr_list_add(ptr noundef %10, ptr noundef %11, i8 noundef zeroext %12) #15
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_del_from_accept_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8210) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  %11 = getelementptr inbounds %struct.hci_cp_le_del_from_accept_list, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = tail call i32 @hci_bdaddr_list_del(ptr noundef %10, ptr noundef %11, i8 noundef zeroext %12) #15
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_supported_states(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 26
  %8 = getelementptr inbounds %struct.hci_rp_le_read_supported_states, ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 1
  store i64 %9, ptr %7, align 1
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_def_data_len(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_def_data_len, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 61
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hci_rp_le_read_def_data_len, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 62
  store i16 %11, ptr %12, align 8
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i8 [ %13, %6 ], [ %4, %3 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_write_def_data_len(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8228) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i16, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 61
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.hci_cp_le_write_def_data_len, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 62
  store i16 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %9, %6
  %16 = load i8, ptr %1, align 1
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i8 [ %4, %3 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_add_to_resolv_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8231) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  %11 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %7, i32 0, i32 2
  %14 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %7, i32 0, i32 3
  %15 = tail call i32 @hci_bdaddr_list_add_with_irk(ptr noundef %10, ptr noundef %11, i8 noundef zeroext %12, ptr noundef %13, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %9, %6
  %17 = load i8, ptr %1, align 1
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i8 [ %4, %3 ], [ %17, %16 ]
  ret i8 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_del_from_resolv_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8232) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  %11 = getelementptr inbounds %struct.hci_cp_le_del_from_resolv_list, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = tail call i32 @hci_bdaddr_list_del_with_irk(ptr noundef %10, ptr noundef %11, i8 noundef zeroext %12) #15
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_clear_resolv_list(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  tail call void @hci_bdaddr_list_clear(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ %4, %3 ]
  ret i8 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_resolv_list_size(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_resolv_list_size, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 24
  store i8 %8, ptr %9, align 1
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_addr_resolution_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8237) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %12, label %15, label %14

14:                                               ; preds = %9
  tail call void @_set_bit(i32 noundef 40, ptr noundef %13) #15
  br label %16

15:                                               ; preds = %9
  tail call void @_clear_bit(i32 noundef 40, ptr noundef %13) #15
  br label %16

16:                                               ; preds = %15, %14
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i8 [ %4, %3 ], [ %18, %17 ]
  ret i8 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_max_data_len(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_max_data_len, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 63
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hci_rp_le_read_max_data_len, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 64
  store i16 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_rp_le_read_max_data_len, ptr %1, i32 0, i32 3
  %14 = load i16, ptr %13, align 1
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 65
  store i16 %14, ptr %15, align 2
  %16 = getelementptr inbounds %struct.hci_rp_le_read_max_data_len, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 66
  store i16 %17, ptr %18, align 8
  %19 = load i8, ptr %1, align 1
  br label %20

20:                                               ; preds = %6, %3
  %21 = phi i8 [ %19, %6 ], [ %4, %3 ]
  ret i8 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_le_host_supported(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3181) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %14 = load i8, ptr %13, align 2
  br i1 %12, label %18, label %15

15:                                               ; preds = %9
  %16 = or i8 %14, 2
  store i8 %16, ptr %13, align 2
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 23, ptr noundef %17) #15
  br label %21

18:                                               ; preds = %9
  %19 = and i8 %14, -3
  store i8 %19, ptr %13, align 2
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %20) #15
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %20) #15
  br label %21

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, ptr %7, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  %25 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %26 = load i8, ptr %25, align 2
  %27 = and i8 %26, -5
  %28 = select i1 %24, i8 0, i8 4
  %29 = or i8 %27, %28
  store i8 %29, ptr %25, align 2
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %30

30:                                               ; preds = %21, %6
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %30 ]
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_set_adv_param(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8198) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %7, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 12
  store i8 %12, ptr %13, align 2
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_rssi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_rp_read_rssi, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %26

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_rp_read_rssi, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 44
  store i8 %24, ptr %25, align 2
  br label %26

26:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  %27 = load i8, ptr %1, align 1
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i8 [ %27, %26 ], [ %4, %3 ]
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_read_tx_power(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 3117) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_rp_read_tx_power, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %14

14:                                               ; preds = %18, %9
  %15 = phi ptr [ %13, %9 ], [ %16, %18 ]
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 11
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, %12
  br i1 %21, label %23, label %14

22:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %36

23:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %24 = icmp eq ptr %16, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.hci_cp_read_tx_power, ptr %7, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  switch i8 %27, label %36 [
    i8 0, label %28
    i8 1, label %32
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hci_rp_read_tx_power, ptr %1, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 45
  store i8 %30, ptr %31, align 1
  br label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.hci_rp_read_tx_power, ptr %1, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 46
  store i8 %34, ptr %35, align 8
  br label %36

36:                                               ; preds = %32, %28, %25, %23, %22
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %37

37:                                               ; preds = %36, %6
  %38 = load i8, ptr %1, align 1
  br label %39

39:                                               ; preds = %37, %3
  %40 = phi i8 [ %4, %3 ], [ %38, %37 ]
  ret i8 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_write_ssp_debug_mode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 6148) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 76
  store i8 %10, ptr %11, align 1
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i8 [ %13, %12 ], [ %4, %3 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_ext_scan_param(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8257) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %7, i32 0, i32 3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #15
  %12 = load i8, ptr %10, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  store i8 %12, ptr %13, align 8
  tail call void @mutex_unlock(ptr noundef %11) #15
  br label %14

14:                                               ; preds = %9, %6
  %15 = load i8, ptr %1, align 1
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i8 [ %4, %3 ], [ %15, %14 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_ext_scan_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8258) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  tail call fastcc void @le_set_scan_enable_complete(ptr noundef %0, i8 noundef zeroext %10)
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8, ptr %1, align 1
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi i8 [ %4, %3 ], [ %12, %11 ]
  ret i8 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_default_phy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8241) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 136
  store i8 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %7, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  store i8 %15, ptr %16, align 1
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %17

17:                                               ; preds = %9, %6
  %18 = load i8, ptr %1, align 1
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi i8 [ %4, %3 ], [ %18, %17 ]
  ret i8 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_num_adv_sets(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_num_supported_adv_sets, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 25
  store i8 %8, ptr %9, align 8
  %10 = load i8, ptr %1, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  ret i8 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_set_ext_adv_param(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8246) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %7, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 12
  store i8 %12, ptr %13, align 2
  %14 = load i8, ptr %7, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 208
  store i8 %18, ptr %19, align 8
  br label %27

20:                                               ; preds = %9
  %21 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %14) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hci_rp_le_set_ext_adv_params, ptr %1, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.adv_info, ptr %21, i32 0, i32 12
  store i8 %25, ptr %26, align 1
  br label %27

27:                                               ; preds = %23, %20, %16
  %28 = load i8, ptr %7, align 1
  %29 = tail call i32 @hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext %28) #15
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %30

30:                                               ; preds = %27, %6
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %30 ]
  ret i8 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_ext_adv_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %90

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8249) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %88, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %7, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %16) #15
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi ptr [ %17, %14 ], [ null, %9 ]
  %20 = load i8, ptr %7, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 13, ptr noundef %23) #15
  %24 = icmp eq ptr %19, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 1
  store i8 1, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %48, label %31

31:                                               ; preds = %45, %27
  %32 = phi ptr [ %46, %45 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 14
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, -128
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 12
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 5
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 47
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 2097152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %36, %31
  %46 = load volatile ptr, ptr %32, align 4
  %47 = icmp eq ptr %46, %28
  br i1 %47, label %48, label %31

48:                                               ; preds = %45, %27
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %87

49:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %50 = icmp eq ptr %32, null
  br i1 %50, label %87, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 61
  %55 = getelementptr inbounds %struct.hci_conn, ptr %32, i32 0, i32 32
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %53, ptr noundef %54, i32 noundef %57) #15
  br label %87

59:                                               ; preds = %18
  %60 = load i8, ptr %11, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %59
  %63 = icmp eq ptr %19, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 1
  store i8 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %68

68:                                               ; preds = %72, %66
  %69 = phi ptr [ %67, %66 ], [ %70, %72 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %67
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.adv_info, ptr %70, i32 0, i32 1
  %74 = load i8, ptr %73, align 4, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %68, label %87

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %85, label %80

80:                                               ; preds = %80, %76
  %81 = phi ptr [ %82, %80 ], [ %78, %76 ]
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.adv_info, ptr %81, i32 0, i32 1
  store i8 0, ptr %83, align 4
  %84 = icmp eq ptr %82, %77
  br i1 %84, label %85, label %80

85:                                               ; preds = %80, %76, %68
  %86 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %86) #15
  br label %87

87:                                               ; preds = %85, %72, %51, %49, %48
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %88

88:                                               ; preds = %87, %6
  %89 = load i8, ptr %1, align 1
  br label %90

90:                                               ; preds = %88, %3
  %91 = phi i8 [ %4, %3 ], [ %89, %88 ]
  ret i8 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_adv_set_random_addr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8245) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %7, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #15
  %14 = load i8, ptr %7, align 1
  %15 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %14) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.adv_info, ptr %15, i32 0, i32 15
  %19 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, ptr %7, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %18, ptr noundef align 1 dereferenceable(6) %19, i32 6, i1 false) #15
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %20, ptr noundef dereferenceable(6) %19, i32 6)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.adv_info, ptr %15, i32 0, i32 16
  store i8 0, ptr %24, align 2
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.adv_info, ptr %15, i32 0, i32 17
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 221
  %29 = load i32, ptr %28, align 8
  %30 = mul i32 %29, 1000
  %31 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #15
  %32 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27, i32 noundef %31) #15
  br label %33

33:                                               ; preds = %23, %17, %12
  tail call void @mutex_unlock(ptr noundef %13) #15
  br label %34

34:                                               ; preds = %33, %9, %6
  %35 = load i8, ptr %1, align 1
  br label %36

36:                                               ; preds = %34, %3
  %37 = phi i8 [ %4, %3 ], [ %35, %34 ]
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_remove_adv_set(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8252) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = load i8, ptr %7, align 1
  %12 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = load i8, ptr %7, align 1
  tail call void @mgmt_advertising_removed(ptr noundef %18, ptr noundef %0, i8 noundef zeroext %19) #15
  br label %20

20:                                               ; preds = %14, %9
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %21

21:                                               ; preds = %20, %6
  %22 = load i8, ptr %1, align 1
  br label %23

23:                                               ; preds = %21, %3
  %24 = phi i8 [ %4, %3 ], [ %22, %21 ]
  ret i8 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_clear_adv_sets(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8253) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  br label %16

16:                                               ; preds = %27, %14
  %17 = phi ptr [ %12, %14 ], [ %18, %27 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.adv_info, ptr %17, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %20) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load ptr, ptr %15, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 3, i32 8
  %26 = load ptr, ptr %25, align 8
  tail call void @mgmt_advertising_removed(ptr noundef %26, ptr noundef %0, i8 noundef zeroext %20) #15
  br label %27

27:                                               ; preds = %23, %16
  %28 = icmp eq ptr %18, %11
  br i1 %28, label %29, label %16

29:                                               ; preds = %27, %9
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %30

30:                                               ; preds = %29, %6
  %31 = load i8, ptr %1, align 1
  br label %32

32:                                               ; preds = %30, %3
  %33 = phi i8 [ %4, %3 ], [ %31, %30 ]
  ret i8 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hci_cc_le_read_transmit_power(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #9 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_rp_le_read_transmit_power, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 96
  store i8 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hci_rp_le_read_transmit_power, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 97
  store i8 %11, ptr %12, align 1
  %13 = load i8, ptr %1, align 1
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i8 [ %13, %6 ], [ %4, %3 ]
  ret i8 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @hci_cc_le_set_privacy_mode(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8270) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.hci_cp_le_set_privacy_mode, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %7, align 1
  %13 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %11, i8 noundef zeroext %12) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.hci_cp_le_set_privacy_mode, ptr %7, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.hci_conn_params, ptr %13, i32 0, i32 12
  store i8 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  tail call void @mutex_unlock(ptr noundef %10) #15
  br label %20

20:                                               ; preds = %19, %6
  %21 = load i8, ptr %1, align 1
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i8 [ %4, %3 ], [ %21, %20 ]
  ret i8 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_sent_cmd_data(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_bdaddr_list_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_set_local_name_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_auth_enable_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_set_class_of_dev_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pin_code_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pin_code_neg_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_confirm_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_confirm_neg_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_neg_reply_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @le_set_scan_enable_complete(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  switch i8 %1, label %35 [
    i8 1, label %5
    i8 0, label %13
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 14, ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  store i8 0, ptr %12, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %11, i8 0, i64 6, i1 false) #15
  br label %38

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3)
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #15
  %15 = call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef nonnull dereferenceable(6) %3, i32 6) #15
  %16 = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3)
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 7
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 10
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %14, i8 noundef zeroext -128, i8 noundef zeroext %19, ptr noundef null, i8 noundef signext %21, i32 noundef %23, ptr noundef %24, i16 noundef zeroext %27, ptr noundef null, i8 noundef zeroext 0) #15
  br label %28

28:                                               ; preds = %17, %13
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157
  %30 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %29) #15
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %31) #15
  %32 = tail call i32 @_test_and_clear_bit(i32 noundef 33, ptr noundef %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #15
  br label %38

35:                                               ; preds = %2
  %36 = zext i8 %1 to i32
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %37, i32 noundef %36) #15
  br label %38

38:                                               ; preds = %35, %34, %28, %10, %5
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add_with_irk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_del_with_irk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_update_adv_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_advertising_removed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_inquiry(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @hci_conn_check_pending(ptr noundef %0) #15
  br label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 7, ptr noundef %6) #15
  br label %7

7:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_create_conn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1029) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %25, label %10

10:                                               ; preds = %19, %5
  %11 = phi ptr [ %20, %19 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 2
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef nonnull dereferenceable(6) %3, i32 6) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load volatile ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %25, label %10

22:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %23 = icmp eq i8 %1, 0
  %24 = icmp eq ptr %11, null
  br i1 %23, label %58, label %27

25:                                               ; preds = %19, %5
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %26 = icmp eq i8 %1, 0
  br i1 %26, label %59, label %64

27:                                               ; preds = %22
  br i1 %24, label %64, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 5
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = icmp eq i8 %1, 12
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 17
  %36 = load i8, ptr %35, align 2
  %37 = icmp ugt i8 %36, 2
  br i1 %37, label %38, label %57

38:                                               ; preds = %34, %32
  store i16 9, ptr %29, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = load ptr, ptr @hci_cb_list, align 4
  %40 = icmp eq ptr %39, @hci_cb_list
  br i1 %40, label %50, label %41

41:                                               ; preds = %47, %38
  %42 = phi ptr [ %48, %47 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.hci_cb, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void %44(ptr noundef nonnull %11, i8 noundef zeroext %1) #15
  br label %47

47:                                               ; preds = %46, %41
  %48 = load ptr, ptr %42, align 4
  %49 = icmp eq ptr %48, @hci_cb_list
  br i1 %49, label %50, label %41

50:                                               ; preds = %47, %38
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %51 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 71
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void %52(ptr noundef nonnull %11, i8 noundef zeroext %1) #15
  br label %55

55:                                               ; preds = %54, %50
  %56 = tail call i32 @hci_conn_del(ptr noundef nonnull %11) #15
  br label %64

57:                                               ; preds = %34
  store i16 6, ptr %29, align 4
  br label %64

58:                                               ; preds = %22
  br i1 %24, label %59, label %64

59:                                               ; preds = %58, %25
  %60 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %63) #15
  br label %64

64:                                               ; preds = %62, %59, %58, %57, %55, %28, %27, %25
  tail call void @mutex_unlock(ptr noundef %6) #15
  br label %65

65:                                               ; preds = %64, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_disconnect(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %105, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1030) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %105, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #15
  %13 = load i16, ptr %9, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %15

15:                                               ; preds = %19, %11
  %16 = phi ptr [ %14, %11 ], [ %17, %19 ]
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 11
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, %13
  br i1 %22, label %24, label %15

23:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %104

24:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %25 = icmp eq ptr %17, null
  br i1 %25, label %104, label %26

26:                                               ; preds = %24
  br i1 %3, label %44, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 2
  %29 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  tail call void @mgmt_disconnect_failed(ptr noundef %0, ptr noundef %28, i8 noundef zeroext %30, i8 noundef zeroext %32, i8 noundef zeroext %1) #15
  %33 = load i8, ptr %29, align 1
  %34 = icmp eq i8 %33, -128
  br i1 %34, label %35, label %102

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 15
  %37 = load i8, ptr %36, align 8
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %102

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 10
  %41 = load i8, ptr %40, align 8
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 %41, ptr %42, align 8
  %43 = tail call i32 @hci_enable_advertising(ptr noundef %0) #15
  br label %102

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 47
  %46 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %45) #15
  %47 = icmp ne i32 %46, 0
  %48 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 14
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load volatile i32, ptr %45, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 2
  %57 = tail call i32 @hci_remove_link_key(ptr noundef %0, ptr noundef %56) #15
  br label %58

58:                                               ; preds = %55, %51, %44
  %59 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 2
  %60 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 3
  %61 = load i8, ptr %60, align 2
  %62 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %59, i8 noundef zeroext %61) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.hci_conn_params, ptr %62, i32 0, i32 8
  %66 = load i32, ptr %65, align 4
  switch i32 %66, label %80 [
    i32 4, label %67
    i32 2, label %71
    i32 3, label %71
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hci_cp_disconnect, ptr %9, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 8
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %64, %64
  %72 = getelementptr inbounds %struct.hci_conn_params, ptr %62, i32 0, i32 1
  %73 = getelementptr inbounds %struct.hci_conn_params, ptr %62, i32 0, i32 1, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %75, ptr %74, align 4
  store volatile ptr %72, ptr %72, align 4
  store ptr %72, ptr %73, align 4
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %72, ptr %79, align 4
  store ptr %78, ptr %72, align 4
  store ptr %77, ptr %73, align 4
  store volatile ptr %72, ptr %77, align 4
  br label %80

80:                                               ; preds = %71, %67, %64, %58
  %81 = load i8, ptr %48, align 1
  %82 = load i8, ptr %60, align 2
  %83 = getelementptr inbounds %struct.hci_cp_disconnect, ptr %9, i32 0, i32 1
  %84 = load i8, ptr %83, align 1
  tail call void @mgmt_device_disconnected(ptr noundef %0, ptr noundef %59, i8 noundef zeroext %81, i8 noundef zeroext %82, i8 noundef zeroext %84, i1 noundef zeroext %47) #15
  %85 = load i8, ptr %83, align 1
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %86 = load ptr, ptr @hci_cb_list, align 4
  %87 = icmp eq ptr %86, @hci_cb_list
  br i1 %87, label %97, label %88

88:                                               ; preds = %94, %80
  %89 = phi ptr [ %95, %94 ], [ %86, %80 ]
  %90 = getelementptr inbounds %struct.hci_cb, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call void %91(ptr noundef nonnull %17, i8 noundef zeroext %85) #15
  br label %94

94:                                               ; preds = %93, %88
  %95 = load ptr, ptr %89, align 4
  %96 = icmp eq ptr %95, @hci_cb_list
  br i1 %96, label %97, label %88

97:                                               ; preds = %94, %80
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %98 = getelementptr inbounds %struct.hci_conn, ptr %17, i32 0, i32 73
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void %99(ptr noundef nonnull %17, i8 noundef zeroext %85) #15
  br label %102

102:                                              ; preds = %101, %97, %39, %35, %27
  %103 = tail call i32 @hci_conn_del(ptr noundef nonnull %17) #15
  br label %104

104:                                              ; preds = %102, %24, %23
  tail call void @mutex_unlock(ptr noundef %12) #15
  br label %105

105:                                              ; preds = %104, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_add_sco(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1031) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %5, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %8
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %46

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 69
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 12
  store i16 9, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %28 = load ptr, ptr @hci_cb_list, align 4
  %29 = icmp eq ptr %28, @hci_cb_list
  br i1 %29, label %39, label %30

30:                                               ; preds = %36, %26
  %31 = phi ptr [ %37, %36 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.hci_cb, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %36

36:                                               ; preds = %35, %30
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, @hci_cb_list
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %40 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 71
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call i32 @hci_conn_del(ptr noundef nonnull %24) #15
  br label %46

46:                                               ; preds = %44, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %9) #15
  br label %47

47:                                               ; preds = %46, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_auth_requested(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1041) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %26
  %30 = phi ptr [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 71
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !16
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %69 [
    i8 1, label %51
    i8 -128, label %51
    i8 -127, label %65
  ]

51:                                               ; preds = %48, %48
  %52 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %52) #15
  %54 = load i16, ptr %23, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %48
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %51 ], [ 0, %48 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #15
  br label %78

78:                                               ; preds = %69, %43, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %79

79:                                               ; preds = %78, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_set_conn_encrypt(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1043) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %26
  %30 = phi ptr [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 71
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !16
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %69 [
    i8 1, label %51
    i8 -128, label %51
    i8 -127, label %65
  ]

51:                                               ; preds = %48, %48
  %52 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %52) #15
  %54 = load i16, ptr %23, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %48
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %51 ], [ 0, %48 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #15
  br label %78

78:                                               ; preds = %69, %43, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %79

79:                                               ; preds = %78, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_remote_name_req(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.hci_cp_auth_requested, align 2
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1049) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %23, %8
  %14 = phi ptr [ %24, %23 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef nonnull dereferenceable(6) %6, i32 6) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %27

23:                                               ; preds = %18, %13
  %24 = load volatile ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %26, label %13

26:                                               ; preds = %23, %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi ptr [ %14, %22 ], [ null, %26 ]
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call fastcc void @hci_check_pending_name(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 0)
  br label %34

34:                                               ; preds = %33, %27
  %35 = icmp eq ptr %28, null
  br i1 %35, label %76, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 12
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, 7
  br i1 %39, label %40, label %76

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 16
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %76, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 25
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 65
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hci_dev, ptr %50, i32 0, i32 206
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 32768
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 47
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55, %48
  %61 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 23
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 1
  %64 = icmp ne i8 %63, 0
  %65 = add i8 %46, -2
  %66 = icmp ult i8 %65, 3
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %60, %55
  %69 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 47
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %69) #15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  tail call void @_set_bit(i32 noundef 17, ptr noundef %69) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 11
  %74 = load i16, ptr %73, align 2
  store i16 %74, ptr %3, align 2
  %75 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 1041, i32 noundef 2, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %76

76:                                               ; preds = %72, %68, %60, %44, %40, %36, %34
  call void @mutex_unlock(ptr noundef %9) #15
  br label %77

77:                                               ; preds = %76, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_read_remote_features(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1051) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %26
  %30 = phi ptr [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 71
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !16
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %69 [
    i8 1, label %51
    i8 -128, label %51
    i8 -127, label %65
  ]

51:                                               ; preds = %48, %48
  %52 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %52) #15
  %54 = load i16, ptr %23, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %48
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %51 ], [ 0, %48 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #15
  br label %78

78:                                               ; preds = %69, %43, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %79

79:                                               ; preds = %78, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_read_remote_ext_features(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1052) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %26
  %30 = phi ptr [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 71
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !16
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %69 [
    i8 1, label %51
    i8 -128, label %51
    i8 -127, label %65
  ]

51:                                               ; preds = %48, %48
  %52 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %52) #15
  %54 = load i16, ptr %23, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %48
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %51 ], [ 0, %48 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #15
  br label %78

78:                                               ; preds = %69, %43, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %79

79:                                               ; preds = %78, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_setup_sync_conn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1064) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %5, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %8
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %46

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 69
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 12
  store i16 9, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %28 = load ptr, ptr @hci_cb_list, align 4
  %29 = icmp eq ptr %28, @hci_cb_list
  br i1 %29, label %39, label %30

30:                                               ; preds = %36, %26
  %31 = phi ptr [ %37, %36 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.hci_cb, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %36

36:                                               ; preds = %35, %30
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, @hci_cb_list
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %40 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 71
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call i32 @hci_conn_del(ptr noundef nonnull %24) #15
  br label %46

46:                                               ; preds = %44, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %9) #15
  br label %47

47:                                               ; preds = %46, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_enhanced_setup_sync_conn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 1085) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %5, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %8
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %46

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 69
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 12
  store i16 9, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %28 = load ptr, ptr @hci_cb_list, align 4
  %29 = icmp eq ptr %28, @hci_cb_list
  br i1 %29, label %39, label %30

30:                                               ; preds = %36, %26
  %31 = phi ptr [ %37, %36 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.hci_cb, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void %33(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %36

36:                                               ; preds = %35, %30
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, @hci_cb_list
  br i1 %38, label %39, label %30

39:                                               ; preds = %36, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %40 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 71
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void %41(ptr noundef nonnull %24, i8 noundef zeroext %1) #15
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call i32 @hci_conn_del(ptr noundef nonnull %24) #15
  br label %46

46:                                               ; preds = %44, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %9) #15
  br label %47

47:                                               ; preds = %46, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_sniff_mode(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 2051) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %27

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %23) #15
  %24 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @hci_sco_setup(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %27

27:                                               ; preds = %26, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %28

28:                                               ; preds = %27, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_exit_sniff_mode(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 2052) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %27

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %23) #15
  %24 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %23) #15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @hci_sco_setup(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %27

27:                                               ; preds = %26, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %28

28:                                               ; preds = %27, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_switch_role(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 2059) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %24, label %12

12:                                               ; preds = %21, %7
  %13 = phi ptr [ %22, %21 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef nonnull dereferenceable(6) %5, i32 6) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %12
  %22 = load volatile ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %24, label %12

24:                                               ; preds = %21, %7
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %29

25:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %26 = icmp eq ptr %13, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 47
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %28) #15
  br label %29

29:                                               ; preds = %27, %25, %24
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %30

30:                                               ; preds = %29, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_le_create_conn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8205) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %5, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %5, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %5, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  tail call fastcc void @cs_le_create_conn(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext %15)
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %16

16:                                               ; preds = %7, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_le_read_remote_features(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %79, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8214) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %79, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = load i16, ptr %5, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %7
  %12 = phi ptr [ %10, %7 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %78

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 7
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %27 = load ptr, ptr @hci_cb_list, align 4
  %28 = icmp eq ptr %27, @hci_cb_list
  br i1 %28, label %38, label %29

29:                                               ; preds = %35, %26
  %30 = phi ptr [ %36, %35 ], [ %27, %26 ]
  %31 = getelementptr inbounds %struct.hci_cb, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void %32(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load ptr, ptr %30, align 4
  %37 = icmp eq ptr %36, @hci_cb_list
  br i1 %37, label %38, label %29

38:                                               ; preds = %35, %26
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %39 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 71
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %13, i8 noundef zeroext %1) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !13
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !16
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %69 [
    i8 1, label %51
    i8 -128, label %51
    i8 -127, label %65
  ]

51:                                               ; preds = %48, %48
  %52 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %52) #15
  %54 = load i16, ptr %23, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !8
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %51, %48
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %51 ], [ 0, %48 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #15
  br label %78

78:                                               ; preds = %69, %43, %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %79

79:                                               ; preds = %78, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_le_start_enc(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %63, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8217) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %6, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %62

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %62, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %24 = load i16, ptr %23, align 4
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = tail call i32 @hci_disconnect(ptr noundef nonnull %13, i8 noundef zeroext 5) #15
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !13
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #15, !srcloc !16
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %34 = load i8, ptr %33, align 1
  switch i8 %34, label %53 [
    i8 1, label %35
    i8 -128, label %35
    i8 -127, label %49
  ]

35:                                               ; preds = %32, %32
  %36 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 60
  %37 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %36) #15
  %38 = load i16, ptr %23, align 4
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 16
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = xor i8 %45, 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %43, %47
  br label %53

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 31
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %49, %40, %35, %32
  %54 = phi i32 [ %52, %49 ], [ %48, %40 ], [ 0, %35 ], [ 0, %32 ]
  %55 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 58
  %56 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %55) #15
  %57 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 65
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.hci_dev, ptr %58, i32 0, i32 138
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %60, ptr noundef %55, i32 noundef %54) #15
  br label %62

62:                                               ; preds = %53, %26, %22, %20, %19, %4
  tail call void @mutex_unlock(ptr noundef %5) #15
  br label %63

63:                                               ; preds = %62, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cs_le_ext_create_conn(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = tail call ptr @hci_sent_cmd_data(ptr noundef %0, i16 noundef zeroext 8259) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %5, i32 0, i32 3
  %10 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %5, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %5, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = load i8, ptr %5, align 1
  tail call fastcc void @cs_le_create_conn(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext %14)
  tail call void @mutex_unlock(ptr noundef %8) #15
  br label %15

15:                                               ; preds = %7, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cs_le_create_conn(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %25, label %9

9:                                                ; preds = %22, %5
  %10 = phi ptr [ %23, %22 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, -128
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 2
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef dereferenceable(6) %1, i32 6) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %14, %9
  %23 = load volatile ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %9

25:                                               ; preds = %22, %5
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %56

26:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %27 = icmp eq ptr %10, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %26
  switch i8 %3, label %33 [
    i8 2, label %29
    i8 3, label %31
  ]

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 7
  store i8 0, ptr %30, align 8
  br label %39

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 7
  store i8 1, ptr %32, align 8
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 7
  store i8 %3, ptr %34, align 8
  %35 = icmp eq i8 %3, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33, %31
  %37 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 6
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %37, ptr noundef align 1 dereferenceable(6) %38, i32 6, i1 false) #15
  br label %42

39:                                               ; preds = %33, %29
  %40 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 6
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %40, ptr noundef align 1 dereferenceable(6) %41, i32 6, i1 false) #15
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 9
  store i8 %2, ptr %43, align 1
  %44 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %44, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #15
  %45 = icmp eq i8 %4, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.hci_dev, ptr %48, i32 0, i32 138
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 61
  %52 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 32
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %51, i32 noundef %54) #15
  br label %56

56:                                               ; preds = %46, %42, %26, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pin_code_request(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_link_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_link_key(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_setup_sync(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_remote_oob_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_confirm_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_request(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_user_passkey_notify(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_conn_complete_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 5
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 6
  %15 = load i16, ptr %14, align 1
  %16 = getelementptr inbounds %struct.hci_ev_le_conn_complete, ptr %1, i32 0, i32 7
  %17 = load i16, ptr %16, align 1
  tail call fastcc void @le_conn_complete_evt(ptr noundef %0, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %7, ptr noundef null, i8 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext %13, i16 noundef zeroext %15, i16 noundef zeroext %17)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_adv_report_evt(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = add i8 %8, -1
  store i8 %9, ptr %1, align 1
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %36, %11
  %14 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef 9) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hci_ev_le_advertising_info, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %19, 1
  %21 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %20) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i8, ptr %17, align 1
  %25 = icmp ult i8 %24, 32
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = zext i8 %24 to i32
  %28 = getelementptr inbounds %struct.hci_ev_le_advertising_info, ptr %14, i32 0, i32 4
  %29 = getelementptr %struct.hci_ev_le_advertising_info, ptr %14, i32 0, i32 4, i32 %27
  %30 = load i8, ptr %29, align 1
  %31 = load i8, ptr %14, align 1
  %32 = getelementptr inbounds %struct.hci_ev_le_advertising_info, ptr %14, i32 0, i32 2
  %33 = getelementptr inbounds %struct.hci_ev_le_advertising_info, ptr %14, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  tail call fastcc void @process_adv_report(ptr noundef %0, i8 noundef zeroext %31, ptr noundef %32, i8 noundef zeroext %34, ptr noundef null, i8 noundef zeroext 0, i8 noundef signext %30, ptr noundef %28, i8 noundef zeroext %24, i1 noundef zeroext false)
  br label %36

35:                                               ; preds = %23
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %12) #15
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8, ptr %1, align 1
  %38 = add i8 %37, -1
  store i8 %38, ptr %1, align 1
  %39 = icmp eq i8 %37, 0
  br i1 %39, label %41, label %13

40:                                               ; preds = %16, %13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %12, i32 noundef 2) #15
  br label %41

41:                                               ; preds = %40, %36, %6
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_conn_update_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_ev_le_conn_update_complete, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %32

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_ev_le_conn_update_complete, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 37
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_ev_le_conn_update_complete, ptr %1, i32 0, i32 3
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 38
  store i16 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hci_ev_le_conn_update_complete, ptr %1, i32 0, i32 4
  %30 = load i16, ptr %29, align 1
  %31 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 39
  store i16 %30, ptr %31, align 2
  br label %32

32:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %33

33:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_remote_feat_complete_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 11
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, %6
  br i1 %15, label %17, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %96

17:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %18 = icmp eq ptr %10, null
  br i1 %18, label %96, label %19

19:                                               ; preds = %17
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 19
  %24 = getelementptr inbounds %struct.hci_ev_le_remote_feat_complete, ptr %1, i32 0, i32 2
  %25 = load i64, ptr %24, align 1
  store i64 %25, ptr %23, align 2
  br label %26

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 12
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 7
  br i1 %29, label %30, label %96

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 16
  %32 = load i8, ptr %31, align 1, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = load i8, ptr %1, align 1
  %35 = icmp eq i8 %34, 26
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %30
  %43 = phi i8 [ 26, %37 ], [ %34, %30 ]
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi i8 [ %43, %42 ], [ 0, %37 ]
  store i16 1, ptr %27, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %46 = load ptr, ptr @hci_cb_list, align 4
  %47 = icmp eq ptr %46, @hci_cb_list
  br i1 %47, label %57, label %48

48:                                               ; preds = %54, %44
  %49 = phi ptr [ %55, %54 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.hci_cb, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void %51(ptr noundef nonnull %10, i8 noundef zeroext %45) #15
  br label %54

54:                                               ; preds = %53, %48
  %55 = load ptr, ptr %49, align 4
  %56 = icmp eq ptr %55, @hci_cb_list
  br i1 %56, label %57, label %48

57:                                               ; preds = %54, %44
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %58 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 71
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call void %59(ptr noundef nonnull %10, i8 noundef zeroext %45) #15
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #15, !srcloc !13
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #15, !srcloc !16
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 14
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %87 [
    i8 1, label %70
    i8 -128, label %70
    i8 -127, label %83
  ]

70:                                               ; preds = %67, %67
  %71 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 60
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #15
  %73 = load i16, ptr %27, align 4
  %74 = icmp eq i16 %73, 1
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = load i8, ptr %31, align 1, !range !8
  %80 = xor i8 %79, 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %78, %81
  br label %87

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 31
  %85 = load i16, ptr %84, align 2
  %86 = zext i16 %85 to i32
  br label %87

87:                                               ; preds = %83, %75, %70, %67
  %88 = phi i32 [ %86, %83 ], [ %82, %75 ], [ 0, %70 ], [ 0, %67 ]
  %89 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 58
  %90 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %89) #15
  %91 = getelementptr inbounds %struct.hci_conn, ptr %10, i32 0, i32 65
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.hci_dev, ptr %92, i32 0, i32 138
  %94 = load ptr, ptr %93, align 4
  %95 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %94, ptr noundef %89, i32 noundef %88) #15
  br label %96

96:                                               ; preds = %87, %62, %26, %17, %16
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_ltk_request_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_le_ltk_reply, align 2
  %5 = alloca %struct.hci_cp_le_ltk_neg_reply, align 2
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #15
  %6 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(18) %6, i8 0, i32 16, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i16, ptr %1, align 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %10

10:                                               ; preds = %14, %3
  %11 = phi ptr [ %9, %3 ], [ %12, %14 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 11
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, %8
  br i1 %17, label %19, label %10

18:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %88

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %12, null
  br i1 %21, label %88, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 2
  %24 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 3
  %25 = load i8, ptr %24, align 2
  %26 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 15
  %27 = load i8, ptr %26, align 8
  %28 = tail call ptr @hci_find_ltk(ptr noundef %0, ptr noundef %23, i8 noundef zeroext %25, i8 noundef zeroext %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %88, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 5
  %32 = load i8, ptr %31, align 8
  %33 = add i8 %32, -3
  %34 = icmp ult i8 %33, 2
  %35 = getelementptr inbounds %struct.hci_ev_le_ltk_req, ptr %1, i32 0, i32 2
  %36 = load i16, ptr %35, align 1
  br i1 %34, label %37, label %43

37:                                               ; preds = %30
  %38 = icmp eq i16 %36, 0
  br i1 %38, label %39, label %88

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.hci_ev_le_ltk_req, ptr %1, i32 0, i32 1
  %41 = load i64, ptr %40, align 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %53, label %88

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 7
  %45 = load i16, ptr %44, align 2
  %46 = icmp eq i16 %36, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hci_ev_le_ltk_req, ptr %1, i32 0, i32 1
  %49 = load i64, ptr %48, align 1
  %50 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 8
  %51 = load i64, ptr %50, align 8
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %47, %39
  %54 = getelementptr inbounds %struct.hci_cp_le_ltk_reply, ptr %4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 9
  %56 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 2 %54, ptr align 8 %55, i32 %58, i1 false)
  %59 = load i8, ptr %56, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr i8, ptr %54, i32 %60
  %62 = sub nsw i32 16, %60
  call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %62, i1 false)
  %63 = load i16, ptr %20, align 2
  store i16 %63, ptr %4, align 2
  %64 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = load i8, ptr %31, align 8
  %69 = add i8 %68, -3
  %70 = icmp ult i8 %69, 2
  %71 = select i1 %70, i8 4, i8 3
  br label %72

72:                                               ; preds = %67, %53
  %73 = phi i8 [ %71, %67 ], [ 2, %53 ]
  %74 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 25
  store i8 %73, ptr %74, align 1
  %75 = load i8, ptr %56, align 1
  %76 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 27
  store i8 %75, ptr %76, align 1
  %77 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8218, i32 noundef 18, ptr noundef nonnull %4) #15
  %78 = load i8, ptr %31, align 8
  %79 = icmp eq i8 %78, 0
  %80 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  br i1 %79, label %81, label %87

81:                                               ; preds = %72
  call void @_set_bit(i32 noundef 16, ptr noundef %80) #15
  %82 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %28, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %82, align 4
  %86 = getelementptr inbounds %struct.smp_ltk, ptr %28, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %86, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  br label %91

87:                                               ; preds = %72
  call void @_clear_bit(i32 noundef 16, ptr noundef %80) #15
  br label %91

88:                                               ; preds = %47, %43, %39, %37, %22, %19, %18
  %89 = load i16, ptr %1, align 1
  store i16 %89, ptr %5, align 2
  %90 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8219, i32 noundef 2, ptr noundef nonnull %5) #15
  br label %91

91:                                               ; preds = %88, %87, %81
  call void @mutex_unlock(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_remote_conn_param_req_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.hci_cp_le_conn_param_req_neg_reply, align 2
  %5 = alloca %struct.hci_cp_le_conn_param_req_neg_reply, align 2
  %6 = alloca %struct.hci_cp_le_conn_param_req_reply, align 2
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %6) #15
  %7 = load i16, ptr %1, align 1
  %8 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, ptr %1, i32 0, i32 2
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, ptr %1, i32 0, i32 3
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_ev_le_remote_conn_param_req, ptr %1, i32 0, i32 4
  %15 = load i16, ptr %14, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %17

17:                                               ; preds = %21, %3
  %18 = phi ptr [ %16, %3 ], [ %19, %21 ]
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 11
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, %7
  br i1 %24, label %26, label %17

25:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %32

26:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %27 = icmp eq ptr %19, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %26, %25
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #15
  store i16 %7, ptr %5, align 2
  %33 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_neg_reply, ptr %5, i32 0, i32 1
  store i8 2, ptr %33, align 2
  %34 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8225, i32 noundef 3, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #15
  br label %93

35:                                               ; preds = %28
  %36 = zext i16 %11 to i32
  %37 = icmp ugt i16 %9, %11
  %38 = icmp ult i16 %9, 6
  %39 = or i1 %38, %37
  %40 = icmp ugt i16 %11, 3200
  %41 = or i1 %40, %39
  br i1 %41, label %58, label %42

42:                                               ; preds = %35
  %43 = zext i16 %15 to i32
  %44 = add i16 %15, -3201
  %45 = icmp ult i16 %44, -3191
  %46 = shl nuw nsw i32 %43, 3
  %47 = icmp ule i32 %46, %36
  %48 = select i1 %45, i1 true, i1 %47
  %49 = icmp ugt i16 %13, 499
  %50 = or i1 %49, %48
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = zext i16 %13 to i32
  %53 = shl nuw nsw i32 %43, 2
  %54 = udiv i32 %53, %36
  %55 = add nuw nsw i32 %54, 65535
  %56 = and i32 %55, 65535
  %57 = icmp ult i32 %56, %52
  br i1 %57, label %58, label %61

58:                                               ; preds = %51, %42, %35
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #15
  store i16 %7, ptr %4, align 2
  %59 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_neg_reply, ptr %4, i32 0, i32 1
  store i8 30, ptr %59, align 2
  %60 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8225, i32 noundef 3, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #15
  br label %93

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 15
  %63 = load i8, ptr %62, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %66) #15
  %67 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 2
  %68 = getelementptr inbounds %struct.hci_conn, ptr %19, i32 0, i32 3
  %69 = load i8, ptr %68, align 2
  %70 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %67, i8 noundef zeroext %69) #15
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hci_conn_params, ptr %70, i32 0, i32 4
  store i16 %9, ptr %73, align 4
  %74 = getelementptr inbounds %struct.hci_conn_params, ptr %70, i32 0, i32 5
  store i16 %11, ptr %74, align 2
  %75 = getelementptr inbounds %struct.hci_conn_params, ptr %70, i32 0, i32 6
  store i16 %13, ptr %75, align 4
  %76 = getelementptr inbounds %struct.hci_conn_params, ptr %70, i32 0, i32 7
  store i16 %15, ptr %76, align 2
  br label %77

77:                                               ; preds = %72, %65
  %78 = phi i8 [ 1, %72 ], [ 0, %65 ]
  tail call void @mutex_unlock(ptr noundef %66) #15
  %79 = load i8, ptr %68, align 2
  tail call void @mgmt_new_conn_param(ptr noundef %0, ptr noundef %67, i8 noundef zeroext %79, i8 noundef zeroext %78, i16 noundef zeroext %9, i16 noundef zeroext %11, i16 noundef zeroext %13, i16 noundef zeroext %15) #15
  br label %80

80:                                               ; preds = %77, %61
  %81 = load i16, ptr %1, align 1
  store i16 %81, ptr %6, align 2
  %82 = load i16, ptr %8, align 1
  %83 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 1
  store i16 %82, ptr %83, align 2
  %84 = load i16, ptr %10, align 1
  %85 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 2
  store i16 %84, ptr %85, align 2
  %86 = load i16, ptr %12, align 1
  %87 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 3
  store i16 %86, ptr %87, align 2
  %88 = load i16, ptr %14, align 1
  %89 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 4
  store i16 %88, ptr %89, align 2
  %90 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 5
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.hci_cp_le_conn_param_req_reply, ptr %6, i32 0, i32 6
  store i16 0, ptr %91, align 2
  %92 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8224, i32 noundef 14, ptr noundef nonnull %6) #15
  br label %93

93:                                               ; preds = %80, %58, %32
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_enh_conn_complete_evt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 5
  %9 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 7
  %14 = load i16, ptr %13, align 1
  %15 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 8
  %16 = load i16, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_ev_le_enh_conn_complete, ptr %1, i32 0, i32 9
  %18 = load i16, ptr %17, align 1
  tail call fastcc void @le_conn_complete_evt(ptr noundef %0, i8 noundef zeroext %4, ptr noundef %5, i8 noundef zeroext %7, ptr noundef %8, i8 noundef zeroext %10, i16 noundef zeroext %12, i16 noundef zeroext %14, i16 noundef zeroext %16, i16 noundef zeroext %18)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_direct_adv_report_evt(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 4
  %7 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %10, i32 noundef 11) #15
  br label %35

11:                                               ; preds = %3
  %12 = load i8, ptr %1, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #15
  %16 = load i8, ptr %1, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %30, %18 ], [ 0, %14 ]
  %20 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19, i32 2
  %23 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19, i32 4
  %26 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr %struct.hci_ev_le_direct_adv_report, ptr %1, i32 0, i32 1, i32 %19, i32 5
  %29 = load i8, ptr %28, align 1
  tail call fastcc void @process_adv_report(ptr noundef %0, i8 noundef zeroext %21, ptr noundef %22, i8 noundef zeroext %24, ptr noundef %25, i8 noundef zeroext %27, i8 noundef signext %29, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext false)
  %30 = add nuw nsw i32 %19, 1
  %31 = load i8, ptr %1, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %18, label %34

34:                                               ; preds = %18, %14
  tail call void @mutex_unlock(ptr noundef %15) #15
  br label %35

35:                                               ; preds = %34, %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_phy_update_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.hci_ev_le_phy_update_complete, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %11

11:                                               ; preds = %15, %6
  %12 = phi ptr [ %10, %6 ], [ %13, %15 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 11
  %17 = load i16, ptr %16, align 2
  %18 = icmp eq i16 %17, %9
  br i1 %18, label %20, label %11

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %29

20:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %21 = icmp eq ptr %13, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.hci_ev_le_phy_update_complete, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 42
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.hci_ev_le_phy_update_complete, ptr %1, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 43
  store i8 %27, ptr %28, align 1
  br label %29

29:                                               ; preds = %22, %20, %19
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %30

30:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_ext_adv_report_evt(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = load i8, ptr %1, align 1
  %9 = add i8 %8, -1
  store i8 %9, ptr %1, align 1
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %73, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %68, %11
  %14 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef 24) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hci_ev_le_ext_adv_info, ptr %14, i32 0, i32 11
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @skb_pull_data(ptr noundef %2, i32 noundef %19) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %16
  %23 = load i16, ptr %14, align 1
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add i16 %23, -16
  %29 = icmp ult i16 %28, 12
  br i1 %29, label %49, label %48

30:                                               ; preds = %22
  %31 = and i32 %24, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = trunc i16 %23 to i8
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 1
  br label %57

37:                                               ; preds = %30
  %38 = and i32 %24, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = and i32 %24, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = icmp ne i16 %23, 0
  %45 = and i32 %24, 4
  %46 = icmp eq i32 %45, 0
  %47 = and i1 %44, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %49, %43, %27
  tail call void (ptr, ...) @bt_err_ratelimited(ptr noundef nonnull @.str.29, ptr noundef %12, i32 noundef %24) #15
  br label %68

49:                                               ; preds = %27
  %50 = lshr i16 3117, %28
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %48, label %53

53:                                               ; preds = %49
  %54 = sext i16 %28 to i32
  %55 = getelementptr inbounds [12 x i8], ptr @switch.table.hci_le_ext_adv_report_evt, i32 0, i32 %54
  %56 = load i8, ptr %55, align 1
  br label %57

57:                                               ; preds = %53, %43, %40, %37, %33
  %58 = phi i8 [ 3, %43 ], [ 2, %40 ], [ 4, %37 ], [ %36, %33 ], [ %56, %53 ]
  %59 = getelementptr inbounds %struct.hci_ev_le_ext_adv_info, ptr %14, i32 0, i32 2
  %60 = getelementptr inbounds %struct.hci_ev_le_ext_adv_info, ptr %14, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.hci_ev_le_ext_adv_info, ptr %14, i32 0, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.hci_ev_le_ext_adv_info, ptr %14, i32 0, i32 12
  %65 = load i8, ptr %17, align 1
  %66 = and i16 %23, 16
  %67 = icmp eq i16 %66, 0
  tail call fastcc void @process_adv_report(ptr noundef %0, i8 noundef zeroext %58, ptr noundef %59, i8 noundef zeroext %61, ptr noundef null, i8 noundef zeroext 0, i8 noundef signext %63, ptr noundef %64, i8 noundef zeroext %65, i1 noundef zeroext %67)
  br label %68

68:                                               ; preds = %57, %48
  %69 = load i8, ptr %1, align 1
  %70 = add i8 %69, -1
  store i8 %70, ptr %1, align 1
  %71 = icmp eq i8 %69, 0
  br i1 %71, label %73, label %13

72:                                               ; preds = %16, %13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.31, ptr noundef %12, i32 noundef 13) #15
  br label %73

73:                                               ; preds = %72, %68, %6
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %74

74:                                               ; preds = %73, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_le_ext_adv_term_evt(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = getelementptr inbounds %struct.hci_evt_le_ext_adv_set_term, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %6) #15
  %8 = load i8, ptr %1, align 1
  switch i8 %8, label %11 [
    i8 68, label %9
    i8 0, label %28
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.30, ptr noundef %10) #15
  br label %65

11:                                               ; preds = %3
  %12 = icmp eq ptr %7, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %11
  %14 = load i8, ptr %5, align 1
  %15 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %14) #15
  %16 = load i8, ptr %5, align 1
  tail call void @mgmt_advertising_removed(ptr noundef null, ptr noundef %0, i8 noundef zeroext %16) #15
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %18

18:                                               ; preds = %22, %13
  %19 = phi ptr [ %17, %13 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.adv_info, ptr %20, i32 0, i32 1
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %18, label %65

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %27) #15
  br label %65

28:                                               ; preds = %3
  %29 = icmp eq ptr %7, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.adv_info, ptr %7, i32 0, i32 1
  store i8 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = getelementptr inbounds %struct.hci_evt_le_ext_adv_set_term, ptr %1, i32 0, i32 2
  %34 = load i16, ptr %33, align 1
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %36

36:                                               ; preds = %40, %32
  %37 = phi ptr [ %35, %32 ], [ %38, %40 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 11
  %42 = load i16, ptr %41, align 2
  %43 = icmp eq i16 %42, %34
  br i1 %43, label %45, label %36

44:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %65

45:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %46 = icmp eq ptr %38, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %45
  %48 = load i8, ptr %5, align 1
  %49 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 10
  store i8 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 12
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %55 = call i32 @bcmp(ptr noundef dereferenceable(6) %54, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8, ptr %5, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %54, ptr noundef align 1 dereferenceable(6) %61, i32 6, i1 false) #15
  br label %65

62:                                               ; preds = %57
  br i1 %29, label %65, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.adv_info, ptr %7, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %54, ptr noundef align 1 dereferenceable(6) %64, i32 6, i1 false) #15
  br label %65

65:                                               ; preds = %63, %62, %60, %53, %47, %45, %44, %26, %22, %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @le_conn_complete_evt(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef readonly %4, i8 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7, i16 noundef zeroext %8, i16 noundef zeroext %9) unnamed_addr #0 {
  %11 = alloca %struct.bdaddr_t, align 1
  %12 = alloca %struct.bdaddr_t, align 1
  %13 = alloca %struct.hci_cp_le_read_remote_features, align 2
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %15) #15
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %36, label %19

19:                                               ; preds = %33, %10
  %20 = phi ptr [ %34, %33 ], [ %17, %10 ]
  %21 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 14
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -128
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 12
  %26 = load i16, ptr %25, align 4
  %27 = icmp eq i16 %26, 5
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 47
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 2097152
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %24, %19
  %34 = load volatile ptr, ptr %20, align 4
  %35 = icmp eq ptr %34, %16
  br i1 %35, label %36, label %19

36:                                               ; preds = %33, %10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  br label %39

37:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %38 = icmp eq ptr %20, null
  br i1 %38, label %39, label %62

39:                                               ; preds = %37, %36
  %40 = tail call ptr @hci_conn_add(ptr noundef %0, i32 noundef 128, ptr noundef %2, i8 noundef zeroext %5) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %43) #15
  br label %304

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 3
  store i8 %3, ptr %45, align 2
  %46 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 16
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 9
  store i8 %3, ptr %50, align 1
  %51 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %51, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #15
  %52 = load volatile i32, ptr %15, align 4
  %53 = and i32 %52, 262144
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 7
  store i8 1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 6
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %57, ptr noundef align 1 dereferenceable(6) %58, i32 6, i1 false) #15
  br label %65

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 6
  %61 = getelementptr inbounds %struct.hci_conn, ptr %40, i32 0, i32 7
  tail call void @hci_copy_identity_address(ptr noundef %0, ptr noundef %60, ptr noundef %61) #15
  br label %65

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 61
  %64 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %63) #15
  br label %65

65:                                               ; preds = %62, %59, %55, %44
  %66 = phi ptr [ %20, %62 ], [ %40, %55 ], [ %40, %59 ], [ %40, %44 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %12)
  %67 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 16
  %68 = load i8, ptr %67, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %95, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 3
  store i8 %3, ptr %71, align 2
  %72 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 9
  store i8 %3, ptr %72, align 1
  %73 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %73, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #15
  %74 = icmp eq ptr %4, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i64 6, i1 false) #15
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef nonnull dereferenceable(6) %11, i32 6) #15
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 7
  store i8 1, ptr %79, align 8
  %80 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %80, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false) #15
  br label %130

81:                                               ; preds = %75, %70
  %82 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 65
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.hci_dev, ptr %83, i32 0, i32 206
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 262144
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 7
  store i8 1, ptr %89, align 8
  %90 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 6
  %91 = getelementptr inbounds %struct.hci_dev, ptr %83, i32 0, i32 223
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %90, ptr noundef align 1 dereferenceable(6) %91, i32 6, i1 false) #15
  br label %130

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 6
  %94 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 7
  tail call void @hci_copy_identity_address(ptr noundef %83, ptr noundef %93, ptr noundef %94) #15
  br label %130

95:                                               ; preds = %65
  %96 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 65
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 12
  %99 = load i8, ptr %98, align 2
  %100 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 9
  store i8 %99, ptr %100, align 1
  %101 = icmp eq ptr %4, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %12, i8 0, i64 6, i1 false) #15
  %103 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef nonnull dereferenceable(6) %12, i32 6) #15
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  store i8 1, ptr %100, align 1
  %106 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %106, ptr noundef nonnull align 1 dereferenceable(6) %4, i32 6, i1 false) #15
  br label %121

107:                                              ; preds = %102, %95
  %108 = load i8, ptr %98, align 2
  %109 = icmp eq i8 %108, 1
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr %struct.hci_dev, ptr %97, i32 0, i32 22, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 8
  %117 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %116, ptr noundef align 1 dereferenceable(6) %117, i32 6, i1 false) #15
  br label %121

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 8
  %120 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %119, ptr noundef align 1 dereferenceable(6) %120, i32 6, i1 false) #15
  br label %121

121:                                              ; preds = %118, %115, %110, %105
  %122 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 7
  store i8 %3, ptr %122, align 8
  %123 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %123, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #15
  %124 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 57
  %125 = load i16, ptr %124, align 2
  %126 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 35
  store i16 %125, ptr %126, align 2
  %127 = getelementptr inbounds %struct.hci_dev, ptr %97, i32 0, i32 58
  %128 = load i16, ptr %127, align 8
  %129 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 36
  store i16 %128, ptr %129, align 4
  br label %130

130:                                              ; preds = %121, %92, %88, %78
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %12)
  %131 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 2
  %132 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 3
  %133 = load i8, ptr %132, align 2
  %134 = icmp eq i8 %133, 1
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = getelementptr %struct.hci_conn, ptr %66, i32 0, i32 2, i32 0, i32 5
  %137 = load i8, ptr %136, align 1
  %138 = and i8 %137, -64
  %139 = icmp eq i8 %138, 64
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = tail call ptr @hci_find_irk_by_rpa(ptr noundef %0, ptr noundef %131) #15
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i8, ptr %132, align 2
  br label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.smp_irk, ptr %141, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %131, ptr noundef align 1 dereferenceable(6) %146, i32 6, i1 false) #15
  %147 = getelementptr inbounds %struct.smp_irk, ptr %141, i32 0, i32 4
  %148 = load i8, ptr %147, align 4
  store i8 %148, ptr %132, align 2
  br label %149

149:                                              ; preds = %145, %143, %130
  %150 = phi i8 [ %148, %145 ], [ %144, %143 ], [ %133, %130 ]
  switch i8 %150, label %152 [
    i8 2, label %154
    i8 3, label %151
  ]

151:                                              ; preds = %149
  br label %154

152:                                              ; preds = %149, %135
  %153 = phi i8 [ %150, %149 ], [ 1, %135 ]
  br label %154

154:                                              ; preds = %152, %151, %149
  %155 = phi i8 [ 1, %151 ], [ %153, %152 ], [ 0, %149 ]
  store i8 %155, ptr %132, align 2
  %156 = icmp eq i8 %1, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  tail call void @hci_le_conn_failed(ptr noundef nonnull %66, i8 noundef zeroext %1) #15
  br label %304

158:                                              ; preds = %154
  %159 = icmp eq i8 %155, 0
  %160 = select i1 %159, i8 1, i8 2
  %161 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %162 = tail call ptr @hci_bdaddr_list_lookup(ptr noundef %161, ptr noundef %131, i8 noundef zeroext %160) #15
  %163 = icmp eq ptr %162, null
  br i1 %163, label %199, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %165) #15, !srcloc !13
  %166 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %165, ptr %165, i32 1, ptr elementtype(i32) %165) #15, !srcloc !16
  %167 = extractvalue { i32, i32 } %166, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %304

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 14
  %171 = load i8, ptr %170, align 1
  switch i8 %171, label %190 [
    i8 1, label %172
    i8 -128, label %172
    i8 -127, label %186
  ]

172:                                              ; preds = %169, %169
  %173 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 60
  %174 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %173) #15
  %175 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 12
  %176 = load i16, ptr %175, align 4
  %177 = icmp eq i16 %176, 1
  br i1 %177, label %178, label %190

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 31
  %180 = load i16, ptr %179, align 2
  %181 = zext i16 %180 to i32
  %182 = load i8, ptr %67, align 1, !range !8
  %183 = xor i8 %182, 1
  %184 = zext i8 %183 to i32
  %185 = shl nuw nsw i32 %181, %184
  br label %190

186:                                              ; preds = %169
  %187 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 31
  %188 = load i16, ptr %187, align 2
  %189 = zext i16 %188 to i32
  br label %190

190:                                              ; preds = %186, %178, %172, %169
  %191 = phi i32 [ %189, %186 ], [ %185, %178 ], [ 0, %172 ], [ 0, %169 ]
  %192 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 58
  %193 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %192) #15
  %194 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 65
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.hci_dev, ptr %195, i32 0, i32 138
  %197 = load ptr, ptr %196, align 4
  %198 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %197, ptr noundef %192, i32 noundef %191) #15
  br label %304

199:                                              ; preds = %158
  %200 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 47
  %201 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %200) #15
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  tail call void @mgmt_device_connected(ptr noundef %0, ptr noundef nonnull %66, ptr noundef null, i8 noundef zeroext 0) #15
  br label %204

204:                                              ; preds = %203, %199
  %205 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 24
  store i8 1, ptr %205, align 4
  %206 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 11
  store i16 %6, ptr %206, align 2
  %207 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 12
  store i16 7, ptr %207, align 4
  %208 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %209 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = and i8 %210, 16
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %204
  %214 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %215 = load i8, ptr %214, align 8
  %216 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 10
  store i8 %215, ptr %216, align 8
  br label %217

217:                                              ; preds = %213, %204
  %218 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 37
  store i16 %7, ptr %218, align 2
  %219 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 38
  store i16 %8, ptr %219, align 8
  %220 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 39
  store i16 %9, ptr %220, align 2
  tail call void @hci_debugfs_create_conn(ptr noundef nonnull %66) #15
  tail call void @hci_conn_add_sysfs(ptr noundef nonnull %66) #15
  %221 = load i8, ptr %67, align 1, !range !8
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load i8, ptr %208, align 2
  %225 = and i8 %224, 8
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %223, %217
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #15
  %228 = load i16, ptr %206, align 2
  store i16 %228, ptr %13, align 2
  %229 = call i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext 8214, i32 noundef 2, ptr noundef nonnull %13) #15
  %230 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %230) #15, !srcloc !13
  %231 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %230, ptr %230, i32 1, ptr elementtype(i32) %230) #15, !srcloc !14
  %232 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 58
  %233 = call zeroext i1 @cancel_delayed_work(ptr noundef %232) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #15
  br label %251

234:                                              ; preds = %223
  store i16 1, ptr %207, align 4
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #15
  %235 = load ptr, ptr @hci_cb_list, align 4
  %236 = icmp eq ptr %235, @hci_cb_list
  br i1 %236, label %246, label %237

237:                                              ; preds = %243, %234
  %238 = phi ptr [ %244, %243 ], [ %235, %234 ]
  %239 = getelementptr inbounds %struct.hci_cb, ptr %238, i32 0, i32 2
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  tail call void %240(ptr noundef nonnull %66, i8 noundef zeroext 0) #15
  br label %243

243:                                              ; preds = %242, %237
  %244 = load ptr, ptr %238, align 4
  %245 = icmp eq ptr %244, @hci_cb_list
  br i1 %245, label %246, label %237

246:                                              ; preds = %243, %234
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #15
  %247 = getelementptr inbounds %struct.hci_conn, ptr %66, i32 0, i32 71
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  tail call void %248(ptr noundef nonnull %66, i8 noundef zeroext 0) #15
  br label %251

251:                                              ; preds = %250, %246, %227
  %252 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %253 = load i8, ptr %132, align 2
  %254 = call ptr @hci_pend_le_action_lookup(ptr noundef %252, ptr noundef %131, i8 noundef zeroext %253) #15
  %255 = icmp eq ptr %254, null
  br i1 %255, label %304, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.hci_conn_params, ptr %254, i32 0, i32 1
  %258 = getelementptr inbounds %struct.hci_conn_params, ptr %254, i32 0, i32 1, i32 1
  %259 = load ptr, ptr %258, align 4
  %260 = load ptr, ptr %257, align 4
  %261 = getelementptr inbounds %struct.list_head, ptr %260, i32 0, i32 1
  store ptr %259, ptr %261, align 4
  store volatile ptr %260, ptr %259, align 4
  store volatile ptr %257, ptr %257, align 4
  store ptr %257, ptr %258, align 4
  %262 = getelementptr inbounds %struct.hci_conn_params, ptr %254, i32 0, i32 9
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %304, label %265

265:                                              ; preds = %256
  %266 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %266) #15, !srcloc !13
  %267 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %266, ptr %266, i32 1, ptr elementtype(i32) %266) #15, !srcloc !16
  %268 = extractvalue { i32, i32 } %267, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %301

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 14
  %272 = load i8, ptr %271, align 1
  switch i8 %272, label %292 [
    i8 1, label %273
    i8 -128, label %273
    i8 -127, label %288
  ]

273:                                              ; preds = %270, %270
  %274 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 60
  %275 = call zeroext i1 @cancel_delayed_work(ptr noundef %274) #15
  %276 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 12
  %277 = load i16, ptr %276, align 4
  %278 = icmp eq i16 %277, 1
  br i1 %278, label %279, label %292

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 31
  %281 = load i16, ptr %280, align 2
  %282 = zext i16 %281 to i32
  %283 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 16
  %284 = load i8, ptr %283, align 1, !range !8
  %285 = xor i8 %284, 1
  %286 = zext i8 %285 to i32
  %287 = shl nuw nsw i32 %282, %286
  br label %292

288:                                              ; preds = %270
  %289 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 31
  %290 = load i16, ptr %289, align 2
  %291 = zext i16 %290 to i32
  br label %292

292:                                              ; preds = %288, %279, %273, %270
  %293 = phi i32 [ %291, %288 ], [ %287, %279 ], [ 0, %273 ], [ 0, %270 ]
  %294 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 58
  %295 = call zeroext i1 @cancel_delayed_work(ptr noundef %294) #15
  %296 = getelementptr inbounds %struct.hci_conn, ptr %263, i32 0, i32 65
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.hci_dev, ptr %297, i32 0, i32 138
  %299 = load ptr, ptr %298, align 4
  %300 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %299, ptr noundef %294, i32 noundef %293) #15
  br label %301

301:                                              ; preds = %292, %265
  %302 = load ptr, ptr %262, align 4
  %303 = getelementptr inbounds %struct.hci_conn, ptr %302, i32 0, i32 63
  call void @put_device(ptr noundef %303) #15
  store ptr null, ptr %262, align 4
  br label %304

304:                                              ; preds = %301, %256, %251, %190, %164, %157, %42
  %305 = call i32 @hci_update_passive_scan(ptr noundef %0) #15
  call void @mutex_unlock(ptr noundef %14) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_le_conn_failed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_rpa(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @process_adv_report(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef signext %6, ptr noundef %7, i8 noundef zeroext %8, i1 noundef zeroext %9) unnamed_addr #0 {
  %11 = alloca %struct.bdaddr_t, align 1
  %12 = icmp ult i8 %1, 5
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = zext i8 %1 to i32
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err_ratelimited(ptr noundef nonnull @.str.27, ptr noundef %15, i32 noundef %14) #15
  br label %230

16:                                               ; preds = %10
  %17 = xor i1 %9, true
  %18 = icmp ult i8 %8, 32
  %19 = or i1 %18, %9
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = zext i8 %8 to i32
  %22 = getelementptr i8, ptr %7, i32 %21
  %23 = icmp ugt ptr %22, %7
  br i1 %23, label %26, label %39

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err_ratelimited(ptr noundef nonnull @.str.28, ptr noundef %25) #15
  br label %230

26:                                               ; preds = %35, %20
  %27 = phi ptr [ %37, %35 ], [ %7, %20 ]
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i8 %28, 0
  %31 = getelementptr i8, ptr %27, i32 1
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = icmp ugt ptr %32, %22
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = add nuw nsw i32 %29, 1
  %37 = getelementptr i8, ptr %27, i32 %36
  %38 = icmp ult ptr %37, %22
  br i1 %38, label %26, label %39

39:                                               ; preds = %35, %26, %20
  %40 = phi ptr [ %7, %20 ], [ %37, %35 ], [ %27, %26 ]
  %41 = ptrtoint ptr %40 to i32
  %42 = ptrtoint ptr %7 to i32
  %43 = sub i32 %41, %42
  %44 = trunc i32 %43 to i8
  %45 = icmp eq ptr %4, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  switch i8 %5, label %230 [
    i8 1, label %47
    i8 3, label %47
  ]

47:                                               ; preds = %46, %46
  %48 = getelementptr [6 x i8], ptr %4, i32 0, i32 5
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, -64
  %51 = icmp eq i8 %50, 64
  br i1 %51, label %52, label %230

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 262144
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %230, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 220
  %59 = tail call zeroext i1 @smp_irk_matches(ptr noundef %0, ptr noundef %58, ptr noundef nonnull %4) #15
  br i1 %59, label %60, label %230

60:                                               ; preds = %57, %39
  %61 = icmp eq i8 %3, 1
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = getelementptr [6 x i8], ptr %2, i32 0, i32 5
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, -64
  %66 = icmp eq i8 %65, 64
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = tail call ptr @hci_find_irk_by_rpa(ptr noundef %0, ptr noundef %2) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.smp_irk, ptr %68, i32 0, i32 3
  %72 = getelementptr inbounds %struct.smp_irk, ptr %68, i32 0, i32 4
  %73 = load i8, ptr %72, align 4
  br label %74

74:                                               ; preds = %70, %60
  %75 = phi i8 [ %73, %70 ], [ %3, %60 ]
  %76 = phi ptr [ %71, %70 ], [ %2, %60 ]
  switch i8 %75, label %78 [
    i8 2, label %81
    i8 3, label %77
  ]

77:                                               ; preds = %74
  br label %81

78:                                               ; preds = %74, %67, %62
  %79 = phi ptr [ %76, %74 ], [ %2, %67 ], [ %2, %62 ]
  %80 = phi i8 [ %75, %74 ], [ 1, %67 ], [ 1, %62 ]
  br label %81

81:                                               ; preds = %78, %77, %74
  %82 = phi ptr [ %76, %77 ], [ %79, %78 ], [ %76, %74 ]
  %83 = phi i1 [ true, %77 ], [ false, %78 ], [ true, %74 ]
  %84 = phi i8 [ 1, %77 ], [ %80, %78 ], [ 0, %74 ]
  %85 = icmp eq i8 %1, 1
  %86 = icmp ugt i8 %1, 1
  br i1 %86, label %133, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %89 = tail call ptr @hci_bdaddr_list_lookup(ptr noundef %88, ptr noundef %82, i8 noundef zeroext %84) #15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %133

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %93 = load i8, ptr %92, align 1, !range !8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %133

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 5
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 16384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %133, label %104

104:                                              ; preds = %99
  %105 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 3
  %106 = load i8, ptr %105, align 1
  %107 = and i8 %106, 16
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %104, %95
  %110 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %111 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %110, ptr noundef %82, i8 noundef zeroext %84) #15
  %112 = icmp eq ptr %111, null
  br i1 %112, label %133, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.hci_conn_params, ptr %111, i32 0, i32 10
  %115 = load i8, ptr %114, align 4, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.hci_conn_params, ptr %111, i32 0, i32 8
  %119 = load i32, ptr %118, align 4
  switch i32 %119, label %133 [
    i32 2, label %120
    i32 3, label %121
  ]

120:                                              ; preds = %117
  br i1 %85, label %121, label %133

121:                                              ; preds = %120, %117, %113
  %122 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 95
  %123 = load i16, ptr %122, align 8
  %124 = tail call ptr @hci_connect_le(ptr noundef %0, ptr noundef %82, i8 noundef zeroext %84, i1 noundef zeroext %83, i8 noundef zeroext 1, i16 noundef zeroext %123, i8 noundef zeroext 0) #15
  %125 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  br i1 %125, label %133, label %126

126:                                              ; preds = %121
  %127 = load i8, ptr %114, align 4, !range !8
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.hci_conn, ptr %124, i32 0, i32 63
  %131 = tail call ptr @get_device(ptr noundef %130) #15
  %132 = getelementptr inbounds %struct.hci_conn_params, ptr %111, i32 0, i32 9
  store ptr %124, ptr %132, align 4
  br label %133

133:                                              ; preds = %129, %126, %121, %120, %117, %109, %104, %99, %91, %87, %81
  %134 = phi ptr [ null, %81 ], [ null, %91 ], [ null, %87 ], [ null, %104 ], [ null, %99 ], [ null, %109 ], [ null, %120 ], [ null, %117 ], [ %124, %129 ], [ %124, %126 ], [ null, %121 ]
  %135 = icmp ne ptr %134, null
  %136 = select i1 %17, i1 %135, i1 false
  %137 = icmp eq i8 %1, 0
  %138 = and i1 %137, %136
  %139 = and i32 %43, 255
  %140 = icmp ult i32 %139, 32
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.hci_conn, ptr %134, i32 0, i32 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %143, ptr align 1 %7, i32 %139, i1 false)
  %144 = getelementptr inbounds %struct.hci_conn, ptr %134, i32 0, i32 41
  store i8 %44, ptr %144, align 1
  br label %145

145:                                              ; preds = %142, %133
  %146 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  %147 = load i8, ptr %146, align 8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %145
  br i1 %85, label %230, label %150

150:                                              ; preds = %149
  %151 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %152 = tail call ptr @hci_pend_le_action_lookup(ptr noundef %151, ptr noundef %82, i8 noundef zeroext %84) #15
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %160 = tail call i32 @radix_tree_tagged(ptr noundef %159, i32 noundef 0) #15
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %230

162:                                              ; preds = %158, %154, %150
  %163 = and i8 %1, -2
  %164 = icmp eq i8 %163, 2
  %165 = select i1 %164, i32 4, i32 0
  %166 = trunc i32 %43 to i16
  %167 = and i16 %166, 255
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %82, i8 noundef zeroext -128, i8 noundef zeroext %84, ptr noundef null, i8 noundef signext %6, i32 noundef %165, ptr noundef %7, i16 noundef zeroext %167, ptr noundef null, i8 noundef zeroext 0) #15
  br label %230

168:                                              ; preds = %145
  %169 = add i8 %1, -2
  %170 = icmp ult i8 %169, 3
  %171 = select i1 %170, i32 4, i32 0
  br i1 %9, label %188, label %172

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %11)
  %173 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %11, i8 0, i64 6, i1 false) #15
  %174 = call i32 @bcmp(ptr noundef dereferenceable(6) %173, ptr noundef nonnull dereferenceable(6) %11, i32 6) #15
  %175 = icmp eq i32 %174, 0
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %11)
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  switch i8 %1, label %185 [
    i8 2, label %177
    i8 0, label %177
  ]

177:                                              ; preds = %176, %176
  %178 = icmp ugt i8 %44, 31
  br i1 %178, label %230, label %179

179:                                              ; preds = %177
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %173, ptr noundef align 1 dereferenceable(6) %82, i32 6, i1 false) #15
  %180 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 7
  store i8 %84, ptr %180, align 2
  %181 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 8
  store i8 %6, ptr %181, align 1
  %182 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 9
  store i32 %171, ptr %182, align 4
  %183 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %183, ptr align 1 %7, i32 %139, i1 false) #15
  %184 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  store i8 %44, ptr %184, align 1
  br label %230

185:                                              ; preds = %176
  %186 = trunc i32 %43 to i16
  %187 = and i16 %186, 255
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %82, i8 noundef zeroext -128, i8 noundef zeroext %84, ptr noundef null, i8 noundef signext %6, i32 noundef %171, ptr noundef %7, i16 noundef zeroext %187, ptr noundef null, i8 noundef zeroext 0) #15
  br label %230

188:                                              ; preds = %172, %168
  %189 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 6
  %190 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %82, ptr noundef dereferenceable(6) %189, i32 6)
  %191 = icmp eq i32 %190, 0
  %192 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 7
  %193 = load i8, ptr %192, align 2
  br i1 %191, label %194, label %200

194:                                              ; preds = %188
  %195 = icmp eq i8 %84, %193
  %196 = icmp ne i8 %1, 4
  %197 = xor i1 %195, true
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %199, label %223

199:                                              ; preds = %194
  br i1 %195, label %209, label %200

200:                                              ; preds = %199, %188
  %201 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 8
  %202 = load i8, ptr %201, align 1
  %203 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 9
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 10
  %206 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i16
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %189, i8 noundef zeroext -128, i8 noundef zeroext %193, ptr noundef null, i8 noundef signext %202, i32 noundef %204, ptr noundef %205, i16 noundef zeroext %208, ptr noundef null, i8 noundef zeroext 0) #15
  br label %209

209:                                              ; preds = %200, %199
  br i1 %9, label %219, label %210

210:                                              ; preds = %209
  switch i8 %1, label %219 [
    i8 2, label %211
    i8 0, label %211
  ]

211:                                              ; preds = %210, %210
  %212 = icmp ugt i8 %44, 31
  br i1 %212, label %230, label %213

213:                                              ; preds = %211
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %189, ptr noundef align 1 dereferenceable(6) %82, i32 6, i1 false) #15
  %214 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 7
  store i8 %84, ptr %214, align 2
  %215 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 8
  store i8 %6, ptr %215, align 1
  %216 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 9
  store i32 %171, ptr %216, align 4
  %217 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %217, ptr align 1 %7, i32 %139, i1 false) #15
  %218 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  store i8 %44, ptr %218, align 1
  br label %230

219:                                              ; preds = %210, %209
  %220 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  store i8 0, ptr %220, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %189, i8 0, i64 6, i1 false) #15
  %221 = trunc i32 %43 to i16
  %222 = and i16 %221, 255
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %82, i8 noundef zeroext -128, i8 noundef zeroext %84, ptr noundef null, i8 noundef signext %6, i32 noundef %171, ptr noundef %7, i16 noundef zeroext %222, ptr noundef null, i8 noundef zeroext 0) #15
  br label %230

223:                                              ; preds = %194
  %224 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 9
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 10
  %227 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 11
  %228 = load i8, ptr %227, align 1
  %229 = zext i8 %228 to i16
  tail call void @mgmt_device_found(ptr noundef %0, ptr noundef %189, i8 noundef zeroext -128, i8 noundef zeroext %193, ptr noundef null, i8 noundef signext %6, i32 noundef %225, ptr noundef %226, i16 noundef zeroext %229, ptr noundef %7, i8 noundef zeroext %44) #15
  store i8 0, ptr %227, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %189, i8 0, i64 6, i1 false) #15
  br label %230

230:                                              ; preds = %223, %219, %213, %211, %185, %179, %177, %162, %158, %149, %57, %52, %47, %46, %24, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err_ratelimited(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smp_irk_matches(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_connect_le(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_new_conn_param(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_chan_lookup_handle(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #14

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2156139893}
!10 = !{!"auto-init"}
!11 = !{i64 2149428385}
!12 = !{i64 2149428602}
!13 = !{i64 645693, i64 2148135664, i64 2148135690, i64 2148135737, i64 2148135759, i64 2148135787, i64 2148135807}
!14 = !{i64 2148147079, i64 2148147105, i64 2148147134, i64 2148147168, i64 2148147199, i64 2148147222}
!15 = !{i64 2148247734}
!16 = !{i64 2148150120, i64 2148150152, i64 2148150181, i64 2148150215, i64 2148150246, i64 2148150269}
!17 = !{i64 2148247937}
!18 = !{i64 2156012008}
