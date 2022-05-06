; ModuleID = '/llk/IR/net/bluetooth/hci_sync.c_pt.bc'
source_filename = "../net/bluetooth/hci_sync.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_sync_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_sync_sk\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_sync_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_sync\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_cmd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_cmd_sync\22\09\09\09\09\09"
module asm "__kstrtabns_hci_cmd_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_sync_ev:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_sync_ev\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_sync_ev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_sync_status_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_sync_status_sk\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_sync_status_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_sync_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_sync_status\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_sync_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_cmd_sync_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_cmd_sync_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_hci_cmd_sync_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_cmd_sync_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_cmd_sync_queue\22\09\09\09\09\09"
module asm "__kstrtabns_hci_cmd_sync_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hci_init_stage = type { ptr }
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.114, %union.anon.115, [48 x i8], %union.anon.116, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.118, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.114 = type { ptr }
%union.anon.115 = type { i64 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i32, ptr }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.120, i32, i32, i32, i16, i16, %union.anon.122, %union.anon.123, %union.anon.124, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.120 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hci_command_hdr = type <{ i16, i8 }>
%struct.sock_common = type { %union.anon.11, %union.anon.13, %union.anon.14, i16, i8, i8, i32, %union.anon.16, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.95, [0 x i32], %union.anon.96, i16, i16, %union.anon.97, %struct.refcount_struct, [0 x i32], %union.anon.98 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.53 }
%union.anon.53 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { i32 }
%union.anon.96 = type { %struct.hlist_node }
%union.anon.97 = type { i32 }
%union.anon.98 = type { i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hci_cmd_sync_work_entry = type { %struct.list_head, ptr, ptr, ptr }
%struct.hci_cp_write_eir = type { i8, [240 x i8] }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_le_set_ext_adv_params = type <{ i8, i16, [3 x i8], [3 x i8], i8, i8, i8, %struct.bdaddr_t, i8, i8, i8, i8, i8, i8, i8 }>
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.hci_cp_le_set_ext_adv_enable = type { i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_set_rand_addr = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_set_scan_rsp_data = type { i8, [31 x i8] }
%struct.anon.137 = type { %struct.hci_cp_le_set_ext_scan_rsp_data, [251 x i8] }
%struct.hci_cp_le_set_ext_scan_rsp_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_set_adv_param = type <{ i16, i16, i8, i8, i8, %struct.bdaddr_t, i8, i8 }>
%struct.hci_cp_le_set_adv_data = type { i8, [31 x i8] }
%struct.anon.138 = type { %struct.hci_cp_le_set_ext_adv_data, [251 x i8] }
%struct.hci_cp_le_set_ext_adv_data = type { i8, i8, i8, i8, [0 x i8] }
%struct.hci_cp_read_rssi = type { i16 }
%struct.hci_cp_read_tx_power = type <{ i16, i8 }>
%struct.hci_cp_le_del_from_accept_list = type { i8, %struct.bdaddr_t }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.hci_cp_write_le_host_supported = type { i8, i8 }
%struct.hci_cp_write_page_scan_activity = type { i16, i16 }
%struct.hci_cp_write_local_name = type { [248 x i8] }
%struct.hci_cp_delete_stored_link_key = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_read_stored_link_key = type { %struct.bdaddr_t, i8 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.hci_cp_remote_name_req_cancel = type { %struct.bdaddr_t }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.hci_cp_write_current_iac_lap = type { i8, [6 x i8] }
%struct.hci_cp_inquiry = type { [3 x i8], i8, i8 }
%struct.hci_cp_set_event_filter = type { i8, i8, %struct.anon.139 }
%struct.anon.139 = type { %struct.bdaddr_t, i8 }
%struct.bdaddr_list_with_flags = type { %struct.list_head, %struct.bdaddr_t, i8, [1 x i32] }
%struct.hci_cp_reject_sync_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_reject_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_disconn_phy_link = type { i8, i8 }
%struct.hci_cp_disconnect = type <{ i16, i8 }>
%struct.hci_cp_le_ext_create_conn = type { i8, i8, i8, %struct.bdaddr_t, i8, [0 x i8] }
%struct.hci_cp_le_ext_conn_param = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hci_cp_le_create_conn = type <{ i16, i16, i8, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16 }>
%struct.hci_cp_le_set_ext_scan_enable = type { i8, i8, i16, i16 }
%struct.hci_cp_le_set_scan_enable = type { i8, i8 }
%struct.hci_cp_le_set_scan_param = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_cp_le_set_ext_scan_params = type { i8, i8, i8, [0 x i8] }
%struct.hci_cp_le_scan_phy_params = type <{ i8, i16, i16 }>
%struct.hci_cp_le_set_privacy_mode = type { i8, %struct.bdaddr_t, i8 }
%struct.hci_cp_le_add_to_accept_list = type { i8, %struct.bdaddr_t }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.hci_cp_le_del_from_resolv_list = type { i8, %struct.bdaddr_t }
%struct.hci_cp_le_add_to_resolv_list = type { i8, %struct.bdaddr_t, [16 x i8], [16 x i8] }
%struct.hci_cp_read_local_ext_features = type { i8 }
%struct.hci_cp_write_def_link_policy = type { i16 }
%struct.hci_cp_write_def_err_data_reporting = type { i8 }
%struct.hci_cp_le_write_def_data_len = type { i16, i16 }
%struct.hci_cp_le_set_default_phy = type { i8, i8, i8 }

@__kstrtab___hci_cmd_sync_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_sync_sk = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_sync_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_sync_sk to i32), ptr @__kstrtab___hci_cmd_sync_sk, ptr @__kstrtabns___hci_cmd_sync_sk }, section "___ksymtab+__hci_cmd_sync_sk", align 4
@__kstrtab___hci_cmd_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_sync = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_sync to i32), ptr @__kstrtab___hci_cmd_sync, ptr @__kstrtabns___hci_cmd_sync }, section "___ksymtab+__hci_cmd_sync", align 4
@__kstrtab_hci_cmd_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_cmd_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_cmd_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_cmd_sync to i32), ptr @__kstrtab_hci_cmd_sync, ptr @__kstrtabns_hci_cmd_sync }, section "___ksymtab+hci_cmd_sync", align 4
@__kstrtab___hci_cmd_sync_ev = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_sync_ev = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_sync_ev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_sync_ev to i32), ptr @__kstrtab___hci_cmd_sync_ev, ptr @__kstrtabns___hci_cmd_sync_ev }, section "___ksymtab+__hci_cmd_sync_ev", align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Opcode 0x%4x failed: %ld\0A\00", align 1
@__kstrtab___hci_cmd_sync_status_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_sync_status_sk = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_sync_status_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_sync_status_sk to i32), ptr @__kstrtab___hci_cmd_sync_status_sk, ptr @__kstrtabns___hci_cmd_sync_status_sk }, section "___ksymtab+__hci_cmd_sync_status_sk", align 4
@__kstrtab___hci_cmd_sync_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_sync_status = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_sync_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_sync_status to i32), ptr @__kstrtab___hci_cmd_sync_status, ptr @__kstrtabns___hci_cmd_sync_status }, section "___ksymtab+__hci_cmd_sync_status", align 4
@hci_cmd_sync_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"&hdev->cmd_sync_work_lock\00", align 1
@__kstrtab_hci_cmd_sync_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_cmd_sync_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_cmd_sync_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_cmd_sync_cancel to i32), ptr @__kstrtab_hci_cmd_sync_cancel, ptr @__kstrtabns_hci_cmd_sync_cancel }, section "___ksymtab+hci_cmd_sync_cancel", align 4
@__kstrtab_hci_cmd_sync_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_cmd_sync_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_cmd_sync_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_cmd_sync_queue to i32), ptr @__kstrtab_hci_cmd_sync_queue, ptr @__kstrtabns_hci_cmd_sync_queue }, section "___ksymtab+hci_cmd_sync_queue", align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: failed to generate new RPA\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: stop background scanning failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: start background scanning failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.5 = private unnamed_addr constant [44 x i8] c"%s: no memory for command (opcode 0x%4.4x)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: Unable to disable scanning: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: disable scanning failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s: pause advertising failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s: Unable to disable LL privacy: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: Unable to enable LL privacy: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%s: Unable to remove from allow list: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s: Unable to add to resolve list: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"%s: Unable to set privacy mode: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"%s: Unable to add to allow list: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"local-bd-address\00", align 1
@amp_init1 = internal unnamed_addr constant [6 x %struct.hci_init_stage] [%struct.hci_init_stage { ptr @hci_read_local_version_sync }, %struct.hci_init_stage { ptr @hci_read_local_cmds_sync }, %struct.hci_init_stage { ptr @hci_read_local_amp_info_sync }, %struct.hci_init_stage { ptr @hci_read_data_block_size_sync }, %struct.hci_init_stage { ptr @hci_read_flow_control_mode_sync }, %struct.hci_init_stage { ptr @hci_read_location_data_sync }], align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: Unknown device type %d\0A\00", align 1
@__const.hci_inquiry_sync.giac = private unnamed_addr constant [3 x i8] c"3\8B\9E", align 1
@__const.hci_inquiry_sync.liac = private unnamed_addr constant [3 x i8] c"\00\8B\9E", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"%s: Unable to disable Address Resolution: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___hci_cmd_sync, ptr @__ksymtab___hci_cmd_sync_ev, ptr @__ksymtab___hci_cmd_sync_sk, ptr @__ksymtab___hci_cmd_sync_status, ptr @__ksymtab___hci_cmd_sync_status_sk, ptr @__ksymtab_hci_cmd_sync, ptr @__ksymtab_hci_cmd_sync_cancel, ptr @__ksymtab_hci_cmd_sync_queue], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca %struct.hci_request, align 4
  %9 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !8
  call void @hci_req_init(ptr noundef nonnull %8, ptr noundef %0) #9
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.hci_request, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %7
  %15 = add i32 %2, 11
  %16 = call ptr @__alloc_skb(i32 noundef %15, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 8
  store ptr %24, ptr %22, align 8
  %25 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 3) #9
  store i16 %1, ptr %25, align 1
  %26 = trunc i32 %2 to i8
  %27 = getelementptr inbounds %struct.hci_command_hdr, ptr %25, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 1 %3, i32 %2, i1 false) #9
  br label %31

31:                                               ; preds = %29, %18
  %32 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3
  store i8 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 12
  store i16 %1, ptr %33, align 4
  %34 = icmp eq ptr %6, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 8
  store ptr %6, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #9, !srcloc !9
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #9, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41, !prof !11

41:                                               ; preds = %35
  %42 = add i32 %39, 1
  %43 = or i32 %42, %39
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %50, label %45, !prof !12

45:                                               ; preds = %41, %35
  %46 = phi i32 [ 2, %35 ], [ 1, %41 ]
  call void @refcount_warn_saturate(ptr noundef %37, i32 noundef %46) #9
  br label %50

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 2
  %49 = zext i16 %1 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %48, i32 noundef %49) #9
  store i32 -12, ptr %11, align 4
  br label %58

50:                                               ; preds = %45, %41, %31
  %51 = getelementptr inbounds %struct.hci_request, ptr %8, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 14
  %56 = load i8, ptr %55, align 2
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 2
  br label %61

58:                                               ; preds = %47, %7
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  store i32 1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.hci_request, ptr %8, i32 0, i32 1
  br label %99

61:                                               ; preds = %54, %50
  %62 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 15
  store i8 %4, ptr %62, align 1
  call void @skb_queue_tail(ptr noundef %51, ptr noundef nonnull %16) #9
  %63 = load i32, ptr %11, align 4
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  store i32 1, ptr %64, align 4
  %65 = load ptr, ptr %8, align 4
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %61
  %68 = load ptr, ptr %51, align 4
  %69 = icmp eq ptr %68, %51
  br i1 %69, label %104, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.hci_request, ptr %8, i32 0, i32 1, i32 0, i32 0, i32 1
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %51
  %74 = select i1 %73, ptr null, ptr %72
  %75 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 16
  store ptr @hci_cmd_sync_complete, ptr %75, align 8
  %76 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 14
  %77 = load i8, ptr %76, align 2
  %78 = or i8 %77, 2
  store i8 %78, ptr %76, align 2
  %79 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 161, i32 2
  %80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %79) #9
  %81 = load ptr, ptr %51, align 4
  %82 = icmp eq ptr %81, %51
  br i1 %82, label %94, label %83

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 161
  %85 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 161, i32 0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %71, align 4
  %88 = getelementptr inbounds %struct.anon, ptr %81, i32 0, i32 1
  store volatile ptr %86, ptr %88, align 4
  store volatile ptr %81, ptr %86, align 8
  store volatile ptr %84, ptr %87, align 8
  store volatile ptr %87, ptr %85, align 4
  %89 = getelementptr inbounds %struct.hci_request, ptr %8, i32 0, i32 1, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 161, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %90
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %83, %70
  call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %80) #9
  %95 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 138
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.hci_dev, ptr %65, i32 0, i32 153
  %98 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %96, ptr noundef %97) #9
  br label %107

99:                                               ; preds = %61, %58
  %100 = phi ptr [ %60, %58 ], [ %51, %61 ]
  %101 = phi ptr [ %59, %58 ], [ %64, %61 ]
  call void @skb_queue_purge(ptr noundef %100) #9
  %102 = load i32, ptr %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %67
  %105 = phi i32 [ %102, %99 ], [ -61, %67 ]
  %106 = inttoptr i32 %105 to ptr
  br label %172

107:                                              ; preds = %99, %94
  %108 = phi ptr [ %64, %94 ], [ %101, %99 ]
  %109 = load i32, ptr %108, align 4
  %110 = icmp ne i32 %109, 1
  %111 = icmp eq i32 %5, 0
  %112 = and i1 %111, %110
  %113 = select i1 %112, i32 1, i32 %5
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %110, i1 true, i1 %114
  br i1 %115, label %144, label %116

116:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %9, i32 noundef 0) #9
  %117 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 164
  %118 = call i32 @prepare_to_wait_event(ptr noundef %117, ptr noundef nonnull %9, i32 noundef 1) #9
  %119 = load i32, ptr %108, align 4
  %120 = icmp ne i32 %119, 1
  %121 = and i1 %120, %111
  %122 = select i1 %121, i32 1, i32 %5
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %120, i1 true, i1 %123
  br i1 %124, label %140, label %125

125:                                              ; preds = %129, %116
  %126 = phi i32 [ %137, %129 ], [ %122, %116 ]
  %127 = phi i32 [ %131, %129 ], [ %118, %116 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = call i32 @schedule_timeout(i32 noundef %126) #9
  %131 = call i32 @prepare_to_wait_event(ptr noundef %117, ptr noundef nonnull %9, i32 noundef 1) #9
  %132 = load i32, ptr %108, align 4
  %133 = icmp ne i32 %132, 1
  %134 = xor i1 %133, true
  %135 = icmp ne i32 %130, 0
  %136 = select i1 %134, i1 true, i1 %135
  %137 = select i1 %136, i32 %130, i32 1
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %133, i1 true, i1 %138
  br i1 %139, label %140, label %125

140:                                              ; preds = %129, %116
  %141 = phi i32 [ %122, %116 ], [ %137, %129 ]
  call void @finish_wait(ptr noundef %117, ptr noundef nonnull %9) #9
  br label %142

142:                                              ; preds = %140, %125
  %143 = phi i32 [ %141, %140 ], [ %127, %125 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #9
  br label %144

144:                                              ; preds = %142, %107
  %145 = phi i32 [ %113, %107 ], [ %143, %142 ]
  %146 = icmp eq i32 %145, -512
  br i1 %146, label %172, label %147

147:                                              ; preds = %144
  %148 = load i32, ptr %108, align 4
  switch i32 %148, label %149 [
    i32 0, label %153
    i32 2, label %158
  ]

149:                                              ; preds = %147
  store i32 0, ptr %108, align 4
  %150 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 0, ptr %150, align 8
  %151 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 167
  %152 = load ptr, ptr %151, align 4
  store ptr null, ptr %151, align 4
  br label %168

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  %155 = load i32, ptr %154, align 8
  %156 = trunc i32 %155 to i16
  %157 = call i32 @bt_to_errno(i16 noundef zeroext %156) #9
  br label %161

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  %160 = load i32, ptr %159, align 8
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i32 [ %160, %158 ], [ %157, %153 ]
  %163 = sub i32 0, %162
  store i32 0, ptr %108, align 4
  %164 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 0, ptr %164, align 8
  %165 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 167
  %166 = load ptr, ptr %165, align 4
  store ptr null, ptr %165, align 4
  %167 = icmp slt i32 %163, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161, %149
  %169 = phi ptr [ %152, %149 ], [ %166, %161 ]
  %170 = phi i32 [ -110, %149 ], [ %163, %161 ]
  call void @kfree_skb_reason(ptr noundef %169, i32 noundef 0) #9
  %171 = inttoptr i32 %170 to ptr
  br label %172

172:                                              ; preds = %168, %161, %144, %104
  %173 = phi ptr [ %106, %104 ], [ %171, %168 ], [ %166, %161 ], [ inttoptr (i32 -4 to ptr), %144 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  ret ptr %173
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_to_errno(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %4, ptr noundef null)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_cmd_sync(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %11) #9
  %12 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %4, ptr noundef null) #9
  tail call void @mutex_unlock(ptr noundef %11) #9
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ inttoptr (i32 -100 to ptr), %5 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__hci_cmd_sync_ev(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef null)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_cmd_sync_status_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %12 = zext i16 %1 to i32
  %13 = ptrtoint ptr %8 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %12, i32 noundef %13) #9
  br label %21

14:                                               ; preds = %7
  %15 = icmp eq ptr %8, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #9
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %16, %14, %10
  %22 = phi i32 [ %13, %10 ], [ %20, %16 ], [ 0, %14 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_cmd_sync_status(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i8 noundef zeroext 0, i32 noundef %4, ptr noundef null) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %10 = zext i16 %1 to i32
  %11 = ptrtoint ptr %6 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %10, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %5
  %13 = icmp eq ptr %6, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %8
  %20 = phi i32 [ %11, %8 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_cmd_sync_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143
  store i32 -32, ptr %2, align 8
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143, i32 2
  store ptr @hci_cmd_sync_work, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 145
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @hci_cmd_sync_init.__key) #9
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 146
  store i32 -32, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 146, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 146, i32 1, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 146, i32 2
  store ptr @hci_cmd_sync_cancel_work, ptr %12, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_sync_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1712
  %3 = getelementptr i8, ptr %0, i32 24
  tail call void @mutex_lock(ptr noundef %3) #9
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  %7 = icmp eq ptr %5, null
  %8 = or i1 %6, %7
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 460
  br label %11

11:                                               ; preds = %31, %9
  %12 = phi ptr [ %5, %9 ], [ %32, %31 ]
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %3) #9
  %17 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef %10) #9
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %21(ptr noundef %2, ptr noundef %23) #9
  %25 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = load ptr, ptr %22, align 4
  tail call void %26(ptr noundef %2, ptr noundef %29, i32 noundef %24) #9
  br label %30

30:                                               ; preds = %28, %20
  tail call void @mutex_unlock(ptr noundef %10) #9
  br label %31

31:                                               ; preds = %30, %11
  tail call void @kfree(ptr noundef nonnull %12) #9
  tail call void @mutex_lock(ptr noundef %3) #9
  %32 = load volatile ptr, ptr %4, align 4
  %33 = icmp eq ptr %32, %4
  %34 = icmp eq ptr %32, null
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %11

36:                                               ; preds = %31, %1
  tail call void @mutex_unlock(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_sync_cancel_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 108
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #9
  %4 = getelementptr i8, ptr %0, i32 152
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #9
  %6 = getelementptr i8, ptr %0, i32 -192
  store volatile i32 1, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 436
  tail call void @__wake_up(ptr noundef %7, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_cmd_sync_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %23, label %7

7:                                                ; preds = %17, %1
  %8 = phi ptr [ %9, %17 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void %11(ptr noundef %0, ptr noundef %15, i32 noundef -125) #9
  %16 = load ptr, ptr %8, align 4
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %16, %13 ], [ %9, %7 ]
  %19 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %8) #9
  %22 = icmp eq ptr %9, %4
  br i1 %22, label %23, label %7

23:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__hci_cmd_sync_cancel(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 %1, ptr %7, align 8
  store i32 2, ptr %3, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 150
  %9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 151
  %11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  store volatile i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 164
  tail call void @__wake_up(ptr noundef %13, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_cmd_sync_cancel(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 %1, ptr %7, align 8
  store i32 2, ptr %3, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 146
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %10) #9
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_cmd_sync_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 20) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %6, i32 0, i32 2
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %6, i32 0, i32 3
  store ptr %3, ptr %11, align 8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 145
  tail call void @mutex_lock(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %6, ptr %14, align 4
  store ptr %13, ptr %6, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %6, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %12) #9
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %19) #9
  br label %21

21:                                               ; preds = %8, %4
  %22 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_eir_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_eir, align 1
  call void @llvm.lifetime.start.p0(i64 241, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %8, align 4
  %23 = and i32 %22, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(241) %2, i8 0, i32 241, i1 false)
  %26 = getelementptr inbounds %struct.hci_cp_write_eir, ptr %2, i32 0, i32 1
  call void @eir_create(ptr noundef %0, ptr noundef %26) #9
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 15
  %28 = call i32 @bcmp(ptr noundef dereferenceable(240) %26, ptr noundef dereferenceable(240) %27, i32 240)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(240) %27, ptr noundef align 1 dereferenceable(240) %26, i32 240, i1 false)
  %31 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3154, i32 noundef 241, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %35 = ptrtoint ptr %31 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %34, i32 noundef 3154, i32 noundef %35) #9
  br label %43

36:                                               ; preds = %30
  %37 = icmp eq ptr %31, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %31, i32 noundef 0) #9
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %38, %36, %33, %25, %21, %17, %12, %7, %1
  %44 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 0, %12 ], [ 0, %17 ], [ 0, %21 ], [ 0, %25 ], [ %35, %33 ], [ %42, %38 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 241, ptr nonnull %2) #9
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eir_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_class_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %63, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %63

12:                                               ; preds = %7
  %13 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %63, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 19
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr %2, align 1
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 18
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %21
  %31 = phi ptr [ %36, %30 ], [ %28, %21 ]
  %32 = phi i8 [ %35, %30 ], [ 0, %21 ]
  %33 = getelementptr inbounds %struct.bt_uuid, ptr %31, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, %32
  %36 = load ptr, ptr %31, align 4
  %37 = icmp eq ptr %36, %27
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %21
  %39 = phi i8 [ 0, %21 ], [ %35, %30 ]
  %40 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %39, ptr %40, align 1
  %41 = load volatile i32, ptr %8, align 4
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = or i8 %25, 32
  store i8 %45, ptr %26, align 1
  br label %46

46:                                               ; preds = %44, %38
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  %48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %2, ptr noundef dereferenceable(3) %47, i32 3)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3108, i32 noundef 3, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %55 = ptrtoint ptr %51 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %54, i32 noundef 3108, i32 noundef %55) #9
  br label %63

56:                                               ; preds = %50
  %57 = icmp eq ptr %51, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = load i8, ptr %60, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %51, i32 noundef 0) #9
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %58, %56, %53, %46, %17, %12, %7, %1
  %64 = phi i32 [ 0, %7 ], [ 0, %1 ], [ 0, %12 ], [ 0, %17 ], [ 0, %46 ], [ %55, %53 ], [ %62, %58 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  br i1 %2, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 64
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i8 [ 1, %19 ], [ 3, %14 ]
  store i8 %21, ptr %3, align 1
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %23 = call i32 @bcmp(ptr noundef dereferenceable(6) %22, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1048576
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %25, %20
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 220
  %32 = tail call i32 @smp_generate_rpa(ptr noundef %0, ptr noundef %31, ptr noundef %22) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2, ptr noundef %35) #9
  br label %74

36:                                               ; preds = %30
  %37 = tail call fastcc i32 @hci_set_random_addr_sync(ptr noundef %0, ptr noundef %22)
  br label %74

38:                                               ; preds = %4
  br i1 %1, label %39, label %49

39:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false), !annotation !8
  %40 = getelementptr inbounds [6 x i8], ptr %6, i32 0, i32 5
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  br label %42

42:                                               ; preds = %42, %39
  call void @get_random_bytes(ptr noundef nonnull %6, i32 noundef 6) #9
  %43 = load i8, ptr %40, align 1
  %44 = and i8 %43, 63
  store i8 %44, ptr %40, align 1
  %45 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %42, label %47

47:                                               ; preds = %42
  store i8 1, ptr %3, align 1
  %48 = call fastcc i32 @hci_set_random_addr_sync(ptr noundef %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #9
  br label %74

49:                                               ; preds = %38
  %50 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %7, i8 0, i64 6, i1 false)
  %56 = call i32 @bcmp(ptr noundef dereferenceable(6) %55, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %50, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false)
  %64 = call i32 @bcmp(ptr noundef dereferenceable(6) %63, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %54, %49
  store i8 1, ptr %3, align 1
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  %68 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  %69 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %67, ptr noundef dereferenceable(6) %68, i32 6)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @hci_set_random_addr_sync(ptr noundef %0, ptr noundef %67)
  br label %74

73:                                               ; preds = %62, %58
  store i8 0, ptr %3, align 1
  br label %74

74:                                               ; preds = %73, %71, %66, %47, %36, %34, %25
  %75 = phi i32 [ %32, %34 ], [ %48, %47 ], [ %72, %71 ], [ 0, %73 ], [ 0, %25 ], [ %37, %36 ], [ 0, %66 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_generate_rpa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_random_addr_sync(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %28, label %11

11:                                               ; preds = %25, %7
  %12 = phi ptr [ %26, %25 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -128
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 12
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 5
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 47
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20, %16, %11
  %26 = load volatile ptr, ptr %12, align 4
  %27 = icmp eq ptr %26, %8
  br i1 %27, label %28, label %11

28:                                               ; preds = %25, %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %32

29:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %30 = icmp eq ptr %12, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29, %2
  tail call void @_set_bit(i32 noundef 20, ptr noundef %3) #9
  br label %45

32:                                               ; preds = %29, %28
  %33 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8197, i32 noundef 6, ptr noundef %1, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %37 = ptrtoint ptr %33 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %36, i32 noundef 8197, i32 noundef %37) #9
  br label %45

38:                                               ; preds = %32
  %39 = icmp eq ptr %33, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #9
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %38, %35, %31
  %46 = phi i32 [ 0, %31 ], [ %37, %35 ], [ %44, %40 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_le_set_ext_adv_params, align 1
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %3, i8 0, i32 25, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %218, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.adv_info, ptr %9, i32 0, i32 2
  %13 = load i8, ptr %12, align 1, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hci_disable_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %218

18:                                               ; preds = %15, %11, %2
  %19 = phi ptr [ %9, %15 ], [ %9, %11 ], [ null, %2 ]
  %20 = tail call i32 @hci_adv_instance_flags(ptr noundef %0, i8 noundef zeroext %1) #9
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i1 [ true, %18 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %30
  br i1 %26, label %40, label %35

35:                                               ; preds = %34
  %36 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %218, label %52

40:                                               ; preds = %34
  %41 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, 64
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %218, label %45

45:                                               ; preds = %40
  %46 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 32
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %218, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %28, %32
  br i1 %51, label %74, label %65

52:                                               ; preds = %35
  %53 = icmp eq i32 %28, %32
  br i1 %53, label %74, label %61

54:                                               ; preds = %30
  br i1 %26, label %55, label %58

55:                                               ; preds = %54
  %56 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 4
  %57 = load i8, ptr %56, align 1
  br label %65

58:                                               ; preds = %54
  %59 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %60 = load i8, ptr %59, align 1
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i8 [ %60, %58 ], [ %37, %52 ]
  %63 = and i8 %62, 2
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %218, label %74

65:                                               ; preds = %55, %50
  %66 = phi i8 [ %57, %55 ], [ %42, %50 ]
  %67 = and i8 %66, 8
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %218, label %69

69:                                               ; preds = %65
  %70 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %218, label %74

74:                                               ; preds = %69, %61, %52, %50, %25
  %75 = xor i1 %26, true
  %76 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %77, 262144
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load volatile i32, ptr %76, align 4
  %82 = and i32 %81, 524288
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = and i32 %20, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load volatile i32, ptr %76, align 4
  %89 = and i32 %88, 32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %87, %80, %74
  %93 = phi i1 [ true, %91 ], [ false, %74 ], [ true, %80 ], [ false, %87 ]
  %94 = call i32 @hci_get_random_address(ptr noundef %0, i1 noundef zeroext %75, i1 noundef zeroext %93, ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %218, label %96

96:                                               ; preds = %92
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %3, i8 0, i32 25, i1 false)
  br i1 %7, label %114, label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 13
  %99 = load i32, ptr %98, align 4
  %100 = trunc i32 %99 to i8
  %101 = lshr i32 %99, 8
  %102 = trunc i32 %101 to i8
  %103 = lshr i32 %99, 16
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 14
  %106 = load i32, ptr %105, align 4
  %107 = trunc i32 %106 to i8
  %108 = lshr i32 %106, 8
  %109 = trunc i32 %108 to i8
  %110 = lshr i32 %106, 16
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 12
  %113 = load i8, ptr %112, align 1
  br label %125

114:                                              ; preds = %96
  %115 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 44
  %116 = load i16, ptr %115, align 4
  %117 = trunc i16 %116 to i8
  %118 = lshr i16 %116, 8
  %119 = trunc i16 %118 to i8
  %120 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 45
  %121 = load i16, ptr %120, align 2
  %122 = trunc i16 %121 to i8
  %123 = lshr i16 %121, 8
  %124 = trunc i16 %123 to i8
  br label %125

125:                                              ; preds = %114, %97
  %126 = phi i8 [ %117, %114 ], [ %100, %97 ]
  %127 = phi i8 [ %119, %114 ], [ %102, %97 ]
  %128 = phi i8 [ 0, %114 ], [ %104, %97 ]
  %129 = phi i8 [ %122, %114 ], [ %107, %97 ]
  %130 = phi i8 [ %124, %114 ], [ %109, %97 ]
  %131 = phi i8 [ 0, %114 ], [ %111, %97 ]
  %132 = phi i8 [ 127, %114 ], [ %113, %97 ]
  %133 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2
  store i8 %126, ptr %133, align 1
  %134 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2, i32 1
  store i8 %127, ptr %134, align 1
  %135 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 2, i32 2
  store i8 %128, ptr %135, align 1
  %136 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3
  store i8 %129, ptr %136, align 1
  %137 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3, i32 1
  store i8 %130, ptr %137, align 1
  %138 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 3, i32 2
  store i8 %131, ptr %138, align 1
  %139 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 9
  store i8 %132, ptr %139, align 1
  %140 = and i32 %20, 896
  %141 = icmp eq i32 %140, 0
  br i1 %26, label %142, label %146

142:                                              ; preds = %125
  %143 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 1
  br i1 %141, label %145, label %144

144:                                              ; preds = %142
  store i16 1, ptr %143, align 1
  br label %159

145:                                              ; preds = %142
  store i16 19, ptr %143, align 1
  br label %159

146:                                              ; preds = %125
  %147 = call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %0, i8 noundef zeroext %1) #9
  %148 = xor i1 %147, true
  %149 = and i32 %20, 65536
  %150 = icmp eq i32 %149, 0
  %151 = select i1 %148, i1 %150, i1 false
  %152 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 1
  br i1 %151, label %156, label %153

153:                                              ; preds = %146
  br i1 %141, label %155, label %154

154:                                              ; preds = %153
  store i16 2, ptr %152, align 1
  br label %159

155:                                              ; preds = %153
  store i16 18, ptr %152, align 1
  br label %159

156:                                              ; preds = %146
  br i1 %141, label %158, label %157

157:                                              ; preds = %156
  store i16 0, ptr %152, align 1
  br label %159

158:                                              ; preds = %156
  store i16 16, ptr %152, align 1
  br label %159

159:                                              ; preds = %158, %157, %155, %154, %145, %144
  %160 = load i8, ptr %5, align 1
  %161 = icmp eq i8 %160, 3
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 7
  %164 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 6
  call void @hci_copy_identity_address(ptr noundef %0, ptr noundef %163, ptr noundef %164) #9
  %165 = load i8, ptr %5, align 1
  br label %166

166:                                              ; preds = %162, %159
  %167 = phi i8 [ %165, %162 ], [ %160, %159 ]
  %168 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 5
  store i8 %167, ptr %168, align 1
  %169 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  %170 = load i8, ptr %169, align 1
  %171 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 4
  store i8 %170, ptr %171, align 1
  store i8 %1, ptr %3, align 1
  %172 = and i32 %20, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 10
  store i8 1, ptr %175, align 1
  br label %182

176:                                              ; preds = %166
  %177 = and i32 %20, 512
  %178 = icmp eq i32 %177, 0
  %179 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 10
  br i1 %178, label %181, label %180

180:                                              ; preds = %176
  store i8 3, ptr %179, align 1
  br label %182

181:                                              ; preds = %176
  store i8 1, ptr %179, align 1
  br label %182

182:                                              ; preds = %181, %180, %174
  %183 = phi i8 [ 3, %180 ], [ 1, %181 ], [ 2, %174 ]
  %184 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %3, i32 0, i32 12
  store i8 %183, ptr %184, align 1
  %185 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8246, i32 noundef 25, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %186 = icmp ugt ptr %185, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %189 = ptrtoint ptr %185 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %188, i32 noundef 8246, i32 noundef %189) #9
  br label %197

190:                                              ; preds = %182
  %191 = icmp eq ptr %185, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.sk_buff, ptr %185, i32 0, i32 17
  %194 = load ptr, ptr %193, align 4
  %195 = load i8, ptr %194, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %185, i32 noundef 0) #9
  %196 = zext i8 %195 to i32
  br label %197

197:                                              ; preds = %192, %187
  %198 = phi i32 [ %189, %187 ], [ %196, %192 ]
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %197, %190
  %201 = load i8, ptr %5, align 1
  %202 = and i8 %201, -3
  %203 = icmp eq i8 %202, 1
  br i1 %203, label %204, label %218

204:                                              ; preds = %200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %205 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %204
  br i1 %7, label %212, label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.adv_info, ptr %19, i32 0, i32 15
  %210 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %209, i32 6)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %216

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  %214 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %4, ptr noundef dereferenceable(6) %213, i32 6)
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %212, %208
  %217 = call fastcc i32 @hci_set_adv_set_random_addr_sync(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %4)
  br label %218

218:                                              ; preds = %216, %212, %208, %204, %200, %197, %92, %69, %65, %61, %45, %40, %35, %15, %8
  %219 = phi i32 [ %217, %216 ], [ -22, %8 ], [ %16, %15 ], [ %94, %92 ], [ %198, %197 ], [ 0, %208 ], [ 0, %212 ], [ 0, %200 ], [ 0, %204 ], [ -1, %35 ], [ -1, %45 ], [ -1, %40 ], [ -1, %61 ], [ -1, %69 ], [ -1, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %3) #9
  ret i32 %219
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_disable_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds i8, ptr %3, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %13, i8 0, i32 3, i1 false)
  %14 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  %15 = icmp ne i8 %1, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  store i8 0, ptr %3, align 1
  store i8 %1, ptr %14, align 1
  %18 = select i1 %15, i32 6, i32 2
  %19 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef %18, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %23 = ptrtoint ptr %19 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %22, i32 noundef 8249, i32 noundef %23) #9
  br label %31

24:                                               ; preds = %12
  %25 = icmp eq ptr %19, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #9
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %24, %21, %8, %5
  %32 = phi i32 [ 0, %8 ], [ %23, %21 ], [ %30, %26 ], [ 0, %24 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_adv_instance_flags(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_get_connectable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_random_address(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_adv_instance_is_scannable(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_adv_set_random_addr_sync(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_le_set_adv_set_rand_addr, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #9
  %5 = icmp eq i8 %1, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @hci_set_random_addr_sync(ptr noundef %0, ptr noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6, %3
  store i8 %1, ptr %4, align 1
  %10 = getelementptr inbounds %struct.hci_cp_le_set_adv_set_rand_addr, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %10, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #9
  %11 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8245, i32 noundef 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef 8245, i32 noundef %15) #9
  br label %23

16:                                               ; preds = %9
  %17 = icmp eq ptr %11, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %18, %16, %13, %6
  %24 = phi i32 [ %7, %6 ], [ %15, %13 ], [ %22, %18 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #9
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_le_set_scan_rsp_data, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1)
  br label %42

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %16 = getelementptr inbounds %struct.hci_cp_le_set_scan_rsp_data, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i64 32, i1 false) #9
  %17 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %16) #9
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 212
  %19 = load i8, ptr %18, align 8
  %20 = icmp eq i8 %19, %17
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = zext i8 %17 to i32
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 211
  %24 = call i32 @bcmp(ptr %16, ptr %23, i32 %22) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21, %15
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 211
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(31) %27, ptr noundef align 1 dereferenceable(31) %16, i32 31, i1 false) #9
  store i8 %17, ptr %18, align 8
  store i8 %17, ptr %3, align 1
  %28 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8201, i32 noundef 32, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %32 = ptrtoint ptr %28 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %31, i32 noundef 8201, i32 noundef %32) #9
  br label %40

33:                                               ; preds = %26
  %34 = icmp eq ptr %28, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = load i8, ptr %37, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #9
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %35, %33, %30, %21
  %41 = phi i32 [ 0, %21 ], [ %32, %30 ], [ %39, %35 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %42

42:                                               ; preds = %40, %13, %2
  %43 = phi i32 [ %14, %13 ], [ %41, %40 ], [ 0, %2 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.137, align 1
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.anon.137, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i64 255, i1 false)
  %5 = call zeroext i8 @eir_create_scan_rsp(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 212
  %7 = load i8, ptr %6, align 8
  %8 = zext i8 %5 to i32
  %9 = icmp eq i8 %7, %5
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 211
  %12 = call i32 @bcmp(ptr %4, ptr %11, i32 %8)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 211
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %4, i32 %8, i1 false)
  store i8 %5, ptr %6, align 8
  store i8 %1, ptr %3, align 1
  %16 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 3
  store i8 %5, ptr %16, align 1
  %17 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 1
  store i8 3, ptr %17, align 1
  %18 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_rsp_data, ptr %3, i32 0, i32 2
  store i8 1, ptr %18, align 1
  %19 = add nuw nsw i32 %8, 4
  %20 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8248, i32 noundef %19, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %20 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %23, i32 noundef 8248, i32 noundef %24) #9
  br label %32

25:                                               ; preds = %14
  %26 = icmp eq ptr %20, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %29, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #9
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %27, %25, %22, %10
  %33 = phi i32 [ 0, %10 ], [ %24, %22 ], [ %31, %27 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #9
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 1
  %10 = load i8, ptr %9, align 4, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %6, %8 ], [ null, %2 ]
  %14 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 0, i32 2
  store i16 257, ptr %3, align 2
  store i32 0, ptr %14, align 2
  store i8 %1, ptr %14, align 2
  %15 = icmp eq ptr %13, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.adv_info, ptr %13, i32 0, i32 5
  %18 = load i16, ptr %17, align 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = mul i16 %18, 1000
  %22 = udiv i16 %21, 10
  %23 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_enable, ptr %3, i32 1, i32 1
  store i16 %22, ptr %23, align 1
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 6, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %29 = ptrtoint ptr %25 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %28, i32 noundef 8249, i32 noundef %29) #9
  br label %37

30:                                               ; preds = %24
  %31 = icmp eq ptr %25, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #9
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %32, %30, %27, %8, %5
  %38 = phi i32 [ -22, %5 ], [ 0, %8 ], [ %29, %27 ], [ %36, %32 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_start_ext_adv_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %1)
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi i32 [ %9, %8 ], [ %3, %2 ], [ %6, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_enable_advertising_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_le_set_adv_param, align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 1, ptr %4, align 1
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %10 = load i8, ptr %9, align 8
  br i1 %8, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %10)
  br label %161

13:                                               ; preds = %1
  %14 = tail call i32 @hci_adv_instance_flags(ptr noundef %0, i8 noundef zeroext %10) #9
  %15 = load i8, ptr %9, align 8
  %16 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %15) #9
  %17 = and i32 %14, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call zeroext i1 @mgmt_get_connectable(ptr noundef %0) #9
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i1 [ true, %13 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  br i1 %22, label %36, label %31

31:                                               ; preds = %30
  %32 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %161, label %48

36:                                               ; preds = %30
  %37 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 64
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %161, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %161, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %24, %28
  br i1 %47, label %70, label %61

48:                                               ; preds = %31
  %49 = icmp eq i32 %24, %28
  br i1 %49, label %70, label %57

50:                                               ; preds = %26
  br i1 %22, label %51, label %54

51:                                               ; preds = %50
  %52 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 4
  %53 = load i8, ptr %52, align 1
  br label %61

54:                                               ; preds = %50
  %55 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %56 = load i8, ptr %55, align 1
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i8 [ %56, %54 ], [ %33, %48 ]
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %161, label %70

61:                                               ; preds = %51, %46
  %62 = phi i8 [ %53, %51 ], [ %38, %46 ]
  %63 = and i8 %62, 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %161, label %65

65:                                               ; preds = %61
  %66 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 26, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %161, label %70

70:                                               ; preds = %65, %57, %48, %46, %21
  %71 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0)
  %72 = trunc i32 %71 to i8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = and i32 %71, 255
  br label %161

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %77) #9
  %78 = xor i1 %22, true
  %79 = load volatile i32, ptr %77, align 4
  %80 = and i32 %79, 262144
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load volatile i32, ptr %77, align 4
  %84 = and i32 %83, 524288
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = and i32 %14, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load volatile i32, ptr %77, align 4
  %91 = and i32 %90, 32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %89, %82, %76
  %95 = phi i1 [ true, %93 ], [ false, %76 ], [ true, %82 ], [ false, %89 ]
  %96 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext %78, i1 noundef zeroext %95, ptr noundef nonnull %3)
  %97 = trunc i32 %96 to i8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = and i32 %96, 255
  br label %161

101:                                              ; preds = %94
  %102 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(15) %102, i8 0, i32 11, i1 false)
  %103 = icmp eq ptr %16, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 13
  %106 = load i32, ptr %105, align 4
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 14
  %109 = load i32, ptr %108, align 4
  %110 = trunc i32 %109 to i16
  br label %116

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 44
  %113 = load i16, ptr %112, align 4
  %114 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 45
  %115 = load i16, ptr %114, align 2
  br label %116

116:                                              ; preds = %111, %104
  %117 = phi i16 [ %107, %104 ], [ %113, %111 ]
  %118 = phi i16 [ %110, %104 ], [ %115, %111 ]
  br i1 %22, label %132, label %119

119:                                              ; preds = %116
  %120 = load i8, ptr %9, align 8
  %121 = tail call zeroext i1 @hci_adv_instance_is_scannable(ptr noundef %0, i8 noundef zeroext %120) #9
  %122 = select i1 %121, i8 2, i8 3
  %123 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %2, i32 0, i32 2
  store i8 %122, ptr %123, align 2
  %124 = load volatile i32, ptr %77, align 4
  %125 = and i32 %124, 134217728
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %119
  %128 = load volatile i32, ptr %77, align 4
  %129 = and i32 %128, 268435456
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127, %119
  br label %132

132:                                              ; preds = %131, %127, %116
  %133 = phi i16 [ 160, %131 ], [ %117, %127 ], [ %117, %116 ]
  %134 = phi i16 [ 240, %131 ], [ %118, %127 ], [ %118, %116 ]
  store i16 %133, ptr %2, align 2
  %135 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %2, i32 0, i32 1
  store i16 %134, ptr %135, align 2
  %136 = load i8, ptr %3, align 1
  %137 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %2, i32 0, i32 3
  store i8 %136, ptr %137, align 1
  %138 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %2, i32 0, i32 6
  store i8 %139, ptr %140, align 1
  %141 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8198, i32 noundef 15, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %146

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %145 = ptrtoint ptr %141 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %144, i32 noundef 8198, i32 noundef %145) #9
  br label %153

146:                                              ; preds = %132
  %147 = icmp eq ptr %141, null
  br i1 %147, label %159, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.sk_buff, ptr %141, i32 0, i32 17
  %150 = load ptr, ptr %149, align 4
  %151 = load i8, ptr %150, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %141, i32 noundef 0) #9
  %152 = zext i8 %151 to i32
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i32 [ %145, %143 ], [ %152, %148 ]
  %155 = trunc i32 %154 to i8
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = and i32 %154, 255
  br label %161

159:                                              ; preds = %153, %146
  %160 = call i32 @__hci_cmd_sync_status(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 200)
  br label %161

161:                                              ; preds = %159, %157, %99, %74, %65, %61, %57, %41, %36, %31, %11
  %162 = phi i32 [ %12, %11 ], [ %75, %74 ], [ %100, %99 ], [ %158, %157 ], [ %160, %159 ], [ -22, %31 ], [ -22, %41 ], [ -22, %36 ], [ -22, %57 ], [ -22, %65 ], [ -22, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #9
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_disable_advertising_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %14 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef 8249, i32 noundef %18) #9
  br label %26

19:                                               ; preds = %13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #9
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %21, %19, %16
  %27 = phi i32 [ %18, %16 ], [ %25, %21 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  br label %41

28:                                               ; preds = %8
  %29 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %32, i32 noundef 8202, i32 noundef %33) #9
  br label %41

34:                                               ; preds = %28
  %35 = icmp eq ptr %29, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #9
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %34, %31, %26, %1
  %42 = phi i32 [ %27, %26 ], [ 0, %1 ], [ %33, %31 ], [ %40, %36 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_enable_advertising(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16777216
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %27, label %10

10:                                               ; preds = %6, %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 20) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 1
  store ptr @enable_advertising_sync, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %12, i32 0, i32 3
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 145
  tail call void @mutex_lock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %12, ptr %20, align 4
  store ptr %19, ptr %12, align 8
  %22 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %12, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %18) #9
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %25) #9
  br label %27

27:                                               ; preds = %14, %10, %6
  %28 = phi i32 [ 0, %6 ], [ 0, %14 ], [ -12, %10 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enable_advertising_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  store i8 %1, ptr %4, align 1
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @hci_disable_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14, %12
  %18 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8252, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef %2) #9
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %22 = ptrtoint ptr %18 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %21, i32 noundef 8252, i32 noundef %22) #9
  br label %30

23:                                               ; preds = %17
  %24 = icmp eq ptr %18, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #9
  %29 = zext i8 %28 to i32
  br label %30

30:                                               ; preds = %25, %23, %20, %14, %9, %3
  %31 = phi i32 [ 0, %3 ], [ %10, %9 ], [ -22, %14 ], [ %22, %20 ], [ %29, %25 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_le_set_adv_data, align 1
  %4 = alloca %struct.anon.138, align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %72, label %9

9:                                                ; preds = %2
  %10 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %4) #9
  %15 = getelementptr inbounds %struct.anon.138, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %4, i8 0, i64 255, i1 false) #9
  %16 = call zeroext i8 @eir_create_adv_data(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 210
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %16 to i32
  %20 = icmp eq i8 %18, %16
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 209
  %23 = call i32 @bcmp(ptr %15, ptr %22, i32 %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21, %14
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 209
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %26, ptr align 1 %15, i32 %19, i1 false) #9
  store i8 %16, ptr %17, align 4
  %27 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %4, i32 0, i32 3
  store i8 %16, ptr %27, align 1
  store i8 %1, ptr %4, align 1
  %28 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %4, i32 0, i32 1
  store i8 3, ptr %28, align 1
  %29 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_data, ptr %4, i32 0, i32 2
  store i8 1, ptr %29, align 1
  %30 = add nuw nsw i32 %19, 4
  %31 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8247, i32 noundef %30, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %35 = ptrtoint ptr %31 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %34, i32 noundef 8247, i32 noundef %35) #9
  br label %43

36:                                               ; preds = %25
  %37 = icmp eq ptr %31, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  %41 = load i8, ptr %40, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %31, i32 noundef 0) #9
  %42 = zext i8 %41 to i32
  br label %43

43:                                               ; preds = %38, %36, %33, %21
  %44 = phi i32 [ 0, %21 ], [ %35, %33 ], [ %42, %38 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %4) #9
  br label %72

45:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %46 = getelementptr inbounds %struct.hci_cp_le_set_adv_data, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i64 32, i1 false) #9
  %47 = call zeroext i8 @eir_create_adv_data(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %46) #9
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 210
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, %47
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = zext i8 %47 to i32
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 209
  %54 = call i32 @bcmp(ptr %46, ptr %53, i32 %52) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51, %45
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 209
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(31) %57, ptr noundef align 1 dereferenceable(31) %46, i32 31, i1 false) #9
  store i8 %47, ptr %48, align 4
  store i8 %47, ptr %3, align 1
  %58 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8200, i32 noundef 32, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %62 = ptrtoint ptr %58 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %61, i32 noundef 8200, i32 noundef %62) #9
  br label %70

63:                                               ; preds = %56
  %64 = icmp eq ptr %58, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = load i8, ptr %67, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %58, i32 noundef 0) #9
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %65, %63, %60, %51
  %71 = phi i32 [ 0, %51 ], [ %62, %60 ], [ %69, %65 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %72

72:                                               ; preds = %70, %43, %2
  %73 = phi i32 [ %44, %43 ], [ %71, %70 ], [ 0, %2 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 16777216
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, 16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %75, label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %13
  %18 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %1) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 5
  %22 = load i16, ptr %21, align 4
  %23 = icmp eq i16 %22, 0
  %24 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 7
  %25 = load i16, ptr %24, align 4
  br i1 %23, label %31, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.adv_info, ptr %18, i32 0, i32 6
  %28 = load i16, ptr %27, align 2
  %29 = call i16 @llvm.umin.i16(i16 %25, i16 %28)
  %30 = sub i16 %28, %29
  store i16 %30, ptr %27, align 2
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i16 [ %29, %26 ], [ %25, %20 ]
  %33 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  store i16 %32, ptr %14, align 2
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %41 = zext i16 %32 to i32
  %42 = mul nuw nsw i32 %41, 1000
  %43 = tail call i32 @__msecs_to_jiffies(i32 noundef %42) #9
  %44 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %39, ptr noundef %40, i32 noundef %43) #9
  br label %45

45:                                               ; preds = %37, %31
  br i1 %2, label %54, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %48 = load i8, ptr %47, align 8
  %49 = icmp eq i8 %48, %1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load volatile i32, ptr %4, align 4
  %52 = and i32 %51, 8192
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %50, %46, %45
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 %1, ptr %55, align 8
  %56 = load i8, ptr %33, align 1
  %57 = and i8 %56, 16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %1) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = tail call fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %1) #9
  br label %75

67:                                               ; preds = %54
  %68 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext %1) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %1) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0) #9
  br label %75

75:                                               ; preds = %73, %70, %67, %65, %62, %59, %50, %17, %13, %8
  %76 = phi i32 [ -1, %8 ], [ -16, %13 ], [ -2, %17 ], [ 0, %50 ], [ %74, %73 ], [ %68, %67 ], [ %71, %70 ], [ %66, %65 ], [ %60, %59 ], [ %63, %62 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_advertising_sync(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %6, %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %12 = load i16, ptr %11, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  store i16 0, ptr %11, align 2
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %16 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %15) #9
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %19 = load i8, ptr %18, align 8
  %20 = icmp eq i8 %19, %2
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call ptr @hci_get_next_instance(ptr noundef %0, i8 noundef zeroext %2) #9
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi ptr [ %22, %21 ], [ null, %17 ]
  br i1 %5, label %25, label %28

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @hci_clear_adv_sync(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %64, label %90

28:                                               ; preds = %23
  %29 = tail call ptr @hci_find_adv_instance(ptr noundef %0, i8 noundef zeroext %2) #9
  br i1 %3, label %40, label %30

30:                                               ; preds = %28
  %31 = icmp eq ptr %29, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.adv_info, ptr %29, i32 0, i32 5
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.adv_info, ptr %29, i32 0, i32 6
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %36, %28
  %41 = icmp eq ptr %24, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.adv_info, ptr %24, i32 0, i32 3
  %44 = load i8, ptr %43, align 2
  %45 = icmp eq i8 %44, %2
  %46 = select i1 %45, ptr null, ptr %24
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi ptr [ %46, %42 ], [ null, %40 ]
  %49 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 @hci_remove_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %2, ptr noundef %1) #9
  br label %61

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %56) #9
  %57 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %2) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @mgmt_advertising_removed(ptr noundef %1, ptr noundef %0, i8 noundef zeroext %2) #9
  br label %60

60:                                               ; preds = %59, %55
  tail call void @mutex_unlock(ptr noundef %56) #9
  br label %61

61:                                               ; preds = %60, %53
  %62 = phi i32 [ %54, %53 ], [ %57, %60 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61, %36, %32, %30, %25
  %65 = phi ptr [ %24, %25 ], [ %48, %61 ], [ %24, %36 ], [ %24, %32 ], [ %24, %30 ]
  %66 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load volatile i32, ptr %71, align 4
  %77 = and i32 %76, 16777216
  %78 = icmp ne i32 %77, 0
  %79 = icmp eq ptr %65, null
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 16
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.adv_info, ptr %65, i32 0, i32 3
  %88 = load i8, ptr %87, align 2
  %89 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %88, i1 noundef zeroext false)
  br label %90

90:                                               ; preds = %86, %81, %75, %70, %64, %61, %25
  %91 = phi i32 [ %26, %25 ], [ 0, %75 ], [ 0, %70 ], [ 0, %64 ], [ 0, %86 ], [ 0, %81 ], [ %62, %61 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_next_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_clear_adv_sync(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false) #9
  %10 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %14 = ptrtoint ptr %10 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %13, i32 noundef 8249, i32 noundef %14) #9
  br label %23

15:                                               ; preds = %9
  %16 = icmp eq ptr %10, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  br label %26

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i32 [ %14, %12 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23, %17
  %27 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8253, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef %1) #9
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %31 = ptrtoint ptr %27 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %30, i32 noundef 8253, i32 noundef %31) #9
  br label %60

32:                                               ; preds = %26
  %33 = icmp eq ptr %27, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 17
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %36, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %27, i32 noundef 0) #9
  %38 = zext i8 %37 to i32
  br label %60

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %40) #9
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %59, label %44

44:                                               ; preds = %57, %39
  %45 = phi ptr [ %46, %57 ], [ %42, %39 ]
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.adv_info, ptr %45, i32 0, i32 3
  %48 = load i8, ptr %47, align 2
  br i1 %2, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.adv_info, ptr %45, i32 0, i32 5
  %51 = load i16, ptr %50, align 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %44
  %54 = tail call i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %48) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @mgmt_advertising_removed(ptr noundef %1, ptr noundef %0, i8 noundef zeroext %48) #9
  br label %57

57:                                               ; preds = %56, %53, %49
  %58 = icmp eq ptr %46, %41
  br i1 %58, label %59, label %44

59:                                               ; preds = %57, %39
  tail call void @mutex_unlock(ptr noundef %40) #9
  br label %60

60:                                               ; preds = %59, %34, %32, %29, %23
  %61 = phi i32 [ 0, %59 ], [ %24, %23 ], [ %31, %29 ], [ %38, %34 ], [ 0, %32 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_read_rssi_sync(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_read_rssi, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 %1, ptr %3, align 2
  %4 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 5125, i32 noundef 2, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %8 = ptrtoint ptr %4 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef 5125, i32 noundef %8) #9
  br label %16

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #9
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %9, %6
  %17 = phi i32 [ %8, %6 ], [ %15, %11 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_read_clock_sync(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 5127, i32 noundef 3, ptr noundef %1, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef 5127, i32 noundef %7) #9
  br label %15

8:                                                ; preds = %2
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #9
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %10, %8, %5
  %16 = phi i32 [ %7, %5 ], [ %14, %10 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_read_tx_power_sync(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_read_tx_power, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  store i16 %1, ptr %4, align 2
  %5 = getelementptr inbounds %struct.hci_cp_read_tx_power, ptr %4, i32 0, i32 1
  store i8 %2, ptr %5, align 2
  %6 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3117, i32 noundef 3, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %6 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 3117, i32 noundef %10) #9
  br label %18

11:                                               ; preds = %3
  %12 = icmp eq ptr %6, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #9
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %13, %11, %8
  %19 = phi i32 [ %10, %8 ], [ %17, %13 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_read_local_oob_data_sync(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = select i1 %1, i16 3197, i16 3159
  %5 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext %4, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef %2)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_passive_scan_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %66

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load volatile i32, ptr %11, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %11, align 4
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %11, align 4
  %29 = and i32 %28, 8388608
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %66, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 13
  store i8 0, ptr %36, align 1
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 12
  store i8 1, ptr %37, align 8
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 15
  store i8 127, ptr %38, align 1
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 16
  store i16 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 17
  %41 = load ptr, ptr %40, align 8
  tail call void @kfree(ptr noundef %41) #9
  store ptr null, ptr %40, align 8
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 18
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 19
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) #9
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = tail call fastcc i32 @hci_scan_disable_sync(ptr noundef %0)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, ptr noundef %57, i32 noundef %54) #9
  br label %66

58:                                               ; preds = %51, %47, %35
  %59 = tail call fastcc ptr @hci_lookup_le_connect(ptr noundef %0)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @hci_passive_scan_sync(ptr noundef %0)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %65, i32 noundef %62) #9
  br label %66

66:                                               ; preds = %64, %61, %58, %56, %53, %31, %27, %23, %19, %15, %10, %6, %1
  %67 = phi i32 [ 0, %23 ], [ 0, %19 ], [ 0, %15 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ], [ 0, %27 ], [ 0, %31 ], [ 0, %58 ], [ %62, %64 ], [ 0, %61 ], [ %54, %56 ], [ 0, %53 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_is_adv_monitoring(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_scan_disable_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16384
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %8 = load i8, ptr %7, align 4, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %14, i32 noundef %11) #9
  br label %15

15:                                               ; preds = %13, %10, %6, %1
  %16 = phi i32 [ %11, %13 ], [ 0, %1 ], [ 0, %6 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hci_lookup_le_connect(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 5
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 47
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %24

20:                                               ; preds = %14, %10, %5
  %21 = load volatile ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %5

23:                                               ; preds = %20, %1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi ptr [ %6, %19 ], [ null, %23 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_passive_scan_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.hci_cp_le_del_from_accept_list, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %8 = load i8, ptr %7, align 4, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %308

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %19, i32 noundef %16) #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %19, i32 noundef %16) #9
  br label %308

20:                                               ; preds = %15, %10
  %21 = load volatile i32, ptr %11, align 4
  %22 = and i32 %21, 262144
  %23 = icmp ne i32 %22, 0
  %24 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %23, ptr noundef nonnull %6)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %308

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 81
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) #9
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 224
  %42 = load i32, ptr %41, align 8
  %43 = icmp ne i32 %42, 0
  br label %52

44:                                               ; preds = %36, %32
  %45 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %0) #9
  %46 = icmp eq i32 %45, 1
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 224
  %48 = load i32, ptr %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %46, true
  %51 = select i1 %50, i1 true, i1 %49
  br i1 %51, label %52, label %61

52:                                               ; preds = %44, %40
  %53 = phi i1 [ %43, %40 ], [ %49, %44 ]
  %54 = phi ptr [ %41, %40 ], [ %47, %44 ]
  %55 = phi i1 [ false, %40 ], [ %46, %44 ]
  %56 = xor i1 %53, true
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225
  %60 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %59) #9
  store i32 0, ptr %54, align 8
  br label %66

61:                                               ; preds = %44
  store i32 1, ptr %47, align 8
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225
  %65 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %63, ptr noundef %64, i32 noundef 0) #9
  br label %308

66:                                               ; preds = %58, %52, %26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %68 = load i8, ptr %67, align 2
  %69 = and i8 %68, 64
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  br label %132

72:                                               ; preds = %66
  %73 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 512
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %79 = load i8, ptr %78, align 4, !range !15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %77
  %82 = load volatile i32, ptr %11, align 4
  %83 = lshr i32 %82, 24
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %11) #9
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %11) #9
  %87 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %87, align 4
  br label %88

88:                                               ; preds = %86, %81
  %89 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %98 = load i16, ptr %97, align 2
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  store i16 0, ptr %97, align 2
  %101 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %102 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %101) #9
  br label %106

103:                                              ; preds = %88
  %104 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %104, i32 noundef %89) #9
  br label %269

105:                                              ; preds = %77, %72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  br label %111

106:                                              ; preds = %100, %96, %91
  store i8 1, ptr %78, align 4
  %107 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  store i32 %84, ptr %107, align 8
  %108 = load i8, ptr %67, align 2
  %109 = and i8 %108, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %132, label %111

111:                                              ; preds = %106, %105
  %112 = load volatile i32, ptr %73, align 4
  %113 = and i32 %112, 512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %111
  %116 = load volatile i32, ptr %73, align 4
  %117 = and i32 %116, 256
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %115
  %120 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %124 = ptrtoint ptr %120 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %123, i32 noundef 8237, i32 noundef %124) #9
  br label %133

125:                                              ; preds = %119
  %126 = icmp eq ptr %120, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sk_buff, ptr %120, i32 0, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = load i8, ptr %129, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %120, i32 noundef 0) #9
  %131 = zext i8 %130 to i32
  br label %133

132:                                              ; preds = %125, %115, %111, %106, %71
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %138

133:                                              ; preds = %127, %122
  %134 = phi i32 [ %124, %122 ], [ %131, %127 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %137, i32 noundef %134) #9
  br label %226

138:                                              ; preds = %133, %132
  %139 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %186, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  %144 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  %145 = getelementptr inbounds %struct.hci_cp_le_del_from_accept_list, ptr %3, i32 0, i32 1
  %146 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %147

147:                                              ; preds = %183, %142
  %148 = phi ptr [ %140, %142 ], [ %150, %183 ]
  %149 = phi i8 [ 0, %142 ], [ %184, %183 ]
  %150 = load ptr, ptr %148, align 4
  %151 = getelementptr inbounds %struct.bdaddr_list, ptr %148, i32 0, i32 1
  %152 = getelementptr inbounds %struct.bdaddr_list, ptr %148, i32 0, i32 2
  %153 = load i8, ptr %152, align 2
  %154 = call ptr @hci_pend_le_action_lookup(ptr noundef %143, ptr noundef %151, i8 noundef zeroext %153) #9
  %155 = icmp eq ptr %154, null
  %156 = load i8, ptr %152, align 2
  %157 = call ptr @hci_pend_le_action_lookup(ptr noundef %144, ptr noundef %151, i8 noundef zeroext %156) #9
  %158 = icmp eq ptr %157, null
  %159 = select i1 %155, i1 %158, i1 false
  br i1 %159, label %160, label %181

160:                                              ; preds = %147
  %161 = load i8, ptr %152, align 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #9
  %162 = call ptr @hci_bdaddr_list_lookup(ptr noundef %139, ptr noundef %151, i8 noundef zeroext %161) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %160
  store i8 %161, ptr %3, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %145, ptr noundef align 1 dereferenceable(6) %151, i32 6, i1 false) #9
  call fastcc void @hci_le_del_resolve_list_sync(ptr noundef %0, ptr noundef %145, i8 noundef zeroext %161) #9
  %165 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8210, i32 noundef 7, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = ptrtoint ptr %165 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %146, i32 noundef 8210, i32 noundef %168) #9
  br label %176

169:                                              ; preds = %164
  %170 = icmp eq ptr %165, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 17
  %173 = load ptr, ptr %172, align 4
  %174 = load i8, ptr %173, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %165, i32 noundef 0) #9
  %175 = zext i8 %174 to i32
  br label %176

176:                                              ; preds = %171, %167
  %177 = phi i32 [ %168, %167 ], [ %175, %171 ]
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %146, i32 noundef %177) #9
  br label %180

180:                                              ; preds = %179, %176, %169, %160
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #9
  br label %183

181:                                              ; preds = %147
  %182 = add i8 %149, 1
  br label %183

183:                                              ; preds = %181, %180
  %184 = phi i8 [ %182, %181 ], [ %149, %180 ]
  %185 = icmp eq ptr %150, %139
  br i1 %185, label %186, label %147

186:                                              ; preds = %183, %138
  %187 = phi i8 [ 0, %138 ], [ %184, %183 ]
  store i8 %187, ptr %5, align 1
  %188 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 195
  br label %189

189:                                              ; preds = %193, %186
  %190 = phi ptr [ %188, %186 ], [ %191, %193 ]
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, %188
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = getelementptr i8, ptr %191, i32 -8
  %195 = call fastcc i32 @hci_le_add_accept_list_sync(ptr noundef %0, ptr noundef %194, ptr noundef nonnull %5) #9
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %189, label %226

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 196
  br label %199

199:                                              ; preds = %203, %197
  %200 = phi ptr [ %198, %197 ], [ %201, %203 ]
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %198
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = getelementptr i8, ptr %201, i32 -8
  %205 = call fastcc i32 @hci_le_add_accept_list_sync(ptr noundef %0, ptr noundef %204, ptr noundef nonnull %5) #9
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %199, label %226

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 0, i32 2
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %213 = call i32 @radix_tree_tagged(ptr noundef %212, i32 noundef 0) #9
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %211, %207
  %216 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %217 = load i8, ptr %216, align 1, !range !15
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %0) #9
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 224
  %224 = load i32, ptr %223, align 8
  %225 = icmp eq i32 %224, 2
  br label %226

226:                                              ; preds = %222, %219, %215, %211, %203, %193, %136
  %227 = phi i1 [ false, %136 ], [ true, %211 ], [ true, %215 ], [ true, %219 ], [ %225, %222 ], [ false, %203 ], [ false, %193 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 1, ptr %2, align 1
  %228 = load i8, ptr %67, align 2
  %229 = and i8 %228, 64
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %253, label %231

231:                                              ; preds = %226
  %232 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %233 = load volatile i32, ptr %232, align 4
  %234 = and i32 %233, 512
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %253, label %236

236:                                              ; preds = %231
  %237 = load volatile i32, ptr %232, align 4
  %238 = and i32 %237, 256
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %242 = icmp ugt ptr %241, inttoptr (i32 -4096 to ptr)
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %245 = ptrtoint ptr %241 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %244, i32 noundef 8237, i32 noundef %245) #9
  br label %254

246:                                              ; preds = %240
  %247 = icmp eq ptr %241, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %246
  %249 = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 17
  %250 = load ptr, ptr %249, align 4
  %251 = load i8, ptr %250, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %241, i32 noundef 0) #9
  %252 = zext i8 %251 to i32
  br label %254

253:                                              ; preds = %246, %236, %231, %226
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %259

254:                                              ; preds = %248, %243
  %255 = phi i32 [ %245, %243 ], [ %252, %248 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10, ptr noundef %258, i32 noundef %255) #9
  br label %259

259:                                              ; preds = %257, %254, %253
  %260 = load i8, ptr %67, align 2
  %261 = and i8 %260, 64
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %265 = load volatile i32, ptr %264, align 4
  %266 = and i32 %265, 512
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263
  call fastcc void @hci_resume_advertising_sync(ptr noundef %0) #9
  br label %269

269:                                              ; preds = %268, %263, %259, %103
  %270 = phi i1 [ false, %103 ], [ %227, %268 ], [ %227, %263 ], [ %227, %259 ]
  %271 = zext i1 %270 to i8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %272 = load volatile i32, ptr %11, align 4
  %273 = and i32 %272, 262144
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %269
  %276 = load i8, ptr %67, align 2
  %277 = or i8 %271, 2
  %278 = icmp slt i8 %276, 0
  %279 = select i1 %278, i8 %277, i8 %271
  br label %280

280:                                              ; preds = %275, %269
  %281 = phi i8 [ %271, %269 ], [ %279, %275 ]
  %282 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %283 = load i8, ptr %282, align 1, !range !15
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 50
  %287 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 49
  br label %301

288:                                              ; preds = %280
  %289 = call fastcc zeroext i1 @hci_is_le_conn_scanning(ptr noundef %0)
  br i1 %289, label %290, label %293

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 56
  %292 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 55
  br label %301

293:                                              ; preds = %288
  %294 = call zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) #9
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  %296 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 54
  %297 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 53
  br label %301

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 48
  %300 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 47
  br label %301

301:                                              ; preds = %298, %295, %290, %285
  %302 = phi ptr [ %287, %285 ], [ %292, %290 ], [ %297, %295 ], [ %300, %298 ]
  %303 = phi ptr [ %286, %285 ], [ %291, %290 ], [ %296, %295 ], [ %299, %298 ]
  %304 = load i16, ptr %303, align 4
  %305 = load i16, ptr %302, align 2
  %306 = load i8, ptr %6, align 1
  %307 = call fastcc i32 @hci_start_scan_sync(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext %305, i16 noundef zeroext %304, i8 noundef zeroext %306, i8 noundef zeroext %281, i8 noundef zeroext 1)
  br label %308

308:                                              ; preds = %301, %61, %20, %18, %1
  %309 = phi i32 [ %16, %18 ], [ %307, %301 ], [ 0, %1 ], [ 0, %20 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret i32 %309
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_passive_scan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load volatile i32, ptr %11, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %11, align 4
  %25 = and i32 %24, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i32 @hci_cmd_sync_queue(ptr noundef %0, ptr noundef nonnull @update_passive_scan_sync, ptr noundef null, ptr noundef null)
  br label %29

29:                                               ; preds = %27, %23, %19, %15, %10, %6, %1
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %15 ], [ 0, %10 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @update_passive_scan_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_write_sc_support_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  %14 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3194, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %23 = ptrtoint ptr %19 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %22, i32 noundef 3194, i32 noundef %23) #9
  br label %31

24:                                               ; preds = %18
  %25 = icmp eq ptr %19, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #9
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %23, %21 ], [ %30, %26 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31, %24
  %35 = icmp eq i8 %1, 0
  %36 = load i8, ptr %14, align 2
  br i1 %35, label %39, label %37

37:                                               ; preds = %34
  %38 = or i8 %36, 8
  store i8 %38, ptr %14, align 2
  tail call void @_set_bit(i32 noundef 16, ptr noundef %9) #9
  br label %41

39:                                               ; preds = %34
  %40 = and i8 %36, -9
  store i8 %40, ptr %14, align 2
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %9) #9
  br label %41

41:                                               ; preds = %39, %37, %31, %13, %8, %2
  %42 = phi i32 [ 0, %13 ], [ 0, %8 ], [ 0, %2 ], [ 0, %37 ], [ 0, %39 ], [ %32, %31 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_write_ssp_mode_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = load volatile i32, ptr %4, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 6148, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %20 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %23, i32 noundef 6148, i32 noundef %24) #9
  br label %28

25:                                               ; preds = %19
  %26 = icmp eq ptr %20, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #9
  br label %28

28:                                               ; preds = %27, %25, %22, %15, %13
  %29 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3158, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %32, i32 noundef 3158, i32 noundef %33) #9
  br label %41

34:                                               ; preds = %28
  %35 = icmp eq ptr %29, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #9
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i32 [ %33, %31 ], [ %40, %36 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %34
  %45 = tail call i32 @hci_write_sc_support_sync(ptr noundef %0, i8 noundef zeroext 1)
  br label %46

46:                                               ; preds = %44, %41, %8, %2
  %47 = phi i32 [ %45, %44 ], [ 0, %8 ], [ 0, %2 ], [ %42, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_write_le_host_supported_sync(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_write_le_host_supported, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 8388608
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 32
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = zext i8 %1 to i32
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %18, 1
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, %15
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = zext i8 %2 to i32
  %24 = lshr i32 %18, 2
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %41, label %27

27:                                               ; preds = %22, %14
  store i8 %1, ptr %4, align 2
  %28 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, ptr %4, i32 0, i32 1
  store i8 %2, ptr %28, align 1
  %29 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3181, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %32, i32 noundef 3181, i32 noundef %33) #9
  br label %41

34:                                               ; preds = %27
  %35 = icmp eq ptr %29, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #9
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %34, %31, %22, %9, %3
  %42 = phi i32 [ 0, %9 ], [ 0, %3 ], [ 0, %22 ], [ %33, %31 ], [ %40, %36 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_write_fast_connectable_sync(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_write_page_scan_activity, align 4
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %66, label %13

13:                                               ; preds = %9
  br i1 %1, label %14, label %15

14:                                               ; preds = %13
  store i8 1, ptr %4, align 1
  br label %20

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 86
  %17 = load i8, ptr %16, align 2
  store i8 %17, ptr %4, align 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 87
  %19 = load i16, ptr %18, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = phi i8 [ 1, %14 ], [ %17, %15 ]
  %22 = phi i16 [ 256, %14 ], [ %19, %15 ]
  store i16 %22, ptr %3, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 88
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.hci_cp_write_page_scan_activity, ptr %3, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 40
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, %22
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 41
  %31 = load i16, ptr %30, align 8
  %32 = icmp eq i16 %31, %24
  br i1 %32, label %49, label %33

33:                                               ; preds = %29, %20
  %34 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3100, i32 noundef 4, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %38 = ptrtoint ptr %34 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %37, i32 noundef 3100, i32 noundef %38) #9
  br label %46

39:                                               ; preds = %33
  %40 = icmp eq ptr %34, null
  br i1 %40, label %49, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = load i8, ptr %43, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %34, i32 noundef 0) #9
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i32 [ %38, %36 ], [ %45, %41 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46, %39, %29
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 42
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, %21
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3143, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %55 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %58 = ptrtoint ptr %54 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %57, i32 noundef 3143, i32 noundef %58) #9
  br label %66

59:                                               ; preds = %53
  %60 = icmp eq ptr %54, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %63, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %54, i32 noundef 0) #9
  %65 = zext i8 %64 to i32
  br label %66

66:                                               ; preds = %61, %59, %56, %49, %46, %9, %2
  %67 = phi i32 [ 0, %2 ], [ 0, %9 ], [ %47, %46 ], [ 0, %49 ], [ %58, %56 ], [ %65, %61 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_scan_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %2, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = tail call zeroext i1 @mgmt_powering_down(ptr noundef %0) #9
  br i1 %17, label %50, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %20 = load i8, ptr %19, align 4, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %2, align 4
  %24 = and i32 %23, 67108864
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %0)
  %28 = select i1 %27, i8 2, i8 0
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i8 [ 2, %22 ], [ %28, %26 ]
  %31 = load volatile i32, ptr %2, align 4
  %32 = lshr i32 %31, 27
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = or i8 %34, %30
  %36 = load volatile i32, ptr %8, align 4
  %37 = lshr i32 %36, 3
  %38 = and i32 %37, 1
  %39 = zext i8 %35 to i32
  %40 = lshr i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load volatile i32, ptr %8, align 4
  %44 = lshr i32 %43, 4
  %45 = xor i32 %44, %39
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42, %29
  %49 = tail call fastcc i32 @hci_write_scan_enable_sync(ptr noundef %0, i8 noundef zeroext %35)
  br label %50

50:                                               ; preds = %48, %42, %18, %16, %12, %7, %1
  %51 = phi i32 [ %49, %48 ], [ 0, %1 ], [ 0, %12 ], [ 0, %7 ], [ 0, %16 ], [ 0, %18 ], [ 0, %42 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_powering_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @disconnected_accept_list_entries(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  br label %7

7:                                                ; preds = %30, %5
  %8 = phi ptr [ %3, %5 ], [ %31, %30 ]
  %9 = getelementptr inbounds %struct.bdaddr_list, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %10 = load volatile ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %24, label %12

12:                                               ; preds = %21, %7
  %13 = phi ptr [ %22, %21 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 14
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 2
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %9, i32 6) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %12
  %22 = load volatile ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %24, label %12

24:                                               ; preds = %21, %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %33

25:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %26 = icmp eq ptr %13, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hci_conn, ptr %13, i32 0, i32 12
  %29 = load i16, ptr %28, align 4
  switch i16 %29, label %33 [
    i16 1, label %30
    i16 7, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = load ptr, ptr %8, align 4
  %32 = icmp eq ptr %31, %2
  br i1 %32, label %33, label %7

33:                                               ; preds = %30, %27, %25, %24, %1
  %34 = phi i1 [ true, %24 ], [ false, %1 ], [ true, %27 ], [ true, %25 ], [ false, %30 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_write_scan_enable_sync(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %8 = ptrtoint ptr %4 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef 3098, i32 noundef %8) #9
  br label %16

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #9
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %9, %6
  %17 = phi i32 [ %8, %6 ], [ %15, %11 ], [ 0, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_name_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_local_name, align 1
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %2, ptr noundef align 1 dereferenceable(248) %3, i32 248, i1 false)
  %4 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3091, i32 noundef 248, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %8 = ptrtoint ptr %4 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef 3091, i32 noundef %8) #9
  br label %16

9:                                                ; preds = %1
  %10 = icmp eq ptr %4, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #9
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %9, %6
  %17 = phi i32 [ %8, %6 ], [ %15, %11 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %2) #9
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_powered_update_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_local_name, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call i32 @smp_register(ptr noundef %0) #9
  %6 = tail call i32 @hci_write_ssp_mode_sync(ptr noundef %0, i8 noundef zeroext 1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %132

8:                                                ; preds = %1
  %9 = tail call i32 @hci_write_le_host_supported_sync(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %132

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 8388608
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @hci_le_add_resolve_list_sync(ptr noundef %0, ptr noundef null) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 1, ptr %4, align 1
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %24 = load i8, ptr %23, align 2
  %25 = and i8 %24, 64
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %21
  %28 = load volatile i32, ptr %17, align 4
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = load volatile i32, ptr %17, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %40 = ptrtoint ptr %36 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %39, i32 noundef 8237, i32 noundef %40) #9
  br label %44

41:                                               ; preds = %35
  %42 = icmp eq ptr %36, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  tail call void @kfree_skb_reason(ptr noundef nonnull %36, i32 noundef 0) #9
  br label %44

44:                                               ; preds = %43, %41, %38, %31, %27, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %45

45:                                               ; preds = %44, %16
  %46 = load volatile i32, ptr %12, align 4
  %47 = and i32 %46, 16777216
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %53, label %72

53:                                               ; preds = %49, %45
  %54 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, 16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %66

61:                                               ; preds = %53
  %62 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %58
  %65 = tail call i32 @hci_update_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %66

66:                                               ; preds = %64, %61, %58
  %67 = load volatile i32, ptr %12, align 4
  %68 = and i32 %67, 16777216
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0) #9
  br label %72

72:                                               ; preds = %70, %66, %49
  %73 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %83, label %76

76:                                               ; preds = %76, %72
  %77 = phi ptr [ %78, %76 ], [ %74, %72 ]
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.adv_info, ptr %77, i32 0, i32 3
  %80 = load i8, ptr %79, align 2
  %81 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %80, i1 noundef zeroext true) #9
  %82 = icmp eq ptr %78, %73
  br i1 %82, label %83, label %76

83:                                               ; preds = %76, %72, %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  %84 = load volatile i32, ptr %12, align 4
  %85 = lshr i32 %84, 29
  %86 = and i32 %85, 1
  %87 = trunc i32 %86 to i8
  store i8 %87, ptr %3, align 1
  %88 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %89 = load volatile i32, ptr %88, align 4
  %90 = lshr i32 %89, 5
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %86, %91
  br i1 %92, label %106, label %93

93:                                               ; preds = %83
  %94 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3104, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %98 = ptrtoint ptr %94 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %97, i32 noundef 3104, i32 noundef %98) #9
  br label %107

99:                                               ; preds = %93
  %100 = icmp eq ptr %94, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = load i8, ptr %103, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %94, i32 noundef 0) #9
  %105 = zext i8 %104 to i32
  br label %107

106:                                              ; preds = %99, %83
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %110

107:                                              ; preds = %101, %96
  %108 = phi i32 [ %98, %96 ], [ %105, %101 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %107, %106
  %111 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %112 = load i8, ptr %111, align 2
  %113 = and i8 %112, 32
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load volatile i32, ptr %12, align 4
  %117 = icmp slt i32 %116, 0
  %118 = tail call i32 @hci_write_fast_connectable_sync(ptr noundef %0, i1 noundef zeroext %117)
  %119 = tail call i32 @hci_update_scan_sync(ptr noundef %0)
  %120 = tail call i32 @hci_update_class_sync(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %2) #9
  %121 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %2, ptr noundef align 1 dereferenceable(248) %121, i32 248, i1 false) #9
  %122 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3091, i32 noundef 248, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %126 = ptrtoint ptr %122 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %125, i32 noundef 3091, i32 noundef %126) #9
  br label %130

127:                                              ; preds = %115
  %128 = icmp eq ptr %122, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  tail call void @kfree_skb_reason(ptr noundef nonnull %122, i32 noundef 0) #9
  br label %130

130:                                              ; preds = %129, %127, %124
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %2) #9
  %131 = tail call i32 @hci_update_eir_sync(ptr noundef %0)
  br label %132

132:                                              ; preds = %130, %110, %107, %8, %1
  %133 = phi i32 [ %6, %1 ], [ %9, %8 ], [ %108, %107 ], [ 0, %130 ], [ 0, %110 ]
  ret i32 %133
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_write_auth_enable_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 29
  %6 = and i32 %5, 1
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %2, align 1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = lshr i32 %9, 5
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3104, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef 3104, i32 noundef %18) #9
  br label %26

19:                                               ; preds = %13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #9
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %21, %19, %16, %1
  %27 = phi i32 [ 0, %1 ], [ %18, %16 ], [ %25, %21 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_reset_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 9, ptr noundef %2) #9
  %3 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef 3075, i32 noundef %7) #9
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #9
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %10, %8, %5
  %16 = phi i32 [ %7, %5 ], [ %14, %10 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_open_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %280

11:                                               ; preds = %1
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load volatile i32, ptr %7, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load volatile i32, ptr %7, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %280

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %7, align 4
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %33 = call i32 @bcmp(ptr noundef dereferenceable(6) %32, ptr noundef nonnull dereferenceable(6) %2, i32 6)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %37 = call i32 @bcmp(ptr noundef dereferenceable(6) %36, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %280, label %39

39:                                               ; preds = %35, %31, %27, %23, %15, %11
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %280

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 226
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 %46(ptr noundef %0) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %280

49:                                               ; preds = %44
  tail call void @_set_bit(i32 noundef 2, ptr noundef %40) #9
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 7) #9
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  store volatile i32 1, ptr %50, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %40) #9
  %51 = load volatile i32, ptr %7, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 4096
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %167, label %59

59:                                               ; preds = %54, %49
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 9) #9
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 229
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br label %75

68:                                               ; preds = %59
  %69 = tail call i32 %61(ptr noundef %0) #9
  %70 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  %74 = icmp eq i32 %69, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %68, %63
  %76 = phi i1 [ %67, %63 ], [ %73, %68 ]
  %77 = phi ptr [ %64, %63 ], [ %70, %68 ]
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %83 = call i32 @bcmp(ptr noundef dereferenceable(6) %82, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  tail call fastcc void @hci_dev_get_bd_addr_from_property(ptr noundef %0)
  br label %86

86:                                               ; preds = %85, %81
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %87 = call i32 @bcmp(ptr noundef dereferenceable(6) %82, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 236
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = tail call i32 %91(ptr noundef %0, ptr noundef %82) #9
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %95, i1 %76, i1 false
  br label %97

97:                                               ; preds = %93, %89, %86, %75, %68
  %98 = phi ptr [ %70, %68 ], [ %77, %89 ], [ %77, %86 ], [ %77, %75 ], [ %77, %93 ]
  %99 = phi i32 [ %69, %68 ], [ 0, %89 ], [ 0, %86 ], [ 0, %75 ], [ %94, %93 ]
  %100 = phi i1 [ %73, %68 ], [ %76, %89 ], [ %76, %86 ], [ %76, %75 ], [ %96, %93 ]
  %101 = load volatile i32, ptr %98, align 4
  %102 = and i32 %101, 64
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %103, i1 true, i1 %100
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call void @_set_bit(i32 noundef 10, ptr noundef %7) #9
  br label %106

106:                                              ; preds = %105, %97
  %107 = load volatile i32, ptr %7, align 4
  %108 = and i32 %107, 1024
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %167, label %110

110:                                              ; preds = %106
  %111 = load volatile i32, ptr %98, align 4
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %167

114:                                              ; preds = %110
  %115 = load volatile i32, ptr %98, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  tail call void @_set_bit(i32 noundef 9, ptr noundef %40) #9
  %119 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %123 = ptrtoint ptr %119 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %122, i32 noundef 3075, i32 noundef %123) #9
  br label %131

124:                                              ; preds = %118
  %125 = icmp eq ptr %119, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 17
  %128 = load ptr, ptr %127, align 4
  %129 = load i8, ptr %128, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %119, i32 noundef 0) #9
  %130 = zext i8 %129 to i32
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i32 [ %123, %121 ], [ %130, %126 ]
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %131, %124, %114
  %135 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %136 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %139 = ptrtoint ptr %135 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %138, i32 noundef 4097, i32 noundef %139) #9
  br label %147

140:                                              ; preds = %134
  %141 = icmp eq ptr %135, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 17
  %144 = load ptr, ptr %143, align 4
  %145 = load i8, ptr %144, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %135, i32 noundef 0) #9
  %146 = zext i8 %145 to i32
  br label %147

147:                                              ; preds = %142, %137
  %148 = phi i32 [ %139, %137 ], [ %146, %142 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %147, %140
  %151 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4105, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %155 = ptrtoint ptr %151 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %154, i32 noundef 4105, i32 noundef %155) #9
  br label %159

156:                                              ; preds = %150
  %157 = icmp eq ptr %151, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %156
  tail call void @kfree_skb_reason(ptr noundef nonnull %151, i32 noundef 0) #9
  br label %162

159:                                              ; preds = %153, %147, %131
  %160 = phi i32 [ %132, %131 ], [ %148, %147 ], [ %155, %153 ]
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159, %158, %156
  %163 = load volatile i32, ptr %7, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  tail call void @hci_debugfs_create_basic(ptr noundef %0) #9
  br label %167

167:                                              ; preds = %166, %162, %159, %110, %106, %54
  %168 = phi i32 [ 0, %54 ], [ %99, %106 ], [ 0, %110 ], [ %160, %159 ], [ 0, %166 ], [ 0, %162 ]
  %169 = load volatile i32, ptr %7, align 4
  %170 = and i32 %169, 2
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %174 = call i32 @bcmp(ptr noundef dereferenceable(6) %173, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %202, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 236
  %178 = load ptr, ptr %177, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %202, label %180

180:                                              ; preds = %176
  %181 = tail call i32 %178(ptr noundef %0, ptr noundef %173) #9
  br label %182

182:                                              ; preds = %180, %167
  %183 = phi i32 [ %181, %180 ], [ %168, %167 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %182
  %186 = load volatile i32, ptr %7, align 4
  %187 = and i32 %186, 1024
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %185
  %190 = load volatile i32, ptr %7, align 4
  %191 = and i32 %190, 2048
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = tail call fastcc i32 @hci_init_sync(ptr noundef %0)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 234
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = tail call i32 %198(ptr noundef %0) #9
  br label %202

202:                                              ; preds = %200, %196, %193, %189, %185, %182, %176, %172
  %203 = phi i32 [ %183, %182 ], [ 0, %185 ], [ 0, %189 ], [ %194, %193 ], [ %201, %200 ], [ 0, %196 ], [ -99, %176 ], [ -99, %172 ]
  %204 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %205 = load volatile i32, ptr %204, align 4
  %206 = and i32 %205, 2048
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %223, label %208

208:                                              ; preds = %202
  %209 = load volatile i32, ptr %7, align 4
  %210 = and i32 %209, 2048
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %214, 32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 235
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %217
  %222 = tail call i32 %219(ptr noundef %0, i1 noundef zeroext true) #9
  br label %223

223:                                              ; preds = %221, %217, %212, %208, %202
  %224 = phi i32 [ %203, %208 ], [ %222, %221 ], [ %203, %217 ], [ %203, %212 ], [ %203, %202 ]
  %225 = load volatile i32, ptr %7, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %40) #9
  %226 = icmp eq i32 %224, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  %229 = tail call ptr @get_device(ptr noundef %228) #9
  tail call void @_set_bit(i32 noundef 20, ptr noundef %7) #9
  tail call void @hci_adv_instances_set_rpa_expired(ptr noundef %0, i1 noundef zeroext true) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %40) #9
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 3) #9
  %230 = load volatile i32, ptr %7, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %280

233:                                              ; preds = %227
  %234 = load volatile i32, ptr %7, align 4
  %235 = and i32 %234, 2
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %280

237:                                              ; preds = %233
  %238 = load volatile i32, ptr %7, align 4
  %239 = and i32 %238, 1024
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %280

241:                                              ; preds = %237
  %242 = load volatile i32, ptr %7, align 4
  %243 = and i32 %242, 2048
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %280

245:                                              ; preds = %241
  %246 = load volatile i32, ptr %7, align 4
  %247 = and i32 %246, 16
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %280, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %251 = load i8, ptr %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %280

253:                                              ; preds = %249
  %254 = tail call i32 @hci_powered_update_sync(ptr noundef %0)
  br label %280

255:                                              ; preds = %223
  %256 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 154
  %257 = tail call zeroext i1 @flush_work(ptr noundef %256) #9
  %258 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 152
  %259 = tail call zeroext i1 @flush_work(ptr noundef %258) #9
  %260 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %261 = tail call zeroext i1 @flush_work(ptr noundef %260) #9
  %262 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  tail call void @skb_queue_purge(ptr noundef %262) #9
  %263 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 159
  tail call void @skb_queue_purge(ptr noundef %263) #9
  %264 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  %265 = load ptr, ptr %264, align 8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %255
  %268 = tail call i32 %265(ptr noundef %0) #9
  br label %269

269:                                              ; preds = %267, %255
  %270 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %271 = load ptr, ptr %270, align 8
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  tail call void @kfree_skb_reason(ptr noundef nonnull %271, i32 noundef 0) #9
  store ptr null, ptr %270, align 8
  br label %274

274:                                              ; preds = %273, %269
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %40) #9
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 8) #9
  %275 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 227
  %276 = load ptr, ptr %275, align 4
  %277 = tail call i32 %276(ptr noundef %0) #9
  %278 = load i32, ptr %40, align 4
  %279 = and i32 %278, 256
  store i32 %279, ptr %40, align 4
  br label %280

280:                                              ; preds = %274, %253, %249, %245, %241, %237, %233, %227, %44, %39, %35, %19, %1
  %281 = phi i32 [ %224, %274 ], [ 0, %227 ], [ 0, %233 ], [ 0, %237 ], [ 0, %241 ], [ %254, %253 ], [ 0, %249 ], [ 0, %245 ], [ -19, %1 ], [ -132, %19 ], [ -99, %35 ], [ -114, %39 ], [ -5, %44 ]
  ret i32 %281
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sock_dev_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_dev_get_bd_addr_from_property(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @dev_fwnode(ptr noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i32 6, i1 false), !annotation !8
  %7 = call i32 @fwnode_property_read_u8_array(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef 6) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %10 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %13, ptr noundef nonnull align 1 dereferenceable(6) %2, i32 6, i1 false) #9
  br label %14

14:                                               ; preds = %12, %9, %1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_init_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_eir, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.hci_cp_delete_stored_link_key, align 1
  %5 = alloca %struct.hci_cp_read_stored_link_key, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 9, ptr noundef %12) #9
  %13 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 3075, i32 noundef %17) #9
  br label %25

18:                                               ; preds = %11
  %19 = icmp eq ptr %13, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %17, %15 ], [ %24, %20 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %25, %18, %1
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 1
  switch i8 %30, label %85 [
    i8 0, label %31
    i8 1, label %73
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 116
  store i8 0, ptr %32, align 8
  %33 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4099, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %37 = ptrtoint ptr %33 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %36, i32 noundef 4099, i32 noundef %37) #9
  br label %45

38:                                               ; preds = %31
  %39 = icmp eq ptr %33, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #9
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %37, %35 ], [ %44, %40 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45, %38
  %49 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %53 = ptrtoint ptr %49 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %52, i32 noundef 4097, i32 noundef %53) #9
  br label %61

54:                                               ; preds = %48
  %55 = icmp eq ptr %49, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = load i8, ptr %58, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %49, i32 noundef 0) #9
  %60 = zext i8 %59 to i32
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i32 [ %53, %51 ], [ %60, %56 ]
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61, %54
  %65 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4105, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %69 = ptrtoint ptr %65 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %68, i32 noundef 4105, i32 noundef %69) #9
  br label %88

70:                                               ; preds = %64
  %71 = icmp eq ptr %65, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %70
  tail call void @kfree_skb_reason(ptr noundef nonnull %65, i32 noundef 0) #9
  br label %91

73:                                               ; preds = %28
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 116
  store i8 1, ptr %74, align 8
  br label %80

75:                                               ; preds = %80
  %76 = add i32 %82, 1
  %77 = getelementptr %struct.hci_init_stage, ptr @amp_init1, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %75, %73
  %81 = phi ptr [ %78, %75 ], [ @hci_read_local_version_sync, %73 ]
  %82 = phi i32 [ %76, %75 ], [ 0, %73 ]
  %83 = tail call i32 %81(ptr noundef %0) #9
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %75, label %88

85:                                               ; preds = %28
  %86 = zext i8 %30 to i32
  %87 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.16, ptr noundef %87, i32 noundef %86) #9
  br label %91

88:                                               ; preds = %80, %67, %61, %45, %25
  %89 = phi i32 [ %26, %25 ], [ %46, %45 ], [ %62, %61 ], [ %69, %67 ], [ %83, %80 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %597, label %91

91:                                               ; preds = %88, %85, %75, %72, %70
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @hci_debugfs_create_basic(ptr noundef %0) #9
  br label %97

97:                                               ; preds = %96, %91
  %98 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  %102 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 14
  %103 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %106

104:                                              ; preds = %125, %118, %109
  %105 = load i8, ptr %98, align 1
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i8 [ %105, %104 ], [ 1, %101 ]
  %108 = icmp eq i8 %107, 1
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i8, ptr %102, align 1
  %111 = and i8 %110, 32
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %104, label %113

113:                                              ; preds = %109, %106
  %114 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4099, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %115 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = ptrtoint ptr %114 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %103, i32 noundef 4099, i32 noundef %117) #9
  br label %125

118:                                              ; preds = %113
  %119 = icmp eq ptr %114, null
  br i1 %119, label %104, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.sk_buff, ptr %114, i32 0, i32 17
  %122 = load ptr, ptr %121, align 4
  %123 = load i8, ptr %122, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %114, i32 noundef 0) #9
  %124 = zext i8 %123 to i32
  br label %125

125:                                              ; preds = %120, %116
  %126 = phi i32 [ %117, %116 ], [ %124, %120 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %104, label %369

128:                                              ; preds = %97
  %129 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %130 = load i8, ptr %129, align 2
  %131 = and i8 %130, 32
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %196

133:                                              ; preds = %128
  %134 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4101, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %135 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %138 = ptrtoint ptr %134 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %137, i32 noundef 4101, i32 noundef %138) #9
  br label %146

139:                                              ; preds = %133
  %140 = icmp eq ptr %134, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.sk_buff, ptr %134, i32 0, i32 17
  %143 = load ptr, ptr %142, align 4
  %144 = load i8, ptr %143, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %134, i32 noundef 0) #9
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %141, %136
  %147 = phi i32 [ %138, %136 ], [ %145, %141 ]
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %369

149:                                              ; preds = %146, %139
  %150 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3107, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %154 = ptrtoint ptr %150 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %153, i32 noundef 3107, i32 noundef %154) #9
  br label %162

155:                                              ; preds = %149
  %156 = icmp eq ptr %150, null
  br i1 %156, label %165, label %157

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.sk_buff, ptr %150, i32 0, i32 17
  %159 = load ptr, ptr %158, align 4
  %160 = load i8, ptr %159, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %150, i32 noundef 0) #9
  %161 = zext i8 %160 to i32
  br label %162

162:                                              ; preds = %157, %152
  %163 = phi i32 [ %154, %152 ], [ %161, %157 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %369

165:                                              ; preds = %162, %155
  %166 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3092, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %170 = ptrtoint ptr %166 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %169, i32 noundef 3092, i32 noundef %170) #9
  br label %178

171:                                              ; preds = %165
  %172 = icmp eq ptr %166, null
  br i1 %172, label %181, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 17
  %175 = load ptr, ptr %174, align 4
  %176 = load i8, ptr %175, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %166, i32 noundef 0) #9
  %177 = zext i8 %176 to i32
  br label %178

178:                                              ; preds = %173, %168
  %179 = phi i32 [ %170, %168 ], [ %177, %173 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %369

181:                                              ; preds = %178, %171
  %182 = tail call fastcc i32 @hci_read_voice_setting_sync(ptr noundef %0) #9
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %369

184:                                              ; preds = %181
  %185 = tail call fastcc i32 @hci_read_num_supported_iac_sync(ptr noundef %0) #9
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %369

187:                                              ; preds = %184
  %188 = tail call fastcc i32 @hci_read_current_iac_lap_sync(ptr noundef %0) #9
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %369

190:                                              ; preds = %187
  %191 = tail call fastcc i32 @hci_clear_event_filter_sync(ptr noundef %0) #9
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %369

193:                                              ; preds = %190
  %194 = tail call fastcc i32 @hci_write_ca_timeout_sync(ptr noundef %0) #9
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %197, label %369

196:                                              ; preds = %128
  tail call void @_clear_bit(i32 noundef 32, ptr noundef %92) #9
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i8, ptr %129, align 2
  %199 = and i8 %198, 64
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %254, label %201

201:                                              ; preds = %197
  %202 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8194, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %203 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %206 = ptrtoint ptr %202 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %205, i32 noundef 8194, i32 noundef %206) #9
  br label %214

207:                                              ; preds = %201
  %208 = icmp eq ptr %202, null
  br i1 %208, label %217, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 17
  %211 = load ptr, ptr %210, align 4
  %212 = load i8, ptr %211, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %202, i32 noundef 0) #9
  %213 = zext i8 %212 to i32
  br label %214

214:                                              ; preds = %209, %204
  %215 = phi i32 [ %206, %204 ], [ %213, %209 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %369

217:                                              ; preds = %214, %207
  %218 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8195, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %219 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %222 = ptrtoint ptr %218 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %221, i32 noundef 8195, i32 noundef %222) #9
  br label %230

223:                                              ; preds = %217
  %224 = icmp eq ptr %218, null
  br i1 %224, label %233, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.sk_buff, ptr %218, i32 0, i32 17
  %227 = load ptr, ptr %226, align 4
  %228 = load i8, ptr %227, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %218, i32 noundef 0) #9
  %229 = zext i8 %228 to i32
  br label %230

230:                                              ; preds = %225, %220
  %231 = phi i32 [ %222, %220 ], [ %229, %225 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %369

233:                                              ; preds = %230, %223
  %234 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8220, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %235 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %238 = ptrtoint ptr %234 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %237, i32 noundef 8220, i32 noundef %238) #9
  br label %246

239:                                              ; preds = %233
  %240 = icmp eq ptr %234, null
  br i1 %240, label %249, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.sk_buff, ptr %234, i32 0, i32 17
  %243 = load ptr, ptr %242, align 4
  %244 = load i8, ptr %243, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %234, i32 noundef 0) #9
  %245 = zext i8 %244 to i32
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i32 [ %238, %236 ], [ %245, %241 ]
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %369

249:                                              ; preds = %246, %239
  %250 = load i8, ptr %129, align 2
  %251 = and i8 %250, 32
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  tail call void @_set_bit(i32 noundef 23, ptr noundef %92) #9
  br label %254

254:                                              ; preds = %253, %249, %197
  %255 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %256 = load i8, ptr %255, align 1
  %257 = icmp ugt i8 %256, 1
  br i1 %257, label %258, label %278

258:                                              ; preds = %254
  %259 = load volatile i32, ptr %7, align 4
  %260 = and i32 %259, 16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %278

262:                                              ; preds = %258
  %263 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4098, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %264 = icmp ugt ptr %263, inttoptr (i32 -4096 to ptr)
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %267 = ptrtoint ptr %263 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %266, i32 noundef 4098, i32 noundef %267) #9
  br label %275

268:                                              ; preds = %262
  %269 = icmp eq ptr %263, null
  br i1 %269, label %278, label %270

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.sk_buff, ptr %263, i32 0, i32 17
  %272 = load ptr, ptr %271, align 4
  %273 = load i8, ptr %272, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %263, i32 noundef 0) #9
  %274 = zext i8 %273 to i32
  br label %275

275:                                              ; preds = %270, %265
  %276 = phi i32 [ %267, %265 ], [ %274, %270 ]
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %369

278:                                              ; preds = %275, %268, %258, %254
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 1, ptr %6, align 1
  %279 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 6
  %280 = load i8, ptr %279, align 2
  %281 = and i8 %280, 8
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %301, label %283

283:                                              ; preds = %278
  %284 = load volatile i32, ptr %92, align 4
  %285 = and i32 %284, 32768
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %301, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 20
  store i8 1, ptr %288, align 1
  %289 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3158, i32 noundef 1, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %290 = icmp ugt ptr %289, inttoptr (i32 -4096 to ptr)
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %293 = ptrtoint ptr %289 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %292, i32 noundef 3158, i32 noundef %293) #9
  br label %302

294:                                              ; preds = %287
  %295 = icmp eq ptr %289, null
  br i1 %295, label %301, label %296

296:                                              ; preds = %294
  %297 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 17
  %298 = load ptr, ptr %297, align 4
  %299 = load i8, ptr %298, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %289, i32 noundef 0) #9
  %300 = zext i8 %299 to i32
  br label %302

301:                                              ; preds = %294, %283, %278
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  br label %305

302:                                              ; preds = %296, %291
  %303 = phi i32 [ %293, %291 ], [ %300, %296 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %305, label %369

305:                                              ; preds = %302, %301
  call void @llvm.lifetime.start.p0(i64 241, ptr nonnull %2) #9
  %306 = load i8, ptr %279, align 2
  %307 = and i8 %306, 8
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %327, label %309

309:                                              ; preds = %305
  %310 = load volatile i32, ptr %92, align 4
  %311 = and i32 %310, 32768
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(240) %314, i8 0, i32 240, i1 false) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(241) %2, i8 0, i32 241, i1 false) #9
  %315 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3154, i32 noundef 241, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %316 = icmp ugt ptr %315, inttoptr (i32 -4096 to ptr)
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %319 = ptrtoint ptr %315 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %318, i32 noundef 3154, i32 noundef %319) #9
  br label %328

320:                                              ; preds = %313
  %321 = icmp eq ptr %315, null
  br i1 %321, label %327, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds %struct.sk_buff, ptr %315, i32 0, i32 17
  %324 = load ptr, ptr %323, align 4
  %325 = load i8, ptr %324, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %315, i32 noundef 0) #9
  %326 = zext i8 %325 to i32
  br label %328

327:                                              ; preds = %320, %309, %305
  call void @llvm.lifetime.end.p0(i64 241, ptr nonnull %2) #9
  br label %331

328:                                              ; preds = %322, %317
  %329 = phi i32 [ %319, %317 ], [ %326, %322 ]
  call void @llvm.lifetime.end.p0(i64 241, ptr nonnull %2) #9
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %369

331:                                              ; preds = %328, %327
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  %332 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 3
  %333 = load i8, ptr %332, align 1
  %334 = and i8 %333, 64
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %331
  %337 = load volatile i32, ptr %7, align 4
  %338 = and i32 %337, 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %357, label %340

340:                                              ; preds = %336, %331
  %341 = load i8, ptr %279, align 2
  %342 = and i8 %341, 1
  %343 = icmp eq i8 %342, 0
  %344 = select i1 %343, i8 1, i8 2
  store i8 %344, ptr %3, align 1
  %345 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3141, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %346 = icmp ugt ptr %345, inttoptr (i32 -4096 to ptr)
  br i1 %346, label %347, label %350

347:                                              ; preds = %340
  %348 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %349 = ptrtoint ptr %345 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %348, i32 noundef 3141, i32 noundef %349) #9
  br label %358

350:                                              ; preds = %340
  %351 = icmp eq ptr %345, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.sk_buff, ptr %345, i32 0, i32 17
  %354 = load ptr, ptr %353, align 4
  %355 = load i8, ptr %354, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %345, i32 noundef 0) #9
  %356 = zext i8 %355 to i32
  br label %358

357:                                              ; preds = %350, %336
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %361

358:                                              ; preds = %352, %347
  %359 = phi i32 [ %349, %347 ], [ %356, %352 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %358, %357
  %362 = tail call fastcc i32 @hci_read_inq_rsp_tx_power_sync(ptr noundef %0) #9
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %361
  %365 = tail call fastcc i32 @hci_read_local_ext_features_1_sync(ptr noundef %0) #9
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %364
  %368 = tail call fastcc i32 @hci_write_auth_enable_sync(ptr noundef %0) #9
  br label %369

369:                                              ; preds = %367, %364, %361, %358, %328, %302, %275, %246, %230, %214, %193, %190, %187, %184, %181, %178, %162, %146, %125
  %370 = phi i32 [ %276, %275 ], [ %303, %302 ], [ %329, %328 ], [ %359, %358 ], [ %362, %361 ], [ %365, %364 ], [ %215, %214 ], [ %231, %230 ], [ %247, %246 ], [ %147, %146 ], [ %163, %162 ], [ %179, %178 ], [ %182, %181 ], [ %185, %184 ], [ %188, %187 ], [ %191, %190 ], [ %194, %193 ], [ %368, %367 ], [ %126, %125 ]
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %597, label %372

372:                                              ; preds = %369
  %373 = load i8, ptr %98, align 1
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %597

375:                                              ; preds = %372
  %376 = tail call fastcc i32 @hci_set_event_mask_sync(ptr noundef %0) #9
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %478

378:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #9
  %379 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 6
  %380 = load i8, ptr %379, align 1
  %381 = and i8 %380, 32
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %401, label %383

383:                                              ; preds = %378
  %384 = load volatile i32, ptr %7, align 4
  %385 = and i32 %384, 32
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %401

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.hci_cp_read_stored_link_key, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #9
  store i8 1, ptr %388, align 1
  %389 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3085, i32 noundef 7, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %390 = icmp ugt ptr %389, inttoptr (i32 -4096 to ptr)
  br i1 %390, label %391, label %394

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %393 = ptrtoint ptr %389 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %392, i32 noundef 3085, i32 noundef %393) #9
  br label %402

394:                                              ; preds = %387
  %395 = icmp eq ptr %389, null
  br i1 %395, label %401, label %396

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.sk_buff, ptr %389, i32 0, i32 17
  %398 = load ptr, ptr %397, align 4
  %399 = load i8, ptr %398, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %389, i32 noundef 0) #9
  %400 = zext i8 %399 to i32
  br label %402

401:                                              ; preds = %394, %383, %378
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #9
  br label %405

402:                                              ; preds = %396, %391
  %403 = phi i32 [ %393, %391 ], [ %400, %396 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #9
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %478

405:                                              ; preds = %402, %401
  %406 = tail call fastcc i32 @hci_setup_link_policy_sync(ptr noundef %0) #9
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %478

408:                                              ; preds = %405
  %409 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 8
  %410 = load i8, ptr %409, align 1
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %429, label %413

413:                                              ; preds = %408
  %414 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3099, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %415 = icmp ugt ptr %414, inttoptr (i32 -4096 to ptr)
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %418 = ptrtoint ptr %414 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %417, i32 noundef 3099, i32 noundef %418) #9
  br label %426

419:                                              ; preds = %413
  %420 = icmp eq ptr %414, null
  br i1 %420, label %429, label %421

421:                                              ; preds = %419
  %422 = getelementptr inbounds %struct.sk_buff, ptr %414, i32 0, i32 17
  %423 = load ptr, ptr %422, align 4
  %424 = load i8, ptr %423, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %414, i32 noundef 0) #9
  %425 = zext i8 %424 to i32
  br label %426

426:                                              ; preds = %421, %416
  %427 = phi i32 [ %418, %416 ], [ %425, %421 ]
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %478

429:                                              ; preds = %426, %419, %408
  %430 = tail call fastcc i32 @hci_read_def_err_data_reporting_sync(ptr noundef %0) #9
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %478

432:                                              ; preds = %429
  %433 = tail call fastcc i32 @hci_read_page_scan_type_sync(ptr noundef %0) #9
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %478

435:                                              ; preds = %432
  %436 = tail call fastcc i32 @hci_read_local_ext_features_all_sync(ptr noundef %0) #9
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %478

438:                                              ; preds = %435
  %439 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %440 = load i8, ptr %439, align 2
  %441 = and i8 %440, 64
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %481, label %443

443:                                              ; preds = %438
  %444 = tail call fastcc i32 @hci_le_set_event_mask_sync(ptr noundef %0) #9
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %478

446:                                              ; preds = %443
  %447 = tail call fastcc i32 @hci_le_read_adv_tx_power_sync(ptr noundef %0) #9
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %478

449:                                              ; preds = %446
  %450 = tail call fastcc i32 @hci_le_read_tx_power_sync(ptr noundef %0) #9
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %478

452:                                              ; preds = %449
  %453 = tail call fastcc i32 @hci_le_read_accept_list_size_sync(ptr noundef %0) #9
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %478

455:                                              ; preds = %452
  %456 = tail call fastcc i32 @hci_le_clear_accept_list_sync(ptr noundef %0) #9
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %478

458:                                              ; preds = %455
  %459 = tail call fastcc i32 @hci_le_read_resolv_list_size_sync(ptr noundef %0) #9
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %478

461:                                              ; preds = %458
  %462 = tail call fastcc i32 @hci_le_clear_resolv_list_sync(ptr noundef %0) #9
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %478

464:                                              ; preds = %461
  %465 = tail call fastcc i32 @hci_le_set_rpa_timeout_sync(ptr noundef %0) #9
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %478

467:                                              ; preds = %464
  %468 = tail call fastcc i32 @hci_le_read_max_data_len_sync(ptr noundef %0) #9
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %478

470:                                              ; preds = %467
  %471 = tail call fastcc i32 @hci_le_read_def_data_len_sync(ptr noundef %0) #9
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %478

473:                                              ; preds = %470
  %474 = tail call fastcc i32 @hci_le_read_num_support_adv_sets_sync(ptr noundef %0) #9
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %473
  %477 = tail call fastcc i32 @hci_set_le_support_sync(ptr noundef %0) #9
  br label %478

478:                                              ; preds = %476, %473, %470, %467, %464, %461, %458, %455, %452, %449, %446, %443, %435, %432, %429, %426, %405, %402, %375
  %479 = phi i32 [ %444, %443 ], [ %447, %446 ], [ %450, %449 ], [ %453, %452 ], [ %456, %455 ], [ %459, %458 ], [ %462, %461 ], [ %465, %464 ], [ %468, %467 ], [ %471, %470 ], [ %474, %473 ], [ %376, %375 ], [ %403, %402 ], [ %406, %405 ], [ %427, %426 ], [ %430, %429 ], [ %433, %432 ], [ %436, %435 ], [ %477, %476 ]
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %597, label %481

481:                                              ; preds = %478, %438
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #9
  %482 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 6
  %483 = load i8, ptr %482, align 1
  %484 = icmp sgt i8 %483, -1
  br i1 %484, label %503, label %485

485:                                              ; preds = %481
  %486 = load volatile i32, ptr %7, align 4
  %487 = and i32 %486, 32
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %503

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.hci_cp_delete_stored_link_key, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false) #9
  store i8 1, ptr %490, align 1
  %491 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3090, i32 noundef 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %492 = icmp ugt ptr %491, inttoptr (i32 -4096 to ptr)
  br i1 %492, label %493, label %496

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %495 = ptrtoint ptr %491 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %494, i32 noundef 3090, i32 noundef %495) #9
  br label %504

496:                                              ; preds = %489
  %497 = icmp eq ptr %491, null
  br i1 %497, label %503, label %498

498:                                              ; preds = %496
  %499 = getelementptr inbounds %struct.sk_buff, ptr %491, i32 0, i32 17
  %500 = load ptr, ptr %499, align 4
  %501 = load i8, ptr %500, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %491, i32 noundef 0) #9
  %502 = zext i8 %501 to i32
  br label %504

503:                                              ; preds = %496, %485, %481
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #9
  br label %507

504:                                              ; preds = %498, %493
  %505 = phi i32 [ %495, %493 ], [ %502, %498 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #9
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %574

507:                                              ; preds = %504, %503
  %508 = tail call fastcc i32 @hci_set_event_mask_page_2_sync(ptr noundef %0) #9
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %574

510:                                              ; preds = %507
  %511 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 29
  %512 = load i8, ptr %511, align 1
  %513 = and i8 %512, 32
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %531, label %515

515:                                              ; preds = %510
  %516 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4107, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %517 = icmp ugt ptr %516, inttoptr (i32 -4096 to ptr)
  br i1 %517, label %518, label %521

518:                                              ; preds = %515
  %519 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %520 = ptrtoint ptr %516 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %519, i32 noundef 4107, i32 noundef %520) #9
  br label %528

521:                                              ; preds = %515
  %522 = icmp eq ptr %516, null
  br i1 %522, label %531, label %523

523:                                              ; preds = %521
  %524 = getelementptr inbounds %struct.sk_buff, ptr %516, i32 0, i32 17
  %525 = load ptr, ptr %524, align 4
  %526 = load i8, ptr %525, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %516, i32 noundef 0) #9
  %527 = zext i8 %526 to i32
  br label %528

528:                                              ; preds = %523, %518
  %529 = phi i32 [ %520, %518 ], [ %527, %523 ]
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %574

531:                                              ; preds = %528, %521, %510
  %532 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 41
  %533 = load i8, ptr %532, align 1
  %534 = and i8 %533, 8
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %552, label %536

536:                                              ; preds = %531
  %537 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4108, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %538 = icmp ugt ptr %537, inttoptr (i32 -4096 to ptr)
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %541 = ptrtoint ptr %537 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %540, i32 noundef 4108, i32 noundef %541) #9
  br label %549

542:                                              ; preds = %536
  %543 = icmp eq ptr %537, null
  br i1 %543, label %552, label %544

544:                                              ; preds = %542
  %545 = getelementptr inbounds %struct.sk_buff, ptr %537, i32 0, i32 17
  %546 = load ptr, ptr %545, align 4
  %547 = load i8, ptr %546, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %537, i32 noundef 0) #9
  %548 = zext i8 %547 to i32
  br label %549

549:                                              ; preds = %544, %539
  %550 = phi i32 [ %541, %539 ], [ %548, %544 ]
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %574

552:                                              ; preds = %549, %542, %531
  %553 = tail call fastcc i32 @hci_get_mws_transport_config_sync(ptr noundef %0) #9
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %574

555:                                              ; preds = %552
  %556 = tail call fastcc i32 @hci_read_sync_train_params_sync(ptr noundef %0) #9
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %574

558:                                              ; preds = %555
  %559 = tail call fastcc i32 @hci_write_sc_support_1_sync(ptr noundef %0) #9
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %574

561:                                              ; preds = %558
  %562 = tail call fastcc i32 @hci_set_err_data_report_sync(ptr noundef %0) #9
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %574

564:                                              ; preds = %561
  %565 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %566 = load i8, ptr %565, align 2
  %567 = and i8 %566, 64
  %568 = icmp eq i8 %567, 0
  br i1 %568, label %577, label %569

569:                                              ; preds = %564
  %570 = tail call fastcc i32 @hci_le_set_write_def_data_len_sync(ptr noundef %0) #9
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %569
  %573 = tail call fastcc i32 @hci_le_set_default_phy_sync(ptr noundef %0) #9
  br label %574

574:                                              ; preds = %572, %569, %561, %558, %555, %552, %549, %528, %507, %504
  %575 = phi i32 [ %570, %569 ], [ %505, %504 ], [ %508, %507 ], [ %529, %528 ], [ %550, %549 ], [ %553, %552 ], [ %556, %555 ], [ %559, %558 ], [ %562, %561 ], [ %573, %572 ]
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %597, label %577

577:                                              ; preds = %574, %564
  %578 = load volatile i32, ptr %92, align 4
  %579 = and i32 %578, 1
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %585

581:                                              ; preds = %577
  %582 = load volatile i32, ptr %92, align 4
  %583 = and i32 %582, 2
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %597, label %585

585:                                              ; preds = %581, %577
  tail call void @hci_debugfs_create_common(ptr noundef %0) #9
  %586 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %587 = load i8, ptr %586, align 2
  %588 = and i8 %587, 32
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  tail call void @hci_debugfs_create_bredr(ptr noundef %0) #9
  %591 = load i8, ptr %586, align 2
  br label %592

592:                                              ; preds = %590, %585
  %593 = phi i8 [ %591, %590 ], [ %587, %585 ]
  %594 = and i8 %593, 64
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %592
  tail call void @hci_debugfs_create_le(ptr noundef %0) #9
  br label %597

597:                                              ; preds = %596, %592, %581, %574, %478, %372, %369, %88
  %598 = phi i32 [ %89, %88 ], [ %370, %369 ], [ 0, %372 ], [ %479, %478 ], [ %575, %574 ], [ 0, %581 ], [ 0, %596 ], [ 0, %592 ]
  ret i32 %598
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_adv_instances_set_rpa_expired(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_close_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 141
  %3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 151
  %5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %4) #9
  tail call void @hci_request_cancel_all(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 230
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 %21(ptr noundef %0) #9
  br label %25

25:                                               ; preds = %23, %19, %14, %10, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %24, %23 ], [ 0, %19 ], [ 0, %14 ]
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %28 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 150
  %32 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %31) #9
  br label %192

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 154
  %35 = tail call zeroext i1 @flush_work(ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 152
  %37 = tail call zeroext i1 @flush_work(ptr noundef %36) #9
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i16 0, ptr %38, align 4
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %6) #9
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %6) #9
  br label %42

42:                                               ; preds = %41, %33
  %43 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %6) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 149
  %47 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %46) #9
  br label %48

48:                                               ; preds = %45, %42
  %49 = load volatile i32, ptr %6, align 4
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 222
  %54 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %53) #9
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %64, label %58

58:                                               ; preds = %58, %52
  %59 = phi ptr [ %62, %58 ], [ %56, %52 ]
  %60 = getelementptr inbounds %struct.adv_info, ptr %59, i32 0, i32 17
  %61 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %60) #9
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, %55
  br i1 %63, label %64, label %58

64:                                               ; preds = %58, %52, %48
  %65 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %66 = load ptr, ptr %65, align 4
  tail call void @drain_workqueue(ptr noundef %66) #9
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %67) #9
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #9
  %68 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %6) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load volatile i32, ptr %6, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %6, align 4
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @__mgmt_power_off(ptr noundef %0) #9
  br label %83

83:                                               ; preds = %82, %78, %74, %70, %64
  tail call void @hci_inquiry_cache_flush(ptr noundef %0) #9
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %139, label %87

87:                                               ; preds = %131, %83
  %88 = phi ptr [ %137, %131 ], [ %85, %83 ]
  %89 = getelementptr inbounds %struct.hci_conn_params, ptr %88, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %131, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #9, !srcloc !9
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #9, !srcloc !17
  %95 = extractvalue { i32, i32 } %94, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 14
  %99 = load i8, ptr %98, align 1
  switch i8 %99, label %119 [
    i8 1, label %100
    i8 -128, label %100
    i8 -127, label %115
  ]

100:                                              ; preds = %97, %97
  %101 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 60
  %102 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %101) #9
  %103 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 12
  %104 = load i16, ptr %103, align 4
  %105 = icmp eq i16 %104, 1
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 31
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 16
  %111 = load i8, ptr %110, align 1, !range !15
  %112 = xor i8 %111, 1
  %113 = zext i8 %112 to i32
  %114 = shl nuw nsw i32 %109, %113
  br label %119

115:                                              ; preds = %97
  %116 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 31
  %117 = load i16, ptr %116, align 2
  %118 = zext i16 %117 to i32
  br label %119

119:                                              ; preds = %115, %106, %100, %97
  %120 = phi i32 [ %118, %115 ], [ %114, %106 ], [ 0, %100 ], [ 0, %97 ]
  %121 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 58
  %122 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %121) #9
  %123 = getelementptr inbounds %struct.hci_conn, ptr %90, i32 0, i32 65
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.hci_dev, ptr %124, i32 0, i32 138
  %126 = load ptr, ptr %125, align 4
  %127 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %126, ptr noundef %121, i32 noundef %120) #9
  br label %128

128:                                              ; preds = %119, %92
  %129 = load ptr, ptr %89, align 4
  %130 = getelementptr inbounds %struct.hci_conn, ptr %129, i32 0, i32 63
  tail call void @put_device(ptr noundef %130) #9
  store ptr null, ptr %89, align 4
  br label %131

131:                                              ; preds = %128, %87
  %132 = getelementptr inbounds %struct.hci_conn_params, ptr %88, i32 0, i32 1
  %133 = getelementptr inbounds %struct.hci_conn_params, ptr %88, i32 0, i32 1, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %132, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %134, ptr %136, align 4
  store volatile ptr %135, ptr %134, align 4
  store volatile ptr %132, ptr %132, align 4
  store ptr %132, ptr %133, align 4
  %137 = load ptr, ptr %88, align 4
  %138 = icmp eq ptr %137, %84
  br i1 %138, label %139, label %87

139:                                              ; preds = %131, %83
  tail call void @hci_conn_hash_flush(ptr noundef %0) #9
  tail call void @smp_unregister(ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %67) #9
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 4) #9
  %140 = load volatile i32, ptr %6, align 4
  %141 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 228
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = tail call i32 %142(ptr noundef %0) #9
  br label %146

146:                                              ; preds = %144, %139
  %147 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  tail call void @skb_queue_purge(ptr noundef %147) #9
  %148 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 119
  store volatile i32 1, ptr %148, align 4
  %149 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  %153 = xor i1 %69, true
  %154 = select i1 %152, i1 true, i1 %153
  br i1 %154, label %169, label %155

155:                                              ; preds = %146
  %156 = load volatile i32, ptr %6, align 4
  %157 = and i32 %156, 1024
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  tail call void @_set_bit(i32 noundef 1, ptr noundef %27) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %27) #9
  %160 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %164 = ptrtoint ptr %160 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %163, i32 noundef 3075, i32 noundef %164) #9
  br label %168

165:                                              ; preds = %159
  %166 = icmp eq ptr %160, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  tail call void @kfree_skb_reason(ptr noundef nonnull %160, i32 noundef 0) #9
  br label %168

168:                                              ; preds = %167, %165, %162
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %27) #9
  br label %169

169:                                              ; preds = %168, %155, %146
  %170 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %171 = tail call zeroext i1 @flush_work(ptr noundef %170) #9
  %172 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 159
  tail call void @skb_queue_purge(ptr noundef %172) #9
  tail call void @skb_queue_purge(ptr noundef %147) #9
  %173 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 160
  tail call void @skb_queue_purge(ptr noundef %173) #9
  %174 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 150
  %179 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %178) #9
  %180 = load ptr, ptr %174, align 8
  tail call void @kfree_skb_reason(ptr noundef %180, i32 noundef 0) #9
  store ptr null, ptr %174, align 8
  br label %181

181:                                              ; preds = %177, %169
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %27) #9
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 8) #9
  %182 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 227
  %183 = load ptr, ptr %182, align 4
  %184 = tail call i32 %183(ptr noundef %0) #9
  %185 = load i32, ptr %27, align 4
  %186 = and i32 %185, 256
  store i32 %186, ptr %27, align 4
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %6) #9
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %6) #9
  tail call void @_clear_bit(i32 noundef 40, ptr noundef %6) #9
  tail call void @_clear_bit(i32 noundef 30, ptr noundef %6) #9
  tail call void @_clear_bit(i32 noundef 44, ptr noundef %6) #9
  %187 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 105
  store i8 0, ptr %187, align 4
  %188 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(240) %188, i8 0, i32 240, i1 false)
  %189 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(3) %189, i8 0, i32 3, i1 false)
  %190 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  %191 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(6) %190, i8 0, i64 6, i1 false)
  tail call void @put_device(ptr noundef %191) #9
  br label %192

192:                                              ; preds = %181, %30
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_request_cancel_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_discovery_set_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mgmt_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_inquiry_cache_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_hash_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_stop_discovery_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_remote_name_req_cancel, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %50 [
    i32 2, label %7
    i32 4, label %7
  ]

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1026, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 1026, i32 noundef %17) #9
  br label %25

18:                                               ; preds = %12
  %19 = icmp eq ptr %13, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i32 [ %17, %15 ], [ %24, %20 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %25, %18, %7
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157
  %35 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 158
  %37 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %36) #9
  %38 = load volatile i32, ptr %29, align 4
  %39 = and i32 %38, 16384
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %43 = load i8, ptr %42, align 4, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %49, i32 noundef %46) #9
  br label %101

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 16384
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %57 = load i8, ptr %56, align 4, !range !15
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %63, i32 noundef %60) #9
  br label %101

64:                                               ; preds = %59, %55, %50, %45, %41, %33, %28
  %65 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %66 = load i8, ptr %65, align 2
  %67 = and i8 %66, 64
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 512
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call fastcc void @hci_resume_advertising_sync(ptr noundef %0)
  br label %75

75:                                               ; preds = %74, %69, %64
  %76 = load i32, ptr %4, align 4
  %77 = icmp eq i32 %76, 6
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %5, align 4
  %80 = add i32 %79, -3
  %81 = icmp ult i32 %80, 2
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %83 = call ptr @hci_inquiry_cache_lookup_resolve(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #9
  %84 = icmp eq ptr %83, null
  br i1 %84, label %101, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.inquiry_entry, ptr %83, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %86, i32 6, i1 false) #9
  %87 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1050, i32 noundef 6, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %91 = ptrtoint ptr %87 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %90, i32 noundef 1050, i32 noundef %91) #9
  br label %99

92:                                               ; preds = %85
  %93 = icmp eq ptr %87, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  %97 = load i8, ptr %96, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %87, i32 noundef 0) #9
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %94, %92, %89
  %100 = phi i32 [ %91, %89 ], [ %98, %94 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #9
  br label %101

101:                                              ; preds = %99, %82, %78, %75, %62, %48, %25
  %102 = phi i32 [ %100, %99 ], [ %26, %25 ], [ %46, %48 ], [ %60, %62 ], [ 0, %75 ], [ 0, %82 ], [ 0, %78 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_resume_advertising_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %3 = load i8, ptr %2, align 4, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  store i8 0, ptr %2, align 4
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 24, ptr noundef %10) #9
  store i32 0, ptr %6, align 8
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %36, label %20

20:                                               ; preds = %30, %16
  %21 = phi ptr [ %22, %30 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.adv_info, ptr %21, i32 0, i32 3
  %24 = load i8, ptr %23, align 2
  %25 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i8, ptr %23, align 2
  %29 = tail call i32 @hci_remove_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %28, ptr noundef null)
  br label %30

30:                                               ; preds = %27, %20
  %31 = icmp eq ptr %22, %17
  br i1 %31, label %36, label %20

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %34 = load i8, ptr %33, align 8
  %35 = tail call i32 @hci_schedule_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %34, i1 noundef zeroext true)
  br label %36

36:                                               ; preds = %32, %30, %16
  store i8 0, ptr %2, align 4
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_inquiry_cache_lookup_resolve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_set_powered_sync(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = icmp eq i8 %1, 0
  br i1 %6, label %79, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5)
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %13) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 141
  %22 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %21) #9
  %23 = tail call i32 @hci_powered_update_sync(ptr noundef %0) #9
  br label %77

24:                                               ; preds = %17, %12, %7
  %25 = tail call i32 @hci_dev_open_sync(ptr noundef %0) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load volatile i32, ptr %28, align 4
  %34 = and i32 %33, 1024
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false) #9
  %42 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %4, i32 6) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false) #9
  %46 = call i32 @bcmp(ptr noundef dereferenceable(6) %45, ptr noundef nonnull dereferenceable(6) %5, i32 6) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %32, %27
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %28) #9
  %49 = tail call i32 @hci_dev_close_sync(ptr noundef %0) #9
  br label %59

50:                                               ; preds = %44, %40, %36
  %51 = load volatile i32, ptr %28, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 141
  %58 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %57, i32 noundef 200) #9
  br label %59

59:                                               ; preds = %54, %50, %48
  %60 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %28) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load volatile i32, ptr %28, align 4
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 8, ptr noundef %8) #9
  br label %67

67:                                               ; preds = %66, %62
  tail call void @mgmt_index_added(ptr noundef %0) #9
  br label %77

68:                                               ; preds = %59
  %69 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %28) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load volatile i32, ptr %28, align 4
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %8) #9
  br label %76

76:                                               ; preds = %75, %71
  tail call void @mgmt_index_added(ptr noundef %0) #9
  br label %77

77:                                               ; preds = %76, %68, %67, %24, %20
  %78 = phi i32 [ %23, %20 ], [ %25, %24 ], [ 0, %68 ], [ 0, %76 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5)
  br label %120

79:                                               ; preds = %2
  %80 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %120, label %84

84:                                               ; preds = %79
  %85 = load volatile i32, ptr %80, align 4
  %86 = and i32 %85, 16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load volatile i32, ptr %80, align 4
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %88, %84
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1
  %93 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %97 = ptrtoint ptr %93 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %96, i32 noundef 3098, i32 noundef %97) #9
  br label %106

98:                                               ; preds = %92
  %99 = icmp eq ptr %93, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %109

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.sk_buff, ptr %93, i32 0, i32 17
  %103 = load ptr, ptr %102, align 4
  %104 = load i8, ptr %103, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %93, i32 noundef 0) #9
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i32 [ %97, %95 ], [ %105, %101 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106, %100, %88
  %110 = tail call fastcc i32 @hci_clear_adv_sync(ptr noundef %0, ptr noundef null, i1 noundef zeroext false) #9
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = tail call i32 @hci_stop_discovery_sync(ptr noundef %0) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = tail call fastcc i32 @hci_disconnect_all_sync(ptr noundef %0) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = tail call i32 @hci_dev_close_sync(ptr noundef %0) #9
  br label %120

120:                                              ; preds = %118, %115, %112, %109, %106, %79, %77
  %121 = phi i32 [ %78, %77 ], [ %119, %118 ], [ 0, %79 ], [ %107, %106 ], [ %110, %109 ], [ %113, %112 ], [ %116, %115 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_discoverable_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_current_iac_lap, align 1
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #9
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %2, i8 0, i32 7, i1 false) #9
  %13 = load volatile i32, ptr %3, align 4
  %14 = and i32 %13, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 34
  %18 = load i8, ptr %17, align 4
  %19 = tail call i8 @llvm.umin.i8(i8 %18, i8 2) #9
  store i8 %19, ptr %2, align 1
  %20 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1, i32 3
  store i8 51, ptr %20, align 1
  %21 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1, i32 4
  store i8 -117, ptr %21, align 1
  %22 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1, i32 5
  store i8 -98, ptr %22, align 1
  %23 = mul nuw nsw i8 %19, 3
  %24 = add nuw nsw i8 %23, 1
  %25 = zext i8 %24 to i32
  br label %27

26:                                               ; preds = %12
  store i8 1, ptr %2, align 1
  br label %27

27:                                               ; preds = %26, %16
  %28 = phi i32 [ 4, %26 ], [ %25, %16 ]
  %29 = phi i8 [ 51, %26 ], [ 0, %16 ]
  %30 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1, i32 1
  store i8 -117, ptr %31, align 1
  %32 = getelementptr inbounds %struct.hci_cp_write_current_iac_lap, ptr %2, i32 0, i32 1, i32 2
  store i8 -98, ptr %32, align 1
  %33 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3130, i32 noundef %28, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %37 = ptrtoint ptr %33 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %36, i32 noundef 3130, i32 noundef %37) #9
  br label %46

38:                                               ; preds = %27
  %39 = icmp eq ptr %33, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %33, i32 noundef 0) #9
  %44 = zext i8 %43 to i32
  br label %46

45:                                               ; preds = %38, %8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #9
  br label %49

46:                                               ; preds = %40, %35
  %47 = phi i32 [ %37, %35 ], [ %44, %40 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46, %45
  %50 = tail call i32 @hci_update_scan_sync(ptr noundef %0)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = tail call i32 @hci_update_class_sync(ptr noundef %0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %52, %1
  %56 = load volatile i32, ptr %3, align 4
  %57 = and i32 %56, 16777216
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext 0)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load volatile i32, ptr %3, align 4
  %64 = and i32 %63, 524288
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = tail call fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %81

79:                                               ; preds = %66
  %80 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0)
  br label %81

81:                                               ; preds = %79, %77, %74, %71, %62, %59, %55, %52, %49, %46
  %82 = phi i32 [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %60, %59 ], [ %80, %79 ], [ 0, %62 ], [ 0, %55 ], [ %78, %77 ], [ %72, %71 ], [ %75, %74 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_discoverable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = load volatile i32, ptr %7, align 4
  %17 = and i32 %16, 134217728
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = load volatile i32, ptr %7, align 4
  %21 = and i32 %20, 524288
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 20) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %25, i32 0, i32 1
  store ptr @update_discoverable_sync, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %25, i32 0, i32 2
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.hci_cmd_sync_work_entry, ptr %25, i32 0, i32 3
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 145
  tail call void @mutex_lock(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 144, i32 1
  %34 = load ptr, ptr %33, align 4
  store ptr %25, ptr %33, align 4
  store ptr %32, ptr %25, align 8
  %35 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %25, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %31) #9
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 143
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %37, ptr noundef %38) #9
  br label %40

40:                                               ; preds = %27, %23, %19, %15, %11, %6, %1
  %41 = phi i32 [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 0, %27 ], [ -12, %23 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @update_discoverable_sync(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @hci_update_discoverable_sync(ptr noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_update_connectable_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @hci_update_scan_sync(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %44

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %12 = load i8, ptr %11, align 8
  %13 = tail call i32 @hci_update_adv_data_sync(ptr noundef %0, i8 noundef zeroext %12)
  br label %14

14:                                               ; preds = %10, %4
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %42, label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %29 = load i8, ptr %28, align 8
  %30 = tail call i32 @hci_setup_ext_adv_instance_sync(ptr noundef %0, i8 noundef zeroext %29) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @hci_set_ext_scan_rsp_data_sync(ptr noundef %0, i8 noundef zeroext %29) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = tail call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext %29) #9
  br label %39

37:                                               ; preds = %22
  %38 = tail call i32 @hci_enable_advertising_sync(ptr noundef %0)
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %38, %37 ], [ %36, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39, %18
  %43 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0)
  br label %44

44:                                               ; preds = %42, %39, %32, %27, %1
  %45 = phi i32 [ %43, %42 ], [ %2, %1 ], [ %40, %39 ], [ %33, %32 ], [ %30, %27 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_start_discovery_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %53 [
    i32 1, label %4
    i32 7, label %6
    i32 6, label %27
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @hci_inquiry_sync(ptr noundef %0)
  br label %53

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 51
  %13 = load i16, ptr %12, align 2
  %14 = shl i16 %13, 1
  %15 = tail call fastcc i32 @hci_active_scan_sync(ptr noundef %0, i16 noundef zeroext %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @hci_inquiry_sync(ptr noundef %0) #9
  br label %31

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 69
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  %23 = tail call i32 @__msecs_to_jiffies(i32 noundef %22) #9
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 51
  %25 = load i16, ptr %24, align 2
  %26 = tail call fastcc i32 @hci_active_scan_sync(ptr noundef %0, i16 noundef zeroext %25)
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 51
  %29 = load i16, ptr %28, align 2
  %30 = tail call fastcc i32 @hci_active_scan_sync(ptr noundef %0, i16 noundef zeroext %29)
  br label %31

31:                                               ; preds = %27, %19, %17
  %32 = phi i32 [ %30, %27 ], [ %26, %19 ], [ %18, %17 ]
  %33 = phi i32 [ 1024, %27 ], [ %23, %19 ], [ 1024, %17 ]
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 13
  %42 = load i8, ptr %41, align 1, !range !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 18
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 19
  store i32 %33, ptr %47, align 8
  br label %48

48:                                               ; preds = %44, %40, %35
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 157
  %52 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %51, i32 noundef %33) #9
  br label %53

53:                                               ; preds = %48, %31, %11, %4, %1
  %54 = phi i32 [ 0, %48 ], [ %5, %4 ], [ -22, %1 ], [ %32, %31 ], [ %15, %11 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_inquiry_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_inquiry, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #9
  tail call void @hci_inquiry_cache_flush(ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false)
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 14
  %10 = load i8, ptr %9, align 2, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @__const.hci_inquiry_sync.liac, i32 3, i1 false)
  br label %14

13:                                               ; preds = %7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @__const.hci_inquiry_sync.giac, i32 3, i1 false)
  br label %14

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %struct.hci_cp_inquiry, ptr %2, i32 0, i32 1
  store i8 8, ptr %15, align 1
  %16 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1025, i32 noundef 5, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %20 = ptrtoint ptr %16 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %19, i32 noundef 1025, i32 noundef %20) #9
  br label %28

21:                                               ; preds = %14
  %22 = icmp eq ptr %16, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #9
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %23, %21, %18, %1
  %29 = phi i32 [ 0, %1 ], [ %20, %18 ], [ %27, %23 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #9
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_active_scan_sync(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %11 = load i8, ptr %10, align 4, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %17, i32 noundef %14) #9
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %17, i32 noundef %14) #9
  br label %122

18:                                               ; preds = %13, %9, %2
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 225
  %20 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %19) #9
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 224
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 64
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  br label %88

27:                                               ; preds = %18
  %28 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %34 = load i8, ptr %33, align 4, !range !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load volatile i32, ptr %5, align 4
  %38 = lshr i32 %37, 24
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %5) #9
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %5) #9
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  store i16 0, ptr %52, align 2
  %56 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %57 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %56) #9
  br label %61

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %59, i32 noundef %44) #9
  br label %109

60:                                               ; preds = %32, %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  br label %66

61:                                               ; preds = %55, %51, %46
  store i8 1, ptr %33, align 4
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  store i32 %39, ptr %62, align 8
  %63 = load i8, ptr %22, align 2
  %64 = and i8 %63, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %61, %60
  %67 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 512
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load volatile i32, ptr %67, align 4
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8237, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %80 = ptrtoint ptr %76 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %79, i32 noundef 8237, i32 noundef %80) #9
  br label %89

81:                                               ; preds = %75
  %82 = icmp eq ptr %76, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 17
  %85 = load ptr, ptr %84, align 4
  %86 = load i8, ptr %85, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %76, i32 noundef 0) #9
  %87 = zext i8 %86 to i32
  br label %89

88:                                               ; preds = %81, %71, %66, %61, %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %94

89:                                               ; preds = %83, %78
  %90 = phi i32 [ %80, %78 ], [ %87, %83 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %93, i32 noundef %90) #9
  br label %109

94:                                               ; preds = %89, %88
  %95 = load volatile i32, ptr %5, align 4
  %96 = and i32 %95, 262144
  %97 = icmp ne i32 %96, 0
  %98 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %97, ptr noundef nonnull %4)
  %99 = icmp slt i32 %98, 0
  %100 = load i8, ptr %4, align 1
  %101 = select i1 %99, i8 0, i8 %100
  %102 = tail call zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) #9
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 52
  %106 = load i16, ptr %105, align 4
  %107 = tail call fastcc i32 @hci_start_scan_sync(ptr noundef %0, i8 noundef zeroext 1, i16 noundef zeroext %1, i16 noundef zeroext %106, i8 noundef zeroext %101, i8 noundef zeroext 0, i8 noundef zeroext %104)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %94, %92, %58
  %110 = phi i32 [ %44, %58 ], [ %90, %92 ], [ %107, %94 ]
  %111 = load i8, ptr %22, align 2
  %112 = and i8 %111, 64
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %116, 512
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  tail call fastcc void @hci_resume_advertising_sync(ptr noundef %0)
  br label %120

120:                                              ; preds = %119, %114, %109
  %121 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0)
  br label %122

122:                                              ; preds = %120, %94, %16
  %123 = phi i32 [ %14, %16 ], [ %110, %120 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_suspend_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.hci_cp_set_event_filter, align 1
  %5 = alloca %struct.hci_cp_set_event_filter, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %8 = load i8, ptr %7, align 1, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %180

10:                                               ; preds = %1
  store i8 1, ptr %7, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 172
  %17 = load i8, ptr %16, align 4, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 4) #9
  %20 = tail call i32 @hci_stop_discovery_sync(ptr noundef %0) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  store i8 1, ptr %16, align 4
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 171
  store i32 %12, ptr %23, align 8
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 0) #9
  br label %24

24:                                               ; preds = %22, %19, %15, %10
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %26 = load i8, ptr %25, align 4, !range !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %30 = load volatile i32, ptr %29, align 4
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %29) #9
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %29) #9
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 16
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  store i16 0, ptr %45, align 2
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %50 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %49) #9
  br label %51

51:                                               ; preds = %48, %44, %39
  store i8 1, ptr %25, align 4
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  store i32 %32, ptr %52, align 8
  br label %53

53:                                               ; preds = %51, %36, %24
  %54 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 0, ptr %6, align 1
  %59 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %63 = ptrtoint ptr %59 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %62, i32 noundef 3098, i32 noundef %63) #9
  br label %67

64:                                               ; preds = %58
  %65 = icmp eq ptr %59, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #9
  br label %67

67:                                               ; preds = %66, %64, %61
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %68

68:                                               ; preds = %67, %53
  %69 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %0) #9
  %70 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  store i8 1, ptr %70, align 4
  %71 = tail call fastcc i32 @hci_disconnect_all_sync(ptr noundef %0)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 177
  store i32 0, ptr %74, align 8
  %75 = tail call i32 @hci_resume_sync(ptr noundef %0)
  br label %180

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 238
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call zeroext i1 %78(ptr noundef %0) #9
  br i1 %81, label %84, label %82

82:                                               ; preds = %80, %76
  %83 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 177
  store i32 1, ptr %83, align 8
  br label %180

84:                                               ; preds = %80
  store i8 0, ptr %70, align 4
  %85 = tail call fastcc i32 @hci_set_event_mask_sync(ptr noundef %0)
  %86 = load volatile i32, ptr %54, align 4
  %87 = and i32 %86, 8
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %177, label %93

93:                                               ; preds = %84
  %94 = load volatile i32, ptr %89, align 4
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %93
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #9
  %98 = load volatile i32, ptr %89, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %5, i32 1
  store i64 0, ptr %102, align 1
  store i8 0, ptr %5, align 1
  %103 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3077, i32 noundef 1, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %107 = ptrtoint ptr %103 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %106, i32 noundef 3077, i32 noundef %107) #9
  br label %111

108:                                              ; preds = %101
  %109 = icmp eq ptr %103, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  tail call void @kfree_skb_reason(ptr noundef nonnull %103, i32 noundef 0) #9
  br label %111

111:                                              ; preds = %110, %108, %105, %97
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #9
  br label %112

112:                                              ; preds = %111, %93
  %113 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %113
  br i1 %115, label %163, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds i8, ptr %4, i32 1
  %118 = getelementptr inbounds %struct.hci_cp_set_event_filter, ptr %4, i32 0, i32 2
  %119 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br label %120

120:                                              ; preds = %146, %116
  %121 = phi ptr [ %114, %116 ], [ %148, %146 ]
  %122 = phi i8 [ 0, %116 ], [ %147, %146 ]
  %123 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %121, i32 0, i32 3
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %146, label %127

127:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #9
  %128 = load volatile i32, ptr %89, align 4
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %121, i32 0, i32 1
  store i64 144115188075855874, ptr %117, align 1
  store i8 2, ptr %4, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %118, ptr noundef align 1 dereferenceable(6) %132, i32 6, i1 false) #9
  %133 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3077, i32 noundef 9, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %134 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = ptrtoint ptr %133 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %119, i32 noundef 3077, i32 noundef %136) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #9
  br label %146

137:                                              ; preds = %131
  %138 = icmp eq ptr %133, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %137, %127
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #9
  br label %145

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 17
  %142 = load ptr, ptr %141, align 4
  %143 = load i8, ptr %142, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %133, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #9
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140, %139
  br label %146

146:                                              ; preds = %145, %140, %135, %120
  %147 = phi i8 [ %122, %120 ], [ 2, %145 ], [ %122, %140 ], [ %122, %135 ]
  %148 = load ptr, ptr %121, align 4
  %149 = icmp eq ptr %148, %113
  br i1 %149, label %150, label %120

150:                                              ; preds = %146
  %151 = icmp eq i8 %147, 0
  %152 = xor i1 %88, true
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %163, label %154

154:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 %147, ptr %3, align 1
  %155 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %156 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = ptrtoint ptr %155 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %119, i32 noundef 3098, i32 noundef %158) #9
  br label %162

159:                                              ; preds = %154
  %160 = icmp eq ptr %155, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %159
  tail call void @kfree_skb_reason(ptr noundef nonnull %155, i32 noundef 0) #9
  br label %162

162:                                              ; preds = %161, %159, %157
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  br label %177

163:                                              ; preds = %150, %112
  %164 = phi i1 [ %151, %150 ], [ true, %112 ]
  %165 = xor i1 %164, true
  %166 = select i1 %165, i1 true, i1 %88
  br i1 %166, label %177, label %167

167:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1
  %168 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %172 = ptrtoint ptr %168 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %171, i32 noundef 3098, i32 noundef %172) #9
  br label %176

173:                                              ; preds = %167
  %174 = icmp eq ptr %168, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %173
  tail call void @kfree_skb_reason(ptr noundef nonnull %168, i32 noundef 0) #9
  br label %176

176:                                              ; preds = %175, %173, %170
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %177

177:                                              ; preds = %176, %163, %162, %84
  %178 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0)
  store i8 1, ptr %70, align 4
  %179 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 177
  store i32 2, ptr %179, align 8
  br label %180

180:                                              ; preds = %177, %82, %73, %1
  %181 = phi i32 [ %71, %73 ], [ 0, %177 ], [ 0, %82 ], [ 0, %1 ]
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_disconnect_all_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_reject_sync_conn_req, align 1
  %3 = alloca %struct.hci_cp_reject_conn_req, align 1
  %4 = alloca %struct.hci_cp_disconn_phy_link, align 2
  %5 = alloca %struct.hci_cp_disconnect, align 2
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hci_cp_reject_sync_conn_req, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.hci_cp_reject_conn_req, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %12 = getelementptr inbounds %struct.hci_cp_disconnect, ptr %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %14 = getelementptr inbounds %struct.hci_cp_disconn_phy_link, ptr %4, i32 0, i32 1
  br label %15

15:                                               ; preds = %144, %1
  %16 = phi ptr [ %7, %1 ], [ %17, %144 ]
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %16, %6
  br i1 %18, label %147, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 12
  %21 = load i16, ptr %20, align 4
  switch i16 %21, label %143 [
    i16 1, label %22
    i16 7, label %22
    i16 5, label %72
    i16 6, label %110
  ]

22:                                               ; preds = %19, %19
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %23 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 14
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, -127
  %26 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 11
  %27 = load i16, ptr %26, align 2
  br i1 %25, label %28, label %43

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  %29 = trunc i16 %27 to i8
  store i8 %29, ptr %4, align 2
  store i8 21, ptr %14, align 1
  %30 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1079, i32 noundef 2, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %30 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1079, i32 noundef %33) #9
  br label %41

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #9
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %34, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %36 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %70

43:                                               ; preds = %22
  store i16 %27, ptr %5, align 2
  store i8 21, ptr %12, align 2
  %44 = load i8, ptr %13, align 1, !range !15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1030, i32 noundef 3, ptr noundef nonnull %5, i8 noundef zeroext 5, i32 noundef 200, ptr noundef null) #9
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1030, i32 noundef %50) #9
  br label %70

51:                                               ; preds = %46
  %52 = icmp eq ptr %47, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = load i8, ptr %55, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %47, i32 noundef 0) #9
  %57 = zext i8 %56 to i32
  br label %70

58:                                               ; preds = %43
  %59 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1030, i32 noundef 3, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = ptrtoint ptr %59 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1030, i32 noundef %62) #9
  br label %70

63:                                               ; preds = %58
  %64 = icmp eq ptr %59, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = load i8, ptr %67, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %59, i32 noundef 0) #9
  %69 = zext i8 %68 to i32
  br label %70

70:                                               ; preds = %65, %63, %61, %53, %51, %49, %41
  %71 = phi i32 [ %42, %41 ], [ %50, %49 ], [ %57, %53 ], [ 0, %51 ], [ %62, %61 ], [ %69, %65 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %144

72:                                               ; preds = %19
  %73 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 14
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, -128
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 47
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %144

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  %83 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8206, i32 noundef 6, ptr noundef %82, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = ptrtoint ptr %83 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 8206, i32 noundef %86) #9
  br label %144

87:                                               ; preds = %81
  %88 = icmp eq ptr %83, null
  br i1 %88, label %144, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.sk_buff, ptr %83, i32 0, i32 17
  %91 = load ptr, ptr %90, align 4
  %92 = load i8, ptr %91, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %83, i32 noundef 0) #9
  %93 = zext i8 %92 to i32
  br label %144

94:                                               ; preds = %72
  %95 = load i8, ptr %11, align 1
  %96 = icmp ult i8 %95, 2
  br i1 %96, label %144, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  %99 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef 6, ptr noundef %98, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = ptrtoint ptr %99 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1032, i32 noundef %102) #9
  br label %144

103:                                              ; preds = %97
  %104 = icmp eq ptr %99, null
  br i1 %104, label %144, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = load i8, ptr %107, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %99, i32 noundef 0) #9
  %109 = zext i8 %108 to i32
  br label %144

110:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #9
  %111 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 14
  %112 = load i8, ptr %111, align 1
  switch i8 %112, label %128 [
    i8 0, label %113
    i8 2, label %113
  ]

113:                                              ; preds = %110, %110
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %2) #9
  %114 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef align 1 dereferenceable(6) %114, i32 6, i1 false) #9
  store i8 13, ptr %8, align 1
  %115 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1066, i32 noundef 7, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = ptrtoint ptr %115 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1066, i32 noundef %118) #9
  br label %126

119:                                              ; preds = %113
  %120 = icmp eq ptr %115, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.sk_buff, ptr %115, i32 0, i32 17
  %123 = load ptr, ptr %122, align 4
  %124 = load i8, ptr %123, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %115, i32 noundef 0) #9
  %125 = zext i8 %124 to i32
  br label %126

126:                                              ; preds = %121, %119, %117
  %127 = phi i32 [ %118, %117 ], [ %125, %121 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %2) #9
  br label %141

128:                                              ; preds = %110
  %129 = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef align 1 dereferenceable(6) %129, i32 6, i1 false) #9
  store i8 21, ptr %10, align 1
  %130 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 1034, i32 noundef 7, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %131 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = ptrtoint ptr %130 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 1034, i32 noundef %133) #9
  br label %141

134:                                              ; preds = %128
  %135 = icmp eq ptr %130, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 17
  %138 = load ptr, ptr %137, align 4
  %139 = load i8, ptr %138, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %130, i32 noundef 0) #9
  %140 = zext i8 %139 to i32
  br label %141

141:                                              ; preds = %136, %134, %132, %126
  %142 = phi i32 [ %127, %126 ], [ %133, %132 ], [ %140, %136 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #9
  br label %144

143:                                              ; preds = %19
  store i16 9, ptr %20, align 4
  br label %144

144:                                              ; preds = %143, %141, %105, %103, %101, %94, %89, %87, %85, %76, %70
  %145 = phi i32 [ 0, %143 ], [ %142, %141 ], [ %71, %70 ], [ 0, %94 ], [ 0, %76 ], [ %86, %85 ], [ %93, %89 ], [ 0, %87 ], [ %102, %101 ], [ %109, %105 ], [ 0, %103 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %15, label %147

147:                                              ; preds = %144, %15
  %148 = phi i32 [ %145, %144 ], [ 0, %15 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_resume_sync(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_set_event_filter, align 1
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %4 = load i8, ptr %3, align 1, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  store i8 0, ptr %7, align 4
  %8 = tail call fastcc i32 @hci_set_event_mask_sync(ptr noundef %0)
  %9 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #9
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %2, i32 1
  store i64 0, ptr %18, align 1
  store i8 0, ptr %2, align 1
  %19 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3077, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %23 = ptrtoint ptr %19 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %22, i32 noundef 3077, i32 noundef %23) #9
  br label %27

24:                                               ; preds = %17
  %25 = icmp eq ptr %19, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %19, i32 noundef 0) #9
  br label %27

27:                                               ; preds = %26, %24, %21, %13
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #9
  br label %28

28:                                               ; preds = %27, %6
  %29 = tail call i32 @hci_update_scan_sync(ptr noundef %0)
  %30 = tail call i32 @hci_update_passive_scan_sync(ptr noundef %0)
  %31 = tail call i32 @hci_get_adv_monitor_offload_ext(ptr noundef %0) #9
  tail call fastcc void @hci_resume_advertising_sync(ptr noundef %0)
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 172
  %33 = load i8, ptr %32, align 4, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  store i8 0, ptr %32, align 4
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef 1) #9
  %36 = tail call i32 @hci_start_discovery_sync(ptr noundef %0) #9
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 2, i32 0
  tail call void @hci_discovery_set_state(ptr noundef %0, i32 noundef %38) #9
  br label %39

39:                                               ; preds = %35, %28, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_event_mask_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 8589672447, ptr %2, align 8
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %4 = load i8, ptr %3, align 1
  %5 = icmp ult i8 %4, 2
  br i1 %5, label %137, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %13 = load i8, ptr %12, align 1, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  store i8 -17, ptr %2, align 8
  br label %45

16:                                               ; preds = %6
  store i64 57344, ptr %2, align 8
  %17 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 27
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 32
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %24 = load i8, ptr %23, align 1, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8 16, ptr %2, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i8 [ 16, %26 ], [ 0, %22 ]
  %29 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  store i8 4, ptr %29, align 2
  %30 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 3
  store i8 2, ptr %30, align 1
  br label %31

31:                                               ; preds = %27, %16
  %32 = phi i8 [ %28, %27 ], [ 0, %16 ]
  %33 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i8 -24, ptr %17, align 1
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %39 = load i8, ptr %38, align 2
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = or i8 %32, -128
  store i8 %43, ptr %2, align 8
  %44 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  store i8 -128, ptr %44, align 1
  br label %45

45:                                               ; preds = %42, %37, %15, %11
  %46 = phi i8 [ 0, %37 ], [ -128, %42 ], [ 0, %11 ], [ 0, %15 ]
  %47 = phi i8 [ 0, %37 ], [ 0, %42 ], [ 1, %11 ], [ 1, %15 ]
  %48 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 64
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %45
  %58 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 4
  %59 = or i8 %47, 2
  store i8 %59, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i8 [ %59, %57 ], [ %47, %52 ]
  %62 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = icmp sgt i8 %63, -1
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 4
  %67 = or i8 %61, 4
  store i8 %67, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = icmp sgt i8 %49, -1
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  %72 = or i8 %46, 24
  store i8 %72, ptr %71, align 1
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i8 [ %72, %70 ], [ %46, %68 ]
  %75 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, 2
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  %81 = or i8 %74, 32
  store i8 %81, ptr %80, align 1
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i8 [ %81, %79 ], [ %74, %73 ]
  %84 = and i8 %76, 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  %88 = or i8 %83, -128
  store i8 %88, ptr %87, align 1
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i8 [ %88, %86 ], [ %83, %82 ]
  %91 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 6
  %92 = load i8, ptr %91, align 2
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  %97 = or i8 %90, 64
  store i8 %97, ptr %96, align 1
  br label %98

98:                                               ; preds = %95, %89
  %99 = and i8 %92, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 7
  store i8 1, ptr %102, align 1
  br label %103

103:                                              ; preds = %101, %98
  %104 = phi i8 [ 1, %101 ], [ 0, %98 ]
  %105 = and i8 %63, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 6
  store i8 -128, ptr %108, align 2
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi i8 [ -65, %107 ], [ 63, %103 ]
  %111 = and i8 %92, 8
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 6
  store i8 %110, ptr %114, align 2
  %115 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 7
  %116 = or i8 %104, 28
  store i8 %116, ptr %115, align 1
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i8 [ %116, %113 ], [ %104, %109 ]
  %119 = and i8 %8, 64
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 7
  %123 = or i8 %118, 32
  store i8 %123, ptr %122, align 1
  br label %124

124:                                              ; preds = %121, %117
  %125 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3073, i32 noundef 8, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %126 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %129 = ptrtoint ptr %125 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %128, i32 noundef 3073, i32 noundef %129) #9
  br label %137

130:                                              ; preds = %124
  %131 = icmp eq ptr %125, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.sk_buff, ptr %125, i32 0, i32 17
  %134 = load ptr, ptr %133, align 4
  %135 = load i8, ptr %134, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %125, i32 noundef 0) #9
  %136 = zext i8 %135 to i32
  br label %137

137:                                              ; preds = %132, %130, %127, %1
  %138 = phi i32 [ 0, %1 ], [ %129, %127 ], [ %136, %132 ], [ 0, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_clear_event_filter_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_set_event_filter, align 1
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #9
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %2, i32 1
  store i64 0, ptr %12, align 1
  store i8 0, ptr %2, align 1
  %13 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3077, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 3077, i32 noundef %17) #9
  br label %25

18:                                               ; preds = %11
  %19 = icmp eq ptr %13, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %18, %15, %7
  %26 = phi i32 [ 0, %7 ], [ %17, %15 ], [ %24, %20 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #9
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi i32 [ %26, %25 ], [ 0, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_le_ext_create_conn_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [58 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 58, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 5
  %6 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 3
  %7 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %4, i8 0, i64 58, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %7, i32 6, i1 false) #9
  %8 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 2
  %10 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 2
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 1
  store i8 %2, ptr %11, align 1
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 136
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %16, %3
  %22 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 4
  store i8 1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 55
  %26 = load i16, ptr %25, align 2
  store i16 %26, ptr %5, align 1
  %27 = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 56
  %28 = load i16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 1, i32 2
  store i16 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  %31 = load i16, ptr %30, align 2
  %32 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 1, i32 3, i32 0, i32 1
  store i16 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 1, i32 3, i32 0, i32 3
  store i16 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  %37 = load i16, ptr %36, align 8
  %38 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 1, i32 3, i32 0, i32 5
  store i16 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 39
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 2
  store i16 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 2, i32 2
  store i16 0, ptr %42, align 1
  %43 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 2, i32 3, i32 0, i32 1
  store i16 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 2, i32 3, i32 0, i32 3
  br label %45

45:                                               ; preds = %21, %16
  %46 = phi i8 [ 3, %21 ], [ 2, %16 ]
  %47 = phi ptr [ %44, %21 ], [ %5, %16 ]
  %48 = phi i32 [ 26, %21 ], [ 10, %16 ]
  %49 = and i8 %13, 2
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %53 = load i8, ptr %52, align 1
  %54 = and i8 %53, 2
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51, %45
  %57 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 4
  store i8 %46, ptr %57, align 1
  %58 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 55
  %61 = load i16, ptr %60, align 2
  store i16 %61, ptr %47, align 1
  %62 = getelementptr inbounds %struct.hci_dev, ptr %59, i32 0, i32 56
  %63 = load i16, ptr %62, align 4
  %64 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 1
  store i16 %63, ptr %64, align 1
  %65 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  %66 = load i16, ptr %65, align 2
  %67 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 2
  store i16 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 3
  store i16 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  %72 = load i16, ptr %71, align 8
  %73 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 4
  store i16 %72, ptr %73, align 1
  %74 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 39
  %75 = load i16, ptr %74, align 2
  %76 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 5
  store i16 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 6
  store i16 0, ptr %77, align 1
  %78 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %47, i32 0, i32 7
  store i16 0, ptr %78, align 1
  %79 = getelementptr %struct.hci_cp_le_ext_conn_param, ptr %47, i32 1
  %80 = add nuw nsw i32 %48, 16
  br label %81

81:                                               ; preds = %56, %51
  %82 = phi ptr [ %79, %56 ], [ %47, %51 ]
  %83 = phi i32 [ %80, %56 ], [ %48, %51 ]
  %84 = and i8 %13, 4
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, 4
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %117, label %91

91:                                               ; preds = %86, %81
  %92 = getelementptr inbounds %struct.hci_cp_le_ext_create_conn, ptr %4, i32 0, i32 4
  %93 = load i8, ptr %92, align 1
  %94 = or i8 %93, 4
  store i8 %94, ptr %92, align 1
  %95 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %96 = load ptr, ptr %95, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %82, i8 0, i32 16, i1 false) #9
  %97 = getelementptr inbounds %struct.hci_dev, ptr %96, i32 0, i32 55
  %98 = load i16, ptr %97, align 2
  store i16 %98, ptr %82, align 1
  %99 = getelementptr inbounds %struct.hci_dev, ptr %96, i32 0, i32 56
  %100 = load i16, ptr %99, align 4
  %101 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 1
  store i16 %100, ptr %101, align 1
  %102 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  %103 = load i16, ptr %102, align 2
  %104 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 2
  store i16 %103, ptr %104, align 1
  %105 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  %106 = load i16, ptr %105, align 4
  %107 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 3
  store i16 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  %109 = load i16, ptr %108, align 8
  %110 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 4
  store i16 %109, ptr %110, align 1
  %111 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 39
  %112 = load i16, ptr %111, align 2
  %113 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 5
  store i16 %112, ptr %113, align 1
  %114 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 6
  store i16 0, ptr %114, align 1
  %115 = getelementptr inbounds %struct.hci_cp_le_ext_conn_param, ptr %82, i32 0, i32 7
  store i16 0, ptr %115, align 1
  %116 = add nuw nsw i32 %83, 16
  br label %117

117:                                              ; preds = %91, %86
  %118 = phi i32 [ %116, %91 ], [ %83, %86 ]
  %119 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 32
  %120 = load i16, ptr %119, align 4
  %121 = zext i16 %120 to i32
  %122 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8259, i32 noundef %118, ptr noundef nonnull %4, i8 noundef zeroext 10, i32 noundef %121, ptr noundef null) #9
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %126 = ptrtoint ptr %122 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %125, i32 noundef 8259, i32 noundef %126) #9
  br label %134

127:                                              ; preds = %117
  %128 = icmp eq ptr %122, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.sk_buff, ptr %122, i32 0, i32 17
  %131 = load ptr, ptr %130, align 4
  %132 = load i8, ptr %131, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %122, i32 noundef 0) #9
  %133 = zext i8 %132 to i32
  br label %134

134:                                              ; preds = %129, %127, %124
  %135 = phi i32 [ %126, %124 ], [ %133, %129 ], [ 0, %127 ]
  call void @llvm.lifetime.end.p0(i64 58, ptr nonnull %4) #9
  ret i32 %135
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_le_create_conn_sync(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.hci_cp_le_set_ext_adv_params, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca %struct.hci_cp_le_set_adv_param, align 2
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.hci_cp_le_create_conn, align 2
  %13 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(25) %12, i8 0, i32 25, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #9
  store i8 0, ptr %13, align 1, !annotation !8
  %14 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 15
  %15 = load i8, ptr %14, align 8
  %16 = icmp eq i8 %15, 1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %16, label %18, label %229

18:                                               ; preds = %2
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 16384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 46
  %24 = load i8, ptr %23, align 8
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 16384
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = tail call i32 @hci_conn_del(ptr noundef %1) #9
  br label %381

33:                                               ; preds = %26, %22, %18
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %35 = load i8, ptr %34, align 4, !range !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load volatile i32, ptr %17, align 4
  %39 = lshr i32 %38, 24
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %17) #9
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %17) #9
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  store i16 0, ptr %53, align 2
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %58 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %57) #9
  br label %59

59:                                               ; preds = %56, %52, %47
  store i8 1, ptr %34, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  store i32 %40, ptr %60, align 8
  br label %61

61:                                               ; preds = %59, %44, %33
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #9
  %62 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 16
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %170, label %66

66:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i32 6, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  %67 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.hci_dev, ptr %68, i32 0, i32 206
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 262144
  %72 = icmp ne i32 %71, 0
  %73 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %72, ptr noundef nonnull %7) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %168

75:                                               ; preds = %66
  %76 = load ptr, ptr %67, align 4
  %77 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 206
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 262144
  %80 = icmp ne i32 %79, 0
  %81 = call i32 @hci_get_random_address(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %80, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %168

83:                                               ; preds = %75
  %84 = getelementptr inbounds i8, ptr %5, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %84, i8 0, i32 22, i1 false) #9
  %85 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 1
  store i16 21, ptr %85, align 1
  %86 = load i8, ptr %7, align 1
  %87 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 5
  %88 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 4
  store i8 %89, ptr %90, align 1
  %91 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 9
  store i8 127, ptr %91, align 1
  %92 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 10
  store i8 1, ptr %92, align 1
  %93 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 12
  store i8 1, ptr %93, align 1
  store i8 0, ptr %5, align 1
  store i8 %86, ptr %87, align 1
  %94 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %95 = load i8, ptr %94, align 2
  %96 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 6
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.hci_cp_le_set_ext_adv_params, ptr %5, i32 0, i32 7
  %98 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %97, ptr noundef align 1 dereferenceable(6) %98, i32 6, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1
  %99 = load i8, ptr %62, align 1
  %100 = and i8 %99, 16
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %83
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #9
  %103 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8249, i32 noundef 2, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %107 = ptrtoint ptr %103 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %106, i32 noundef 8249, i32 noundef %107) #9
  br label %116

108:                                              ; preds = %102
  %109 = icmp eq ptr %103, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  br label %120

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %113 = load ptr, ptr %112, align 4
  %114 = load i8, ptr %113, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %103, i32 noundef 0) #9
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %111, %105
  %117 = phi i32 [ %107, %105 ], [ %115, %111 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %168

120:                                              ; preds = %116, %110
  %121 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8252, i32 noundef 1, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %125 = ptrtoint ptr %121 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %124, i32 noundef 8252, i32 noundef %125) #9
  br label %134

126:                                              ; preds = %120
  %127 = icmp eq ptr %121, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 17
  %130 = load ptr, ptr %129, align 4
  %131 = load i8, ptr %130, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %121, i32 noundef 0) #9
  %132 = zext i8 %131 to i32
  br label %134

133:                                              ; preds = %126, %83
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %137

134:                                              ; preds = %128, %123
  %135 = phi i32 [ %125, %123 ], [ %132, %128 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %134, %133
  %138 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8246, i32 noundef 25, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %139 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %142 = ptrtoint ptr %138 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %141, i32 noundef 8246, i32 noundef %142) #9
  br label %150

143:                                              ; preds = %137
  %144 = icmp eq ptr %138, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = load i8, ptr %147, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %138, i32 noundef 0) #9
  %149 = zext i8 %148 to i32
  br label %150

150:                                              ; preds = %145, %140
  %151 = phi i32 [ %142, %140 ], [ %149, %145 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %150, %143
  %154 = load i8, ptr %7, align 1
  %155 = icmp eq i8 %154, 1
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %8, i8 0, i64 6, i1 false) #9
  %157 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) %8, i32 6) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 10
  %161 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef dereferenceable(6) %160, i32 6) #9
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = call fastcc i32 @hci_set_adv_set_random_addr_sync(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %6) #9
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163, %159, %156, %153
  %167 = call i32 @hci_enable_ext_advertising_sync(ptr noundef %0, i8 noundef zeroext 0) #9
  br label %168

168:                                              ; preds = %166, %163, %150, %134, %119, %75, %66
  %169 = phi i32 [ %167, %166 ], [ %73, %66 ], [ %81, %75 ], [ %135, %134 ], [ %151, %150 ], [ %164, %163 ], [ %117, %119 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %8) #9
  br label %227

170:                                              ; preds = %61
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %17) #9
  %171 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.hci_dev, ptr %172, i32 0, i32 206
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %174, 262144
  %176 = icmp ne i32 %175, 0
  %177 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %176, ptr noundef nonnull %10) #9
  %178 = trunc i32 %177 to i8
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %170
  %181 = and i32 %177, 255
  br label %227

182:                                              ; preds = %170
  %183 = getelementptr inbounds i8, ptr %9, i32 14
  store i8 0, ptr %183, align 2
  store i16 32, ptr %9, align 2
  %184 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 1
  store i16 32, ptr %184, align 2
  %185 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 2
  store i8 1, ptr %185, align 2
  %186 = load i8, ptr %10, align 1
  %187 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 3
  store i8 %186, ptr %187, align 1
  %188 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %189 = load i8, ptr %188, align 2
  %190 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 4
  store i8 %189, ptr %190, align 2
  %191 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 5
  %192 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %191, ptr noundef align 1 dereferenceable(6) %192, i32 6, i1 false) #9
  %193 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 43
  %194 = load i8, ptr %193, align 1
  %195 = getelementptr inbounds %struct.hci_cp_le_set_adv_param, ptr %9, i32 0, i32 6
  store i8 %194, ptr %195, align 1
  %196 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8198, i32 noundef 15, ptr noundef nonnull %9, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %197 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %198, label %201

198:                                              ; preds = %182
  %199 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %200 = ptrtoint ptr %196 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %199, i32 noundef 8198, i32 noundef %200) #9
  br label %208

201:                                              ; preds = %182
  %202 = icmp eq ptr %196, null
  br i1 %202, label %214, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.sk_buff, ptr %196, i32 0, i32 17
  %205 = load ptr, ptr %204, align 4
  %206 = load i8, ptr %205, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %196, i32 noundef 0) #9
  %207 = zext i8 %206 to i32
  br label %208

208:                                              ; preds = %203, %198
  %209 = phi i32 [ %200, %198 ], [ %207, %203 ]
  %210 = trunc i32 %209 to i8
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = and i32 %209, 255
  br label %227

214:                                              ; preds = %208, %201
  store i8 1, ptr %11, align 1
  %215 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8202, i32 noundef 1, ptr noundef nonnull %11, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %216 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %219 = ptrtoint ptr %215 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %218, i32 noundef 8202, i32 noundef %219) #9
  br label %227

220:                                              ; preds = %214
  %221 = icmp eq ptr %215, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.sk_buff, ptr %215, i32 0, i32 17
  %224 = load ptr, ptr %223, align 4
  %225 = load i8, ptr %224, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %215, i32 noundef 0) #9
  %226 = zext i8 %225 to i32
  br label %227

227:                                              ; preds = %222, %220, %217, %212, %180, %168
  %228 = phi i32 [ %169, %168 ], [ %181, %180 ], [ %213, %212 ], [ %219, %217 ], [ %226, %222 ], [ 0, %220 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %9) #9
  br label %379

229:                                              ; preds = %2
  %230 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %231 = load volatile i32, ptr %230, align 4
  %232 = and i32 %231, 16384
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %262

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 174
  %236 = load i8, ptr %235, align 4, !range !15
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %262

238:                                              ; preds = %234
  %239 = load volatile i32, ptr %17, align 4
  %240 = lshr i32 %239, 24
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %238
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %17) #9
  tail call void @_clear_bit(i32 noundef 27, ptr noundef %17) #9
  %244 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 147
  store i16 0, ptr %244, align 4
  br label %245

245:                                              ; preds = %243, %238
  %246 = tail call i32 @hci_disable_advertising_sync(ptr noundef %0) #9
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %245
  %249 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = and i8 %250, 16
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %255 = load i16, ptr %254, align 2
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  store i16 0, ptr %254, align 2
  %258 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %259 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %258) #9
  br label %260

260:                                              ; preds = %257, %253, %248
  store i8 1, ptr %235, align 4
  %261 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 173
  store i32 %241, ptr %261, align 8
  br label %262

262:                                              ; preds = %260, %245, %234, %229
  %263 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 2
  %264 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 3
  %265 = load i8, ptr %264, align 2
  %266 = tail call ptr @hci_conn_params_lookup(ptr noundef %0, ptr noundef %263, i8 noundef zeroext %265) #9
  %267 = icmp eq ptr %266, null
  br i1 %267, label %279, label %268

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.hci_conn_params, ptr %266, i32 0, i32 4
  %270 = load i16, ptr %269, align 4
  %271 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  store i16 %270, ptr %271, align 2
  %272 = getelementptr inbounds %struct.hci_conn_params, ptr %266, i32 0, i32 5
  %273 = load i16, ptr %272, align 2
  %274 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  store i16 %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.hci_conn_params, ptr %266, i32 0, i32 6
  %276 = load i16, ptr %275, align 4
  %277 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  store i16 %276, ptr %277, align 8
  %278 = getelementptr inbounds %struct.hci_conn_params, ptr %266, i32 0, i32 7
  br label %290

279:                                              ; preds = %262
  %280 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 57
  %281 = load i16, ptr %280, align 2
  %282 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  store i16 %281, ptr %282, align 2
  %283 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 58
  %284 = load i16, ptr %283, align 8
  %285 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  store i16 %284, ptr %285, align 4
  %286 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 59
  %287 = load i16, ptr %286, align 2
  %288 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  store i16 %287, ptr %288, align 8
  %289 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 60
  br label %290

290:                                              ; preds = %279, %268
  %291 = phi ptr [ %289, %279 ], [ %278, %268 ]
  %292 = load i16, ptr %291, align 2
  %293 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 39
  store i16 %292, ptr %293, align 2
  %294 = load volatile i32, ptr %17, align 4
  %295 = and i32 %294, 16384
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %311, label %297

297:                                              ; preds = %290
  %298 = load volatile i32, ptr %17, align 4
  %299 = and i32 %298, 16384
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %310, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %303 = load i8, ptr %302, align 4, !range !15
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %309, i32 noundef %306) #9
  br label %310

310:                                              ; preds = %308, %305, %301, %297
  tail call void @_set_bit(i32 noundef 33, ptr noundef %17) #9
  br label %311

311:                                              ; preds = %310, %290
  %312 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 65
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.hci_dev, ptr %313, i32 0, i32 206
  %315 = load volatile i32, ptr %314, align 4
  %316 = and i32 %315, 262144
  %317 = icmp ne i32 %316, 0
  %318 = call i32 @hci_update_random_address_sync(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %317, ptr noundef nonnull %13)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %379

320:                                              ; preds = %311
  %321 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 37
  %322 = load i8, ptr %321, align 1
  %323 = icmp sgt i8 %322, -1
  br i1 %323, label %327, label %324

324:                                              ; preds = %320
  %325 = load i8, ptr %13, align 1
  %326 = tail call i32 @hci_le_ext_create_conn_sync(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %325)
  br label %379

327:                                              ; preds = %320
  %328 = getelementptr inbounds i8, ptr %12, i32 4
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 55
  %330 = load i16, ptr %329, align 2
  store i16 %330, ptr %12, align 2
  %331 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 56
  %332 = load i16, ptr %331, align 4
  %333 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 1
  store i16 %332, ptr %333, align 2
  %334 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %334, ptr noundef align 1 dereferenceable(6) %263, i32 6, i1 false) #9
  %335 = load i8, ptr %264, align 2
  %336 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 3
  store i8 %335, ptr %336, align 1
  %337 = load i8, ptr %13, align 1
  %338 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 5
  store i8 %337, ptr %338, align 2
  %339 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 35
  %340 = load i16, ptr %339, align 2
  %341 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 6
  store i16 %340, ptr %341, align 1
  %342 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 36
  %343 = load i16, ptr %342, align 4
  %344 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 7
  store i16 %343, ptr %344, align 1
  %345 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 38
  %346 = load i16, ptr %345, align 8
  %347 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 8
  store i16 %346, ptr %347, align 1
  %348 = load i16, ptr %293, align 2
  %349 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 9
  store i16 %348, ptr %349, align 1
  %350 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 10
  store i16 0, ptr %350, align 1
  %351 = getelementptr inbounds %struct.hci_cp_le_create_conn, ptr %12, i32 0, i32 11
  store i16 0, ptr %351, align 1
  %352 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %353 = load i8, ptr %352, align 2
  %354 = and i8 %353, 64
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %327
  %357 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %358 = load i8, ptr %357, align 1
  %359 = and i8 %358, 16
  %360 = icmp eq i8 %359, 0
  %361 = select i1 %360, i8 1, i8 10
  br label %362

362:                                              ; preds = %356, %327
  %363 = phi i8 [ 10, %327 ], [ %361, %356 ]
  %364 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 32
  %365 = load i16, ptr %364, align 4
  %366 = zext i16 %365 to i32
  %367 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8205, i32 noundef 25, ptr noundef nonnull %12, i8 noundef zeroext %363, i32 noundef %366, ptr noundef null) #9
  %368 = icmp ugt ptr %367, inttoptr (i32 -4096 to ptr)
  br i1 %368, label %369, label %372

369:                                              ; preds = %362
  %370 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %371 = ptrtoint ptr %367 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %370, i32 noundef 8205, i32 noundef %371) #9
  br label %379

372:                                              ; preds = %362
  %373 = icmp eq ptr %367, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %372
  %375 = getelementptr inbounds %struct.sk_buff, ptr %367, i32 0, i32 17
  %376 = load ptr, ptr %375, align 4
  %377 = load i8, ptr %376, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %367, i32 noundef 0) #9
  %378 = zext i8 %377 to i32
  br label %379

379:                                              ; preds = %374, %372, %369, %324, %311, %227
  %380 = phi i32 [ %228, %227 ], [ %318, %311 ], [ %326, %324 ], [ %371, %369 ], [ %378, %374 ], [ 0, %372 ]
  call fastcc void @hci_resume_advertising_sync(ptr noundef %0)
  br label %381

381:                                              ; preds = %379, %31
  %382 = phi i32 [ %380, %379 ], [ -16, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %12) #9
  ret i32 %382
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_conn_params_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_sync_complete(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 165
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 166
  store i32 %9, ptr %10, align 8
  store i32 0, ptr %5, align 4
  %11 = icmp eq ptr %3, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #9, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #9, !srcloc !20
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #9
  br label %25

24:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void @sk_free(ptr noundef nonnull %14) #9
  br label %25

25:                                               ; preds = %24, %23, %21, %12
  %26 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #9, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %36, label %34, !prof !12

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #9
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 167
  store ptr %3, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %8
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 164
  tail call void @__wake_up(ptr noundef %39, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %40

40:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_scan_rsp(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @eir_create_adv_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_remove_adv_instance(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_advertising_removed(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_le_set_ext_scan_enable, align 1
  %5 = alloca %struct.hci_cp_le_set_scan_enable, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 37
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 96
  %9 = icmp eq i8 %8, 96
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #9
  %11 = getelementptr inbounds i8, ptr %4, i32 2
  store i32 0, ptr %11, align 1
  store i8 %1, ptr %4, align 1
  %12 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_enable, ptr %4, i32 0, i32 1
  store i8 %2, ptr %12, align 1
  %13 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8258, i32 noundef 6, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 8258, i32 noundef %17) #9
  br label %25

18:                                               ; preds = %10
  %19 = icmp eq ptr %13, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %18, %15
  %26 = phi i32 [ %17, %15 ], [ %24, %20 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #9
  br label %41

27:                                               ; preds = %3
  store i8 %1, ptr %5, align 2
  %28 = getelementptr inbounds %struct.hci_cp_le_set_scan_enable, ptr %5, i32 0, i32 1
  store i8 %2, ptr %28, align 1
  %29 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8204, i32 noundef 2, ptr noundef nonnull %5, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %32, i32 noundef 8204, i32 noundef %33) #9
  br label %41

34:                                               ; preds = %27
  %35 = icmp eq ptr %29, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  %39 = load i8, ptr %38, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %29, i32 noundef 0) #9
  %40 = zext i8 %39 to i32
  br label %41

41:                                               ; preds = %36, %34, %31, %25
  %42 = phi i32 [ %26, %25 ], [ %33, %31 ], [ %40, %36 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  ret i32 %42
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_is_le_conn_scanning(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 14
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 12
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 5
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 47
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2097152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %24

20:                                               ; preds = %14, %10, %5
  %21 = load volatile ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %5

23:                                               ; preds = %20, %1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i1 [ false, %23 ], [ true, %19 ]
  ret i1 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_start_scan_sync(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [13 x i8], align 1
  %9 = alloca %struct.hci_cp_le_set_scan_param, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 178
  %11 = load i8, ptr %10, align 4, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %100

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %9) #9
  %14 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 37
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 96
  %17 = icmp eq i8 %16, 96
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %8) #9
  %19 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %8, i32 0, i32 3
  %20 = getelementptr inbounds i8, ptr %8, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(11) %20, i8 0, i64 11, i1 false) #9
  store i8 %4, ptr %8, align 1
  %21 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %8, i32 0, i32 1
  store i8 %5, ptr %21, align 1
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 136
  %23 = load i8, ptr %22, align 8
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  %33 = and i32 %24, 2
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  %36 = and i32 %30, 2
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %43, label %39

39:                                               ; preds = %27, %18
  store i8 1, ptr %20, align 1
  store i8 %1, ptr %19, align 1
  %40 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %8, i32 1, i32 1
  store i16 %2, ptr %40, align 1
  %41 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %8, i32 2
  store i16 %3, ptr %41, align 1
  %42 = getelementptr inbounds %struct.hci_cp_le_set_ext_scan_params, ptr %8, i32 2, i32 2
  br label %43

43:                                               ; preds = %39, %27
  %44 = phi ptr [ %42, %39 ], [ %19, %27 ]
  %45 = phi i8 [ 1, %39 ], [ 0, %27 ]
  %46 = and i8 %23, 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48, %43
  %54 = or i8 %45, 4
  store i8 %54, ptr %20, align 1
  store i8 %1, ptr %44, align 1
  %55 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %44, i32 0, i32 1
  store i16 %2, ptr %55, align 1
  %56 = getelementptr inbounds %struct.hci_cp_le_scan_phy_params, ptr %44, i32 0, i32 2
  store i16 %3, ptr %56, align 1
  %57 = add nuw nsw i8 %45, 1
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i8 [ %57, %53 ], [ %45, %48 ]
  %60 = zext i8 %59 to i32
  %61 = mul nuw nsw i32 %60, 5
  %62 = add nuw nsw i32 %61, 3
  %63 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8257, i32 noundef %62, ptr noundef nonnull %8, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %67 = ptrtoint ptr %63 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %66, i32 noundef 8257, i32 noundef %67) #9
  br label %75

68:                                               ; preds = %58
  %69 = icmp eq ptr %63, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = load i8, ptr %72, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %63, i32 noundef 0) #9
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %70, %68, %65
  %76 = phi i32 [ %67, %65 ], [ %74, %70 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %8) #9
  br label %95

77:                                               ; preds = %13
  store i8 %1, ptr %9, align 1
  %78 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %9, i32 0, i32 1
  store i16 %2, ptr %78, align 1
  %79 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %9, i32 0, i32 2
  store i16 %3, ptr %79, align 1
  %80 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %9, i32 0, i32 3
  store i8 %4, ptr %80, align 1
  %81 = getelementptr inbounds %struct.hci_cp_le_set_scan_param, ptr %9, i32 0, i32 4
  store i8 %5, ptr %81, align 1
  %82 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8203, i32 noundef 7, ptr noundef nonnull %9, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %83 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %86 = ptrtoint ptr %82 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %85, i32 noundef 8203, i32 noundef %86) #9
  br label %95

87:                                               ; preds = %77
  %88 = icmp eq ptr %82, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %9) #9
  br label %98

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 17
  %92 = load ptr, ptr %91, align 4
  %93 = load i8, ptr %92, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %82, i32 noundef 0) #9
  %94 = zext i8 %93 to i32
  br label %95

95:                                               ; preds = %90, %84, %75
  %96 = phi i32 [ %76, %75 ], [ %86, %84 ], [ %94, %90 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %9) #9
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %89
  %99 = tail call fastcc i32 @hci_le_set_scan_enable_sync(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext %6)
  br label %100

100:                                              ; preds = %98, %95, %7
  %101 = phi i32 [ %99, %98 ], [ 0, %7 ], [ %96, %95 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_adv_monitor_offload_ext(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_pend_le_action_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_add_accept_list_sync(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_le_set_privacy_mode, align 8
  %5 = alloca %struct.hci_cp_le_add_to_accept_list, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !8
  %6 = load i8, ptr %2, align 1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 23
  %8 = load i8, ptr %7, align 2
  %9 = icmp ult i8 %6, %8
  br i1 %9, label %10, label %95

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 64
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15, %10
  %21 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 2
  %22 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 3
  %23 = load i8, ptr %22, align 2
  %24 = tail call ptr @hci_find_irk_by_addr(ptr noundef %0, ptr noundef %21, i8 noundef zeroext %23) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %95

26:                                               ; preds = %20, %15
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 179
  %28 = load i8, ptr %27, align 1, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 11
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %95, label %35

35:                                               ; preds = %30, %26
  %36 = tail call fastcc i32 @hci_le_add_resolve_list_sync(ptr noundef %0, ptr noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %39, i32 noundef %36) #9
  br label %95

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %41 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 12
  %42 = load i8, ptr %41, align 4
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %73, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 11
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 2
  %51 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 3
  %52 = load i8, ptr %51, align 2
  %53 = tail call ptr @hci_find_irk_by_addr(ptr noundef %0, ptr noundef %50, i8 noundef zeroext %52) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %73, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.smp_irk, ptr %53, i32 0, i32 4
  %57 = load i8, ptr %56, align 4
  store i8 %57, ptr %4, align 8
  %58 = getelementptr inbounds %struct.hci_cp_le_set_privacy_mode, ptr %4, i32 0, i32 1
  %59 = getelementptr inbounds %struct.smp_irk, ptr %53, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %58, ptr noundef align 1 dereferenceable(6) %59, i32 6, i1 false) #9
  %60 = getelementptr inbounds %struct.hci_cp_le_set_privacy_mode, ptr %4, i32 0, i32 2
  store i8 1, ptr %60, align 1
  %61 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8270, i32 noundef 8, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %65 = ptrtoint ptr %61 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %64, i32 noundef 8270, i32 noundef %65) #9
  br label %74

66:                                               ; preds = %55
  %67 = icmp eq ptr %61, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %70 = load ptr, ptr %69, align 4
  %71 = load i8, ptr %70, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %61, i32 noundef 0) #9
  %72 = zext i8 %71 to i32
  br label %74

73:                                               ; preds = %66, %49, %44, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %79

74:                                               ; preds = %68, %63
  %75 = phi i32 [ %65, %63 ], [ %72, %68 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13, ptr noundef %78, i32 noundef %75) #9
  br label %95

79:                                               ; preds = %74, %73
  %80 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  %81 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 2
  %82 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 3
  %83 = load i8, ptr %82, align 2
  %84 = tail call ptr @hci_bdaddr_list_lookup(ptr noundef %80, ptr noundef %81, i8 noundef zeroext %83) #9
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load i8, ptr %2, align 1
  %88 = add i8 %87, 1
  store i8 %88, ptr %2, align 1
  %89 = load i8, ptr %82, align 2
  store i8 %89, ptr %5, align 1
  %90 = getelementptr inbounds %struct.hci_cp_le_add_to_accept_list, ptr %5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %90, ptr noundef align 1 dereferenceable(6) %81, i32 6, i1 false) #9
  %91 = call i32 @__hci_cmd_sync_status(ptr noundef %0, i16 noundef zeroext 8209, i32 noundef 7, ptr noundef nonnull %5, i32 noundef 200)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %94, i32 noundef %91) #9
  call fastcc void @hci_le_del_resolve_list_sync(ptr noundef %0, ptr noundef %90, i8 noundef zeroext %89)
  br label %95

95:                                               ; preds = %93, %86, %79, %77, %38, %30, %20, %3
  %96 = phi i32 [ %36, %38 ], [ %75, %77 ], [ %91, %93 ], [ -28, %3 ], [ -22, %20 ], [ 0, %30 ], [ 0, %79 ], [ 0, %86 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #9
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_le_del_resolve_list_sync(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.hci_cp_le_del_from_resolv_list, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 64
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  %16 = tail call ptr @hci_bdaddr_list_lookup_with_irk(ptr noundef %15, ptr noundef %1, i8 noundef zeroext %2) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  store i8 %2, ptr %4, align 1
  %19 = getelementptr inbounds %struct.hci_cp_le_del_from_resolv_list, ptr %4, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %19, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #9
  %20 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8232, i32 noundef 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %20 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %23, i32 noundef 8232, i32 noundef %24) #9
  br label %28

25:                                               ; preds = %18
  %26 = icmp eq ptr %20, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @kfree_skb_reason(ptr noundef nonnull %20, i32 noundef 0) #9
  br label %28

28:                                               ; preds = %27, %25, %22, %14, %9, %3
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_bdaddr_list_lookup_with_irk(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_find_irk_by_addr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_add_resolve_list_sync(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.hci_cp_le_add_to_resolv_list, align 1
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(39) %3, i8 0, i32 39, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %10 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %61, label %14

14:                                               ; preds = %8
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = load volatile i32, ptr %9, align 4
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %3, i32 0, i32 1
  call void @hci_copy_identity_address(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %3) #9
  %22 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %3, i32 0, i32 2
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 220
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %23, i32 16, i1 false)
  br label %40

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 2
  %26 = getelementptr inbounds %struct.hci_conn_params, ptr %1, i32 0, i32 3
  %27 = load i8, ptr %26, align 2
  %28 = tail call ptr @hci_find_irk_by_addr(ptr noundef %0, ptr noundef %25, i8 noundef zeroext %27) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  %32 = load i8, ptr %26, align 2
  %33 = tail call ptr @hci_bdaddr_list_lookup_with_irk(ptr noundef %31, ptr noundef %25, i8 noundef zeroext %32) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load i8, ptr %26, align 2
  store i8 %36, ptr %3, align 1
  %37 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %3, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %37, ptr noundef align 1 dereferenceable(6) %25, i32 6, i1 false) #9
  %38 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %3, i32 0, i32 2
  %39 = getelementptr inbounds %struct.smp_irk, ptr %28, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %38, ptr noundef align 1 dereferenceable(16) %39, i32 16, i1 false)
  br label %40

40:                                               ; preds = %35, %20
  %41 = load volatile i32, ptr %9, align 4
  %42 = and i32 %41, 262144
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.hci_cp_le_add_to_resolv_list, ptr %3, i32 0, i32 3
  br i1 %43, label %47, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 220
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %44, ptr noundef align 8 dereferenceable(16) %46, i32 16, i1 false)
  br label %48

47:                                               ; preds = %40
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %44, i8 0, i32 16, i1 false)
  br label %48

48:                                               ; preds = %47, %45
  %49 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8231, i32 noundef 39, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %53 = ptrtoint ptr %49 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %52, i32 noundef 8231, i32 noundef %53) #9
  br label %61

54:                                               ; preds = %48
  %55 = icmp eq ptr %49, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = load i8, ptr %58, align 1
  call void @kfree_skb_reason(ptr noundef nonnull %49, i32 noundef 0) #9
  %60 = zext i8 %59 to i32
  br label %61

61:                                               ; preds = %56, %54, %51, %30, %24, %16, %8, %2
  %62 = phi i32 [ 0, %8 ], [ 0, %2 ], [ 0, %16 ], [ 0, %24 ], [ 0, %30 ], [ %53, %51 ], [ %60, %56 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %3) #9
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_debugfs_create_basic(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_local_version_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 4097, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_debugfs_create_common(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_debugfs_create_bredr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_debugfs_create_le(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_local_cmds_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 28
  %3 = load i8, ptr %2, align 1
  %4 = icmp ugt i8 %3, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4098, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef 4098, i32 noundef %15) #9
  br label %23

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %18, %16, %13, %5, %1
  %24 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %15, %13 ], [ %22, %18 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_local_amp_info_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 5129, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 5129, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_data_block_size_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4106, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 4106, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_flow_control_mode_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3174, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 3174, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_read_location_data_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3172, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 3172, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_voice_setting_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3109, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 3109, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_num_supported_iac_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3128, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 3128, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_current_iac_lap_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3129, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 3129, i32 noundef %6) #9
  br label %14

7:                                                ; preds = %1
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #9
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %9, %7, %4
  %15 = phi i32 [ %6, %4 ], [ %13, %9 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_write_ca_timeout_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i16 32000, ptr %2, align 2
  %3 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3094, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %7 = ptrtoint ptr %3 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %6, i32 noundef 3094, i32 noundef %7) #9
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq ptr %3, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #9
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %10, %8, %5
  %16 = phi i32 [ %7, %5 ], [ %14, %10 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_inq_rsp_tx_power_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3160, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 3160, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_local_ext_features_1_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_read_local_ext_features, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 7
  %4 = load i8, ptr %3, align 1
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  store i8 1, ptr %2, align 1
  %7 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4100, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 4100, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_setup_link_policy_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_def_link_policy, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 21
  %9 = load i8, ptr %8, align 2
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 3
  %12 = zext i8 %11 to i16
  %13 = or i16 %12, 4
  %14 = icmp slt i8 %9, 0
  %15 = select i1 %14, i16 %13, i16 %12
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = shl i8 %17, 3
  %19 = and i8 %18, 8
  %20 = zext i8 %19 to i16
  %21 = or i16 %15, %20
  store i16 %21, ptr %2, align 2
  %22 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 2063, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %26 = ptrtoint ptr %22 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef 2063, i32 noundef %26) #9
  br label %34

27:                                               ; preds = %7
  %28 = icmp eq ptr %22, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #9
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %29, %27, %24, %1
  %35 = phi i32 [ 0, %1 ], [ %26, %24 ], [ %33, %29 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_def_err_data_reporting_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 18
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3162, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %16 = ptrtoint ptr %12 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef 3162, i32 noundef %16) #9
  br label %24

17:                                               ; preds = %11
  %18 = icmp eq ptr %12, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #9
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %19, %17, %14, %6, %1
  %25 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %16, %14 ], [ %23, %19 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_page_scan_type_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 13
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3142, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 3142, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_local_ext_features_all_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_read_local_ext_features, align 1
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 7
  %4 = load i8, ptr %3, align 1
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 20
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %7, align 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 2, ptr %2, align 1
  %12 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 4100, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %8, i32 noundef 4100, i32 noundef %15) #9
  br label %24

16:                                               ; preds = %11
  %17 = icmp eq ptr %12, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %24

23:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %27

24:                                               ; preds = %18, %14
  %25 = phi i32 [ %15, %14 ], [ %22, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %23
  br label %28

28:                                               ; preds = %27, %24, %6, %1
  %29 = phi i32 [ 0, %1 ], [ %25, %24 ], [ 0, %27 ], [ 0, %6 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_set_event_mask_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 64
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %115, label %7

7:                                                ; preds = %1
  store i64 0, ptr %2, align 8
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %9 = load i8, ptr %8, align 2
  %10 = shl i8 %9, 4
  %11 = and i8 %10, 48
  %12 = shl i8 %9, 1
  %13 = and i8 %12, 64
  %14 = or i8 %13, %11
  %15 = and i8 %9, 35
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %7
  store i8 %14, ptr %2, align 8
  br label %18

18:                                               ; preds = %17, %7
  %19 = and i8 %9, 64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %18
  %27 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  store i8 2, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i8 [ 2, %26 ], [ 0, %21 ]
  %30 = icmp sgt i8 %9, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %33 = or i8 %29, 4
  store i8 %33, ptr %32, align 1
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i8 [ %33, %31 ], [ %29, %28 ]
  %36 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  store i8 8, ptr %41, align 2
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i8 [ 10, %40 ], [ 2, %34 ]
  %44 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 26
  %45 = load i8, ptr %44, align 1
  %46 = lshr i8 %45, 2
  %47 = and i8 %46, 2
  %48 = or i8 %47, %14
  %49 = lshr i8 %45, 4
  %50 = and i8 %49, 1
  %51 = or i8 %50, %48
  %52 = and i8 %45, 24
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %42
  store i8 %51, ptr %2, align 8
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 27
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 4
  %59 = or i8 %58, %51
  %60 = lshr i8 %57, 2
  %61 = and i8 %60, 8
  %62 = or i8 %61, %59
  %63 = and i8 %57, 36
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i8 %62, ptr %2, align 8
  br label %66

66:                                               ; preds = %65, %55
  %67 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 34
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = or i8 %62, -128
  store i8 %72, ptr %2, align 8
  br label %73

73:                                               ; preds = %71, %66
  %74 = and i8 %68, 4
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %78 = or i8 %35, 1
  store i8 %78, ptr %77, align 1
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i8 [ %78, %76 ], [ %35, %73 ]
  %81 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 35
  %82 = load i8, ptr %81, align 1
  %83 = and i8 %82, 96
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %87 = or i8 %80, 8
  store i8 %87, ptr %86, align 1
  br label %88

88:                                               ; preds = %85, %79
  %89 = phi i8 [ %87, %85 ], [ %80, %79 ]
  %90 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 37
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 96
  %93 = icmp eq i8 %92, 96
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %96 = or i8 %89, 16
  store i8 %96, ptr %95, align 1
  br label %97

97:                                               ; preds = %94, %88
  %98 = and i8 %37, 16
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  store i8 %43, ptr %101, align 2
  br label %102

102:                                              ; preds = %100, %97
  %103 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8193, i32 noundef 8, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %107 = ptrtoint ptr %103 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %106, i32 noundef 8193, i32 noundef %107) #9
  br label %115

108:                                              ; preds = %102
  %109 = icmp eq ptr %103, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %112 = load ptr, ptr %111, align 4
  %113 = load i8, ptr %112, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %103, i32 noundef 0) #9
  %114 = zext i8 %113 to i32
  br label %115

115:                                              ; preds = %110, %108, %105, %1
  %116 = phi i32 [ 0, %1 ], [ %107, %105 ], [ %114, %110 ], [ 0, %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_adv_tx_power_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 25
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8199, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %16 = ptrtoint ptr %12 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef 8199, i32 noundef %16) #9
  br label %24

17:                                               ; preds = %11
  %18 = icmp eq ptr %12, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = load i8, ptr %21, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %12, i32 noundef 0) #9
  %23 = zext i8 %22 to i32
  br label %24

24:                                               ; preds = %19, %17, %14, %6, %1
  %25 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %16, %14 ], [ %23, %19 ], [ 0, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_tx_power_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 38
  %3 = load i8, ptr %2, align 1
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 131072
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8267, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef 8267, i32 noundef %15) #9
  br label %23

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %18, %16, %13, %5, %1
  %24 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %15, %13 ], [ %22, %18 ], [ 0, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_accept_list_size_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 26
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8207, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8207, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_clear_accept_list_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 26
  %3 = load i8, ptr %2, align 1
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8208, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %10 = ptrtoint ptr %6 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %9, i32 noundef 8208, i32 noundef %10) #9
  br label %18

11:                                               ; preds = %5
  %12 = icmp eq ptr %6, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #9
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %13, %11, %8, %1
  %19 = phi i32 [ 0, %1 ], [ %10, %8 ], [ %17, %13 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_resolv_list_size_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 34
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 64
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8234, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8234, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_clear_resolv_list_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 34
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8233, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8233, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_set_rpa_timeout_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 221
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  store i16 %5, ptr %2, align 2
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 35
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8238, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %11 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %14, i32 noundef 8238, i32 noundef %15) #9
  br label %23

16:                                               ; preds = %10
  %17 = icmp eq ptr %11, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %20, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #9
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %18, %16, %13, %1
  %24 = phi i32 [ 0, %1 ], [ %15, %13 ], [ %22, %18 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_max_data_len_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8239, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8239, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_def_data_len_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8227, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8227, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_read_num_support_adv_sets_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 22, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8251, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 8251, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_le_support_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_le_host_supported, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  store i16 0, ptr %2, align 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  store i8 1, ptr %2, align 2
  %13 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, ptr %2, i32 0, i32 1
  store i8 0, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i8 [ 1, %12 ], [ 0, %7 ]
  %16 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 1
  %17 = load i8, ptr %16, align 2
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %15, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3181, i32 noundef 2, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %26 = ptrtoint ptr %22 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef 3181, i32 noundef %26) #9
  br label %34

27:                                               ; preds = %21
  %28 = icmp eq ptr %22, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #9
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %29, %27, %24, %14, %1
  %35 = phi i32 [ 0, %1 ], [ 0, %14 ], [ %26, %24 ], [ %33, %29 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_event_mask_page_2_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 22
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  store i8 -64, ptr %13, align 1
  %14 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  store i8 48, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi i8 [ 48, %12 ], [ 0, %7 ]
  %17 = xor i1 %11, true
  %18 = and i8 %9, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  %22 = or i8 %16, 15
  store i8 %22, ptr %21, align 2
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i8 [ %22, %20 ], [ %16, %15 ]
  %25 = phi i1 [ true, %20 ], [ %17, %15 ]
  %26 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %32 = load i8, ptr %31, align 2
  %33 = and i8 %32, 16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %23
  %36 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  %37 = or i8 %24, -128
  store i8 %37, ptr %36, align 2
  br label %39

38:                                               ; preds = %30
  br i1 %25, label %39, label %52

39:                                               ; preds = %38, %35
  %40 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3171, i32 noundef 8, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %44 = ptrtoint ptr %40 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %43, i32 noundef 3171, i32 noundef %44) #9
  br label %52

45:                                               ; preds = %39
  %46 = icmp eq ptr %40, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  %49 = load ptr, ptr %48, align 4
  %50 = load i8, ptr %49, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %40, i32 noundef 0) #9
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %47, %45, %42, %38, %1
  %53 = phi i32 [ 0, %1 ], [ 0, %38 ], [ %44, %42 ], [ %51, %47 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_get_mws_transport_config_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 30
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 5132, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 5132, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_read_sync_train_params_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3191, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %10, i32 noundef 3191, i32 noundef %11) #9
  br label %19

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %16, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %14, %12, %9, %1
  %20 = phi i32 [ 0, %1 ], [ %11, %9 ], [ %18, %14 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_write_sc_support_1_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 1, ptr %2, align 1
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 21, i32 2, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %3, align 4
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3194, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %21 = ptrtoint ptr %17 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %20, i32 noundef 3194, i32 noundef %21) #9
  br label %29

22:                                               ; preds = %16
  %23 = icmp eq ptr %17, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %17, i32 noundef 0) #9
  %28 = zext i8 %27 to i32
  br label %29

29:                                               ; preds = %24, %22, %19, %12, %7, %1
  %30 = phi i32 [ 0, %12 ], [ 0, %7 ], [ 0, %1 ], [ %21, %19 ], [ %28, %24 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_set_err_data_report_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_write_def_err_data_reporting, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 18
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 32768
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 39
  %16 = load i8, ptr %15, align 4
  %17 = trunc i32 %4 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %16, %19
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  store i8 %19, ptr %2, align 1
  %22 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 3163, i32 noundef 1, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %26 = ptrtoint ptr %22 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %25, i32 noundef 3163, i32 noundef %26) #9
  br label %34

27:                                               ; preds = %21
  %28 = icmp eq ptr %22, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = load i8, ptr %31, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %22, i32 noundef 0) #9
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %29, %27, %24, %14, %9, %1
  %35 = phi i32 [ 0, %9 ], [ 0, %1 ], [ 0, %14 ], [ %26, %24 ], [ %33, %29 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_set_write_def_data_len_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_le_write_def_data_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 22
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 63
  %9 = load i16, ptr %8, align 2
  store i16 %9, ptr %2, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 64
  %11 = load i16, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hci_cp_le_write_def_data_len, ptr %2, i32 0, i32 1
  store i16 %11, ptr %12, align 2
  %13 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8228, i32 noundef 4, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %17 = ptrtoint ptr %13 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef 8228, i32 noundef %17) #9
  br label %25

18:                                               ; preds = %7
  %19 = icmp eq ptr %13, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #9
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %20, %18, %15, %1
  %26 = phi i32 [ 0, %1 ], [ %17, %15 ], [ %24, %20 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_le_set_default_phy_sync(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.hci_cp_le_set_default_phy, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %3 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 27, i32 35
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 32
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 136
  store i8 0, ptr %2, align 1
  %9 = load i8, ptr %8, align 8
  %10 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %2, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 137
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.hci_cp_le_set_default_phy, ptr %2, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = call ptr @__hci_cmd_sync_sk(ptr noundef %0, i16 noundef zeroext 8241, i32 noundef 3, ptr noundef nonnull %2, i8 noundef zeroext 0, i32 noundef 200, ptr noundef null) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %17, i32 noundef 8241, i32 noundef %18) #9
  br label %26

19:                                               ; preds = %7
  %20 = icmp eq ptr %14, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 1
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #9
  %25 = zext i8 %24 to i32
  br label %26

26:                                               ; preds = %21, %19, %16, %1
  %27 = phi i32 [ 0, %1 ], [ %18, %16 ], [ %25, %21 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_added(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 699106, i64 2148189077, i64 2148189103, i64 2148189150, i64 2148189172, i64 2148189200, i64 2148189220}
!10 = !{i64 2148201950, i64 2148201982, i64 2148202011, i64 2148202045, i64 2148202076, i64 2148202099}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149407461}
!14 = !{i64 2149407678}
!15 = !{i8 0, i8 2}
!16 = !{i64 2148301171}
!17 = !{i64 2148203533, i64 2148203565, i64 2148203594, i64 2148203628, i64 2148203659, i64 2148203682}
!18 = !{i64 2148301374}
!19 = !{i64 2148302172}
!20 = !{i64 2148204307, i64 2148204339, i64 2148204368, i64 2148204402, i64 2148204433, i64 2148204456}
!21 = !{i64 2149991106}
