; ModuleID = '/llk/IR/net/nfc/nci/core.c_pt.bc'
source_filename = "../net/nfc/nci/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_get_conn_info_by_dest_type_params:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_get_conn_info_by_dest_type_params\22\09\09\09\09\09"
module asm "__kstrtabns_nci_get_conn_info_by_dest_type_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_req_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_req_complete\22\09\09\09\09\09"
module asm "__kstrtabns_nci_req_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_prop_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_prop_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_nci_prop_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_core_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_core_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_nci_core_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_core_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_core_reset\22\09\09\09\09\09"
module asm "__kstrtabns_nci_core_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_core_init\22\09\09\09\09\09"
module asm "__kstrtabns_nci_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_nfcc_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_nfcc_loopback\22\09\09\09\09\09"
module asm "__kstrtabns_nci_nfcc_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_set_config\22\09\09\09\09\09"
module asm "__kstrtabns_nci_set_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_nfcee_discover:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_nfcee_discover\22\09\09\09\09\09"
module asm "__kstrtabns_nci_nfcee_discover:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_nfcee_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_nfcee_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_nci_nfcee_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_core_conn_create:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_core_conn_create\22\09\09\09\09\09"
module asm "__kstrtabns_nci_core_conn_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_core_conn_close:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_core_conn_close\22\09\09\09\09\09"
module asm "__kstrtabns_nci_core_conn_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_nci_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_nci_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_nci_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_nci_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_nci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_send_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_send_frame\22\09\09\09\09\09"
module asm "__kstrtabns_nci_send_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22nci_send_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_nci_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.5, i32, %struct.spinlock }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_conn_info = type { %struct.list_head, ptr, i8, i8, i8, %struct.atomic_t, i8, ptr, ptr, ptr }
%struct.nci_core_reset_cmd = type { i8 }
%struct.sk_buff = type { %union.anon, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nci_core_conn_create_cmd = type { i8, i8, [0 x %struct.core_conn_create_dest_spec_params] }
%struct.core_conn_create_dest_spec_params = type { i8, i8, [0 x i8] }
%struct.nci_core_set_config_cmd = type { i8, %struct.set_config_param }
%struct.set_config_param = type { i8, i8, [251 x i8] }
%struct.nci_nfcee_discover_cmd = type { i8 }
%struct.nci_nfcee_mode_set_cmd = type { i8, i8 }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nci_ctrl_hdr = type { i8, i8, i8 }
%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.nci_rf_disc_map_cmd = type { i8, [10 x %struct.disc_map_config] }
%struct.disc_map_config = type { i8, i8, i8 }
%struct.nci_core_init_v2_cmd = type { i8, i8 }
%struct.nci_rf_disc_cmd = type { i8, [10 x %struct.disc_config] }
%struct.disc_config = type { i8, i8 }
%struct.nci_rf_deactivate_cmd = type { i8 }
%struct.nci_set_config_param = type { i8, i32, ptr }
%struct.nci_rf_discover_select_cmd = type { i8, i8, i8 }

@__kstrtab_nci_get_conn_info_by_dest_type_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_get_conn_info_by_dest_type_params = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_get_conn_info_by_dest_type_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_get_conn_info_by_dest_type_params to i32), ptr @__kstrtab_nci_get_conn_info_by_dest_type_params, ptr @__kstrtabns_nci_get_conn_info_by_dest_type_params }, section "___ksymtab+nci_get_conn_info_by_dest_type_params", align 4
@__kstrtab_nci_req_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_req_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_req_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_req_complete to i32), ptr @__kstrtab_nci_req_complete, ptr @__kstrtabns_nci_req_complete }, section "___ksymtab+nci_req_complete", align 4
@__kstrtab_nci_prop_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_prop_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_prop_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_prop_cmd to i32), ptr @__kstrtab_nci_prop_cmd, ptr @__kstrtabns_nci_prop_cmd }, section "___ksymtab+nci_prop_cmd", align 4
@__kstrtab_nci_core_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_core_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_core_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_core_cmd to i32), ptr @__kstrtab_nci_core_cmd, ptr @__kstrtabns_nci_core_cmd }, section "___ksymtab+nci_core_cmd", align 4
@__kstrtab_nci_core_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_core_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_core_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_core_reset to i32), ptr @__kstrtab_nci_core_reset, ptr @__kstrtabns_nci_core_reset }, section "___ksymtab+nci_core_reset", align 4
@__kstrtab_nci_core_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_core_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_core_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_core_init to i32), ptr @__kstrtab_nci_core_init, ptr @__kstrtabns_nci_core_init }, section "___ksymtab+nci_core_init", align 4
@__kstrtab_nci_nfcc_loopback = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_nfcc_loopback = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_nfcc_loopback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_nfcc_loopback to i32), ptr @__kstrtab_nci_nfcc_loopback, ptr @__kstrtabns_nci_nfcc_loopback }, section "___ksymtab+nci_nfcc_loopback", align 4
@__kstrtab_nci_set_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_set_config = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_set_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_set_config to i32), ptr @__kstrtab_nci_set_config, ptr @__kstrtabns_nci_set_config }, section "___ksymtab+nci_set_config", align 4
@__kstrtab_nci_nfcee_discover = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_nfcee_discover = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_nfcee_discover = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_nfcee_discover to i32), ptr @__kstrtab_nci_nfcee_discover, ptr @__kstrtabns_nci_nfcee_discover }, section "___ksymtab+nci_nfcee_discover", align 4
@__kstrtab_nci_nfcee_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_nfcee_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_nfcee_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_nfcee_mode_set to i32), ptr @__kstrtab_nci_nfcee_mode_set, ptr @__kstrtabns_nci_nfcee_mode_set }, section "___ksymtab+nci_nfcee_mode_set", align 4
@__kstrtab_nci_core_conn_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_core_conn_create = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_core_conn_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_core_conn_create to i32), ptr @__kstrtab_nci_core_conn_create, ptr @__kstrtabns_nci_core_conn_create }, section "___ksymtab+nci_core_conn_create", align 4
@__kstrtab_nci_core_conn_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_core_conn_close = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_core_conn_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_core_conn_close to i32), ptr @__kstrtab_nci_core_conn_close, ptr @__kstrtabns_nci_core_conn_close }, section "___ksymtab+nci_core_conn_close", align 4
@.str = private unnamed_addr constant [47 x i8] c"\013nci: %s: Too many proprietary commands: %zd\0A\00", align 1
@__func__.nci_allocate_device = private unnamed_addr constant [20 x i8] c"nci_allocate_device\00", align 1
@nci_nfc_ops = internal constant %struct.nfc_ops { ptr @nci_dev_up, ptr @nci_dev_down, ptr @nci_start_poll, ptr @nci_stop_poll, ptr @nci_dep_link_up, ptr @nci_dep_link_down, ptr @nci_activate_target, ptr @nci_deactivate_target, ptr @nci_transceive, ptr @nci_tm_send, ptr null, ptr @nci_fw_download, ptr @nci_discover_se, ptr @nci_enable_se, ptr @nci_disable_se, ptr @nci_se_io }, align 4
@__kstrtab_nci_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_allocate_device to i32), ptr @__kstrtab_nci_allocate_device, ptr @__kstrtabns_nci_allocate_device }, section "___ksymtab+nci_allocate_device", align 4
@__kstrtab_nci_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_free_device to i32), ptr @__kstrtab_nci_free_device, ptr @__kstrtabns_nci_free_device }, section "___ksymtab+nci_free_device", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s_nci_cmd_wq\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%s_nci_rx_wq\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%s_nci_tx_wq\00", align 1
@nci_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&ndev->req_lock\00", align 1
@__kstrtab_nci_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_register_device to i32), ptr @__kstrtab_nci_register_device, ptr @__kstrtabns_nci_register_device }, section "___ksymtab+nci_register_device", align 4
@__kstrtab_nci_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_unregister_device to i32), ptr @__kstrtab_nci_unregister_device, ptr @__kstrtabns_nci_unregister_device }, section "___ksymtab+nci_unregister_device", align 4
@__kstrtab_nci_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_recv_frame to i32), ptr @__kstrtab_nci_recv_frame, ptr @__kstrtabns_nci_recv_frame }, section "___ksymtab+nci_recv_frame", align 4
@__kstrtab_nci_send_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_send_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_send_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_send_frame to i32), ptr @__kstrtab_nci_send_frame, ptr @__kstrtabns_nci_send_frame }, section "___ksymtab+nci_send_frame", align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"\013nci: %s: no memory for command\0A\00", align 1
@__func__.nci_send_cmd = private unnamed_addr constant [13 x i8] c"nci_send_cmd\00", align 1
@__kstrtab_nci_send_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_nci_send_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_nci_send_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nci_send_cmd to i32), ptr @__kstrtab_nci_send_cmd, ptr @__kstrtabns_nci_send_cmd }, section "___ksymtab+nci_send_cmd", align 4
@__UNIQUE_ID_license418 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013nci: %s: wait_for_completion_interruptible_timeout failed %ld\0A\00", align 1
@__func__.__nci_request = private unnamed_addr constant [14 x i8] c"__nci_request\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"\013nci: %s: unable to start poll, since poll is already active\0A\00", align 1
@__func__.nci_start_poll = private unnamed_addr constant [15 x i8] c"nci_start_poll\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\013nci: %s: there is an active target\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\013nci: %s: failed to set local general bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\013nci: %s: failed to set listen parameters\0A\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"\013nci: %s: unable to stop poll, since poll is not active\0A\00", align 1
@__func__.nci_stop_poll = private unnamed_addr constant [14 x i8] c"nci_stop_poll\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"\013nci: %s: error when signaling tm deactivation\0A\00", align 1
@__func__.nci_dep_link_down = private unnamed_addr constant [18 x i8] c"nci_dep_link_down\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"\013nci: %s: there is no available target to activate\0A\00", align 1
@__func__.nci_activate_target = private unnamed_addr constant [20 x i8] c"nci_activate_target\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"\013nci: %s: there is already an active target\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"\013nci: %s: unable to find the selected target\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"\013nci: %s: target does not support the requested protocol 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"\013nci: %s: unable to deactivate target, no active target\0A\00", align 1
@__func__.nci_deactivate_target = private unnamed_addr constant [22 x i8] c"nci_deactivate_target\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"\013nci: %s: unable to exchange data, no active target\0A\00", align 1
@__func__.nci_transceive = private unnamed_addr constant [15 x i8] c"nci_transceive\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"\013nci: %s: unable to send data\0A\00", align 1
@__func__.nci_tm_send = private unnamed_addr constant [12 x i8] c"nci_tm_send\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [28 x i8] c"\013nci: %s: unknown MT 0x%x\0A\00", align 1
@__func__.nci_rx_work = private unnamed_addr constant [12 x i8] c"nci_rx_work\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_license418, ptr @__ksymtab_nci_allocate_device, ptr @__ksymtab_nci_core_cmd, ptr @__ksymtab_nci_core_conn_close, ptr @__ksymtab_nci_core_conn_create, ptr @__ksymtab_nci_core_init, ptr @__ksymtab_nci_core_reset, ptr @__ksymtab_nci_free_device, ptr @__ksymtab_nci_get_conn_info_by_dest_type_params, ptr @__ksymtab_nci_nfcc_loopback, ptr @__ksymtab_nci_nfcee_discover, ptr @__ksymtab_nci_nfcee_mode_set, ptr @__ksymtab_nci_prop_cmd, ptr @__ksymtab_nci_recv_frame, ptr @__ksymtab_nci_register_device, ptr @__ksymtab_nci_req_complete, ptr @__ksymtab_nci_send_cmd, ptr @__ksymtab_nci_send_frame, ptr @__ksymtab_nci_set_config, ptr @__ksymtab_nci_unregister_device], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nci_get_conn_info_by_conn_id(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nci_conn_info, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %4

13:                                               ; preds = %8, %4
  %14 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nci_get_conn_info_by_dest_type_params(ptr noundef readonly %0, i8 noundef zeroext %1, ptr noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.dest_spec_params, ptr %2, i32 0, i32 1
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %5, %7 ], [ %28, %27 ]
  %12 = getelementptr inbounds %struct.nci_conn_info, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, %1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  br i1 %8, label %30, label %16

16:                                               ; preds = %15
  %17 = load i8, ptr %2, align 1
  %18 = getelementptr inbounds %struct.nci_conn_info, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i8, ptr %9, align 1
  %24 = getelementptr inbounds %struct.dest_spec_params, ptr %19, i32 0, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %16, %10
  %28 = load ptr, ptr %11, align 4
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %34, label %10

30:                                               ; preds = %22, %15
  %31 = getelementptr inbounds %struct.nci_conn_info, ptr %11, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %30, %27, %3
  %35 = phi i32 [ -22, %3 ], [ %33, %30 ], [ -22, %27 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_req_complete(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 %1, ptr %7, align 4
  store i32 0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  tail call void @complete(ptr noundef %8) #11
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_request(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %12, align 4
  tail call void %1(ptr noundef %0, ptr noundef %2) #11
  %13 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %12, i32 noundef %3) #11
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i32, ptr %11, align 4
  switch i32 %16, label %30 [
    i32 0, label %17
    i32 2, label %22
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = tail call i32 @nci_to_errno(i8 noundef zeroext %20) #11
  br label %30

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 0, %24
  br label %30

26:                                               ; preds = %10
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %13) #12
  %28 = icmp eq i32 %13, 0
  %29 = select i1 %28, i32 -110, i32 %13
  br label %30

30:                                               ; preds = %26, %22, %17, %15
  %31 = phi i32 [ %25, %22 ], [ %21, %17 ], [ %29, %26 ], [ -110, %15 ]
  %32 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %32, align 4
  store i32 0, ptr %11, align 4
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i32 [ %31, %30 ], [ -100, %4 ]
  tail call void @mutex_unlock(ptr noundef %5) #11
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_prop_cmd(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = and i8 %1, 63
  %6 = zext i8 %5 to i16
  %7 = or i16 %6, 3840
  %8 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %9, align 4
  %10 = trunc i32 %2 to i8
  %11 = tail call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext %7, i8 noundef zeroext %10, ptr noundef %3) #11
  %12 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %9, i32 noundef 500) #11
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load i32, ptr %8, align 4
  switch i32 %15, label %29 [
    i32 0, label %16
    i32 2, label %21
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i8
  %20 = tail call i32 @nci_to_errno(i8 noundef zeroext %19) #11
  br label %29

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 0, %23
  br label %29

25:                                               ; preds = %4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %12) #12
  %27 = icmp eq i32 %12, 0
  %28 = select i1 %27, i32 -110, i32 %12
  br label %29

29:                                               ; preds = %25, %21, %16, %14
  %30 = phi i32 [ %24, %21 ], [ %20, %16 ], [ %28, %25 ], [ -110, %14 ]
  %31 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %31, align 4
  store i32 0, ptr %8, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %6, align 4
  %7 = trunc i32 %2 to i8
  %8 = tail call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %7, ptr noundef %3) #11
  %9 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %6, i32 noundef 500) #11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 2, label %18
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @nci_to_errno(i8 noundef zeroext %16) #11
  br label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 0, %20
  br label %26

22:                                               ; preds = %4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %9) #12
  %24 = icmp eq i32 %9, 0
  %25 = select i1 %24, i32 -110, i32 %9
  br label %26

26:                                               ; preds = %22, %18, %13, %11
  %27 = phi i32 [ %21, %18 ], [ %17, %13 ], [ %25, %22 ], [ -110, %11 ]
  %28 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %28, align 4
  store i32 0, ptr %5, align 4
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_reset(ptr noundef %0) #2 {
  %2 = alloca %struct.nci_core_reset_cmd, align 1
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 1, ptr %2, align 1
  %5 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %6 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %4, i32 noundef 500) #11
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  switch i32 %9, label %23 [
    i32 0, label %10
    i32 2, label %15
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %12 = load i32, ptr %11, align 4
  %13 = trunc i32 %12 to i8
  %14 = tail call i32 @nci_to_errno(i8 noundef zeroext %13) #11
  br label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 0, %17
  br label %23

19:                                               ; preds = %1
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %6) #12
  %21 = icmp eq i32 %6, 0
  %22 = select i1 %21, i32 -110, i32 %6
  br label %23

23:                                               ; preds = %19, %15, %10, %8
  %24 = phi i32 [ %18, %15 ], [ %14, %10 ], [ %22, %19 ], [ -110, %8 ]
  %25 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %25, align 4
  store i32 0, ptr %3, align 4
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %3, align 4
  %4 = tail call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #11
  %5 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %3, i32 noundef 500) #11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  switch i32 %8, label %22 [
    i32 0, label %9
    i32 2, label %14
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = tail call i32 @nci_to_errno(i8 noundef zeroext %12) #11
  br label %22

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 0, %16
  br label %22

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %5) #12
  %20 = icmp eq i32 %5, 0
  %21 = select i1 %20, i32 -110, i32 %5
  br label %22

22:                                               ; preds = %18, %14, %9, %7
  %23 = phi i32 [ %17, %14 ], [ %13, %9 ], [ %21, %18 ], [ -110, %7 ]
  %24 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %24, align 4
  store i32 0, ptr %2, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_nfcc_loopback(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3) #2 {
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %13, %4
  %9 = phi ptr [ %14, %13 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, %5
  br i1 %15, label %16, label %8

16:                                               ; preds = %13, %4
  %17 = tail call i32 @nci_core_conn_create(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, ptr noundef null)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, %5
  br i1 %21, label %36, label %22

22:                                               ; preds = %27, %19
  %23 = phi ptr [ %28, %27 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.nci_conn_info, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %23, align 4
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %36, label %22

30:                                               ; preds = %22, %8
  %31 = phi ptr [ %23, %22 ], [ %9, %8 ]
  %32 = phi ptr [ %20, %22 ], [ %6, %8 ]
  %33 = getelementptr inbounds %struct.nci_conn_info, ptr %31, i32 0, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %30, %27, %19
  %37 = phi ptr [ %5, %19 ], [ %32, %30 ], [ %20, %27 ]
  %38 = phi i32 [ -22, %19 ], [ %35, %30 ], [ -22, %27 ]
  %39 = icmp eq ptr %37, %5
  br i1 %39, label %113, label %40

40:                                               ; preds = %46, %36
  %41 = phi ptr [ %47, %46 ], [ %37, %36 ]
  %42 = getelementptr inbounds %struct.nci_conn_info, ptr %41, i32 0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %41, align 4
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %113, label %40

49:                                               ; preds = %40
  %50 = icmp eq ptr %41, null
  br i1 %50, label %113, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.nci_conn_info, ptr %41, i32 0, i32 7
  store ptr @nci_nfcc_loopback_cb, ptr %52, align 4
  %53 = getelementptr inbounds %struct.nci_conn_info, ptr %41, i32 0, i32 8
  store ptr %0, ptr %53, align 4
  %54 = add i32 %2, 3
  %55 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %54, %56
  %58 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %57, %59
  %61 = tail call ptr @__alloc_skb(i32 noundef %60, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %113, label %63

63:                                               ; preds = %51
  %64 = load i32, ptr %55, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i8, ptr %66, i32 %64
  %68 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 14
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr i8, ptr %69, i32 %64
  %71 = getelementptr i8, ptr %67, i32 3
  store ptr %71, ptr %65, align 4
  %72 = getelementptr i8, ptr %70, i32 3
  store ptr %72, ptr %68, align 8
  %73 = tail call ptr @skb_put(ptr noundef nonnull %61, i32 noundef %2) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %73, ptr align 1 %1, i32 %2, i1 false) #11
  %74 = trunc i32 %38 to i8
  %75 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 8
  store i8 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %76) #11
  %77 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %105, label %81

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %82, align 4
  %83 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %83, align 4
  %84 = tail call i32 @nci_send_data(ptr noundef %0, i8 noundef zeroext %74, ptr noundef nonnull %61) #11
  %85 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %83, i32 noundef 70) #11
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %81
  %88 = load i32, ptr %82, align 4
  switch i32 %88, label %102 [
    i32 0, label %89
    i32 2, label %94
  ]

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %91 = load i32, ptr %90, align 4
  %92 = trunc i32 %91 to i8
  %93 = tail call i32 @nci_to_errno(i8 noundef zeroext %92) #11
  br label %102

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %96 = load i32, ptr %95, align 4
  %97 = sub i32 0, %96
  br label %102

98:                                               ; preds = %81
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %85) #12
  %100 = icmp eq i32 %85, 0
  %101 = select i1 %100, i32 -110, i32 %85
  br label %102

102:                                              ; preds = %98, %94, %89, %87
  %103 = phi i32 [ %97, %94 ], [ %93, %89 ], [ %101, %98 ], [ -110, %87 ]
  %104 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %104, align 4
  store i32 0, ptr %82, align 4
  br label %105

105:                                              ; preds = %102, %63
  %106 = phi i32 [ %103, %102 ], [ -100, %63 ]
  tail call void @mutex_unlock(ptr noundef %76) #11
  %107 = icmp eq i32 %106, 0
  %108 = icmp ne ptr %3, null
  %109 = and i1 %108, %107
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.nci_conn_info, ptr %41, i32 0, i32 9
  %112 = load ptr, ptr %111, align 4
  store ptr %112, ptr %3, align 4
  br label %113

113:                                              ; preds = %110, %105, %51, %49, %46, %36, %16
  %114 = phi i32 [ %17, %16 ], [ -71, %49 ], [ 0, %110 ], [ %106, %105 ], [ -12, %51 ], [ -71, %36 ], [ -71, %46 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_conn_create(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef readonly %4) #2 {
  %6 = add i32 %3, 2
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  store i8 %1, ptr %7, align 64
  %10 = getelementptr inbounds %struct.nci_core_conn_create_cmd, ptr %7, i32 0, i32 1
  store i8 %2, ptr %10, align 1
  %11 = icmp eq ptr %4, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nci_core_conn_create_cmd, ptr %7, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %13, ptr nonnull align 1 %4, i32 %3, i1 false)
  %14 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, ptr %4, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 41
  br i1 %16, label %21, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.core_conn_create_dest_spec_params, ptr %4, i32 0, i32 2
  %20 = load i16, ptr %19, align 1
  store i16 %20, ptr %17, align 4
  br label %24

21:                                               ; preds = %12
  store i8 0, ptr %17, align 4
  br label %24

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 41
  store i8 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %21, %18
  %25 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 42
  store i8 %1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %27, align 4
  %28 = trunc i32 %6 to i8
  %29 = tail call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 4, i8 noundef zeroext %28, ptr noundef nonnull %7) #11
  %30 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %27, i32 noundef 500) #11
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load i32, ptr %26, align 4
  switch i32 %33, label %47 [
    i32 0, label %34
    i32 2, label %39
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %36 = load i32, ptr %35, align 4
  %37 = trunc i32 %36 to i8
  %38 = tail call i32 @nci_to_errno(i8 noundef zeroext %37) #11
  br label %47

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %41 = load i32, ptr %40, align 4
  %42 = sub i32 0, %41
  br label %47

43:                                               ; preds = %24
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %30) #12
  %45 = icmp eq i32 %30, 0
  %46 = select i1 %45, i32 -110, i32 %30
  br label %47

47:                                               ; preds = %43, %39, %34, %32
  %48 = phi i32 [ %42, %39 ], [ %38, %34 ], [ %46, %43 ], [ -110, %32 ]
  %49 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %49, align 4
  store i32 0, ptr %26, align 4
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %50

50:                                               ; preds = %47, %5
  %51 = phi i32 [ %48, %47 ], [ -12, %5 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_nfcc_loopback_cb(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  br label %7

7:                                                ; preds = %11, %3
  %8 = phi ptr [ %6, %3 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, %5
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %15, %7
  %18 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %26, label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 9
  store ptr %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %17
  %27 = phi i32 [ 1, %17 ], [ 0, %21 ]
  %28 = phi ptr [ %18, %17 ], [ %23, %21 ]
  %29 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 %27, ptr %29, align 4
  store i32 0, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  tail call void @complete(ptr noundef %30) #11
  br label %31

31:                                               ; preds = %26, %21, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_set_config(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = alloca %struct.nci_core_set_config_cmd, align 1
  %6 = icmp ne ptr %3, null
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %5) #11
  %12 = getelementptr inbounds i8, ptr %5, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(254) %12, i8 0, i32 251, i1 false) #11, !annotation !8
  %13 = icmp ugt i32 %2, 251
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/nfc/nci/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

15:                                               ; preds = %9
  store i8 1, ptr %5, align 1
  %16 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %5, i32 0, i32 1
  store i8 %1, ptr %16, align 1
  %17 = trunc i32 %2 to i8
  %18 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %5, i32 0, i32 1, i32 1
  store i8 %17, ptr %18, align 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr nonnull align 1 %3, i32 %2, i1 false) #11
  %19 = add nuw i8 %17, 3
  %20 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext %19, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %5) #11
  %21 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %11, i32 noundef 500) #11
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load i32, ptr %10, align 4
  switch i32 %24, label %38 [
    i32 0, label %25
    i32 2, label %30
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = tail call i32 @nci_to_errno(i8 noundef zeroext %28) #11
  br label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 0, %32
  br label %38

34:                                               ; preds = %15
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %21) #12
  %36 = icmp eq i32 %21, 0
  %37 = select i1 %36, i32 -110, i32 %21
  br label %38

38:                                               ; preds = %34, %30, %25, %23
  %39 = phi i32 [ %33, %30 ], [ %29, %25 ], [ %37, %34 ], [ -110, %23 ]
  %40 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %40, align 4
  store i32 0, ptr %10, align 4
  br label %41

41:                                               ; preds = %38, %4
  %42 = phi i32 [ %39, %38 ], [ 0, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_nfcee_discover(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = alloca %struct.nci_nfcee_discover_cmd, align 1
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 %1, ptr %3, align 1
  %6 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 512, i8 noundef zeroext 1, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %7 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %5, i32 noundef 500) #11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4
  switch i32 %10, label %24 [
    i32 0, label %11
    i32 2, label %16
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @nci_to_errno(i8 noundef zeroext %14) #11
  br label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 0, %18
  br label %24

20:                                               ; preds = %2
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %7) #12
  %22 = icmp eq i32 %7, 0
  %23 = select i1 %22, i32 -110, i32 %7
  br label %24

24:                                               ; preds = %20, %16, %11, %9
  %25 = phi i32 [ %19, %16 ], [ %15, %11 ], [ %23, %20 ], [ -110, %9 ]
  %26 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %26, align 4
  store i32 0, ptr %4, align 4
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_nfcee_mode_set(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #2 {
  %4 = alloca %struct.nci_nfcee_mode_set_cmd, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 %1, ptr %4, align 2
  %5 = getelementptr inbounds %struct.nci_nfcee_mode_set_cmd, ptr %4, i32 0, i32 1
  store i8 %2, ptr %5, align 1
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %7, align 4
  %8 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 513, i8 noundef zeroext 2, ptr noundef nonnull %4) #11
  %9 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %7, i32 noundef 500) #11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load i32, ptr %6, align 4
  switch i32 %12, label %26 [
    i32 0, label %13
    i32 2, label %18
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @nci_to_errno(i8 noundef zeroext %16) #11
  br label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 0, %20
  br label %26

22:                                               ; preds = %3
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %9) #12
  %24 = icmp eq i32 %9, 0
  %25 = select i1 %24, i32 -110, i32 %9
  br label %26

26:                                               ; preds = %22, %18, %13, %11
  %27 = phi i32 [ %21, %18 ], [ %17, %13 ], [ %25, %22 ], [ -110, %11 ]
  %28 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %28, align 4
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_conn_close(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 8
  store i8 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 %1, ptr %3, align 1
  %7 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %8 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %6, i32 noundef 500) #11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4
  switch i32 %11, label %25 [
    i32 0, label %12
    i32 2, label %17
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @nci_to_errno(i8 noundef zeroext %15) #11
  br label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 0, %19
  br label %25

21:                                               ; preds = %2
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %8) #12
  %23 = icmp eq i32 %8, 0
  %24 = select i1 %23, i32 -110, i32 %8
  br label %25

25:                                               ; preds = %21, %17, %12, %10
  %26 = phi i32 [ %20, %17 ], [ %16, %12 ], [ %24, %21 ], [ -110, %10 ]
  %27 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %27, align 4
  store i32 0, ptr %5, align 4
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nci_allocate_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.nci_ops, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nci_ops, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nci_ops, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp eq i32 %1, 0
  %17 = or i1 %16, %15
  br i1 %17, label %47, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 1104) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 1
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nci_ops, ptr %0, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 64
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nci_allocate_device, i32 noundef %25) #12
  br label %46

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 3
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 4
  store i32 %3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 23
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 23, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %33, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #11
  %34 = add i32 %2, 3
  %35 = tail call ptr @nfc_allocate_device(ptr noundef nonnull @nci_nfc_ops, i32 noundef %1, i32 noundef %34, i32 noundef %3) #11
  store ptr %35, ptr %20, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %29
  %38 = tail call ptr @nci_hci_allocate(ptr noundef nonnull %20) #11
  %39 = getelementptr inbounds %struct.nci_dev, ptr %20, i32 0, i32 2
  store ptr %38, ptr %39, align 8
  %40 = icmp eq ptr %38, null
  %41 = load ptr, ptr %20, align 8
  br i1 %40, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nfc_dev, ptr %41, i32 0, i32 5, i32 8
  store ptr %20, ptr %43, align 8
  br label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.nfc_dev, ptr %41, i32 0, i32 5
  tail call void @put_device(ptr noundef %45) #11
  br label %46

46:                                               ; preds = %44, %29, %27
  tail call void @kfree(ptr noundef nonnull %20) #11
  br label %47

47:                                               ; preds = %46, %42, %18, %12, %8, %4
  %48 = phi ptr [ null, %46 ], [ %20, %42 ], [ null, %12 ], [ null, %8 ], [ null, %4 ], [ null, %18 ]
  ret ptr %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_hci_allocate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_free_device(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 5
  tail call void @put_device(ptr noundef %3) #11
  tail call void @nci_hci_deallocate(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_hci_deallocate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_register_device(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14
  store i32 -32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14, i32 2
  store ptr @nci_cmd_work, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %11, %1 ]
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %16)
  %18 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %2) #11
  %19 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 13
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 16
  store i32 -32, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 16, i32 1
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 16, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 16, i32 2
  store ptr @nci_rx_work, ptr %25, align 4
  %26 = load ptr, ptr %10, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load ptr, ptr %4, align 4
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi ptr [ %29, %28 ], [ %26, %21 ]
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %31)
  %33 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %2) #11
  %34 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 15
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %77, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18
  store i32 -32, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18, i32 1
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18, i32 1, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 18, i32 2
  store ptr @nci_tx_work, ptr %40, align 4
  %41 = load ptr, ptr %10, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load ptr, ptr %4, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi ptr [ %44, %43 ], [ %41, %36 ]
  %47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %46)
  %48 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull %2) #11
  %49 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 17
  store ptr %48, ptr %49, align 4
  %50 = icmp eq ptr %48, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19
  %53 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19, i32 2
  store i32 0, ptr %53, align 4
  store ptr %52, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19, i32 1
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20
  %57 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20, i32 2
  store i32 0, ptr %57, align 4
  store ptr %56, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20, i32 0, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20, i32 1
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  %61 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 2
  store i32 0, ptr %61, align 4
  store ptr %60, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 0, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21, i32 1
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 11
  call void @init_timer_key(ptr noundef %64, ptr noundef nonnull @nci_cmd_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %65 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 12
  call void @init_timer_key(ptr noundef %65, ptr noundef nonnull @nci_data_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %66 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 22
  call void @__mutex_init(ptr noundef %66, ptr noundef nonnull @.str.5, ptr noundef nonnull @nci_register_device.__key) #11
  %67 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9, i32 1
  store ptr %67, ptr %68, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = call i32 @nfc_register_device(ptr noundef %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %51
  %73 = load ptr, ptr %49, align 4
  call void @destroy_workqueue(ptr noundef %73) #11
  br label %74

74:                                               ; preds = %72, %45
  %75 = phi i32 [ %70, %72 ], [ -12, %45 ]
  %76 = load ptr, ptr %34, align 4
  call void @destroy_workqueue(ptr noundef %76) #11
  br label %77

77:                                               ; preds = %74, %30
  %78 = phi i32 [ %75, %74 ], [ -12, %30 ]
  %79 = load ptr, ptr %19, align 4
  call void @destroy_workqueue(ptr noundef %79) #11
  br label %80

80:                                               ; preds = %77, %51, %15
  %81 = phi i32 [ %78, %77 ], [ 0, %51 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_cmd_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -92
  %3 = getelementptr i8, ptr %0, i32 -64
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 56
  %8 = tail call ptr @skb_dequeue(ptr noundef %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #11, !srcloc !12
  %12 = icmp eq ptr %2, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #11
  br label %32

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef nonnull %8) #11
  store ptr null, ptr %15, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 1
  store ptr null, ptr %19, align 4
  br label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !13

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

25:                                               ; preds = %20, %18
  %26 = load ptr, ptr %2, align 4
  tail call void @nfc_send_to_raw_sock(ptr noundef %26, ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %27 = getelementptr i8, ptr %0, i32 -88
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nci_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef nonnull %2, ptr noundef nonnull %8) #11
  br label %32

32:                                               ; preds = %25, %13
  %33 = getelementptr i8, ptr %0, i32 -44
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = add i32 %34, 500
  %36 = tail call i32 @mod_timer(ptr noundef %33, i32 noundef %35) #11
  br label %37

37:                                               ; preds = %32, %6, %1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_rx_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -112
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %19, %1
  %7 = phi ptr [ %20, %19 ], [ %4, %1 ]
  %8 = load ptr, ptr %2, align 4
  tail call void @nfc_send_to_raw_sock(ptr noundef %8, ptr noundef nonnull %7, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %9 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 1
  %12 = lshr i8 %11, 5
  %13 = zext i8 %12 to i32
  switch i32 %13, label %17 [
    i32 2, label %14
    i32 3, label %15
    i32 0, label %16
  ]

14:                                               ; preds = %6
  tail call void @nci_rsp_packet(ptr noundef %2, ptr noundef nonnull %7) #11
  br label %19

15:                                               ; preds = %6
  tail call void @nci_ntf_packet(ptr noundef %2, ptr noundef nonnull %7) #11
  br label %19

16:                                               ; preds = %6
  tail call void @nci_rx_data_packet(ptr noundef %2, ptr noundef nonnull %7) #11
  br label %19

17:                                               ; preds = %6
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.nci_rx_work, i32 noundef %13) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %19

19:                                               ; preds = %17, %16, %15, %14
  %20 = tail call ptr @skb_dequeue(ptr noundef %3) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6

22:                                               ; preds = %19, %1
  %23 = getelementptr i8, ptr %0, i32 -88
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load volatile i32, ptr %23, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 -80
  %33 = load i8, ptr %32, align 4
  tail call void @nci_data_exchange_complete(ptr noundef %2, ptr noundef null, i8 noundef zeroext %33, i32 noundef -110) #11
  br label %34

34:                                               ; preds = %31, %27
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %23) #11
  br label %35

35:                                               ; preds = %34, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_tx_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -132
  %3 = getelementptr i8, ptr %0, i32 -100
  %4 = load i8, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -96
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %58, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nci_conn_info, ptr %8, i32 0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, %4
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nci_conn_info, ptr %8, i32 0, i32 5
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %0, i32 48
  %22 = icmp eq ptr %2, null
  %23 = getelementptr i8, ptr %0, i32 -128
  %24 = getelementptr i8, ptr %0, i32 -64
  br label %25

25:                                               ; preds = %52, %20
  %26 = tail call ptr @skb_dequeue(ptr noundef %21) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %25
  %29 = load volatile i32, ptr %17, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !11
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #11, !srcloc !12
  br label %33

33:                                               ; preds = %31, %28
  br i1 %22, label %34, label %35

34:                                               ; preds = %33
  tail call void @kfree_skb_reason(ptr noundef nonnull %26, i32 noundef 0) #11
  br label %52

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 4, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call void %37(ptr noundef nonnull %26) #11
  store ptr null, ptr %36, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 1
  store ptr null, ptr %40, align 4
  br label %46

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !13

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

46:                                               ; preds = %41, %39
  %47 = load ptr, ptr %2, align 4
  tail call void @nfc_send_to_raw_sock(ptr noundef %47, ptr noundef nonnull %26, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr inbounds %struct.nci_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef nonnull %2, ptr noundef nonnull %26) #11
  br label %52

52:                                               ; preds = %46, %34
  %53 = load volatile i32, ptr @jiffies, align 64
  %54 = add i32 %53, 70
  %55 = tail call i32 @mod_timer(ptr noundef %24, i32 noundef %54) #11
  %56 = load volatile i32, ptr %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %25

58:                                               ; preds = %52, %25, %16, %14, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_cmd_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  store volatile i32 1, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 44
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_data_timer(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -44
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #11
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 44
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nci_unregister_device(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 4, ptr noundef %2) #11
  tail call fastcc void @nci_close_device(ptr noundef %0)
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  tail call void @destroy_workqueue(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  tail call void @destroy_workqueue(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %1
  %13 = phi ptr [ %14, %12 ], [ %10, %1 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %18 = icmp eq ptr %14, %9
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %1
  %20 = load ptr, ptr %0, align 4
  tail call void @nfc_unregister_device(ptr noundef %20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nci_close_device(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.nci_core_reset_cmd, align 1
  %3 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 19, ptr %7, align 4
  store i32 2, ptr %3, align 4
  %8 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  tail call void @complete(ptr noundef %8) #11
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %12 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %11) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 11
  %16 = tail call i32 @del_timer_sync(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 12
  %18 = tail call i32 @del_timer_sync(ptr noundef %17) #11
  br label %55

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %20) #11
  %21 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void @flush_workqueue(ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 17
  %25 = load ptr, ptr %24, align 4
  tail call void @flush_workqueue(ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %26) #11
  %27 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 7
  store volatile i32 1, ptr %27, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %11) #11
  store i32 1, ptr %3, align 4
  %28 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 23
  store i32 0, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 1, ptr %2, align 1
  %29 = call i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %30 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %28, i32 noundef 500) #11
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = tail call i32 @nci_to_errno(i8 noundef zeroext %38) #11
  br label %42

40:                                               ; preds = %19
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %30) #12
  br label %42

42:                                               ; preds = %40, %35, %32
  %43 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 25
  store i32 0, ptr %43, align 4
  store i32 0, ptr %3, align 4
  %44 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nci_ops, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %11) #11
  %49 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 13
  %50 = load ptr, ptr %49, align 4
  tail call void @flush_workqueue(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 11
  %52 = tail call i32 @del_timer_sync(ptr noundef %51) #11
  %53 = load i32, ptr %11, align 4
  %54 = and i32 %53, 16
  store i32 %54, ptr %11, align 4
  br label %55

55:                                               ; preds = %42, %14
  tail call void @mutex_unlock(ptr noundef %10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_recv_frame(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %20

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %15, ptr noundef %1) #11
  %16 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 16
  %19 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %17, ptr noundef %18) #11
  br label %20

20:                                               ; preds = %14, %13
  %21 = phi i32 [ 0, %14 ], [ -6, %13 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_send_frame(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %23

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %1) #11
  store ptr null, ptr %6, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr null, ptr %10, align 4
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !13

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #11, !srcloc !14
  unreachable

16:                                               ; preds = %11, %9
  %17 = load ptr, ptr %0, align 4
  tail call void @nfc_send_to_raw_sock(ptr noundef %17, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  %18 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nci_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %23

23:                                               ; preds = %16, %4
  %24 = phi i32 [ %22, %16 ], [ -19, %4 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_send_to_raw_sock(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_send_cmd(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #2 {
  %5 = zext i8 %2 to i32
  %6 = add nuw nsw i32 %5, 3
  %7 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %9, %11
  %13 = tail call ptr @__alloc_skb(i32 noundef %12, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.nci_send_cmd) #12
  br label %43

17:                                               ; preds = %4
  %18 = load i32, ptr %7, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 %18
  store ptr %24, ptr %22, align 8
  %25 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 3) #11
  %26 = lshr i16 %1, 8
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, 15
  %29 = trunc i16 %1 to i8
  %30 = and i8 %29, 63
  %31 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %25, i32 0, i32 1
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %25, i32 0, i32 2
  store i8 %2, ptr %32, align 1
  %33 = or i8 %28, 32
  store i8 %33, ptr %25, align 1
  %34 = icmp eq i8 %2, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %17
  %36 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef %5) #11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %36, ptr align 1 %3, i32 %5, i1 false) #11
  br label %37

37:                                               ; preds = %35, %17
  %38 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 19
  tail call void @skb_queue_tail(ptr noundef %38, ptr noundef nonnull %13) #11
  %39 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 13
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 14
  %42 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %40, ptr noundef %41) #11
  br label %43

43:                                               ; preds = %37, %15
  %44 = phi i32 [ 0, %37 ], [ -12, %15 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_prop_rsp_packet(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne ptr %7, null
  %11 = icmp ne i32 %9, 0
  %12 = and i1 %10, %11
  br i1 %12, label %16, label %29

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %18 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, %1
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %23, %21, %13, %3
  %30 = phi i32 [ %28, %27 ], [ -524, %23 ], [ -524, %21 ], [ -524, %3 ], [ -524, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_prop_ntf_packet(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne ptr %7, null
  %11 = icmp ne i32 %9, 0
  %12 = and i1 %10, %11
  br i1 %12, label %16, label %29

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %18 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, %1
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %23, %21, %13, %3
  %30 = phi i32 [ %28, %27 ], [ -524, %23 ], [ -524, %21 ], [ -524, %3 ], [ -524, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_rsp_packet(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne ptr %7, null
  %11 = icmp ne i32 %9, 0
  %12 = and i1 %10, %11
  br i1 %12, label %16, label %29

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %18 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, %1
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %23, %21, %13, %3
  %30 = phi i32 [ %28, %27 ], [ -524, %23 ], [ -524, %21 ], [ -524, %3 ], [ -524, %13 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nci_core_ntf_packet(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne ptr %7, null
  %11 = icmp ne i32 %9, 0
  %12 = and i1 %10, %11
  br i1 %12, label %16, label %29

13:                                               ; preds = %16
  %14 = add nuw i32 %17, 1
  %15 = icmp eq i32 %14, %9
  br i1 %15, label %29, label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %18 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17
  %19 = load i16, ptr %18, align 4
  %20 = icmp eq i16 %19, %1
  br i1 %20, label %21, label %13

21:                                               ; preds = %16
  %22 = icmp eq ptr %18, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr %struct.nci_driver_ops, ptr %7, i32 %17, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef %2) #11
  br label %29

29:                                               ; preds = %27, %23, %21, %13, %3
  %30 = phi i32 [ %28, %27 ], [ -524, %23 ], [ -524, %21 ], [ -524, %3 ], [ -524, %13 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_send_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_dev_up(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.nci_rf_disc_map_cmd, align 1
  %3 = alloca %struct.nci_core_reset_cmd, align 1
  %4 = alloca %struct.nci_core_init_v2_cmd, align 2
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %163

12:                                               ; preds = %1
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %163

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nci_ops, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %6) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %163

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 7
  store volatile i32 1, ptr %24, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #11
  %25 = load ptr, ptr %17, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %6) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %147

31:                                               ; preds = %28, %23
  %32 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 24
  store i32 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 23
  store i32 0, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 1, ptr %3, align 1
  %34 = call i32 @nci_send_cmd(ptr noundef %6, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %35 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %33, i32 noundef 500) #11
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, ptr %32, align 4
  switch i32 %38, label %52 [
    i32 0, label %39
    i32 2, label %44
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  %41 = load i32, ptr %40, align 4
  %42 = trunc i32 %41 to i8
  %43 = tail call i32 @nci_to_errno(i8 noundef zeroext %42) #11
  br label %55

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 0, %46
  br label %55

48:                                               ; preds = %31
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %35) #12
  %50 = icmp eq i32 %35, 0
  %51 = select i1 %50, i32 -110, i32 %35
  br label %52

52:                                               ; preds = %48, %37
  %53 = phi i32 [ -110, %37 ], [ %51, %48 ]
  %54 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  store i32 0, ptr %54, align 4
  store i32 0, ptr %32, align 4
  br label %147

55:                                               ; preds = %44, %39
  %56 = phi i32 [ %47, %44 ], [ %43, %39 ]
  %57 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  store i32 0, ptr %57, align 4
  store i32 0, ptr %32, align 4
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %59, label %147

59:                                               ; preds = %55
  %60 = load ptr, ptr %17, align 4
  %61 = getelementptr inbounds %struct.nci_ops, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = tail call i32 %62(ptr noundef %6) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %147

67:                                               ; preds = %64, %59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2
  %68 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 31
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 32
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, ptr null, ptr %4
  store i32 1, ptr %32, align 4
  store i32 0, ptr %33, align 4
  %73 = lshr exact i8 %70, 4
  %74 = call i32 @nci_send_cmd(ptr noundef %6, i16 noundef zeroext 1, i8 noundef zeroext %73, ptr noundef %72) #11
  %75 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %33, i32 noundef 500) #11
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load i32, ptr %32, align 4
  switch i32 %78, label %90 [
    i32 0, label %79
    i32 2, label %83
  ]

79:                                               ; preds = %77
  %80 = load i32, ptr %57, align 4
  %81 = trunc i32 %80 to i8
  %82 = tail call i32 @nci_to_errno(i8 noundef zeroext %81) #11
  br label %92

83:                                               ; preds = %77
  %84 = load i32, ptr %57, align 4
  %85 = sub i32 0, %84
  br label %92

86:                                               ; preds = %67
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %75) #12
  %88 = icmp eq i32 %75, 0
  %89 = select i1 %88, i32 -110, i32 %75
  br label %90

90:                                               ; preds = %86, %77
  %91 = phi i32 [ -110, %77 ], [ %89, %86 ]
  store i32 0, ptr %57, align 4
  store i32 0, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %147

92:                                               ; preds = %83, %79
  %93 = phi i32 [ %85, %83 ], [ %82, %79 ]
  store i32 0, ptr %57, align 4
  store i32 0, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %147

95:                                               ; preds = %92
  %96 = load ptr, ptr %17, align 4
  %97 = getelementptr inbounds %struct.nci_ops, ptr %96, i32 0, i32 5
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = tail call i32 %98(ptr noundef %6) #11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %147

103:                                              ; preds = %100, %95
  store i32 1, ptr %32, align 4
  store i32 0, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %2) #11
  %104 = getelementptr inbounds %struct.nci_rf_disc_map_cmd, ptr %2, i32 0, i32 1
  %105 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(30) %104, i8 0, i64 30, i1 false) #11
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = icmp eq i8 %106, 0
  br i1 %108, label %127, label %113

109:                                              ; preds = %119, %113
  %110 = phi i8 [ %125, %119 ], [ %115, %113 ]
  %111 = add nuw nsw i32 %114, 1
  %112 = icmp eq i32 %111, %107
  br i1 %112, label %127, label %113

113:                                              ; preds = %109, %103
  %114 = phi i32 [ %111, %109 ], [ 0, %103 ]
  %115 = phi i8 [ %110, %109 ], [ 0, %103 ]
  %116 = getelementptr %struct.nci_dev, ptr %6, i32 0, i32 34, i32 %114
  %117 = load i8, ptr %116, align 1
  switch i8 %117, label %109 [
    i8 2, label %119
    i8 3, label %118
  ]

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i8 [ 5, %118 ], [ 4, %113 ]
  %121 = zext i8 %115 to i32
  %122 = getelementptr %struct.disc_map_config, ptr %104, i32 %121
  store i8 %120, ptr %122, align 1
  %123 = getelementptr %struct.disc_map_config, ptr %104, i32 %121, i32 1
  store i8 3, ptr %123, align 1
  %124 = getelementptr %struct.disc_map_config, ptr %104, i32 %121, i32 2
  store i8 %117, ptr %124, align 1
  %125 = add i8 %115, 1
  %126 = icmp eq i8 %125, 10
  br i1 %126, label %127, label %109

127:                                              ; preds = %119, %109, %103
  %128 = phi i8 [ 0, %103 ], [ %110, %109 ], [ 10, %119 ]
  store i8 %128, ptr %2, align 1
  %129 = mul i8 %128, 3
  %130 = add i8 %129, 1
  %131 = call i32 @nci_send_cmd(ptr noundef %6, i16 noundef zeroext 256, i8 noundef zeroext %130, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %2) #11
  %132 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %33, i32 noundef 500) #11
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %127
  %135 = load i32, ptr %32, align 4
  switch i32 %135, label %149 [
    i32 0, label %136
    i32 2, label %140
  ]

136:                                              ; preds = %134
  %137 = load i32, ptr %57, align 4
  %138 = trunc i32 %137 to i8
  %139 = tail call i32 @nci_to_errno(i8 noundef zeroext %138) #11
  br label %149

140:                                              ; preds = %134
  %141 = load i32, ptr %57, align 4
  %142 = sub i32 0, %141
  br label %149

143:                                              ; preds = %127
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %132) #12
  %145 = icmp eq i32 %132, 0
  %146 = select i1 %145, i32 -110, i32 %132
  br label %149

147:                                              ; preds = %100, %92, %90, %64, %55, %52, %28
  %148 = phi i32 [ %101, %100 ], [ %91, %90 ], [ %93, %92 ], [ %65, %64 ], [ %53, %52 ], [ %56, %55 ], [ %29, %28 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #11
  br label %154

149:                                              ; preds = %143, %140, %136, %134
  %150 = phi i32 [ %142, %140 ], [ %139, %136 ], [ -110, %134 ], [ %146, %143 ]
  store i32 0, ptr %57, align 4
  store i32 0, ptr %32, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #11
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  tail call void @_set_bit(i32 noundef 1, ptr noundef %8) #11
  tail call void @nci_clear_target_list(ptr noundef %6) #11
  %153 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 5
  store volatile i32 0, ptr %153, align 4
  br label %163

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %156 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %156) #11
  %157 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %157) #11
  %158 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %158) #11
  %159 = load ptr, ptr %17, align 4
  %160 = getelementptr inbounds %struct.nci_ops, ptr %159, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = tail call i32 %161(ptr noundef %6) #11
  store i32 0, ptr %8, align 4
  br label %163

163:                                              ; preds = %154, %152, %16, %12, %1
  %164 = phi i32 [ %155, %154 ], [ 0, %152 ], [ -19, %1 ], [ -114, %12 ], [ -5, %16 ]
  tail call void @mutex_unlock(ptr noundef %7) #11
  ret i32 %164
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_dev_down(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @nci_close_device(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_start_poll(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.nci_rf_disc_cmd, align 1
  %5 = alloca %struct.nci_rf_deactivate_cmd, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.nci_core_set_config_cmd, align 1
  %8 = alloca %struct.nci_core_set_config_cmd, align 1
  %9 = alloca %struct.nci_set_config_param, align 4
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 5
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load volatile i32, ptr %12, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.nci_start_poll) #12
  br label %259

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 28
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.nci_start_poll) #12
  br label %259

26:                                               ; preds = %20
  %27 = load volatile i32, ptr %12, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load volatile i32, ptr %12, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %64

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 6
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef %33) #11
  br label %259

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 24
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 23
  store i32 0, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1
  %42 = call i32 @nci_send_cmd(ptr noundef %11, i16 noundef zeroext 262, i8 noundef zeroext 1, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  %43 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %41, i32 noundef 3000) #11
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i32, ptr %40, align 4
  switch i32 %46, label %60 [
    i32 0, label %47
    i32 2, label %52
  ]

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i8
  %51 = tail call i32 @nci_to_errno(i8 noundef zeroext %50) #11
  br label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 0, %54
  br label %60

56:                                               ; preds = %39
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %43) #12
  %58 = icmp eq i32 %43, 0
  %59 = select i1 %58, i32 -110, i32 %43
  br label %60

60:                                               ; preds = %56, %52, %47, %45
  %61 = phi i32 [ %55, %52 ], [ %51, %47 ], [ -110, %45 ], [ %59, %56 ]
  %62 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  store i32 0, ptr %62, align 4
  store i32 0, ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %33) #11
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %259

64:                                               ; preds = %60, %29
  %65 = or i32 %2, %1
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %163, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #11, !annotation !8
  %70 = getelementptr inbounds %struct.nci_set_config_param, ptr %9, i32 0, i32 1
  %71 = call ptr @nfc_get_local_general_bytes(ptr noundef %0, ptr noundef %70) #11
  %72 = getelementptr inbounds %struct.nci_set_config_param, ptr %9, i32 0, i32 2
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  %74 = load i32, ptr %70, align 4
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %163

78:                                               ; preds = %68
  %79 = icmp ugt i32 %74, 48
  br i1 %79, label %154, label %80

80:                                               ; preds = %78
  store i8 41, ptr %9, align 4
  %81 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 22
  call void @mutex_lock(ptr noundef %81) #11
  %82 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 6
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %156, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 24
  store i32 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 23
  store i32 0, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %8) #11
  %89 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(254) %89, i8 0, i32 251, i1 false) #11, !annotation !8
  %90 = load i32, ptr %70, align 4
  %91 = icmp ugt i32 %90, 251
  br i1 %91, label %92, label %93, !prof !9

92:                                               ; preds = %86
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/nfc/nci/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

93:                                               ; preds = %86
  store i8 1, ptr %8, align 1
  %94 = load i8, ptr %9, align 4
  %95 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %8, i32 0, i32 1
  store i8 %94, ptr %95, align 1
  %96 = trunc i32 %90 to i8
  %97 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %8, i32 0, i32 1, i32 1
  store i8 %96, ptr %97, align 1
  %98 = load ptr, ptr %72, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %89, ptr align 1 %98, i32 %90, i1 false) #11
  %99 = add nuw i8 %96, 3
  %100 = call i32 @nci_send_cmd(ptr noundef %69, i16 noundef zeroext 2, i8 noundef zeroext %99, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %8) #11
  %101 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %88, i32 noundef 500) #11
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %93
  %104 = load i32, ptr %87, align 4
  switch i32 %104, label %118 [
    i32 0, label %105
    i32 2, label %110
  ]

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 25
  %107 = load i32, ptr %106, align 4
  %108 = trunc i32 %107 to i8
  %109 = call i32 @nci_to_errno(i8 noundef zeroext %108) #11
  br label %118

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 25
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 0, %112
  br label %118

114:                                              ; preds = %93
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %101) #12
  %116 = icmp eq i32 %101, 0
  %117 = select i1 %116, i32 -110, i32 %101
  br label %118

118:                                              ; preds = %114, %110, %105, %103
  %119 = phi i32 [ %113, %110 ], [ %109, %105 ], [ -110, %103 ], [ %117, %114 ]
  %120 = getelementptr inbounds %struct.nci_dev, ptr %69, i32 0, i32 25
  store i32 0, ptr %120, align 4
  store i32 0, ptr %87, align 4
  call void @mutex_unlock(ptr noundef %81) #11
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %118
  store i8 97, ptr %9, align 4
  call void @mutex_lock(ptr noundef %81) #11
  %123 = load volatile i32, ptr %82, align 4
  %124 = and i32 %123, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %156, label %126

126:                                              ; preds = %122
  store i32 1, ptr %87, align 4
  store i32 0, ptr %88, align 4
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %7) #11
  %127 = getelementptr inbounds i8, ptr %7, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(254) %127, i8 0, i32 251, i1 false) #11, !annotation !8
  %128 = load i32, ptr %70, align 4
  %129 = icmp ugt i32 %128, 251
  br i1 %129, label %130, label %131, !prof !9

130:                                              ; preds = %126
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/nfc/nci/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

131:                                              ; preds = %126
  store i8 1, ptr %7, align 1
  %132 = load i8, ptr %9, align 4
  %133 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %7, i32 0, i32 1
  store i8 %132, ptr %133, align 1
  %134 = trunc i32 %128 to i8
  %135 = getelementptr inbounds %struct.nci_core_set_config_cmd, ptr %7, i32 0, i32 1, i32 1
  store i8 %134, ptr %135, align 1
  %136 = load ptr, ptr %72, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %127, ptr align 1 %136, i32 %128, i1 false) #11
  %137 = add nuw i8 %134, 3
  %138 = call i32 @nci_send_cmd(ptr noundef %69, i16 noundef zeroext 2, i8 noundef zeroext %137, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %7) #11
  %139 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %88, i32 noundef 500) #11
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %131
  %142 = load i32, ptr %87, align 4
  switch i32 %142, label %157 [
    i32 0, label %143
    i32 2, label %147
  ]

143:                                              ; preds = %141
  %144 = load i32, ptr %120, align 4
  %145 = trunc i32 %144 to i8
  %146 = call i32 @nci_to_errno(i8 noundef zeroext %145) #11
  br label %157

147:                                              ; preds = %141
  %148 = load i32, ptr %120, align 4
  %149 = sub i32 0, %148
  br label %157

150:                                              ; preds = %131
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %139) #12
  %152 = icmp eq i32 %139, 0
  %153 = select i1 %152, i32 -110, i32 %139
  br label %157

154:                                              ; preds = %118, %78
  %155 = phi i32 [ %119, %118 ], [ -22, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %160

156:                                              ; preds = %122, %80
  call void @mutex_unlock(ptr noundef %81) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  br label %160

157:                                              ; preds = %150, %147, %143, %141
  %158 = phi i32 [ %149, %147 ], [ %146, %143 ], [ -110, %141 ], [ %153, %150 ]
  store i32 0, ptr %120, align 4
  store i32 0, ptr %87, align 4
  call void @mutex_unlock(ptr noundef %81) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %157, %156, %154
  %161 = phi i32 [ %155, %154 ], [ %158, %157 ], [ -100, %156 ]
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.nci_start_poll) #12
  br label %259

163:                                              ; preds = %157, %77, %64
  %164 = and i32 %2, 32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %179, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 64, ptr %6, align 1
  %168 = call i32 @nci_set_config(ptr noundef %167, i8 noundef zeroext 50, i32 noundef 1, ptr noundef nonnull %6) #11
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  store i8 2, ptr %6, align 1
  %171 = call i32 @nci_set_config(ptr noundef %167, i8 noundef zeroext 80, i32 noundef 1, ptr noundef nonnull %6) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170, %166
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %177

174:                                              ; preds = %170
  store i8 6, ptr %6, align 1
  %175 = call i32 @nci_set_config(ptr noundef %167, i8 noundef zeroext 84, i32 noundef 1, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174, %173
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.nci_start_poll) #12
  br label %179

179:                                              ; preds = %177, %174, %163
  %180 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 22
  call void @mutex_lock(ptr noundef %180) #11
  %181 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 6
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  call void @mutex_unlock(ptr noundef %180) #11
  br label %259

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 24
  store i32 1, ptr %187, align 4
  %188 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 23
  store i32 0, ptr %188, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %4, i8 0, i64 21, i1 false) #11
  %189 = and i32 %1, 54
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i8 1, ptr %192, align 1
  store i8 1, ptr %4, align 1
  br label %193

193:                                              ; preds = %191, %186
  %194 = phi i32 [ 1, %191 ], [ 0, %186 ]
  %195 = phi i8 [ 1, %191 ], [ 0, %186 ]
  %196 = and i32 %1, 64
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %194
  store i8 1, ptr %199, align 1
  %200 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %194, i32 1
  store i8 1, ptr %200, align 1
  %201 = add nuw nsw i8 %195, 1
  store i8 %201, ptr %4, align 1
  br label %202

202:                                              ; preds = %198, %193
  %203 = phi i8 [ %201, %198 ], [ %195, %193 ]
  %204 = and i32 %1, 40
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = zext i8 %203 to i32
  %208 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %207
  store i8 2, ptr %208, align 1
  %209 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %207, i32 1
  store i8 1, ptr %209, align 1
  %210 = add nuw nsw i8 %203, 1
  store i8 %210, ptr %4, align 1
  br label %211

211:                                              ; preds = %206, %202
  %212 = phi i8 [ %210, %206 ], [ %203, %202 ]
  %213 = and i32 %1, 128
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = zext i8 %212 to i32
  %217 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %216
  store i8 6, ptr %217, align 1
  %218 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %216, i32 1
  store i8 1, ptr %218, align 1
  %219 = add nuw nsw i8 %212, 1
  store i8 %219, ptr %4, align 1
  br label %220

220:                                              ; preds = %215, %211
  %221 = phi i8 [ %219, %215 ], [ %212, %211 ]
  br i1 %165, label %231, label %222

222:                                              ; preds = %220
  %223 = zext i8 %221 to i32
  %224 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %223
  store i8 -128, ptr %224, align 1
  %225 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %223, i32 1
  store i8 1, ptr %225, align 1
  %226 = add nuw nsw i8 %221, 1
  %227 = zext i8 %226 to i32
  %228 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %227
  store i8 -126, ptr %228, align 1
  %229 = getelementptr %struct.nci_rf_disc_cmd, ptr %4, i32 0, i32 1, i32 %227, i32 1
  store i8 1, ptr %229, align 1
  %230 = add nuw nsw i8 %221, 2
  store i8 %230, ptr %4, align 1
  br label %231

231:                                              ; preds = %222, %220
  %232 = phi i8 [ %230, %222 ], [ %221, %220 ]
  %233 = shl nuw nsw i8 %232, 1
  %234 = or i8 %233, 1
  %235 = call i32 @nci_send_cmd(ptr noundef %11, i16 noundef zeroext 259, i8 noundef zeroext %234, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %4) #11
  %236 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %188, i32 noundef 500) #11
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %231
  %239 = load i32, ptr %187, align 4
  switch i32 %239, label %253 [
    i32 0, label %240
    i32 2, label %245
  ]

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  %242 = load i32, ptr %241, align 4
  %243 = trunc i32 %242 to i8
  %244 = call i32 @nci_to_errno(i8 noundef zeroext %243) #11
  br label %253

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  %247 = load i32, ptr %246, align 4
  %248 = sub i32 0, %247
  br label %253

249:                                              ; preds = %231
  %250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %236) #12
  %251 = icmp eq i32 %236, 0
  %252 = select i1 %251, i32 -110, i32 %236
  br label %253

253:                                              ; preds = %249, %245, %240, %238
  %254 = phi i32 [ %248, %245 ], [ %244, %240 ], [ -110, %238 ], [ %252, %249 ]
  %255 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 25
  store i32 0, ptr %255, align 4
  store i32 0, ptr %187, align 4
  call void @mutex_unlock(ptr noundef %180) #11
  %256 = icmp eq i32 %254, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.nci_dev, ptr %11, i32 0, i32 27
  store i32 %1, ptr %258, align 4
  br label %259

259:                                              ; preds = %257, %253, %185, %160, %60, %38, %24, %18
  %260 = phi i32 [ -16, %18 ], [ -16, %24 ], [ %161, %160 ], [ -16, %60 ], [ 0, %257 ], [ %254, %253 ], [ -16, %38 ], [ -100, %185 ]
  ret i32 %260
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_stop_poll(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.nci_rf_deactivate_cmd, align 1
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.nci_stop_poll) #12
  br label %38

13:                                               ; preds = %8, %1
  %14 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 6
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 24
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 23
  store i32 0, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %22 = call i32 @nci_send_cmd(ptr noundef %4, i16 noundef zeroext 262, i8 noundef zeroext 1, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %23 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %21, i32 noundef 3000) #11
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, ptr %20, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 25
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = tail call i32 @nci_to_errno(i8 noundef zeroext %31) #11
  br label %35

33:                                               ; preds = %19
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %23) #12
  br label %35

35:                                               ; preds = %33, %28, %25
  %36 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 25
  store i32 0, ptr %36, align 4
  store i32 0, ptr %20, align 4
  br label %37

37:                                               ; preds = %35, %13
  tail call void @mutex_unlock(ptr noundef %14) #11
  br label %38

38:                                               ; preds = %37, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_dep_link_up(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readnone %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @nci_activate_target(ptr noundef %0, ptr noundef %1, i32 noundef 5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nci_dev, ptr %7, i32 0, i32 44
  %12 = getelementptr inbounds %struct.nci_dev, ptr %7, i32 0, i32 45
  %13 = load i8, ptr %12, align 4
  %14 = tail call i32 @nfc_set_remote_general_bytes(ptr noundef %0, ptr noundef %11, i8 noundef zeroext %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, ptr %1, align 4
  %18 = tail call i32 @nfc_dep_link_is_up(ptr noundef %0, i32 noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  br label %19

19:                                               ; preds = %16, %10, %5
  %20 = phi i32 [ %8, %5 ], [ %14, %10 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_dep_link_down(ptr noundef %0) #2 {
  %2 = alloca %struct.nci_rf_deactivate_cmd, align 1
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @nci_deactivate_target(ptr noundef %0, ptr noundef null, i8 noundef zeroext 0)
  br label %46

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 5
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %10, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %41

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 24
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 23
  store i32 0, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1
  %25 = call i32 @nci_send_cmd(ptr noundef %4, i16 noundef zeroext 262, i8 noundef zeroext 1, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  %26 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %24, i32 noundef 3000) #11
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, ptr %23, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 25
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = tail call i32 @nci_to_errno(i8 noundef zeroext %34) #11
  br label %38

36:                                               ; preds = %22
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %26) #12
  br label %38

38:                                               ; preds = %36, %31, %28
  %39 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 25
  store i32 0, ptr %39, align 4
  store i32 0, ptr %23, align 4
  br label %40

40:                                               ; preds = %38, %16
  tail call void @mutex_unlock(ptr noundef %17) #11
  br label %41

41:                                               ; preds = %40, %13
  %42 = tail call i32 @nfc_tm_deactivated(ptr noundef %0) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.nci_dep_link_down) #12
  br label %46

46:                                               ; preds = %44, %41, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_activate_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca %struct.nci_rf_discover_select_cmd, align 1
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load volatile i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.nci_activate_target) #12
  br label %99

15:                                               ; preds = %10, %3
  %16 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 30
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i32, ptr %1, align 4
  br label %27

25:                                               ; preds = %15
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.nci_activate_target) #12
  br label %99

27:                                               ; preds = %32, %23
  %28 = phi i32 [ 0, %23 ], [ %33, %32 ]
  %29 = getelementptr %struct.nci_dev, ptr %6, i32 0, i32 29, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, %21
  br i1 %34, label %37, label %27

35:                                               ; preds = %27
  %36 = icmp eq ptr %29, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %35, %32, %19
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.nci_activate_target) #12
  br label %99

39:                                               ; preds = %35
  %40 = getelementptr %struct.nci_dev, ptr %6, i32 0, i32 29, i32 %28, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = shl nuw i32 1, %2
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.nci_activate_target, i32 noundef %2) #12
  br label %99

47:                                               ; preds = %39
  %48 = load volatile i32, ptr %7, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %98

50:                                               ; preds = %47
  %51 = getelementptr %struct.nci_dev, ptr %6, i32 0, i32 29, i32 %28, i32 13
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %53) #11
  %54 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 6
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  tail call void @mutex_unlock(ptr noundef %53) #11
  br label %99

59:                                               ; preds = %50
  %60 = add i32 %2, -1
  %61 = icmp ult i32 %60, 3
  %62 = trunc i32 %60 to i8
  %63 = add i8 %62, 1
  %64 = and i32 %2, -3
  %65 = icmp eq i32 %64, 4
  %66 = select i1 %65, i8 4, i8 5
  %67 = select i1 %61, i8 %63, i8 %66
  %68 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 24
  store i32 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 23
  store i32 0, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #11
  %70 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %52, ptr %4, align 1
  %71 = getelementptr inbounds %struct.nci_rf_discover_select_cmd, ptr %4, i32 0, i32 1
  store i8 %67, ptr %71, align 1
  %72 = icmp eq i8 %67, 5
  %73 = select i1 %72, i8 3, i8 1
  %74 = icmp eq i8 %67, 4
  %75 = select i1 %74, i8 2, i8 %73
  store i8 %75, ptr %70, align 1
  %76 = call i32 @nci_send_cmd(ptr noundef %6, i16 noundef zeroext 260, i8 noundef zeroext 3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #11
  %77 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %69, i32 noundef 500) #11
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %59
  %80 = load i32, ptr %68, align 4
  switch i32 %80, label %94 [
    i32 0, label %81
    i32 2, label %86
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  %83 = load i32, ptr %82, align 4
  %84 = trunc i32 %83 to i8
  %85 = tail call i32 @nci_to_errno(i8 noundef zeroext %84) #11
  br label %94

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  %88 = load i32, ptr %87, align 4
  %89 = sub i32 0, %88
  br label %94

90:                                               ; preds = %59
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %77) #12
  %92 = icmp eq i32 %77, 0
  %93 = select i1 %92, i32 -110, i32 %77
  br label %94

94:                                               ; preds = %90, %86, %81, %79
  %95 = phi i32 [ %89, %86 ], [ %85, %81 ], [ -110, %79 ], [ %93, %90 ]
  %96 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  store i32 0, ptr %96, align 4
  store i32 0, ptr %68, align 4
  tail call void @mutex_unlock(ptr noundef %53) #11
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94, %47
  store i32 %2, ptr %16, align 4
  br label %99

99:                                               ; preds = %98, %94, %58, %45, %37, %25, %13
  %100 = phi i32 [ -22, %13 ], [ -16, %25 ], [ -22, %45 ], [ -22, %37 ], [ 0, %98 ], [ %95, %94 ], [ -100, %58 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nci_deactivate_target(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i8 noundef zeroext %2) #2 {
  %4 = alloca %struct.nci_rf_deactivate_cmd, align 1
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.nci_deactivate_target) #12
  br label %43

12:                                               ; preds = %3
  store i32 0, ptr %7, align 4
  %13 = icmp eq i8 %2, 1
  %14 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 6
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 24
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 23
  store i32 0, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %26 = zext i1 %13 to i8
  store i8 %26, ptr %4, align 1
  %27 = call i32 @nci_send_cmd(ptr noundef %6, i16 noundef zeroext 262, i8 noundef zeroext 1, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  %28 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %25, i32 noundef 3000) #11
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, ptr %24, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  %37 = tail call i32 @nci_to_errno(i8 noundef zeroext %36) #11
  br label %40

38:                                               ; preds = %23
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__nci_request, i32 noundef %28) #12
  br label %40

40:                                               ; preds = %38, %33, %30
  %41 = getelementptr inbounds %struct.nci_dev, ptr %6, i32 0, i32 25
  store i32 0, ptr %41, align 4
  store i32 0, ptr %24, align 4
  br label %42

42:                                               ; preds = %40, %17
  tail call void @mutex_unlock(ptr noundef %18) #11
  br label %43

43:                                               ; preds = %42, %12, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_transceive(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nci_dev, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nci_dev, ptr %7, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.nci_transceive) #12
  br label %27

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.nci_dev, ptr %7, i32 0, i32 6
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 7
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nci_conn_info, ptr %9, i32 0, i32 8
  store ptr %4, ptr %23, align 4
  %24 = tail call i32 @nci_send_data(ptr noundef %7, i8 noundef zeroext 0, ptr noundef %2) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %18) #11
  br label %27

27:                                               ; preds = %26, %21, %17, %15, %5
  %28 = phi i32 [ -22, %15 ], [ -71, %5 ], [ -16, %17 ], [ %24, %26 ], [ 0, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_tm_send(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @nci_send_data(ptr noundef %4, i8 noundef zeroext 0, ptr noundef %1) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.nci_tm_send) #12
  br label %9

9:                                                ; preds = %7, %2
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_fw_download(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nci_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -524, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_discover_se(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nci_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nci_ops, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @nci_nfcee_discover(ptr noundef %3, i8 noundef zeroext 1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.nci_ops, ptr %13, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %3) #11
  br label %17

17:                                               ; preds = %12, %9, %1
  %18 = phi i32 [ %16, %12 ], [ -71, %9 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_enable_se(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nci_ops, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_disable_se(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nci_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nci_ops, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #11
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nci_se_io(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #2 {
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nci_dev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nci_ops, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #11
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_clear_target_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_deactivated(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_rsp_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_ntf_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_rx_data_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_data_exchange_complete(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155625433, i64 2155625916, i64 2155625470, i64 2155625526, i64 2155625560, i64 2155625584, i64 2155625625, i64 2155625646, i64 2155625674, i64 2155625708}
!11 = !{i64 577810, i64 2148067781, i64 2148067807, i64 2148067854, i64 2148067876, i64 2148067904, i64 2148067924}
!12 = !{i64 2148081553, i64 2148081579, i64 2148081608, i64 2148081642, i64 2148081673, i64 2148081696}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2153319591, i64 2153320079, i64 2153319628, i64 2153319684, i64 2153319718, i64 2153319742, i64 2153319783, i64 2153319804, i64 2153319832, i64 2153319866}
