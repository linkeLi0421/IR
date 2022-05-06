; ModuleID = '/llk/IR/net/bluetooth/mgmt.c_pt.bc'
source_filename = "../net/bluetooth/mgmt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_mgmt_chan = type { %struct.list_head, i16, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hci_mgmt_handler = type { ptr, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.mgmt_exp_feature = type { ptr, ptr }
%struct.mgmt_rp_read_version = type <{ i8, i16 }>
%struct.mgmt_pending_cmd = type { %struct.list_head, i16, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mgmt_ev_advertising_added = type { i8 }
%struct.mgmt_ev_advertising_removed = type { i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.mgmt_ev_phy_configuration_changed = type { i32 }
%struct.mgmt_ev_adv_monitor_removed = type { i16 }
%struct.mgmt_ev_adv_monitor_added = type { i16 }
%struct.mgmt_rp_add_adv_patterns_monitor = type { i16 }
%struct.adv_monitor = type { %struct.list_head, %struct.adv_rssi_thresholds, i16, i32 }
%struct.adv_rssi_thresholds = type { i8, i8, i16, i16, i8 }
%struct.mgmt_rp_remove_adv_monitor = type { i16 }
%struct.mgmt_ev_ext_index = type { i8, i8 }
%struct.cmd_lookup = type { ptr, ptr, i8 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.sock_common = type { %union.anon.115, %union.anon.117, %union.anon.118, i16, i8, i8, i32, %union.anon.120, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon.115 = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.120 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.50 }
%union.anon.50 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.mgmt_ev_ext_info_changed = type { i16, [0 x i8] }
%struct.mgmt_ev_new_link_key = type { i8, %struct.mgmt_link_key_info }
%struct.mgmt_link_key_info = type { %struct.mgmt_addr_info, i8, [16 x i8], i8 }
%struct.mgmt_addr_info = type { %struct.bdaddr_t, i8 }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mgmt_ev_new_long_term_key = type { i8, %struct.mgmt_ltk_info }
%struct.mgmt_ltk_info = type <{ %struct.mgmt_addr_info, i8, i8, i8, i16, i64, [16 x i8] }>
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.mgmt_ev_new_irk = type { i8, %struct.bdaddr_t, %struct.mgmt_irk_info }
%struct.mgmt_irk_info = type { %struct.mgmt_addr_info, [16 x i8] }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.mgmt_ev_new_csrk = type { i8, %struct.mgmt_csrk_info }
%struct.mgmt_csrk_info = type { %struct.mgmt_addr_info, i8, [16 x i8] }
%struct.smp_csrk = type { %struct.bdaddr_t, i8, i8, [16 x i8] }
%struct.mgmt_ev_new_conn_param = type { %struct.mgmt_addr_info, i8, i16, i16, i16, i16 }
%struct.mgmt_ev_device_connected = type <{ %struct.mgmt_addr_info, i32, i16, [0 x i8] }>
%struct.mgmt_ev_device_disconnected = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_ev_device_unpaired = type { %struct.mgmt_addr_info }
%struct.mgmt_ev_connect_failed = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_ev_pin_code_request = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_ev_user_confirm_request = type { %struct.mgmt_addr_info, i8, i32 }
%struct.mgmt_ev_user_passkey_request = type { %struct.mgmt_addr_info }
%struct.mgmt_ev_passkey_notify = type <{ %struct.mgmt_addr_info, i32, i8 }>
%struct.mgmt_ev_auth_failed = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_cp_set_local_name = type { [249 x i8], [11 x i8] }
%struct.mgmt_ev_device_found = type <{ %struct.mgmt_addr_info, i8, i32, i16, [0 x i8] }>
%struct.mgmt_ev_discovering = type { i8, i8 }
%struct.mgmt_ev_controller_suspend = type { i8 }
%struct.mgmt_ev_controller_resume = type { i8, %struct.mgmt_addr_info }
%struct.mgmt_rp_read_commands = type { i16, i16, [0 x i16] }
%struct.mgmt_rp_read_index_list = type { i16, [0 x i16] }
%struct.mgmt_rp_read_info = type <{ %struct.bdaddr_t, i8, i16, i32, i32, [3 x i8], [249 x i8], [11 x i8] }>
%struct.mgmt_cp_set_discoverable = type <{ i8, i16 }>
%struct.mgmt_cp_set_dev_class = type { i8, i8 }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.mgmt_cp_add_uuid = type { [16 x i8], i8 }
%struct.mgmt_cp_load_link_keys = type <{ i8, i16, [0 x %struct.mgmt_link_key_info] }>
%struct.mgmt_cp_load_long_term_keys = type { i16, [0 x %struct.mgmt_ltk_info] }
%struct.mgmt_rp_disconnect = type { %struct.mgmt_addr_info }
%struct.mgmt_rp_get_connections = type { i16, [0 x %struct.mgmt_addr_info] }
%struct.hci_cp_pin_code_reply = type { %struct.bdaddr_t, i8, [16 x i8] }
%struct.mgmt_cp_pin_code_neg_reply = type { %struct.mgmt_addr_info }
%struct.mgmt_cp_pin_code_reply = type { %struct.mgmt_addr_info, i8, [16 x i8] }
%struct.mgmt_rp_pair_device = type { %struct.mgmt_addr_info }
%struct.mgmt_cp_pair_device = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_rp_unpair_device = type { %struct.mgmt_addr_info }
%struct.mgmt_cp_unpair_device = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_cp_user_passkey_reply = type <{ %struct.mgmt_addr_info, i32 }>
%struct.mgmt_cp_add_remote_oob_data = type { %struct.mgmt_addr_info, [16 x i8], [16 x i8] }
%struct.mgmt_cp_add_remote_oob_ext_data = type { %struct.mgmt_addr_info, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.mgmt_cp_confirm_name = type { %struct.mgmt_addr_info, i8 }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.mgmt_cp_set_device_id = type { i16, i16, i16, i16 }
%struct.mgmt_cp_set_scan_params = type { i16, i16 }
%struct.mgmt_cp_set_privacy = type { i8, [16 x i8] }
%struct.mgmt_cp_load_irks = type { i16, [0 x %struct.mgmt_irk_info] }
%struct.mgmt_rp_get_conn_info = type { %struct.mgmt_addr_info, i8, i8, i8 }
%struct.mgmt_rp_get_clock_info = type <{ %struct.mgmt_addr_info, i32, i32, i16 }>
%struct.mgmt_ev_device_flags_changed = type <{ %struct.mgmt_addr_info, i32, i32 }>
%struct.mgmt_ev_device_added = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_cp_add_device = type { %struct.mgmt_addr_info, i8 }
%struct.mgmt_ev_device_removed = type { %struct.mgmt_addr_info }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.mgmt_cp_load_conn_param = type { i16, [0 x %struct.mgmt_conn_param] }
%struct.mgmt_conn_param = type <{ %struct.mgmt_addr_info, i16, i16, i16, i16 }>
%struct.mgmt_rp_read_unconf_index_list = type { i16, [0 x i16] }
%struct.mgmt_rp_read_config_info = type <{ i16, i32, i32 }>
%struct.mgmt_cp_start_service_discovery = type { i8, i8, i16, [0 x [16 x i8]] }
%struct.mgmt_rp_read_local_oob_ext_data = type <{ i8, i16, [0 x i8] }>
%struct.mgmt_rp_read_ext_index_list = type { i16, [0 x %struct.anon.137] }
%struct.anon.137 = type { i16, i8, i8 }
%struct.mgmt_rp_read_adv_features = type { i32, i8, i8, i8, i8, [0 x i8] }
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.mgmt_rp_add_advertising = type { i8 }
%struct.mgmt_cp_add_advertising = type <{ i8, i32, i16, i16, i8, i8, [0 x i8] }>
%struct.mgmt_rp_get_adv_size_info = type <{ i8, i32, i8, i8 }>
%struct.mgmt_cp_get_adv_size_info = type <{ i8, i32 }>
%struct.mgmt_rp_read_ext_info = type <{ %struct.bdaddr_t, i8, i16, i32, i32, i16, [0 x i8] }>
%struct.mgmt_rp_get_phy_configuration = type { i32, i32, i32 }
%struct.mgmt_cp_set_blocked_keys = type { i16, [0 x %struct.mgmt_blocked_key_info] }
%struct.mgmt_blocked_key_info = type { i8, [16 x i8] }
%struct.blocked_key = type { %struct.list_head, %struct.callback_head, i8, [16 x i8] }
%struct.mgmt_rp_read_controller_cap = type { i16, [0 x i8] }
%struct.mgmt_rp_read_exp_features_info = type <{ i16, [0 x %struct.anon.138] }>
%struct.anon.138 = type { [16 x i8], i32 }
%struct.mgmt_rp_get_device_flags = type <{ %struct.mgmt_addr_info, i32, i32 }>
%struct.bdaddr_list_with_flags = type { %struct.list_head, %struct.bdaddr_t, i8, [1 x i32] }
%struct.mgmt_cp_set_device_flags = type <{ %struct.mgmt_addr_info, i32 }>
%struct.mgmt_rp_read_adv_monitor_features = type <{ i32, i32, i16, i8, i16, [0 x i16] }>
%struct.mgmt_cp_add_adv_patterns_monitor = type { i8, [0 x %struct.mgmt_adv_pattern] }
%struct.mgmt_adv_pattern = type { i8, i8, i8, [31 x i8] }
%struct.adv_pattern = type { %struct.list_head, i8, i8, i8, [31 x i8] }
%struct.mgmt_rp_add_ext_adv_params = type { i8, i8, i8, i8 }
%struct.mgmt_cp_add_ext_adv_params = type <{ i8, i32, i16, i16, i32, i32, i8 }>
%struct.mgmt_rp_add_ext_adv_data = type { i8 }
%struct.mgmt_cp_add_ext_adv_data = type { i8, i8, i8, [0 x i8] }
%struct.mgmt_cp_add_adv_patterns_monitor_rssi = type { %struct.mgmt_adv_rssi_thresholds, i8, [0 x %struct.mgmt_adv_pattern] }
%struct.mgmt_adv_rssi_thresholds = type <{ i8, i16, i8, i16, i8 }>
%struct.hci_cp_user_passkey_reply = type <{ %struct.bdaddr_t, i32 }>
%struct.mgmt_rp_read_local_oob_data = type { [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
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
%struct.hci_rp_read_local_oob_data = type { i8, [16 x i8], [16 x i8] }
%struct.hci_rp_read_local_oob_ext_data = type { i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.hci_cp_read_clock = type <{ i16, i8 }>
%struct.mgmt_rp_remove_advertising = type { i8 }
%struct.hci_cp_le_set_default_phy = type { i8, i8, i8 }
%struct.mgmt_ev_exp_feature_changed = type { [16 x i8], i32 }
%struct.mgmt_rp_set_exp_feature = type { [16 x i8], i32 }
%struct.mgmt_cp_set_exp_feature = type { [16 x i8], [0 x i8] }

@.str = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@chan = internal global %struct.hci_mgmt_chan { %struct.list_head zeroinitializer, i16 3, i32 87, ptr @mgmt_handlers, ptr @mgmt_init_hdev }, align 4
@mgmt_status_table = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\05\07\08\07\07\09\0A\07\0B\0B\08\0C\0D\0E\07\0E\0E\0A\0B\03\0C\0B\0B\0B\0D\03\0C\03\08\03\03\0B\03\0C\08\0C\03\03\0D\0B\0C\0B\0D\03\0A\03\03\03\0D\0C\0A\0B\0A\0D\08\05\04\04", align 1
@bluetooth_base_uuid = internal constant [16 x i8] c"\FB4\9B_\80\00\00\80\00\10\00\00\00\00\00\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mgmt_handlers = internal constant [87 x %struct.hci_mgmt_handler] [%struct.hci_mgmt_handler zeroinitializer, %struct.hci_mgmt_handler { ptr @read_version, i32 0, i32 6 }, %struct.hci_mgmt_handler { ptr @read_commands, i32 0, i32 6 }, %struct.hci_mgmt_handler { ptr @read_index_list, i32 0, i32 6 }, %struct.hci_mgmt_handler { ptr @read_controller_info, i32 0, i32 4 }, %struct.hci_mgmt_handler { ptr @set_powered, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_discoverable, i32 3, i32 0 }, %struct.hci_mgmt_handler { ptr @set_connectable, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_fast_connectable, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_bondable, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_link_security, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_ssp, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_hs, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_le, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_dev_class, i32 2, i32 0 }, %struct.hci_mgmt_handler { ptr @set_local_name, i32 260, i32 0 }, %struct.hci_mgmt_handler { ptr @add_uuid, i32 17, i32 0 }, %struct.hci_mgmt_handler { ptr @remove_uuid, i32 16, i32 0 }, %struct.hci_mgmt_handler { ptr @load_link_keys, i32 3, i32 1 }, %struct.hci_mgmt_handler { ptr @load_long_term_keys, i32 2, i32 1 }, %struct.hci_mgmt_handler { ptr @disconnect, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @get_connections, i32 0, i32 0 }, %struct.hci_mgmt_handler { ptr @pin_code_reply, i32 24, i32 0 }, %struct.hci_mgmt_handler { ptr @pin_code_neg_reply, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @set_io_capability, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @pair_device, i32 8, i32 0 }, %struct.hci_mgmt_handler { ptr @cancel_pair_device, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @unpair_device, i32 8, i32 0 }, %struct.hci_mgmt_handler { ptr @user_confirm_reply, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @user_confirm_neg_reply, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @user_passkey_reply, i32 11, i32 0 }, %struct.hci_mgmt_handler { ptr @user_passkey_neg_reply, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @read_local_oob_data, i32 0, i32 0 }, %struct.hci_mgmt_handler { ptr @add_remote_oob_data, i32 39, i32 1 }, %struct.hci_mgmt_handler { ptr @remove_remote_oob_data, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @start_discovery, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @stop_discovery, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @confirm_name, i32 8, i32 0 }, %struct.hci_mgmt_handler { ptr @block_device, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @unblock_device, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @set_device_id, i32 8, i32 0 }, %struct.hci_mgmt_handler { ptr @set_advertising, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_bredr, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_static_address, i32 6, i32 0 }, %struct.hci_mgmt_handler { ptr @set_scan_params, i32 4, i32 0 }, %struct.hci_mgmt_handler { ptr @set_secure_conn, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_debug_keys, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @set_privacy, i32 17, i32 0 }, %struct.hci_mgmt_handler { ptr @load_irks, i32 2, i32 1 }, %struct.hci_mgmt_handler { ptr @get_conn_info, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @get_clock_info, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @add_device, i32 8, i32 0 }, %struct.hci_mgmt_handler { ptr @remove_device, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @load_conn_param, i32 2, i32 1 }, %struct.hci_mgmt_handler { ptr @read_unconf_index_list, i32 0, i32 6 }, %struct.hci_mgmt_handler { ptr @read_config_info, i32 0, i32 12 }, %struct.hci_mgmt_handler { ptr @set_external_config, i32 1, i32 8 }, %struct.hci_mgmt_handler { ptr @set_public_address, i32 6, i32 8 }, %struct.hci_mgmt_handler { ptr @start_service_discovery, i32 4, i32 1 }, %struct.hci_mgmt_handler { ptr @read_local_oob_ext_data, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @read_ext_index_list, i32 0, i32 6 }, %struct.hci_mgmt_handler { ptr @read_adv_features, i32 0, i32 0 }, %struct.hci_mgmt_handler { ptr @add_advertising, i32 11, i32 1 }, %struct.hci_mgmt_handler { ptr @remove_advertising, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @get_adv_size_info, i32 5, i32 0 }, %struct.hci_mgmt_handler { ptr @start_limited_discovery, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @read_ext_controller_info, i32 0, i32 4 }, %struct.hci_mgmt_handler { ptr @set_appearance, i32 2, i32 0 }, %struct.hci_mgmt_handler { ptr @get_phy_configuration, i32 0, i32 0 }, %struct.hci_mgmt_handler { ptr @set_phy_configuration, i32 4, i32 0 }, %struct.hci_mgmt_handler { ptr @set_blocked_keys, i32 2, i32 1 }, %struct.hci_mgmt_handler { ptr @set_wideband_speech, i32 1, i32 0 }, %struct.hci_mgmt_handler { ptr @read_controller_cap, i32 0, i32 4 }, %struct.hci_mgmt_handler { ptr @read_exp_features_info, i32 0, i32 20 }, %struct.hci_mgmt_handler { ptr @set_exp_feature, i32 16, i32 17 }, %struct.hci_mgmt_handler { ptr @read_def_system_config, i32 0, i32 4 }, %struct.hci_mgmt_handler { ptr @set_def_system_config, i32 0, i32 1 }, %struct.hci_mgmt_handler { ptr @read_def_runtime_config, i32 0, i32 4 }, %struct.hci_mgmt_handler { ptr @set_def_runtime_config, i32 0, i32 1 }, %struct.hci_mgmt_handler { ptr @get_device_flags, i32 7, i32 0 }, %struct.hci_mgmt_handler { ptr @set_device_flags, i32 11, i32 0 }, %struct.hci_mgmt_handler { ptr @read_adv_mon_features, i32 0, i32 0 }, %struct.hci_mgmt_handler { ptr @add_adv_patterns_monitor, i32 1, i32 1 }, %struct.hci_mgmt_handler { ptr @remove_adv_monitor, i32 2, i32 0 }, %struct.hci_mgmt_handler { ptr @add_ext_adv_params, i32 18, i32 1 }, %struct.hci_mgmt_handler { ptr @add_ext_adv_data, i32 3, i32 1 }, %struct.hci_mgmt_handler { ptr @add_adv_patterns_monitor_rssi, i32 8, i32 1 }], align 4
@mgmt_commands = internal unnamed_addr constant [84 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86], align 2
@mgmt_events = internal unnamed_addr constant [42 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 42, i16 43, i16 44, i16 45, i16 46], align 2
@mgmt_untrusted_commands = internal unnamed_addr constant [10 x i16] [i16 3, i16 4, i16 54, i16 55, i16 60, i16 66, i16 72, i16 73, i16 75, i16 77], align 2
@mgmt_untrusted_events = internal unnamed_addr constant [12 x i16] [i16 4, i16 5, i16 6, i16 7, i16 8, i16 29, i16 30, i16 31, i16 32, i16 33, i16 37, i16 39], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: load_link_keys: too big key_count value %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"%s: load_link_keys: expected %u bytes, got %u bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: Skipping blocked link key for %pMR\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: load_ltks: too big key_count value %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"%s: load_keys: expected %u bytes, got %u bytes\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: Skipping blocked LTK for %pMR\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: PIN code is not 16 bytes long\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"%s: add_remote_oob_data: invalid len of %u bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"%s: failed to re-configure advertising %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: load_irks: too big irk_count value %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"%s: load_irks: expected %u bytes, got %u bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%s: Skipping blocked IRK for %pMR\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"%s: load_conn_param: too big param_count value %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s: load_conn_param: expected %u bytes, got %u bytes\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"%s: ignoring invalid connection parameters\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"%s: failed to add connection parameters\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"%s: service_discovery: too big uuid_count value %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"%s: service_discovery: expected %u bytes, got %u bytes\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"%s: too big key_count value %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"%s: expected %u bytes, got %u bytes\0A\00", align 1
@le_simultaneous_roles_uuid = internal constant [16 x i8] c"\D6I\B0\D1(\EB'\92\96F\C0B\B5\10\1Bg", align 1
@rpa_resolution_uuid = internal constant [16 x i8] c"\04\00\13\ACB\02\DE\B3\EA\11s\C2H\A1\C0\15", align 1
@quality_report_uuid = internal constant [16 x i8] c"\7F\03\14\06o\9Ap\93-I\06u\BCY\083", align 1
@offload_codecs_uuid = internal constant [16 x i8] c"\AF)\C6f\AC_\1A\88\B9O\7F\EE\CEZi\A6", align 1
@exp_features = internal unnamed_addr constant [6 x %struct.mgmt_exp_feature] [%struct.mgmt_exp_feature { ptr @.str.8, ptr @set_zero_key_func }, %struct.mgmt_exp_feature { ptr @rpa_resolution_uuid, ptr @set_rpa_resolution_func }, %struct.mgmt_exp_feature { ptr @quality_report_uuid, ptr @set_quality_report_func }, %struct.mgmt_exp_feature { ptr @offload_codecs_uuid, ptr @set_offload_codec_func }, %struct.mgmt_exp_feature { ptr @le_simultaneous_roles_uuid, ptr @set_le_simultaneous_roles_func }, %struct.mgmt_exp_feature zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"%s: offload codecs enable %d changed %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"%s: LE simultaneous roles enable %d changed %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"%s: Bad flag given (0x%x) vs supported (0x%0x)\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"%s: No such BR/EDR device %pMR (0x%x)\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"%s: No such LE device %pMR (0x%x)\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mgmt_fill_version_info(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store i8 1, ptr %0, align 1
  %2 = getelementptr inbounds %struct.mgmt_rp_read_version, ptr %0, i32 0, i32 1
  store i16 21, ptr %2, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @mgmt_get_adv_discov_flags(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 2
  %9 = zext i1 %8 to i8
  %10 = icmp eq i8 %7, 1
  %11 = select i1 %10, i8 2, i8 %9
  br label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = lshr i32 %18, 26
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 2
  br label %22

22:                                               ; preds = %17, %12, %4
  %23 = phi i8 [ 1, %12 ], [ %11, %4 ], [ %21, %17 ]
  ret i8 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mgmt_get_connectable(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 7, ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp ne i8 %7, 0
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 67108864
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i1 [ %8, %4 ], [ %13, %9 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_advertising_added(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_advertising_added, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 %2, ptr %4, align 1
  %5 = call i32 @mgmt_send_event(i16 noundef zeroext 35, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_advertising_removed(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_advertising_removed, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 %2, ptr %4, align 1
  %5 = call i32 @mgmt_send_event(i16 noundef zeroext 36, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_new_settings(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %3, ptr %2, align 4
  %4 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %2, i16 noundef zeroext 4, i32 noundef 6, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @new_settings(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = tail call fastcc i32 @get_current_settings(ptr noundef %0)
  store i32 %4, ptr %3, align 4
  %5 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_smp_complete(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 184
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %27, label %8

8:                                                ; preds = %17, %2
  %9 = phi ptr [ %18, %17 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %27, label %8

20:                                               ; preds = %13
  %21 = icmp eq ptr %9, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = select i1 %1, i8 0, i8 3
  %24 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef nonnull %9, i8 noundef zeroext %23) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %9) #16
  br label %27

27:                                               ; preds = %22, %20, %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pending_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_phy_configuration_changed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_phy_configuration_changed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = tail call fastcc i32 @get_selected_phys(ptr noundef %0)
  store i32 %4, ptr %3, align 4
  %5 = call i32 @mgmt_send_event(i16 noundef zeroext 38, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_selected_phys(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 98
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 3072
  %10 = icmp eq i16 %9, 0
  %11 = select i1 %10, i32 1, i32 3
  %12 = icmp ult i16 %8, 16384
  %13 = or i32 %11, 4
  %14 = select i1 %12, i32 %11, i32 %13
  %15 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %56, label %19

19:                                               ; preds = %6
  %20 = and i16 %8, 2
  %21 = icmp eq i16 %20, 0
  %22 = or i32 %14, 8
  %23 = select i1 %21, i32 %22, i32 %14
  %24 = icmp sgt i8 %3, -1
  %25 = and i16 %8, 256
  %26 = icmp eq i16 %25, 0
  %27 = or i32 %23, 16
  %28 = select i1 %26, i32 %27, i32 %23
  %29 = select i1 %24, i32 %23, i32 %28
  %30 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = and i16 %8, 4096
  %35 = icmp eq i16 %34, 0
  %36 = or i32 %29, 32
  %37 = select i1 %35, i32 %36, i32 %29
  %38 = select i1 %33, i32 %29, i32 %37
  %39 = and i8 %16, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %19
  %42 = and i16 %8, 4
  %43 = icmp eq i16 %42, 0
  %44 = or i32 %38, 64
  %45 = select i1 %43, i32 %44, i32 %38
  %46 = and i16 %8, 512
  %47 = icmp eq i16 %46, 0
  %48 = or i32 %45, 128
  %49 = select i1 %47, i32 %48, i32 %45
  %50 = select i1 %24, i32 %45, i32 %49
  br i1 %33, label %56, label %51

51:                                               ; preds = %41
  %52 = and i16 %8, 8192
  %53 = icmp eq i16 %52, 0
  %54 = or i32 %50, 256
  %55 = select i1 %53, i32 %54, i32 %50
  br label %56

56:                                               ; preds = %51, %41, %19, %6, %1
  %57 = phi i32 [ 0, %1 ], [ %50, %41 ], [ %38, %19 ], [ %14, %6 ], [ %55, %51 ]
  %58 = and i8 %3, 64
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 136
  %62 = load i8, ptr %61, align 8
  %63 = and i8 %62, 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 9
  %66 = or i32 %65, %57
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 10
  %72 = and i8 %62, 2
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 10
  %75 = and i8 %68, 2
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 11
  %78 = and i8 %62, 4
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 11
  %81 = and i8 %68, 4
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %82, 12
  %84 = or i32 %66, %74
  %85 = or i32 %84, %80
  %86 = or i32 %85, %71
  %87 = or i32 %86, %77
  %88 = or i32 %87, %83
  br label %89

89:                                               ; preds = %60, %56
  %90 = phi i32 [ %57, %56 ], [ %88, %60 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_adv_monitor_removed(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_adv_monitor_removed, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 83, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %6, %2
  %15 = phi ptr [ %13, %11 ], [ null, %6 ], [ null, %2 ]
  store i16 %1, ptr %3, align 2
  %16 = call i32 @mgmt_send_event(i16 noundef zeroext 44, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 2, i32 noundef 0, ptr noundef %15) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_add_adv_patterns_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_adv_monitor_added, align 2
  %4 = alloca %struct.mgmt_rp_add_adv_patterns_monitor, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 86, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 82, ptr noundef %0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %58, label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %6, %2 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.adv_monitor, ptr %14, i32 0, i32 2
  %16 = load i16, ptr %15, align 4
  store i16 %16, ptr %4, align 2
  %17 = icmp eq i8 %1, 0
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %20, label %37

20:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 %16, ptr %3, align 2
  %21 = call i32 @mgmt_send_event(i16 noundef zeroext 43, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 2, i32 noundef 0, ptr noundef %19) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 219
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.adv_monitor, ptr %14, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = call i32 @hci_update_passive_scan(ptr noundef %0) #16
  %31 = load ptr, ptr %18, align 4
  %32 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  br label %45

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %12, i32 0, i32 1
  %42 = load i16, ptr %41, align 4
  %43 = zext i8 %1 to i32
  %44 = icmp ult i8 %1, 64
  br i1 %44, label %45, label %52

45:                                               ; preds = %37, %29
  %46 = phi i32 [ 0, %29 ], [ %43, %37 ]
  %47 = phi i16 [ %36, %29 ], [ %42, %37 ]
  %48 = phi i16 [ %34, %29 ], [ %40, %37 ]
  %49 = phi ptr [ %31, %29 ], [ %19, %37 ]
  %50 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %46
  %51 = load i8, ptr %50, align 1
  br label %52

52:                                               ; preds = %45, %37
  %53 = phi i16 [ %47, %45 ], [ %42, %37 ]
  %54 = phi i16 [ %48, %45 ], [ %40, %37 ]
  %55 = phi ptr [ %49, %45 ], [ %19, %37 ]
  %56 = phi i8 [ %51, %45 ], [ 3, %37 ]
  %57 = call i32 @mgmt_cmd_complete(ptr noundef %55, i16 noundef zeroext %54, i16 noundef zeroext %53, i8 noundef zeroext %56, ptr noundef nonnull %4, i32 noundef 2) #16
  call void @mgmt_pending_remove(ptr noundef nonnull %12) #16
  br label %58

58:                                               ; preds = %52, %8
  %59 = phi i32 [ %57, %52 ], [ 0, %8 ]
  call void @mutex_unlock(ptr noundef %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_complete(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_remove_adv_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_rp_remove_adv_monitor, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 83, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %9, align 1
  store i16 %10, ptr %3, align 2
  %11 = icmp eq i8 %1, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #16
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  br label %31

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %5, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i8 %1 to i32
  %30 = icmp ult i8 %1, 64
  br i1 %30, label %31, label %38

31:                                               ; preds = %21, %12
  %32 = phi i32 [ 0, %12 ], [ %29, %21 ]
  %33 = phi i16 [ %20, %12 ], [ %28, %21 ]
  %34 = phi i16 [ %18, %12 ], [ %26, %21 ]
  %35 = phi ptr [ %15, %12 ], [ %23, %21 ]
  %36 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %32
  %37 = load i8, ptr %36, align 1
  br label %38

38:                                               ; preds = %31, %21
  %39 = phi i16 [ %33, %31 ], [ %28, %21 ]
  %40 = phi i16 [ %34, %31 ], [ %26, %21 ]
  %41 = phi ptr [ %35, %31 ], [ %23, %21 ]
  %42 = phi i8 [ %37, %31 ], [ 3, %21 ]
  %43 = call i32 @mgmt_cmd_complete(ptr noundef %41, i16 noundef zeroext %40, i16 noundef zeroext %39, i8 noundef zeroext %42, ptr noundef nonnull %3, i32 noundef 2) #16
  call void @mgmt_pending_remove(ptr noundef nonnull %5) #16
  br label %44

44:                                               ; preds = %38, %2
  %45 = phi i32 [ %43, %38 ], [ 0, %2 ]
  call void @mutex_unlock(ptr noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_start_discovery_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 35, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 58, ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 65, ptr noundef %0) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9, %6, %2
  %13 = phi ptr [ %10, %9 ], [ %7, %6 ], [ %4, %2 ]
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ult i8 %1, 64
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = zext i8 %1 to i32
  %19 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i8 [ %20, %17 ], [ 3, %12 ]
  %23 = tail call i32 %15(ptr noundef nonnull %13, i8 noundef zeroext %22) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %13) #16
  br label %24

24:                                               ; preds = %21, %9
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_stop_discovery_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 36, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i8 %1, 64
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext i8 %1 to i32
  %12 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i8 [ %13, %10 ], [ 3, %6 ]
  %16 = tail call i32 %8(ptr noundef nonnull %4, i8 noundef zeroext %15) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %4) #16
  br label %17

17:                                               ; preds = %14, %2
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_index_added(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.mgmt_ev_ext_index, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %25 [
    i8 0, label %10
    i8 1, label %19
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @mgmt_send_event(i16 noundef zeroext 29, ptr noundef %0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2, ptr noundef null) #16
  store i8 1, ptr %2, align 2
  br label %20

17:                                               ; preds = %10
  %18 = tail call i32 @mgmt_send_event(i16 noundef zeroext 4, ptr noundef %0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1, ptr noundef null) #16
  store i8 0, ptr %2, align 2
  br label %20

19:                                               ; preds = %7
  store i8 2, ptr %2, align 2
  br label %20

20:                                               ; preds = %19, %17, %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 5
  %22 = load i8, ptr %21, align 2
  %23 = getelementptr inbounds %struct.mgmt_ev_ext_index, ptr %2, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = call i32 @mgmt_send_event(i16 noundef zeroext 32, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %2, i16 noundef zeroext 2, i32 noundef 3, ptr noundef null) #16
  br label %25

25:                                               ; preds = %20, %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_index_removed(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.mgmt_ev_ext_index, align 2
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 17, ptr %3, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  switch i8 %10, label %26 [
    i8 0, label %11
    i8 1, label %20
  ]

11:                                               ; preds = %8
  call void @mgmt_pending_foreach(i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @cmd_complete_rsp, ptr noundef nonnull %3) #16
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @mgmt_send_event(i16 noundef zeroext 30, ptr noundef %0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 2, ptr noundef null) #16
  store i8 1, ptr %2, align 2
  br label %21

18:                                               ; preds = %11
  %19 = call i32 @mgmt_send_event(i16 noundef zeroext 5, ptr noundef %0, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1, ptr noundef null) #16
  store i8 0, ptr %2, align 2
  br label %21

20:                                               ; preds = %8
  store i8 2, ptr %2, align 2
  br label %21

21:                                               ; preds = %20, %18, %16
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 5
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.mgmt_ev_ext_index, ptr %2, i32 0, i32 1
  store i8 %23, ptr %24, align 1
  %25 = call i32 @mgmt_send_event(i16 noundef zeroext 33, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %2, i16 noundef zeroext 2, i32 noundef 3, ptr noundef null) #16
  br label %26

26:                                               ; preds = %21, %8, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pending_foreach(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cmd_complete_rsp(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1
  %8 = tail call i32 %4(ptr noundef %0, i8 noundef zeroext %7) #16
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = load i8, ptr %1, align 1
  %18 = tail call i32 @mgmt_cmd_status(ptr noundef %11, i16 noundef zeroext %14, i16 noundef zeroext %16, i8 noundef zeroext %17) #16
  br label %19

19:                                               ; preds = %9, %6
  tail call void @mgmt_pending_remove(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_power_on(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_lookup, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.cmd_lookup, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  br label %15

15:                                               ; preds = %29, %12
  %16 = phi ptr [ %10, %12 ], [ %30, %29 ]
  %17 = getelementptr inbounds %struct.hci_conn_params, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hci_conn_params, ptr %16, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %18, align 4
  %22 = getelementptr inbounds %struct.hci_conn_params, ptr %16, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %29 [
    i32 2, label %25
    i32 3, label %25
    i32 1, label %24
  ]

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %15, %15
  %26 = phi ptr [ %13, %24 ], [ %14, %15 ], [ %14, %15 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %17, ptr %28, align 4
  store ptr %27, ptr %17, align 4
  store ptr %26, ptr %18, align 4
  store volatile ptr %17, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load ptr, ptr %16, align 4
  %31 = icmp eq ptr %30, %9
  br i1 %31, label %32, label %15

32:                                               ; preds = %29, %8
  %33 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #16
  br label %34

34:                                               ; preds = %32, %2
  call void @mgmt_pending_foreach(i16 noundef zeroext 5, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %4) #16
  %35 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %36 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %36, ptr %3, align 4
  %37 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %35) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sock_common, ptr %38, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #16, !srcloc !11
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !12

47:                                               ; preds = %45
  call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #16
  br label %49

48:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %38) #16
  br label %49

49:                                               ; preds = %48, %47, %45, %34
  call void @mutex_unlock(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @settings_rsp(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cmd_lookup, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %10 = tail call fastcc i32 @get_current_settings(ptr noundef %9) #16
  store i32 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = call i32 @mgmt_cmd_complete(ptr noundef %5, i16 noundef zeroext %12, i16 noundef zeroext %7, i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load ptr, ptr %4, align 4
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #16, !srcloc !10
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #16, !srcloc !14
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !15

26:                                               ; preds = %20
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !12

30:                                               ; preds = %26, %20
  %31 = phi i32 [ 2, %20 ], [ 1, %26 ]
  call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #16
  br label %32

32:                                               ; preds = %30, %26, %2
  call void @mgmt_pending_free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mgmt_power_off(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca [512 x i8], align 2
  %4 = alloca %struct.cmd_lookup, align 4
  %5 = alloca i8, align 1
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.cmd_lookup, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store ptr %0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false)
  call void @mgmt_pending_foreach(i16 noundef zeroext 5, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %4) #16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 512
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 15, i8 17
  store i8 %12, ptr %5, align 1
  call void @mgmt_pending_foreach(i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @cmd_complete_rsp, ptr noundef nonnull %5) #16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  %14 = call i32 @bcmp(ptr noundef dereferenceable(3) %13, ptr noundef nonnull dereferenceable(3) %6, i32 3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = call i32 @mgmt_send_event(i16 noundef zeroext 7, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %6, i16 noundef zeroext 3, i32 noundef 7, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #16
  %18 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(510) %18, i8 0, i64 510, i1 false) #16
  %19 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %0, ptr noundef %18) #16
  store i16 %19, ptr %3, align 2
  %20 = add i16 %19, 2
  %21 = call i32 @mgmt_send_event(i16 noundef zeroext 37, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext %20, i32 noundef 4, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #16
  br label %22

22:                                               ; preds = %16, %1
  %23 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %24 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %24, ptr %2, align 4
  %25 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %2, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %23) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #16, !srcloc !10
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #16, !srcloc !11
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %37, label %35, !prof !12

35:                                               ; preds = %33
  call void @refcount_warn_saturate(ptr noundef %29, i32 noundef 3) #16
  br label %37

36:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %26) #16
  br label %37

37:                                               ; preds = %36, %35, %33, %22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_set_powered_failed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, -132
  %7 = select i1 %6, i8 18, i8 3
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext 5, i8 noundef zeroext %7) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %3) #16
  br label %13

13:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_status(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_new_link_key(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_new_link_key, align 1
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %4) #16
  store i8 %5, ptr %4, align 1
  %6 = getelementptr inbounds %struct.mgmt_ev_new_link_key, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.link_key, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false) #16
  %8 = getelementptr inbounds %struct.mgmt_ev_new_link_key, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.link_key, ptr %1, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = getelementptr inbounds %struct.mgmt_ev_new_link_key, ptr %4, i32 0, i32 1, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.mgmt_ev_new_link_key, ptr %4, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.link_key, ptr %1, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %12, ptr noundef align 1 dereferenceable(16) %13, i32 16, i1 false)
  %14 = getelementptr inbounds %struct.link_key, ptr %1, i32 0, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %struct.mgmt_ev_new_link_key, ptr %4, i32 0, i32 1, i32 3
  store i8 %15, ptr %16, align 1
  %17 = call i32 @mgmt_send_event(i16 noundef zeroext 9, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 26, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %4) #16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_new_ltk(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_new_long_term_key, align 1
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %4, i32 9
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  %8 = load i8, ptr %6, align 2
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr %struct.smp_ltk, ptr %1, i32 0, i32 2, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = icmp ugt i8 %12, -65
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i8 [ %5, %14 ], [ 0, %10 ]
  store i8 %16, ptr %4, align 1
  %17 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %17, ptr noundef align 1 dereferenceable(6) %18, i32 6, i1 false) #16
  %19 = icmp eq i8 %8, 0
  %20 = select i1 %19, i8 1, i8 2
  %21 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 5
  %23 = load i8, ptr %22, align 8
  switch i8 %23, label %34 [
    i8 1, label %24
    i8 2, label %24
    i8 3, label %29
    i8 4, label %35
  ]

24:                                               ; preds = %15, %15
  %25 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i8
  br label %35

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 2, i8 3
  br label %35

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %29, %24, %15
  %36 = phi i8 [ 0, %34 ], [ %28, %24 ], [ %33, %29 ], [ %23, %15 ]
  %37 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 1
  store i8 %36, ptr %37, align 1
  %38 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 3
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 7
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 4
  store i16 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 8
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 5
  store i64 %45, ptr %46, align 1
  %47 = icmp eq i8 %23, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 2
  store i8 1, ptr %49, align 1
  br label %50

50:                                               ; preds = %48, %35
  %51 = getelementptr inbounds %struct.mgmt_ev_new_long_term_key, ptr %4, i32 0, i32 1, i32 6
  %52 = getelementptr inbounds %struct.smp_ltk, ptr %1, i32 0, i32 9
  %53 = zext i8 %39 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %51, ptr align 8 %52, i32 %53, i1 false)
  %54 = getelementptr i8, ptr %51, i32 %53
  %55 = sub nsw i32 16, %53
  call void @llvm.memset.p0.i32(ptr align 1 %54, i8 0, i32 %55, i1 false)
  %56 = call i32 @mgmt_send_event(i16 noundef zeroext 10, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 37, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_new_irk(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_new_irk, align 1
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #16
  store i8 %5, ptr %4, align 1
  %6 = getelementptr inbounds %struct.mgmt_ev_new_irk, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.smp_irk, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false) #16
  %8 = getelementptr inbounds %struct.mgmt_ev_new_irk, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.smp_irk, ptr %1, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false) #16
  %10 = getelementptr inbounds %struct.smp_irk, ptr %1, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 1, i8 2
  %14 = getelementptr inbounds %struct.mgmt_ev_new_irk, ptr %4, i32 0, i32 2, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.mgmt_ev_new_irk, ptr %4, i32 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.smp_irk, ptr %1, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %15, ptr noundef align 1 dereferenceable(16) %16, i32 16, i1 false)
  %17 = call i32 @mgmt_send_event(i16 noundef zeroext 24, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 30, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_new_csrk(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_new_csrk, align 1
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.smp_csrk, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr [6 x i8], ptr %1, i32 0, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, -65
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %3
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i8 [ %5, %13 ], [ 0, %9 ]
  store i8 %15, ptr %4, align 1
  %16 = getelementptr inbounds %struct.mgmt_ev_new_csrk, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %16, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %17 = icmp eq i8 %7, 0
  %18 = select i1 %17, i8 1, i8 2
  %19 = getelementptr inbounds %struct.mgmt_ev_new_csrk, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.smp_csrk, ptr %1, i32 0, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.mgmt_ev_new_csrk, ptr %4, i32 0, i32 1, i32 1
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.mgmt_ev_new_csrk, ptr %4, i32 0, i32 1, i32 2
  %24 = getelementptr inbounds %struct.smp_csrk, ptr %1, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %23, ptr noundef align 1 dereferenceable(16) %24, i32 16, i1 false)
  %25 = call i32 @mgmt_send_event(i16 noundef zeroext 25, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 25, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_new_conn_param(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7) local_unnamed_addr #2 {
  %9 = alloca %struct.mgmt_ev_new_conn_param, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #16
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr [6 x i8], ptr %1, i32 0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, -65
  br i1 %14, label %15, label %24

15:                                               ; preds = %11, %8
  %16 = phi i8 [ 1, %8 ], [ 2, %11 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %9, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %17 = getelementptr inbounds %struct.mgmt_addr_info, ptr %9, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, ptr %9, i32 0, i32 1
  store i8 %3, ptr %18, align 1
  %19 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, ptr %9, i32 0, i32 2
  store i16 %4, ptr %19, align 1
  %20 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, ptr %9, i32 0, i32 3
  store i16 %5, ptr %20, align 1
  %21 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, ptr %9, i32 0, i32 4
  store i16 %6, ptr %21, align 1
  %22 = getelementptr inbounds %struct.mgmt_ev_new_conn_param, ptr %9, i32 0, i32 5
  store i16 %7, ptr %22, align 1
  %23 = call i32 @mgmt_send_event(i16 noundef zeroext 28, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %9, i16 noundef zeroext 16, i32 noundef 0, ptr noundef null) #16
  br label %24

24:                                               ; preds = %15, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_device_connected(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 41
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = zext i8 %3 to i32
  %9 = add nuw nsw i32 %8, 7
  %10 = zext i8 %6 to i32
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = tail call ptr @mgmt_alloc_skb(ptr noundef %0, i16 noundef zeroext 11, i32 noundef %11) #16
  %13 = tail call ptr @skb_put(ptr noundef %12, i32 noundef 13) #16
  %14 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %13, ptr noundef align 1 dereferenceable(6) %14, i32 6, i1 false) #16
  %15 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %16, -128
  %20 = icmp eq i8 %18, 0
  %21 = select i1 %20, i8 1, i8 2
  %22 = select i1 %19, i8 %21, i8 0
  %23 = getelementptr inbounds %struct.mgmt_addr_info, ptr %13, i32 0, i32 1
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 16
  %25 = load i8, ptr %24, align 1, !range !16
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.mgmt_ev_device_connected, ptr %13, i32 0, i32 1
  store i32 %27, ptr %28, align 1
  %29 = load i8, ptr %5, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = zext i8 %29 to i32
  %33 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 40
  %34 = tail call ptr @skb_put(ptr noundef %12, i32 noundef %32) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %33, i32 %32, i1 false) #16
  %35 = load i8, ptr %5, align 1
  %36 = zext i8 %35 to i16
  br label %66

37:                                               ; preds = %4
  %38 = icmp eq i8 %3, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.mgmt_ev_device_connected, ptr %13, i32 0, i32 3
  %41 = zext i8 %3 to i32
  %42 = add i8 %3, 1
  store i8 %42, ptr %40, align 1
  %43 = getelementptr %struct.mgmt_ev_device_connected, ptr %13, i32 1, i32 0, i32 0, i32 0, i32 1
  store i8 9, ptr %43, align 1
  %44 = getelementptr %struct.mgmt_ev_device_connected, ptr %13, i32 1, i32 0, i32 0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %2, i32 %41, i1 false) #16
  %45 = zext i8 %3 to i16
  %46 = add nuw nsw i16 %45, 2
  %47 = zext i16 %46 to i32
  %48 = tail call ptr @skb_put(ptr noundef %12, i32 noundef %47) #16
  br label %49

49:                                               ; preds = %39, %37
  %50 = phi i16 [ %46, %39 ], [ 0, %37 ]
  %51 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 18
  %52 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %51, ptr noundef nonnull dereferenceable(3) @.str, i32 3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mgmt_ev_device_connected, ptr %13, i32 0, i32 3
  %56 = add nuw nsw i16 %50, 1
  %57 = zext i16 %50 to i32
  %58 = getelementptr i8, ptr %55, i32 %57
  store i8 4, ptr %58, align 1
  %59 = add nuw nsw i16 %50, 2
  %60 = zext i16 %56 to i32
  %61 = getelementptr i8, ptr %55, i32 %60
  store i8 13, ptr %61, align 1
  %62 = zext i16 %59 to i32
  %63 = getelementptr i8, ptr %55, i32 %62
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %63, ptr noundef align 1 dereferenceable(3) %51, i32 3, i1 false) #16
  %64 = add nuw nsw i16 %50, 5
  %65 = tail call ptr @skb_put(ptr noundef %12, i32 noundef 5) #16
  br label %66

66:                                               ; preds = %54, %49, %31
  %67 = phi i16 [ %36, %31 ], [ %64, %54 ], [ %50, %49 ]
  %68 = getelementptr inbounds %struct.mgmt_ev_device_connected, ptr %13, i32 0, i32 2
  store i16 %67, ptr %68, align 1
  %69 = tail call i32 @mgmt_send_event_skb(i16 noundef zeroext 3, ptr noundef %12, i32 noundef 0, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mgmt_alloc_skb(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @mgmt_powering_down(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_device_disconnected(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = alloca %struct.mgmt_ev_device_disconnected, align 8
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4
  %9 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %24, %26
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 141
  %31 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %30) #16
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %33 = load ptr, ptr %32, align 8
  %34 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %33, ptr noundef %30) #16
  br label %35

35:                                               ; preds = %29, %16, %11, %6
  br i1 %5, label %36, label %62

36:                                               ; preds = %35
  switch i8 %2, label %62 [
    i8 -128, label %37
    i8 1, label %37
  ]

37:                                               ; preds = %36, %36
  call void @mgmt_pending_foreach(i16 noundef zeroext 20, ptr noundef %0, ptr noundef nonnull @disconnect_rsp, ptr noundef nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %38 = icmp eq i8 %2, -128
  %39 = icmp eq i8 %3, 0
  %40 = select i1 %39, i8 1, i8 2
  %41 = select i1 %38, i8 %40, i8 0
  %42 = getelementptr inbounds %struct.mgmt_addr_info, ptr %7, i32 0, i32 1
  store i8 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.mgmt_ev_device_disconnected, ptr %7, i32 0, i32 1
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %45 = load i8, ptr %44, align 1, !range !16
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %46, i8 %4, i8 5
  store i8 %47, ptr %43, align 1
  %48 = load ptr, ptr %8, align 4
  %49 = call i32 @mgmt_send_event(i16 noundef zeroext 12, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 8, i32 noundef 0, ptr noundef %48) #16
  %50 = load ptr, ptr %8, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #16, !srcloc !10
  %54 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #16, !srcloc !11
  %55 = extractvalue { i32, i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %61, label %59, !prof !12

59:                                               ; preds = %57
  call void @refcount_warn_saturate(ptr noundef %53, i32 noundef 3) #16
  br label %61

60:                                               ; preds = %52
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %50) #16
  br label %61

61:                                               ; preds = %60, %59, %57, %37
  call void @mgmt_pending_foreach(i16 noundef zeroext 27, ptr noundef %0, ptr noundef nonnull @unpair_device_rsp, ptr noundef %0) #16
  br label %62

62:                                               ; preds = %61, %36, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disconnect_rsp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %0, i8 noundef zeroext 0) #16
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !14
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !15

12:                                               ; preds = %2
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !12

16:                                               ; preds = %12, %2
  %17 = phi i32 [ 2, %2 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #16
  br label %18

18:                                               ; preds = %16, %12
  tail call void @mgmt_pending_remove(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unpair_device_rsp(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.mgmt_ev_device_unpaired, align 1
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %5, i32 6, i1 false) #16
  %10 = getelementptr inbounds %struct.mgmt_addr_info, ptr %3, i32 0, i32 1
  store i8 %7, ptr %10, align 1
  %11 = call i32 @mgmt_send_event(i16 noundef zeroext 22, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #16
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 %13(ptr noundef %0, i8 noundef zeroext 0) #16
  call void @mgmt_pending_remove(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_disconnect_failed(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = icmp eq i8 %2, -128
  %7 = icmp eq i8 %3, 0
  %8 = select i1 %7, i8 1, i8 2
  %9 = select i1 %6, i8 %8, i8 0
  tail call void @mgmt_pending_foreach(i16 noundef zeroext 27, ptr noundef %0, ptr noundef nonnull @unpair_device_rsp, ptr noundef %0) #16
  %10 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 20, ptr noundef %0) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %14, i32 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.mgmt_addr_info, ptr %14, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %9
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %10, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ult i8 %4, 64
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = zext i8 %4 to i32
  %27 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i8 [ %28, %25 ], [ 3, %21 ]
  %31 = tail call i32 %23(ptr noundef nonnull %10, i8 noundef zeroext %30) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %10) #16
  br label %32

32:                                               ; preds = %29, %17, %12, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_connect_failed(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = alloca %struct.mgmt_ev_connect_failed, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %7 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %22, %24
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 141
  %29 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %28) #16
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %31 = load ptr, ptr %30, align 8
  %32 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %31, ptr noundef %28) #16
  br label %33

33:                                               ; preds = %27, %14, %9, %5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %34 = icmp eq i8 %2, -128
  %35 = icmp eq i8 %3, 0
  %36 = select i1 %35, i8 1, i8 2
  %37 = select i1 %34, i8 %36, i8 0
  %38 = getelementptr inbounds %struct.mgmt_addr_info, ptr %6, i32 0, i32 1
  store i8 %37, ptr %38, align 2
  %39 = icmp ult i8 %4, 64
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = zext i8 %4 to i32
  %42 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  br label %44

44:                                               ; preds = %40, %33
  %45 = phi i8 [ %43, %40 ], [ 3, %33 ]
  %46 = getelementptr inbounds %struct.mgmt_ev_connect_failed, ptr %6, i32 0, i32 1
  store i8 %45, ptr %46, align 1
  %47 = call i32 @mgmt_send_event(i16 noundef zeroext 13, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %6, i16 noundef zeroext 8, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pin_code_request(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_pin_code_request, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %5 = getelementptr inbounds %struct.mgmt_ev_pin_code_request, ptr %4, i32 0, i32 1
  store i8 %2, ptr %5, align 1
  %6 = call i32 @mgmt_send_event(i16 noundef zeroext 14, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 8, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pin_code_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 22, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i8 %2, 64
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext i8 %2 to i32
  %12 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i8 [ %13, %10 ], [ 3, %6 ]
  %16 = tail call i32 %8(ptr noundef nonnull %4, i8 noundef zeroext %15) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %4) #16
  br label %17

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_pin_code_neg_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 23, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult i8 %2, 64
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = zext i8 %2 to i32
  %12 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i8 [ %13, %10 ], [ 3, %6 ]
  %16 = tail call i32 %8(ptr noundef nonnull %4, i8 noundef zeroext %15) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %4) #16
  br label %17

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_confirm_request(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = alloca %struct.mgmt_ev_user_confirm_request, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %8 = icmp eq i8 %2, -128
  %9 = icmp eq i8 %3, 0
  %10 = select i1 %9, i8 1, i8 2
  %11 = select i1 %8, i8 %10, i8 0
  %12 = getelementptr inbounds %struct.mgmt_addr_info, ptr %7, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, ptr %7, i32 0, i32 1
  store i8 %5, ptr %13, align 1
  %14 = getelementptr inbounds %struct.mgmt_ev_user_confirm_request, ptr %7, i32 0, i32 2
  store i32 %4, ptr %14, align 1
  %15 = call i32 @mgmt_send_event(i16 noundef zeroext 15, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 12, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_passkey_request(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.mgmt_ev_user_passkey_request, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %6 = icmp eq i8 %2, -128
  %7 = icmp eq i8 %3, 0
  %8 = select i1 %7, i8 1, i8 2
  %9 = select i1 %6, i8 %8, i8 0
  %10 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = call i32 @mgmt_send_event(i16 noundef zeroext 16, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 7, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #16
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_confirm_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 28, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult i8 %4, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i8 %4 to i32
  %14 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %15, %12 ], [ 3, %8 ]
  %18 = tail call i32 %10(ptr noundef nonnull %6, i8 noundef zeroext %17) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %6) #16
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %16 ], [ -2, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_confirm_neg_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 29, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult i8 %4, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i8 %4 to i32
  %14 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %15, %12 ], [ 3, %8 ]
  %18 = tail call i32 %10(ptr noundef nonnull %6, i8 noundef zeroext %17) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %6) #16
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %16 ], [ -2, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_passkey_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 30, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult i8 %4, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i8 %4 to i32
  %14 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %15, %12 ], [ 3, %8 ]
  %18 = tail call i32 %10(ptr noundef nonnull %6, i8 noundef zeroext %17) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %6) #16
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %16 ], [ -2, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_passkey_neg_reply_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #2 {
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 31, ptr noundef %0) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ult i8 %4, 64
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i8 %4 to i32
  %14 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i8 [ %15, %12 ], [ 3, %8 ]
  %18 = tail call i32 %10(ptr noundef nonnull %6, i8 noundef zeroext %17) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %6) #16
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi i32 [ 0, %16 ], [ -2, %5 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_user_passkey_notify(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5) local_unnamed_addr #2 {
  %7 = alloca %struct.mgmt_ev_passkey_notify, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %8 = icmp eq i8 %2, -128
  %9 = icmp eq i8 %3, 0
  %10 = select i1 %9, i8 1, i8 2
  %11 = select i1 %8, i8 %10, i8 0
  %12 = getelementptr inbounds %struct.mgmt_addr_info, ptr %7, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.mgmt_ev_passkey_notify, ptr %7, i32 0, i32 1
  store i32 %4, ptr %13, align 1
  %14 = getelementptr inbounds %struct.mgmt_ev_passkey_notify, ptr %7, i32 0, i32 2
  store i8 %5, ptr %14, align 1
  %15 = call i32 @mgmt_send_event(i16 noundef zeroext 23, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 12, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_auth_failed(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_auth_failed, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = icmp ult i8 %1, 64
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  %7 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i8 [ %8, %5 ], [ 3, %2 ]
  %11 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %11, i32 6, i1 false) #16
  %12 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 3
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %13, -128
  %17 = icmp eq i8 %15, 0
  %18 = select i1 %17, i8 1, i8 2
  %19 = select i1 %16, i8 %18, i8 0
  %20 = getelementptr inbounds %struct.mgmt_addr_info, ptr %3, i32 0, i32 1
  store i8 %19, ptr %20, align 2
  %21 = getelementptr inbounds %struct.mgmt_ev_auth_failed, ptr %3, i32 0, i32 1
  store i8 %10, ptr %21, align 1
  %22 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 184
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %48, label %27

27:                                               ; preds = %36, %9
  %28 = phi ptr [ %37, %36 ], [ %25, %9 ]
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = icmp eq i16 %30, 25
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %28, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %27
  %37 = load ptr, ptr %28, align 4
  %38 = icmp eq ptr %37, %24
  br i1 %38, label %48, label %27

39:                                               ; preds = %32
  %40 = icmp eq ptr %28, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %28, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @mgmt_send_event(i16 noundef zeroext 17, ptr noundef %23, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 8, i32 noundef 0, ptr noundef %43) #16
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %28, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef nonnull %28, i8 noundef zeroext %10) #16
  call void @mgmt_pending_remove(ptr noundef nonnull %28) #16
  br label %50

48:                                               ; preds = %39, %36, %9
  %49 = call i32 @mgmt_send_event(i16 noundef zeroext 17, ptr noundef %23, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 8, i32 noundef 0, ptr noundef null) #16
  br label %50

50:                                               ; preds = %48, %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_auth_enable_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_lookup, align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.cmd_lookup, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  store ptr %0, ptr %6, align 4
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  %9 = icmp ult i8 %1, 64
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = zext i8 %1 to i32
  %12 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i8 [ %13, %10 ], [ 3, %8 ]
  store i8 %15, ptr %5, align 1
  call void @mgmt_pending_foreach(i16 noundef zeroext 10, ptr noundef %0, ptr noundef nonnull @cmd_status_rsp, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %44

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %20, label %25, label %22

22:                                               ; preds = %16
  %23 = tail call i32 @_test_and_set_bit(i32 noundef 29, ptr noundef %21) #16
  %24 = icmp eq i32 %23, 0
  call void @mgmt_pending_foreach(i16 noundef zeroext 10, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %4) #16
  br i1 %24, label %28, label %32

25:                                               ; preds = %16
  %26 = tail call i32 @_test_and_clear_bit(i32 noundef 29, ptr noundef %21) #16
  %27 = icmp eq i32 %26, 0
  call void @mgmt_pending_foreach(i16 noundef zeroext 10, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %4) #16
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %30 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %30, ptr %3, align 4
  %31 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %29) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %32

32:                                               ; preds = %28, %25, %22
  %33 = load ptr, ptr %4, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #16, !srcloc !10
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #16, !srcloc !11
  %38 = extractvalue { i32, i32, i32 } %37, 0
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %44, label %42, !prof !12

42:                                               ; preds = %40
  call void @refcount_warn_saturate(ptr noundef %36, i32 noundef 3) #16
  br label %44

43:                                               ; preds = %35
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %33) #16
  br label %44

44:                                               ; preds = %43, %42, %40, %32, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cmd_status_rsp(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = load i8, ptr %1, align 1
  %11 = tail call i32 @mgmt_cmd_status(ptr noundef %4, i16 noundef zeroext %7, i16 noundef zeroext %9, i8 noundef zeroext %10) #16
  tail call void @mgmt_pending_remove(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_set_class_of_dev_complete(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca [512 x i8], align 2
  %5 = alloca %struct.cmd_lookup, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.cmd_lookup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.cmd_lookup, ptr %5, i32 0, i32 2
  %8 = icmp ult i8 %2, 64
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = zext i8 %2 to i32
  %11 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i8 [ %12, %9 ], [ 3, %3 ]
  store i8 %14, ptr %7, align 4
  call void @mgmt_pending_foreach(i16 noundef zeroext 14, ptr noundef %0, ptr noundef nonnull @sk_lookup, ptr noundef nonnull %5) #16
  call void @mgmt_pending_foreach(i16 noundef zeroext 16, ptr noundef %0, ptr noundef nonnull @sk_lookup, ptr noundef nonnull %5) #16
  call void @mgmt_pending_foreach(i16 noundef zeroext 17, ptr noundef %0, ptr noundef nonnull @sk_lookup, ptr noundef nonnull %5) #16
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = call i32 @mgmt_send_event(i16 noundef zeroext 7, ptr noundef %0, i16 noundef zeroext 3, ptr noundef %1, i16 noundef zeroext 3, i32 noundef 7, ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #16
  %18 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(510) %18, i8 0, i64 510, i1 false) #16
  %19 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %0, ptr noundef %18) #16
  store i16 %19, ptr %4, align 2
  %20 = add i16 %19, 2
  %21 = call i32 @mgmt_send_event(i16 noundef zeroext 37, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext %20, i32 noundef 4, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #16
  br label %22

22:                                               ; preds = %16, %13
  %23 = load ptr, ptr %5, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #16, !srcloc !10
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #16, !srcloc !11
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !12

32:                                               ; preds = %30
  call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #16
  br label %34

33:                                               ; preds = %25
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %23) #16
  br label %34

34:                                               ; preds = %33, %32, %30, %22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sk_lookup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !14
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !15

12:                                               ; preds = %5
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !12

16:                                               ; preds = %12, %5
  %17 = phi i32 [ 2, %5 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #16
  br label %18

18:                                               ; preds = %16, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_set_local_name_complete(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #2 {
  %4 = alloca [512 x i8], align 2
  %5 = alloca %struct.mgmt_cp_set_local_name, align 1
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %5) #16
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i32 248
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %8, i8 0, i32 12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %5, ptr noundef align 1 dereferenceable(248) %1, i32 248, i1 false)
  %9 = getelementptr inbounds %struct.mgmt_cp_set_local_name, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %9, ptr noundef align 1 dereferenceable(10) %10, i32 10, i1 false)
  %11 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 15, ptr noundef %0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %14, ptr noundef align 1 dereferenceable(248) %1, i32 248, i1 false)
  %15 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %30

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %11, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @mgmt_send_event(i16 noundef zeroext 8, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 260, i32 noundef 8, ptr noundef %19) #16
  %21 = load ptr, ptr %18, align 4
  br label %24

22:                                               ; preds = %13
  %23 = call i32 @mgmt_send_event(i16 noundef zeroext 8, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 260, i32 noundef 8, ptr noundef null) #16
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %21, %17 ], [ null, %22 ]
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #16
  %26 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(510) %26, i8 0, i64 510, i1 false) #16
  %27 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %0, ptr noundef %26) #16
  store i16 %27, ptr %4, align 2
  %28 = add i16 %27, 2
  %29 = call i32 @mgmt_send_event(i16 noundef zeroext 37, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext %28, i32 noundef 4, ptr noundef %25) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #16
  br label %30

30:                                               ; preds = %24, %13, %3
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_device_found(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef readonly %4, i8 noundef signext %5, i32 noundef %6, ptr noundef readonly %7, i16 noundef zeroext %8, ptr nocapture noundef readonly %9, i8 noundef zeroext %10) local_unnamed_addr #2 {
  %12 = alloca [3 x i8], align 1
  %13 = tail call zeroext i1 @hci_discovery_active(ptr noundef %0) #16
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  switch i8 %2, label %21 [
    i8 1, label %196
    i8 -128, label %15
  ]

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) #16
  br i1 %20, label %21, label %196

21:                                               ; preds = %19, %15, %14, %11
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 13
  %23 = load i8, ptr %22, align 1, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %81, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 15
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 127
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = icmp eq i8 %5, 127
  br i1 %30, label %196, label %31

31:                                               ; preds = %29
  %32 = icmp sgt i8 %27, %5
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %196, label %38

38:                                               ; preds = %33, %31, %25
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 16
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 17
  %44 = load ptr, ptr %43, align 8
  %45 = tail call fastcc zeroext i1 @eir_has_uuids(ptr noundef %7, i16 noundef zeroext %8, i16 noundef zeroext %40, ptr noundef %44) #16
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = zext i8 %10 to i16
  %48 = load i16, ptr %39, align 4
  %49 = load ptr, ptr %43, align 8
  %50 = tail call fastcc zeroext i1 @eir_has_uuids(ptr noundef %9, i16 noundef zeroext %47, i16 noundef zeroext %48, ptr noundef %49) #16
  br i1 %50, label %51, label %196

51:                                               ; preds = %46, %42, %38
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 16384
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 18
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 19
  %65 = load i32, ptr %64, align 8
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = add i32 %63, -20
  %68 = add i32 %67, %65
  %69 = sub i32 %68, %66
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158
  %75 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %73, ptr noundef %74, i32 noundef 20) #16
  br label %76

76:                                               ; preds = %71, %61, %56
  %77 = load i8, ptr %26, align 1
  %78 = icmp ne i8 %77, 127
  %79 = icmp sgt i8 %77, %5
  %80 = and i1 %78, %79
  br i1 %80, label %196, label %81

81:                                               ; preds = %76, %51, %21
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 14
  %83 = load i8, ptr %82, align 2, !range !16
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %123, label %85

85:                                               ; preds = %81
  %86 = icmp eq ptr %4, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %85
  %88 = getelementptr i8, ptr %4, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 32
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %196, label %123

92:                                               ; preds = %85
  %93 = zext i16 %8 to i32
  %94 = icmp ult i16 %8, 2
  br i1 %94, label %196, label %95

95:                                               ; preds = %92
  %96 = add nsw i32 %93, -1
  br label %97

97:                                               ; preds = %116, %95
  %98 = phi i32 [ %105, %116 ], [ 0, %95 ]
  %99 = phi ptr [ %117, %116 ], [ %7, %95 ]
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %196, label %102

102:                                              ; preds = %97
  %103 = zext i8 %100 to i32
  %104 = add nuw nsw i32 %103, 1
  %105 = add i32 %104, %98
  %106 = icmp ugt i32 %105, %93
  br i1 %106, label %196, label %107

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %99, i32 1
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = icmp eq i8 %100, 1
  %113 = getelementptr i8, ptr %99, i32 2
  %114 = icmp eq ptr %113, null
  %115 = or i1 %112, %114
  br i1 %115, label %196, label %119

116:                                              ; preds = %107
  %117 = getelementptr i8, ptr %99, i32 %104
  %118 = icmp ult i32 %105, %96
  br i1 %118, label %97, label %196

119:                                              ; preds = %111
  %120 = load i8, ptr %113, align 1
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %196, label %123

123:                                              ; preds = %119, %87, %81
  %124 = zext i16 %8 to i32
  %125 = zext i8 %10 to i32
  %126 = add nuw nsw i32 %124, 19
  %127 = add nuw nsw i32 %126, %125
  %128 = tail call ptr @mgmt_alloc_skb(ptr noundef %0, i16 noundef zeroext 18, i32 noundef %127) #16
  %129 = icmp eq ptr %128, null
  br i1 %129, label %196, label %130

130:                                              ; preds = %123
  %131 = tail call ptr @skb_put(ptr noundef nonnull %128, i32 noundef 14) #16
  %132 = icmp eq i8 %5, 127
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 12
  %135 = load i8, ptr %134, align 8, !range !16
  %136 = icmp eq i8 %135, 0
  %137 = icmp eq i8 %2, 1
  %138 = and i1 %137, %136
  %139 = select i1 %138, i8 0, i8 127
  br label %140

140:                                              ; preds = %133, %130
  %141 = phi i8 [ %5, %130 ], [ %139, %133 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %131, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %142 = icmp eq i8 %2, -128
  %143 = icmp eq i8 %3, 0
  %144 = select i1 %143, i8 1, i8 2
  %145 = select i1 %142, i8 %144, i8 0
  %146 = getelementptr inbounds %struct.mgmt_addr_info, ptr %131, i32 0, i32 1
  store i8 %145, ptr %146, align 1
  %147 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %131, i32 0, i32 1
  store i8 %141, ptr %147, align 1
  %148 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %131, i32 0, i32 2
  store i32 %6, ptr %148, align 1
  %149 = icmp eq i16 %8, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = tail call ptr @skb_put(ptr noundef nonnull %128, i32 noundef %124) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %151, ptr align 1 %7, i32 %124, i1 false) #16
  %152 = icmp eq ptr %4, null
  br i1 %152, label %186, label %155

153:                                              ; preds = %140
  %154 = icmp eq ptr %4, null
  br i1 %154, label %186, label %181

155:                                              ; preds = %150
  %156 = icmp ult i16 %8, 2
  br i1 %156, label %181, label %157

157:                                              ; preds = %155
  %158 = add nsw i32 %124, -1
  br label %159

159:                                              ; preds = %178, %157
  %160 = phi i32 [ %167, %178 ], [ 0, %157 ]
  %161 = phi ptr [ %179, %178 ], [ %7, %157 ]
  %162 = load i8, ptr %161, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %181, label %164

164:                                              ; preds = %159
  %165 = zext i8 %162 to i32
  %166 = add nuw nsw i32 %165, 1
  %167 = add i32 %166, %160
  %168 = icmp ugt i32 %167, %124
  br i1 %168, label %181, label %169

169:                                              ; preds = %164
  %170 = getelementptr i8, ptr %161, i32 1
  %171 = load i8, ptr %170, align 1
  %172 = icmp eq i8 %171, 13
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = icmp eq i8 %162, 1
  %175 = getelementptr i8, ptr %161, i32 2
  %176 = icmp eq ptr %175, null
  %177 = or i1 %174, %176
  br i1 %177, label %181, label %186

178:                                              ; preds = %169
  %179 = getelementptr i8, ptr %161, i32 %166
  %180 = icmp ult i32 %167, %158
  br i1 %180, label %159, label %181

181:                                              ; preds = %178, %173, %164, %159, %155, %153
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %12, ptr noundef align 1 dereferenceable(3) %4, i32 3, i1 false)
  %182 = add i16 %8, 5
  %183 = tail call ptr @skb_put(ptr noundef nonnull %128, i32 noundef 5) #16
  store i8 4, ptr %183, align 1
  %184 = getelementptr inbounds i8, ptr %183, i32 1
  store i8 13, ptr %184, align 1
  %185 = getelementptr inbounds i8, ptr %183, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %185, ptr noundef nonnull align 1 dereferenceable(3) %12, i32 3, i1 false)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12)
  br label %186

186:                                              ; preds = %181, %173, %153, %150
  %187 = phi i16 [ %182, %181 ], [ %8, %150 ], [ 0, %153 ], [ %8, %173 ]
  %188 = icmp eq i8 %10, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = tail call ptr @skb_put(ptr noundef nonnull %128, i32 noundef %125) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %190, ptr align 1 %9, i32 %125, i1 false) #16
  br label %191

191:                                              ; preds = %189, %186
  %192 = zext i8 %10 to i16
  %193 = add i16 %187, %192
  %194 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %131, i32 0, i32 3
  store i16 %193, ptr %194, align 1
  %195 = tail call i32 @mgmt_send_event_skb(i16 noundef zeroext 3, ptr noundef nonnull %128, i32 noundef 0, ptr noundef null) #16
  br label %196

196:                                              ; preds = %191, %123, %119, %116, %111, %102, %97, %92, %87, %76, %46, %33, %29, %19, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_discovery_active(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_adv_monitoring(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_remote_name(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef signext %4, ptr noundef readonly %5, i8 noundef zeroext %6) local_unnamed_addr #2 {
  %8 = icmp eq i8 %6, 0
  %9 = zext i8 %6 to i32
  %10 = add nuw nsw i32 %9, 2
  %11 = select i1 %8, i32 0, i32 %10
  %12 = tail call ptr @mgmt_alloc_skb(ptr noundef %0, i16 noundef zeroext 18, i32 noundef %11) #16
  %13 = tail call ptr @skb_put(ptr noundef %12, i32 noundef 14) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %13, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #16
  %14 = icmp eq i8 %2, -128
  %15 = icmp eq i8 %3, 0
  %16 = select i1 %15, i8 1, i8 2
  %17 = select i1 %14, i8 %16, i8 0
  %18 = getelementptr inbounds %struct.mgmt_addr_info, ptr %13, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %13, i32 0, i32 1
  store i8 %4, ptr %19, align 1
  %20 = icmp eq ptr %5, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %13, i32 0, i32 4
  %23 = zext i8 %6 to i32
  %24 = add i8 %6, 1
  store i8 %24, ptr %22, align 1
  %25 = getelementptr %struct.mgmt_ev_device_found, ptr %13, i32 1, i32 0, i32 0, i32 0, i32 1
  store i8 9, ptr %25, align 1
  %26 = getelementptr %struct.mgmt_ev_device_found, ptr %13, i32 1, i32 0, i32 0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr nonnull align 1 %5, i32 %23, i1 false) #16
  %27 = zext i8 %6 to i16
  %28 = add nuw nsw i16 %27, 2
  %29 = zext i16 %28 to i32
  %30 = tail call ptr @skb_put(ptr noundef %12, i32 noundef %29) #16
  br label %31

31:                                               ; preds = %21, %7
  %32 = phi i16 [ %28, %21 ], [ 0, %7 ]
  %33 = phi i32 [ 0, %21 ], [ 16, %7 ]
  %34 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %13, i32 0, i32 3
  store i16 %32, ptr %34, align 1
  %35 = getelementptr inbounds %struct.mgmt_ev_device_found, ptr %13, i32 0, i32 2
  store i32 %33, ptr %35, align 1
  %36 = tail call i32 @mgmt_send_event_skb(i16 noundef zeroext 3, ptr noundef %12, i32 noundef 0, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_discovering(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_discovering, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170
  %5 = load i32, ptr %4, align 8
  %6 = trunc i32 %5 to i8
  store i8 %6, ptr %3, align 2
  %7 = getelementptr inbounds %struct.mgmt_ev_discovering, ptr %3, i32 0, i32 1
  store i8 %1, ptr %7, align 1
  %8 = call i32 @mgmt_send_event(i16 noundef zeroext 19, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 2, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_suspending(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = alloca %struct.mgmt_ev_controller_suspend, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 %1, ptr %3, align 1
  %4 = call i32 @mgmt_send_event(i16 noundef zeroext 45, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %3, i16 noundef zeroext 1, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_resuming(ptr noundef %0, i8 noundef zeroext %1, ptr noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = alloca %struct.mgmt_ev_controller_resume, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !8
  store i8 %1, ptr %5, align 8
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %struct.mgmt_ev_controller_resume, ptr %5, i32 0, i32 1
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %7, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %9 = getelementptr inbounds %struct.mgmt_ev_controller_resume, ptr %5, i32 0, i32 1, i32 1
  store i8 %3, ptr %9, align 1
  br label %11

10:                                               ; preds = %4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %7, i8 0, i32 7, i1 false)
  br label %11

11:                                               ; preds = %10, %8
  %12 = call i32 @mgmt_send_event(i16 noundef zeroext 46, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 8, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mgmt_init() local_unnamed_addr #2 {
  %1 = tail call i32 @hci_mgmt_chan_register(ptr noundef nonnull @chan) #16
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_mgmt_chan_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mgmt_exit() local_unnamed_addr #2 {
  tail call void @hci_mgmt_chan_unregister(ptr noundef nonnull @chan) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_mgmt_chan_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mgmt_pending_find(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_send_event(i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_current_settings(ptr noundef %0) unnamed_addr #7 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = lshr i32 %10, 2
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = lshr i32 %17, 25
  %19 = and i32 %18, 2
  %20 = or i32 %19, %15
  %21 = load volatile i32, ptr %16, align 4
  %22 = or i32 %20, 4
  %23 = icmp slt i32 %21, 0
  %24 = select i1 %23, i32 %22, i32 %20
  %25 = load volatile i32, ptr %16, align 4
  %26 = lshr i32 %25, 24
  %27 = and i32 %26, 8
  %28 = or i32 %24, %27
  %29 = load volatile i32, ptr %16, align 4
  %30 = lshr i32 %29, 1
  %31 = and i32 %30, 16
  %32 = or i32 %28, %31
  %33 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = shl i32 %34, 7
  %36 = and i32 %35, 128
  %37 = or i32 %32, %36
  %38 = load volatile i32, ptr %16, align 4
  %39 = lshr i32 %38, 14
  %40 = and i32 %39, 512
  %41 = or i32 %37, %40
  %42 = load volatile i32, ptr %16, align 4
  %43 = lshr i32 %42, 24
  %44 = and i32 %43, 32
  %45 = or i32 %41, %44
  %46 = load volatile i32, ptr %16, align 4
  %47 = lshr i32 %46, 9
  %48 = and i32 %47, 64
  %49 = or i32 %45, %48
  %50 = load volatile i32, ptr %16, align 4
  %51 = lshr i32 %50, 14
  %52 = and i32 %51, 256
  %53 = or i32 %49, %52
  %54 = load volatile i32, ptr %16, align 4
  %55 = lshr i32 %54, 14
  %56 = and i32 %55, 1024
  %57 = or i32 %53, %56
  %58 = load volatile i32, ptr %16, align 4
  %59 = lshr i32 %58, 5
  %60 = and i32 %59, 2048
  %61 = or i32 %57, %60
  %62 = load volatile i32, ptr %16, align 4
  %63 = shl i32 %62, 5
  %64 = and i32 %63, 4096
  %65 = or i32 %61, %64
  %66 = load volatile i32, ptr %16, align 4
  %67 = lshr i32 %66, 5
  %68 = and i32 %67, 8192
  %69 = or i32 %65, %68
  %70 = load volatile i32, ptr %33, align 4
  %71 = and i32 %70, 128
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %14
  %74 = load volatile i32, ptr %33, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %79 = call i32 @bcmp(ptr noundef dereferenceable(6) %78, ptr noundef nonnull dereferenceable(6) %2, i32 6)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73, %14
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %83 = call i32 @bcmp(ptr noundef dereferenceable(6) %82, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %84 = icmp eq i32 %83, 0
  %85 = or i32 %69, 32768
  %86 = select i1 %84, i32 %69, i32 %85
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i32 [ %69, %77 ], [ %86, %81 ]
  %89 = load volatile i32, ptr %33, align 4
  %90 = shl i32 %89, 15
  %91 = and i32 %90, 131072
  %92 = or i32 %91, %88
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = tail call fastcc i32 @get_current_settings(ptr noundef %2)
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %2, i32 0, i32 4
  %7 = load i16, ptr %6, align 8
  %8 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %7, i16 noundef zeroext %1, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_pending_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  store i8 4, ptr %1, align 1
  %10 = getelementptr i8, ptr %1, i32 1
  store i8 13, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %11, ptr noundef align 1 dereferenceable(3) %9, i32 3, i1 false) #16
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i16 [ 5, %8 ], [ 0, %2 ]
  %14 = load volatile i32, ptr %3, align 4
  %15 = and i32 %14, 8388608
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 16
  %19 = load i16, ptr %18, align 2
  %20 = add nuw nsw i16 %13, 1
  %21 = zext i16 %13 to i32
  %22 = getelementptr i8, ptr %1, i32 %21
  store i8 3, ptr %22, align 1
  %23 = or i16 %13, 2
  %24 = zext i16 %20 to i32
  %25 = getelementptr i8, ptr %1, i32 %24
  store i8 25, ptr %25, align 1
  %26 = zext i16 %23 to i32
  %27 = getelementptr i8, ptr %1, i32 %26
  store i16 %19, ptr %27, align 1
  %28 = add nuw nsw i16 %13, 4
  br label %29

29:                                               ; preds = %17, %12
  %30 = phi i16 [ %28, %17 ], [ %13, %12 ]
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  %32 = tail call i32 @strlen(ptr noundef %31)
  %33 = trunc i32 %32 to i8
  %34 = and i32 %32, 255
  %35 = add i8 %33, 1
  %36 = add nuw nsw i16 %30, 1
  %37 = zext i16 %30 to i32
  %38 = getelementptr i8, ptr %1, i32 %37
  store i8 %35, ptr %38, align 1
  %39 = add nuw nsw i16 %30, 2
  %40 = zext i16 %36 to i32
  %41 = getelementptr i8, ptr %1, i32 %40
  store i8 9, ptr %41, align 1
  %42 = zext i16 %39 to i32
  %43 = getelementptr i8, ptr %1, i32 %42
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %31, i32 %34, i1 false) #16
  %44 = trunc i32 %32 to i16
  %45 = and i16 %44, 255
  %46 = add nuw nsw i16 %45, %39
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 14
  %48 = tail call i32 @strlen(ptr noundef %47)
  %49 = trunc i32 %48 to i8
  %50 = and i32 %48, 255
  %51 = add i8 %49, 1
  %52 = add nuw nsw i16 %46, 1
  %53 = zext i16 %46 to i32
  %54 = getelementptr i8, ptr %1, i32 %53
  store i8 %51, ptr %54, align 1
  %55 = add nuw nsw i16 %46, 2
  %56 = zext i16 %52 to i32
  %57 = getelementptr i8, ptr %1, i32 %56
  store i8 8, ptr %57, align 1
  %58 = zext i16 %55 to i32
  %59 = getelementptr i8, ptr %1, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %47, i32 %50, i1 false) #16
  %60 = trunc i32 %48 to i16
  %61 = and i16 %60, 255
  %62 = add nuw nsw i16 %61, %55
  ret i16 %62
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_send_event_skb(i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @eir_has_uuids(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3) unnamed_addr #9 {
  %5 = alloca [16 x i8], align 1
  %6 = zext i16 %1 to i32
  %7 = icmp eq i16 %1, 0
  br i1 %7, label %119, label %8

8:                                                ; preds = %4
  %9 = zext i16 %2 to i32
  %10 = icmp eq i16 %2, 0
  %11 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 15
  %12 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 14
  %13 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 13
  %14 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 12
  br label %15

15:                                               ; preds = %113, %8
  %16 = phi i32 [ 0, %8 ], [ %117, %113 ]
  %17 = phi i16 [ 0, %8 ], [ %115, %113 ]
  %18 = phi ptr [ %0, %8 ], [ %116, %113 ]
  %19 = load i8, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %19, 0
  br i1 %21, label %112, label %22

22:                                               ; preds = %15
  %23 = sub nsw i32 %6, %16
  %24 = add nuw nsw i32 %20, 1
  %25 = icmp sgt i32 %23, %20
  br i1 %25, label %26, label %112

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %18, i32 1
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %113 [
    i8 3, label %29
    i8 2, label %29
    i8 5, label %55
    i8 4, label %55
    i8 7, label %87
    i8 6, label %87
  ]

29:                                               ; preds = %26, %26
  %30 = icmp ult i8 %19, 3
  br i1 %30, label %113, label %31

31:                                               ; preds = %52, %29
  %32 = phi i32 [ %53, %52 ], [ 3, %29 ]
  %33 = phi i32 [ %36, %52 ], [ 0, %29 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @bluetooth_base_uuid, i32 16, i1 false)
  %34 = getelementptr i8, ptr %18, i32 %32
  %35 = load i8, ptr %34, align 1
  store i8 %35, ptr %13, align 1
  %36 = add nuw nsw i32 %33, 2
  %37 = getelementptr i8, ptr %18, i32 %36
  %38 = load i8, ptr %37, align 1
  store i8 %38, ptr %14, align 1
  br i1 %10, label %52, label %39

39:                                               ; preds = %31
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %3, i32 16) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %111, label %42

42:                                               ; preds = %46, %39
  %43 = phi i32 [ %44, %46 ], [ 0, %39 ]
  %44 = add nuw nsw i32 %43, 1
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr [16 x i8], ptr %3, i32 %44
  %48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %47, i32 16) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %42

50:                                               ; preds = %46, %42
  %51 = icmp ult i32 %44, %9
  br i1 %51, label %111, label %52

52:                                               ; preds = %50, %31
  %53 = add nuw nsw i32 %33, 5
  %54 = icmp ugt i32 %53, %20
  br i1 %54, label %113, label %31

55:                                               ; preds = %26, %26
  %56 = icmp ult i8 %19, 5
  br i1 %56, label %113, label %57

57:                                               ; preds = %84, %55
  %58 = phi i32 [ %85, %84 ], [ 5, %55 ]
  %59 = phi i32 [ %62, %84 ], [ 0, %55 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @bluetooth_base_uuid, i32 12, i1 false)
  %60 = getelementptr i8, ptr %18, i32 %58
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr %11, align 1
  %62 = add nuw nsw i32 %59, 4
  %63 = getelementptr i8, ptr %18, i32 %62
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr %12, align 1
  %65 = or i32 %59, 3
  %66 = getelementptr i8, ptr %18, i32 %65
  %67 = load i8, ptr %66, align 1
  store i8 %67, ptr %13, align 1
  %68 = or i32 %59, 2
  %69 = getelementptr i8, ptr %18, i32 %68
  %70 = load i8, ptr %69, align 1
  store i8 %70, ptr %14, align 1
  br i1 %10, label %84, label %71

71:                                               ; preds = %57
  %72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %3, i32 16) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %78, %71
  %75 = phi i32 [ %76, %78 ], [ 0, %71 ]
  %76 = add nuw nsw i32 %75, 1
  %77 = icmp eq i32 %76, %9
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr [16 x i8], ptr %3, i32 %76
  %80 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %79, i32 16) #16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %74

82:                                               ; preds = %78, %74
  %83 = icmp ult i32 %76, %9
  br i1 %83, label %111, label %84

84:                                               ; preds = %82, %57
  %85 = add nuw nsw i32 %59, 9
  %86 = icmp ugt i32 %85, %20
  br i1 %86, label %113, label %57

87:                                               ; preds = %26, %26
  %88 = icmp ult i8 %19, 17
  br i1 %88, label %113, label %89

89:                                               ; preds = %87
  %90 = getelementptr i8, ptr %18, i32 2
  br label %91

91:                                               ; preds = %107, %89
  %92 = phi i32 [ %108, %107 ], [ 0, %89 ]
  %93 = getelementptr i8, ptr %90, i32 %92
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef align 1 dereferenceable(16) %93, i32 16, i1 false)
  br i1 %10, label %107, label %94

94:                                               ; preds = %91
  %95 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %3, i32 16) #16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %101, %94
  %98 = phi i32 [ %99, %101 ], [ 0, %94 ]
  %99 = add nuw nsw i32 %98, 1
  %100 = icmp eq i32 %99, %9
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr [16 x i8], ptr %3, i32 %99
  %103 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %5, ptr noundef dereferenceable(16) %102, i32 16) #16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %97

105:                                              ; preds = %101, %97
  %106 = icmp ult i32 %99, %9
  br i1 %106, label %111, label %107

107:                                              ; preds = %105, %91
  %108 = add nuw nsw i32 %92, 16
  %109 = add nuw nsw i32 %92, 33
  %110 = icmp ugt i32 %109, %20
  br i1 %110, label %113, label %91

111:                                              ; preds = %105, %94, %82, %71, %50, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %119

112:                                              ; preds = %22, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %119

113:                                              ; preds = %107, %87, %84, %55, %52, %29, %26
  %114 = trunc i32 %24 to i16
  %115 = add i16 %17, %114
  %116 = getelementptr i8, ptr %18, i32 %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  %117 = zext i16 %115 to i32
  %118 = icmp ult i16 %115, %1
  br i1 %118, label %15, label %119

119:                                              ; preds = %113, %112, %111, %4
  %120 = phi i1 [ true, %111 ], [ false, %112 ], [ false, %4 ], [ false, %113 ]
  ret i1 %120
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mgmt_init_hdev(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149
  store i32 -32, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149, i32 0, i32 1
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149, i32 0, i32 2
  store ptr @service_cache_off, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149, i32 1
  tail call void @init_timer_key(ptr noundef %11, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 222
  store i32 -32, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 222, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 222, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 222, i32 0, i32 2
  store ptr @rpa_expired, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 222, i32 1
  tail call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %3) #16
  br label %17

17:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_version(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_read_version, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #16
  store i8 1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.mgmt_rp_read_version, ptr %5, i32 0, i32 1
  store i16 21, ptr %6, align 1
  %7 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 3) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_commands(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = tail call i32 @hci_sock_test_flag(ptr noundef %0, i32 noundef 0) #16
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i16 10, i16 84
  %8 = select i1 %6, i16 12, i16 42
  %9 = zext i16 %7 to i32
  %10 = zext i16 %8 to i32
  %11 = add nuw nsw i32 %9, %10
  %12 = shl nuw nsw i32 %11, 1
  %13 = add nuw nsw i32 %12, 4
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %4
  store i16 %7, ptr %14, align 64
  %17 = getelementptr inbounds %struct.mgmt_rp_read_commands, ptr %14, i32 0, i32 1
  store i16 %8, ptr %17, align 2
  %18 = tail call i32 @hci_sock_test_flag(ptr noundef %0, i32 noundef 0) #16
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr %struct.mgmt_rp_read_commands, ptr %14, i32 0, i32 2
  %21 = shl nuw nsw i32 %9, 1
  br i1 %19, label %26, label %22

22:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %20, ptr noundef nonnull align 2 @mgmt_commands, i32 %21, i1 false)
  %23 = add nuw nsw i32 %21, 4
  %24 = getelementptr i8, ptr %14, i32 %23
  %25 = shl nuw nsw i32 %10, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %24, ptr noundef nonnull align 2 @mgmt_events, i32 %25, i1 false)
  br label %30

26:                                               ; preds = %16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %20, ptr noundef nonnull align 2 @mgmt_untrusted_commands, i32 %21, i1 false)
  %27 = add nuw nsw i32 %21, 4
  %28 = getelementptr i8, ptr %14, i32 %27
  %29 = shl nuw nsw i32 %10, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 %28, ptr noundef nonnull align 2 @mgmt_untrusted_events, i32 %29, i1 false)
  br label %30

30:                                               ; preds = %26, %22
  %31 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %14, i32 noundef %13) #16
  tail call void @kfree(ptr noundef nonnull %14) #16
  br label %32

32:                                               ; preds = %30, %4
  %33 = phi i32 [ %31, %30 ], [ -12, %4 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_index_list(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #16
  %5 = load ptr, ptr @hci_dev_list, align 4
  %6 = icmp eq ptr %5, @hci_dev_list
  br i1 %6, label %25, label %7

7:                                                ; preds = %21, %4
  %8 = phi ptr [ %23, %21 ], [ %5, %4 ]
  %9 = phi i16 [ %22, %21 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  %15 = load volatile i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = lshr i16 %16, 10
  %18 = and i16 %17, 1
  %19 = xor i16 %18, 1
  %20 = add i16 %19, %9
  br label %21

21:                                               ; preds = %13, %7
  %22 = phi i16 [ %9, %7 ], [ %20, %13 ]
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %23, @hci_dev_list
  br i1 %24, label %25, label %7

25:                                               ; preds = %21, %4
  %26 = phi i16 [ 0, %4 ], [ %22, %21 ]
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 1
  %29 = add nuw nsw i32 %28, 2
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 2592) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr @hci_dev_list, align 4
  %34 = icmp eq ptr %33, @hci_dev_list
  br i1 %34, label %79, label %41

35:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %36 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %40

40:                                               ; preds = %39, %35
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %90

41:                                               ; preds = %75, %32
  %42 = phi ptr [ %77, %75 ], [ %33, %32 ]
  %43 = phi i16 [ %76, %75 ], [ 0, %32 ]
  %44 = getelementptr inbounds %struct.hci_dev, ptr %42, i32 0, i32 206
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %41
  %49 = load volatile i32, ptr %44, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load volatile i32, ptr %44, align 4
  %54 = and i32 %53, 2048
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hci_dev, ptr %42, i32 0, i32 118
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_dev, ptr %42, i32 0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load volatile i32, ptr %44, align 4
  %67 = and i32 %66, 1024
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.hci_dev, ptr %42, i32 0, i32 4
  %71 = load i16, ptr %70, align 8
  %72 = add i16 %43, 1
  %73 = zext i16 %43 to i32
  %74 = getelementptr %struct.mgmt_rp_read_index_list, ptr %30, i32 0, i32 1, i32 %73
  store i16 %71, ptr %74, align 2
  br label %75

75:                                               ; preds = %69, %65, %61, %56, %52, %48, %41
  %76 = phi i16 [ %43, %41 ], [ %43, %48 ], [ %43, %52 ], [ %43, %56 ], [ %43, %65 ], [ %72, %69 ], [ %43, %61 ]
  %77 = load ptr, ptr %42, align 4
  %78 = icmp eq ptr %77, @hci_dev_list
  br i1 %78, label %79, label %41

79:                                               ; preds = %75, %32
  %80 = phi i16 [ 0, %32 ], [ %76, %75 ]
  store i16 %80, ptr %30, align 64
  %81 = zext i16 %80 to i32
  %82 = shl nuw nsw i32 %81, 1
  %83 = add nuw nsw i32 %82, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %84 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %88

88:                                               ; preds = %87, %79
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %89 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull %30, i32 noundef %83) #16
  tail call void @kfree(ptr noundef nonnull %30) #16
  br label %90

90:                                               ; preds = %88, %40
  %91 = phi i32 [ %89, %88 ], [ -12, %40 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_controller_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_read_info, align 1
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %5, i32 268
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %8, i8 0, i32 12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false) #16
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 28
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 31
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 2
  store i16 %13, ptr %14, align 1
  %15 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = icmp ugt i8 %10, 1
  %21 = select i1 %20, i32 4287, i32 4283
  %22 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 64
  %26 = zext i8 %25 to i32
  %27 = or i32 %21, %26
  %28 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 2, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 11
  %33 = or i32 %32, %27
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %35 = load volatile i32, ptr %34, align 4
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 131072
  %38 = or i32 %33, %37
  br label %39

39:                                               ; preds = %19, %4
  %40 = phi i32 [ 4123, %4 ], [ %38, %19 ]
  %41 = and i8 %16, 64
  %42 = icmp eq i8 %41, 0
  %43 = or i32 %40, 44544
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 236
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %39
  %54 = or i32 %44, 16384
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ %44, %49 ]
  %57 = or i32 %56, 65536
  %58 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 3
  store i32 %57, ptr %58, align 1
  %59 = tail call fastcc i32 @get_current_settings(ptr noundef %1)
  %60 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 4
  store i32 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 5
  %62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %61, ptr noundef align 8 dereferenceable(3) %62, i32 3, i1 false)
  %63 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 6
  %64 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %63, ptr noundef align 1 dereferenceable(248) %64, i32 248, i1 false)
  %65 = getelementptr inbounds %struct.mgmt_rp_read_info, ptr %5, i32 0, i32 7
  %66 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %65, ptr noundef align 1 dereferenceable(10) %66, i32 10, i1 false)
  tail call void @mutex_unlock(ptr noundef %6) #16
  %67 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %68, i16 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 280) #16
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %5) #16
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_powered(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = load i8, ptr %2, align 1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %10, i16 noundef zeroext 5, i8 noundef zeroext 13) #16
  br label %51

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #16
  %14 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext 5, i8 noundef zeroext 10) #16
  br label %49

20:                                               ; preds = %12
  %21 = load i8, ptr %2, align 1
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = lshr i32 %30, 2
  %32 = and i32 %31, 1
  %33 = xor i32 %32, 1
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i32 [ 0, %20 ], [ %33, %28 ]
  %36 = icmp eq i32 %35, %23
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %38 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %38, ptr %5, align 4
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 5, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %49

42:                                               ; preds = %34
  %43 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 5, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_powered_sync, ptr noundef nonnull %43, ptr noundef nonnull @mgmt_set_powered_complete) #16
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void @mgmt_pending_remove(ptr noundef nonnull %43) #16
  br label %49

49:                                               ; preds = %48, %45, %42, %37, %16
  %50 = phi i32 [ %19, %16 ], [ %41, %37 ], [ %46, %48 ], [ %46, %45 ], [ -12, %42 ]
  call void @mutex_unlock(ptr noundef %13) #16
  br label %51

51:                                               ; preds = %49, %8
  %52 = phi i32 [ %11, %8 ], [ %50, %49 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_discoverable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %16, i16 noundef zeroext 6, i8 noundef zeroext 11) #16
  br label %155

18:                                               ; preds = %9, %4
  %19 = load i8, ptr %2, align 1
  %20 = icmp ult i8 %19, 3
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %23 = load i16, ptr %22, align 8
  %24 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %23, i16 noundef zeroext 6, i8 noundef zeroext 13) #16
  br label %155

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.mgmt_cp_set_discoverable, ptr %2, i32 0, i32 1
  %27 = load i16, ptr %26, align 1
  %28 = icmp eq i8 %19, 0
  %29 = zext i16 %27 to i32
  %30 = icmp ne i16 %27, 0
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = icmp eq i8 %19, 2
  %34 = icmp eq i16 %27, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %25
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %38, i16 noundef zeroext 6, i8 noundef zeroext 13) #16
  br label %155

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %41) #16
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load volatile i32, ptr %5, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %49, i1 %30, i1 false
  br i1 %50, label %52, label %56

51:                                               ; preds = %40
  br i1 %30, label %52, label %56

52:                                               ; preds = %51, %46
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %54, i16 noundef zeroext 6, i8 noundef zeroext 15) #16
  br label %153

56:                                               ; preds = %51, %46
  %57 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %1) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 7, ptr noundef %1) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %64 = load i16, ptr %63, align 8
  %65 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %64, i16 noundef zeroext 6, i8 noundef zeroext 10) #16
  br label %153

66:                                               ; preds = %59
  %67 = load volatile i32, ptr %5, align 4
  %68 = and i32 %67, 67108864
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %72 = load i16, ptr %71, align 8
  %73 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %72, i16 noundef zeroext 6, i8 noundef zeroext 11) #16
  br label %153

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 174
  %76 = load i8, ptr %75, align 4, !range !16
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %80 = load i16, ptr %79, align 8
  %81 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %80, i16 noundef zeroext 6, i8 noundef zeroext 10) #16
  br label %153

82:                                               ; preds = %74
  %83 = load volatile i32, ptr %42, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load volatile i32, ptr %5, align 4
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %86, %82
  %91 = load i8, ptr %2, align 1
  %92 = icmp eq i8 %91, 0
  %93 = load volatile i32, ptr %5, align 4
  %94 = and i32 %93, 134217728
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 6, ptr noundef %1)
  br label %153

99:                                               ; preds = %90
  tail call void @_change_bit(i32 noundef 27, ptr noundef %5) #16
  %100 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 6, ptr noundef %1)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %153, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc i32 @new_settings(ptr noundef %1, ptr noundef %0)
  br label %153

104:                                              ; preds = %86
  %105 = load i8, ptr %2, align 1
  %106 = icmp eq i8 %105, 0
  %107 = load volatile i32, ptr %5, align 4
  %108 = and i32 %107, 134217728
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %104
  %112 = icmp ne i8 %105, 2
  %113 = load volatile i32, ptr %5, align 4
  %114 = and i32 %113, 268435456
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %112, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 148
  %119 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %118) #16
  %120 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 147
  store i16 %27, ptr %120, align 4
  %121 = load i8, ptr %2, align 1
  %122 = icmp eq i8 %121, 0
  %123 = xor i1 %30, true
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %117
  %126 = mul nuw nsw i32 %29, 1000
  %127 = tail call i32 @__msecs_to_jiffies(i32 noundef %126) #16
  %128 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %129 = load ptr, ptr %128, align 8
  %130 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %129, ptr noundef %118, i32 noundef %127) #16
  br label %131

131:                                              ; preds = %125, %117
  %132 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 6, ptr noundef %1)
  br label %153

133:                                              ; preds = %111, %104
  %134 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 6, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %135 = icmp eq ptr %134, null
  br i1 %135, label %153, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 148
  %138 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %137) #16
  %139 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 147
  store i16 %27, ptr %139, align 4
  %140 = load i8, ptr %2, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %136
  tail call void @_set_bit(i32 noundef 27, ptr noundef %5) #16
  br label %144

143:                                              ; preds = %136
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %5) #16
  br label %144

144:                                              ; preds = %143, %142
  %145 = load i8, ptr %2, align 1
  %146 = icmp eq i8 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  tail call void @_set_bit(i32 noundef 28, ptr noundef %5) #16
  br label %149

148:                                              ; preds = %144
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %5) #16
  br label %149

149:                                              ; preds = %148, %147
  %150 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_discoverable_sync, ptr noundef nonnull %134, ptr noundef nonnull @mgmt_set_discoverable_complete) #16
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  tail call void @mgmt_pending_remove(ptr noundef nonnull %134) #16
  br label %153

153:                                              ; preds = %152, %149, %133, %131, %102, %99, %97, %78, %70, %62, %52
  %154 = phi i32 [ %55, %52 ], [ %65, %62 ], [ %81, %78 ], [ %132, %131 ], [ %150, %152 ], [ %150, %149 ], [ %73, %70 ], [ %100, %99 ], [ %103, %102 ], [ -12, %133 ], [ %98, %97 ]
  tail call void @mutex_unlock(ptr noundef %41) #16
  br label %155

155:                                              ; preds = %153, %36, %21, %14
  %156 = phi i32 [ %24, %21 ], [ %39, %36 ], [ %154, %153 ], [ %17, %14 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_connectable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext 7, i8 noundef zeroext 11) #16
  br label %93

20:                                               ; preds = %11, %4
  %21 = load i8, ptr %2, align 1
  %22 = icmp ult i8 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %25, i16 noundef zeroext 7, i8 noundef zeroext 13) #16
  br label %93

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %28) #16
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load volatile i32, ptr %7, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %33, %27
  %38 = load i8, ptr %2, align 1
  %39 = icmp ne i8 %38, 0
  %40 = load volatile i32, ptr %7, align 4
  %41 = and i32 %40, 67108864
  %42 = icmp eq i32 %41, 0
  %43 = xor i1 %39, %42
  br i1 %39, label %44, label %45

44:                                               ; preds = %37
  tail call void @_set_bit(i32 noundef 26, ptr noundef %7) #16
  br label %46

45:                                               ; preds = %37
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %7) #16
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %7) #16
  br label %46

46:                                               ; preds = %45, %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %47 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %47, ptr %6, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i1 true, i1 %43
  %53 = call i32 @llvm.smin.i32(i32 %50, i32 0) #16
  br i1 %52, label %91, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 156
  %58 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %57) #16
  %59 = call i32 @hci_update_passive_scan(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %60 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %60, ptr %5, align 4
  %61 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %91

62:                                               ; preds = %33
  %63 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %1) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 7, ptr noundef %1) #16
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65, %62
  %69 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %70 = load i16, ptr %69, align 8
  %71 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %70, i16 noundef zeroext 7, i8 noundef zeroext 10) #16
  br label %91

72:                                               ; preds = %65
  %73 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 7, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr %2, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @_set_bit(i32 noundef 26, ptr noundef %7) #16
  br label %87

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 147
  %81 = load i16, ptr %80, align 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 148
  %85 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %84) #16
  br label %86

86:                                               ; preds = %83, %79
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %7) #16
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %7) #16
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %7) #16
  br label %87

87:                                               ; preds = %86, %78
  %88 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_connectable_sync, ptr noundef nonnull %73, ptr noundef nonnull @mgmt_set_connectable_complete) #16
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @mgmt_pending_remove(ptr noundef nonnull %73) #16
  br label %91

91:                                               ; preds = %90, %87, %72, %68, %54, %46
  %92 = phi i32 [ %71, %68 ], [ %88, %90 ], [ %88, %87 ], [ -12, %72 ], [ %61, %54 ], [ %53, %46 ]
  call void @mutex_unlock(ptr noundef %28) #16
  br label %93

93:                                               ; preds = %91, %23, %16
  %94 = phi i32 [ %26, %23 ], [ %92, %91 ], [ %19, %16 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_fast_connectable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %9 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 28
  %15 = load i8, ptr %14, align 1
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %4
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 8, i8 noundef zeroext 12) #16
  br label %73

21:                                               ; preds = %13
  %22 = load i8, ptr %2, align 1
  %23 = icmp ult i8 %22, 2
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 8, i8 noundef zeroext 13) #16
  br label %73

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %29) #16
  %30 = load i8, ptr %2, align 1
  %31 = icmp ne i8 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load volatile i32, ptr %8, align 4
  %34 = lshr i32 %33, 31
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %37 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %37, ptr %7, align 4
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %39, i16 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %71

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load volatile i32, ptr %8, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %41
  tail call void @_change_bit(i32 noundef 31, ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %51 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %51, ptr %6, align 4
  %52 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %53 = load i16, ptr %52, align 8
  %54 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %53, i16 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %55 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %55, ptr %5, align 4
  %56 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %71

57:                                               ; preds = %46
  %58 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 8, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %62 = load i16, ptr %61, align 8
  %63 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %62, i16 noundef zeroext 8, i8 noundef zeroext 3) #16
  br label %71

64:                                               ; preds = %57
  %65 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @write_fast_connectable_sync, ptr noundef nonnull %58, ptr noundef nonnull @fast_connectable_complete) #16
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %69 = load i16, ptr %68, align 8
  %70 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %69, i16 noundef zeroext 8, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_free(ptr noundef nonnull %58) #16
  br label %71

71:                                               ; preds = %67, %64, %60, %50, %36
  %72 = phi i32 [ %40, %36 ], [ %54, %50 ], [ %65, %67 ], [ %65, %64 ], [ -12, %60 ]
  call void @mutex_unlock(ptr noundef %29) #16
  br label %73

73:                                               ; preds = %71, %24, %17
  %74 = phi i32 [ %20, %17 ], [ %27, %24 ], [ %72, %71 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bondable(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i8, ptr %2, align 1
  %8 = icmp ult i8 %7, 2
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 9, i8 noundef zeroext 13) #16
  br label %39

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #16
  %15 = load i8, ptr %2, align 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %16, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %17) #16
  %20 = icmp eq i32 %19, 0
  br label %24

21:                                               ; preds = %13
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %17) #16
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ %20, %18 ], [ %23, %21 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %26 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %26, ptr %6, align 4
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %30 = icmp slt i32 %29, 0
  %31 = xor i1 %25, true
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = call i32 @hci_update_discoverable(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %35 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %35, ptr %5, align 4
  %36 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i32 [ %29, %24 ], [ %36, %33 ]
  call void @mutex_unlock(ptr noundef %14) #16
  br label %39

39:                                               ; preds = %37, %9
  %40 = phi i32 [ %12, %9 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_link_security(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %4
  %18 = phi i8 [ 12, %4 ], [ 11, %12 ]
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 10, i8 noundef zeroext %18) #16
  br label %85

22:                                               ; preds = %12
  %23 = load i8, ptr %2, align 1
  %24 = icmp ult i8 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %27 = load i16, ptr %26, align 8
  %28 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %27, i16 noundef zeroext 10, i8 noundef zeroext 13) #16
  br label %85

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %30) #16
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %35, %29
  %41 = load i8, ptr %2, align 1
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 536870912
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %42, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  tail call void @_change_bit(i32 noundef 29, ptr noundef %43) #16
  br label %49

49:                                               ; preds = %48, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %50 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %50, ptr %6, align 4
  %51 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %52 = load i16, ptr %51, align 8
  %53 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %52, i16 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %54 = icmp slt i32 %53, 0
  %55 = select i1 %54, i1 true, i1 %47
  br i1 %55, label %83, label %56

56:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %57 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %57, ptr %5, align 4
  %58 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %83

59:                                               ; preds = %35
  %60 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 10, ptr noundef %1) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %64 = load i16, ptr %63, align 8
  %65 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %64, i16 noundef zeroext 10, i8 noundef zeroext 10) #16
  br label %83

66:                                               ; preds = %59
  %67 = load i8, ptr %2, align 1
  %68 = icmp ne i8 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, ptr %7, align 1
  %70 = load volatile i32, ptr %31, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  %73 = xor i1 %68, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 10, ptr noundef %1)
  br label %83

76:                                               ; preds = %66
  %77 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 10, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 3104, i32 noundef 1, ptr noundef nonnull %7) #16
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @mgmt_pending_remove(ptr noundef nonnull %77) #16
  br label %83

83:                                               ; preds = %82, %79, %76, %74, %62, %56, %49
  %84 = phi i32 [ %65, %62 ], [ %75, %74 ], [ %80, %82 ], [ %80, %79 ], [ %53, %49 ], [ %58, %56 ], [ -12, %76 ]
  call void @mutex_unlock(ptr noundef %30) #16
  br label %85

85:                                               ; preds = %83, %25, %17
  %86 = phi i32 [ %21, %17 ], [ %28, %25 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_ssp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %4
  %17 = phi i8 [ 12, %4 ], [ 11, %11 ]
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 11, i8 noundef zeroext %17) #16
  br label %106

21:                                               ; preds = %11
  %22 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 11, i8 noundef zeroext 12) #16
  br label %106

30:                                               ; preds = %21
  %31 = load i8, ptr %2, align 1
  %32 = icmp ult i8 %31, 2
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %35, i16 noundef zeroext 11, i8 noundef zeroext 13) #16
  br label %106

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %38) #16
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %43, %37
  %49 = load i8, ptr %2, align 1
  %50 = icmp eq i8 %49, 0
  %51 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %50, label %55, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %51) #16
  %54 = icmp eq i32 %53, 0
  br label %62

55:                                               ; preds = %48
  %56 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %51) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = tail call i32 @_test_and_clear_bit(i32 noundef 22, ptr noundef %51) #16
  %60 = icmp ne i32 %59, 0
  br label %62

61:                                               ; preds = %55
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %51) #16
  br label %62

62:                                               ; preds = %61, %58, %52
  %63 = phi i1 [ %54, %52 ], [ true, %61 ], [ %60, %58 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %64 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %64, ptr %6, align 4
  %65 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %66, i16 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %68 = icmp slt i32 %67, 0
  %69 = xor i1 %63, true
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %104, label %71

71:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %72 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %72, ptr %5, align 4
  %73 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %104

74:                                               ; preds = %43
  %75 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 11, ptr noundef %1) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %79 = load i16, ptr %78, align 8
  %80 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %79, i16 noundef zeroext 11, i8 noundef zeroext 10) #16
  br label %104

81:                                               ; preds = %74
  %82 = load i8, ptr %2, align 1
  %83 = icmp eq i8 %82, 0
  %84 = load volatile i32, ptr %44, align 4
  %85 = and i32 %84, 32768
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 11, ptr noundef %1)
  br label %104

90:                                               ; preds = %81
  %91 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 11, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %95 = load i16, ptr %94, align 8
  %96 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %95, i16 noundef zeroext 11, i8 noundef zeroext 3) #16
  br label %104

97:                                               ; preds = %90
  %98 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_ssp_sync, ptr noundef nonnull %91, ptr noundef nonnull @set_ssp_complete) #16
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %102 = load i16, ptr %101, align 8
  %103 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %102, i16 noundef zeroext 11, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %91) #16
  br label %104

104:                                              ; preds = %100, %97, %93, %88, %77, %71, %62
  %105 = phi i32 [ %80, %77 ], [ %89, %88 ], [ %103, %100 ], [ %98, %97 ], [ %67, %62 ], [ %73, %71 ], [ %96, %93 ]
  call void @mutex_unlock(ptr noundef %38) #16
  br label %106

106:                                              ; preds = %104, %33, %26, %16
  %107 = phi i32 [ %20, %16 ], [ %36, %33 ], [ %105, %104 ], [ %29, %26 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_hs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %6, i16 noundef zeroext 12, i8 noundef zeroext 12) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_le(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 64
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 13, i8 noundef zeroext 12) #16
  br label %111

16:                                               ; preds = %4
  %17 = load i8, ptr %2, align 1
  %18 = icmp ult i8 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 13, i8 noundef zeroext 13) #16
  br label %111

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %25 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = icmp eq i8 %17, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %32 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %32, ptr %7, align 4
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %111

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %38, i16 noundef zeroext 13, i8 noundef zeroext 11) #16
  br label %111

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %41) #16
  %42 = load i8, ptr %2, align 1
  %43 = icmp ne i8 %42, 0
  %44 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 1
  %45 = load i8, ptr %44, align 2
  br i1 %43, label %47, label %46

46:                                               ; preds = %40
  tail call void @hci_req_clear_adv_instance(ptr noundef %1, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i1 noundef zeroext true) #16
  br label %47

47:                                               ; preds = %46, %40
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load volatile i32, ptr %24, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = and i8 %45, 2
  %58 = icmp eq i8 %57, 0
  %59 = xor i1 %43, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %56, %52, %47
  %61 = load volatile i32, ptr %24, align 4
  %62 = and i32 %61, 8388608
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %43, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @_change_bit(i32 noundef 23, ptr noundef %24) #16
  br label %66

66:                                               ; preds = %65, %60
  %67 = xor i1 %64, true
  br i1 %43, label %73, label %68

68:                                               ; preds = %66
  %69 = load volatile i32, ptr %24, align 4
  %70 = and i32 %69, 16777216
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %24) #16
  br label %73

73:                                               ; preds = %72, %68, %66
  %74 = phi i1 [ %67, %66 ], [ true, %72 ], [ %67, %68 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %75 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %75, ptr %6, align 4
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %77 = load i16, ptr %76, align 8
  %78 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %77, i16 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %79 = icmp slt i32 %78, 0
  %80 = xor i1 %74, true
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %109, label %82

82:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %83 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %83, ptr %5, align 4
  %84 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %109

85:                                               ; preds = %56
  %86 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 41, ptr noundef %1) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %88, %85
  %92 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %93 = load i16, ptr %92, align 8
  %94 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %93, i16 noundef zeroext 13, i8 noundef zeroext 10) #16
  br label %109

95:                                               ; preds = %88
  %96 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 13, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %100 = load i16, ptr %99, align 8
  %101 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %100, i16 noundef zeroext 13, i8 noundef zeroext 3) #16
  br label %109

102:                                              ; preds = %95
  %103 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_le_sync, ptr noundef nonnull %96, ptr noundef nonnull @set_le_complete) #16
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %107 = load i16, ptr %106, align 8
  %108 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %107, i16 noundef zeroext 13, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %96) #16
  br label %109

109:                                              ; preds = %105, %102, %98, %91, %82, %73
  %110 = phi i32 [ %94, %91 ], [ %108, %105 ], [ %103, %102 ], [ %78, %73 ], [ %84, %82 ], [ %101, %98 ]
  call void @mutex_unlock(ptr noundef %41) #16
  br label %111

111:                                              ; preds = %109, %36, %31, %19, %12
  %112 = phi i32 [ %22, %19 ], [ %110, %109 ], [ %35, %31 ], [ %39, %36 ], [ %15, %12 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_dev_class(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 14, i8 noundef zeroext 12) #16
  br label %66

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 184
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi ptr [ %15, %13 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %18, i32 0, i32 1
  %22 = load i16, ptr %21, align 4
  switch i16 %22, label %16 [
    i16 16, label %23
    i16 17, label %23
    i16 14, label %23
    i16 5, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %25, i16 noundef zeroext 14, i8 noundef zeroext 10) #16
  br label %64

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.mgmt_cp_set_dev_class, ptr %2, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8, ptr %2, align 1
  %34 = icmp ult i8 %33, 32
  br i1 %34, label %39, label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %37, i16 noundef zeroext 14, i8 noundef zeroext 13) #16
  br label %64

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 18
  store i8 %33, ptr %40, align 1
  %41 = load i8, ptr %28, align 1
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 19
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47, %39
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  %56 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %54, i16 noundef zeroext 14, i8 noundef zeroext 0, ptr noundef %55, i32 noundef 3) #16
  br label %64

57:                                               ; preds = %47
  %58 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 14, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_class_sync, ptr noundef nonnull %58, ptr noundef nonnull @mgmt_class_complete) #16
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @mgmt_pending_free(ptr noundef nonnull %58) #16
  br label %64

64:                                               ; preds = %63, %60, %57, %52, %35, %23
  %65 = phi i32 [ %26, %23 ], [ %38, %35 ], [ %56, %52 ], [ %61, %63 ], [ %61, %60 ], [ -12, %57 ]
  tail call void @mutex_unlock(ptr noundef %14) #16
  br label %66

66:                                               ; preds = %64, %9
  %67 = phi i32 [ %12, %9 ], [ %65, %64 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_local_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [512 x i8], align 2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 13
  %8 = tail call i32 @bcmp(ptr noundef dereferenceable(248) %7, ptr noundef dereferenceable(248) %2, i32 248)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 14
  %12 = getelementptr inbounds %struct.mgmt_cp_set_local_name, ptr %2, i32 0, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(10) %11, ptr noundef dereferenceable(10) %12, i32 10)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %3 to i32
  %19 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %17, i16 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef %2, i32 noundef %18) #16
  br label %59

20:                                               ; preds = %10, %4
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 14
  %22 = getelementptr inbounds %struct.mgmt_cp_set_local_name, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %21, ptr noundef align 1 dereferenceable(10) %22, i32 10, i1 false)
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27, %20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %7, ptr noundef align 1 dereferenceable(248) %2, i32 248, i1 false)
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = zext i16 %3 to i32
  %36 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef %2, i32 noundef %35) #16
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %32
  %39 = tail call i32 @mgmt_send_event(i16 noundef zeroext 8, ptr noundef %1, i16 noundef zeroext 3, ptr noundef %2, i16 noundef zeroext %3, i32 noundef 8, ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #16
  %40 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(510) %40, i8 0, i64 510, i1 false) #16
  %41 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %1, ptr noundef %40) #16
  store i16 %41, ptr %5, align 2
  %42 = add i16 %41, 2
  %43 = call i32 @mgmt_send_event(i16 noundef zeroext 37, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext %42, i32 noundef 4, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #16
  br label %59

44:                                               ; preds = %27
  %45 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 15, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext 15, i8 noundef zeroext 3) #16
  br label %59

51:                                               ; preds = %44
  %52 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_name_sync, ptr noundef nonnull %45, ptr noundef nonnull @set_name_complete) #16
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %56 = load i16, ptr %55, align 8
  %57 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %56, i16 noundef zeroext 15, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %45) #16
  br label %59

58:                                               ; preds = %51
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(248) %7, ptr noundef align 1 dereferenceable(248) %2, i32 248, i1 false)
  br label %59

59:                                               ; preds = %58, %54, %47, %38, %32, %15
  %60 = phi i32 [ %36, %32 ], [ %39, %38 ], [ %57, %54 ], [ %52, %58 ], [ %19, %15 ], [ %50, %47 ]
  call void @mutex_unlock(ptr noundef %6) #16
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_uuid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 184
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  switch i16 %13, label %7 [
    i16 16, label %14
    i16 17, label %14
    i16 14, label %14
    i16 5, label %14
  ]

14:                                               ; preds = %11, %11, %11, %11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %16, i16 noundef zeroext 16, i8 noundef zeroext 10) #16
  br label %47

18:                                               ; preds = %7
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 28) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bt_uuid, ptr %20, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef align 1 dereferenceable(16) %2, i32 16, i1 false)
  %24 = getelementptr inbounds %struct.mgmt_cp_add_uuid, ptr %2, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.bt_uuid, ptr %20, i32 0, i32 3
  store i8 %25, ptr %26, align 1
  %27 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %2, ptr noundef nonnull dereferenceable(12) @bluetooth_base_uuid, i32 12) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %2, i32 12
  %31 = load i32, ptr %30, align 1
  %32 = icmp ugt i32 %31, 65535
  %33 = select i1 %32, i8 32, i8 16
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i8 [ -128, %22 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.bt_uuid, ptr %20, i32 0, i32 2
  store i8 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 187
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 187, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %20, ptr %38, align 4
  store ptr %37, ptr %20, align 8
  %40 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %20, ptr %39, align 4
  %41 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 16, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @add_uuid_sync, ptr noundef nonnull %41, ptr noundef nonnull @mgmt_class_complete) #16
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @mgmt_pending_free(ptr noundef nonnull %41) #16
  br label %47

47:                                               ; preds = %46, %43, %34, %18, %14
  %48 = phi i32 [ %17, %14 ], [ %44, %46 ], [ %44, %43 ], [ -12, %18 ], [ -12, %34 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_uuid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 184
  br label %8

8:                                                ; preds = %12, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %10, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  switch i16 %14, label %8 [
    i16 16, label %15
    i16 17, label %15
    i16 14, label %15
    i16 5, label %15
  ]

15:                                               ; preds = %12, %12, %12, %12
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %17, i16 noundef zeroext 17, i8 noundef zeroext 10) #16
  br label %76

19:                                               ; preds = %8
  %20 = call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) %5, i32 16)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  tail call void @hci_uuids_clear(ptr noundef %1) #16
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %27
  %33 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %28) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 138
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 149
  %39 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %38, i32 noundef 200) #16
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 8
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  %43 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef %42, i32 noundef 3) #16
  br label %76

44:                                               ; preds = %19
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 187
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %65, label %48

48:                                               ; preds = %60, %44
  %49 = phi ptr [ %51, %60 ], [ %46, %44 ]
  %50 = phi i32 [ %61, %60 ], [ 0, %44 ]
  %51 = load ptr, ptr %49, align 4
  %52 = getelementptr inbounds %struct.bt_uuid, ptr %49, i32 0, i32 1
  %53 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %52, ptr noundef dereferenceable(16) %2, i32 16)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %51, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %49, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  tail call void @kfree(ptr noundef %49) #16
  %59 = add i32 %50, 1
  br label %60

60:                                               ; preds = %55, %48
  %61 = phi i32 [ %50, %48 ], [ %59, %55 ]
  %62 = icmp eq ptr %51, %45
  br i1 %62, label %63, label %48

63:                                               ; preds = %60
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63, %44
  %66 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %67 = load i16, ptr %66, align 8
  %68 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %67, i16 noundef zeroext 17, i8 noundef zeroext 13) #16
  br label %76

69:                                               ; preds = %63, %32, %27, %22
  %70 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 17, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @remove_uuid_sync, ptr noundef nonnull %70, ptr noundef nonnull @mgmt_class_complete) #16
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void @mgmt_pending_free(ptr noundef nonnull %70) #16
  br label %76

76:                                               ; preds = %75, %72, %69, %65, %35, %15
  %77 = phi i32 [ %18, %15 ], [ %43, %35 ], [ %73, %75 ], [ %73, %72 ], [ %68, %65 ], [ -12, %69 ]
  tail call void @mutex_unlock(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_link_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 18, i8 noundef zeroext 12) #16
  br label %96

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 1
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = icmp ugt i16 %15, 2621
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %16) #16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 18, i8 noundef zeroext 13) #16
  br label %96

23:                                               ; preds = %13
  %24 = mul nuw nsw i32 %16, 25
  %25 = add nuw nsw i32 %24, 3
  %26 = and i32 %25, 65535
  %27 = zext i16 %3 to i32
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %30, i32 noundef %26, i32 noundef %27) #16
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %32 = load i16, ptr %31, align 8
  %33 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %32, i16 noundef zeroext 18, i8 noundef zeroext 13) #16
  br label %96

34:                                               ; preds = %23
  %35 = load i8, ptr %2, align 1
  %36 = icmp ult i8 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = icmp eq i16 %15, 0
  br i1 %38, label %59, label %46

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 8
  %42 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext 18, i8 noundef zeroext 13) #16
  br label %96

43:                                               ; preds = %51
  %44 = add nuw nsw i32 %47, 1
  %45 = icmp eq i32 %44, %16
  br i1 %45, label %59, label %46

46:                                               ; preds = %43, %37
  %47 = phi i32 [ %44, %43 ], [ 0, %37 ]
  %48 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %47, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %47, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = icmp ugt i8 %53, 8
  br i1 %54, label %55, label %43

55:                                               ; preds = %51, %46
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %57 = load i16, ptr %56, align 8
  %58 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %57, i16 noundef zeroext 18, i8 noundef zeroext 13) #16
  br label %96

59:                                               ; preds = %43, %37
  %60 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %60) #16
  tail call void @hci_link_keys_clear(ptr noundef %1) #16
  %61 = load i8, ptr %2, align 1
  %62 = icmp eq i8 %61, 0
  %63 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %62, label %67, label %64

64:                                               ; preds = %59
  %65 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %63) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %72

67:                                               ; preds = %59
  %68 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %63) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67, %64
  %71 = tail call fastcc i32 @new_settings(ptr noundef %1, ptr noundef null)
  br label %72

72:                                               ; preds = %70, %67, %64
  br i1 %38, label %92, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %75

75:                                               ; preds = %89, %73
  %76 = phi i32 [ 0, %73 ], [ %90, %89 ]
  %77 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %76
  %78 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %76, i32 2
  %79 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %78) #16
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.3, ptr noundef %74, ptr noundef %77) #16
  br label %89

81:                                               ; preds = %75
  %82 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %76, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 3
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr %struct.mgmt_cp_load_link_keys, ptr %2, i32 0, i32 2, i32 %76, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = tail call ptr @hci_add_link_key(ptr noundef %1, ptr noundef null, ptr noundef %77, ptr noundef %78, i8 noundef zeroext %83, i8 noundef zeroext %87, ptr noundef null) #16
  br label %89

89:                                               ; preds = %85, %81, %80
  %90 = add nuw nsw i32 %76, 1
  %91 = icmp eq i32 %90, %16
  br i1 %91, label %92, label %75

92:                                               ; preds = %89, %72
  %93 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %94 = load i16, ptr %93, align 8
  %95 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %94, i16 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  tail call void @mutex_unlock(ptr noundef %60) #16
  br label %96

96:                                               ; preds = %92, %55, %39, %29, %18, %9
  %97 = phi i32 [ %12, %9 ], [ %22, %18 ], [ %33, %29 ], [ %42, %39 ], [ %58, %55 ], [ 0, %92 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_long_term_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 19, i8 noundef zeroext 12) #16
  br label %100

13:                                               ; preds = %4
  %14 = load i16, ptr %2, align 1
  %15 = zext i16 %14 to i32
  %16 = icmp ugt i16 %14, 1820
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %18, i32 noundef %15) #16
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 19, i8 noundef zeroext 13) #16
  br label %100

22:                                               ; preds = %13
  %23 = mul nuw nsw i32 %15, 36
  %24 = and i32 %23, 65532
  %25 = or i32 %24, 2
  %26 = zext i16 %3 to i32
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = icmp eq i16 %14, 0
  br i1 %29, label %55, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %31, i32 noundef %25, i32 noundef %26) #16
  %32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %33 = load i16, ptr %32, align 8
  %34 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %33, i16 noundef zeroext 19, i8 noundef zeroext 13) #16
  br label %100

35:                                               ; preds = %52, %28
  %36 = phi i32 [ %53, %52 ], [ 0, %28 ]
  %37 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %36
  %38 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %36, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp ult i8 %39, 2
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.mgmt_addr_info, ptr %37, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  switch i8 %43, label %48 [
    i8 1, label %52
    i8 2, label %44
  ]

44:                                               ; preds = %41
  %45 = getelementptr [6 x i8], ptr %37, i32 0, i32 5
  %46 = load i8, ptr %45, align 1
  %47 = icmp ugt i8 %46, -65
  br i1 %47, label %52, label %48

48:                                               ; preds = %44, %41, %35
  %49 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %50 = load i16, ptr %49, align 8
  %51 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %50, i16 noundef zeroext 19, i8 noundef zeroext 13) #16
  br label %100

52:                                               ; preds = %44, %41
  %53 = add nuw nsw i32 %36, 1
  %54 = icmp eq i32 %53, %15
  br i1 %54, label %55, label %35

55:                                               ; preds = %52, %28
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %56) #16
  tail call void @hci_smp_ltks_clear(ptr noundef %1) #16
  br i1 %29, label %96, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %59

59:                                               ; preds = %93, %57
  %60 = phi i32 [ 0, %57 ], [ %94, %93 ]
  %61 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60
  %62 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 6
  %63 = tail call zeroext i1 @hci_is_blocked_key(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %62) #16
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.6, ptr noundef %58, ptr noundef %61) #16
  br label %93

65:                                               ; preds = %59
  %66 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 1
  %67 = load i8, ptr %66, align 1
  switch i8 %67, label %93 [
    i8 0, label %68
    i8 1, label %73
    i8 2, label %79
    i8 3, label %78
  ]

68:                                               ; preds = %65
  %69 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i8 2, i8 1
  br label %79

73:                                               ; preds = %65
  %74 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 2
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %76, i8 2, i8 1
  br label %79

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %73, %68, %65
  %80 = phi i8 [ 3, %78 ], [ %77, %73 ], [ %72, %68 ], [ 3, %65 ]
  %81 = phi i8 [ 1, %78 ], [ 1, %73 ], [ 0, %68 ], [ 0, %65 ]
  %82 = getelementptr inbounds %struct.mgmt_addr_info, ptr %61, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = icmp ne i8 %83, 1
  %85 = zext i1 %84 to i8
  %86 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 4
  %89 = load i16, ptr %88, align 1
  %90 = getelementptr %struct.mgmt_cp_load_long_term_keys, ptr %2, i32 0, i32 1, i32 %60, i32 5
  %91 = load i64, ptr %90, align 1
  %92 = tail call ptr @hci_add_ltk(ptr noundef %1, ptr noundef %61, i8 noundef zeroext %85, i8 noundef zeroext %80, i8 noundef zeroext %81, ptr noundef %62, i8 noundef zeroext %87, i16 noundef zeroext %89, i64 noundef %91) #16
  br label %93

93:                                               ; preds = %79, %65, %64
  %94 = add nuw nsw i32 %60, 1
  %95 = icmp eq i32 %94, %15
  br i1 %95, label %96, label %59

96:                                               ; preds = %93, %55
  %97 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %98 = load i16, ptr %97, align 8
  %99 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %98, i16 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  tail call void @mutex_unlock(ptr noundef %56) #16
  br label %100

100:                                              ; preds = %96, %48, %30, %17, %9
  %101 = phi i32 [ %21, %17 ], [ %34, %30 ], [ %51, %48 ], [ %99, %96 ], [ %12, %9 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disconnect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_disconnect, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %6 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = icmp ult i8 %7, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 20, i8 noundef zeroext 13, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %96

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 20, i8 noundef zeroext 15, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %94

24:                                               ; preds = %14
  %25 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 20, ptr noundef %1) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 20, i8 noundef zeroext 10, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %94

31:                                               ; preds = %24
  %32 = load i8, ptr %6, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %51, label %38

38:                                               ; preds = %48, %34
  %39 = phi ptr [ %49, %48 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 2
  %45 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef dereferenceable(6) %2, i32 6) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %76

48:                                               ; preds = %43, %38
  %49 = load volatile ptr, ptr %39, align 4
  %50 = icmp eq ptr %49, %35
  br i1 %50, label %51, label %38

51:                                               ; preds = %48, %34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %82

52:                                               ; preds = %31
  %53 = icmp ne i8 %32, 1
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %75, label %58

58:                                               ; preds = %72, %52
  %59 = phi ptr [ %73, %72 ], [ %56, %52 ]
  %60 = getelementptr inbounds %struct.hci_conn, ptr %59, i32 0, i32 14
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, -128
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.hci_conn, ptr %59, i32 0, i32 3
  %65 = load i8, ptr %64, align 2
  %66 = icmp eq i8 %65, %54
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.hci_conn, ptr %59, i32 0, i32 2
  %69 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %68, ptr noundef dereferenceable(6) %2, i32 6) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %76

72:                                               ; preds = %67, %63, %58
  %73 = load volatile ptr, ptr %59, align 4
  %74 = icmp eq ptr %73, %55
  br i1 %74, label %75, label %58

75:                                               ; preds = %72, %52
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %82

76:                                               ; preds = %71, %47
  %77 = phi ptr [ %39, %47 ], [ %59, %71 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.hci_conn, ptr %77, i32 0, i32 12
  %81 = load i16, ptr %80, align 4
  switch i16 %81, label %86 [
    i16 2, label %82
    i16 9, label %82
  ]

82:                                               ; preds = %79, %79, %76, %75, %51
  %83 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %84 = load i16, ptr %83, align 8
  %85 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %84, i16 noundef zeroext 20, i8 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %94

86:                                               ; preds = %79
  %87 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 20, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %87, i32 0, i32 8
  store ptr @generic_cmd_complete, ptr %90, align 4
  %91 = tail call i32 @hci_disconnect(ptr noundef nonnull %77, i8 noundef zeroext 19) #16
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  tail call void @mgmt_pending_remove(ptr noundef nonnull %87) #16
  br label %94

94:                                               ; preds = %93, %89, %86, %82, %27, %20
  %95 = phi i32 [ %30, %27 ], [ %85, %82 ], [ %91, %93 ], [ %91, %89 ], [ %23, %20 ], [ -12, %86 ]
  call void @mutex_unlock(ptr noundef %15) #16
  br label %96

96:                                               ; preds = %94, %10
  %97 = phi i32 [ %95, %94 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #16
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_connections(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %17, i16 noundef zeroext 21, i8 noundef zeroext 15) #16
  br label %80

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %38, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %32, %23 ], [ %21, %19 ]
  %25 = phi i16 [ %31, %23 ], [ 0, %19 ]
  %26 = getelementptr inbounds %struct.hci_conn, ptr %24, i32 0, i32 47
  %27 = load volatile i32, ptr %26, align 4
  %28 = trunc i32 %27 to i16
  %29 = lshr i16 %28, 6
  %30 = and i16 %29, 1
  %31 = add i16 %30, %25
  %32 = load ptr, ptr %24, align 8
  %33 = icmp eq ptr %32, %20
  br i1 %33, label %34, label %23

34:                                               ; preds = %23
  %35 = zext i16 %31 to i32
  %36 = mul nuw nsw i32 %35, 7
  %37 = add nuw nsw i32 %36, 2
  br label %38

38:                                               ; preds = %34, %19
  %39 = phi i32 [ 2, %19 ], [ %37, %34 ]
  %40 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #17
  %41 = icmp eq ptr %40, null
  br i1 %41, label %80, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %20, align 8
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %72, label %45

45:                                               ; preds = %68, %42
  %46 = phi ptr [ %70, %68 ], [ %43, %42 ]
  %47 = phi i16 [ %69, %68 ], [ 0, %42 ]
  %48 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 47
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %45
  %53 = zext i16 %47 to i32
  %54 = getelementptr %struct.mgmt_rp_get_connections, ptr %40, i32 0, i32 1, i32 %53
  %55 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %54, ptr noundef align 1 dereferenceable(6) %55, i32 6, i1 false) #16
  %56 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 14
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.hci_conn, ptr %46, i32 0, i32 3
  %59 = load i8, ptr %58, align 2
  %60 = icmp eq i8 %57, -128
  %61 = icmp eq i8 %59, 0
  %62 = select i1 %61, i8 1, i8 2
  %63 = select i1 %60, i8 %62, i8 0
  %64 = getelementptr %struct.mgmt_rp_get_connections, ptr %40, i32 0, i32 1, i32 %53, i32 1
  store i8 %63, ptr %64, align 1
  %65 = load i8, ptr %56, align 1
  switch i8 %65, label %66 [
    i8 0, label %68
    i8 2, label %68
  ]

66:                                               ; preds = %52
  %67 = add i16 %47, 1
  br label %68

68:                                               ; preds = %66, %52, %52, %45
  %69 = phi i16 [ %47, %52 ], [ %67, %66 ], [ %47, %45 ], [ %47, %52 ]
  %70 = load ptr, ptr %46, align 8
  %71 = icmp eq ptr %70, %20
  br i1 %71, label %72, label %45

72:                                               ; preds = %68, %42
  %73 = phi i16 [ 0, %42 ], [ %69, %68 ]
  store i16 %73, ptr %40, align 64
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %75 = load i16, ptr %74, align 8
  %76 = zext i16 %73 to i32
  %77 = mul nuw nsw i32 %76, 7
  %78 = add nuw nsw i32 %77, 2
  %79 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %75, i16 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull %40, i32 noundef %78) #16
  tail call void @kfree(ptr noundef nonnull %40) #16
  br label %80

80:                                               ; preds = %72, %38, %15
  %81 = phi i32 [ %18, %15 ], [ %79, %72 ], [ -12, %38 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pin_code_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.hci_cp_pin_code_reply, align 1
  %6 = alloca %struct.mgmt_cp_pin_code_neg_reply, align 1
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %5, i8 0, i32 23, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %4
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 22, i8 noundef zeroext 15) #16
  br label %80

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %37, label %25

25:                                               ; preds = %34, %21
  %26 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.hci_conn, ptr %26, i32 0, i32 14
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_conn, ptr %26, i32 0, i32 2
  %32 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %31, ptr noundef dereferenceable(6) %2, i32 6) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %25
  %35 = load volatile ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %37, label %25

37:                                               ; preds = %34, %21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %40

38:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %39 = icmp eq ptr %26, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %38, %37
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %42, i16 noundef zeroext 22, i8 noundef zeroext 2) #16
  br label %80

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.hci_conn, ptr %26, i32 0, i32 25
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 3
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, ptr %2, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 16
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %6, ptr noundef align 1 dereferenceable(7) %2, i32 7, i1 false)
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %53) #16
  %54 = call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 23, ptr noundef %1, ptr noundef nonnull %6, i16 noundef zeroext 7) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %54, i32 0, i32 8
  store ptr @addr_cmd_complete, ptr %57, align 4
  %58 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1038, i32 noundef 6, ptr noundef nonnull %6) #16
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @mgmt_pending_remove(ptr noundef nonnull %54) #16
  br label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %63 = load i16, ptr %62, align 8
  %64 = call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %63, i16 noundef zeroext 22, i8 noundef zeroext 13) #16
  br label %65

65:                                               ; preds = %61, %60, %52
  %66 = phi i32 [ %64, %61 ], [ %58, %60 ], [ -12, %52 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #16
  br label %80

67:                                               ; preds = %48, %44
  %68 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 22, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %68, i32 0, i32 8
  store ptr @addr_cmd_complete, ptr %71, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %72 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, ptr %2, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = getelementptr inbounds %struct.hci_cp_pin_code_reply, ptr %5, i32 0, i32 1
  store i8 %73, ptr %74, align 1
  %75 = getelementptr inbounds %struct.hci_cp_pin_code_reply, ptr %5, i32 0, i32 2
  %76 = getelementptr inbounds %struct.mgmt_cp_pin_code_reply, ptr %2, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %75, ptr noundef align 1 dereferenceable(16) %76, i32 16, i1 false)
  %77 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1037, i32 noundef 23, ptr noundef nonnull %5) #16
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  call void @mgmt_pending_remove(ptr noundef nonnull %68) #16
  br label %80

80:                                               ; preds = %79, %70, %67, %65, %40, %17
  %81 = phi i32 [ %20, %17 ], [ %66, %65 ], [ %77, %79 ], [ %77, %70 ], [ %43, %40 ], [ -12, %67 ]
  call void @mutex_unlock(ptr noundef %7) #16
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %5) #16
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pin_code_neg_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 23, i16 noundef zeroext 1038, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_io_capability(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = load i8, ptr %2, align 1
  %6 = icmp ugt i8 %5, 4
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext 24, i8 noundef zeroext 13) #16
  br label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #16
  %13 = load i8, ptr %2, align 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 37
  store i8 %13, ptr %14, align 2
  tail call void @mutex_unlock(ptr noundef %12) #16
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %16, i16 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i32 [ %10, %7 ], [ %17, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pair_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_pair_device, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %6 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = icmp ult i8 %7, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 25, i8 noundef zeroext 13, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %107

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.mgmt_cp_pair_device, ptr %2, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp ugt i8 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 25, i8 noundef zeroext 13, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %107

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %22
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %35, i16 noundef zeroext 25, i8 noundef zeroext 15, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %105

37:                                               ; preds = %28
  %38 = load i8, ptr %6, align 1
  %39 = tail call zeroext i1 @hci_bdaddr_is_paired(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %38) #16
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %42, i16 noundef zeroext 25, i8 noundef zeroext 19, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %105

44:                                               ; preds = %37
  %45 = load i8, ptr %6, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = tail call ptr @hci_connect_acl(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 2, i32 noundef 0) #16
  br label %59

49:                                               ; preds = %44
  %50 = icmp ne i8 %45, 1
  %51 = zext i1 %50 to i8
  %52 = tail call ptr @hci_conn_params_add(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %51) #16
  %53 = getelementptr inbounds %struct.hci_conn_params, ptr %52, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, ptr %53, align 4
  br label %57

57:                                               ; preds = %56, %49
  %58 = tail call ptr @hci_connect_le_scan(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %51, i8 noundef zeroext 2, i16 noundef zeroext 2000, i32 noundef 0) #16
  br label %59

59:                                               ; preds = %57, %47
  %60 = phi ptr [ %48, %47 ], [ %58, %57 ]
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = ptrtoint ptr %60 to i32
  switch i32 %63, label %64 [
    i32 -16, label %68
    i32 -95, label %67
  ]

64:                                               ; preds = %62
  %65 = icmp eq ptr %60, inttoptr (i32 -111 to ptr)
  %66 = select i1 %65, i8 11, i8 4
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %64, %62
  %69 = phi i8 [ 10, %62 ], [ %66, %64 ], [ 12, %67 ]
  %70 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %71 = load i16, ptr %70, align 8
  %72 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %71, i16 noundef zeroext 25, i8 noundef zeroext %69, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %105

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 71
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  tail call fastcc void @hci_conn_drop(ptr noundef %60)
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %79 = load i16, ptr %78, align 8
  %80 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %79, i16 noundef zeroext 25, i8 noundef zeroext 10, ptr noundef nonnull %5, i32 noundef 7) #16
  br label %105

81:                                               ; preds = %73
  %82 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 25, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  tail call fastcc void @hci_conn_drop(ptr noundef %60)
  br label %105

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %82, i32 0, i32 8
  store ptr @pairing_complete, ptr %86, align 4
  %87 = load i8, ptr %6, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr @pairing_complete_cb, ptr @le_pairing_complete_cb
  store ptr %89, ptr %74, align 8
  %90 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 72
  store ptr %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 73
  store ptr %89, ptr %91, align 8
  %92 = load i8, ptr %15, align 1
  %93 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 28
  store i8 %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 63
  %95 = tail call ptr @get_device(ptr noundef %94) #16
  %96 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %82, i32 0, i32 7
  store ptr %60, ptr %96, align 4
  %97 = getelementptr inbounds %struct.hci_conn, ptr %60, i32 0, i32 12
  %98 = load i16, ptr %97, align 4
  switch i16 %98, label %105 [
    i16 1, label %99
    i16 7, label %99
  ]

99:                                               ; preds = %85, %85
  %100 = tail call i32 @hci_conn_security(ptr noundef %60, i8 noundef zeroext 2, i8 noundef zeroext 2, i1 noundef zeroext true) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %86, align 4
  %104 = tail call i32 %103(ptr noundef nonnull %82, i8 noundef zeroext 0) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %82) #16
  br label %105

105:                                              ; preds = %102, %99, %85, %84, %77, %68, %40, %33
  %106 = phi i32 [ %36, %33 ], [ %43, %40 ], [ %72, %68 ], [ %80, %77 ], [ -12, %84 ], [ 0, %85 ], [ 0, %102 ], [ 0, %99 ]
  call void @mutex_unlock(ptr noundef %23) #16
  br label %107

107:                                              ; preds = %105, %18, %10
  %108 = phi i32 [ %21, %18 ], [ %106, %105 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #16
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cancel_pair_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %17, i16 noundef zeroext 26, i8 noundef zeroext 15) #16
  br label %58

19:                                               ; preds = %10
  %20 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 25, ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 26, i8 noundef zeroext 13) #16
  br label %58

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %20, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 2
  %30 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef dereferenceable(6) %29, i32 6)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 26, i8 noundef zeroext 13) #16
  br label %58

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %20, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef nonnull %20, i8 noundef zeroext 16) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %20) #16
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 8
  %42 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext 26, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 7) #16
  %43 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = tail call i32 @hci_remove_link_key(ptr noundef %1, ptr noundef %2) #16
  br label %52

48:                                               ; preds = %36
  %49 = icmp ne i8 %44, 1
  %50 = zext i1 %49 to i8
  %51 = tail call i32 @smp_cancel_and_remove_pairing(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %50) #16
  br label %52

52:                                               ; preds = %48, %46
  %53 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 48
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = tail call i32 @hci_abort_conn(ptr noundef %28, i8 noundef zeroext 19) #16
  br label %58

58:                                               ; preds = %56, %52, %32, %22, %15
  %59 = phi i32 [ %18, %15 ], [ %35, %32 ], [ %42, %56 ], [ %42, %52 ], [ %25, %22 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unpair_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_device_unpaired, align 1
  %6 = alloca %struct.mgmt_rp_unpair_device, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %7 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.mgmt_addr_info, ptr %6, i32 0, i32 1
  store i8 %8, ptr %9, align 1
  %10 = icmp ult i8 %8, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 27, i8 noundef zeroext 13, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %121

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.mgmt_cp_unpair_device, ptr %2, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = icmp ult i8 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 27, i8 noundef zeroext 13, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %121

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %23
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %36, i16 noundef zeroext 27, i8 noundef zeroext 15, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %119

38:                                               ; preds = %29
  %39 = load i8, ptr %7, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i8, ptr %16, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %1, i8 noundef zeroext 1, ptr noundef %2)
  %46 = tail call i32 @hci_remove_link_key(ptr noundef %1, ptr noundef %2) #16
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %101

48:                                               ; preds = %41
  %49 = tail call i32 @hci_remove_link_key(ptr noundef %1, ptr noundef %2) #16
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %103

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %53 = load i16, ptr %52, align 8
  %54 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %53, i16 noundef zeroext 27, i8 noundef zeroext 6, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %119

55:                                               ; preds = %38
  %56 = icmp ne i8 %39, 1
  %57 = zext i1 %56 to i8
  %58 = tail call i32 @smp_cancel_and_remove_pairing(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %57) #16
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %62 = load i16, ptr %61, align 8
  %63 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %62, i16 noundef zeroext 27, i8 noundef zeroext 6, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %119

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %84, label %68

68:                                               ; preds = %81, %64
  %69 = phi ptr [ %82, %81 ], [ %66, %64 ]
  %70 = getelementptr inbounds %struct.hci_conn, ptr %69, i32 0, i32 14
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, -128
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hci_conn, ptr %69, i32 0, i32 3
  %75 = load i8, ptr %74, align 2
  %76 = icmp eq i8 %75, %57
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hci_conn, ptr %69, i32 0, i32 2
  %79 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %78, ptr noundef dereferenceable(6) %2, i32 6) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77, %73, %68
  %82 = load volatile ptr, ptr %69, align 4
  %83 = icmp eq ptr %82, %65
  br i1 %83, label %84, label %68

84:                                               ; preds = %81, %64
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %87

85:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %86 = icmp eq ptr %69, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %85, %84
  tail call void @hci_conn_params_del(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %57) #16
  br label %103

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.hci_conn, ptr %69, i32 0, i32 47
  tail call void @_set_bit(i32 noundef 19, ptr noundef %89) #16
  %90 = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %57) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.hci_conn_params, ptr %90, i32 0, i32 10
  %94 = load i8, ptr %93, align 4, !range !16
  %95 = icmp eq i8 %94, 0
  %96 = getelementptr inbounds %struct.hci_conn_params, ptr %90, i32 0, i32 8
  %97 = select i1 %95, i32 0, i32 5
  store i32 %97, ptr %96, align 4
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i8, ptr %16, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %110

101:                                              ; preds = %44
  %102 = icmp eq ptr %45, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %101, %98, %87, %48
  %104 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %105 = load i16, ptr %104, align 8
  %106 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %105, i16 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 7) #16
  %107 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %108 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %107, ptr %108, align 1
  %109 = call i32 @mgmt_send_event(i16 noundef zeroext 22, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #16
  br label %119

110:                                              ; preds = %101, %98
  %111 = phi ptr [ %45, %101 ], [ %69, %98 ]
  %112 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 27, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 8) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %112, i32 0, i32 8
  store ptr @addr_cmd_complete, ptr %115, align 4
  %116 = tail call i32 @hci_abort_conn(ptr noundef nonnull %111, i8 noundef zeroext 19) #16
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  tail call void @mgmt_pending_remove(ptr noundef nonnull %112) #16
  br label %119

119:                                              ; preds = %118, %114, %110, %103, %60, %51, %34
  %120 = phi i32 [ %37, %34 ], [ %54, %51 ], [ %116, %118 ], [ %116, %114 ], [ %106, %103 ], [ %63, %60 ], [ -12, %110 ]
  call void @mutex_unlock(ptr noundef %24) #16
  br label %121

121:                                              ; preds = %119, %19, %11
  %122 = phi i32 [ %22, %19 ], [ %120, %119 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #16
  ret i32 %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_confirm_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = icmp eq i16 %3, 7
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %8, i16 noundef zeroext 28, i8 noundef zeroext 13) #16
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 28, i16 noundef zeroext 1068, i32 noundef 0)
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %9, %6 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_confirm_neg_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 29, i16 noundef zeroext 1069, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_passkey_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mgmt_cp_user_passkey_reply, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 1
  %7 = tail call fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 30, i16 noundef zeroext 1070, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_passkey_neg_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 31, i16 noundef zeroext 1071, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_local_oob_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %17, i16 noundef zeroext 32, i8 noundef zeroext 15) #16
  br label %42

19:                                               ; preds = %10
  %20 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 32, i8 noundef zeroext 12) #16
  br label %42

28:                                               ; preds = %19
  %29 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 32, ptr noundef %1, ptr noundef null, i16 noundef zeroext 0) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %33 = load i16, ptr %32, align 8
  %34 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %33, i16 noundef zeroext 32, i8 noundef zeroext 3) #16
  br label %42

35:                                               ; preds = %28
  %36 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @read_local_oob_data_sync, ptr noundef nonnull %29, ptr noundef nonnull @read_local_oob_data_complete) #16
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 32, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_free(ptr noundef nonnull %29) #16
  br label %42

42:                                               ; preds = %38, %35, %31, %24, %15
  %43 = phi i32 [ %18, %15 ], [ %41, %38 ], [ %36, %35 ], [ %27, %24 ], [ %34, %31 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_remote_oob_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %10, i16 noundef zeroext 33, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %82

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #16
  switch i16 %3, label %74 [
    i16 39, label %14
    i16 71, label %30
  ]

14:                                               ; preds = %12
  %15 = load i8, ptr %5, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 33, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %80

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, ptr %2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_data, ptr %2, i32 0, i32 2
  %24 = tail call i32 @hci_add_remote_oob_data(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %22, ptr noundef %23, ptr noundef null, ptr noundef null) #16
  %25 = icmp slt i32 %24, 0
  %26 = select i1 %25, i8 3, i8 0
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 33, i8 noundef zeroext %26, ptr noundef %2, i32 noundef 7) #16
  br label %80

30:                                               ; preds = %12
  %31 = load i8, ptr %5, align 1
  %32 = add i8 %31, -1
  %33 = icmp ult i8 %32, 2
  %34 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, ptr %2, i32 0, i32 2
  %35 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %34, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %36 = icmp eq i32 %35, 0
  br i1 %33, label %37, label %46

37:                                               ; preds = %30
  br i1 %36, label %38, label %42

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, ptr %2, i32 0, i32 1
  %40 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %39, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38, %37
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %44 = load i16, ptr %43, align 8
  %45 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %44, i16 noundef zeroext 33, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %80

46:                                               ; preds = %30
  br i1 %36, label %53, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, ptr %2, i32 0, i32 1
  %49 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %48, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr null, ptr %34
  %52 = select i1 %50, ptr null, ptr %48
  br label %53

53:                                               ; preds = %47, %46, %38
  %54 = phi ptr [ null, %38 ], [ null, %46 ], [ %51, %47 ]
  %55 = phi ptr [ null, %38 ], [ null, %46 ], [ %52, %47 ]
  %56 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, ptr %2, i32 0, i32 4
  %57 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %56, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mgmt_cp_add_remote_oob_ext_data, ptr %2, i32 0, i32 3
  %61 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %60, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, ptr null, ptr %56
  %64 = select i1 %62, ptr null, ptr %60
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi ptr [ null, %53 ], [ %63, %59 ]
  %67 = phi ptr [ null, %53 ], [ %64, %59 ]
  %68 = tail call i32 @hci_add_remote_oob_data(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %31, ptr noundef %55, ptr noundef %54, ptr noundef %67, ptr noundef %66) #16
  %69 = icmp slt i32 %68, 0
  %70 = select i1 %69, i8 3, i8 0
  %71 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %72 = load i16, ptr %71, align 8
  %73 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %72, i16 noundef zeroext 33, i8 noundef zeroext %70, ptr noundef %2, i32 noundef 7) #16
  br label %80

74:                                               ; preds = %12
  %75 = zext i16 %3 to i32
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %76, i32 noundef %75) #16
  %77 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %78 = load i16, ptr %77, align 8
  %79 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %78, i16 noundef zeroext 33, i8 noundef zeroext 13) #16
  br label %80

80:                                               ; preds = %74, %65, %42, %21, %17
  %81 = phi i32 [ %79, %74 ], [ %20, %17 ], [ %29, %21 ], [ %45, %42 ], [ %73, %65 ]
  tail call void @mutex_unlock(ptr noundef %13) #16
  br label %82

82:                                               ; preds = %80, %8
  %83 = phi i32 [ %81, %80 ], [ %11, %8 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_remote_oob_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 34, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %15 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @hci_remote_oob_data_clear(ptr noundef %1) #16
  br label %23

18:                                               ; preds = %13
  %19 = load i8, ptr %6, align 1
  %20 = tail call i32 @hci_remove_remote_oob_data(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %19) #16
  %21 = icmp slt i32 %20, 0
  %22 = select i1 %21, i8 13, i8 0
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi i8 [ 0, %17 ], [ %22, %18 ]
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 34, i8 noundef zeroext %24, ptr noundef %2, i32 noundef 7) #16
  tail call void @mutex_unlock(ptr noundef %14) #16
  br label %28

28:                                               ; preds = %23, %9
  %29 = phi i32 [ %12, %9 ], [ %27, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_discovery(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call fastcc i32 @start_discovery_internal(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 35, ptr noundef %2, i16 noundef zeroext %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stop_discovery(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = tail call zeroext i1 @hci_discovery_active(ptr noundef %1) #16
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext 36, i8 noundef zeroext 11, ptr noundef %2, i32 noundef 1) #16
  br label %29

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170
  %13 = load i32, ptr %12, align 8
  %14 = load i8, ptr %2, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 36, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 1) #16
  br label %29

21:                                               ; preds = %11
  %22 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 36, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @stop_discovery_sync, ptr noundef nonnull %22, ptr noundef nonnull @stop_discovery_complete) #16
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void @mgmt_pending_remove(ptr noundef nonnull %22) #16
  br label %29

28:                                               ; preds = %24
  tail call void @hci_discovery_set_state(ptr noundef %1, i32 noundef 4) #16
  br label %29

29:                                               ; preds = %28, %27, %21, %17, %7
  %30 = phi i32 [ %20, %17 ], [ %25, %27 ], [ %25, %28 ], [ %10, %7 ], [ -12, %21 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @confirm_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = tail call zeroext i1 @hci_discovery_active(ptr noundef %1) #16
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = tail call ptr @hci_inquiry_cache_lookup_unknown(ptr noundef %1, ptr noundef %2) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mgmt_cp_confirm_name, ptr %2, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.inquiry_entry, ptr %8, i32 0, i32 2
  br i1 %13, label %21, label %15

15:                                               ; preds = %10
  store i32 3, ptr %14, align 4
  %16 = getelementptr inbounds %struct.inquiry_entry, ptr %8, i32 0, i32 1
  %17 = getelementptr inbounds %struct.inquiry_entry, ptr %8, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %22

21:                                               ; preds = %10
  store i32 1, ptr %14, align 4
  tail call void @hci_inquiry_cache_update_resolve(ptr noundef %1, ptr noundef nonnull %8) #16
  br label %22

22:                                               ; preds = %21, %15, %7, %4
  %23 = phi i8 [ 3, %4 ], [ 13, %7 ], [ 0, %21 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %25, i16 noundef zeroext 37, i8 noundef zeroext %23, ptr noundef %2, i32 noundef 7) #16
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @block_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %10, i16 noundef zeroext 38, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %25

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 185
  %15 = load i8, ptr %5, align 1
  %16 = tail call i32 @hci_bdaddr_list_add(ptr noundef %14, ptr noundef %2, i8 noundef zeroext %15) #16
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @mgmt_send_event(i16 noundef zeroext 20, ptr noundef %1, i16 noundef zeroext 3, ptr noundef %2, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i8 [ 0, %18 ], [ 3, %12 ]
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %23 = load i16, ptr %22, align 8
  %24 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %23, i16 noundef zeroext 38, i8 noundef zeroext %21, ptr noundef %2, i32 noundef 7) #16
  tail call void @mutex_unlock(ptr noundef %13) #16
  br label %25

25:                                               ; preds = %20, %8
  %26 = phi i32 [ %24, %20 ], [ %11, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unblock_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %10, i16 noundef zeroext 39, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %25

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 185
  %15 = load i8, ptr %5, align 1
  %16 = tail call i32 @hci_bdaddr_list_del(ptr noundef %14, ptr noundef %2, i8 noundef zeroext %15) #16
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @mgmt_send_event(i16 noundef zeroext 21, ptr noundef %1, i16 noundef zeroext 3, ptr noundef %2, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i8 [ 0, %18 ], [ 13, %12 ]
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %23 = load i16, ptr %22, align 8
  %24 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %23, i16 noundef zeroext 39, i8 noundef zeroext %21, ptr noundef %2, i32 noundef 7) #16
  tail call void @mutex_unlock(ptr noundef %13) #16
  br label %25

25:                                               ; preds = %20, %8
  %26 = phi i32 [ %24, %20 ], [ %11, %8 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_device_id(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = load i16, ptr %2, align 1
  %6 = icmp ugt i16 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %9, i16 noundef zeroext 40, i8 noundef zeroext 13) #16
  br label %27

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 82
  store i16 %5, ptr %13, align 2
  %14 = getelementptr inbounds %struct.mgmt_cp_set_device_id, ptr %2, i32 0, i32 1
  %15 = load i16, ptr %14, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 83
  store i16 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mgmt_cp_set_device_id, ptr %2, i32 0, i32 2
  %18 = load i16, ptr %17, align 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 84
  store i16 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.mgmt_cp_set_device_id, ptr %2, i32 0, i32 3
  %21 = load i16, ptr %20, align 1
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 85
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 40, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  %26 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_device_id_sync, ptr noundef null, ptr noundef null) #16
  tail call void @mutex_unlock(ptr noundef %12) #16
  br label %27

27:                                               ; preds = %11, %7
  %28 = phi i32 [ %10, %7 ], [ %25, %11 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_advertising(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %4
  %17 = phi i8 [ 12, %4 ], [ 11, %11 ]
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 41, i8 noundef zeroext %17) #16
  br label %114

21:                                               ; preds = %11
  %22 = load i8, ptr %2, align 1
  %23 = icmp ult i8 %22, 3
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %26, i16 noundef zeroext 41, i8 noundef zeroext 13) #16
  br label %114

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 174
  %30 = load i8, ptr %29, align 4, !range !16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 41, i8 noundef zeroext 10) #16
  br label %114

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %37) #16
  %38 = load i8, ptr %2, align 1
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %36
  %45 = load volatile i32, ptr %12, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load volatile i32, ptr %12, align 4
  %50 = and i32 %49, 16777216
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %39, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = icmp ne i8 %38, 2
  %55 = load volatile i32, ptr %12, align 4
  %56 = and i32 %55, 33554432
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %54, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53, %48
  %60 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load volatile i32, ptr %12, align 4
  %65 = and i32 %64, 16384
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 46
  %69 = load i8, ptr %68, align 8
  %70 = icmp eq i8 %69, 1
  br i1 %70, label %71, label %95

71:                                               ; preds = %67, %59, %53, %44, %36
  br i1 %39, label %80, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  store i8 0, ptr %73, align 8
  %74 = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %12) #16
  %75 = icmp eq i32 %74, 0
  %76 = load i8, ptr %2, align 1
  %77 = icmp eq i8 %76, 2
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  tail call void @_set_bit(i32 noundef 25, ptr noundef %12) #16
  br label %83

79:                                               ; preds = %72
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %12) #16
  br label %83

80:                                               ; preds = %71
  %81 = tail call i32 @_test_and_clear_bit(i32 noundef 24, ptr noundef %12) #16
  %82 = icmp ne i32 %81, 0
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %12) #16
  br label %83

83:                                               ; preds = %80, %79, %78
  %84 = phi i1 [ %75, %78 ], [ %75, %79 ], [ %82, %80 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %85 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %85, ptr %6, align 4
  %86 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %87 = load i16, ptr %86, align 8
  %88 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %87, i16 noundef zeroext 41, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %89 = icmp slt i32 %88, 0
  %90 = xor i1 %84, true
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %112, label %92

92:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %93 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %93, ptr %5, align 4
  %94 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %112

95:                                               ; preds = %67, %63
  %96 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 41, ptr noundef %1) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %98, %95
  %102 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %103 = load i16, ptr %102, align 8
  %104 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %103, i16 noundef zeroext 41, i8 noundef zeroext 10) #16
  br label %112

105:                                              ; preds = %98
  %106 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 41, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_adv_sync, ptr noundef nonnull %106, ptr noundef nonnull @set_advertising_complete) #16
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  tail call void @mgmt_pending_remove(ptr noundef nonnull %106) #16
  br label %112

112:                                              ; preds = %111, %108, %105, %101, %92, %83
  %113 = phi i32 [ %104, %101 ], [ %109, %111 ], [ %109, %108 ], [ %88, %83 ], [ %94, %92 ], [ -12, %105 ]
  call void @mutex_unlock(ptr noundef %37) #16
  br label %114

114:                                              ; preds = %112, %32, %24, %16
  %115 = phi i32 [ %20, %16 ], [ %27, %24 ], [ %35, %32 ], [ %113, %112 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bredr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 96
  %12 = icmp eq i8 %11, 64
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %15, i16 noundef zeroext 42, i8 noundef zeroext 12) #16
  br label %106

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 8388608
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 42, i8 noundef zeroext 11) #16
  br label %106

26:                                               ; preds = %17
  %27 = load i8, ptr %2, align 1
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %31, i16 noundef zeroext 42, i8 noundef zeroext 13) #16
  br label %106

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %34) #16
  %35 = load i8, ptr %2, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, %36
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %42 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %42, ptr %7, align 4
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %44 = load i16, ptr %43, align 8
  %45 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %44, i16 noundef zeroext 42, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %104

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load volatile i32, ptr %18, align 4
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %51, %46
  %56 = icmp eq i8 %35, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %18) #16
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %18) #16
  tail call void @_clear_bit(i32 noundef 29, ptr noundef %18) #16
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %18) #16
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %18) #16
  br label %58

58:                                               ; preds = %57, %55
  tail call void @_change_bit(i32 noundef 32, ptr noundef %18) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %59 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %59, ptr %6, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %61 = load i16, ptr %60, align 8
  %62 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %61, i16 noundef zeroext 42, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %65 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %65, ptr %5, align 4
  %66 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %104

67:                                               ; preds = %51
  %68 = icmp eq i8 %35, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %71 = load i16, ptr %70, align 8
  %72 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %71, i16 noundef zeroext 42, i8 noundef zeroext 11) #16
  br label %104

73:                                               ; preds = %67
  %74 = load volatile i32, ptr %37, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %79 = call i32 @bcmp(ptr noundef dereferenceable(6) %78, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load volatile i32, ptr %18, align 4
  %83 = and i32 %82, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %87 = load i16, ptr %86, align 8
  %88 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %87, i16 noundef zeroext 42, i8 noundef zeroext 11) #16
  br label %104

89:                                               ; preds = %81, %73
  %90 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 42, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %94 = load i16, ptr %93, align 8
  %95 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %94, i16 noundef zeroext 42, i8 noundef zeroext 3) #16
  br label %104

96:                                               ; preds = %89
  %97 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_bredr_sync, ptr noundef nonnull %90, ptr noundef nonnull @set_bredr_complete) #16
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %101 = load i16, ptr %100, align 8
  %102 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %101, i16 noundef zeroext 42, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_free(ptr noundef nonnull %90) #16
  br label %104

103:                                              ; preds = %96
  tail call void @_set_bit(i32 noundef 32, ptr noundef %18) #16
  br label %104

104:                                              ; preds = %103, %99, %92, %85, %69, %64, %58, %41
  %105 = phi i32 [ %45, %41 ], [ %62, %58 ], [ %66, %64 ], [ %97, %99 ], [ %97, %103 ], [ %88, %85 ], [ %72, %69 ], [ -12, %92 ]
  call void @mutex_unlock(ptr noundef %34) #16
  br label %106

106:                                              ; preds = %104, %29, %22, %13
  %107 = phi i32 [ %16, %13 ], [ %32, %29 ], [ %105, %104 ], [ %25, %22 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_static_address(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %15, i16 noundef zeroext 43, i8 noundef zeroext 12) #16
  br label %62

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 43, i8 noundef zeroext 11) #16
  br label %62

31:                                               ; preds = %22, %17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %32 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 -1, i64 6, i1 false)
  %35 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %39, i16 noundef zeroext 43, i8 noundef zeroext 13) #16
  br label %62

41:                                               ; preds = %34
  %42 = getelementptr [6 x i8], ptr %2, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = icmp ugt i8 %43, -65
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 8
  %48 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %47, i16 noundef zeroext 43, i8 noundef zeroext 13) #16
  br label %62

49:                                               ; preds = %41, %31
  %50 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %50) #16
  %51 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %51, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %52 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %52, ptr %6, align 4
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %54, i16 noundef zeroext 43, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %58 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %58, ptr %5, align 4
  %59 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %60

60:                                               ; preds = %57, %49
  %61 = phi i32 [ %55, %49 ], [ %59, %57 ]
  call void @mutex_unlock(ptr noundef %50) #16
  br label %62

62:                                               ; preds = %60, %45, %37, %27, %13
  %63 = phi i32 [ %48, %45 ], [ %61, %60 ], [ %40, %37 ], [ %30, %27 ], [ %16, %13 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_scan_params(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 44, i8 noundef zeroext 12) #16
  br label %54

13:                                               ; preds = %4
  %14 = load i16, ptr %2, align 1
  %15 = add i16 %14, -16385
  %16 = icmp ult i16 %15, -16381
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 44, i8 noundef zeroext 13) #16
  br label %54

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.mgmt_cp_set_scan_params, ptr %2, i32 0, i32 1
  %23 = load i16, ptr %22, align 1
  %24 = add i16 %23, -16385
  %25 = icmp ult i16 %24, -16381
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 44, i8 noundef zeroext 13) #16
  br label %54

30:                                               ; preds = %21
  %31 = icmp ugt i16 %23, %14
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 44, i8 noundef zeroext 13) #16
  br label %54

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %37) #16
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 47
  store i16 %14, ptr %38, align 2
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 48
  store i16 %23, ptr %39, align 4
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 8
  %42 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %41, i16 noundef zeroext 44, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call i32 @hci_update_passive_scan(ptr noundef %1) #16
  br label %53

53:                                               ; preds = %51, %47, %36
  tail call void @mutex_unlock(ptr noundef %37) #16
  br label %54

54:                                               ; preds = %53, %32, %26, %17, %9
  %55 = phi i32 [ %20, %17 ], [ %29, %26 ], [ %35, %32 ], [ %42, %53 ], [ %12, %9 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_secure_conn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 2, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %10, label %12, label %23

12:                                               ; preds = %4
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext 45, i8 noundef zeroext 12) #16
  br label %118

20:                                               ; preds = %12
  %21 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %22 = load volatile i32, ptr %21, align 4
  br label %36

23:                                               ; preds = %4
  %24 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %11, align 4
  %30 = and i32 %29, 32768
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 45, i8 noundef zeroext 11) #16
  br label %118

36:                                               ; preds = %28, %23, %20
  %37 = phi ptr [ %24, %23 ], [ %24, %28 ], [ %21, %20 ]
  %38 = load i8, ptr %2, align 1
  %39 = icmp ult i8 %38, 3
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %42, i16 noundef zeroext 45, i8 noundef zeroext 13) #16
  br label %118

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %45) #16
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load volatile i32, ptr %11, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8, ptr %7, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %37, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %58, %54, %50, %44
  %63 = load i8, ptr %2, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %11) #16
  %67 = icmp eq i32 %66, 0
  %68 = load i8, ptr %2, align 1
  %69 = icmp eq i8 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  tail call void @_set_bit(i32 noundef 17, ptr noundef %11) #16
  br label %75

71:                                               ; preds = %65
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %11) #16
  br label %75

72:                                               ; preds = %62
  %73 = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %11) #16
  %74 = icmp ne i32 %73, 0
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %11) #16
  br label %75

75:                                               ; preds = %72, %71, %70
  %76 = phi i1 [ %67, %70 ], [ %67, %71 ], [ %74, %72 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %77 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %77, ptr %6, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %79 = load i16, ptr %78, align 8
  %80 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %79, i16 noundef zeroext 45, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %81 = icmp slt i32 %80, 0
  %82 = xor i1 %76, true
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %116, label %84

84:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %85 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %85, ptr %5, align 4
  %86 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %116

87:                                               ; preds = %58
  %88 = load i8, ptr %2, align 1
  %89 = icmp eq i8 %88, 0
  %90 = load volatile i32, ptr %11, align 4
  %91 = and i32 %90, 65536
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %89, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = icmp ne i8 %88, 2
  %96 = load volatile i32, ptr %11, align 4
  %97 = and i32 %96, 131072
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %95, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = tail call fastcc i32 @send_settings_rsp(ptr noundef %0, i16 noundef zeroext 45, ptr noundef %1)
  br label %116

102:                                              ; preds = %94, %87
  %103 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 45, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %107 = load i16, ptr %106, align 8
  %108 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %107, i16 noundef zeroext 45, i8 noundef zeroext 3) #16
  br label %116

109:                                              ; preds = %102
  %110 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_secure_conn_sync, ptr noundef nonnull %103, ptr noundef nonnull @set_secure_conn_complete) #16
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %114 = load i16, ptr %113, align 8
  %115 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %114, i16 noundef zeroext 45, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_free(ptr noundef nonnull %103) #16
  br label %116

116:                                              ; preds = %112, %109, %105, %100, %84, %75
  %117 = phi i32 [ %101, %100 ], [ %110, %112 ], [ %110, %109 ], [ %80, %75 ], [ %86, %84 ], [ -12, %105 ]
  call void @mutex_unlock(ptr noundef %45) #16
  br label %118

118:                                              ; preds = %116, %40, %32, %16
  %119 = phi i32 [ %43, %40 ], [ %117, %116 ], [ %35, %32 ], [ %19, %16 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_debug_keys(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = load i8, ptr %2, align 1
  %9 = icmp ult i8 %8, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 46, i8 noundef zeroext 13) #16
  br label %71

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %15) #16
  %16 = load i8, ptr %2, align 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %17, label %22, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %18) #16
  %21 = icmp eq i32 %20, 0
  br label %25

22:                                               ; preds = %14
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %18) #16
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i1 [ %21, %19 ], [ %24, %22 ]
  %27 = load i8, ptr %2, align 1
  %28 = icmp eq i8 %27, 2
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %28, label %30, label %33

30:                                               ; preds = %25
  %31 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %29) #16
  %32 = icmp eq i32 %31, 0
  br label %36

33:                                               ; preds = %25
  %34 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %29) #16
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ %32, %30 ], [ %35, %33 ]
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %37, true
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 32768
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  %54 = load i8, ptr %2, align 1
  %55 = icmp eq i8 %54, 2
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %7, align 1
  %57 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 6148, i32 noundef 1, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %58

58:                                               ; preds = %53, %49, %42, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %59 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %59, ptr %6, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %61 = load i16, ptr %60, align 8
  %62 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %61, i16 noundef zeroext 46, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %63 = icmp slt i32 %62, 0
  %64 = xor i1 %26, true
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %67 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %67, ptr %5, align 4
  %68 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i32 [ %62, %58 ], [ %68, %66 ]
  call void @mutex_unlock(ptr noundef %15) #16
  br label %71

71:                                               ; preds = %69, %10
  %72 = phi i32 [ %13, %10 ], [ %70, %69 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_privacy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 47, i8 noundef zeroext 12) #16
  br label %68

15:                                               ; preds = %4
  %16 = load i8, ptr %2, align 1
  %17 = icmp ult i8 %16, 3
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 47, i8 noundef zeroext 13) #16
  br label %68

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 47, i8 noundef zeroext 11) #16
  br label %68

36:                                               ; preds = %27, %22
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %37) #16
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 21, ptr noundef %38) #16
  %39 = load i8, ptr %2, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %38) #16
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 220
  %45 = getelementptr inbounds %struct.mgmt_cp_set_privacy, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %44, ptr noundef align 1 dereferenceable(16) %45, i32 16, i1 false)
  tail call void @_set_bit(i32 noundef 20, ptr noundef %38) #16
  tail call void @hci_adv_instances_set_rpa_expired(ptr noundef %1, i1 noundef zeroext true) #16
  %46 = load i8, ptr %2, align 1
  %47 = icmp eq i8 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void @_set_bit(i32 noundef 19, ptr noundef %38) #16
  br label %54

49:                                               ; preds = %41
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %38) #16
  br label %54

50:                                               ; preds = %36
  %51 = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef %38) #16
  %52 = icmp ne i32 %51, 0
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 220
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(16) %53, i8 0, i32 16, i1 false)
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %38) #16
  tail call void @hci_adv_instances_set_rpa_expired(ptr noundef %1, i1 noundef zeroext false) #16
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %38) #16
  br label %54

54:                                               ; preds = %50, %49, %48
  %55 = phi i1 [ %43, %48 ], [ %43, %49 ], [ %52, %50 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %56 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %56, ptr %6, align 4
  %57 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %58 = load i16, ptr %57, align 8
  %59 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %58, i16 noundef zeroext 47, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %60 = icmp slt i32 %59, 0
  %61 = xor i1 %55, true
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %64 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %64, ptr %5, align 4
  %65 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %66

66:                                               ; preds = %63, %54
  %67 = phi i32 [ %59, %54 ], [ %65, %63 ]
  call void @mutex_unlock(ptr noundef %37) #16
  br label %68

68:                                               ; preds = %66, %32, %18, %11
  %69 = phi i32 [ %21, %18 ], [ %67, %66 ], [ %35, %32 ], [ %14, %11 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_irks(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 48, i8 noundef zeroext 12) #16
  br label %76

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 1
  %16 = zext i16 %15 to i32
  %17 = icmp ugt i16 %15, 2849
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %19, i32 noundef %16) #16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 48, i8 noundef zeroext 13) #16
  br label %76

23:                                               ; preds = %14
  %24 = mul nuw nsw i32 %16, 23
  %25 = add nuw nsw i32 %24, 2
  %26 = and i32 %25, 65535
  %27 = zext i16 %3 to i32
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = icmp eq i16 %15, 0
  br i1 %30, label %52, label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %32, i32 noundef %26, i32 noundef %27) #16
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 48, i8 noundef zeroext 13) #16
  br label %76

36:                                               ; preds = %49, %29
  %37 = phi i32 [ %50, %49 ], [ 0, %29 ]
  %38 = getelementptr %struct.mgmt_cp_load_irks, ptr %2, i32 0, i32 1, i32 %37
  %39 = getelementptr inbounds %struct.mgmt_addr_info, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %45 [
    i8 1, label %49
    i8 2, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr [6 x i8], ptr %38, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = icmp ugt i8 %43, -65
  br i1 %44, label %49, label %45

45:                                               ; preds = %41, %36
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 8
  %48 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %47, i16 noundef zeroext 48, i8 noundef zeroext 13) #16
  br label %76

49:                                               ; preds = %41, %36
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %16
  br i1 %51, label %52, label %36

52:                                               ; preds = %49, %29
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %53) #16
  tail call void @hci_smp_irks_clear(ptr noundef %1) #16
  br i1 %30, label %71, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %56

56:                                               ; preds = %68, %54
  %57 = phi i32 [ 0, %54 ], [ %69, %68 ]
  %58 = getelementptr %struct.mgmt_cp_load_irks, ptr %2, i32 0, i32 1, i32 %57
  %59 = getelementptr %struct.mgmt_cp_load_irks, ptr %2, i32 0, i32 1, i32 %57, i32 1
  %60 = call zeroext i1 @hci_is_blocked_key(ptr noundef %1, i8 noundef zeroext 2, ptr noundef %59) #16
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.13, ptr noundef %55, ptr noundef %58) #16
  br label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.mgmt_addr_info, ptr %58, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp ne i8 %64, 1
  %66 = zext i1 %65 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %67 = call ptr @hci_add_irk(ptr noundef %1, ptr noundef %58, i8 noundef zeroext %66, ptr noundef %59, ptr noundef nonnull %5) #16
  br label %68

68:                                               ; preds = %62, %61
  %69 = add nuw nsw i32 %57, 1
  %70 = icmp eq i32 %69, %16
  br i1 %70, label %71, label %56

71:                                               ; preds = %68, %52
  %72 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  call void @_set_bit(i32 noundef 21, ptr noundef %72) #16
  %73 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %74 = load i16, ptr %73, align 8
  %75 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %74, i16 noundef zeroext 48, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  call void @mutex_unlock(ptr noundef %53) #16
  br label %76

76:                                               ; preds = %71, %45, %31, %18, %10
  %77 = phi i32 [ %22, %18 ], [ %35, %31 ], [ %48, %45 ], [ %75, %71 ], [ %13, %10 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_conn_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_get_conn_info, align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #16
  %6 = getelementptr inbounds i8, ptr %5, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %6, i8 0, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %7 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %8, ptr %9, align 1
  %10 = icmp ult i8 %8, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 49, i8 noundef zeroext 13, ptr noundef nonnull %5, i32 noundef 10) #16
  br label %140

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %15
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 49, i8 noundef zeroext 15, ptr noundef nonnull %5, i32 noundef 10) #16
  br label %138

30:                                               ; preds = %21
  %31 = load i8, ptr %7, align 1
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %32, label %36, label %51

36:                                               ; preds = %30
  br i1 %35, label %50, label %37

37:                                               ; preds = %47, %36
  %38 = phi ptr [ %48, %47 ], [ %34, %36 ]
  %39 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 14
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.hci_conn, ptr %38, i32 0, i32 2
  %44 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %43, ptr noundef dereferenceable(6) %2, i32 6) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %66

47:                                               ; preds = %42, %37
  %48 = load volatile ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, %33
  br i1 %49, label %50, label %37

50:                                               ; preds = %47, %36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %73

51:                                               ; preds = %30
  br i1 %35, label %65, label %52

52:                                               ; preds = %62, %51
  %53 = phi ptr [ %63, %62 ], [ %34, %51 ]
  %54 = getelementptr inbounds %struct.hci_conn, ptr %53, i32 0, i32 14
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, -128
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hci_conn, ptr %53, i32 0, i32 2
  %59 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %58, ptr noundef dereferenceable(6) %2, i32 6) #16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %66

62:                                               ; preds = %57, %52
  %63 = load volatile ptr, ptr %53, align 4
  %64 = icmp eq ptr %63, %33
  br i1 %64, label %65, label %52

65:                                               ; preds = %62, %51
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %73

66:                                               ; preds = %61, %46
  %67 = phi ptr [ %38, %46 ], [ %53, %61 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 12
  %71 = load i16, ptr %70, align 4
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %66, %65, %50
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %75 = load i16, ptr %74, align 8
  %76 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %75, i16 noundef zeroext 49, i8 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 10) #16
  br label %138

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 70
  %79 = load i16, ptr %78, align 2
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 71
  %81 = load i16, ptr %80, align 8
  %82 = tail call i32 @prandom_u32() #16
  %83 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 51
  %84 = load i32, ptr %83, align 4
  %85 = zext i16 %81 to i32
  %86 = zext i16 %79 to i32
  %87 = sub nsw i32 %85, %86
  %88 = zext i32 %87 to i64
  %89 = zext i32 %82 to i64
  %90 = mul nuw i64 %88, %89
  %91 = lshr i64 %90, 32
  %92 = trunc i64 %91 to i32
  %93 = add i32 %92, %86
  %94 = tail call i32 @__msecs_to_jiffies(i32 noundef %93) #16
  %95 = add i32 %94, %84
  %96 = load volatile i32, ptr @jiffies, align 64
  %97 = sub i32 %95, %96
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %77
  %100 = load i32, ptr %83, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %99, %77
  %103 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 49, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %107 = load i16, ptr %106, align 8
  %108 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %107, i16 noundef zeroext 49, i8 noundef zeroext 3, ptr noundef nonnull %5, i32 noundef 10) #16
  br label %138

109:                                              ; preds = %102
  %110 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @get_conn_info_sync, ptr noundef nonnull %103, ptr noundef nonnull @get_conn_info_complete) #16
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %114 = load i16, ptr %113, align 8
  %115 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %114, i16 noundef zeroext 49, i8 noundef zeroext 3, ptr noundef nonnull %5, i32 noundef 10) #16
  call void @mgmt_pending_free(ptr noundef nonnull %103) #16
  br label %138

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %117) #16, !srcloc !10
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %117, ptr %117, i32 1, ptr elementtype(i32) %117) #16, !srcloc !24
  %119 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 58
  %120 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %119) #16
  %121 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 63
  %122 = tail call ptr @get_device(ptr noundef %121) #16
  %123 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %103, i32 0, i32 7
  store ptr %67, ptr %123, align 4
  %124 = load volatile i32, ptr @jiffies, align 64
  store i32 %124, ptr %83, align 4
  br label %138

125:                                              ; preds = %99
  %126 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 44
  %127 = load i8, ptr %126, align 2
  %128 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %5, i32 0, i32 1
  store i8 %127, ptr %128, align 1
  %129 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 45
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %5, i32 0, i32 2
  store i8 %130, ptr %131, align 1
  %132 = getelementptr inbounds %struct.hci_conn, ptr %67, i32 0, i32 46
  %133 = load i8, ptr %132, align 8
  %134 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %5, i32 0, i32 3
  store i8 %133, ptr %134, align 1
  %135 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %136 = load i16, ptr %135, align 8
  %137 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %136, i16 noundef zeroext 49, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 10) #16
  br label %138

138:                                              ; preds = %125, %116, %112, %105, %73, %26
  %139 = phi i32 [ %29, %26 ], [ %76, %73 ], [ %137, %125 ], [ %110, %112 ], [ %110, %116 ], [ -12, %105 ]
  call void @mutex_unlock(ptr noundef %16) #16
  br label %140

140:                                              ; preds = %138, %11
  %141 = phi i32 [ %139, %138 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #16
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_clock_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_get_clock_info, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #16
  %7 = getelementptr inbounds i8, ptr %5, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(10) %7, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %8 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 50, i8 noundef zeroext 13, ptr noundef nonnull %5, i32 noundef 17) #16
  br label %88

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %17) #16
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %16
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 50, i8 noundef zeroext 15, ptr noundef nonnull %5, i32 noundef 17) #16
  br label %86

31:                                               ; preds = %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %32 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %50, label %38

38:                                               ; preds = %47, %34
  %39 = phi ptr [ %48, %47 ], [ %36, %34 ]
  %40 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 2
  %45 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef dereferenceable(6) %2, i32 6) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %38
  %48 = load volatile ptr, ptr %39, align 4
  %49 = icmp eq ptr %48, %35
  br i1 %49, label %50, label %38

50:                                               ; preds = %47, %34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %57

51:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %52 = icmp eq ptr %39, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.hci_conn, ptr %39, i32 0, i32 12
  %55 = load i16, ptr %54, align 4
  %56 = icmp eq i16 %55, 1
  br i1 %56, label %61, label %57

57:                                               ; preds = %53, %51, %50
  %58 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %59 = load i16, ptr %58, align 8
  %60 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %59, i16 noundef zeroext 50, i8 noundef zeroext 2, ptr noundef nonnull %5, i32 noundef 17) #16
  br label %86

61:                                               ; preds = %53, %31
  %62 = phi ptr [ %39, %53 ], [ null, %31 ]
  %63 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 50, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %67 = load i16, ptr %66, align 8
  %68 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %67, i16 noundef zeroext 50, i8 noundef zeroext 3, ptr noundef nonnull %5, i32 noundef 17) #16
  br label %86

69:                                               ; preds = %61
  %70 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @get_clock_info_sync, ptr noundef nonnull %63, ptr noundef nonnull @get_clock_info_complete) #16
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %74 = load i16, ptr %73, align 8
  %75 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %74, i16 noundef zeroext 50, i8 noundef zeroext 3, ptr noundef nonnull %5, i32 noundef 17) #16
  call void @mgmt_pending_free(ptr noundef nonnull %63) #16
  br label %86

76:                                               ; preds = %69
  %77 = icmp eq ptr %62, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.hci_conn, ptr %62, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #16, !srcloc !10
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #16, !srcloc !24
  %81 = getelementptr inbounds %struct.hci_conn, ptr %62, i32 0, i32 58
  %82 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %81) #16
  %83 = getelementptr inbounds %struct.hci_conn, ptr %62, i32 0, i32 63
  %84 = tail call ptr @get_device(ptr noundef %83) #16
  %85 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %63, i32 0, i32 7
  store ptr %62, ptr %85, align 4
  br label %86

86:                                               ; preds = %78, %76, %72, %65, %57, %27
  %87 = phi i32 [ %30, %27 ], [ %60, %57 ], [ %75, %72 ], [ %70, %78 ], [ %70, %76 ], [ %68, %65 ]
  call void @mutex_unlock(ptr noundef %17) #16
  br label %88

88:                                               ; preds = %86, %12
  %89 = phi i32 [ %15, %12 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #16
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_device_flags_changed, align 1
  %6 = alloca %struct.mgmt_ev_device_added, align 8
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp ult i8 %9, 3
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %12 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 8
  %17 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %16, i16 noundef zeroext 51, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %154

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.mgmt_cp_add_device, ptr %2, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = icmp ult i8 %20, 3
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 51, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %154

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %27) #16
  %28 = load i8, ptr %8, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8, ptr %19, align 1
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %35, i16 noundef zeroext 51, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %152

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %39 = tail call i32 @hci_bdaddr_list_add_with_flags(ptr noundef %38, ptr noundef %2, i8 noundef zeroext 0, i32 noundef 0) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %152

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 156
  %45 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %43, ptr noundef %44) #16
  br label %134

46:                                               ; preds = %26
  %47 = icmp ne i8 %28, 1
  %48 = zext i1 %47 to i8
  %49 = load i8, ptr %19, align 1
  %50 = icmp eq i8 %49, 1
  %51 = select i1 %50, i8 2, i8 1
  %52 = icmp eq i8 %49, 2
  %53 = select i1 %52, i8 3, i8 %51
  br i1 %47, label %54, label %62

54:                                               ; preds = %46
  %55 = getelementptr [6 x i8], ptr %2, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = icmp ugt i8 %56, -65
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %60, i16 noundef zeroext 51, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %152

62:                                               ; preds = %54, %46
  %63 = tail call ptr @hci_conn_params_add(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %48) #16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %119, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hci_conn_params, ptr %63, i32 0, i32 8
  %67 = load i32, ptr %66, align 4
  %68 = zext i8 %53 to i32
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %123, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.hci_conn_params, ptr %63, i32 0, i32 1
  %72 = getelementptr inbounds %struct.hci_conn_params, ptr %63, i32 0, i32 1, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %72, align 4
  %76 = trunc i8 %53 to i2
  switch i2 %76, label %118 [
    i2 -1, label %85
    i2 -2, label %85
    i2 1, label %77
  ]

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.hci_conn_params, ptr %63, i32 0, i32 10
  %79 = load i8, ptr %78, align 4, !range !16
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 195
  br label %114

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 196
  br label %114

85:                                               ; preds = %70, %70
  %86 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %101, label %89

89:                                               ; preds = %98, %85
  %90 = phi ptr [ %99, %98 ], [ %87, %85 ]
  %91 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 14
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, -128
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 2
  %96 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %95, ptr noundef dereferenceable(6) %2, i32 6) #16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94, %89
  %99 = load volatile ptr, ptr %90, align 4
  %100 = icmp eq ptr %99, %86
  br i1 %100, label %101, label %89

101:                                              ; preds = %98, %85
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %112

102:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %103 = icmp eq ptr %90, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 3
  %106 = load i8, ptr %105, align 2
  %107 = icmp eq i8 %106, %48
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 12
  %110 = load i16, ptr %109, align 4
  %111 = icmp eq i16 %110, 1
  br i1 %111, label %118, label %112

112:                                              ; preds = %108, %104, %102, %101
  %113 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 195
  br label %114

114:                                              ; preds = %112, %83, %81
  %115 = phi ptr [ %84, %83 ], [ %82, %81 ], [ %113, %112 ]
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %71, ptr %117, align 4
  store ptr %116, ptr %71, align 4
  store ptr %115, ptr %72, align 4
  store volatile ptr %71, ptr %115, align 4
  br label %118

118:                                              ; preds = %114, %108, %70
  store i32 %68, ptr %66, align 4
  br label %123

119:                                              ; preds = %62
  %120 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %121 = load i16, ptr %120, align 8
  %122 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %121, i16 noundef zeroext 51, i8 noundef zeroext 3, ptr noundef %2, i32 noundef 7) #16
  br label %152

123:                                              ; preds = %118, %65
  %124 = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %48) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.hci_conn_params, ptr %124, i32 0, i32 11
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 3
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i32 [ 0, %123 ], [ %129, %126 ]
  %132 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @add_device_sync, ptr noundef null, ptr noundef null) #16
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %152, label %134

134:                                              ; preds = %130, %41
  %135 = phi i32 [ 0, %41 ], [ %131, %130 ]
  %136 = load i8, ptr %8, align 1
  %137 = load i8, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %138 = getelementptr inbounds %struct.mgmt_addr_info, ptr %6, i32 0, i32 1
  store i8 %136, ptr %138, align 2
  %139 = getelementptr inbounds %struct.mgmt_ev_device_added, ptr %6, i32 0, i32 1
  store i8 %137, ptr %139, align 1
  %140 = call i32 @mgmt_send_event(i16 noundef zeroext 26, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %6, i16 noundef zeroext 8, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %141 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 207
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 3
  %144 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %145 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %144, ptr %145, align 1
  %146 = getelementptr inbounds %struct.mgmt_ev_device_flags_changed, ptr %5, i32 0, i32 1
  store i32 %143, ptr %146, align 1
  %147 = getelementptr inbounds %struct.mgmt_ev_device_flags_changed, ptr %5, i32 0, i32 2
  store i32 %135, ptr %147, align 1
  %148 = call i32 @mgmt_send_event(i16 noundef zeroext 42, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 15, i32 noundef 0, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %5) #16
  %149 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %150 = load i16, ptr %149, align 8
  %151 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %150, i16 noundef zeroext 51, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 7) #16
  br label %152

152:                                              ; preds = %134, %130, %119, %58, %37, %33
  %153 = phi i32 [ %36, %33 ], [ %39, %37 ], [ %151, %134 ], [ %122, %119 ], [ %132, %130 ], [ %61, %58 ]
  call void @mutex_unlock(ptr noundef %27) #16
  br label %154

154:                                              ; preds = %152, %22, %14
  %155 = phi i32 [ %25, %22 ], [ %153, %152 ], [ %17, %14 ]
  ret i32 %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_device_removed, align 1
  %6 = alloca %struct.mgmt_ev_device_removed, align 1
  %7 = alloca %struct.mgmt_ev_device_removed, align 1
  %8 = alloca %struct.mgmt_ev_device_removed, align 1
  %9 = alloca %struct.bdaddr_t, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i64 6, i1 false)
  %11 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %9, i32 6)
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  br i1 %12, label %77, label %15

15:                                               ; preds = %4
  %16 = icmp ult i8 %14, 3
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %19, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

21:                                               ; preds = %15
  %22 = icmp eq i8 %14, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %25 = tail call i32 @hci_bdaddr_list_del(ptr noundef %24, ptr noundef %2, i8 noundef zeroext 0) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

31:                                               ; preds = %21
  %32 = icmp ne i8 %14, 1
  %33 = zext i1 %32 to i8
  br i1 %32, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr [6 x i8], ptr %2, i32 0, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = icmp ugt i8 %36, -65
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

42:                                               ; preds = %34, %31
  %43 = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %33) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 8
  %48 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %47, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.hci_conn_params, ptr %43, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %56 [
    i32 0, label %52
    i32 5, label %52
  ]

52:                                               ; preds = %49, %49
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %54, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.hci_conn_params, ptr %43, i32 0, i32 1
  %58 = getelementptr inbounds %struct.hci_conn_params, ptr %43, i32 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %57, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %43, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store volatile ptr %64, ptr %63, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  tail call void @kfree(ptr noundef nonnull %43) #16
  %66 = load i8, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %67 = getelementptr inbounds %struct.mgmt_addr_info, ptr %7, i32 0, i32 1
  store i8 %66, ptr %67, align 1
  %68 = call i32 @mgmt_send_event(i16 noundef zeroext 27, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %7) #16
  br label %138

69:                                               ; preds = %23
  %70 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 156
  %73 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %71, ptr noundef %72) #16
  %74 = load i8, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %8) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %75 = getelementptr inbounds %struct.mgmt_addr_info, ptr %8, i32 0, i32 1
  store i8 %74, ptr %75, align 1
  %76 = call i32 @mgmt_send_event(i16 noundef zeroext 27, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %8, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %8) #16
  br label %140

77:                                               ; preds = %4
  %78 = icmp eq i8 %14, 0
  br i1 %78, label %79, label %134

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mgmt_addr_info, ptr %6, i32 0, i32 1
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi ptr [ %81, %83 ], [ %87, %85 ]
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bdaddr_list, ptr %86, i32 0, i32 1
  %89 = getelementptr inbounds %struct.bdaddr_list, ptr %86, i32 0, i32 2
  %90 = load i8, ptr %89, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %88, i32 6, i1 false) #16
  store i8 %90, ptr %84, align 1
  %91 = call i32 @mgmt_send_event(i16 noundef zeroext 27, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %6, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #16
  %92 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %86, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  store volatile ptr %94, ptr %93, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %86, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %92, align 4
  call void @kfree(ptr noundef %86) #16
  %96 = icmp eq ptr %87, %80
  br i1 %96, label %97, label %85

97:                                               ; preds = %85, %79
  %98 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 156
  %101 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %99, ptr noundef %100) #16
  %102 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 194
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %102
  br i1 %104, label %138, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  br label %107

107:                                              ; preds = %132, %105
  %108 = phi ptr [ %103, %105 ], [ %109, %132 ]
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %132, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 2
  %115 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 3
  %116 = load i8, ptr %115, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %114, i32 6, i1 false) #16
  store i8 %116, ptr %106, align 1
  %117 = call i32 @mgmt_send_event(i16 noundef zeroext 27, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 7, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #16
  %118 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 10
  %119 = load i8, ptr %118, align 4, !range !16
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  store i32 5, ptr %110, align 4
  br label %132

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 1
  %124 = getelementptr inbounds %struct.hci_conn_params, ptr %108, i32 0, i32 1, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %123, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store volatile ptr %126, ptr %125, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %123, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %124, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %108, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %129, ptr %131, align 4
  store volatile ptr %130, ptr %129, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %108, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %128, align 4
  call void @kfree(ptr noundef %108) #16
  br label %132

132:                                              ; preds = %122, %121, %107
  %133 = icmp eq ptr %109, %102
  br i1 %133, label %138, label %107

134:                                              ; preds = %77
  %135 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %136 = load i16, ptr %135, align 8
  %137 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %136, i16 noundef zeroext 52, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 7) #16
  br label %144

138:                                              ; preds = %132, %97, %56
  %139 = call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @remove_device_sync, ptr noundef null, ptr noundef null) #16
  br label %140

140:                                              ; preds = %138, %69
  %141 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %142 = load i16, ptr %141, align 8
  %143 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %142, i16 noundef zeroext 52, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 7) #16
  br label %144

144:                                              ; preds = %140, %134, %52, %45, %38, %27, %17
  %145 = phi i32 [ %143, %140 ], [ %137, %134 ], [ %20, %17 ], [ %41, %38 ], [ %48, %45 ], [ %55, %52 ], [ %30, %27 ]
  call void @mutex_unlock(ptr noundef %10) #16
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @load_conn_param(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 53, i8 noundef zeroext 12) #16
  br label %94

13:                                               ; preds = %4
  %14 = load i16, ptr %2, align 1
  %15 = zext i16 %14 to i32
  %16 = icmp ugt i16 %14, 4368
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %18, i32 noundef %15) #16
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 53, i8 noundef zeroext 13) #16
  br label %94

22:                                               ; preds = %13
  %23 = mul nuw nsw i32 %15, 15
  %24 = add nuw nsw i32 %23, 2
  %25 = and i32 %24, 65535
  %26 = zext i16 %3 to i32
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef %29, i32 noundef %25, i32 noundef %26) #16
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %31, i16 noundef zeroext 53, i8 noundef zeroext 13) #16
  br label %94

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %34) #16
  tail call void @hci_conn_params_clear_disabled(ptr noundef %1) #16
  %35 = icmp eq i16 %14, 0
  br i1 %35, label %90, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  br label %38

38:                                               ; preds = %87, %36
  %39 = phi i32 [ 0, %36 ], [ %88, %87 ]
  %40 = getelementptr %struct.mgmt_cp_load_conn_param, ptr %2, i32 0, i32 1, i32 %39
  %41 = getelementptr inbounds %struct.mgmt_addr_info, ptr %40, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  switch i8 %42, label %44 [
    i8 1, label %45
    i8 2, label %43
  ]

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %38
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %37) #16
  br label %87

45:                                               ; preds = %43, %38
  %46 = phi i8 [ 1, %43 ], [ 0, %38 ]
  %47 = getelementptr %struct.mgmt_cp_load_conn_param, ptr %2, i32 0, i32 1, i32 %39, i32 1
  %48 = load i16, ptr %47, align 1
  %49 = getelementptr %struct.mgmt_cp_load_conn_param, ptr %2, i32 0, i32 1, i32 %39, i32 2
  %50 = load i16, ptr %49, align 1
  %51 = getelementptr %struct.mgmt_cp_load_conn_param, ptr %2, i32 0, i32 1, i32 %39, i32 3
  %52 = load i16, ptr %51, align 1
  %53 = getelementptr %struct.mgmt_cp_load_conn_param, ptr %2, i32 0, i32 1, i32 %39, i32 4
  %54 = load i16, ptr %53, align 1
  %55 = zext i16 %50 to i32
  %56 = icmp ugt i16 %48, %50
  %57 = icmp ult i16 %48, 6
  %58 = or i1 %57, %56
  %59 = icmp ugt i16 %50, 3200
  %60 = or i1 %59, %58
  br i1 %60, label %77, label %61

61:                                               ; preds = %45
  %62 = zext i16 %54 to i32
  %63 = add i16 %54, -3201
  %64 = icmp ult i16 %63, -3191
  %65 = shl nuw nsw i32 %62, 3
  %66 = icmp ule i32 %65, %55
  %67 = select i1 %64, i1 true, i1 %66
  %68 = icmp ugt i16 %52, 499
  %69 = or i1 %68, %67
  br i1 %69, label %77, label %70

70:                                               ; preds = %61
  %71 = zext i16 %52 to i32
  %72 = shl nuw nsw i32 %62, 2
  %73 = udiv i32 %72, %55
  %74 = add nuw nsw i32 %73, 65535
  %75 = and i32 %74, 65535
  %76 = icmp ult i32 %75, %71
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %61, %45
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %37) #16
  br label %87

78:                                               ; preds = %70
  %79 = tail call ptr @hci_conn_params_add(ptr noundef %1, ptr noundef %40, i8 noundef zeroext %46) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %37) #16
  br label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.hci_conn_params, ptr %79, i32 0, i32 4
  store i16 %48, ptr %83, align 4
  %84 = getelementptr inbounds %struct.hci_conn_params, ptr %79, i32 0, i32 5
  store i16 %50, ptr %84, align 2
  %85 = getelementptr inbounds %struct.hci_conn_params, ptr %79, i32 0, i32 6
  store i16 %52, ptr %85, align 4
  %86 = getelementptr inbounds %struct.hci_conn_params, ptr %79, i32 0, i32 7
  store i16 %54, ptr %86, align 2
  br label %87

87:                                               ; preds = %82, %81, %77, %44
  %88 = add nuw nsw i32 %39, 1
  %89 = icmp eq i32 %88, %15
  br i1 %89, label %90, label %38

90:                                               ; preds = %87, %33
  tail call void @mutex_unlock(ptr noundef %34) #16
  %91 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %92 = load i16, ptr %91, align 8
  %93 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %92, i16 noundef zeroext 53, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  br label %94

94:                                               ; preds = %90, %28, %17, %9
  %95 = phi i32 [ %21, %17 ], [ %32, %28 ], [ %93, %90 ], [ %12, %9 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_unconf_index_list(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #16
  %5 = load ptr, ptr @hci_dev_list, align 4
  %6 = icmp eq ptr %5, @hci_dev_list
  br i1 %6, label %24, label %7

7:                                                ; preds = %20, %4
  %8 = phi ptr [ %22, %20 ], [ %5, %4 ]
  %9 = phi i16 [ %21, %20 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 206
  %15 = load volatile i32, ptr %14, align 4
  %16 = trunc i32 %15 to i16
  %17 = lshr i16 %16, 10
  %18 = and i16 %17, 1
  %19 = add i16 %18, %9
  br label %20

20:                                               ; preds = %13, %7
  %21 = phi i16 [ %9, %7 ], [ %19, %13 ]
  %22 = load ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, @hci_dev_list
  br i1 %23, label %24, label %7

24:                                               ; preds = %20, %4
  %25 = phi i16 [ 0, %4 ], [ %21, %20 ]
  %26 = zext i16 %25 to i32
  %27 = shl nuw nsw i32 %26, 1
  %28 = add nuw nsw i32 %27, 2
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 2592) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr @hci_dev_list, align 4
  %33 = icmp eq ptr %32, @hci_dev_list
  br i1 %33, label %78, label %40

34:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %35 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %39

39:                                               ; preds = %38, %34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %89

40:                                               ; preds = %74, %31
  %41 = phi ptr [ %76, %74 ], [ %32, %31 ]
  %42 = phi i16 [ %75, %74 ], [ 0, %31 ]
  %43 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 206
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  %48 = load volatile i32, ptr %43, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load volatile i32, ptr %43, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 118
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load volatile i32, ptr %43, align 4
  %66 = and i32 %65, 1024
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.hci_dev, ptr %41, i32 0, i32 4
  %70 = load i16, ptr %69, align 8
  %71 = add i16 %42, 1
  %72 = zext i16 %42 to i32
  %73 = getelementptr %struct.mgmt_rp_read_unconf_index_list, ptr %29, i32 0, i32 1, i32 %72
  store i16 %70, ptr %73, align 2
  br label %74

74:                                               ; preds = %68, %64, %60, %55, %51, %47, %40
  %75 = phi i16 [ %42, %40 ], [ %42, %47 ], [ %42, %51 ], [ %42, %55 ], [ %71, %68 ], [ %42, %64 ], [ %42, %60 ]
  %76 = load ptr, ptr %41, align 4
  %77 = icmp eq ptr %76, @hci_dev_list
  br i1 %77, label %78, label %40

78:                                               ; preds = %74, %31
  %79 = phi i16 [ 0, %31 ], [ %75, %74 ]
  store i16 %79, ptr %29, align 64
  %80 = zext i16 %79 to i32
  %81 = shl nuw nsw i32 %80, 1
  %82 = add nuw nsw i32 %81, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %83 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %87

87:                                               ; preds = %86, %78
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  %88 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 54, i8 noundef zeroext 0, ptr noundef nonnull %29, i32 noundef %82) #16
  tail call void @kfree(ptr noundef nonnull %29) #16
  br label %89

89:                                               ; preds = %87, %39
  %90 = phi i32 [ %88, %87 ], [ -12, %39 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_config_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.mgmt_rp_read_config_info, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 31
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %6, align 2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %11 = load volatile i32, ptr %10, align 4
  %12 = lshr i32 %11, 6
  %13 = and i32 %12, 1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 236
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = or i32 %13, 2
  %18 = select i1 %16, i32 %13, i32 %17
  %19 = getelementptr inbounds %struct.mgmt_rp_read_config_info, ptr %6, i32 0, i32 1
  store i32 %18, ptr %19, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5)
  %20 = load volatile i32, ptr %10, align 4
  %21 = and i32 %20, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %25 = load volatile i32, ptr %24, align 4
  %26 = lshr i32 %25, 12
  %27 = and i32 %26, 1
  %28 = xor i32 %27, 1
  br label %29

29:                                               ; preds = %23, %4
  %30 = phi i32 [ 0, %4 ], [ %28, %23 ]
  %31 = load volatile i32, ptr %10, align 4
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load volatile i32, ptr %10, align 4
  %36 = and i32 %35, 256
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #16
  %40 = call i32 @bcmp(ptr noundef dereferenceable(6) %39, ptr noundef nonnull dereferenceable(6) %5, i32 6) #16
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %30, 2
  %43 = select i1 %41, i32 %42, i32 %30
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i32 [ %30, %34 ], [ %43, %38 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  %46 = getelementptr inbounds %struct.mgmt_rp_read_config_info, ptr %6, i32 0, i32 2
  store i32 %45, ptr %46, align 2
  tail call void @mutex_unlock(ptr noundef %7) #16
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %48 = load i16, ptr %47, align 8
  %49 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %48, i16 noundef zeroext 55, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 10) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #16
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_external_config(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 56, i8 noundef zeroext 11) #16
  br label %150

23:                                               ; preds = %14, %4
  %24 = load i8, ptr %2, align 1
  %25 = icmp ult i8 %24, 2
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 56, i8 noundef zeroext 13) #16
  br label %150

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %37, i16 noundef zeroext 56, i8 noundef zeroext 12) #16
  br label %150

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %40) #16
  %41 = load i8, ptr %2, align 1
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %42, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %43) #16
  %46 = icmp eq i32 %45, 0
  br label %50

47:                                               ; preds = %39
  %48 = tail call i32 @_test_and_clear_bit(i32 noundef 12, ptr noundef %43) #16
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ %46, %44 ], [ %49, %47 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #16
  %52 = load volatile i32, ptr %31, align 4
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %57 = load volatile i32, ptr %56, align 4
  %58 = lshr i32 %57, 12
  %59 = and i32 %58, 1
  %60 = xor i32 %59, 1
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i32 [ 0, %50 ], [ %60, %55 ]
  %63 = load volatile i32, ptr %31, align 4
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load volatile i32, ptr %31, align 4
  %68 = and i32 %67, 256
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66, %61
  %71 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false) #16
  %72 = call i32 @bcmp(ptr noundef dereferenceable(6) %71, ptr noundef nonnull dereferenceable(6) %8, i32 6) #16
  %73 = icmp eq i32 %72, 0
  %74 = or i32 %62, 2
  %75 = select i1 %73, i32 %74, i32 %62
  br label %76

76:                                               ; preds = %70, %66
  %77 = phi i32 [ %62, %66 ], [ %75, %70 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #16
  store i32 %77, ptr %9, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %79 = load i16, ptr %78, align 8
  %80 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %79, i16 noundef zeroext 56, i8 noundef zeroext 0, ptr noundef nonnull %9, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  %81 = icmp slt i32 %80, 0
  %82 = xor i1 %51, true
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %148, label %84

84:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #16
  %85 = load volatile i32, ptr %31, align 4
  %86 = and i32 %85, 64
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %90 = load volatile i32, ptr %89, align 4
  %91 = lshr i32 %90, 12
  %92 = and i32 %91, 1
  %93 = xor i32 %92, 1
  br label %94

94:                                               ; preds = %88, %84
  %95 = phi i32 [ 0, %84 ], [ %93, %88 ]
  %96 = load volatile i32, ptr %31, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load volatile i32, ptr %31, align 4
  %101 = and i32 %100, 256
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %99, %94
  %104 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false) #16
  %105 = call i32 @bcmp(ptr noundef dereferenceable(6) %104, ptr noundef nonnull dereferenceable(6) %6, i32 6) #16
  %106 = icmp eq i32 %105, 0
  %107 = or i32 %95, 2
  %108 = select i1 %106, i32 %107, i32 %95
  br label %109

109:                                              ; preds = %103, %99
  %110 = phi i32 [ %95, %99 ], [ %108, %103 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #16
  store i32 %110, ptr %7, align 4
  %111 = call i32 @mgmt_send_event(i16 noundef zeroext 31, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 4, i32 noundef 5, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %112 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %113 = load volatile i32, ptr %112, align 4
  %114 = lshr i32 %113, 10
  %115 = and i32 %114, 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5)
  %116 = load volatile i32, ptr %31, align 4
  %117 = and i32 %116, 64
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %109
  %120 = load volatile i32, ptr %112, align 4
  %121 = and i32 %120, 4096
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %136, label %123

123:                                              ; preds = %119, %109
  %124 = load volatile i32, ptr %31, align 4
  %125 = and i32 %124, 128
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load volatile i32, ptr %31, align 4
  %129 = and i32 %128, 256
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %123
  %132 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #16
  %133 = call i32 @bcmp(ptr noundef dereferenceable(6) %132, ptr noundef nonnull dereferenceable(6) %5, i32 6) #16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131, %127
  br label %136

136:                                              ; preds = %135, %131, %119
  %137 = phi i32 [ 1, %135 ], [ 0, %119 ], [ 0, %131 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  %138 = icmp eq i32 %115, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  call void @mgmt_index_removed(ptr noundef %1)
  %140 = call i32 @_test_and_change_bit(i32 noundef 10, ptr noundef %112) #16
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  call void @_set_bit(i32 noundef 1, ptr noundef %112) #16
  call void @_set_bit(i32 noundef 2, ptr noundef %112) #16
  %143 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 140
  %146 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %144, ptr noundef %145) #16
  br label %148

147:                                              ; preds = %139
  call void @_set_bit(i32 noundef 8, ptr noundef %10) #16
  call void @mgmt_index_added(ptr noundef %1)
  br label %148

148:                                              ; preds = %147, %142, %136, %76
  %149 = phi i32 [ %80, %76 ], [ %111, %142 ], [ %111, %147 ], [ %111, %136 ]
  call void @mutex_unlock(ptr noundef %40) #16
  br label %150

150:                                              ; preds = %148, %35, %26, %19
  %151 = phi i32 [ %29, %26 ], [ %149, %148 ], [ %38, %35 ], [ %22, %19 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_public_address(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.bdaddr_t, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 57, i8 noundef zeroext 11) #16
  br label %134

24:                                               ; preds = %15, %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %10, i8 0, i64 6, i1 false)
  %25 = call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %10, i32 6)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 57, i8 noundef zeroext 13) #16
  br label %134

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 236
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %37, i16 noundef zeroext 57, i8 noundef zeroext 12) #16
  br label %134

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %40) #16
  %41 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 9
  %42 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef dereferenceable(6) %2, i32 6)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %41, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #16
  %43 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %49 = load volatile i32, ptr %48, align 4
  %50 = lshr i32 %49, 12
  %51 = and i32 %50, 1
  %52 = xor i32 %51, 1
  br label %53

53:                                               ; preds = %47, %39
  %54 = phi i32 [ 0, %39 ], [ %52, %47 ]
  %55 = load volatile i32, ptr %43, align 4
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load volatile i32, ptr %43, align 4
  %60 = and i32 %59, 256
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58, %53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false) #16
  %63 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %8, i32 6) #16
  %64 = icmp eq i32 %63, 0
  %65 = or i32 %54, 2
  %66 = select i1 %64, i32 %65, i32 %54
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %54, %58 ], [ %66, %62 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #16
  store i32 %68, ptr %9, align 4
  %69 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %70 = load i16, ptr %69, align 8
  %71 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %70, i16 noundef zeroext 57, i8 noundef zeroext 0, ptr noundef nonnull %9, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  %72 = icmp slt i32 %71, 0
  %73 = icmp eq i32 %42, 0
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %132, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %106, label %80

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #16
  %81 = load volatile i32, ptr %43, align 4
  %82 = and i32 %81, 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load volatile i32, ptr %76, align 4
  %86 = lshr i32 %85, 12
  %87 = and i32 %86, 1
  %88 = xor i32 %87, 1
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ 0, %80 ], [ %88, %84 ]
  %91 = load volatile i32, ptr %43, align 4
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load volatile i32, ptr %43, align 4
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94, %89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false) #16
  %99 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %6, i32 6) #16
  %100 = icmp eq i32 %99, 0
  %101 = or i32 %90, 2
  %102 = select i1 %100, i32 %101, i32 %90
  br label %103

103:                                              ; preds = %98, %94
  %104 = phi i32 [ %90, %94 ], [ %102, %98 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #16
  store i32 %104, ptr %7, align 4
  %105 = call i32 @mgmt_send_event(i16 noundef zeroext 31, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %7, i16 noundef zeroext 4, i32 noundef 5, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %106

106:                                              ; preds = %103, %75
  %107 = phi i32 [ %105, %103 ], [ %71, %75 ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5)
  %108 = load volatile i32, ptr %43, align 4
  %109 = and i32 %108, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load volatile i32, ptr %76, align 4
  %113 = and i32 %112, 4096
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111, %106
  %116 = load volatile i32, ptr %43, align 4
  %117 = and i32 %116, 128
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load volatile i32, ptr %43, align 4
  %121 = and i32 %120, 256
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119, %115
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #16
  %124 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %5, i32 6) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %111
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  br label %132

127:                                              ; preds = %123, %119
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  call void @mgmt_index_removed(ptr noundef %1)
  call void @_clear_bit(i32 noundef 10, ptr noundef %76) #16
  call void @_set_bit(i32 noundef 1, ptr noundef %76) #16
  call void @_set_bit(i32 noundef 2, ptr noundef %76) #16
  %128 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 139
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 140
  %131 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %129, ptr noundef %130) #16
  br label %132

132:                                              ; preds = %127, %126, %67
  %133 = phi i32 [ %71, %67 ], [ %107, %127 ], [ %107, %126 ]
  call void @mutex_unlock(ptr noundef %40) #16
  br label %134

134:                                              ; preds = %132, %35, %27, %20
  %135 = phi i32 [ %133, %132 ], [ %38, %35 ], [ %30, %27 ], [ %23, %20 ]
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_service_discovery(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11, %4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext 58, i8 noundef zeroext 15, ptr noundef %2, i32 noundef 1) #16
  br label %100

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %31, i16 noundef zeroext 58, i8 noundef zeroext 10, ptr noundef %2, i32 noundef 1) #16
  br label %100

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 172
  %35 = load i8, ptr %34, align 4, !range !16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %39, i16 noundef zeroext 58, i8 noundef zeroext 10, ptr noundef %2, i32 noundef 1) #16
  br label %100

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.mgmt_cp_start_service_discovery, ptr %2, i32 0, i32 2
  %43 = load i16, ptr %42, align 1
  %44 = zext i16 %43 to i32
  %45 = icmp ugt i16 %43, 4095
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %47, i32 noundef %44) #16
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext 58, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 1) #16
  br label %100

51:                                               ; preds = %41
  %52 = shl nuw nsw i32 %44, 4
  %53 = and i32 %52, 65520
  %54 = or i32 %53, 4
  %55 = zext i16 %3 to i32
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %58, i32 noundef %54, i32 noundef %55) #16
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %60, i16 noundef zeroext 58, i8 noundef zeroext 13, ptr noundef %2, i32 noundef 1) #16
  br label %100

62:                                               ; preds = %51
  %63 = load i8, ptr %2, align 1
  %64 = call fastcc zeroext i1 @discovery_type_is_valid(ptr noundef %1, i8 noundef zeroext %63, ptr noundef nonnull %5)
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %67 = load i16, ptr %66, align 8
  %68 = load i8, ptr %5, align 1
  %69 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %67, i16 noundef zeroext 58, i8 noundef zeroext %68, ptr noundef %2, i32 noundef 1) #16
  br label %100

70:                                               ; preds = %62
  %71 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 58, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %100, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 13
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 12
  store i8 1, ptr %75, align 8
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 15
  store i8 127, ptr %76, align 1
  %77 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 16
  store i16 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 17
  %79 = load ptr, ptr %78, align 8
  tail call void @kfree(ptr noundef %79) #16
  store ptr null, ptr %78, align 8
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 18
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 19
  store i32 0, ptr %81, align 8
  store i8 1, ptr %74, align 1
  %82 = load i8, ptr %2, align 1
  %83 = zext i8 %82 to i32
  store i32 %83, ptr %21, align 8
  %84 = getelementptr inbounds %struct.mgmt_cp_start_service_discovery, ptr %2, i32 0, i32 1
  %85 = load i8, ptr %84, align 1
  store i8 %85, ptr %76, align 1
  store i16 %43, ptr %77, align 4
  %86 = icmp eq i16 %43, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.mgmt_cp_start_service_discovery, ptr %2, i32 0, i32 3
  %89 = tail call ptr @kmemdup(ptr noundef %88, i32 noundef %52, i32 noundef 3264) #16
  store ptr %89, ptr %78, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %93 = load i16, ptr %92, align 8
  %94 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %93, i16 noundef zeroext 58, i8 noundef zeroext 3, ptr noundef %2, i32 noundef 1) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %71) #16
  br label %100

95:                                               ; preds = %87, %73
  %96 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @start_discovery_sync, ptr noundef nonnull %71, ptr noundef nonnull @start_discovery_complete) #16
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void @mgmt_pending_remove(ptr noundef nonnull %71) #16
  br label %100

99:                                               ; preds = %95
  tail call void @hci_discovery_set_state(ptr noundef %1, i32 noundef 1) #16
  br label %100

100:                                              ; preds = %99, %98, %91, %70, %65, %57, %46, %37, %29, %16
  %101 = phi i32 [ %19, %16 ], [ %32, %29 ], [ %40, %37 ], [ %50, %46 ], [ %61, %57 ], [ %96, %98 ], [ %96, %99 ], [ %94, %91 ], [ %69, %65 ], [ -12, %70 ]
  tail call void @mutex_unlock(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_local_oob_ext_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca %struct.bdaddr_t, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i8, ptr %2, align 1
  switch i8 %20, label %44 [
    i8 1, label %21
    i8 6, label %33
  ]

21:                                               ; preds = %19
  %22 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26, %21
  %32 = phi i8 [ 12, %21 ], [ 11, %26 ]
  br label %44

33:                                               ; preds = %19
  %34 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 64
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load volatile i32, ptr %15, align 4
  %40 = and i32 %39, 8388608
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %33
  %43 = phi i8 [ 12, %33 ], [ 11, %38 ]
  br label %44

44:                                               ; preds = %42, %38, %31, %26, %19, %14, %4
  %45 = phi i16 [ 0, %19 ], [ 0, %14 ], [ 0, %4 ], [ 0, %31 ], [ 5, %26 ], [ 0, %42 ], [ 51, %38 ]
  %46 = phi i8 [ 13, %19 ], [ 15, %14 ], [ 15, %4 ], [ %32, %31 ], [ 0, %26 ], [ %43, %42 ], [ 0, %38 ]
  %47 = add nuw nsw i16 %45, 3
  %48 = zext i16 %47 to i32
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %48, i32 noundef 2592) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %194, label %51

51:                                               ; preds = %44
  %52 = icmp eq i8 %46, 0
  br i1 %52, label %53, label %176

53:                                               ; preds = %51
  %54 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %55 = load i8, ptr %54, align 2
  %56 = and i8 %55, 8
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %176, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %59) #16
  %60 = load i8, ptr %2, align 1
  switch i8 %60, label %174 [
    i8 1, label %61
    i8 6, label %80
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, 32768
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 59, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 1) #16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @read_local_oob_data_sync, ptr noundef nonnull %67, ptr noundef nonnull @read_local_oob_ext_data_complete) #16
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  tail call void @mgmt_pending_remove(ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %72, %66
  tail call void @mutex_unlock(ptr noundef %59) #16
  br label %176

74:                                               ; preds = %69
  tail call void @mutex_unlock(ptr noundef %59) #16
  br label %192

75:                                               ; preds = %61
  %76 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 0, i32 2
  %77 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  store i8 4, ptr %76, align 1
  %78 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 1, i32 1
  store i8 13, ptr %78, align 4
  %79 = getelementptr i8, ptr %76, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %79, ptr noundef align 1 dereferenceable(3) %77, i32 3, i1 false) #16
  br label %174

80:                                               ; preds = %58
  %81 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %82, 65536
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = call i32 @smp_generate_oob(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  call void @mutex_unlock(ptr noundef %59) #16
  br label %176

89:                                               ; preds = %85, %80
  %90 = load volatile i32, ptr %81, align 4
  %91 = and i32 %90, 262144
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  call void @mutex_unlock(ptr noundef %59) #16
  br label %176

94:                                               ; preds = %89
  %95 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %101 = call i32 @bcmp(ptr noundef dereferenceable(6) %100, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %99
  %104 = load volatile i32, ptr %95, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %9, i8 0, i64 6, i1 false)
  %109 = call i32 @bcmp(ptr noundef dereferenceable(6) %108, ptr noundef nonnull dereferenceable(6) %9, i32 6)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107, %99, %94
  %112 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  br label %113

113:                                              ; preds = %111, %107, %103
  %114 = phi ptr [ %112, %111 ], [ %100, %107 ], [ %100, %103 ]
  %115 = phi i8 [ 1, %111 ], [ 0, %107 ], [ 0, %103 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 4 dereferenceable(6) %114, i32 6, i1 false)
  %116 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 0, i32 2
  store i8 8, ptr %116, align 1
  %117 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 1, i32 1
  store i8 27, ptr %117, align 4
  %118 = getelementptr i8, ptr %116, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %118, ptr noundef nonnull align 1 dereferenceable(6) %5, i32 6, i1 false)
  %119 = getelementptr i8, ptr %116, i32 8
  store i8 %115, ptr %119, align 1
  %120 = load volatile i32, ptr %81, align 4
  %121 = and i32 %120, 16777216
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i8 1, i8 2
  %124 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 4
  store i8 2, ptr %124, align 4
  %125 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 4, i32 1
  store i8 28, ptr %125, align 1
  %126 = getelementptr i8, ptr %116, i32 11
  store i8 %123, ptr %126, align 2
  %127 = load volatile i32, ptr %81, align 4
  %128 = and i32 %127, 65536
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %113
  %131 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 5
  store i8 17, ptr %131, align 1
  %132 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 5, i32 1
  store i8 34, ptr %132, align 16
  %133 = getelementptr i8, ptr %116, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %133, ptr noundef nonnull align 1 dereferenceable(16) %6, i32 16, i1 false) #16
  %134 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 11
  store i8 17, ptr %134, align 1
  %135 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 11, i32 1
  store i8 35, ptr %135, align 2
  %136 = getelementptr i8, ptr %116, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %136, ptr noundef nonnull align 1 dereferenceable(16) %7, i32 16, i1 false) #16
  br label %137

137:                                              ; preds = %130, %113
  %138 = phi i16 [ 48, %130 ], [ 12, %113 ]
  %139 = call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %1) #16
  %140 = icmp eq ptr %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %139, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = load i8, ptr %143, align 1
  %145 = icmp eq i8 %144, 2
  %146 = zext i1 %145 to i8
  %147 = icmp eq i8 %144, 1
  %148 = select i1 %147, i8 2, i8 %146
  br label %158

149:                                              ; preds = %137
  %150 = load volatile i32, ptr %81, align 4
  %151 = and i32 %150, 268435456
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load volatile i32, ptr %81, align 4
  %155 = lshr i32 %154, 26
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 2
  br label %158

158:                                              ; preds = %153, %149, %141
  %159 = phi i8 [ 1, %149 ], [ %148, %141 ], [ %157, %153 ]
  %160 = load volatile i32, ptr %95, align 4
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 0
  %163 = or i8 %159, 4
  %164 = select i1 %162, i8 %163, i8 %159
  %165 = or i16 %138, 1
  %166 = zext i16 %138 to i32
  %167 = getelementptr i8, ptr %116, i32 %166
  store i8 2, ptr %167, align 1
  %168 = or i16 %138, 2
  %169 = zext i16 %165 to i32
  %170 = getelementptr i8, ptr %116, i32 %169
  store i8 1, ptr %170, align 4
  %171 = zext i16 %168 to i32
  %172 = getelementptr i8, ptr %116, i32 %171
  store i8 %164, ptr %172, align 1
  %173 = or i16 %138, 3
  br label %174

174:                                              ; preds = %158, %75, %58
  %175 = phi i16 [ 0, %58 ], [ %173, %158 ], [ 5, %75 ]
  call void @mutex_unlock(ptr noundef %59) #16
  call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 9) #16
  br label %176

176:                                              ; preds = %174, %93, %88, %73, %53, %51
  %177 = phi i16 [ %175, %174 ], [ 0, %88 ], [ 0, %93 ], [ 0, %73 ], [ %45, %51 ], [ 0, %53 ]
  %178 = phi i8 [ 0, %174 ], [ 3, %88 ], [ 11, %93 ], [ 3, %73 ], [ %46, %51 ], [ 12, %53 ]
  %179 = load i8, ptr %2, align 1
  store i8 %179, ptr %49, align 64
  %180 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, ptr %49, i32 0, i32 1
  store i16 %177, ptr %180, align 1
  %181 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %182 = load i16, ptr %181, align 8
  %183 = zext i16 %177 to i32
  %184 = add nuw nsw i32 %183, 3
  %185 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %182, i16 noundef zeroext 59, i8 noundef zeroext %178, ptr noundef nonnull %49, i32 noundef %184) #16
  %186 = icmp slt i32 %185, 0
  %187 = icmp ne i8 %178, 0
  %188 = or i1 %187, %186
  br i1 %188, label %192, label %189

189:                                              ; preds = %176
  %190 = trunc i32 %184 to i16
  %191 = call i32 @mgmt_send_event(i16 noundef zeroext 34, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %49, i16 noundef zeroext %190, i32 noundef 9, ptr noundef %0) #16
  br label %192

192:                                              ; preds = %189, %176, %74
  %193 = phi i32 [ %185, %176 ], [ %191, %189 ], [ 0, %74 ]
  call void @kfree(ptr noundef nonnull %49) #16
  br label %194

194:                                              ; preds = %192, %44
  %195 = phi i32 [ %193, %192 ], [ -12, %44 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  ret i32 %195
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_ext_index_list(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #16
  %5 = load ptr, ptr @hci_dev_list, align 4
  %6 = icmp eq ptr %5, @hci_dev_list
  br i1 %6, label %21, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %15, %7 ], [ %5, %4 ]
  %9 = phi i16 [ %14, %7 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 2
  %13 = zext i1 %12 to i16
  %14 = add i16 %9, %13
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, @hci_dev_list
  br i1 %16, label %17, label %7

17:                                               ; preds = %7
  %18 = zext i16 %14 to i32
  %19 = shl nuw nsw i32 %18, 2
  %20 = or i32 %19, 2
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi i32 [ 2, %4 ], [ %20, %17 ]
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 2592) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @hci_dev_list, align 4
  %27 = icmp eq ptr %26, @hci_dev_list
  br i1 %27, label %81, label %34

28:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %29 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %33

33:                                               ; preds = %32, %28
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  br label %92

34:                                               ; preds = %77, %25
  %35 = phi ptr [ %79, %77 ], [ %26, %25 ]
  %36 = phi i16 [ %78, %77 ], [ 0, %25 ]
  %37 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 206
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load volatile i32, ptr %37, align 4
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load volatile i32, ptr %37, align 4
  %47 = and i32 %46, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 118
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 6
  %56 = load i8, ptr %55, align 1
  switch i8 %56, label %77 [
    i8 0, label %57
    i8 1, label %65
  ]

57:                                               ; preds = %54
  %58 = load volatile i32, ptr %37, align 4
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  %61 = zext i16 %36 to i32
  %62 = getelementptr %struct.mgmt_rp_read_ext_index_list, ptr %23, i32 0, i32 1, i32 %61, i32 1
  br i1 %60, label %64, label %63

63:                                               ; preds = %57
  store i8 1, ptr %62, align 4
  br label %68

64:                                               ; preds = %57
  store i8 0, ptr %62, align 4
  br label %68

65:                                               ; preds = %54
  %66 = zext i16 %36 to i32
  %67 = getelementptr %struct.mgmt_rp_read_ext_index_list, ptr %23, i32 0, i32 1, i32 %66, i32 1
  store i8 2, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %64, %63
  %69 = phi i32 [ %61, %63 ], [ %61, %64 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 5
  %71 = load i8, ptr %70, align 2
  %72 = getelementptr %struct.mgmt_rp_read_ext_index_list, ptr %23, i32 0, i32 1, i32 %69
  %73 = getelementptr %struct.mgmt_rp_read_ext_index_list, ptr %23, i32 0, i32 1, i32 %69, i32 2
  store i8 %71, ptr %73, align 1
  %74 = getelementptr inbounds %struct.hci_dev, ptr %35, i32 0, i32 4
  %75 = load i16, ptr %74, align 8
  %76 = add i16 %36, 1
  store i16 %75, ptr %72, align 2
  br label %77

77:                                               ; preds = %68, %54, %49, %45, %41, %34
  %78 = phi i16 [ %36, %34 ], [ %36, %41 ], [ %36, %45 ], [ %36, %49 ], [ %76, %68 ], [ %36, %54 ]
  %79 = load ptr, ptr %35, align 4
  %80 = icmp eq ptr %79, @hci_dev_list
  br i1 %80, label %81, label %34

81:                                               ; preds = %77, %25
  %82 = phi i16 [ 0, %25 ], [ %78, %77 ]
  store i16 %82, ptr %23, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !10
  %83 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #16, !srcloc !18
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !20
  br label %87

87:                                               ; preds = %86, %81
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !21
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 3) #16
  tail call void @hci_sock_clear_flag(ptr noundef %0, i32 noundef 1) #16
  tail call void @hci_sock_clear_flag(ptr noundef %0, i32 noundef 2) #16
  %88 = zext i16 %82 to i32
  %89 = shl nuw nsw i32 %88, 2
  %90 = or i32 %89, 2
  %91 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 60, i8 noundef zeroext 0, ptr noundef nonnull %23, i32 noundef %90) #16
  tail call void @kfree(ptr noundef nonnull %23) #16
  br label %92

92:                                               ; preds = %87, %33
  %93 = phi i32 [ %91, %87 ], [ -12, %33 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_adv_features(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 61, i8 noundef zeroext 11) #16
  br label %70

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #16
  %15 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 214
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 8
  %18 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 2592) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  tail call void @mutex_unlock(ptr noundef %14) #16
  br label %70

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 208
  %23 = load i8, ptr %22, align 8
  %24 = icmp eq i8 %23, 127
  %25 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 16
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %24, i1 %28, i1 false
  %30 = select i1 %29, i32 127087, i32 127103
  %31 = zext i8 %26 to i32
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %21
  %35 = and i32 %31, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 3200, i32 3456
  %38 = or i32 %30, %37
  %39 = and i8 %26, 8
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 6
  %42 = or i32 %38, %41
  br label %43

43:                                               ; preds = %34, %21
  %44 = phi i32 [ %30, %21 ], [ %42, %34 ]
  store i32 %44, ptr %18, align 64
  %45 = getelementptr inbounds %struct.mgmt_rp_read_adv_features, ptr %18, i32 0, i32 1
  store i8 31, ptr %45, align 4
  %46 = getelementptr inbounds %struct.mgmt_rp_read_adv_features, ptr %18, i32 0, i32 2
  store i8 31, ptr %46, align 1
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 25
  %48 = load i8, ptr %47, align 8
  %49 = getelementptr inbounds %struct.mgmt_rp_read_adv_features, ptr %18, i32 0, i32 3
  store i8 %48, ptr %49, align 2
  %50 = load i32, ptr %15, align 4
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.mgmt_rp_read_adv_features, ptr %18, i32 0, i32 4
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 213
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %66, label %56

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.mgmt_rp_read_adv_features, ptr %18, i32 0, i32 5
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi ptr [ %64, %58 ], [ %54, %56 ]
  %60 = phi ptr [ %63, %58 ], [ %57, %56 ]
  %61 = getelementptr inbounds %struct.adv_info, ptr %59, i32 0, i32 3
  %62 = load i8, ptr %61, align 2
  store i8 %62, ptr %60, align 1
  %63 = getelementptr i8, ptr %60, i32 1
  %64 = load ptr, ptr %59, align 4
  %65 = icmp eq ptr %64, %53
  br i1 %65, label %66, label %58

66:                                               ; preds = %58, %43
  tail call void @mutex_unlock(ptr noundef %14) #16
  %67 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %68, i16 noundef zeroext 61, i8 noundef zeroext 0, ptr noundef nonnull %18, i32 noundef %17) #16
  tail call void @kfree(ptr noundef nonnull %18) #16
  br label %70

70:                                               ; preds = %66, %20, %9
  %71 = phi i32 [ %69, %66 ], [ -12, %20 ], [ %12, %9 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_advertising(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_advertising_added, align 1
  %6 = alloca %struct.mgmt_rp_add_advertising, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 214
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8388608
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13, %4
  %19 = phi i8 [ 12, %4 ], [ 11, %13 ]
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %21 = load i16, ptr %20, align 8
  %22 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %21, i16 noundef zeroext 62, i8 noundef zeroext %19) #16
  br label %207

23:                                               ; preds = %13
  %24 = load i8, ptr %2, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 25
  %28 = load i8, ptr %27, align 8
  %29 = icmp ugt i8 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %32 = load i16, ptr %31, align 8
  %33 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %32, i16 noundef zeroext 62, i8 noundef zeroext 13) #16
  br label %207

34:                                               ; preds = %26
  %35 = zext i16 %3 to i32
  %36 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %38, 11
  %40 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %39, %42
  %44 = icmp eq i32 %43, %35
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %47 = load i16, ptr %46, align 8
  %48 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %47, i16 noundef zeroext 62, i8 noundef zeroext 13) #16
  br label %207

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 1
  %51 = load i32, ptr %50, align 1
  %52 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 3
  %53 = load i16, ptr %52, align 1
  %54 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 2
  %55 = load i16, ptr %54, align 1
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 208
  %57 = load i8, ptr %56, align 8
  %58 = icmp eq i8 %57, 127
  %59 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %60 = load i8, ptr %59, align 1
  %61 = and i8 %60, 16
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %58, i1 %62, i1 false
  %64 = select i1 %63, i32 127087, i32 127103
  %65 = zext i8 %60 to i32
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %49
  %69 = and i32 %65, 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 3200, i32 3456
  %72 = or i32 %64, %71
  %73 = and i8 %60, 8
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 6
  %76 = or i32 %72, %75
  br label %77

77:                                               ; preds = %68, %49
  %78 = phi i32 [ %64, %49 ], [ %76, %68 ]
  %79 = xor i32 %78, -1
  %80 = and i32 %51, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = and i32 %51, 896
  %84 = icmp eq i32 %83, 0
  %85 = tail call i32 @llvm.ctpop.i32(i32 %83) #16, !range !25
  %86 = icmp ult i32 %85, 2
  %87 = or i1 %84, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %82, %77
  %89 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %90 = load i16, ptr %89, align 8
  %91 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %90, i16 noundef zeroext 62, i8 noundef zeroext 13) #16
  br label %207

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %93) #16
  %94 = icmp eq i16 %53, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load volatile i32, ptr %14, align 4
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100, %95
  %105 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %106 = load i16, ptr %105, align 8
  %107 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %106, i16 noundef zeroext 62, i8 noundef zeroext 11) #16
  br label %205

108:                                              ; preds = %100, %92
  %109 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %113 = load i16, ptr %112, align 8
  %114 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %113, i16 noundef zeroext 62, i8 noundef zeroext 10) #16
  br label %205

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.mgmt_cp_add_advertising, ptr %2, i32 0, i32 6
  %117 = load i8, ptr %36, align 1
  %118 = tail call fastcc zeroext i1 @tlv_data_is_valid(ptr noundef %1, i32 noundef %51, ptr noundef %116, i8 noundef zeroext %117, i1 noundef zeroext true)
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i8, ptr %36, align 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr i8, ptr %116, i32 %121
  %123 = load i8, ptr %40, align 1
  %124 = tail call fastcc zeroext i1 @tlv_data_is_valid(ptr noundef %1, i32 noundef %51, ptr noundef %122, i8 noundef zeroext %123, i1 noundef zeroext false)
  br i1 %124, label %129, label %125

125:                                              ; preds = %119, %115
  %126 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %127 = load i16, ptr %126, align 8
  %128 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %127, i16 noundef zeroext 62, i8 noundef zeroext 13) #16
  br label %205

129:                                              ; preds = %119
  %130 = load i8, ptr %2, align 1
  %131 = load i8, ptr %36, align 1
  %132 = zext i8 %131 to i16
  %133 = load i8, ptr %40, align 1
  %134 = zext i8 %133 to i16
  %135 = zext i8 %131 to i32
  %136 = getelementptr i8, ptr %116, i32 %135
  %137 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %138 = load i16, ptr %137, align 4
  %139 = zext i16 %138 to i32
  %140 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %141 = load i16, ptr %140, align 2
  %142 = zext i16 %141 to i32
  %143 = tail call i32 @hci_add_adv_instance(ptr noundef %1, i8 noundef zeroext %130, i32 noundef %51, i16 noundef zeroext %132, ptr noundef %116, i16 noundef zeroext %134, ptr noundef %136, i16 noundef zeroext %53, i16 noundef zeroext %55, i8 noundef signext 127, i32 noundef %139, i32 noundef %142) #16
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %129
  %146 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %147 = load i16, ptr %146, align 8
  %148 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %147, i16 noundef zeroext 62, i8 noundef zeroext 3) #16
  br label %205

149:                                              ; preds = %129
  %150 = load i32, ptr %7, align 4
  %151 = icmp ugt i32 %150, %8
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 %153, ptr %5, align 1
  %154 = call i32 @mgmt_send_event(i16 noundef zeroext 35, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %155

155:                                              ; preds = %152, %149
  %156 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  %157 = load i8, ptr %156, align 8
  %158 = load i8, ptr %2, align 1
  %159 = icmp eq i8 %157, %158
  %160 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 216
  %161 = load i16, ptr %160, align 2
  %162 = icmp eq i16 %161, 0
  br i1 %159, label %163, label %175

163:                                              ; preds = %155
  br i1 %162, label %168, label %164

164:                                              ; preds = %163
  store i16 0, ptr %160, align 2
  %165 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 217
  %166 = call zeroext i1 @cancel_delayed_work(ptr noundef %165) #16
  %167 = load i8, ptr %2, align 1
  br label %168

168:                                              ; preds = %164, %163
  %169 = phi i8 [ %157, %163 ], [ %167, %164 ]
  %170 = call ptr @hci_get_next_instance(ptr noundef %1, i8 noundef zeroext %169) #16
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.adv_info, ptr %170, i32 0, i32 3
  %174 = load i8, ptr %173, align 2
  br label %177

175:                                              ; preds = %155
  %176 = select i1 %162, i8 %158, i8 0
  br label %177

177:                                              ; preds = %175, %172, %168
  %178 = phi i8 [ %174, %172 ], [ 0, %168 ], [ %176, %175 ]
  %179 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %180 = load volatile i32, ptr %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %193, label %183

183:                                              ; preds = %177
  %184 = load volatile i32, ptr %14, align 4
  %185 = and i32 %184, 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load volatile i32, ptr %14, align 4
  %189 = and i32 %188, 16777216
  %190 = icmp eq i32 %189, 0
  %191 = icmp ne i8 %178, 0
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %198, label %193

193:                                              ; preds = %187, %183, %177
  %194 = load i8, ptr %2, align 1
  store i8 %194, ptr %6, align 1
  %195 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %196 = load i16, ptr %195, align 8
  %197 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %196, i16 noundef zeroext 62, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 1) #16
  br label %205

198:                                              ; preds = %187
  %199 = call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 62, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %198
  store i8 %178, ptr %2, align 1
  %202 = call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @add_advertising_sync, ptr noundef nonnull %199, ptr noundef nonnull @add_advertising_complete) #16
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  call void @mgmt_pending_free(ptr noundef nonnull %199) #16
  br label %205

205:                                              ; preds = %204, %201, %198, %193, %145, %125, %111, %104
  %206 = phi i32 [ %107, %104 ], [ %114, %111 ], [ %148, %145 ], [ %197, %193 ], [ %202, %204 ], [ %202, %201 ], [ %128, %125 ], [ -12, %198 ]
  call void @mutex_unlock(ptr noundef %93) #16
  br label %207

207:                                              ; preds = %205, %88, %45, %30, %18
  %208 = phi i32 [ %22, %18 ], [ %33, %30 ], [ %48, %45 ], [ %206, %205 ], [ %91, %88 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  ret i32 %208
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_advertising(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = load i8, ptr %2, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %6) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 63, i8 noundef zeroext 13) #16
  br label %37

15:                                               ; preds = %8, %4
  %16 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 63, i8 noundef zeroext 10) #16
  br label %37

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 213
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 63, i8 noundef zeroext 13) #16
  br label %37

30:                                               ; preds = %22
  %31 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 63, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @remove_advertising_sync, ptr noundef nonnull %31, ptr noundef nonnull @remove_advertising_complete) #16
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @mgmt_pending_free(ptr noundef nonnull %31) #16
  br label %37

37:                                               ; preds = %36, %33, %30, %26, %18, %11
  %38 = phi i32 [ %21, %18 ], [ %29, %26 ], [ %34, %36 ], [ %34, %33 ], [ %14, %11 ], [ -12, %30 ]
  tail call void @mutex_unlock(ptr noundef %5) #16
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_adv_size_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [13 x i8], align 1
  %6 = alloca %struct.mgmt_rp_get_adv_size_info, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #16
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 64, i8 noundef zeroext 11) #16
  br label %84

15:                                               ; preds = %4
  %16 = load i8, ptr %2, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 25
  %20 = load i8, ptr %19, align 8
  %21 = icmp ugt i8 %16, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %24, i16 noundef zeroext 64, i8 noundef zeroext 13) #16
  br label %84

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.mgmt_cp_get_adv_size_info, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 1
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 208
  %30 = load i8, ptr %29, align 8
  %31 = icmp eq i8 %30, 127
  %32 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %31, i1 %35, i1 false
  %37 = select i1 %36, i32 127087, i32 127103
  %38 = zext i8 %33 to i32
  %39 = and i32 %38, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %26
  %42 = and i32 %38, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 3200, i32 3456
  %45 = or i32 %37, %44
  %46 = and i8 %33, 8
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 6
  %49 = or i32 %45, %48
  br label %50

50:                                               ; preds = %41, %26
  %51 = phi i32 [ %37, %26 ], [ %49, %41 ]
  %52 = xor i32 %51, -1
  %53 = and i32 %28, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %57 = load i16, ptr %56, align 8
  %58 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %57, i16 noundef zeroext 64, i8 noundef zeroext 13) #16
  br label %84

59:                                               ; preds = %50
  store i8 %16, ptr %6, align 1
  %60 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, ptr %6, i32 0, i32 1
  store i32 %28, ptr %60, align 1
  %61 = and i32 %28, 14
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i8 31, i8 28
  %64 = and i32 %28, 16
  %65 = icmp eq i32 %64, 0
  %66 = add nsw i8 %63, -3
  %67 = select i1 %65, i8 %63, i8 %66
  %68 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, ptr %6, i32 0, i32 2
  store i8 %67, ptr %68, align 1
  %69 = and i32 %28, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false) #16, !annotation !8
  %72 = call zeroext i8 @eir_append_local_name(ptr noundef %1, ptr noundef nonnull %5, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  %73 = sub i8 31, %72
  br label %74

74:                                               ; preds = %71, %59
  %75 = phi i8 [ %73, %71 ], [ 31, %59 ]
  %76 = and i32 %28, 32
  %77 = icmp eq i32 %76, 0
  %78 = add i8 %75, -4
  %79 = select i1 %77, i8 %75, i8 %78
  %80 = getelementptr inbounds %struct.mgmt_rp_get_adv_size_info, ptr %6, i32 0, i32 3
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %82 = load i16, ptr %81, align 8
  %83 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %82, i16 noundef zeroext 64, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 7) #16
  br label %84

84:                                               ; preds = %74, %55, %22, %11
  %85 = phi i32 [ %25, %22 ], [ %58, %55 ], [ %83, %74 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #16
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_limited_discovery(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call fastcc i32 @start_discovery_internal(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 65, ptr noundef %2, i16 noundef zeroext %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_ext_controller_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [512 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 7
  %8 = getelementptr inbounds i8, ptr %5, i32 19
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(493) %8, i8 0, i64 493, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false) #16
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 28
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 1
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 31
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 2
  store i16 %13, ptr %14, align 1
  %15 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = and i8 %16, 32
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = icmp ugt i8 %10, 1
  %21 = select i1 %20, i32 4287, i32 4283
  %22 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = shl i8 %23, 3
  %25 = and i8 %24, 64
  %26 = zext i8 %25 to i32
  %27 = or i32 %21, %26
  %28 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 2, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 11
  %33 = or i32 %32, %27
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %35 = load volatile i32, ptr %34, align 4
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 131072
  %38 = or i32 %33, %37
  br label %39

39:                                               ; preds = %19, %4
  %40 = phi i32 [ 4123, %4 ], [ %38, %19 ]
  %41 = and i8 %16, 64
  %42 = icmp eq i8 %41, 0
  %43 = or i32 %40, 44544
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 236
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49, %39
  %54 = or i32 %44, 16384
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ %44, %49 ]
  %57 = or i32 %56, 65536
  %58 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 3
  store i32 %57, ptr %58, align 1
  %59 = tail call fastcc i32 @get_current_settings(ptr noundef %1)
  %60 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 4
  store i32 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 6
  %62 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %1, ptr noundef %61)
  %63 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, ptr %5, i32 0, i32 5
  store i16 %62, ptr %63, align 1
  tail call void @mutex_unlock(ptr noundef %6) #16
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 4) #16
  tail call void @hci_sock_clear_flag(ptr noundef %0, i32 noundef 7) #16
  tail call void @hci_sock_clear_flag(ptr noundef %0, i32 noundef 8) #16
  %64 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %65 = load i16, ptr %64, align 8
  %66 = zext i16 %62 to i32
  %67 = add nuw nsw i32 %66, 19
  %68 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %65, i16 noundef zeroext 66, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef %67) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #16
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_appearance(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [512 x i8], align 2
  %6 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 8
  %13 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %12, i16 noundef zeroext 67, i8 noundef zeroext 12) #16
  br label %36

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 16
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, %15
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  store i16 %15, ptr %17, align 2
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 8192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @appearance_changed_sync, ptr noundef null, ptr noundef null) #16
  br label %27

27:                                               ; preds = %25, %20
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #16
  %28 = getelementptr inbounds %struct.mgmt_ev_ext_info_changed, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(510) %28, i8 0, i64 510, i1 false) #16
  %29 = call fastcc zeroext i16 @append_eir_data_to_buf(ptr noundef %1, ptr noundef %28) #16
  store i16 %29, ptr %5, align 2
  %30 = add i16 %29, 2
  %31 = call i32 @mgmt_send_event(i16 noundef zeroext 37, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext %30, i32 noundef 4, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #16
  br label %32

32:                                               ; preds = %27, %14
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %34 = load i16, ptr %33, align 8
  %35 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %34, i16 noundef zeroext 67, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  call void @mutex_unlock(ptr noundef %16) #16
  br label %36

36:                                               ; preds = %32, %10
  %37 = phi i32 [ %35, %32 ], [ %13, %10 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_phy_configuration(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_get_phy_configuration, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 1, i32 3
  %17 = shl i8 %13, 1
  %18 = and i8 %17, 4
  %19 = zext i8 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %11
  %26 = icmp sgt i8 %8, -1
  %27 = select i1 %26, i32 8, i32 24
  %28 = or i32 %20, %27
  %29 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 5
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %28, 32
  %34 = select i1 %32, i32 %28, i32 %33
  %35 = and i8 %22, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = select i1 %26, i32 64, i32 192
  %39 = or i32 %34, %38
  %40 = or i32 %39, 256
  %41 = select i1 %32, i32 %39, i32 %40
  br label %42

42:                                               ; preds = %37, %25, %11, %4
  %43 = phi i32 [ 0, %4 ], [ %34, %25 ], [ %20, %11 ], [ %41, %37 ]
  %44 = and i8 %8, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 1536, i32 7680
  %52 = or i32 %51, %43
  %53 = and i8 %48, 8
  %54 = icmp eq i8 %53, 0
  %55 = or i32 %52, 24576
  %56 = select i1 %54, i32 %52, i32 %55
  br label %57

57:                                               ; preds = %46, %42
  %58 = phi i32 [ %43, %42 ], [ %56, %46 ]
  store i32 %58, ptr %5, align 8
  %59 = tail call fastcc i32 @get_selected_phys(ptr noundef %1)
  %60 = getelementptr inbounds %struct.mgmt_rp_get_phy_configuration, ptr %5, i32 0, i32 2
  store i32 %59, ptr %60, align 8
  br i1 %10, label %61, label %92

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %63 = load i8, ptr %62, align 2
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 1, i32 3
  %67 = shl i8 %63, 1
  %68 = and i8 %67, 4
  %69 = zext i8 %68 to i32
  %70 = or i32 %66, %69
  %71 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 3
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %72, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %61
  %76 = icmp sgt i8 %8, -1
  %77 = select i1 %76, i32 8, i32 24
  %78 = or i32 %70, %77
  %79 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 5
  %80 = load i8, ptr %79, align 1
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = or i32 %78, 32
  %84 = select i1 %82, i32 %78, i32 %83
  %85 = and i8 %72, 4
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %75
  %88 = select i1 %76, i32 64, i32 192
  %89 = or i32 %84, %88
  %90 = or i32 %89, 256
  %91 = select i1 %82, i32 %89, i32 %90
  br label %92

92:                                               ; preds = %87, %75, %61, %57
  %93 = phi i32 [ 0, %57 ], [ %84, %75 ], [ %70, %61 ], [ %91, %87 ]
  br i1 %45, label %105, label %94

94:                                               ; preds = %92
  %95 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, i32 1536, i32 7680
  %100 = or i32 %99, %93
  %101 = and i8 %96, 8
  %102 = icmp eq i8 %101, 0
  %103 = or i32 %100, 24576
  %104 = select i1 %102, i32 %100, i32 %103
  br label %105

105:                                              ; preds = %94, %92
  %106 = phi i32 [ %93, %92 ], [ %104, %94 ]
  %107 = and i32 %106, -1538
  %108 = getelementptr inbounds %struct.mgmt_rp_get_phy_configuration, ptr %5, i32 0, i32 1
  store i32 %107, ptr %108, align 4
  tail call void @mutex_unlock(ptr noundef %6) #16
  %109 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %110 = load i16, ptr %109, align 8
  %111 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %110, i16 noundef zeroext 68, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 12) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_phy_configuration(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 32
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i32 1, i32 3
  %15 = shl i8 %11, 1
  %16 = and i8 %15, 4
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %9
  %24 = icmp sgt i8 %6, -1
  %25 = select i1 %24, i32 8, i32 24
  %26 = or i32 %18, %25
  %27 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  %31 = or i32 %26, 32
  %32 = select i1 %30, i32 %26, i32 %31
  %33 = and i8 %20, 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = select i1 %24, i32 64, i32 192
  %37 = or i32 %32, %36
  %38 = or i32 %37, 256
  %39 = select i1 %30, i32 %37, i32 %38
  br label %40

40:                                               ; preds = %35, %23, %9, %4
  %41 = phi i32 [ 0, %4 ], [ %32, %23 ], [ %18, %9 ], [ %39, %35 ]
  %42 = and i8 %6, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, i32 1536, i32 7680
  %50 = or i32 %49, %41
  %51 = and i8 %46, 8
  %52 = icmp eq i8 %51, 0
  %53 = or i32 %50, 24576
  %54 = select i1 %52, i32 %50, i32 %53
  br label %55

55:                                               ; preds = %44, %40
  %56 = phi i32 [ %41, %40 ], [ %54, %44 ]
  %57 = and i32 %56, -1538
  br i1 %8, label %58, label %89

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 21
  %60 = load i8, ptr %59, align 2
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, i32 1, i32 3
  %64 = shl i8 %60, 1
  %65 = and i8 %64, 4
  %66 = zext i8 %65 to i32
  %67 = or i32 %63, %66
  %68 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 3
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %58
  %73 = icmp sgt i8 %6, -1
  %74 = select i1 %73, i32 8, i32 24
  %75 = or i32 %67, %74
  %76 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 5
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  %80 = or i32 %75, 32
  %81 = select i1 %79, i32 %75, i32 %80
  %82 = and i8 %69, 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %72
  %85 = select i1 %73, i32 64, i32 192
  %86 = or i32 %81, %85
  %87 = or i32 %86, 256
  %88 = select i1 %79, i32 %86, i32 %87
  br label %89

89:                                               ; preds = %84, %72, %58, %55
  %90 = phi i32 [ 0, %55 ], [ %81, %72 ], [ %67, %58 ], [ %88, %84 ]
  br i1 %43, label %102, label %91

91:                                               ; preds = %89
  %92 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 1536, i32 7680
  %97 = or i32 %96, %90
  %98 = and i8 %93, 8
  %99 = icmp eq i8 %98, 0
  %100 = or i32 %97, 24576
  %101 = select i1 %99, i32 %97, i32 %100
  br label %102

102:                                              ; preds = %91, %89
  %103 = phi i32 [ %90, %89 ], [ %101, %91 ]
  %104 = load i32, ptr %2, align 1
  %105 = xor i32 %103, -1
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %110 = load i16, ptr %109, align 8
  %111 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %110, i16 noundef zeroext 69, i8 noundef zeroext 13) #16
  br label %213

112:                                              ; preds = %102
  %113 = xor i32 %57, -1
  %114 = and i32 %103, %113
  %115 = and i32 %104, %114
  %116 = icmp eq i32 %115, %114
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %119 = load i16, ptr %118, align 8
  %120 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %119, i16 noundef zeroext 69, i8 noundef zeroext 13) #16
  br label %213

121:                                              ; preds = %112
  %122 = tail call fastcc i32 @get_selected_phys(ptr noundef %1)
  %123 = icmp eq i32 %104, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %126 = load i16, ptr %125, align 8
  %127 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %126, i16 noundef zeroext 69, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  br label %213

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %129) #16
  %130 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134, %128
  %140 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %141 = load i16, ptr %140, align 8
  %142 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %141, i16 noundef zeroext 69, i8 noundef zeroext 11) #16
  br label %211

143:                                              ; preds = %134
  %144 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 69, ptr noundef %1) #16
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %148 = load i16, ptr %147, align 8
  %149 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %148, i16 noundef zeroext 69, i8 noundef zeroext 10) #16
  br label %211

150:                                              ; preds = %143
  %151 = and i32 %104, 2
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 24, i32 3096
  %154 = and i32 %104, 4
  %155 = icmp eq i32 %154, 0
  %156 = or i32 %153, 49152
  %157 = select i1 %155, i32 %153, i32 %156
  %158 = and i32 %104, 8
  %159 = icmp eq i32 %158, 0
  %160 = trunc i32 %157 to i16
  %161 = or i16 %160, 2
  %162 = select i1 %159, i16 %161, i16 %160
  %163 = and i16 %162, -13061
  %164 = trunc i32 %104 to i16
  %165 = shl i16 %164, 4
  %166 = and i16 %165, 256
  %167 = shl i16 %164, 7
  %168 = and i16 %167, 4096
  %169 = lshr i16 %164, 4
  %170 = and i16 %169, 4
  %171 = shl i16 %164, 2
  %172 = and i16 %171, 512
  %173 = shl i16 %164, 5
  %174 = and i16 %173, 8192
  %175 = or i16 %168, %166
  %176 = or i16 %175, %170
  %177 = or i16 %176, %172
  %178 = or i16 %177, %174
  %179 = or i16 %178, %163
  %180 = xor i16 %179, 13060
  %181 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 98
  %182 = load i16, ptr %181, align 4
  %183 = icmp eq i16 %180, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %150
  store i16 %180, ptr %181, align 4
  br label %185

185:                                              ; preds = %184, %150
  %186 = tail call fastcc i32 @get_selected_phys(ptr noundef %1)
  %187 = xor i32 %186, %104
  %188 = and i32 %187, 32256
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  br i1 %183, label %193, label %191

191:                                              ; preds = %190
  %192 = tail call i32 @mgmt_phy_configuration_changed(ptr noundef %1, ptr noundef %0)
  br label %193

193:                                              ; preds = %191, %190
  %194 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %195 = load i16, ptr %194, align 8
  %196 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %195, i16 noundef zeroext 69, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  br label %211

197:                                              ; preds = %185
  %198 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 69, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %202 = load i16, ptr %201, align 8
  %203 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %202, i16 noundef zeroext 69, i8 noundef zeroext 3) #16
  br label %211

204:                                              ; preds = %197
  %205 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @set_default_phy_sync, ptr noundef nonnull %198, ptr noundef nonnull @set_default_phy_complete) #16
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %209 = load i16, ptr %208, align 8
  %210 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %209, i16 noundef zeroext 69, i8 noundef zeroext 3) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %198) #16
  br label %211

211:                                              ; preds = %207, %204, %200, %193, %146, %139
  %212 = phi i32 [ %142, %139 ], [ %149, %146 ], [ %196, %193 ], [ %210, %207 ], [ %205, %204 ], [ %203, %200 ]
  tail call void @mutex_unlock(ptr noundef %129) #16
  br label %213

213:                                              ; preds = %211, %124, %117, %108
  %214 = phi i32 [ %111, %108 ], [ %120, %117 ], [ %127, %124 ], [ %212, %211 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_blocked_keys(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = load i16, ptr %2, align 1
  %6 = zext i16 %5 to i32
  %7 = icmp ugt i16 %5, 3854
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %9, i32 noundef %6) #16
  %10 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %11, i16 noundef zeroext 70, i8 noundef zeroext 13) #16
  br label %53

13:                                               ; preds = %4
  %14 = mul nuw nsw i32 %6, 17
  %15 = add nuw nsw i32 %14, 2
  %16 = and i32 %15, 65535
  %17 = zext i16 %3 to i32
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %20, i32 noundef %16, i32 noundef %17) #16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 70, i8 noundef zeroext 13) #16
  br label %53

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %25) #16
  tail call void @hci_blocked_keys_clear(ptr noundef %1) #16
  %26 = load i16, ptr %2, align 1
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 197
  br label %30

30:                                               ; preds = %35, %28
  %31 = phi i32 [ 0, %28 ], [ %44, %35 ]
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 36) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.mgmt_cp_set_blocked_keys, ptr %2, i32 0, i32 1, i32 %31
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.blocked_key, ptr %33, i32 0, i32 2
  store i8 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.blocked_key, ptr %33, i32 0, i32 3
  %40 = getelementptr %struct.mgmt_cp_set_blocked_keys, ptr %2, i32 0, i32 1, i32 %31, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %39, ptr noundef align 1 dereferenceable(16) %40, i32 16, i1 false)
  %41 = load ptr, ptr %29, align 4
  store ptr %41, ptr %33, align 8
  %42 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %29, ptr %42, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  store volatile ptr %33, ptr %29, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %33, ptr %43, align 4
  %44 = add nuw nsw i32 %31, 1
  %45 = load i16, ptr %2, align 1
  %46 = zext i16 %45 to i32
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %30, label %48

48:                                               ; preds = %35, %30, %24
  %49 = phi i8 [ 0, %24 ], [ 7, %30 ], [ 0, %35 ]
  tail call void @mutex_unlock(ptr noundef %25) #16
  %50 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %51 = load i16, ptr %50, align 8
  %52 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %51, i16 noundef zeroext 70, i8 noundef zeroext %49, ptr noundef null, i32 noundef 0) #16
  br label %53

53:                                               ; preds = %48, %19, %8
  %54 = phi i32 [ %12, %8 ], [ %23, %19 ], [ %52, %48 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_wideband_speech(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %13, i16 noundef zeroext 71, i8 noundef zeroext 12) #16
  br label %69

15:                                               ; preds = %4
  %16 = load i8, ptr %2, align 1
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext 71, i8 noundef zeroext 13) #16
  br label %69

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i8, ptr %2, align 1
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %35, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %43 = load i16, ptr %42, align 8
  %44 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %43, i16 noundef zeroext 71, i8 noundef zeroext 11) #16
  br label %67

45:                                               ; preds = %33, %28, %22
  %46 = load i8, ptr %2, align 1
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %47, label %52, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @_test_and_set_bit(i32 noundef 34, ptr noundef %48) #16
  %51 = icmp eq i32 %50, 0
  br label %55

52:                                               ; preds = %45
  %53 = tail call i32 @_test_and_clear_bit(i32 noundef 34, ptr noundef %48) #16
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ %51, %49 ], [ %54, %52 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %57 = tail call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %57, ptr %6, align 4
  %58 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %59 = load i16, ptr %58, align 8
  %60 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %59, i16 noundef zeroext 71, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %61 = icmp slt i32 %60, 0
  %62 = xor i1 %56, true
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %65 = call fastcc i32 @get_current_settings(ptr noundef %1) #16
  store i32 %65, ptr %5, align 4
  %66 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %67

67:                                               ; preds = %64, %55, %41
  %68 = phi i32 [ %60, %55 ], [ %66, %64 ], [ %44, %41 ]
  call void @mutex_unlock(ptr noundef %23) #16
  br label %69

69:                                               ; preds = %67, %18, %11
  %70 = phi i32 [ %21, %18 ], [ %68, %67 ], [ %14, %11 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_controller_cap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [20 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @mutex_lock(ptr noundef %6) #16
  %8 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 41
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i8
  %14 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 20
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 16
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i8 2, i8 6
  %19 = or i8 %18, %13
  %20 = or i8 %19, 8
  %21 = getelementptr inbounds %struct.mgmt_rp_read_controller_cap, ptr %5, i32 0, i32 1
  store i8 2, ptr %21, align 2
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.mgmt_rp_read_controller_cap, ptr %5, i32 2
  store i8 %20, ptr %23, align 2
  br i1 %11, label %31, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 74
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  %28 = getelementptr inbounds i8, ptr %21, i32 3
  store i8 3, ptr %28, align 1
  %29 = getelementptr inbounds %struct.mgmt_rp_read_controller_cap, ptr %5, i32 3
  store i8 2, ptr %29, align 2
  %30 = getelementptr inbounds i8, ptr %21, i32 5
  store i16 %27, ptr %30, align 1
  br label %31

31:                                               ; preds = %24, %4
  %32 = phi i16 [ 7, %24 ], [ 3, %4 ]
  %33 = add nuw nsw i16 %32, 1
  %34 = zext i16 %32 to i32
  %35 = getelementptr i8, ptr %21, i32 %34
  store i8 3, ptr %35, align 1
  %36 = add nuw nsw i16 %32, 2
  %37 = zext i16 %33 to i32
  %38 = getelementptr i8, ptr %21, i32 %37
  store i8 3, ptr %38, align 2
  %39 = zext i16 %36 to i32
  %40 = getelementptr i8, ptr %21, i32 %39
  store i16 16, ptr %40, align 1
  %41 = add nuw nsw i16 %32, 4
  %42 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 38
  %43 = load i8, ptr %42, align 1
  %44 = icmp sgt i8 %43, -1
  br i1 %44, label %60, label %45

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 96
  %47 = load i8, ptr %46, align 2
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 97
  %49 = load i8, ptr %48, align 1
  %50 = add nuw nsw i16 %32, 5
  %51 = zext i16 %41 to i32
  %52 = getelementptr i8, ptr %21, i32 %51
  store i8 3, ptr %52, align 1
  %53 = add nuw nsw i16 %32, 6
  %54 = zext i16 %50 to i32
  %55 = getelementptr i8, ptr %21, i32 %54
  store i8 4, ptr %55, align 2
  %56 = zext i16 %53 to i32
  %57 = getelementptr i8, ptr %21, i32 %56
  store i8 %47, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %57, i32 1
  store i8 %49, ptr %58, align 2
  %59 = or i16 %32, 8
  br label %60

60:                                               ; preds = %45, %31
  %61 = phi i16 [ %59, %45 ], [ %41, %31 ]
  store i16 %61, ptr %5, align 2
  tail call void @mutex_unlock(ptr noundef %6) #16
  %62 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %63 = load i16, ptr %62, align 8
  %64 = zext i16 %61 to i32
  %65 = add nuw nsw i32 %64, 2
  %66 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %63, i16 noundef zeroext 72, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef %65) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_exp_features_info(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca [102 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %5) #16
  %6 = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(102) %5, i8 0, i64 102, i1 false)
  br i1 %6, label %73, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 72
  %16 = icmp eq i8 %15, 72
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = lshr i32 %24, 14
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(16) @le_simultaneous_roles_uuid, i32 16, i1 false)
  %28 = getelementptr inbounds %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 9
  store i32 %26, ptr %28, align 2
  br label %29

29:                                               ; preds = %22, %17, %12, %7
  %30 = phi i16 [ 0, %7 ], [ 0, %12 ], [ 0, %17 ], [ 1, %22 ]
  %31 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 64
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 2, i32 3
  %41 = zext i16 %30 to i32
  %42 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %41
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %42, ptr noundef nonnull align 1 dereferenceable(16) @rpa_resolution_uuid, i32 16, i1 false)
  %43 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %41, i32 1
  store i32 %40, ptr %43, align 2
  %44 = add nuw nsw i16 %30, 1
  br label %45

45:                                               ; preds = %35, %29
  %46 = phi i16 [ %30, %29 ], [ %44, %35 ]
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 239
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = lshr i32 %52, 12
  %54 = and i32 %53, 1
  %55 = zext i16 %46 to i32
  %56 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %55
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %56, ptr noundef nonnull align 1 dereferenceable(16) @quality_report_uuid, i32 16, i1 false)
  %57 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %55, i32 1
  store i32 %54, ptr %57, align 2
  %58 = add nuw nsw i16 %46, 1
  br label %59

59:                                               ; preds = %50, %45
  %60 = phi i16 [ %46, %45 ], [ %58, %50 ]
  %61 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 240
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %66 = load volatile i32, ptr %65, align 4
  %67 = lshr i32 %66, 13
  %68 = and i32 %67, 1
  %69 = zext i16 %60 to i32
  %70 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %69
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %70, ptr noundef nonnull align 1 dereferenceable(16) @offload_codecs_uuid, i32 16, i1 false)
  %71 = getelementptr %struct.mgmt_rp_read_exp_features_info, ptr %5, i32 0, i32 1, i32 %69, i32 1
  store i32 %68, ptr %71, align 2
  %72 = add nuw nsw i16 %60, 1
  br label %74

73:                                               ; preds = %4
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %78

74:                                               ; preds = %64, %59
  %75 = phi i16 [ %60, %59 ], [ %72, %64 ]
  store i16 %75, ptr %5, align 2
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %77 = load i16, ptr %76, align 8
  br label %78

78:                                               ; preds = %74, %73
  %79 = phi i16 [ %75, %74 ], [ 0, %73 ]
  %80 = phi i16 [ %77, %74 ], [ -1, %73 ]
  %81 = zext i16 %79 to i32
  %82 = mul nuw nsw i32 %81, 20
  %83 = or i32 %82, 2
  %84 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %80, i16 noundef zeroext 73, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef %83) #16
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %5) #16
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_exp_feature(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @.str.8, i32 16)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %21, %18, %15, %12, %4
  %8 = phi i32 [ 0, %4 ], [ 1, %12 ], [ 2, %15 ], [ 3, %18 ], [ 4, %21 ]
  %9 = getelementptr [6 x %struct.mgmt_exp_feature], ptr @exp_features, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  br label %32

12:                                               ; preds = %4
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @rpa_resolution_uuid, i32 16)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %7, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @quality_report_uuid, i32 16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @offload_codecs_uuid, i32 16)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %7, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %2, ptr noundef nonnull dereferenceable(16) @le_simultaneous_roles_uuid, i32 16)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %7, label %24

24:                                               ; preds = %21
  %25 = icmp eq ptr %1, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i16 [ %28, %26 ], [ -1, %24 ]
  %31 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %30, i16 noundef zeroext 74, i8 noundef zeroext 12) #16
  br label %32

32:                                               ; preds = %29, %7
  %33 = phi i32 [ %11, %7 ], [ %31, %29 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_def_system_config(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_def_system_config(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_def_runtime_config(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_def_runtime_config(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_device_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_get_device_flags, align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 207
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %5, i8 0, i32 15, i1 false)
  %10 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %15 = tail call ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef %14, ptr noundef %2, i8 noundef zeroext 0) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %15, i32 0, i32 3
  br label %26

19:                                               ; preds = %4
  %20 = icmp ne i8 %11, 1
  %21 = zext i1 %20 to i8
  %22 = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hci_conn_params, ptr %22, i32 0, i32 11
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi ptr [ %18, %17 ], [ %25, %24 ]
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %30 = load i8, ptr %10, align 1
  %31 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.mgmt_rp_get_device_flags, ptr %5, i32 0, i32 1
  store i32 %9, ptr %32, align 1
  %33 = getelementptr inbounds %struct.mgmt_rp_get_device_flags, ptr %5, i32 0, i32 2
  store i32 %29, ptr %33, align 1
  br label %34

34:                                               ; preds = %26, %19, %13
  %35 = phi i8 [ 0, %26 ], [ 13, %13 ], [ 13, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #16
  %36 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %37, i16 noundef zeroext 79, i8 noundef zeroext %35, ptr noundef nonnull %5, i32 noundef 15) #16
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %5) #16
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_device_flags(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_device_flags_changed, align 1
  %6 = getelementptr inbounds %struct.mgmt_cp_set_device_flags, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 207
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 3
  %11 = or i32 %10, %7
  %12 = icmp eq i32 %11, %10
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.24, ptr noundef %14, i32 noundef %7, i32 noundef %10) #16
  br label %56

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %22 = tail call ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef %21, ptr noundef %2, i8 noundef zeroext 0) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %22, i32 0, i32 3
  store i32 %7, ptr %25, align 4
  %26 = getelementptr %struct.bdaddr_list_with_flags, ptr %22, i32 1
  store i32 0, ptr %26, align 4
  br label %50

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %29 = load i8, ptr %17, align 1
  %30 = zext i8 %29 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.25, ptr noundef %28, ptr noundef %2, i32 noundef %30) #16
  br label %49

31:                                               ; preds = %15
  %32 = icmp ne i8 %18, 1
  %33 = zext i1 %32 to i8
  %34 = tail call ptr @hci_conn_params_lookup(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %33) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hci_conn_params, ptr %34, i32 0, i32 11
  store i32 %7, ptr %37, align 4
  %38 = getelementptr %struct.hci_conn_params, ptr %34, i32 0, i32 12
  store i32 0, ptr %38, align 4
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @hci_update_passive_scan(ptr noundef %1) #16
  br label %50

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %46 = load i8, ptr %17, align 1
  %47 = icmp ne i8 %46, 1
  %48 = zext i1 %47 to i32
  tail call void (ptr, ...) @bt_warn(ptr noundef nonnull @.str.26, ptr noundef %45, ptr noundef %2, i32 noundef %48) #16
  br label %49

49:                                               ; preds = %44, %27
  tail call void @mutex_unlock(ptr noundef %16) #16
  br label %56

50:                                               ; preds = %42, %36, %24
  tail call void @mutex_unlock(ptr noundef %16) #16
  %51 = load i8, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %52 = getelementptr inbounds %struct.mgmt_addr_info, ptr %5, i32 0, i32 1
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.mgmt_ev_device_flags_changed, ptr %5, i32 0, i32 1
  store i32 %10, ptr %53, align 1
  %54 = getelementptr inbounds %struct.mgmt_ev_device_flags_changed, ptr %5, i32 0, i32 2
  store i32 %7, ptr %54, align 1
  %55 = call i32 @mgmt_send_event(i16 noundef zeroext 42, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 15, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %5) #16
  br label %56

56:                                               ; preds = %50, %49, %13
  %57 = phi i8 [ 13, %13 ], [ 0, %50 ], [ 13, %49 ]
  %58 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %59 = load i16, ptr %58, align 8
  %60 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %59, i16 noundef zeroext 80, i8 noundef zeroext %57, ptr noundef %2, i32 noundef 7) #16
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_adv_mon_features(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca [32 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 218
  store i32 0, ptr %5, align 4
  %9 = call ptr @idr_get_next(ptr noundef %8, ptr noundef nonnull %5) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %11, %4
  %12 = phi ptr [ %21, %11 ], [ %9, %4 ]
  %13 = phi i16 [ %16, %11 ], [ 0, %4 ]
  %14 = getelementptr inbounds %struct.adv_monitor, ptr %12, i32 0, i32 2
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %13, 1
  %17 = zext i16 %13 to i32
  %18 = getelementptr [32 x i16], ptr %6, i32 0, i32 %17
  store i16 %15, ptr %18, align 2
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %5, align 4
  %21 = call ptr @idr_get_next(ptr noundef %8, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11

23:                                               ; preds = %11, %4
  %24 = phi i16 [ 0, %4 ], [ %16, %11 ]
  call void @mutex_unlock(ptr noundef %7) #16
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 1
  %27 = add nuw nsw i32 %26, 13
  %28 = call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #17
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %23
  store i32 0, ptr %28, align 64
  %31 = getelementptr inbounds %struct.mgmt_rp_read_adv_monitor_features, ptr %28, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mgmt_rp_read_adv_monitor_features, ptr %28, i32 0, i32 2
  store i16 32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.mgmt_rp_read_adv_monitor_features, ptr %28, i32 0, i32 3
  store i8 16, ptr %33, align 2
  %34 = getelementptr inbounds %struct.mgmt_rp_read_adv_monitor_features, ptr %28, i32 0, i32 4
  store i16 %24, ptr %34, align 1
  %35 = icmp eq i16 %24, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mgmt_rp_read_adv_monitor_features, ptr %28, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %37, ptr nonnull align 2 %6, i32 %26, i1 false)
  br label %38

38:                                               ; preds = %36, %30
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 81, i8 noundef zeroext 0, ptr noundef nonnull %28, i32 noundef %27) #16
  call void @kfree(ptr noundef nonnull %28) #16
  br label %42

42:                                               ; preds = %38, %23
  %43 = phi i32 [ %41, %38 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_adv_patterns_monitor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = icmp ult i16 %3, 2
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = zext i16 %3 to i32
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 34
  %11 = or i32 %10, 1
  %12 = icmp eq i32 %11, %7
  br i1 %12, label %13, label %62

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %13
  store volatile ptr %15, ptr %15, align 8
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.adv_monitor, ptr %15, i32 0, i32 1
  store i8 -127, ptr %19, align 8
  %20 = getelementptr inbounds %struct.adv_monitor, ptr %15, i32 0, i32 1, i32 2
  store i16 60, ptr %20, align 2
  %21 = getelementptr inbounds %struct.adv_monitor, ptr %15, i32 0, i32 1, i32 1
  store i8 -127, ptr %21, align 1
  %22 = getelementptr inbounds %struct.adv_monitor, ptr %15, i32 0, i32 1, i32 3
  store i16 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.adv_monitor, ptr %15, i32 0, i32 1, i32 4
  store i8 0, ptr %23, align 2
  %24 = load i8, ptr %2, align 1
  %25 = getelementptr inbounds %struct.mgmt_cp_add_adv_patterns_monitor, ptr %2, i32 0, i32 1
  %26 = zext i8 %24 to i32
  %27 = icmp eq i8 %24, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %47, %17
  %29 = phi i32 [ %60, %47 ], [ 0, %17 ]
  %30 = getelementptr %struct.mgmt_adv_pattern, ptr %25, i32 %29
  %31 = getelementptr %struct.mgmt_adv_pattern, ptr %25, i32 %29, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr %struct.mgmt_adv_pattern, ptr %25, i32 %29, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp ugt i8 %32, 30
  %36 = icmp ugt i8 %34, 31
  %37 = select i1 %35, i1 true, i1 %36
  %38 = zext i8 %34 to i32
  %39 = zext i8 %32 to i32
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp ugt i32 %40, 31
  %42 = select i1 %37, i1 true, i1 %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %28
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 44) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = load i8, ptr %30, align 1
  %49 = getelementptr inbounds %struct.adv_pattern, ptr %45, i32 0, i32 1
  store i8 %48, ptr %49, align 8
  %50 = load i8, ptr %31, align 1
  %51 = getelementptr inbounds %struct.adv_pattern, ptr %45, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  %52 = load i8, ptr %33, align 1
  %53 = getelementptr inbounds %struct.adv_pattern, ptr %45, i32 0, i32 3
  store i8 %52, ptr %53, align 2
  %54 = getelementptr inbounds %struct.adv_pattern, ptr %45, i32 0, i32 4
  %55 = getelementptr %struct.mgmt_adv_pattern, ptr %25, i32 %29, i32 3
  %56 = zext i8 %52 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %55, i32 %56, i1 false) #16
  store volatile ptr %45, ptr %45, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %58 = load ptr, ptr %15, align 8
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %45, ptr %59, align 4
  store ptr %58, ptr %45, align 8
  store ptr %15, ptr %57, align 4
  store volatile ptr %45, ptr %15, align 8
  %60 = add nuw nsw i32 %29, 1
  %61 = icmp eq i32 %60, %26
  br i1 %61, label %62, label %28

62:                                               ; preds = %47, %43, %28, %17, %13, %6, %4
  %63 = phi ptr [ null, %4 ], [ null, %6 ], [ null, %13 ], [ %15, %17 ], [ %15, %28 ], [ %15, %43 ], [ %15, %47 ]
  %64 = phi i8 [ 13, %4 ], [ 13, %6 ], [ 7, %13 ], [ 0, %17 ], [ 0, %47 ], [ 7, %43 ], [ 13, %28 ]
  %65 = tail call fastcc i32 @__add_adv_patterns_monitor(ptr noundef %0, ptr noundef %1, ptr noundef %63, i8 noundef zeroext %64, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 82)
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_adv_monitor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_remove_adv_monitor, align 2
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  %7 = load i16, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !8
  store i16 %7, ptr %5, align 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #16
  %9 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %4
  %12 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 83, ptr noundef %1) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 82, ptr noundef %1) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 86, ptr noundef %1) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext 83, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = icmp eq i16 %7, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = call zeroext i1 @hci_remove_single_adv_monitor(ptr noundef %1, i16 noundef zeroext %7, ptr noundef nonnull %6) #16
  br label %29

27:                                               ; preds = %23
  %28 = call zeroext i1 @hci_remove_all_adv_monitor(ptr noundef %1, ptr noundef nonnull %6) #16
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i1 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, ptr %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  call void @mgmt_pending_remove(ptr noundef nonnull %21) #16
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, -2
  %36 = select i1 %35, i8 17, i8 3
  br label %43

37:                                               ; preds = %29
  br i1 %30, label %42, label %38

38:                                               ; preds = %37
  call void @mgmt_pending_remove(ptr noundef nonnull %21) #16
  call void @mutex_unlock(ptr noundef %8) #16
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 83, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 2) #16
  br label %48

42:                                               ; preds = %37
  call void @mutex_unlock(ptr noundef %8) #16
  br label %48

43:                                               ; preds = %33, %20, %17, %14, %11, %4
  %44 = phi i8 [ 10, %17 ], [ 10, %14 ], [ 10, %11 ], [ 10, %4 ], [ 7, %20 ], [ %36, %33 ]
  call void @mutex_unlock(ptr noundef %8) #16
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %46 = load i16, ptr %45, align 8
  %47 = call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %46, i16 noundef zeroext 83, i8 noundef zeroext %44) #16
  br label %48

48:                                               ; preds = %43, %42, %38
  %49 = phi i32 [ %47, %43 ], [ 0, %42 ], [ %41, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_ext_adv_params(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_rp_add_ext_adv_params, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 8388608
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %4
  %16 = phi i8 [ 12, %4 ], [ 11, %10 ]
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext 84, i8 noundef zeroext %16) #16
  br label %174

20:                                               ; preds = %10
  %21 = load i8, ptr %2, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 25
  %25 = load i8, ptr %24, align 8
  %26 = icmp ugt i8 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %29, i16 noundef zeroext 84, i8 noundef zeroext 13) #16
  br label %174

31:                                               ; preds = %23
  %32 = icmp ult i16 %3, 18
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %35, i16 noundef zeroext 62, i8 noundef zeroext 13) #16
  br label %174

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 208
  %41 = load i8, ptr %40, align 8
  %42 = icmp eq i8 %41, 127
  %43 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 22, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  %47 = select i1 %42, i1 %46, i1 false
  %48 = select i1 %47, i32 127087, i32 127103
  %49 = zext i8 %44 to i32
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %37
  %53 = and i32 %49, 1
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 3200, i32 3456
  %56 = or i32 %48, %55
  %57 = and i8 %44, 8
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 6
  %60 = or i32 %56, %59
  br label %61

61:                                               ; preds = %52, %37
  %62 = phi i32 [ %48, %37 ], [ %60, %52 ]
  %63 = xor i32 %62, -1
  %64 = and i32 %39, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = and i32 %39, 896
  %68 = icmp eq i32 %67, 0
  %69 = tail call i32 @llvm.ctpop.i32(i32 %67) #16, !range !25
  %70 = icmp ult i32 %69, 2
  %71 = or i1 %68, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %66, %61
  %73 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %74 = load i16, ptr %73, align 8
  %75 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %74, i16 noundef zeroext 84, i8 noundef zeroext 13) #16
  br label %174

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %77) #16
  %78 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load volatile i32, ptr %11, align 4
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82, %76
  %87 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %88 = load i16, ptr %87, align 8
  %89 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %88, i16 noundef zeroext 84, i8 noundef zeroext 11) #16
  br label %172

90:                                               ; preds = %82
  %91 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %95 = load i16, ptr %94, align 8
  %96 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %95, i16 noundef zeroext 84, i8 noundef zeroext 10) #16
  br label %172

97:                                               ; preds = %90
  %98 = and i32 %39, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 3
  %102 = load i16, ptr %101, align 1
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i16 [ %102, %100 ], [ 0, %97 ]
  %105 = and i32 %39, 4096
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 2
  %108 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 94
  %109 = select i1 %106, ptr %108, ptr %107
  %110 = load i16, ptr %109, align 1
  %111 = and i32 %39, 16384
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 4
  %115 = load i32, ptr %114, align 1
  %116 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 5
  %117 = load i32, ptr %116, align 1
  br label %125

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 44
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 45
  %123 = load i16, ptr %122, align 2
  %124 = zext i16 %123 to i32
  br label %125

125:                                              ; preds = %118, %113
  %126 = phi i32 [ %115, %113 ], [ %121, %118 ]
  %127 = phi i32 [ %117, %113 ], [ %124, %118 ]
  %128 = and i32 %39, 32768
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %2, i32 0, i32 6
  %132 = load i8, ptr %131, align 1
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi i8 [ %132, %130 ], [ 127, %125 ]
  %135 = load i8, ptr %2, align 1
  %136 = tail call i32 @hci_add_adv_instance(ptr noundef %1, i8 noundef zeroext %135, i32 noundef %39, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext %104, i16 noundef zeroext %110, i8 noundef signext %134, i32 noundef %126, i32 noundef %127) #16
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %140 = load i16, ptr %139, align 8
  %141 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %140, i16 noundef zeroext 84, i8 noundef zeroext 3) #16
  br label %172

142:                                              ; preds = %133
  %143 = load i8, ptr %43, align 1
  %144 = and i8 %143, 16
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %142
  %147 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 84, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i8, ptr %2, align 1
  %151 = tail call i32 @hci_remove_adv_instance(ptr noundef %1, i8 noundef zeroext %150) #16
  br label %172

152:                                              ; preds = %146
  %153 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @add_ext_adv_params_sync, ptr noundef nonnull %147, ptr noundef nonnull @add_ext_adv_params_complete) #16
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  tail call void @mgmt_pending_free(ptr noundef nonnull %147) #16
  br label %172

156:                                              ; preds = %142
  %157 = load i8, ptr %2, align 1
  store i8 %157, ptr %5, align 4
  %158 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %5, i32 0, i32 1
  store i8 127, ptr %158, align 1
  %159 = and i32 %39, 14
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i8 31, i8 28
  %162 = and i32 %39, 16
  %163 = icmp eq i32 %162, 0
  %164 = add nsw i8 %161, -3
  %165 = select i1 %163, i8 %161, i8 %164
  %166 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %5, i32 0, i32 2
  store i8 %165, ptr %166, align 2
  %167 = tail call fastcc zeroext i8 @tlv_data_max_len(ptr noundef %1, i32 noundef %39, i1 noundef zeroext false)
  %168 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %5, i32 0, i32 3
  store i8 %167, ptr %168, align 1
  %169 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %170 = load i16, ptr %169, align 8
  %171 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %170, i16 noundef zeroext 84, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  br label %172

172:                                              ; preds = %156, %155, %152, %149, %138, %93, %86
  %173 = phi i32 [ %89, %86 ], [ %96, %93 ], [ %141, %138 ], [ %153, %155 ], [ %153, %152 ], [ -12, %149 ], [ %171, %156 ]
  call void @mutex_unlock(ptr noundef %77) #16
  br label %174

174:                                              ; preds = %172, %72, %33, %27, %15
  %175 = phi i32 [ %19, %15 ], [ %30, %27 ], [ %36, %33 ], [ %173, %172 ], [ %75, %72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_ext_adv_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_advertising_added, align 1
  %6 = alloca %struct.mgmt_ev_advertising_added, align 1
  %7 = alloca %struct.mgmt_rp_add_ext_adv_data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #16
  %9 = load i8, ptr %2, align 1
  %10 = tail call ptr @hci_find_adv_instance(ptr noundef %1, i8 noundef zeroext %9) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 85, i8 noundef zeroext 13) #16
  br label %125

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %16
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 85, i8 noundef zeroext 11) #16
  br label %121

30:                                               ; preds = %21
  %31 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %35, i16 noundef zeroext 85, i8 noundef zeroext 10) #16
  br label %121

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_data, ptr %2, i32 0, i32 3
  %41 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_data, ptr %2, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = tail call fastcc zeroext i1 @tlv_data_is_valid(ptr noundef %1, i32 noundef %39, ptr noundef %40, i8 noundef zeroext %42, i1 noundef zeroext true)
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, ptr %38, align 4
  %46 = load i8, ptr %41, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr i8, ptr %40, i32 %47
  %49 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_data, ptr %2, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = tail call fastcc zeroext i1 @tlv_data_is_valid(ptr noundef %1, i32 noundef %45, ptr noundef %48, i8 noundef zeroext %50, i1 noundef zeroext false)
  br i1 %51, label %56, label %52

52:                                               ; preds = %44, %37
  %53 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %54 = load i16, ptr %53, align 8
  %55 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %54, i16 noundef zeroext 85, i8 noundef zeroext 13) #16
  br label %121

56:                                               ; preds = %44
  %57 = load i8, ptr %2, align 1
  %58 = load i8, ptr %41, align 1
  %59 = zext i8 %58 to i16
  %60 = load i8, ptr %49, align 1
  %61 = zext i8 %60 to i16
  %62 = zext i8 %58 to i32
  %63 = getelementptr i8, ptr %40, i32 %62
  %64 = tail call i32 @hci_set_adv_instance_data(ptr noundef %1, i8 noundef zeroext %57, i16 noundef zeroext %59, ptr noundef %40, i16 noundef zeroext %61, ptr noundef %63) #16
  %65 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 215
  %66 = load i8, ptr %65, align 8
  %67 = load i8, ptr %2, align 1
  %68 = icmp eq i8 %66, %67
  %69 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 216
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, 0
  br i1 %68, label %72, label %86

72:                                               ; preds = %56
  br i1 %71, label %77, label %73

73:                                               ; preds = %72
  store i16 0, ptr %69, align 2
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 217
  %75 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %74) #16
  %76 = load i8, ptr %2, align 1
  br label %77

77:                                               ; preds = %73, %72
  %78 = phi i8 [ %66, %72 ], [ %76, %73 ]
  %79 = tail call ptr @hci_get_next_instance(ptr noundef %1, i8 noundef zeroext %78) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load volatile i32, ptr %22, align 4
  br label %95

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.adv_info, ptr %79, i32 0, i32 3
  %85 = load i8, ptr %84, align 2
  br label %88

86:                                               ; preds = %56
  %87 = select i1 %71, i8 %67, i8 0
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i8 [ %85, %83 ], [ %87, %86 ]
  %90 = load volatile i32, ptr %22, align 4
  %91 = and i32 %90, 16777216
  %92 = icmp eq i32 %91, 0
  %93 = icmp ne i8 %89, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %107, label %95

95:                                               ; preds = %88, %81
  %96 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 2
  %97 = load i8, ptr %96, align 1, !range !16
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 %100, ptr %6, align 1
  %101 = call i32 @mgmt_send_event(i16 noundef zeroext 35, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %6, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %96, align 1
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i8, ptr %2, align 1
  store i8 %103, ptr %7, align 1
  %104 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %105 = load i16, ptr %104, align 8
  %106 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %105, i16 noundef zeroext 85, i8 noundef zeroext 0, ptr noundef nonnull %7, i32 noundef 1) #16
  br label %125

107:                                              ; preds = %88
  %108 = tail call ptr @mgmt_pending_new(ptr noundef %0, i16 noundef zeroext 85, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @add_ext_adv_data_sync, ptr noundef nonnull %108, ptr noundef nonnull @add_ext_adv_data_complete) #16
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void @mgmt_pending_free(ptr noundef nonnull %108) #16
  br label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 2
  %116 = load i8, ptr %115, align 1, !range !16
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = load i8, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 %119, ptr %5, align 1
  %120 = call i32 @mgmt_send_event(i16 noundef zeroext 35, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %125

121:                                              ; preds = %113, %107, %52, %33, %26
  %122 = phi i32 [ %29, %26 ], [ %36, %33 ], [ %111, %113 ], [ %55, %52 ], [ -12, %107 ]
  %123 = load i8, ptr %2, align 1
  %124 = tail call i32 @hci_remove_adv_instance(ptr noundef %1, i8 noundef zeroext %123) #16
  br label %125

125:                                              ; preds = %121, %118, %114, %102, %12
  %126 = phi i32 [ %122, %121 ], [ %111, %118 ], [ %111, %114 ], [ %106, %102 ], [ %15, %12 ]
  call void @mutex_unlock(ptr noundef %8) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_adv_patterns_monitor_rssi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #2 {
  %5 = icmp ult i16 %3, 9
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = zext i16 %3 to i32
  %8 = getelementptr inbounds %struct.mgmt_cp_add_adv_patterns_monitor_rssi, ptr %2, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 34
  %12 = add nuw nsw i32 %11, 8
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %80

14:                                               ; preds = %6
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %80, label %18

18:                                               ; preds = %14
  store volatile ptr %16, ptr %16, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %19, align 4
  %20 = icmp eq ptr %2, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.mgmt_adv_rssi_thresholds, ptr %2, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.mgmt_adv_rssi_thresholds, ptr %2, i32 0, i32 3
  %25 = load i16, ptr %24, align 1
  %26 = load i8, ptr %2, align 1
  %27 = getelementptr inbounds %struct.mgmt_adv_rssi_thresholds, ptr %2, i32 0, i32 1
  %28 = load i16, ptr %27, align 1
  %29 = getelementptr inbounds %struct.mgmt_adv_rssi_thresholds, ptr %2, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi i8 [ %23, %21 ], [ -127, %18 ]
  %33 = phi i16 [ %25, %21 ], [ 60, %18 ]
  %34 = phi i8 [ %26, %21 ], [ -127, %18 ]
  %35 = phi i16 [ %28, %21 ], [ 0, %18 ]
  %36 = phi i8 [ %30, %21 ], [ 0, %18 ]
  %37 = getelementptr inbounds %struct.adv_monitor, ptr %16, i32 0, i32 1
  store i8 %32, ptr %37, align 8
  %38 = getelementptr inbounds %struct.adv_monitor, ptr %16, i32 0, i32 1, i32 2
  store i16 %33, ptr %38, align 2
  %39 = getelementptr inbounds %struct.adv_monitor, ptr %16, i32 0, i32 1, i32 1
  store i8 %34, ptr %39, align 1
  %40 = getelementptr inbounds %struct.adv_monitor, ptr %16, i32 0, i32 1, i32 3
  store i16 %35, ptr %40, align 4
  %41 = getelementptr inbounds %struct.adv_monitor, ptr %16, i32 0, i32 1, i32 4
  store i8 %36, ptr %41, align 2
  %42 = load i8, ptr %8, align 1
  %43 = getelementptr inbounds %struct.mgmt_cp_add_adv_patterns_monitor_rssi, ptr %2, i32 0, i32 2
  %44 = zext i8 %42 to i32
  %45 = icmp eq i8 %42, 0
  br i1 %45, label %80, label %46

46:                                               ; preds = %65, %31
  %47 = phi i32 [ %78, %65 ], [ 0, %31 ]
  %48 = getelementptr %struct.mgmt_adv_pattern, ptr %43, i32 %47
  %49 = getelementptr %struct.mgmt_adv_pattern, ptr %43, i32 %47, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr %struct.mgmt_adv_pattern, ptr %43, i32 %47, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = icmp ugt i8 %50, 30
  %54 = icmp ugt i8 %52, 31
  %55 = select i1 %53, i1 true, i1 %54
  %56 = zext i8 %52 to i32
  %57 = zext i8 %50 to i32
  %58 = add nuw nsw i32 %56, %57
  %59 = icmp ugt i32 %58, 31
  %60 = select i1 %55, i1 true, i1 %59
  br i1 %60, label %80, label %61

61:                                               ; preds = %46
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 44) #18
  %64 = icmp eq ptr %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = load i8, ptr %48, align 1
  %67 = getelementptr inbounds %struct.adv_pattern, ptr %63, i32 0, i32 1
  store i8 %66, ptr %67, align 8
  %68 = load i8, ptr %49, align 1
  %69 = getelementptr inbounds %struct.adv_pattern, ptr %63, i32 0, i32 2
  store i8 %68, ptr %69, align 1
  %70 = load i8, ptr %51, align 1
  %71 = getelementptr inbounds %struct.adv_pattern, ptr %63, i32 0, i32 3
  store i8 %70, ptr %71, align 2
  %72 = getelementptr inbounds %struct.adv_pattern, ptr %63, i32 0, i32 4
  %73 = getelementptr %struct.mgmt_adv_pattern, ptr %43, i32 %47, i32 3
  %74 = zext i8 %70 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %72, ptr align 1 %73, i32 %74, i1 false) #16
  store volatile ptr %63, ptr %63, align 8
  %75 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %76 = load ptr, ptr %16, align 8
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %63, ptr %77, align 4
  store ptr %76, ptr %63, align 8
  store ptr %16, ptr %75, align 4
  store volatile ptr %63, ptr %16, align 8
  %78 = add nuw nsw i32 %47, 1
  %79 = icmp eq i32 %78, %44
  br i1 %79, label %80, label %46

80:                                               ; preds = %65, %61, %46, %31, %14, %6, %4
  %81 = phi ptr [ null, %4 ], [ null, %6 ], [ null, %14 ], [ %16, %31 ], [ %16, %46 ], [ %16, %61 ], [ %16, %65 ]
  %82 = phi i8 [ 13, %4 ], [ 13, %6 ], [ 7, %14 ], [ 0, %31 ], [ 0, %65 ], [ 7, %61 ], [ 13, %46 ]
  %83 = tail call fastcc i32 @__add_adv_patterns_monitor(ptr noundef %0, ptr noundef %1, ptr noundef %81, i8 noundef zeroext %82, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext 86)
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_sock_test_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mgmt_pending_add(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_cmd_sync_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_powered_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = tail call i32 @hci_set_powered_sync(ptr noundef %0, i8 noundef zeroext %5) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mgmt_set_powered_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 5, ptr noundef %0) #16
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %81

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load i8, ptr %10, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  br label %23

23:                                               ; preds = %37, %20
  %24 = phi ptr [ %18, %20 ], [ %38, %37 ]
  %25 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %26, align 4
  %30 = getelementptr inbounds %struct.hci_conn_params, ptr %24, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  switch i32 %31, label %37 [
    i32 2, label %33
    i32 3, label %33
    i32 1, label %32
  ]

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %23, %23
  %34 = phi ptr [ %21, %32 ], [ %22, %23 ], [ %22, %23 ]
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %25, ptr %36, align 4
  store ptr %35, ptr %25, align 4
  store ptr %34, ptr %26, align 4
  store volatile ptr %25, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = load ptr, ptr %24, align 4
  %39 = icmp eq ptr %38, %17
  br i1 %39, label %40, label %23

40:                                               ; preds = %37, %15
  %41 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #16
  tail call void @mutex_unlock(ptr noundef %16) #16
  br label %42

42:                                               ; preds = %40, %12
  %43 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %46 = load i16, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %47 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %47, ptr %5, align 4
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = call i32 @mgmt_cmd_complete(ptr noundef %44, i16 noundef zeroext %49, i16 noundef zeroext %46, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %51 = load i8, ptr %10, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %42
  %54 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %55 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %55, ptr %4, align 4
  %56 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %54) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %80

57:                                               ; preds = %8
  %58 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %61 = load i16, ptr %60, align 8
  %62 = icmp slt i32 %2, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  switch i32 %2, label %71 [
    i32 -107, label %70
    i32 -1, label %77
    i32 -22, label %64
    i32 -95, label %65
    i32 -16, label %66
    i32 -110, label %67
    i32 -12, label %68
    i32 -106, label %69
  ]

64:                                               ; preds = %63
  br label %77

65:                                               ; preds = %63
  br label %77

66:                                               ; preds = %63
  br label %77

67:                                               ; preds = %63
  br label %77

68:                                               ; preds = %63
  br label %77

69:                                               ; preds = %63
  br label %77

70:                                               ; preds = %63
  br label %77

71:                                               ; preds = %63
  br label %77

72:                                               ; preds = %57
  %73 = icmp ult i32 %2, 64
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %76 = load i8, ptr %75, align 1
  br label %77

77:                                               ; preds = %74, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63
  %78 = phi i8 [ %76, %74 ], [ 3, %72 ], [ 3, %71 ], [ 14, %70 ], [ 9, %69 ], [ 7, %68 ], [ 5, %67 ], [ 10, %66 ], [ 12, %65 ], [ 13, %64 ], [ 11, %63 ]
  %79 = tail call i32 @mgmt_cmd_status(ptr noundef %59, i16 noundef zeroext %61, i16 noundef zeroext 5, i8 noundef zeroext %78) #16
  br label %80

80:                                               ; preds = %77, %53, %42
  call void @mgmt_pending_remove(ptr noundef %1) #16
  br label %81

81:                                               ; preds = %80, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_set_powered_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_discoverable_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_discoverable_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mgmt_set_discoverable_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 6, ptr noundef %0) #16
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %66

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %8
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  switch i32 %2, label %21 [
    i32 -107, label %20
    i32 -1, label %27
    i32 -22, label %14
    i32 -95, label %15
    i32 -16, label %16
    i32 -110, label %17
    i32 -12, label %18
    i32 -106, label %19
  ]

14:                                               ; preds = %13
  br label %27

15:                                               ; preds = %13
  br label %27

16:                                               ; preds = %13
  br label %27

17:                                               ; preds = %13
  br label %27

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %13
  br label %27

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %11
  %23 = icmp ult i32 %2, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %24, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %28 = phi i8 [ %26, %24 ], [ 3, %22 ], [ 3, %21 ], [ 14, %20 ], [ 9, %19 ], [ 7, %18 ], [ 5, %17 ], [ 10, %16 ], [ 12, %15 ], [ 13, %14 ], [ 11, %13 ]
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = tail call i32 @mgmt_cmd_status(ptr noundef %30, i16 noundef zeroext %33, i16 noundef zeroext %35, i8 noundef zeroext %28) #16
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %37) #16
  br label %65

38:                                               ; preds = %8
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 134217728
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = zext i16 %45 to i32
  %49 = mul nuw nsw i32 %48, 1000
  %50 = tail call i32 @__msecs_to_jiffies(i32 noundef %49) #16
  %51 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 148
  %54 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %52, ptr noundef %53, i32 noundef %50) #16
  br label %55

55:                                               ; preds = %47, %43, %38
  %56 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %58 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %58, ptr %5, align 4
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = call i32 @mgmt_cmd_complete(ptr noundef %57, i16 noundef zeroext %60, i16 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %62 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %63 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %63, ptr %4, align 4
  %64 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %62) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %65

65:                                               ; preds = %55, %27
  call void @mgmt_pending_remove(ptr noundef %1) #16
  call void @mutex_unlock(ptr noundef %9) #16
  br label %66

66:                                               ; preds = %65, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_discoverable_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_connectable_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_connectable_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mgmt_set_connectable_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 7, ptr noundef %0) #16
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  switch i32 %2, label %21 [
    i32 -107, label %20
    i32 -1, label %27
    i32 -22, label %14
    i32 -95, label %15
    i32 -16, label %16
    i32 -110, label %17
    i32 -12, label %18
    i32 -106, label %19
  ]

14:                                               ; preds = %13
  br label %27

15:                                               ; preds = %13
  br label %27

16:                                               ; preds = %13
  br label %27

17:                                               ; preds = %13
  br label %27

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %13
  br label %27

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %11
  %23 = icmp ult i32 %2, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %24, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %28 = phi i8 [ %26, %24 ], [ 3, %22 ], [ 3, %21 ], [ 14, %20 ], [ 9, %19 ], [ 7, %18 ], [ 5, %17 ], [ 10, %16 ], [ 12, %15 ], [ 13, %14 ], [ 11, %13 ]
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = tail call i32 @mgmt_cmd_status(ptr noundef %30, i16 noundef zeroext %33, i16 noundef zeroext %35, i8 noundef zeroext %28) #16
  br label %47

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %40 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %42 = load i16, ptr %41, align 8
  %43 = call i32 @mgmt_cmd_complete(ptr noundef %39, i16 noundef zeroext %42, i16 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %44 = load ptr, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %45 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %45, ptr %4, align 4
  %46 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %44) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %47

47:                                               ; preds = %37, %27
  %48 = icmp eq ptr %1, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @mgmt_pending_remove(ptr noundef nonnull %1) #16
  br label %50

50:                                               ; preds = %49, %47
  call void @mutex_unlock(ptr noundef %9) #16
  br label %51

51:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_connectable_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mgmt_pending_new(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @write_fast_connectable_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = tail call i32 @hci_write_fast_connectable_sync(ptr noundef %0, i1 noundef zeroext %6) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fast_connectable_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = icmp slt i32 %2, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  switch i32 %2, label %21 [
    i32 -107, label %20
    i32 -1, label %27
    i32 -22, label %14
    i32 -95, label %15
    i32 -16, label %16
    i32 -110, label %17
    i32 -12, label %18
    i32 -106, label %19
  ]

14:                                               ; preds = %13
  br label %27

15:                                               ; preds = %13
  br label %27

16:                                               ; preds = %13
  br label %27

17:                                               ; preds = %13
  br label %27

18:                                               ; preds = %13
  br label %27

19:                                               ; preds = %13
  br label %27

20:                                               ; preds = %13
  br label %27

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %7
  %23 = icmp ult i32 %2, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %26 = load i8, ptr %25, align 1
  br label %27

27:                                               ; preds = %24, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  %28 = phi i8 [ %26, %24 ], [ 3, %22 ], [ 3, %21 ], [ 14, %20 ], [ 9, %19 ], [ 7, %18 ], [ 5, %17 ], [ 10, %16 ], [ 12, %15 ], [ 13, %14 ], [ 11, %13 ]
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %9, i16 noundef zeroext %11, i16 noundef zeroext 8, i8 noundef zeroext %28) #16
  br label %48

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %34, label %37, label %36

36:                                               ; preds = %30
  tail call void @_set_bit(i32 noundef 31, ptr noundef %35) #16
  br label %38

37:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %35) #16
  br label %38

38:                                               ; preds = %37, %36
  %39 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %41 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %41, ptr %5, align 4
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %43 = load i16, ptr %42, align 8
  %44 = call i32 @mgmt_cmd_complete(ptr noundef %40, i16 noundef zeroext %43, i16 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %45 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %46 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %46, ptr %4, align 4
  %47 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %45) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %48

48:                                               ; preds = %38, %27
  call void @mgmt_pending_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_write_fast_connectable_sync(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_discoverable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_ssp_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @hci_write_ssp_mode_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %19

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %10) #16
  %12 = icmp ne i32 %11, 0
  %13 = load i8, ptr %4, align 1
  %14 = tail call i32 @hci_write_ssp_mode_sync(ptr noundef %0, i8 noundef zeroext %13) #16
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %15, i1 true, i1 %12
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %18) #16
  br label %19

19:                                               ; preds = %17, %9, %7
  %20 = phi i32 [ %8, %7 ], [ %14, %9 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_ssp_complete(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_lookup, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %8 = getelementptr inbounds %struct.cmd_lookup, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 11, ptr noundef %0) #16
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %74

14:                                               ; preds = %3
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  switch i32 %2, label %26 [
    i32 -107, label %25
    i32 -1, label %32
    i32 -22, label %19
    i32 -95, label %20
    i32 -16, label %21
    i32 -110, label %22
    i32 -12, label %23
    i32 -106, label %24
  ]

19:                                               ; preds = %18
  br label %32

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %32

22:                                               ; preds = %18
  br label %32

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  br label %32

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %16
  %28 = icmp ult i32 %2, 64
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %29, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %33 = phi i8 [ %31, %29 ], [ 3, %27 ], [ 3, %26 ], [ 14, %25 ], [ 9, %24 ], [ 7, %23 ], [ 5, %22 ], [ 10, %21 ], [ 12, %20 ], [ 13, %19 ], [ 11, %18 ]
  store i8 %33, ptr %7, align 1
  %34 = icmp eq i8 %11, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %37 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %36) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %36) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %40 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %40, ptr %5, align 4
  %41 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 4, i32 noundef 6, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %42

42:                                               ; preds = %39, %35, %32
  call void @mgmt_pending_foreach(i16 noundef zeroext 11, ptr noundef %0, ptr noundef nonnull @cmd_status_rsp, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %74

43:                                               ; preds = %14
  %44 = icmp eq i8 %11, 0
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %44, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %45) #16
  %48 = icmp eq i32 %47, 0
  call void @mgmt_pending_foreach(i16 noundef zeroext 11, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %6) #16
  br i1 %48, label %56, label %60

49:                                               ; preds = %43
  %50 = tail call i32 @_test_and_clear_bit(i32 noundef 15, ptr noundef %45) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %45) #16
  call void @mgmt_pending_foreach(i16 noundef zeroext 11, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %6) #16
  br label %56

53:                                               ; preds = %49
  %54 = tail call i32 @_test_and_clear_bit(i32 noundef 22, ptr noundef %45) #16
  %55 = icmp eq i32 %54, 0
  call void @mgmt_pending_foreach(i16 noundef zeroext 11, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %6) #16
  br i1 %55, label %60, label %56

56:                                               ; preds = %53, %52, %46
  %57 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %58 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %58, ptr %4, align 4
  %59 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %57) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %60

60:                                               ; preds = %56, %53, %46
  %61 = load ptr, ptr %6, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #16, !srcloc !10
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #16, !srcloc !11
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !12

70:                                               ; preds = %68
  call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #16
  br label %72

71:                                               ; preds = %63
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %61) #16
  br label %72

72:                                               ; preds = %71, %70, %68, %60
  %73 = call i32 @hci_update_eir_sync(ptr noundef %0) #16
  br label %74

74:                                               ; preds = %72, %42, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_write_ssp_mode_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_eir_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_clear_adv_instance(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_le_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %6, label %24, label %9

9:                                                ; preds = %2
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 8192
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #16
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @hci_remove_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %22) #16
  br label %25

24:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef 23, ptr noundef %8) #16
  br label %25

25:                                               ; preds = %24, %20, %15
  %26 = tail call i32 @hci_write_le_host_supported_sync(ptr noundef %0, i8 noundef zeroext %7, i8 noundef zeroext 0) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 8388608
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %45

41:                                               ; preds = %33
  %42 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %43

43:                                               ; preds = %41, %38
  %44 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %45

45:                                               ; preds = %43, %38
  %46 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #16
  br label %47

47:                                               ; preds = %45, %28, %25
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_le_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_lookup, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.cmd_lookup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  store ptr %0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  switch i32 %2, label %17 [
    i32 -107, label %16
    i32 -1, label %20
    i32 -22, label %10
    i32 -95, label %11
    i32 -16, label %12
    i32 -110, label %13
    i32 -12, label %14
    i32 -106, label %15
  ]

10:                                               ; preds = %9
  br label %20

11:                                               ; preds = %9
  br label %20

12:                                               ; preds = %9
  br label %20

13:                                               ; preds = %9
  br label %20

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  br label %20

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %9
  br label %20

18:                                               ; preds = %3
  %19 = icmp ult i32 %2, 64
  br i1 %19, label %22, label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %21 = phi i8 [ 11, %9 ], [ 13, %10 ], [ 12, %11 ], [ 10, %12 ], [ 5, %13 ], [ 7, %14 ], [ 9, %15 ], [ 14, %16 ], [ 3, %17 ], [ 3, %18 ]
  store i8 %21, ptr %6, align 1
  br label %26

22:                                               ; preds = %18
  %23 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr %6, align 1
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %20
  call void @mgmt_pending_foreach(i16 noundef zeroext 13, ptr noundef %0, ptr noundef nonnull @cmd_status_rsp, ptr noundef nonnull %6) #16
  br label %42

27:                                               ; preds = %22
  call void @mgmt_pending_foreach(i16 noundef zeroext 13, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %5) #16
  %28 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %29 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %29, ptr %4, align 4
  %30 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %28) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %31 = load ptr, ptr %5, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sock_common, ptr %31, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #16, !srcloc !10
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #16, !srcloc !11
  %36 = extractvalue { i32, i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp sgt i32 %36, 0
  br i1 %39, label %42, label %40, !prof !12

40:                                               ; preds = %38
  call void @refcount_warn_saturate(ptr noundef %34, i32 noundef 3) #16
  br label %42

41:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %31) #16
  br label %42

42:                                               ; preds = %41, %40, %38, %27, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disable_advertising_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_ext_adv_instance_sync(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_write_le_host_supported_sync(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_setup_ext_adv_instance_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_scan_rsp_data_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_adv_data_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_class_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 149
  %8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %7) #16
  %9 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6, %2
  %12 = tail call i32 @hci_update_class_sync(ptr noundef %0) #16
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ %9, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mgmt_class_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  switch i32 %2, label %19 [
    i32 -107, label %18
    i32 -1, label %25
    i32 -22, label %12
    i32 -95, label %13
    i32 -16, label %14
    i32 -110, label %15
    i32 -12, label %16
    i32 -106, label %17
  ]

12:                                               ; preds = %11
  br label %25

13:                                               ; preds = %11
  br label %25

14:                                               ; preds = %11
  br label %25

15:                                               ; preds = %11
  br label %25

16:                                               ; preds = %11
  br label %25

17:                                               ; preds = %11
  br label %25

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %11
  br label %25

20:                                               ; preds = %3
  %21 = icmp ult i32 %2, 64
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %24 = load i8, ptr %23, align 1
  br label %25

25:                                               ; preds = %22, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %26 = phi i8 [ %24, %22 ], [ 3, %20 ], [ 3, %19 ], [ 14, %18 ], [ 9, %17 ], [ 7, %16 ], [ 5, %15 ], [ 10, %14 ], [ 12, %13 ], [ 13, %12 ], [ 11, %11 ]
  %27 = trunc i32 %7 to i16
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  %29 = tail call i32 @mgmt_cmd_complete(ptr noundef %5, i16 noundef zeroext %27, i16 noundef zeroext %9, i8 noundef zeroext %26, ptr noundef %28, i32 noundef 3) #16
  tail call void @mgmt_pending_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_class_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_name_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = tail call i32 @hci_update_name_sync(ptr noundef %0) #16
  %9 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  %10 = load i8, ptr %3, align 2
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i8 [ %10, %7 ], [ %4, %2 ]
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 16777216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %22 = load i8, ptr %21, align 8
  %23 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %22) #16
  br label %24

24:                                               ; preds = %20, %15, %11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_name_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  switch i32 %2, label %15 [
    i32 -107, label %14
    i32 -1, label %21
    i32 -22, label %8
    i32 -95, label %9
    i32 -16, label %10
    i32 -110, label %11
    i32 -12, label %12
    i32 -106, label %13
  ]

8:                                                ; preds = %7
  br label %21

9:                                                ; preds = %7
  br label %21

10:                                               ; preds = %7
  br label %21

11:                                               ; preds = %7
  br label %21

12:                                               ; preds = %7
  br label %21

13:                                               ; preds = %7
  br label %21

14:                                               ; preds = %7
  br label %21

15:                                               ; preds = %7
  br label %21

16:                                               ; preds = %3
  %17 = icmp ult i32 %2, 64
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %20 = load i8, ptr %19, align 1
  br label %21

21:                                               ; preds = %18, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %22 = phi i8 [ %20, %18 ], [ 3, %16 ], [ 3, %15 ], [ 14, %14 ], [ 9, %13 ], [ 7, %12 ], [ 5, %11 ], [ 10, %10 ], [ 12, %9 ], [ 13, %8 ], [ 11, %7 ]
  %23 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 15, ptr noundef %0) #16
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = icmp eq i8 %22, 0
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %30 = load i16, ptr %29, align 8
  br i1 %26, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @mgmt_cmd_status(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext 15, i8 noundef zeroext %22) #16
  br label %41

33:                                               ; preds = %25
  %34 = tail call i32 @mgmt_cmd_complete(ptr noundef %28, i16 noundef zeroext %30, i16 noundef zeroext 15, i8 noundef zeroext 0, ptr noundef %5, i32 noundef 260) #16
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 8192
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i32 @hci_cmd_sync_queue(ptr noundef %0, ptr noundef nonnull @name_changed_sync, ptr noundef null, ptr noundef null) #16
  br label %41

41:                                               ; preds = %39, %33, %31
  tail call void @mgmt_pending_remove(ptr noundef %1) #16
  br label %42

42:                                               ; preds = %41, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_name_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_changed_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %4 = load i8, ptr %3, align 8
  %5 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.adv_info, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  store i16 0, ptr %13, align 2
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %18 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %17) #16
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.adv_info, ptr %5, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = tail call ptr @hci_get_next_instance(ptr noundef %0, i8 noundef zeroext %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.adv_info, ptr %22, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %26, i1 noundef zeroext true) #16
  br label %28

28:                                               ; preds = %24, %19, %7, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_next_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_schedule_adv_instance_sync(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_uuid_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_class_sync(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_uuids_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_uuid_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_class_sync(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_link_keys_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_blocked_key(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_link_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_smp_ltks_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_ltk(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hci_conn_hash_lookup_ba(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %3
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 2
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %13, ptr noundef dereferenceable(6) %2, i32 6)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %21

17:                                               ; preds = %12, %7
  %18 = load volatile ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi ptr [ %8, %16 ], [ null, %20 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_cmd_complete(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @mgmt_cmd_complete(ptr noundef %4, i16 noundef zeroext %7, i16 noundef zeroext %9, i8 noundef zeroext %1, ptr noundef %11, i32 noundef %13) #16
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @addr_cmd_complete(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @mgmt_cmd_complete(ptr noundef %4, i16 noundef zeroext %7, i16 noundef zeroext %9, i8 noundef zeroext %1, ptr noundef %11, i32 noundef 7) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @user_pairing_resp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) unnamed_addr #2 {
  %7 = alloca %struct.hci_cp_user_passkey_reply, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %6
  %19 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %20, i16 noundef zeroext %3, i8 noundef zeroext 15, ptr noundef %2, i32 noundef 7) #16
  br label %103

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.mgmt_addr_info, ptr %2, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %43, label %30

30:                                               ; preds = %40, %26
  %31 = phi ptr [ %41, %40 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.hci_conn, ptr %31, i32 0, i32 14
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.hci_conn, ptr %31, i32 0, i32 2
  %37 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %36, ptr noundef dereferenceable(6) %2, i32 6) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %68

40:                                               ; preds = %35, %30
  %41 = load volatile ptr, ptr %31, align 4
  %42 = icmp eq ptr %41, %27
  br i1 %42, label %43, label %30

43:                                               ; preds = %40, %26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %71

44:                                               ; preds = %22
  %45 = icmp ne i8 %24, 1
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %67, label %50

50:                                               ; preds = %64, %44
  %51 = phi ptr [ %65, %64 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct.hci_conn, ptr %51, i32 0, i32 14
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, -128
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hci_conn, ptr %51, i32 0, i32 3
  %57 = load i8, ptr %56, align 2
  %58 = icmp eq i8 %57, %46
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.hci_conn, ptr %51, i32 0, i32 2
  %61 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %60, ptr noundef dereferenceable(6) %2, i32 6) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %68

64:                                               ; preds = %59, %55, %50
  %65 = load volatile ptr, ptr %51, align 4
  %66 = icmp eq ptr %65, %47
  br i1 %66, label %67, label %50

67:                                               ; preds = %64, %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %71

68:                                               ; preds = %63, %39
  %69 = phi ptr [ %31, %39 ], [ %51, %63 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68, %67, %43
  %72 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %73 = load i16, ptr %72, align 8
  %74 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %73, i16 noundef zeroext %3, i8 noundef zeroext 2, ptr noundef %2, i32 noundef 7) #16
  br label %103

75:                                               ; preds = %68
  %76 = load i8, ptr %23, align 1
  %77 = add i8 %76, -1
  %78 = icmp ult i8 %77, 2
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = tail call i32 @smp_user_confirm_reply(ptr noundef nonnull %69, i16 noundef zeroext %3, i32 noundef %5) #16
  %81 = icmp eq i32 %80, 0
  %82 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %83 = load i16, ptr %82, align 8
  br i1 %81, label %84, label %86

84:                                               ; preds = %79
  %85 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %83, i16 noundef zeroext %3, i8 noundef zeroext 0, ptr noundef %2, i32 noundef 7) #16
  br label %103

86:                                               ; preds = %79
  %87 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %83, i16 noundef zeroext %3, i8 noundef zeroext 3, ptr noundef %2, i32 noundef 7) #16
  br label %103

88:                                               ; preds = %75
  %89 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext %3, ptr noundef %1, ptr noundef %2, i16 noundef zeroext 7) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %103, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %89, i32 0, i32 8
  store ptr @addr_cmd_complete, ptr %92, align 4
  %93 = icmp eq i16 %4, 1070
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #16
  %95 = getelementptr inbounds %struct.hci_cp_user_passkey_reply, ptr %7, i32 0, i32 1
  store i32 %5, ptr %95, align 1
  %96 = call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext 1070, i32 noundef 10, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #16
  br label %99

97:                                               ; preds = %91
  %98 = tail call i32 @hci_send_cmd(ptr noundef %1, i16 noundef zeroext %4, i32 noundef 6, ptr noundef %2) #16
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %96, %94 ], [ %98, %97 ]
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call void @mgmt_pending_remove(ptr noundef nonnull %89) #16
  br label %103

103:                                              ; preds = %102, %99, %88, %86, %84, %71, %18
  %104 = phi i32 [ %21, %18 ], [ %87, %86 ], [ %85, %84 ], [ %100, %102 ], [ %100, %99 ], [ %74, %71 ], [ -12, %88 ]
  call void @mutex_unlock(ptr noundef %8) #16
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_user_confirm_reply(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_bdaddr_is_paired(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_connect_acl(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_connect_le_scan(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_conn_drop(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !28
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %28 [
    i8 1, label %9
    i8 -128, label %9
    i8 -127, label %24
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 60
  %11 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %10) #16
  %12 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 12
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 31
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 16
  %20 = load i8, ptr %19, align 1, !range !16
  %21 = xor i8 %20, 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %18, %22
  br label %28

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 31
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  br label %28

28:                                               ; preds = %24, %15, %9, %6
  %29 = phi i32 [ %27, %24 ], [ %23, %15 ], [ 0, %9 ], [ 0, %6 ]
  %30 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 58
  %31 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %30) #16
  %32 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 138
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %30, i32 noundef %29) #16
  br label %37

37:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pairing_complete(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = alloca %struct.mgmt_rp_pair_device, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %6, i32 6, i1 false) #16
  %7 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %8, -128
  %12 = icmp eq i8 %10, 0
  %13 = select i1 %12, i8 1, i8 2
  %14 = select i1 %11, i8 %13, i8 0
  %15 = getelementptr inbounds %struct.mgmt_addr_info, ptr %3, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = call i32 @mgmt_cmd_complete(ptr noundef %17, i16 noundef zeroext %20, i16 noundef zeroext 25, i8 noundef zeroext %1, ptr noundef nonnull %3, i32 noundef 7) #16
  %22 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 71
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 72
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 73
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #16, !srcloc !10
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #16, !srcloc !28
  %27 = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %2
  %30 = load i8, ptr %7, align 1
  switch i8 %30, label %50 [
    i8 1, label %31
    i8 -128, label %31
    i8 -127, label %46
  ]

31:                                               ; preds = %29, %29
  %32 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 60
  %33 = call zeroext i1 @cancel_delayed_work(ptr noundef %32) #16
  %34 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 12
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 31
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 16
  %42 = load i8, ptr %41, align 1, !range !16
  %43 = xor i8 %42, 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %40, %44
  br label %50

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 31
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %46, %37, %31, %29
  %51 = phi i32 [ %49, %46 ], [ %45, %37 ], [ 0, %31 ], [ 0, %29 ]
  %52 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 58
  %53 = call zeroext i1 @cancel_delayed_work(ptr noundef %52) #16
  %54 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hci_dev, ptr %55, i32 0, i32 138
  %57 = load ptr, ptr %56, align 4
  %58 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %57, ptr noundef %52, i32 noundef %51) #16
  br label %59

59:                                               ; preds = %50, %2
  %60 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 47
  call void @_clear_bit(i32 noundef 19, ptr noundef %60) #16
  %61 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 63
  call void @put_device(ptr noundef %61) #16
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #16
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pairing_complete_cb(ptr noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 184
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %33, label %8

8:                                                ; preds = %17, %2
  %9 = phi ptr [ %18, %17 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %33, label %8

20:                                               ; preds = %13
  %21 = icmp eq ptr %9, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %9, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ult i8 %1, 64
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = zext i8 %1 to i32
  %28 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %27
  %29 = load i8, ptr %28, align 1
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i8 [ %29, %26 ], [ 3, %22 ]
  %32 = tail call i32 %24(ptr noundef nonnull %9, i8 noundef zeroext %31) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %9) #16
  br label %33

33:                                               ; preds = %30, %20, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @le_pairing_complete_cb(ptr noundef readonly %0, i8 noundef zeroext %1) #2 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 184
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %35, label %10

10:                                               ; preds = %19, %4
  %11 = phi ptr [ %20, %19 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 25
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %11, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %35, label %10

22:                                               ; preds = %15
  %23 = icmp eq ptr %11, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %11, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ult i8 %1, 64
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = zext i8 %1 to i32
  %30 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i8 [ %31, %28 ], [ 3, %24 ]
  %34 = tail call i32 %26(ptr noundef nonnull %11, i8 noundef zeroext %33) #16
  tail call void @mgmt_pending_remove(ptr noundef nonnull %11) #16
  br label %35

35:                                               ; preds = %32, %22, %19, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_security(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_link_key(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_cancel_and_remove_pairing(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_abort_conn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_params_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_local_oob_data_sync(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i1 [ false, %12 ], [ true, %7 ]
  %15 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @hci_read_local_oob_data_sync(ptr noundef %0, i1 noundef zeroext %14, ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 6
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %17 to i32
  %21 = select i1 %19, i32 %20, i32 0
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @read_local_oob_data_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_read_local_oob_data, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  switch i32 %2, label %16 [
    i32 -107, label %15
    i32 -1, label %106
    i32 -22, label %9
    i32 -95, label %10
    i32 -16, label %11
    i32 -110, label %12
    i32 -12, label %13
    i32 -106, label %14
  ]

9:                                                ; preds = %8
  br label %106

10:                                               ; preds = %8
  br label %106

11:                                               ; preds = %8
  br label %106

12:                                               ; preds = %8
  br label %106

13:                                               ; preds = %8
  br label %106

14:                                               ; preds = %8
  br label %106

15:                                               ; preds = %8
  br label %106

16:                                               ; preds = %8
  br label %106

17:                                               ; preds = %3
  %18 = icmp ult i32 %2, 64
  br i1 %18, label %19, label %106

19:                                               ; preds = %17
  %20 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %23, label %106

23:                                               ; preds = %19
  %24 = icmp eq ptr %6, null
  br i1 %24, label %106, label %25

25:                                               ; preds = %23
  %26 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = ptrtoint ptr %6 to i32
  %29 = icmp slt ptr %6, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  switch i32 %28, label %38 [
    i32 -107, label %37
    i32 -1, label %106
    i32 -22, label %31
    i32 -95, label %32
    i32 -16, label %33
    i32 -110, label %34
    i32 -12, label %35
    i32 -106, label %36
  ]

31:                                               ; preds = %30
  br label %106

32:                                               ; preds = %30
  br label %106

33:                                               ; preds = %30
  br label %106

34:                                               ; preds = %30
  br label %106

35:                                               ; preds = %30
  br label %106

36:                                               ; preds = %30
  br label %106

37:                                               ; preds = %30
  br label %106

38:                                               ; preds = %30
  br label %106

39:                                               ; preds = %27
  %40 = icmp ult ptr %6, inttoptr (i32 64 to ptr)
  br i1 %40, label %48, label %106

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp ult i8 %44, 64
  br i1 %45, label %46, label %106

46:                                               ; preds = %41
  %47 = zext i8 %44 to i32
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i32 [ %47, %46 ], [ %28, %39 ]
  %50 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %106

53:                                               ; preds = %48
  %54 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58, %53
  %64 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %65 = load i32, ptr %64, align 8
  %66 = icmp ult i32 %65, 33
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, ptr %69, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %70, i32 16, i1 false)
  %71 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, ptr %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, ptr %69, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %71, ptr noundef align 1 dereferenceable(16) %72, i32 16, i1 false)
  br label %99

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %77 = load i16, ptr %76, align 8
  %78 = tail call i32 @mgmt_cmd_status(ptr noundef %75, i16 noundef zeroext %77, i16 noundef zeroext 32, i8 noundef zeroext 3) #16
  br label %116

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  %82 = icmp ult i32 %81, 65
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %85, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef align 1 dereferenceable(16) %86, i32 16, i1 false)
  %87 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, ptr %4, i32 0, i32 1
  %88 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %85, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %87, ptr noundef align 1 dereferenceable(16) %88, i32 16, i1 false)
  %89 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, ptr %4, i32 0, i32 2
  %90 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %85, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %89, ptr noundef align 1 dereferenceable(16) %90, i32 16, i1 false)
  %91 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_data, ptr %4, i32 0, i32 3
  %92 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %85, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %91, ptr noundef align 1 dereferenceable(16) %92, i32 16, i1 false)
  br label %99

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %97 = load i16, ptr %96, align 8
  %98 = tail call i32 @mgmt_cmd_status(ptr noundef %95, i16 noundef zeroext %97, i16 noundef zeroext 32, i8 noundef zeroext 3) #16
  br label %116

99:                                               ; preds = %83, %67
  %100 = phi i32 [ 32, %67 ], [ 64, %83 ]
  %101 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %104 = load i16, ptr %103, align 8
  %105 = call i32 @mgmt_cmd_complete(ptr noundef %102, i16 noundef zeroext %104, i16 noundef zeroext 32, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef %100) #16
  br label %116

106:                                              ; preds = %48, %41, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %23, %19, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %107 = phi i8 [ %51, %48 ], [ 3, %41 ], [ 11, %30 ], [ 13, %31 ], [ 12, %32 ], [ 10, %33 ], [ 5, %34 ], [ 7, %35 ], [ 9, %36 ], [ 14, %37 ], [ 3, %38 ], [ 3, %39 ], [ 3, %23 ], [ %21, %19 ], [ 11, %8 ], [ 13, %9 ], [ 12, %10 ], [ 10, %11 ], [ 5, %12 ], [ 7, %13 ], [ 9, %14 ], [ 14, %15 ], [ 3, %16 ], [ 3, %17 ]
  %108 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %111 = load i16, ptr %110, align 8
  %112 = tail call i32 @mgmt_cmd_status(ptr noundef %109, i16 noundef zeroext %111, i16 noundef zeroext 32, i8 noundef zeroext %107) #16
  %113 = icmp eq ptr %6, null
  %114 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %115 = or i1 %113, %114
  br i1 %115, label %118, label %117

116:                                              ; preds = %99, %93, %73
  br i1 %26, label %118, label %117

117:                                              ; preds = %116, %106
  call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #16
  br label %118

118:                                              ; preds = %117, %116, %106
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_read_local_oob_data_sync(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_add_remote_oob_data(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_remote_oob_data_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_remote_oob_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_discovery_internal(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %3, i16 noundef zeroext %4) unnamed_addr #2 {
  %6 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11, %5
  %17 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %18, i16 noundef zeroext %2, i8 noundef zeroext 15, ptr noundef %3, i32 noundef 1) #16
  br label %99

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170
  %22 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 1073741824
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %31, i16 noundef zeroext %2, i8 noundef zeroext 10, ptr noundef %3, i32 noundef 1) #16
  br label %99

33:                                               ; preds = %25
  %34 = load i8, ptr %3, align 1
  switch i8 %34, label %65 [
    i8 6, label %38
    i8 7, label %47
    i8 1, label %35
  ]

35:                                               ; preds = %33
  %36 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %37 = load i8, ptr %36, align 2
  br label %56

38:                                               ; preds = %33
  %39 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %40 = load i8, ptr %39, align 2
  %41 = and i8 %40, 64
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %38
  %44 = load volatile i32, ptr %12, align 4
  %45 = and i32 %44, 8388608
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %65, label %70

47:                                               ; preds = %33
  %48 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %49 = load i8, ptr %48, align 2
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  %53 = load volatile i32, ptr %12, align 4
  %54 = and i32 %53, 8388608
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %35
  %57 = phi i8 [ %37, %35 ], [ %49, %52 ]
  %58 = and i8 %57, 32
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60, %56, %52, %47, %43, %38, %33
  %66 = phi i8 [ 11, %60 ], [ 11, %43 ], [ 13, %33 ], [ 12, %56 ], [ 11, %52 ], [ 12, %47 ], [ 12, %38 ]
  %67 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %68, i16 noundef zeroext %2, i8 noundef zeroext %66, ptr noundef %3, i32 noundef 1) #16
  br label %99

70:                                               ; preds = %60, %43
  %71 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 172
  %72 = load i8, ptr %71, align 4, !range !16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %76 = load i16, ptr %75, align 8
  %77 = tail call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %76, i16 noundef zeroext %2, i8 noundef zeroext 10, ptr noundef %3, i32 noundef 1) #16
  br label %99

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 13
  store i8 0, ptr %79, align 1
  %80 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 12
  store i8 1, ptr %80, align 8
  %81 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 15
  store i8 127, ptr %81, align 1
  %82 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 16
  store i16 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 17
  %84 = load ptr, ptr %83, align 8
  tail call void @kfree(ptr noundef %84) #16
  store ptr null, ptr %83, align 8
  %85 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 18
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 19
  store i32 0, ptr %86, align 8
  %87 = load i8, ptr %3, align 1
  %88 = zext i8 %87 to i32
  store i32 %88, ptr %21, align 8
  store i8 0, ptr %80, align 8
  %89 = icmp eq i16 %2, 65
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 14
  store i8 %90, ptr %91, align 2
  %92 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext %2, ptr noundef %1, ptr noundef %3, i16 noundef zeroext %4) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %78
  %95 = tail call i32 @hci_cmd_sync_queue(ptr noundef %1, ptr noundef nonnull @start_discovery_sync, ptr noundef nonnull %92, ptr noundef nonnull @start_discovery_complete) #16
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @mgmt_pending_remove(ptr noundef nonnull %92) #16
  br label %99

98:                                               ; preds = %94
  tail call void @hci_discovery_set_state(ptr noundef %1, i32 noundef 1) #16
  br label %99

99:                                               ; preds = %98, %97, %78, %74, %65, %29, %16
  %100 = phi i32 [ %19, %16 ], [ %32, %29 ], [ %77, %74 ], [ %95, %97 ], [ %95, %98 ], [ %69, %65 ], [ -12, %78 ]
  tail call void @mutex_unlock(ptr noundef %6) #16
  ret i32 %100
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @discovery_type_is_valid(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  switch i8 %1, label %39 [
    i8 6, label %4
    i8 7, label %16
    i8 1, label %27
  ]

4:                                                ; preds = %3
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 8388608
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 11, i8 0
  %15 = xor i1 %13, true
  br label %39

16:                                               ; preds = %3
  %17 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 8388608
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  store i8 0, ptr %2, align 1
  br label %27

27:                                               ; preds = %26, %3
  %28 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 32
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i8 11, i8 0
  %38 = xor i1 %36, true
  br label %39

39:                                               ; preds = %32, %27, %21, %16, %9, %4, %3
  %40 = phi i8 [ 12, %4 ], [ 12, %16 ], [ 11, %21 ], [ 12, %27 ], [ 13, %3 ], [ %14, %9 ], [ %37, %32 ]
  %41 = phi i1 [ false, %4 ], [ false, %16 ], [ false, %21 ], [ false, %27 ], [ false, %3 ], [ %15, %9 ], [ %38, %32 ]
  store i8 %40, ptr %2, align 1
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @start_discovery_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_start_discovery_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @start_discovery_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 35, ptr noundef %0) #16
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 65, ptr noundef %0) #16
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 58, ptr noundef %0) #16
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %42

12:                                               ; preds = %9, %6, %3
  %13 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = icmp slt i32 %2, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  switch i32 %2, label %29 [
    i32 -107, label %28
    i32 -1, label %35
    i32 -22, label %22
    i32 -95, label %23
    i32 -16, label %24
    i32 -110, label %25
    i32 -12, label %26
    i32 -106, label %27
  ]

22:                                               ; preds = %21
  br label %35

23:                                               ; preds = %21
  br label %35

24:                                               ; preds = %21
  br label %35

25:                                               ; preds = %21
  br label %35

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %21
  br label %35

28:                                               ; preds = %21
  br label %35

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %12
  %31 = icmp ult i32 %2, 64
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %34 = load i8, ptr %33, align 1
  br label %35

35:                                               ; preds = %32, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %36 = phi i8 [ %34, %32 ], [ 3, %30 ], [ 3, %29 ], [ 14, %28 ], [ 9, %27 ], [ 7, %26 ], [ 5, %25 ], [ 10, %24 ], [ 12, %23 ], [ 13, %22 ], [ 11, %21 ]
  %37 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @mgmt_cmd_complete(ptr noundef %14, i16 noundef zeroext %17, i16 noundef zeroext %19, i8 noundef zeroext %36, ptr noundef %38, i32 noundef 1) #16
  tail call void @mgmt_pending_remove(ptr noundef %1) #16
  %40 = icmp eq i32 %2, 0
  %41 = select i1 %40, i32 2, i32 0
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef %41) #16
  br label %42

42:                                               ; preds = %35, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_discovery_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_start_discovery_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stop_discovery_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_stop_discovery_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stop_discovery_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 36, ptr noundef %0) #16
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  switch i32 %2, label %23 [
    i32 -107, label %22
    i32 -1, label %29
    i32 -22, label %16
    i32 -95, label %17
    i32 -16, label %18
    i32 -110, label %19
    i32 -12, label %20
    i32 -106, label %21
  ]

16:                                               ; preds = %15
  br label %29

17:                                               ; preds = %15
  br label %29

18:                                               ; preds = %15
  br label %29

19:                                               ; preds = %15
  br label %29

20:                                               ; preds = %15
  br label %29

21:                                               ; preds = %15
  br label %29

22:                                               ; preds = %15
  br label %29

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %6
  %25 = icmp ult i32 %2, 64
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %28 = load i8, ptr %27, align 1
  br label %29

29:                                               ; preds = %26, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15
  %30 = phi i8 [ %28, %26 ], [ 3, %24 ], [ 3, %23 ], [ 14, %22 ], [ 9, %21 ], [ 7, %20 ], [ 5, %19 ], [ 10, %18 ], [ 12, %17 ], [ 13, %16 ], [ 11, %15 ]
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @mgmt_cmd_complete(ptr noundef %8, i16 noundef zeroext %11, i16 noundef zeroext %13, i8 noundef zeroext %30, ptr noundef %32, i32 noundef 1) #16
  tail call void @mgmt_pending_remove(ptr noundef %1) #16
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #16
  br label %36

36:                                               ; preds = %35, %29, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_stop_discovery_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup_unknown(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_inquiry_cache_update_resolve(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_device_id_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_adv_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = icmp eq i8 %5, 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %7, label %9, label %10

9:                                                ; preds = %2
  tail call void @_set_bit(i32 noundef 25, ptr noundef %8) #16
  br label %11

10:                                               ; preds = %2
  tail call void @_clear_bit(i32 noundef 25, ptr noundef %8) #16
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  store i16 0, ptr %12, align 2
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %17 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %16) #16
  br label %18

18:                                               ; preds = %15, %11
  br i1 %6, label %31, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 0, ptr %20, align 8
  %21 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @hci_start_ext_adv_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  br label %33

27:                                               ; preds = %19
  %28 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  %29 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext 0) #16
  %30 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0) #16
  br label %33

31:                                               ; preds = %18
  %32 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #16
  br label %33

33:                                               ; preds = %31, %27, %25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_advertising_complete(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_lookup, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %7 = getelementptr inbounds %struct.cmd_lookup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  store ptr %0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  switch i32 %2, label %17 [
    i32 -107, label %16
    i32 -1, label %20
    i32 -22, label %10
    i32 -95, label %11
    i32 -16, label %12
    i32 -110, label %13
    i32 -12, label %14
    i32 -106, label %15
  ]

10:                                               ; preds = %9
  br label %20

11:                                               ; preds = %9
  br label %20

12:                                               ; preds = %9
  br label %20

13:                                               ; preds = %9
  br label %20

14:                                               ; preds = %9
  br label %20

15:                                               ; preds = %9
  br label %20

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %9
  br label %20

18:                                               ; preds = %3
  %19 = icmp ult i32 %2, 64
  br i1 %19, label %22, label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %21 = phi i8 [ 11, %9 ], [ 13, %10 ], [ 12, %11 ], [ 10, %12 ], [ 5, %13 ], [ 7, %14 ], [ 9, %15 ], [ 14, %16 ], [ 3, %17 ], [ 3, %18 ]
  store i8 %21, ptr %6, align 1
  br label %26

22:                                               ; preds = %18
  %23 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr %6, align 1
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %20
  call void @mgmt_pending_foreach(i16 noundef zeroext 41, ptr noundef %0, ptr noundef nonnull @cmd_status_rsp, ptr noundef nonnull %6) #16
  br label %75

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef 24, ptr noundef %28) #16
  br label %34

33:                                               ; preds = %27
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %28) #16
  br label %34

34:                                               ; preds = %33, %32
  call void @mgmt_pending_foreach(i16 noundef zeroext 41, ptr noundef %0, ptr noundef nonnull @settings_rsp, ptr noundef nonnull %5) #16
  %35 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %36 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %36, ptr %4, align 4
  %37 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %35) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  %38 = load ptr, ptr %5, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sock_common, ptr %38, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !10
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #16, !srcloc !11
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %49, label %47, !prof !12

47:                                               ; preds = %45
  call void @refcount_warn_saturate(ptr noundef %41, i32 noundef 3) #16
  br label %49

48:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  call void @sk_free(ptr noundef nonnull %38) #16
  br label %49

49:                                               ; preds = %48, %47, %45, %34
  %50 = load volatile i32, ptr %28, align 4
  %51 = and i32 %50, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %75, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %59 = load i8, ptr %58, align 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load volatile ptr, ptr %54, align 4
  %63 = icmp eq ptr %62, %54
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.adv_info, ptr %62, i32 0, i32 3
  %68 = load i8, ptr %67, align 2
  br label %69

69:                                               ; preds = %66, %57
  %70 = phi i8 [ %59, %57 ], [ %68, %66 ]
  %71 = call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %70, i1 noundef zeroext true) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %74, i32 noundef %71) #16
  br label %75

75:                                               ; preds = %73, %69, %61, %53, %49, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_start_ext_adv_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_enable_advertising_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_bredr_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_write_fast_connectable_sync(ptr noundef %0, i1 noundef zeroext false) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @hci_update_scan_sync(ptr noundef %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %10 = load i8, ptr %9, align 8
  %11 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext %10) #16
  br label %12

12:                                               ; preds = %8, %5, %2
  %13 = phi i32 [ %6, %5 ], [ %11, %8 ], [ %3, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_bredr_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  switch i32 %2, label %17 [
    i32 -107, label %16
    i32 -1, label %23
    i32 -22, label %10
    i32 -95, label %11
    i32 -16, label %12
    i32 -110, label %13
    i32 -12, label %14
    i32 -106, label %15
  ]

10:                                               ; preds = %9
  br label %23

11:                                               ; preds = %9
  br label %23

12:                                               ; preds = %9
  br label %23

13:                                               ; preds = %9
  br label %23

14:                                               ; preds = %9
  br label %23

15:                                               ; preds = %9
  br label %23

16:                                               ; preds = %9
  br label %23

17:                                               ; preds = %9
  br label %23

18:                                               ; preds = %7
  %19 = icmp ult i32 %2, 64
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %22 = load i8, ptr %21, align 1
  br label %23

23:                                               ; preds = %20, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %24 = phi i8 [ %22, %20 ], [ 3, %18 ], [ 3, %17 ], [ 14, %16 ], [ 9, %15 ], [ 7, %14 ], [ 5, %13 ], [ 10, %12 ], [ 12, %11 ], [ 13, %10 ], [ 11, %9 ]
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 32, ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = tail call i32 @mgmt_cmd_status(ptr noundef %27, i16 noundef zeroext %30, i16 noundef zeroext %32, i8 noundef zeroext %24) #16
  br label %44

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %37 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = call i32 @mgmt_cmd_complete(ptr noundef %36, i16 noundef zeroext %39, i16 noundef zeroext 42, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %41 = load ptr, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %42 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %42, ptr %4, align 4
  %43 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %41) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %44

44:                                               ; preds = %34, %23
  call void @mgmt_pending_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_scan_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_secure_conn_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 16, ptr noundef %8) #16
  %9 = tail call i32 @hci_write_sc_support_sync(ptr noundef %0, i8 noundef zeroext %7) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_secure_conn_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  switch i32 %2, label %17 [
    i32 -107, label %16
    i32 -1, label %23
    i32 -22, label %10
    i32 -95, label %11
    i32 -16, label %12
    i32 -110, label %13
    i32 -12, label %14
    i32 -106, label %15
  ]

10:                                               ; preds = %9
  br label %23

11:                                               ; preds = %9
  br label %23

12:                                               ; preds = %9
  br label %23

13:                                               ; preds = %9
  br label %23

14:                                               ; preds = %9
  br label %23

15:                                               ; preds = %9
  br label %23

16:                                               ; preds = %9
  br label %23

17:                                               ; preds = %9
  br label %23

18:                                               ; preds = %7
  %19 = icmp ult i32 %2, 64
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %22 = load i8, ptr %21, align 1
  br label %23

23:                                               ; preds = %20, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %24 = phi i8 [ %22, %20 ], [ 3, %18 ], [ 3, %17 ], [ 14, %16 ], [ 9, %15 ], [ 7, %14 ], [ 5, %13 ], [ 10, %12 ], [ 12, %11 ], [ 13, %10 ], [ 11, %9 ]
  %25 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %31 = load i16, ptr %30, align 4
  %32 = tail call i32 @mgmt_cmd_status(ptr noundef %26, i16 noundef zeroext %29, i16 noundef zeroext %31, i8 noundef zeroext %24) #16
  br label %55

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 1
  switch i8 %36, label %43 [
    i8 0, label %37
    i8 1, label %39
    i8 2, label %41
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %38) #16
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %38) #16
  br label %43

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 16, ptr noundef %40) #16
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %40) #16
  br label %43

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 16, ptr noundef %42) #16
  tail call void @_set_bit(i32 noundef 17, ptr noundef %42) #16
  br label %43

43:                                               ; preds = %41, %39, %37, %33
  %44 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %48 = tail call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %48, ptr %5, align 4
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %50 = load i16, ptr %49, align 8
  %51 = call i32 @mgmt_cmd_complete(ptr noundef %45, i16 noundef zeroext %50, i16 noundef zeroext %47, i8 noundef zeroext 0, ptr noundef nonnull %5, i32 noundef 4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  %52 = load ptr, ptr %44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %53 = call fastcc i32 @get_current_settings(ptr noundef %0) #16
  store i32 %53, ptr %4, align 4
  %54 = call i32 @mgmt_send_event(i16 noundef zeroext 6, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 6, ptr noundef %52) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %55

55:                                               ; preds = %43, %23
  call void @mgmt_pending_free(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_write_sc_support_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_adv_instances_set_rpa_expired(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_smp_irks_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_add_irk(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_conn_info_sync(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mgmt_addr_info, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #16
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %7, label %11, label %26

11:                                               ; preds = %2
  br i1 %10, label %25, label %12

12:                                               ; preds = %22, %11
  %13 = phi ptr [ %23, %22 ], [ %9, %11 ]
  %14 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %4, i32 6) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %41

22:                                               ; preds = %17, %12
  %23 = load volatile ptr, ptr %13, align 4
  %24 = icmp eq ptr %23, %8
  br i1 %24, label %25, label %12

25:                                               ; preds = %22, %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %52

26:                                               ; preds = %2
  br i1 %10, label %40, label %27

27:                                               ; preds = %37, %26
  %28 = phi ptr [ %38, %37 ], [ %9, %26 ]
  %29 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 14
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, -128
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hci_conn, ptr %28, i32 0, i32 2
  %34 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %33, ptr noundef dereferenceable(6) %4, i32 6) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %41

37:                                               ; preds = %32, %27
  %38 = load volatile ptr, ptr %28, align 4
  %39 = icmp eq ptr %38, %8
  br i1 %39, label %40, label %27

40:                                               ; preds = %37, %26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %52

41:                                               ; preds = %36, %21
  %42 = phi ptr [ %13, %21 ], [ %28, %36 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 12
  %50 = load i16, ptr %49, align 4
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %95, label %52

52:                                               ; preds = %48, %44, %41, %40, %25
  %53 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %117, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #16, !srcloc !10
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #16, !srcloc !28
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 14
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %83 [
    i8 1, label %64
    i8 -128, label %64
    i8 -127, label %79
  ]

64:                                               ; preds = %61, %61
  %65 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 60
  %66 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %65) #16
  %67 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 12
  %68 = load i16, ptr %67, align 4
  %69 = icmp eq i16 %68, 1
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 31
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 16
  %75 = load i8, ptr %74, align 1, !range !16
  %76 = xor i8 %75, 1
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %73, %77
  br label %83

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 31
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  br label %83

83:                                               ; preds = %79, %70, %64, %61
  %84 = phi i32 [ %82, %79 ], [ %78, %70 ], [ 0, %64 ], [ 0, %61 ]
  %85 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 58
  %86 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %85) #16
  %87 = getelementptr inbounds %struct.hci_conn, ptr %54, i32 0, i32 65
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.hci_dev, ptr %88, i32 0, i32 138
  %90 = load ptr, ptr %89, align 4
  %91 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %90, ptr noundef %85, i32 noundef %84) #16
  br label %92

92:                                               ; preds = %83, %56
  %93 = load ptr, ptr %53, align 4
  %94 = getelementptr inbounds %struct.hci_conn, ptr %93, i32 0, i32 63
  tail call void @put_device(ptr noundef %94) #16
  store ptr null, ptr %53, align 4
  br label %117

95:                                               ; preds = %48
  %96 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 11
  %97 = load i16, ptr %96, align 2
  %98 = tail call i32 @hci_read_rssi_sync(ptr noundef %0, i16 noundef zeroext %97) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load i8, ptr %5, align 1
  %102 = add i8 %101, -1
  %103 = icmp ult i8 %102, 2
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 45
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 127
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100
  %109 = tail call i32 @hci_read_tx_power_sync(ptr noundef %0, i16 noundef zeroext %97, i8 noundef zeroext 0) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108, %104
  %112 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 46
  %113 = load i8, ptr %112, align 8
  %114 = icmp eq i8 %113, 127
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = tail call i32 @hci_read_tx_power_sync(ptr noundef %0, i16 noundef zeroext %97, i8 noundef zeroext 1) #16
  br label %117

117:                                              ; preds = %115, %111, %108, %95, %92, %52
  %118 = phi i32 [ 2, %92 ], [ 2, %52 ], [ %109, %108 ], [ %116, %115 ], [ 0, %111 ], [ %98, %95 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @get_conn_info_complete(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_get_conn_info, align 1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #16
  %9 = getelementptr inbounds i8, ptr %4, i32 7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, ptr noundef align 1 dereferenceable(7) %8, i32 7, i1 false)
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  switch i32 %2, label %19 [
    i32 -107, label %18
    i32 -1, label %35
    i32 -22, label %12
    i32 -95, label %13
    i32 -16, label %14
    i32 -110, label %15
    i32 -12, label %16
    i32 -106, label %17
  ]

12:                                               ; preds = %11
  br label %35

13:                                               ; preds = %11
  br label %35

14:                                               ; preds = %11
  br label %35

15:                                               ; preds = %11
  br label %35

16:                                               ; preds = %11
  br label %35

17:                                               ; preds = %11
  br label %35

18:                                               ; preds = %11
  br label %35

19:                                               ; preds = %11
  br label %35

20:                                               ; preds = %3
  %21 = icmp ult i32 %2, 64
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 44
  %28 = load i8, ptr %27, align 2
  %29 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %4, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 45
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %4, i32 0, i32 2
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 46
  %34 = load i8, ptr %33, align 8
  br label %39

35:                                               ; preds = %22, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %36 = phi i8 [ %24, %22 ], [ 11, %11 ], [ 13, %12 ], [ 12, %13 ], [ 10, %14 ], [ 5, %15 ], [ 7, %16 ], [ 9, %17 ], [ 14, %18 ], [ 3, %19 ], [ 3, %20 ]
  %37 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %4, i32 0, i32 1
  store i8 127, ptr %37, align 1
  %38 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %4, i32 0, i32 2
  store i8 127, ptr %38, align 1
  br label %39

39:                                               ; preds = %35, %26
  %40 = phi i8 [ 127, %35 ], [ %34, %26 ]
  %41 = phi i8 [ %36, %35 ], [ 0, %26 ]
  %42 = getelementptr inbounds %struct.mgmt_rp_get_conn_info, ptr %4, i32 0, i32 3
  store i8 %40, ptr %42, align 1
  %43 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i16
  %48 = call i32 @mgmt_cmd_complete(ptr noundef %44, i16 noundef zeroext %47, i16 noundef zeroext 49, i8 noundef zeroext %41, ptr noundef nonnull %4, i32 noundef 10) #16
  %49 = icmp eq ptr %6, null
  br i1 %49, label %88, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #16, !srcloc !10
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #16, !srcloc !28
  %53 = extractvalue { i32, i32 } %52, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %57 = load i8, ptr %56, align 1
  switch i8 %57, label %77 [
    i8 1, label %58
    i8 -128, label %58
    i8 -127, label %73
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 60
  %60 = call zeroext i1 @cancel_delayed_work(ptr noundef %59) #16
  %61 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  %62 = load i16, ptr %61, align 4
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 31
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 16
  %69 = load i8, ptr %68, align 1, !range !16
  %70 = xor i8 %69, 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %67, %71
  br label %77

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 31
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  br label %77

77:                                               ; preds = %73, %64, %58, %55
  %78 = phi i32 [ %76, %73 ], [ %72, %64 ], [ 0, %58 ], [ 0, %55 ]
  %79 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 58
  %80 = call zeroext i1 @cancel_delayed_work(ptr noundef %79) #16
  %81 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.hci_dev, ptr %82, i32 0, i32 138
  %84 = load ptr, ptr %83, align 4
  %85 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %84, ptr noundef %79, i32 noundef %78) #16
  br label %86

86:                                               ; preds = %77, %50
  %87 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 63
  call void @put_device(ptr noundef %87) #16
  br label %88

88:                                               ; preds = %86, %39
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_read_rssi_sync(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_read_tx_power_sync(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_clock_info_sync(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.hci_cp_read_clock, align 2
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %3, i8 0, i32 3, i1 false)
  %8 = call i32 @hci_read_clock_sync(ptr noundef %0, ptr noundef nonnull %3) #16
  %9 = icmp eq ptr %7, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %26, label %14

14:                                               ; preds = %23, %10
  %15 = phi ptr [ %24, %23 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.hci_conn, ptr %15, i32 0, i32 14
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_conn, ptr %15, i32 0, i32 2
  %21 = call i32 @bcmp(ptr noundef dereferenceable(6) %20, ptr noundef dereferenceable(6) %5, i32 6) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %14
  %24 = load volatile ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, %11
  br i1 %25, label %26, label %14

26:                                               ; preds = %23, %10
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  br label %41

27:                                               ; preds = %19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %28 = icmp eq ptr %15, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %6, align 4
  %31 = icmp eq ptr %15, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hci_conn, ptr %15, i32 0, i32 12
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hci_conn, ptr %15, i32 0, i32 11
  %38 = load i16, ptr %37, align 2
  store i16 %38, ptr %3, align 2
  %39 = getelementptr inbounds %struct.hci_cp_read_clock, ptr %3, i32 0, i32 1
  store i8 1, ptr %39, align 2
  %40 = call i32 @hci_read_clock_sync(ptr noundef %0, ptr noundef nonnull %3) #16
  br label %85

41:                                               ; preds = %32, %27, %26
  %42 = load ptr, ptr %6, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi ptr [ %42, %41 ], [ %30, %29 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %85, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #16, !srcloc !10
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #16, !srcloc !28
  %49 = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 14
  %53 = load i8, ptr %52, align 1
  switch i8 %53, label %73 [
    i8 1, label %54
    i8 -128, label %54
    i8 -127, label %69
  ]

54:                                               ; preds = %51, %51
  %55 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 60
  %56 = call zeroext i1 @cancel_delayed_work(ptr noundef %55) #16
  %57 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 12
  %58 = load i16, ptr %57, align 4
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 31
  %62 = load i16, ptr %61, align 2
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 16
  %65 = load i8, ptr %64, align 1, !range !16
  %66 = xor i8 %65, 1
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %63, %67
  br label %73

69:                                               ; preds = %51
  %70 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 31
  %71 = load i16, ptr %70, align 2
  %72 = zext i16 %71 to i32
  br label %73

73:                                               ; preds = %69, %60, %54, %51
  %74 = phi i32 [ %72, %69 ], [ %68, %60 ], [ 0, %54 ], [ 0, %51 ]
  %75 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 58
  %76 = call zeroext i1 @cancel_delayed_work(ptr noundef %75) #16
  %77 = getelementptr inbounds %struct.hci_conn, ptr %44, i32 0, i32 65
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.hci_dev, ptr %78, i32 0, i32 138
  %80 = load ptr, ptr %79, align 4
  %81 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %80, ptr noundef %75, i32 noundef %74) #16
  br label %82

82:                                               ; preds = %73, %46
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.hci_conn, ptr %83, i32 0, i32 63
  call void @put_device(ptr noundef %84) #16
  store ptr null, ptr %6, align 4
  br label %85

85:                                               ; preds = %82, %43, %36, %2
  %86 = phi i32 [ %40, %36 ], [ %8, %82 ], [ %8, %43 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #16
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @get_clock_info_complete(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_get_clock_info, align 1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  switch i32 %2, label %18 [
    i32 -107, label %17
    i32 -1, label %24
    i32 -22, label %11
    i32 -95, label %12
    i32 -16, label %13
    i32 -110, label %14
    i32 -12, label %15
    i32 -106, label %16
  ]

11:                                               ; preds = %10
  br label %24

12:                                               ; preds = %10
  br label %24

13:                                               ; preds = %10
  br label %24

14:                                               ; preds = %10
  br label %24

15:                                               ; preds = %10
  br label %24

16:                                               ; preds = %10
  br label %24

17:                                               ; preds = %10
  br label %24

18:                                               ; preds = %10
  br label %24

19:                                               ; preds = %3
  %20 = icmp ult i32 %2, 64
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %23 = load i8, ptr %22, align 1
  br label %24

24:                                               ; preds = %21, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10
  %25 = phi i8 [ %23, %21 ], [ 3, %19 ], [ 3, %18 ], [ 14, %17 ], [ 9, %16 ], [ 7, %15 ], [ 5, %14 ], [ 10, %13 ], [ 12, %12 ], [ 13, %11 ], [ 11, %10 ]
  %26 = getelementptr inbounds i8, ptr %4, i32 7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %26, i8 0, i32 10, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %6, i32 6, i1 false) #16
  %27 = getelementptr inbounds %struct.mgmt_addr_info, ptr %6, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.mgmt_addr_info, ptr %4, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 78
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, ptr %4, i32 0, i32 1
  store i32 %33, ptr %34, align 1
  %35 = icmp eq ptr %8, null
  br i1 %35, label %80, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 49
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, ptr %4, i32 0, i32 2
  store i32 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 50
  %41 = load i16, ptr %40, align 8
  %42 = getelementptr inbounds %struct.mgmt_rp_get_clock_info, ptr %4, i32 0, i32 3
  store i16 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #16, !srcloc !10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #16, !srcloc !28
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 14
  %49 = load i8, ptr %48, align 1
  switch i8 %49, label %69 [
    i8 1, label %50
    i8 -128, label %50
    i8 -127, label %65
  ]

50:                                               ; preds = %47, %47
  %51 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 60
  %52 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %51) #16
  %53 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 12
  %54 = load i16, ptr %53, align 4
  %55 = icmp eq i16 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 31
  %58 = load i16, ptr %57, align 2
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 16
  %61 = load i8, ptr %60, align 1, !range !16
  %62 = xor i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %59, %63
  br label %69

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 31
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %65, %56, %50, %47
  %70 = phi i32 [ %68, %65 ], [ %64, %56 ], [ 0, %50 ], [ 0, %47 ]
  %71 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 58
  %72 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %71) #16
  %73 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 65
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.hci_dev, ptr %74, i32 0, i32 138
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %76, ptr noundef %71, i32 noundef %70) #16
  br label %78

78:                                               ; preds = %69, %36
  %79 = getelementptr inbounds %struct.hci_conn, ptr %8, i32 0, i32 63
  tail call void @put_device(ptr noundef %79) #16
  br label %80

80:                                               ; preds = %78, %31, %24
  %81 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = trunc i32 %84 to i16
  %86 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %87 = load i16, ptr %86, align 4
  %88 = call i32 @mgmt_cmd_complete(ptr noundef %82, i16 noundef zeroext %85, i16 noundef zeroext %87, i8 noundef zeroext %25, ptr noundef nonnull %4, i32 noundef 17) #16
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_read_clock_sync(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add_with_flags(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_device_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_device_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_params_clear_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_generate_oob(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sock_set_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @read_local_oob_ext_data_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp slt i32 %2, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  switch i32 %2, label %15 [
    i32 -107, label %14
    i32 -1, label %21
    i32 -22, label %8
    i32 -95, label %9
    i32 -16, label %10
    i32 -110, label %11
    i32 -12, label %12
    i32 -106, label %13
  ]

8:                                                ; preds = %7
  br label %21

9:                                                ; preds = %7
  br label %21

10:                                               ; preds = %7
  br label %21

11:                                               ; preds = %7
  br label %21

12:                                               ; preds = %7
  br label %21

13:                                               ; preds = %7
  br label %21

14:                                               ; preds = %7
  br label %21

15:                                               ; preds = %7
  br label %21

16:                                               ; preds = %3
  %17 = icmp ult i32 %2, 64
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %20 = load i8, ptr %19, align 1
  br label %21

21:                                               ; preds = %18, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %22 = phi i8 [ %20, %18 ], [ 3, %16 ], [ 3, %15 ], [ 14, %14 ], [ 9, %13 ], [ 7, %12 ], [ 5, %11 ], [ 10, %10 ], [ 12, %9 ], [ 13, %8 ], [ 11, %7 ]
  %23 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 59, ptr noundef %0) #16
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %185

25:                                               ; preds = %21
  %26 = icmp eq i8 %22, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %25
  %28 = icmp eq ptr %5, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %27
  %30 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %45

31:                                               ; preds = %29
  %32 = ptrtoint ptr %5 to i32
  %33 = icmp slt ptr %5, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  switch i32 %32, label %42 [
    i32 -107, label %41
    i32 -1, label %52
    i32 -22, label %35
    i32 -95, label %36
    i32 -16, label %37
    i32 -110, label %38
    i32 -12, label %39
    i32 -106, label %40
  ]

35:                                               ; preds = %34
  br label %52

36:                                               ; preds = %34
  br label %52

37:                                               ; preds = %34
  br label %52

38:                                               ; preds = %34
  br label %52

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  br label %52

41:                                               ; preds = %34
  br label %52

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %31
  %44 = icmp ult ptr %5, inttoptr (i32 64 to ptr)
  br i1 %44, label %56, label %52

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %47, align 1
  %49 = icmp ult i8 %48, 64
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32
  br label %56

52:                                               ; preds = %45, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %27, %25
  %53 = phi i8 [ 3, %45 ], [ 11, %34 ], [ 13, %35 ], [ 12, %36 ], [ 10, %37 ], [ 5, %38 ], [ 7, %39 ], [ 9, %40 ], [ 14, %41 ], [ 3, %42 ], [ 3, %43 ], [ 3, %27 ], [ %22, %25 ]
  %54 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  br label %63

56:                                               ; preds = %50, %43
  %57 = phi i32 [ %51, %50 ], [ %32, %43 ]
  %58 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq i32 %57, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %56, %52
  %64 = phi ptr [ %55, %52 ], [ %61, %56 ]
  %65 = phi i8 [ %53, %52 ], [ %59, %56 ]
  %66 = icmp ult i8 %65, 64
  br i1 %66, label %67, label %107

67:                                               ; preds = %63
  %68 = zext i8 %65 to i32
  %69 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  br label %107

71:                                               ; preds = %56
  %72 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76, %71
  %82 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 33
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, ptr %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.hci_rp_read_local_oob_data, ptr %87, i32 0, i32 2
  br label %107

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 65
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = load volatile i32, ptr %77, align 4
  %98 = and i32 %97, 131072
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %96, i32 0, i32 1
  %101 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %96, i32 0, i32 2
  %102 = select i1 %99, ptr %100, ptr null
  %103 = select i1 %99, ptr %101, ptr null
  %104 = select i1 %99, i16 77, i16 41
  %105 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %96, i32 0, i32 3
  %106 = getelementptr inbounds %struct.hci_rp_read_local_oob_ext_data, ptr %96, i32 0, i32 4
  br label %107

107:                                              ; preds = %94, %90, %85, %81, %67, %63
  %108 = phi ptr [ %61, %85 ], [ %61, %81 ], [ %61, %94 ], [ %61, %90 ], [ %64, %63 ], [ %64, %67 ]
  %109 = phi ptr [ %88, %85 ], [ null, %81 ], [ %102, %94 ], [ null, %90 ], [ null, %63 ], [ null, %67 ]
  %110 = phi ptr [ %89, %85 ], [ null, %81 ], [ %103, %94 ], [ null, %90 ], [ null, %63 ], [ null, %67 ]
  %111 = phi ptr [ null, %85 ], [ null, %81 ], [ %105, %94 ], [ null, %90 ], [ null, %63 ], [ null, %67 ]
  %112 = phi ptr [ null, %85 ], [ null, %81 ], [ %106, %94 ], [ null, %90 ], [ null, %63 ], [ null, %67 ]
  %113 = phi i8 [ 0, %85 ], [ 3, %81 ], [ 0, %94 ], [ 3, %90 ], [ 3, %63 ], [ %70, %67 ]
  %114 = phi i16 [ 41, %85 ], [ 0, %81 ], [ %104, %94 ], [ 0, %90 ], [ 0, %63 ], [ 0, %67 ]
  %115 = add nuw nsw i16 %114, 3
  %116 = zext i16 %115 to i32
  %117 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %116, i32 noundef 3264) #17
  %118 = icmp eq ptr %117, null
  br i1 %118, label %179, label %119

119:                                              ; preds = %107
  %120 = icmp eq i16 %114, 0
  br i1 %120, label %160, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 0, i32 2
  %123 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  store i8 4, ptr %122, align 1
  %124 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 1, i32 1
  store i8 13, ptr %124, align 4
  %125 = getelementptr i8, ptr %122, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %125, ptr noundef align 1 dereferenceable(3) %123, i32 3, i1 false) #16
  %126 = icmp ne ptr %109, null
  %127 = icmp ne ptr %110, null
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = getelementptr i8, ptr %122, i32 5
  store i8 17, ptr %130, align 8
  %131 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 3
  store i8 14, ptr %131, align 1
  %132 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %132, ptr noundef nonnull align 1 dereferenceable(16) %109, i32 16, i1 false) #16
  %133 = getelementptr i8, ptr %122, i32 23
  store i8 17, ptr %133, align 2
  %134 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 9
  store i8 15, ptr %134, align 1
  %135 = getelementptr %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 9, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %135, ptr noundef nonnull align 1 dereferenceable(16) %110, i32 16, i1 false) #16
  br label %136

136:                                              ; preds = %129, %121
  %137 = phi i16 [ 41, %129 ], [ 5, %121 ]
  %138 = icmp ne ptr %111, null
  %139 = icmp ne ptr %112, null
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = add nuw nsw i16 %137, 1
  %143 = zext i16 %137 to i32
  %144 = getelementptr i8, ptr %122, i32 %143
  store i8 17, ptr %144, align 4
  %145 = or i16 %137, 2
  %146 = zext i16 %142 to i32
  %147 = getelementptr i8, ptr %122, i32 %146
  store i8 29, ptr %147, align 1
  %148 = zext i16 %145 to i32
  %149 = getelementptr i8, ptr %122, i32 %148
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %149, ptr noundef nonnull align 1 dereferenceable(16) %111, i32 16, i1 false) #16
  %150 = or i16 %137, 18
  %151 = add nuw nsw i16 %137, 19
  %152 = zext i16 %150 to i32
  %153 = getelementptr i8, ptr %122, i32 %152
  store i8 17, ptr %153, align 2
  %154 = add nuw nsw i16 %137, 20
  %155 = zext i16 %151 to i32
  %156 = getelementptr i8, ptr %122, i32 %155
  store i8 30, ptr %156, align 1
  %157 = zext i16 %154 to i32
  %158 = getelementptr i8, ptr %122, i32 %157
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %158, ptr noundef nonnull align 1 dereferenceable(16) %112, i32 16, i1 false) #16
  %159 = add nuw nsw i16 %137, 36
  br label %160

160:                                              ; preds = %141, %136, %119
  %161 = phi i16 [ 0, %119 ], [ %159, %141 ], [ %137, %136 ]
  %162 = load i8, ptr %108, align 1
  store i8 %162, ptr %117, align 64
  %163 = getelementptr inbounds %struct.mgmt_rp_read_local_oob_ext_data, ptr %117, i32 0, i32 1
  store i16 %161, ptr %163, align 1
  %164 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %167 = load i16, ptr %166, align 8
  %168 = zext i16 %161 to i32
  %169 = add nuw nsw i32 %168, 3
  %170 = tail call i32 @mgmt_cmd_complete(ptr noundef %165, i16 noundef zeroext %167, i16 noundef zeroext 59, i8 noundef zeroext %113, ptr noundef nonnull %117, i32 noundef %169) #16
  %171 = icmp slt i32 %170, 0
  %172 = icmp ne i8 %113, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %179, label %174

174:                                              ; preds = %160
  %175 = load ptr, ptr %164, align 4
  tail call void @hci_sock_set_flag(ptr noundef %175, i32 noundef 9) #16
  %176 = trunc i32 %169 to i16
  %177 = load ptr, ptr %164, align 4
  %178 = tail call i32 @mgmt_send_event(i16 noundef zeroext 34, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %117, i16 noundef zeroext %176, i32 noundef 9, ptr noundef %177) #16
  br label %179

179:                                              ; preds = %174, %160, %107
  %180 = icmp eq ptr %5, null
  %181 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %182 = or i1 %180, %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #16
  br label %184

184:                                              ; preds = %183, %179
  tail call void @kfree(ptr noundef %117) #16
  tail call void @mgmt_pending_remove(ptr noundef %1) #16
  br label %185

185:                                              ; preds = %184, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sock_clear_flag(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tlv_data_is_valid(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
  %6 = alloca [13 x i8], align 1
  br i1 %4, label %7, label %15

7:                                                ; preds = %5
  %8 = and i32 %1, 14
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i8 31, i8 28
  %11 = and i32 %1, 16
  %12 = icmp eq i32 %11, 0
  %13 = add nsw i8 %10, -3
  %14 = select i1 %12, i8 %10, i8 %13
  br label %27

15:                                               ; preds = %5
  %16 = and i32 %1, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %6, i8 0, i32 13, i1 false) #16, !annotation !8
  %19 = call zeroext i8 @eir_append_local_name(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %6) #16
  %20 = sub i8 31, %19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i8 [ %20, %18 ], [ 31, %15 ]
  %23 = and i32 %1, 32
  %24 = icmp eq i32 %23, 0
  %25 = add i8 %22, -4
  %26 = select i1 %24, i8 %22, i8 %25
  br label %27

27:                                               ; preds = %21, %7
  %28 = phi i8 [ %26, %21 ], [ %14, %7 ]
  %29 = zext i8 %3 to i32
  %30 = icmp ult i8 %28, %3
  br i1 %30, label %70, label %31

31:                                               ; preds = %27
  %32 = icmp eq i8 %3, 0
  br i1 %32, label %70, label %33

33:                                               ; preds = %31
  %34 = and i32 %1, 16
  %35 = and i32 %1, 64
  %36 = and i32 %1, 32
  %37 = icmp eq i32 %36, 0
  %38 = icmp eq i32 %35, 0
  %39 = icmp eq i32 %34, 0
  %40 = and i32 %1, 14
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %41, %4
  br label %43

43:                                               ; preds = %66, %33
  %44 = phi i32 [ 0, %33 ], [ %68, %66 ]
  %45 = getelementptr i8, ptr %2, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = add nuw nsw i32 %44, %47
  br label %66

51:                                               ; preds = %43
  %52 = add nsw i32 %44, 1
  %53 = getelementptr i8, ptr %2, i32 %52
  %54 = load i8, ptr %53, align 1
  switch i8 %54, label %63 [
    i8 1, label %55
    i8 10, label %56
    i8 9, label %57
    i8 8, label %58
    i8 25, label %59
  ]

55:                                               ; preds = %51
  br i1 %42, label %63, label %70

56:                                               ; preds = %51
  br i1 %39, label %63, label %70

57:                                               ; preds = %51
  br i1 %38, label %63, label %70

58:                                               ; preds = %51
  br i1 %38, label %63, label %70

59:                                               ; preds = %51
  %60 = add i32 %44, %47
  %61 = icmp slt i32 %60, %29
  %62 = select i1 %37, i1 %61, i1 false
  br i1 %62, label %66, label %70

63:                                               ; preds = %58, %57, %56, %55, %51
  %64 = add i32 %44, %47
  %65 = icmp slt i32 %64, %29
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %59, %49
  %67 = phi i32 [ %50, %49 ], [ %60, %59 ], [ %64, %63 ]
  %68 = add nsw i32 %67, 1
  %69 = icmp slt i32 %68, %29
  br i1 %69, label %43, label %70

70:                                               ; preds = %66, %63, %59, %58, %57, %56, %55, %31, %27
  %71 = phi i1 [ false, %27 ], [ true, %31 ], [ false, %55 ], [ false, %56 ], [ false, %57 ], [ false, %58 ], [ false, %59 ], [ false, %63 ], [ true, %66 ]
  ret i1 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_add_adv_instance(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_advertising_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %5, i1 noundef zeroext true) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @add_advertising_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_add_advertising, align 1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %4, align 1
  %8 = icmp eq i32 %2, 0
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  br i1 %8, label %35, label %16

16:                                               ; preds = %3
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  switch i32 %2, label %26 [
    i32 -107, label %25
    i32 -1, label %32
    i32 -22, label %19
    i32 -95, label %20
    i32 -16, label %21
    i32 -110, label %22
    i32 -12, label %23
    i32 -106, label %24
  ]

19:                                               ; preds = %18
  br label %32

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %32

22:                                               ; preds = %18
  br label %32

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  br label %32

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %16
  %28 = icmp ult i32 %2, 64
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %29, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %33 = phi i8 [ %31, %29 ], [ 3, %27 ], [ 3, %26 ], [ 14, %25 ], [ 9, %24 ], [ 7, %23 ], [ 5, %22 ], [ 10, %21 ], [ 12, %20 ], [ 13, %19 ], [ 11, %18 ]
  %34 = tail call i32 @mgmt_cmd_status(ptr noundef %10, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext %33) #16
  br label %37

35:                                               ; preds = %3
  %36 = call i32 @mgmt_cmd_complete(ptr noundef %10, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 1) #16
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  call fastcc void @add_adv_complete(ptr noundef %0, ptr noundef %39, i32 noundef %2)
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tlv_data_max_len(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [13 x i8], align 1
  br i1 %2, label %5, label %13

5:                                                ; preds = %3
  %6 = and i32 %1, 14
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i8 31, i8 28
  %9 = and i32 %1, 16
  %10 = icmp eq i32 %9, 0
  %11 = add nsw i8 %8, -3
  %12 = select i1 %10, i8 %8, i8 %11
  br label %25

13:                                               ; preds = %3
  %14 = and i32 %1, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %4, i8 0, i32 13, i1 false) #16, !annotation !8
  %17 = call zeroext i8 @eir_append_local_name(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %4) #16
  %18 = sub i8 31, %17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i8 [ %18, %16 ], [ 31, %13 ]
  %21 = and i32 %1, 32
  %22 = icmp eq i32 %21, 0
  %23 = add i8 %20, -4
  %24 = select i1 %22, i8 %20, i8 %23
  br label %25

25:                                               ; preds = %19, %5
  %26 = phi i8 [ %24, %19 ], [ %12, %5 ]
  ret i8 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_append_local_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_adv_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.mgmt_ev_advertising_removed, align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  br label %14

14:                                               ; preds = %35, %9
  %15 = phi ptr [ %7, %9 ], [ %16, %35 ]
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adv_info, ptr %15, i32 0, i32 2
  %18 = load i8, ptr %17, align 1, !range !16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %14
  br i1 %10, label %21, label %22

21:                                               ; preds = %20
  store i8 0, ptr %17, align 1
  br label %35

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.adv_info, ptr %15, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = load i8, ptr %11, align 8
  %26 = icmp eq i8 %25, %24
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i16, ptr %12, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i16 0, ptr %12, align 2
  %31 = call zeroext i1 @cancel_delayed_work(ptr noundef %13) #16
  br label %32

32:                                               ; preds = %30, %27, %22
  %33 = call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %24) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 %24, ptr %4, align 1
  %34 = call i32 @mgmt_send_event(i16 noundef zeroext 36, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %35

35:                                               ; preds = %32, %21, %14
  %36 = icmp eq ptr %16, %6
  br i1 %36, label %37, label %14

37:                                               ; preds = %35, %3
  call void @mutex_unlock(ptr noundef %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @remove_advertising_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %4, align 1
  %8 = tail call i32 @hci_remove_advertising_sync(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %7, i1 noundef zeroext true) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #16
  br label %16

16:                                               ; preds = %14, %10, %2
  %17 = phi i32 [ %8, %2 ], [ %15, %14 ], [ 0, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @remove_advertising_complete(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_remove_advertising, align 1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %4, align 1
  %8 = icmp eq i32 %2, 0
  %9 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  br i1 %8, label %35, label %16

16:                                               ; preds = %3
  %17 = icmp slt i32 %2, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  switch i32 %2, label %26 [
    i32 -107, label %25
    i32 -1, label %32
    i32 -22, label %19
    i32 -95, label %20
    i32 -16, label %21
    i32 -110, label %22
    i32 -12, label %23
    i32 -106, label %24
  ]

19:                                               ; preds = %18
  br label %32

20:                                               ; preds = %18
  br label %32

21:                                               ; preds = %18
  br label %32

22:                                               ; preds = %18
  br label %32

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %18
  br label %32

25:                                               ; preds = %18
  br label %32

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %16
  %28 = icmp ult i32 %2, 64
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %29, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18
  %33 = phi i8 [ %31, %29 ], [ 3, %27 ], [ 3, %26 ], [ 14, %25 ], [ 9, %24 ], [ 7, %23 ], [ 5, %22 ], [ 10, %21 ], [ 12, %20 ], [ 13, %19 ], [ 11, %18 ]
  %34 = tail call i32 @mgmt_cmd_status(ptr noundef %10, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext %33) #16
  br label %37

35:                                               ; preds = %3
  %36 = call i32 @mgmt_cmd_complete(ptr noundef %10, i16 noundef zeroext %13, i16 noundef zeroext %15, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 1) #16
  br label %37

37:                                               ; preds = %35, %32
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_advertising_sync(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @appearance_changed_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %4 = load i8, ptr %3, align 8
  %5 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.adv_info, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  store i16 0, ptr %13, align 2
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %18 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %17) #16
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.adv_info, ptr %5, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = tail call ptr @hci_get_next_instance(ptr noundef %0, i8 noundef zeroext %21) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.adv_info, ptr %22, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %26, i1 noundef zeroext true) #16
  br label %28

28:                                               ; preds = %24, %19, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_default_phy_sync(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca %struct.hci_cp_le_set_default_phy, align 1
  %4 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #16
  %6 = load i32, ptr %5, align 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false)
  %7 = and i32 %6, 10752
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 21504
  %10 = icmp eq i32 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = select i1 %8, i8 3, i8 2
  %14 = select i1 %10, i8 %13, i8 1
  store i8 %14, ptr %3, align 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = and i32 %6, 512
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 1
  store i8 1, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i8 [ 1, %18 ], [ 0, %15 ]
  %22 = and i32 %6, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 1
  %26 = or i8 %21, 2
  store i8 %26, ptr %25, align 1
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i8 [ %26, %24 ], [ %21, %20 ]
  %29 = and i32 %6, 8192
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 1
  %33 = or i8 %28, 4
  store i8 %33, ptr %32, align 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = and i32 %6, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 2
  store i8 1, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i8 [ 1, %37 ], [ 0, %34 ]
  %41 = and i32 %6, 4096
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 2
  %45 = or i8 %40, 2
  store i8 %45, ptr %44, align 1
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i8 [ %45, %43 ], [ %40, %39 ]
  %48 = and i32 %6, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %3, i32 0, i32 2
  %52 = or i8 %47, 4
  store i8 %52, ptr %51, align 1
  br label %53

53:                                               ; preds = %50, %46
  %54 = call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 8241, i32 noundef 3, ptr noundef nonnull %3, i32 noundef 200) #16
  %55 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 6
  store ptr %54, ptr %55, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @set_default_phy_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_ev_phy_configuration_changed, align 4
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  switch i32 %2, label %16 [
    i32 -107, label %15
    i32 -1, label %22
    i32 -22, label %9
    i32 -95, label %10
    i32 -16, label %11
    i32 -110, label %12
    i32 -12, label %13
    i32 -106, label %14
  ]

9:                                                ; preds = %8
  br label %22

10:                                               ; preds = %8
  br label %22

11:                                               ; preds = %8
  br label %22

12:                                               ; preds = %8
  br label %22

13:                                               ; preds = %8
  br label %22

14:                                               ; preds = %8
  br label %22

15:                                               ; preds = %8
  br label %22

16:                                               ; preds = %8
  br label %22

17:                                               ; preds = %3
  %18 = icmp ult i32 %2, 64
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %21 = load i8, ptr %20, align 1
  br label %22

22:                                               ; preds = %19, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8
  %23 = phi i8 [ %21, %19 ], [ 3, %17 ], [ 3, %16 ], [ 14, %15 ], [ 9, %14 ], [ 7, %13 ], [ 5, %12 ], [ 10, %11 ], [ 12, %10 ], [ 13, %9 ], [ 11, %8 ]
  %24 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 69, ptr noundef %0) #16
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %79

26:                                               ; preds = %22
  %27 = icmp eq i8 %23, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %26
  %29 = icmp eq ptr %6, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %28
  %31 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %46

32:                                               ; preds = %30
  %33 = ptrtoint ptr %6 to i32
  %34 = icmp slt ptr %6, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  switch i32 %33, label %43 [
    i32 -107, label %42
    i32 -1, label %67
    i32 -22, label %36
    i32 -95, label %37
    i32 -16, label %38
    i32 -110, label %39
    i32 -12, label %40
    i32 -106, label %41
  ]

36:                                               ; preds = %35
  br label %67

37:                                               ; preds = %35
  br label %67

38:                                               ; preds = %35
  br label %67

39:                                               ; preds = %35
  br label %67

40:                                               ; preds = %35
  br label %67

41:                                               ; preds = %35
  br label %67

42:                                               ; preds = %35
  br label %67

43:                                               ; preds = %35
  br label %67

44:                                               ; preds = %32
  %45 = icmp ult ptr %6, inttoptr (i32 64 to ptr)
  br i1 %45, label %53, label %67

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp ult i8 %49, 64
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = zext i8 %49 to i32
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %52, %51 ], [ %33, %44 ]
  %55 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %62 = load i16, ptr %61, align 8
  %63 = tail call i32 @mgmt_cmd_complete(ptr noundef %60, i16 noundef zeroext %62, i16 noundef zeroext 69, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0) #16
  %64 = load ptr, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %65 = tail call fastcc i32 @get_selected_phys(ptr noundef %0) #16
  store i32 %65, ptr %4, align 4
  %66 = call i32 @mgmt_send_event(i16 noundef zeroext 38, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 4, i32 noundef 0, ptr noundef %64) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br i1 %31, label %78, label %77

67:                                               ; preds = %53, %46, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %28, %26
  %68 = phi i8 [ %56, %53 ], [ 3, %46 ], [ 11, %35 ], [ 13, %36 ], [ 12, %37 ], [ 10, %38 ], [ 5, %39 ], [ 7, %40 ], [ 9, %41 ], [ 14, %42 ], [ 3, %43 ], [ 3, %44 ], [ 3, %28 ], [ %23, %26 ]
  %69 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %72 = load i16, ptr %71, align 8
  %73 = tail call i32 @mgmt_cmd_status(ptr noundef %70, i16 noundef zeroext %72, i16 noundef zeroext 69, i8 noundef zeroext %68) #16
  %74 = icmp eq ptr %6, null
  %75 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %76 = or i1 %74, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %67, %58
  call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #16
  br label %78

78:                                               ; preds = %77, %67, %58
  call void @mgmt_pending_remove(ptr noundef %1) #16
  br label %79

79:                                               ; preds = %78, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_blocked_keys_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_zero_key_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_exp_feature_changed, align 1
  %6 = alloca %struct.mgmt_rp_set_exp_feature, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %15 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %14, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %19
  %29 = tail call i32 @_test_and_clear_bit(i32 noundef 41, ptr noundef %14) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @rpa_resolution_uuid, i32 16, i1 false) #16
  %32 = getelementptr inbounds %struct.mgmt_ev_exp_feature_changed, ptr %5, i32 0, i32 1
  store i32 0, ptr %32, align 1
  %33 = call i32 @mgmt_send_event(i16 noundef zeroext 39, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 20, i32 noundef 10, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %38

34:                                               ; preds = %28
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %38

35:                                               ; preds = %24
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %38

36:                                               ; preds = %13
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %38

37:                                               ; preds = %8
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %31
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  br label %42

41:                                               ; preds = %4
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i16 [ %40, %38 ], [ -1, %41 ]
  %44 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %43, i16 noundef zeroext 74, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 20) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_rpa_resolution_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_exp_feature_changed, align 1
  %6 = alloca %struct.mgmt_rp_set_exp_feature, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 74, i8 noundef zeroext 17) #16
  br label %79

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 74, i8 noundef zeroext 11) #16
  br label %79

24:                                               ; preds = %15, %10
  %25 = icmp eq i16 %3, 17
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %28, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %79

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mgmt_cp_set_exp_feature, ptr %2, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp ult i8 %32, 2
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %36, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %79

38:                                               ; preds = %30
  %39 = icmp ne i8 %32, 0
  %40 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %39, label %41, label %44

41:                                               ; preds = %38
  %42 = tail call i32 @_test_and_set_bit(i32 noundef 41, ptr noundef %40) #16
  %43 = icmp eq i32 %42, 0
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %40) #16
  br label %47

44:                                               ; preds = %38
  %45 = tail call i32 @_test_and_clear_bit(i32 noundef 41, ptr noundef %40) #16
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ %43, %41 ], [ %46, %44 ]
  %49 = phi i32 [ 3, %41 ], [ 2, %44 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) @rpa_resolution_uuid, i32 16, i1 false)
  %50 = getelementptr inbounds %struct.mgmt_rp_set_exp_feature, ptr %6, i32 0, i32 1
  store i32 %49, ptr %50, align 1
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  %51 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %52 = load i16, ptr %51, align 8
  %53 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %52, i16 noundef zeroext 74, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 20) #16
  br i1 %48, label %54, label %79

54:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @rpa_resolution_uuid, i32 16, i1 false) #16
  %55 = zext i1 %39 to i32
  %56 = or i32 %55, 2
  %57 = getelementptr inbounds %struct.mgmt_ev_exp_feature_changed, ptr %5, i32 0, i32 1
  store i32 %56, ptr %57, align 1
  br i1 %39, label %58, label %75

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  %60 = load i8, ptr %59, align 2
  %61 = and i8 %60, 64
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 27, i32 39
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 207
  call void @_set_bit(i32 noundef 1, ptr noundef %74) #16
  br label %77

75:                                               ; preds = %68, %63, %58, %54
  %76 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 207
  call void @_clear_bit(i32 noundef 1, ptr noundef %76) #16
  br label %77

77:                                               ; preds = %75, %73
  %78 = call i32 @mgmt_send_event(i16 noundef zeroext 39, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 20, i32 noundef 10, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  br label %79

79:                                               ; preds = %77, %47, %34, %26, %20, %8
  %80 = phi i32 [ %29, %26 ], [ %37, %34 ], [ %23, %20 ], [ %9, %8 ], [ %53, %77 ], [ %53, %47 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_quality_report_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_exp_feature_changed, align 1
  %6 = alloca %struct.mgmt_rp_set_exp_feature, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 74, i8 noundef zeroext 17) #16
  br label %63

10:                                               ; preds = %4
  %11 = icmp eq i16 %3, 17
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %63

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mgmt_cp_set_exp_feature, ptr %2, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %63

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %25) #16
  %26 = load i8, ptr %17, align 1
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i32
  %29 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %30 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = lshr i32 %31, 12
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, %28
  %35 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 239
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %40, i16 noundef zeroext 74, i8 noundef zeroext 12) #16
  br label %61

42:                                               ; preds = %24
  br i1 %34, label %53, label %43

43:                                               ; preds = %42
  %44 = tail call i32 %36(ptr noundef nonnull %1, i1 noundef zeroext %27) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %48 = load i16, ptr %47, align 8
  %49 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %48, i16 noundef zeroext 74, i8 noundef zeroext 3) #16
  br label %61

50:                                               ; preds = %43
  br i1 %27, label %51, label %52

51:                                               ; preds = %50
  tail call void @_set_bit(i32 noundef 44, ptr noundef %29) #16
  br label %53

52:                                               ; preds = %50
  tail call void @_clear_bit(i32 noundef 44, ptr noundef %29) #16
  br label %53

53:                                               ; preds = %52, %51, %42
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) @quality_report_uuid, i32 16, i1 false)
  %54 = getelementptr inbounds %struct.mgmt_rp_set_exp_feature, ptr %6, i32 0, i32 1
  store i32 %28, ptr %54, align 1
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  %55 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %56 = load i16, ptr %55, align 8
  %57 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %56, i16 noundef zeroext 74, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 20) #16
  br i1 %34, label %61, label %58

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @quality_report_uuid, i32 16, i1 false) #16
  %59 = getelementptr inbounds %struct.mgmt_ev_exp_feature_changed, ptr %5, i32 0, i32 1
  store i32 %28, ptr %59, align 1
  %60 = call i32 @mgmt_send_event(i16 noundef zeroext 39, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 20, i32 noundef 10, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  br label %61

61:                                               ; preds = %58, %53, %46, %38
  %62 = phi i32 [ %49, %46 ], [ %57, %58 ], [ %57, %53 ], [ %41, %38 ]
  call void @mutex_unlock(ptr noundef %25) #16
  br label %63

63:                                               ; preds = %61, %20, %12, %8
  %64 = phi i32 [ %15, %12 ], [ %23, %20 ], [ %62, %61 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_offload_codec_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_exp_feature_changed, align 1
  %6 = alloca %struct.mgmt_rp_set_exp_feature, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 74, i8 noundef zeroext 17) #16
  br label %54

10:                                               ; preds = %4
  %11 = icmp eq i16 %3, 17
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %54

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mgmt_cp_set_exp_feature, ptr %2, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %54

24:                                               ; preds = %16
  %25 = icmp ne i8 %18, 0
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %28 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = lshr i32 %29, 13
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, %26
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 240
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %38, i16 noundef zeroext 74, i8 noundef zeroext 12) #16
  br label %54

40:                                               ; preds = %24
  br i1 %32, label %44, label %41

41:                                               ; preds = %40
  br i1 %25, label %42, label %43

42:                                               ; preds = %41
  tail call void @_set_bit(i32 noundef 45, ptr noundef %27) #16
  br label %44

43:                                               ; preds = %41
  tail call void @_clear_bit(i32 noundef 45, ptr noundef %27) #16
  br label %44

44:                                               ; preds = %43, %42, %40
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %46 = xor i32 %31, %26
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.22, ptr noundef %45, i32 noundef %26, i32 noundef %46) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) @offload_codecs_uuid, i32 16, i1 false)
  %47 = getelementptr inbounds %struct.mgmt_rp_set_exp_feature, ptr %6, i32 0, i32 1
  store i32 %26, ptr %47, align 1
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext 74, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 20) #16
  br i1 %32, label %54, label %51

51:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @offload_codecs_uuid, i32 16, i1 false) #16
  %52 = getelementptr inbounds %struct.mgmt_ev_exp_feature_changed, ptr %5, i32 0, i32 1
  store i32 %26, ptr %52, align 1
  %53 = call i32 @mgmt_send_event(i16 noundef zeroext 39, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 20, i32 noundef 10, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  br label %54

54:                                               ; preds = %51, %44, %36, %20, %12, %8
  %55 = phi i32 [ %15, %12 ], [ %23, %20 ], [ %39, %36 ], [ %9, %8 ], [ %50, %51 ], [ %50, %44 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_le_simultaneous_roles_func(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #2 {
  %5 = alloca %struct.mgmt_ev_exp_feature_changed, align 1
  %6 = alloca %struct.mgmt_rp_set_exp_feature, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext -1, i16 noundef zeroext 74, i8 noundef zeroext 17) #16
  br label %65

10:                                               ; preds = %4
  %11 = icmp eq i16 %3, 17
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %14, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %65

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mgmt_cp_set_exp_feature, ptr %2, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %22, i16 noundef zeroext 74, i8 noundef zeroext 13) #16
  br label %65

24:                                               ; preds = %16
  %25 = icmp ne i8 %18, 0
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %28 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = lshr i32 %29, 14
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, %26
  %33 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %24
  %38 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 72
  %41 = icmp eq i8 %40, 72
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 26, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %37, %24
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = tail call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext 74, i8 noundef zeroext 12) #16
  br label %65

51:                                               ; preds = %42
  br i1 %32, label %55, label %52

52:                                               ; preds = %51
  br i1 %25, label %53, label %54

53:                                               ; preds = %52
  tail call void @_set_bit(i32 noundef 46, ptr noundef %27) #16
  br label %55

54:                                               ; preds = %52
  tail call void @_clear_bit(i32 noundef 46, ptr noundef %27) #16
  br label %55

55:                                               ; preds = %54, %53, %51
  %56 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 2
  %57 = xor i32 %31, %26
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.23, ptr noundef %56, i32 noundef %26, i32 noundef %57) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(16) @le_simultaneous_roles_uuid, i32 16, i1 false)
  %58 = getelementptr inbounds %struct.mgmt_rp_set_exp_feature, ptr %6, i32 0, i32 1
  store i32 %26, ptr %58, align 1
  tail call void @hci_sock_set_flag(ptr noundef %0, i32 noundef 10) #16
  %59 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %60, i16 noundef zeroext 74, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 20) #16
  br i1 %32, label %65, label %62

62:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) @le_simultaneous_roles_uuid, i32 16, i1 false) #16
  %63 = getelementptr inbounds %struct.mgmt_ev_exp_feature_changed, ptr %5, i32 0, i32 1
  store i32 %26, ptr %63, align 1
  %64 = call i32 @mgmt_send_event(i16 noundef zeroext 39, ptr noundef nonnull %1, i16 noundef zeroext 3, ptr noundef nonnull %5, i16 noundef zeroext 20, i32 noundef 10, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  br label %65

65:                                               ; preds = %62, %55, %47, %20, %12, %8
  %66 = phi i32 [ %15, %12 ], [ %23, %20 ], [ %50, %47 ], [ %9, %8 ], [ %61, %62 ], [ %61, %55 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__add_adv_patterns_monitor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6) unnamed_addr #2 {
  %8 = alloca %struct.mgmt_ev_adv_monitor_added, align 2
  %9 = alloca %struct.mgmt_rp_add_adv_patterns_monitor, align 2
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #16
  %12 = icmp eq i8 %3, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %7
  %14 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 13, ptr noundef %1) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  %17 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 82, ptr noundef %1) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %16
  %20 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 86, ptr noundef %1) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = tail call ptr @mgmt_pending_find(i16 noundef zeroext 3, i16 noundef zeroext 83, ptr noundef %1) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = tail call ptr @mgmt_pending_add(ptr noundef %0, i16 noundef zeroext %6, ptr noundef %1, ptr noundef %4, i16 noundef zeroext %5) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %26, i32 0, i32 7
  store ptr %2, ptr %29, align 4
  %30 = call zeroext i1 @hci_add_adv_monitor(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10) #16
  %31 = load i32, ptr %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = and i32 %31, -17
  %35 = icmp eq i32 %34, -28
  %36 = icmp eq i32 %31, -22
  %37 = select i1 %36, i8 13, i8 3
  %38 = select i1 %35, i8 7, i8 %37
  call void @mgmt_pending_remove(ptr noundef nonnull %26) #16
  br label %52

39:                                               ; preds = %28
  br i1 %30, label %51, label %40

40:                                               ; preds = %39
  call void @mgmt_pending_remove(ptr noundef nonnull %26) #16
  %41 = getelementptr inbounds %struct.adv_monitor, ptr %2, i32 0, i32 2
  %42 = load i16, ptr %41, align 4
  store i16 %42, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #16
  store i16 %42, ptr %8, align 2
  %43 = call i32 @mgmt_send_event(i16 noundef zeroext 43, ptr noundef %1, i16 noundef zeroext 3, ptr noundef nonnull %8, i16 noundef zeroext 2, i32 noundef 0, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #16
  %44 = getelementptr inbounds %struct.adv_monitor, ptr %2, i32 0, i32 3
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 219
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %45, align 4
  call void @mutex_unlock(ptr noundef %11) #16
  %48 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = call i32 @mgmt_cmd_complete(ptr noundef %0, i16 noundef zeroext %49, i16 noundef zeroext %6, i8 noundef zeroext 0, ptr noundef nonnull %9, i32 noundef 2) #16
  br label %57

51:                                               ; preds = %39
  call void @mutex_unlock(ptr noundef %11) #16
  br label %57

52:                                               ; preds = %33, %25, %22, %19, %16, %13, %7
  %53 = phi i8 [ %3, %7 ], [ %38, %33 ], [ 10, %22 ], [ 10, %19 ], [ 10, %16 ], [ 10, %13 ], [ 7, %25 ]
  call void @hci_free_adv_monitor(ptr noundef %1, ptr noundef %2) #16
  call void @mutex_unlock(ptr noundef %11) #16
  %54 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 4
  %55 = load i16, ptr %54, align 8
  %56 = call i32 @mgmt_cmd_status(ptr noundef %0, i16 noundef zeroext %55, i16 noundef zeroext %6, i8 noundef zeroext %53) #16
  br label %57

57:                                               ; preds = %52, %51, %40
  %58 = phi i32 [ %56, %52 ], [ 0, %51 ], [ %50, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #16
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_add_adv_monitor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_adv_monitor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_remove_single_adv_monitor(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_remove_all_adv_monitor(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_ext_adv_params_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %5) #16
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @add_ext_adv_params_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_ev_advertising_removed, align 1
  %5 = alloca [13 x i8], align 1
  %6 = alloca %struct.mgmt_rp_add_ext_adv_params, align 4
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = load i8, ptr %8, align 1
  %11 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %10) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %8, align 1
  store i8 %14, ptr %6, align 4
  %15 = getelementptr inbounds %struct.adv_info, ptr %11, i32 0, i32 12
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %6, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.mgmt_cp_add_ext_adv_params, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 1
  %20 = and i32 %19, 14
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i8 31, i8 28
  %23 = and i32 %19, 16
  %24 = icmp eq i32 %23, 0
  %25 = add nsw i8 %22, -3
  %26 = select i1 %24, i8 %22, i8 %25
  %27 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %6, i32 0, i32 2
  store i8 %26, ptr %27, align 2
  %28 = and i32 %19, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false) #16, !annotation !8
  %31 = call zeroext i8 @eir_append_local_name(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0) #16
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #16
  %32 = sub i8 31, %31
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi i8 [ %32, %30 ], [ 31, %13 ]
  %35 = and i32 %19, 32
  %36 = icmp eq i32 %35, 0
  %37 = add i8 %34, -4
  %38 = select i1 %36, i8 %34, i8 %37
  %39 = getelementptr inbounds %struct.mgmt_rp_add_ext_adv_params, ptr %6, i32 0, i32 3
  store i8 %38, ptr %39, align 1
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.adv_info, ptr %11, i32 0, i32 2
  %43 = load i8, ptr %42, align 1, !range !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 %48, ptr %4, align 1
  %49 = call i32 @mgmt_send_event(i16 noundef zeroext 36, ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %4, i16 noundef zeroext 1, i32 noundef 0, ptr noundef %47) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i8, ptr %8, align 1
  %52 = call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %51) #16
  %53 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i16
  %58 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = icmp slt i32 %2, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  switch i32 %2, label %69 [
    i32 -107, label %68
    i32 -1, label %75
    i32 -22, label %62
    i32 -95, label %63
    i32 -16, label %64
    i32 -110, label %65
    i32 -12, label %66
    i32 -106, label %67
  ]

62:                                               ; preds = %61
  br label %75

63:                                               ; preds = %61
  br label %75

64:                                               ; preds = %61
  br label %75

65:                                               ; preds = %61
  br label %75

66:                                               ; preds = %61
  br label %75

67:                                               ; preds = %61
  br label %75

68:                                               ; preds = %61
  br label %75

69:                                               ; preds = %61
  br label %75

70:                                               ; preds = %50
  %71 = icmp ult i32 %2, 64
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %74 = load i8, ptr %73, align 1
  br label %75

75:                                               ; preds = %72, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61
  %76 = phi i8 [ %74, %72 ], [ 3, %70 ], [ 3, %69 ], [ 14, %68 ], [ 9, %67 ], [ 7, %66 ], [ 5, %65 ], [ 10, %64 ], [ 12, %63 ], [ 13, %62 ], [ 11, %61 ]
  %77 = call i32 @mgmt_cmd_status(ptr noundef %54, i16 noundef zeroext %57, i16 noundef zeroext %59, i8 noundef zeroext %76) #16
  br label %87

78:                                               ; preds = %33
  %79 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = call i32 @mgmt_cmd_complete(ptr noundef %80, i16 noundef zeroext %83, i16 noundef zeroext %85, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 4) #16
  br label %87

87:                                               ; preds = %78, %75, %3
  %88 = icmp eq ptr %1, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %87
  call void @mgmt_pending_free(ptr noundef nonnull %1) #16
  br label %90

90:                                               ; preds = %89, %87
  call void @mutex_unlock(ptr noundef %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_set_adv_instance_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @add_ext_adv_data_sync(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  %9 = load i8, ptr %4, align 1
  br i1 %8, label %20, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext %9) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i8, ptr %4, align 1
  %15 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8, ptr %4, align 1
  %19 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %18) #16
  br label %22

20:                                               ; preds = %2
  %21 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %9, i1 noundef zeroext true) #16
  br label %22

22:                                               ; preds = %20, %17, %13, %10
  %23 = phi i32 [ %19, %17 ], [ %21, %20 ], [ %11, %10 ], [ %15, %13 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @add_ext_adv_data_complete(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.mgmt_rp_add_advertising, align 1
  %5 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %7 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @add_adv_complete(ptr noundef %0, ptr noundef %8, i32 noundef %2)
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr %4, align 1
  %10 = icmp eq i32 %2, 0
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.mgmt_pending_cmd, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  br i1 %10, label %36, label %17

17:                                               ; preds = %3
  %18 = icmp slt i32 %2, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  switch i32 %2, label %27 [
    i32 -107, label %26
    i32 -1, label %33
    i32 -22, label %20
    i32 -95, label %21
    i32 -16, label %22
    i32 -110, label %23
    i32 -12, label %24
    i32 -106, label %25
  ]

20:                                               ; preds = %19
  br label %33

21:                                               ; preds = %19
  br label %33

22:                                               ; preds = %19
  br label %33

23:                                               ; preds = %19
  br label %33

24:                                               ; preds = %19
  br label %33

25:                                               ; preds = %19
  br label %33

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %17
  %29 = icmp ult i32 %2, 64
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = getelementptr [64 x i8], ptr @mgmt_status_table, i32 0, i32 %2
  %32 = load i8, ptr %31, align 1
  br label %33

33:                                               ; preds = %30, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19
  %34 = phi i8 [ %32, %30 ], [ 3, %28 ], [ 3, %27 ], [ 14, %26 ], [ 9, %25 ], [ 7, %24 ], [ 5, %23 ], [ 10, %22 ], [ 12, %21 ], [ 13, %20 ], [ 11, %19 ]
  %35 = tail call i32 @mgmt_cmd_status(ptr noundef %11, i16 noundef zeroext %14, i16 noundef zeroext %16, i8 noundef zeroext %34) #16
  br label %38

36:                                               ; preds = %3
  %37 = call i32 @mgmt_cmd_complete(ptr noundef %11, i16 noundef zeroext %14, i16 noundef zeroext %16, i8 noundef zeroext 0, ptr noundef nonnull %4, i32 noundef 1) #16
  br label %38

38:                                               ; preds = %36, %33
  call void @mgmt_pending_free(ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_enable_ext_advertising_sync(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @service_cache_off(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 1240
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -1820
  %7 = tail call i32 @hci_cmd_sync_queue(ptr noundef %6, ptr noundef nonnull @service_cache_sync, ptr noundef null, ptr noundef null) #16
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpa_expired(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -624
  tail call void @_set_bit(i32 noundef 20, ptr noundef %2) #16
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16777216
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -3684
  %8 = tail call i32 @hci_cmd_sync_queue(ptr noundef %7, ptr noundef nonnull @rpa_expired_sync, ptr noundef null, ptr noundef null) #16
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @service_cache_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = tail call i32 @hci_update_eir_sync(ptr noundef %0) #16
  %4 = tail call i32 @hci_update_class_sync(ptr noundef %0) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpa_expired_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %9 = load i8, ptr %8, align 8
  %10 = tail call i32 @hci_start_ext_adv_sync(ptr noundef %0, i8 noundef zeroext %9) #16
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0) #16
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %10, %7 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }

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
!9 = !{i64 2148393282}
!10 = !{i64 790216, i64 2148280187, i64 2148280213, i64 2148280260, i64 2148280282, i64 2148280310, i64 2148280330}
!11 = !{i64 2148295417, i64 2148295449, i64 2148295478, i64 2148295512, i64 2148295543, i64 2148295566}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149242345}
!14 = !{i64 2148293060, i64 2148293092, i64 2148293121, i64 2148293155, i64 2148293186, i64 2148293209}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{i64 2149182239}
!18 = !{i64 1685663, i64 1685686, i64 1685706, i64 1685730, i64 1685746}
!19 = !{i64 2149170181}
!20 = !{i64 2149170256, i64 2149170283, i64 2149170330, i64 2149170352, i64 2149170380, i64 2149170400}
!21 = !{i64 2149219842}
!22 = !{i64 2149292712}
!23 = !{i64 2149292929}
!24 = !{i64 2148291602, i64 2148291628, i64 2148291657, i64 2148291691, i64 2148291722, i64 2148291745}
!25 = !{i32 0, i32 4}
!26 = !{i64 2150828023}
!27 = !{i64 2148392281}
!28 = !{i64 2148294643, i64 2148294675, i64 2148294704, i64 2148294738, i64 2148294769, i64 2148294792}
!29 = !{i64 2148392484}
