; ModuleID = '/llk/IR/net/nfc/hci/core.c_pt.bc'
source_filename = "../net/nfc/hci/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_result_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_result_to_errno\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_result_to_errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_reset_pipes:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_reset_pipes\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_reset_pipes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_reset_pipes_per_host:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_reset_pipes_per_host\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_reset_pipes_per_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_sak_to_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_sak_to_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_sak_to_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_target_discovered:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_target_discovered\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_target_discovered:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_set_clientdata:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_set_clientdata\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_set_clientdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_get_clientdata:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_get_clientdata\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_get_clientdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_driver_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_driver_failure\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_driver_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_hci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_hci_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_hci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.hci_msg = type { %struct.list_head, %struct.sk_buff_head, i8, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.64, %union.anon.67, %union.anon.68, [48 x i8], %union.anon.69, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.71, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr, %union.anon.66 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%union.anon.68 = type { i64 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { i32, ptr }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.73, i32, i32, i32, i16, i16, %union.anon.75, %union.anon.76, %union.anon.77, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.73 = type { i32 }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_create_pipe_resp = type { i8, i8, i8, i8, i8 }
%struct.nfc_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.hcp_packet = type { i8, %struct.hcp_message }
%struct.hcp_message = type { i8, [0 x i8] }

@__kstrtab_nfc_hci_result_to_errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_result_to_errno = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_result_to_errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_result_to_errno to i32), ptr @__kstrtab_nfc_hci_result_to_errno, ptr @__kstrtabns_nfc_hci_result_to_errno }, section "___ksymtab+nfc_hci_result_to_errno", align 4
@__kstrtab_nfc_hci_reset_pipes = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_reset_pipes = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_reset_pipes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_reset_pipes to i32), ptr @__kstrtab_nfc_hci_reset_pipes, ptr @__kstrtabns_nfc_hci_reset_pipes }, section "___ksymtab+nfc_hci_reset_pipes", align 4
@__kstrtab_nfc_hci_reset_pipes_per_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_reset_pipes_per_host = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_reset_pipes_per_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_reset_pipes_per_host to i32), ptr @__kstrtab_nfc_hci_reset_pipes_per_host, ptr @__kstrtabns_nfc_hci_reset_pipes_per_host }, section "___ksymtab+nfc_hci_reset_pipes_per_host", align 4
@.str = private unnamed_addr constant [48 x i8] c"\016hci: %s: Discarded unknown cmd %x to gate %x\0A\00", align 1
@__func__.nfc_hci_cmd_received = private unnamed_addr constant [21 x i8] c"nfc_hci_cmd_received\00", align 1
@__kstrtab_nfc_hci_sak_to_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_sak_to_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_sak_to_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_sak_to_protocol to i32), ptr @__kstrtab_nfc_hci_sak_to_protocol, ptr @__kstrtabns_nfc_hci_sak_to_protocol }, section "___ksymtab+nfc_hci_sak_to_protocol", align 4
@__kstrtab_nfc_hci_target_discovered = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_target_discovered = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_target_discovered = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_target_discovered to i32), ptr @__kstrtab_nfc_hci_target_discovered, ptr @__kstrtabns_nfc_hci_target_discovered }, section "___ksymtab+nfc_hci_target_discovered", align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\013hci: %s: Discarded event %x to invalid pipe %x\0A\00", align 1
@__func__.nfc_hci_event_received = private unnamed_addr constant [23 x i8] c"nfc_hci_event_received\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013hci: %s: Discarded event %x to unopened pipe %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\016hci: %s: Discarded unknown event %x to gate %x\0A\00", align 1
@hci_nfc_ops = internal constant %struct.nfc_ops { ptr @hci_dev_up, ptr @hci_dev_down, ptr @hci_start_poll, ptr @hci_stop_poll, ptr @hci_dep_link_up, ptr @hci_dep_link_down, ptr @hci_activate_target, ptr @hci_deactivate_target, ptr @hci_transceive, ptr @hci_tm_send, ptr @hci_check_presence, ptr @hci_fw_download, ptr @hci_discover_se, ptr @hci_enable_se, ptr @hci_disable_se, ptr @hci_se_io }, align 4
@__kstrtab_nfc_hci_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_allocate_device to i32), ptr @__kstrtab_nfc_hci_allocate_device, ptr @__kstrtabns_nfc_hci_allocate_device }, section "___ksymtab+nfc_hci_allocate_device", align 4
@__kstrtab_nfc_hci_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_free_device to i32), ptr @__kstrtab_nfc_hci_free_device, ptr @__kstrtabns_nfc_hci_free_device }, section "___ksymtab+nfc_hci_free_device", align 4
@nfc_hci_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"&hdev->msg_tx_mutex\00", align 1
@__kstrtab_nfc_hci_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_register_device to i32), ptr @__kstrtab_nfc_hci_register_device, ptr @__kstrtabns_nfc_hci_register_device }, section "___ksymtab+nfc_hci_register_device", align 4
@__kstrtab_nfc_hci_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_unregister_device to i32), ptr @__kstrtab_nfc_hci_unregister_device, ptr @__kstrtabns_nfc_hci_unregister_device }, section "___ksymtab+nfc_hci_unregister_device", align 4
@__kstrtab_nfc_hci_set_clientdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_set_clientdata = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_set_clientdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_set_clientdata to i32), ptr @__kstrtab_nfc_hci_set_clientdata, ptr @__kstrtabns_nfc_hci_set_clientdata }, section "___ksymtab+nfc_hci_set_clientdata", align 4
@__kstrtab_nfc_hci_get_clientdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_get_clientdata = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_get_clientdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_get_clientdata to i32), ptr @__kstrtab_nfc_hci_get_clientdata, ptr @__kstrtabns_nfc_hci_get_clientdata }, section "___ksymtab+nfc_hci_get_clientdata", align 4
@__kstrtab_nfc_hci_driver_failure = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_driver_failure = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_driver_failure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_driver_failure to i32), ptr @__kstrtab_nfc_hci_driver_failure, ptr @__kstrtabns_nfc_hci_driver_failure }, section "___ksymtab+nfc_hci_driver_failure", align 4
@__kstrtab_nfc_hci_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_hci_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_hci_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_hci_recv_frame to i32), ptr @__kstrtab_nfc_hci_recv_frame, ptr @__kstrtabns_nfc_hci_recv_frame }, section "___ksymtab+nfc_hci_recv_frame", align 4
@__UNIQUE_ID_license263 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description264 = internal constant [25 x i8] c"description=NFC HCI Core\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"\016hci: %s: Software/Hardware info not available\0A\00", align 1
@__func__.hci_dev_version = private unnamed_addr constant [16 x i8] c"hci_dev_version\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\016hci: %s: SOFTWARE INFO:\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\016hci: %s: RomLib         : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"\016hci: %s: Patch          : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\016hci: %s: FlashLib Major : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\016hci: %s: FlashLib Minor : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\016hci: %s: HARDWARE INFO:\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\016hci: %s: Derivative     : %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"\016hci: %s: HW Version     : %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\016hci: %s: #MPW           : %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\016hci: %s: Software       : %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"\016hci: %s: BSID Version   : %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_license263, ptr @__ksymtab_nfc_hci_allocate_device, ptr @__ksymtab_nfc_hci_driver_failure, ptr @__ksymtab_nfc_hci_free_device, ptr @__ksymtab_nfc_hci_get_clientdata, ptr @__ksymtab_nfc_hci_recv_frame, ptr @__ksymtab_nfc_hci_register_device, ptr @__ksymtab_nfc_hci_reset_pipes, ptr @__ksymtab_nfc_hci_reset_pipes_per_host, ptr @__ksymtab_nfc_hci_result_to_errno, ptr @__ksymtab_nfc_hci_sak_to_protocol, ptr @__ksymtab_nfc_hci_set_clientdata, ptr @__ksymtab_nfc_hci_target_discovered, ptr @__ksymtab_nfc_hci_unregister_device], section "llvm.metadata"
@switch.table.nfc_hci_target_discovered = private unnamed_addr constant [4 x i32] [i32 4, i32 16, i32 32, i32 48], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nfc_hci_result_to_errno(i8 noundef zeroext %0) #0 {
  switch i8 %0, label %4 [
    i8 0, label %5
    i8 5, label %2
    i8 9, label %3
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %2, %1
  %6 = phi i32 [ -1, %4 ], [ -62, %3 ], [ -95, %2 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local void @nfc_hci_reset_pipes(ptr nocapture noundef writeonly %0) #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %3
  store i8 -1, ptr %4, align 2
  %5 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %3, i32 1
  store i8 -128, ptr %5, align 1
  %6 = add nuw nsw i32 %3, 1
  %7 = icmp eq i32 %6, 128
  br i1 %7, label %8, label %2

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %9, i8 -128, i32 256, i1 false)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_reset_pipes_per_host(ptr nocapture noundef %0, i8 noundef zeroext %1) #4 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %5 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %4, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %4
  store i8 -1, ptr %9, align 2
  store i8 -128, ptr %5, align 1
  br label %10

10:                                               ; preds = %8, %3
  %11 = add nuw nsw i32 %4, 1
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %3

13:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_resp_received(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #16
  br label %30

9:                                                ; preds = %3
  switch i8 %1, label %12 [
    i8 0, label %13
    i8 5, label %10
    i8 9, label %11
  ]

10:                                               ; preds = %9
  br label %13

11:                                               ; preds = %9
  br label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %12, %11, %10, %9
  %14 = phi i32 [ -1, %12 ], [ -62, %11 ], [ -95, %10 ], [ 0, %9 ]
  %15 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 6
  %16 = tail call i32 @del_timer_sync(ptr noundef %15) #16
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.hci_msg, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.hci_msg, ptr %17, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  tail call void %19(ptr noundef %23, ptr noundef %2, i32 noundef %14) #16
  br label %25

24:                                               ; preds = %13
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #16
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %26) #16
  store ptr null, ptr %5, align 4
  %27 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr @system_wq, align 4
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %27) #16
  br label %30

30:                                               ; preds = %25, %8
  tail call void @mutex_unlock(ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_cmd_received(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = icmp slt i8 %1, 0
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32
  %8 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %7
  %9 = load i8, ptr %8, align 2
  switch i8 %2, label %68 [
    i8 18, label %10
    i8 3, label %33
    i8 19, label %35
    i8 21, label %50
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %79

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.hci_create_pipe_resp, ptr %16, i32 0, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = icmp slt i8 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hci_create_pipe_resp, ptr %16, i32 0, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 15, i32 %23
  store i8 %18, ptr %24, align 1
  %25 = load i8, ptr %21, align 1
  %26 = load i8, ptr %17, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %27
  store i8 %25, ptr %28, align 2
  %29 = load i8, ptr %16, align 1
  %30 = load i8, ptr %17, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %31, i32 1
  store i8 %29, ptr %32, align 1
  br label %72

33:                                               ; preds = %6
  %34 = icmp eq i8 %9, -1
  br i1 %34, label %79, label %72

35:                                               ; preds = %6
  %36 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = load i8, ptr %41, align 1
  %43 = icmp slt i8 %42, 0
  br i1 %43, label %79, label %44

44:                                               ; preds = %39
  %45 = zext i8 %42 to i32
  %46 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %45
  store i8 -1, ptr %46, align 2
  %47 = load i8, ptr %41, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %48, i32 1
  store i8 -128, ptr %49, align 1
  br label %72

50:                                               ; preds = %6
  %51 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = load i8, ptr %56, align 1
  br label %58

58:                                               ; preds = %65, %54
  %59 = phi i32 [ 0, %54 ], [ %66, %65 ]
  %60 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %59, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, %57
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %59
  store i8 -1, ptr %64, align 2
  store i8 -128, ptr %60, align 1
  br label %65

65:                                               ; preds = %63, %58
  %66 = add nuw nsw i32 %59, 1
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %72, label %58

68:                                               ; preds = %6
  %69 = zext i8 %2 to i32
  %70 = zext i8 %9 to i32
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfc_hci_cmd_received, i32 noundef %69, i32 noundef %70) #17
  br label %72

72:                                               ; preds = %68, %65, %44, %33, %20
  %73 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 11
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nfc_hci_ops, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  tail call void %76(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #16
  br label %79

79:                                               ; preds = %78, %72, %50, %39, %35, %33, %14, %10, %4
  %80 = phi i8 [ 0, %78 ], [ 0, %72 ], [ 3, %4 ], [ 3, %10 ], [ 3, %14 ], [ 3, %33 ], [ 3, %35 ], [ 3, %39 ], [ 3, %50 ]
  %81 = tail call i32 @nfc_hci_hcp_message_tx(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext 2, i8 noundef zeroext %80, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 0) #16
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_hcp_message_tx(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext %0) #0 {
  %2 = lshr i8 %0, 5
  %3 = and i8 %2, 3
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds [4 x i32], ptr @switch.table.nfc_hci_target_discovered, i32 0, i32 %4
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_target_discovered(ptr noundef %0, i8 noundef zeroext %1) #5 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 76) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %2
  switch i8 %1, label %69 [
    i8 19, label %10
    i8 17, label %67
  ]

10:                                               ; preds = %9
  %11 = call i32 @nfc_hci_get_param(ptr noundef %0, i8 noundef zeroext 19, i8 noundef zeroext 4, ptr noundef nonnull %3) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %94, label %13

13:                                               ; preds = %10
  %14 = call i32 @nfc_hci_get_param(ptr noundef %0, i8 noundef zeroext 19, i8 noundef zeroext 3, ptr noundef nonnull %4) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %94, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %94

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %94

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 1
  %30 = lshr i8 %29, 5
  %31 = and i8 %30, 3
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [4 x i32], ptr @switch.table.nfc_hci_target_discovered, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = load i16, ptr %37, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %40 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 2
  store i16 %39, ptr %40, align 8
  %41 = load ptr, ptr %27, align 4
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 3
  store i8 %42, ptr %43, align 2
  %44 = call i32 @nfc_hci_get_param(ptr noundef %0, i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull %5) #16
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %26
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, -11
  %51 = icmp ult i32 %50, -10
  br i1 %51, label %94, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 5
  %54 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %53, ptr align 1 %55, i32 %49, i1 false)
  %56 = load i32, ptr %48, align 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 4
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nfc_hci_ops, ptr %60, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %86, label %64

64:                                               ; preds = %52
  %65 = call i32 %62(ptr noundef %0, i8 noundef zeroext 19, ptr noundef nonnull %7) #16
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %94, label %86

67:                                               ; preds = %9
  %68 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 1
  store i32 64, ptr %68, align 4
  br label %86

69:                                               ; preds = %9
  %70 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 11
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nfc_hci_ops, ptr %71, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %94, label %75

75:                                               ; preds = %69
  %76 = tail call i32 %73(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %7) #16
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %70, align 4
  %80 = getelementptr inbounds %struct.nfc_hci_ops, ptr %79, i32 0, i32 10
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = tail call i32 %81(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %7) #16
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83, %78, %67, %64, %52
  %87 = getelementptr inbounds %struct.nfc_target, ptr %7, i32 0, i32 12
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i8 %1, ptr %87, align 1
  br label %91

91:                                               ; preds = %90, %86
  %92 = load ptr, ptr %0, align 4
  %93 = call i32 @nfc_targets_found(ptr noundef %92, ptr noundef nonnull %7, i32 noundef 1) #16
  br label %94

94:                                               ; preds = %91, %83, %75, %69, %64, %46, %26, %21, %16, %13, %10
  %95 = phi i32 [ %76, %75 ], [ %84, %83 ], [ %93, %91 ], [ %11, %10 ], [ %14, %13 ], [ %44, %26 ], [ %65, %64 ], [ -71, %21 ], [ -71, %16 ], [ -71, %46 ], [ -71, %69 ]
  call void @kfree(ptr noundef nonnull %7) #16
  %96 = load ptr, ptr %3, align 4
  call void @kfree_skb_reason(ptr noundef %96, i32 noundef 0) #16
  %97 = load ptr, ptr %4, align 4
  call void @kfree_skb_reason(ptr noundef %97, i32 noundef 0) #16
  %98 = load ptr, ptr %5, align 4
  call void @kfree_skb_reason(ptr noundef %98, i32 noundef 0) #16
  br label %99

99:                                               ; preds = %94, %2
  %100 = phi i32 [ %95, %94 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_targets_found(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_event_received(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = zext i8 %1 to i32
  %6 = icmp slt i8 %1, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = zext i8 %2 to i32
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nfc_hci_event_received, i32 noundef %8, i32 noundef %5) #17
  br label %43

10:                                               ; preds = %4
  %11 = getelementptr %struct.nfc_hci_dev, ptr %0, i32 0, i32 16, i32 %5
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = zext i8 %2 to i32
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfc_hci_event_received, i32 noundef %16, i32 noundef %5) #17
  br label %43

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfc_hci_ops, ptr %20, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #16
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %45, label %27

27:                                               ; preds = %24, %18
  %28 = icmp eq i8 %2, 16
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = tail call i32 @nfc_hci_target_discovered(ptr noundef %0, i8 noundef zeroext %12)
  br label %43

40:                                               ; preds = %27
  %41 = zext i8 %2 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nfc_hci_event_received, i32 noundef %41, i32 noundef %13) #17
  br label %43

43:                                               ; preds = %40, %38, %33, %29, %15, %7
  %44 = phi i32 [ 0, %7 ], [ 0, %15 ], [ %39, %38 ], [ -22, %40 ], [ -71, %29 ], [ -71, %33 ]
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #16
  br label %45

45:                                               ; preds = %43, %24
  %46 = phi i32 [ %44, %43 ], [ %25, %24 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call fastcc void @nfc_hci_failure(ptr noundef %0, i32 noundef %46) #16
  br label %49

49:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_driver_failure(ptr noundef %0, i32 noundef %1) #5 {
  tail call fastcc void @nfc_hci_failure(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_hci_allocate_device(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #5 {
  %9 = getelementptr inbounds %struct.nfc_hci_ops, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq i32 %3, 0
  %13 = or i1 %12, %11
  br i1 %13, label %44, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 800) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %9, align 4
  %20 = tail call ptr @nfc_llc_allocate(ptr noundef %4, ptr noundef nonnull %16, ptr noundef %19, ptr noundef nonnull @nfc_hci_recv_from_llc, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @nfc_hci_llc_failure) #16
  %21 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 12
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %44

24:                                               ; preds = %18
  %25 = add i32 %5, 1
  %26 = tail call ptr @nfc_allocate_device(ptr noundef nonnull @hci_nfc_ops, i32 noundef %3, i32 noundef %25, i32 noundef %6) #16
  store ptr %26, ptr %16, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %21, align 4
  tail call void @nfc_llc_free(ptr noundef %29) #16
  tail call void @kfree(ptr noundef nonnull %16) #16
  br label %44

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 11
  store ptr %0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 1
  store i32 %7, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(110) %33, ptr noundef align 1 dereferenceable(110) %1, i32 110, i1 false)
  %34 = getelementptr inbounds %struct.nfc_dev, ptr %26, i32 0, i32 5, i32 8
  store ptr %16, ptr %34, align 8
  br label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ 0, %30 ], [ %39, %35 ]
  %37 = getelementptr %struct.nfc_hci_dev, ptr %16, i32 0, i32 16, i32 %36
  store i8 -1, ptr %37, align 2
  %38 = getelementptr %struct.nfc_hci_dev, ptr %16, i32 0, i32 16, i32 %36, i32 1
  store i8 -128, ptr %38, align 1
  %39 = add nuw nsw i32 %36, 1
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %35

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %42, i8 -128, i32 256, i1 false) #16
  %43 = getelementptr inbounds %struct.nfc_hci_dev, ptr %16, i32 0, i32 31
  store i32 %2, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %28, %23, %14, %8
  %45 = phi ptr [ null, %23 ], [ %16, %41 ], [ null, %28 ], [ null, %8 ], [ null, %14 ]
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llc_allocate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_recv_from_llc(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp sgt i8 %5, -1
  %7 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8
  br i1 %6, label %8, label %9

8:                                                ; preds = %2
  tail call void @skb_queue_tail(ptr noundef %7, ptr noundef %1) #16
  br label %67

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = and i8 %5, 127
  br i1 %12, label %49, label %14

14:                                               ; preds = %9
  tail call void @skb_queue_tail(ptr noundef %7, ptr noundef %1) #16
  %15 = load ptr, ptr %7, align 4
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %28, label %17

17:                                               ; preds = %17, %14
  %18 = phi ptr [ %24, %17 ], [ %15, %14 ]
  %19 = phi i32 [ %23, %17 ], [ 0, %14 ]
  %20 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %19, -1
  %23 = add i32 %22, %21
  %24 = load ptr, ptr %18, align 4
  %25 = icmp eq ptr %24, %7
  br i1 %25, label %26, label %17

26:                                               ; preds = %17
  %27 = add i32 %19, %21
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i32 [ 1, %14 ], [ %27, %26 ]
  %30 = tail call ptr @nfc_alloc_recv_skb(i32 noundef %29, i32 noundef 3264) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call fastcc void @nfc_hci_failure(ptr noundef %0, i32 noundef -12)
  br label %67

33:                                               ; preds = %28
  %34 = tail call ptr @skb_put(ptr noundef nonnull %30, i32 noundef 1) #16
  store i8 %13, ptr %34, align 1
  %35 = load ptr, ptr %7, align 4
  %36 = icmp eq ptr %35, %7
  br i1 %36, label %48, label %37

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %46, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = add i32 %40, -1
  %42 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 1
  %45 = tail call ptr @skb_put(ptr noundef nonnull %30, i32 noundef %41) #16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %44, i32 %41, i1 false) #16
  %46 = load ptr, ptr %38, align 4
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %48, label %37

48:                                               ; preds = %37, %33
  tail call void @skb_queue_purge(ptr noundef %7) #16
  br label %50

49:                                               ; preds = %9
  store i8 %13, ptr %4, align 1
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi ptr [ %30, %48 ], [ %1, %49 ]
  %52 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 17
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hcp_packet, ptr %53, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = and i8 %55, -64
  %57 = icmp eq i8 %56, -128
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i8, ptr %53, align 1
  %60 = and i8 %55, 63
  %61 = tail call ptr @skb_pull(ptr noundef %51, i32 noundef 2) #16
  tail call void @nfc_hci_hcp_message_rx(ptr noundef %0, i8 noundef zeroext %59, i8 noundef zeroext 2, i8 noundef zeroext %60, ptr noundef %51) #16
  br label %67

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10
  tail call void @skb_queue_tail(ptr noundef %63, ptr noundef %51) #16
  %64 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9
  %65 = load ptr, ptr @system_wq, align 4
  %66 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %65, ptr noundef %64) #16
  br label %67

67:                                               ; preds = %62, %58, %32, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_llc_failure(ptr noundef %0, i32 noundef %1) #5 {
  tail call fastcc void @nfc_hci_failure(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llc_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_free_device(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 5
  tail call void @put_device(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  tail call void @nfc_llc_free(ptr noundef %5) #16
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_hci_register_device(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @nfc_hci_register_device.__key) #16
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 4
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 4, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5
  store i32 -32, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5, i32 1, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5, i32 2
  store ptr @nfc_hci_msg_tx_work, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %9, ptr noundef nonnull @nfc_hci_cmd_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %10 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %11, align 4
  store ptr %10, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9, i32 2
  store ptr @nfc_hci_msg_rx_work, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10
  %19 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10, i32 2
  store i32 0, ptr %19, align 4
  store ptr %18, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10, i32 0, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10, i32 1
  store i32 0, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = tail call i32 @nfc_register_device(ptr noundef %22) #16
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_msg_tx_work(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -28
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %76

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 36
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 20
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hci_msg, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_msg, ptr %8, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void %16(ptr noundef %20, ptr noundef null, i32 noundef -62) #16
  %21 = load ptr, ptr %7, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi ptr [ %21, %18 ], [ %8, %14 ]
  tail call void @kfree(ptr noundef %23) #16
  store ptr null, ptr %7, align 4
  br label %24

24:                                               ; preds = %22, %6
  %25 = getelementptr i8, ptr %0, i32 -8
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %0, i32 92
  br label %30

30:                                               ; preds = %64, %28
  %31 = phi ptr [ %26, %28 ], [ %66, %64 ]
  %32 = phi i32 [ 0, %28 ], [ %65, %64 ]
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %37 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 1
  %38 = tail call ptr @skb_dequeue(ptr noundef %37) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %43

40:                                               ; preds = %43
  %41 = tail call ptr @skb_dequeue(ptr noundef %37) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %40, %30
  %44 = phi ptr [ %41, %40 ], [ %38, %30 ]
  %45 = load ptr, ptr %29, align 4
  %46 = tail call i32 @nfc_llc_xmit_from_hci(ptr noundef %45, ptr noundef nonnull %44) #16
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %40

48:                                               ; preds = %43
  tail call void @kfree_skb_reason(ptr noundef nonnull %44, i32 noundef 0) #16
  tail call void @skb_queue_purge(ptr noundef %37) #16
  %49 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  tail call void %50(ptr noundef %54, ptr noundef null, i32 noundef %46) #16
  br label %62

55:                                               ; preds = %40, %30
  %56 = phi i32 [ %32, %30 ], [ %46, %40 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 2
  %60 = load i8, ptr %59, align 4, !range !8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58, %52, %48
  %63 = phi i32 [ %46, %48 ], [ %46, %52 ], [ 0, %58 ]
  tail call void @kfree(ptr noundef %31) #16
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi i32 [ %56, %55 ], [ %63, %62 ]
  %66 = load volatile ptr, ptr %25, align 4
  %67 = icmp eq ptr %66, %25
  br i1 %67, label %76, label %30

68:                                               ; preds = %58
  store ptr %31, ptr %7, align 4
  %69 = getelementptr i8, ptr %0, i32 16
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = tail call i32 @__msecs_to_jiffies(i32 noundef %72) #16
  %74 = add i32 %73, %70
  %75 = tail call i32 @mod_timer(ptr noundef %69, i32 noundef %74) #16
  br label %76

76:                                               ; preds = %68, %64, %24, %10, %1
  tail call void @mutex_unlock(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_cmd_timeout(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_hci_msg_rx_work(ptr noundef %0) #5 {
  %2 = getelementptr i8, ptr %0, i32 -96
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %17, %6 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %9, align 1
  %11 = tail call ptr @skb_pull(ptr noundef nonnull %7, i32 noundef 1) #16
  %12 = load ptr, ptr %8, align 4
  %13 = load i8, ptr %12, align 1
  %14 = lshr i8 %13, 6
  %15 = and i8 %13, 63
  %16 = tail call ptr @skb_pull(ptr noundef nonnull %7, i32 noundef 1) #16
  tail call void @nfc_hci_hcp_message_rx(ptr noundef %2, i8 noundef zeroext %10, i8 noundef zeroext %14, i8 noundef zeroext %15, ptr noundef nonnull %7) #16
  %17 = tail call ptr @skb_dequeue(ptr noundef %3) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6

19:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_register_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_unregister_device(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_msg, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_msg, ptr %4, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void %8(ptr noundef %12, ptr noundef null, i32 noundef -108) #16
  %13 = load ptr, ptr %3, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %13, %10 ], [ %4, %6 ]
  tail call void @kfree(ptr noundef %15) #16
  store ptr null, ptr %3, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 2
  store i8 1, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %2) #16
  %18 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 6
  %19 = tail call i32 @del_timer_sync(ptr noundef %18) #16
  %20 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5
  %21 = tail call zeroext i1 @cancel_work_sync(ptr noundef %20) #16
  %22 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 9
  %23 = tail call zeroext i1 @cancel_work_sync(ptr noundef %22) #16
  %24 = load ptr, ptr %0, align 4
  tail call void @nfc_unregister_device(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %25) #16
  %26 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 10
  tail call void @skb_queue_purge(ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %16
  %31 = phi ptr [ %32, %30 ], [ %28, %16 ]
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %36 = getelementptr inbounds %struct.hci_msg, ptr %31, i32 0, i32 1
  tail call void @skb_queue_purge(ptr noundef %36) #16
  tail call void @kfree(ptr noundef %31) #16
  %37 = icmp eq ptr %32, %27
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_unregister_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfc_hci_set_clientdata(ptr nocapture noundef writeonly %0, ptr noundef %1) #10 {
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 14
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nfc_hci_get_clientdata(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfc_hci_failure(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  tail call void @nfc_driver_failure(ptr noundef %8, i32 noundef %1) #16
  br label %25

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 6
  %11 = tail call i32 @del_timer_sync(ptr noundef %10) #16
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.hci_msg, ptr %12, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void %14(ptr noundef %18, ptr noundef null, i32 noundef %1) #16
  br label %20

19:                                               ; preds = %9
  tail call void @kfree_skb_reason(ptr noundef null, i32 noundef 0) #16
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %21) #16
  store ptr null, ptr %4, align 4
  %22 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr @system_wq, align 4
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %23, ptr noundef %22) #16
  br label %25

25:                                               ; preds = %20, %7
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_hci_recv_frame(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  tail call void @nfc_llc_rcv_from_drv(ptr noundef %4, ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llc_rcv_from_drv(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #12 section ".init.text" {
  %1 = tail call i32 @nfc_llc_init() #16
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #12 section ".exit.text" {
  tail call void @nfc_llc_exit() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_hcp_message_rx(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_dev_up(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = tail call i32 %8(ptr noundef %5) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %206, label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @nfc_llc_start(ptr noundef %15) #16
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %199, label %18

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4
  %19 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 13
  %20 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 13, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %195

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 13, i32 1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = tail call i32 @nfc_hci_connect_gate(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %26) #16
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %24
  %30 = call i32 @nfc_hci_get_param(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %3) #16
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 13, i32 2
  %39 = call i32 @strlen(ptr noundef %38) #16
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @bcmp(ptr %38, ptr %43, i32 %35) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.nfc_hci_ops, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = call i32 %49(ptr noundef %5) #16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %82, label %84

54:                                               ; preds = %46, %41, %37, %32
  %55 = call i32 @nfc_hci_disconnect_all_gates(ptr noundef %5) #16
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 4
  br label %79

59:                                               ; preds = %54
  %60 = load i8, ptr %19, align 4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %74, label %66

62:                                               ; preds = %66
  %63 = getelementptr %struct.nfc_hci_gate, ptr %68, i32 1
  %64 = add i8 %67, -1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %59
  %67 = phi i8 [ %64, %62 ], [ %60, %59 ]
  %68 = phi ptr [ %63, %62 ], [ %20, %59 ]
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr inbounds %struct.nfc_hci_gate, ptr %68, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = call i32 @nfc_hci_connect_gate(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext %69, i8 noundef zeroext %71) #16
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %84, label %62

74:                                               ; preds = %62, %59
  %75 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 13, i32 2
  %76 = call i32 @strlen(ptr noundef %75) #16
  %77 = call i32 @nfc_hci_set_param(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %75, i32 noundef %76) #16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %84

79:                                               ; preds = %57, %24
  %80 = phi ptr [ %58, %57 ], [ null, %24 ]
  %81 = phi i32 [ %55, %57 ], [ %27, %24 ]
  call void @kfree_skb_reason(ptr noundef %80, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %195

82:                                               ; preds = %74, %51
  %83 = load ptr, ptr %3, align 4
  call void @kfree_skb_reason(ptr noundef %83, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %89

84:                                               ; preds = %74, %66, %51, %29
  %85 = phi i32 [ %30, %29 ], [ %52, %51 ], [ %77, %74 ], [ %72, %66 ]
  %86 = call i32 @nfc_hci_disconnect_all_gates(ptr noundef %5) #16
  %87 = load ptr, ptr %3, align 4
  call void @kfree_skb_reason(ptr noundef %87, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %88 = icmp slt i32 %85, 0
  br i1 %88, label %195, label %89

89:                                               ; preds = %84, %82
  %90 = call i32 @nfc_hci_send_event(ptr noundef %5, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #16
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %195, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %6, align 4
  %94 = getelementptr inbounds %struct.nfc_hci_ops, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = call i32 %95(ptr noundef %5) #16
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %195, label %100

100:                                              ; preds = %97, %92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4, !annotation !9
  %101 = call i32 @nfc_hci_get_param(ptr noundef %5, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %2) #16
  %102 = icmp eq i32 %101, -95
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hci_dev_version) #17
  br label %194

105:                                              ; preds = %100
  %106 = icmp slt i32 %101, 0
  br i1 %106, label %192, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr %2, align 4
  %109 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 5
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %190

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.sk_buff, ptr %108, i32 0, i32 17
  %114 = load ptr, ptr %113, align 4
  %115 = load i8, ptr %114, align 1
  %116 = lshr i8 %115, 4
  %117 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 17
  store i8 %116, ptr %117, align 4
  %118 = load ptr, ptr %113, align 4
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, 15
  %121 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 18
  store i8 %120, ptr %121, align 1
  %122 = load ptr, ptr %113, align 4
  %123 = getelementptr i8, ptr %122, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 19
  store i8 %124, ptr %125, align 2
  %126 = load ptr, ptr %113, align 4
  %127 = getelementptr i8, ptr %126, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 20
  store i8 %128, ptr %129, align 1
  call void @kfree_skb_reason(ptr noundef %108, i32 noundef 0) #16
  %130 = call i32 @nfc_hci_get_param(ptr noundef %5, i8 noundef zeroext 5, i8 noundef zeroext 3, ptr noundef nonnull %2) #16
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %192, label %132

132:                                              ; preds = %112
  %133 = load ptr, ptr %2, align 4
  %134 = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 5
  %135 = load i32, ptr %134, align 8
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %190

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 17
  %139 = load ptr, ptr %138, align 4
  %140 = load i8, ptr %139, align 1
  %141 = lshr i8 %140, 5
  %142 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 21
  store i8 %141, ptr %142, align 4
  %143 = load ptr, ptr %138, align 4
  %144 = load i8, ptr %143, align 1
  %145 = and i8 %144, 31
  %146 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 22
  store i8 %145, ptr %146, align 1
  %147 = load ptr, ptr %138, align 4
  %148 = getelementptr i8, ptr %147, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = lshr i8 %149, 6
  %151 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 23
  store i8 %150, ptr %151, align 2
  %152 = load ptr, ptr %138, align 4
  %153 = getelementptr i8, ptr %152, i32 1
  %154 = load i8, ptr %153, align 1
  %155 = and i8 %154, 63
  %156 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 24
  store i8 %155, ptr %156, align 1
  %157 = load ptr, ptr %138, align 4
  %158 = getelementptr i8, ptr %157, i32 2
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 25
  store i8 %159, ptr %160, align 4
  call void @kfree_skb_reason(ptr noundef %133, i32 noundef 0) #16
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.hci_dev_version) #17
  %162 = load i8, ptr %117, align 4
  %163 = zext i8 %162 to i32
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %163) #17
  %165 = load i8, ptr %121, align 1
  %166 = zext i8 %165 to i32
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %166) #17
  %168 = load i8, ptr %125, align 2
  %169 = zext i8 %168 to i32
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %169) #17
  %171 = load i8, ptr %129, align 1
  %172 = zext i8 %171 to i32
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %172) #17
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.hci_dev_version) #17
  %175 = load i8, ptr %142, align 4
  %176 = zext i8 %175 to i32
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %176) #17
  %178 = load i8, ptr %146, align 1
  %179 = zext i8 %178 to i32
  %180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %179) #17
  %181 = load i8, ptr %151, align 2
  %182 = zext i8 %181 to i32
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %182) #17
  %184 = load i8, ptr %156, align 1
  %185 = zext i8 %184 to i32
  %186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %185) #17
  %187 = load i8, ptr %160, align 4
  %188 = zext i8 %187 to i32
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.hci_dev_version, i32 noundef %188) #17
  br label %194

190:                                              ; preds = %132, %107
  %191 = phi ptr [ %108, %107 ], [ %133, %132 ]
  call void @kfree_skb_reason(ptr noundef %191, i32 noundef 0) #16
  br label %192

192:                                              ; preds = %190, %112, %105
  %193 = phi i32 [ %130, %112 ], [ %101, %105 ], [ -22, %190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %195

194:                                              ; preds = %137, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %206

195:                                              ; preds = %192, %97, %89, %84, %79, %23
  %196 = phi i32 [ %85, %84 ], [ %90, %89 ], [ %98, %97 ], [ -71, %23 ], [ %81, %79 ], [ %193, %192 ]
  %197 = load ptr, ptr %14, align 4
  %198 = call i32 @nfc_llc_stop(ptr noundef %197) #16
  br label %199

199:                                              ; preds = %195, %13
  %200 = phi i32 [ %16, %13 ], [ %196, %195 ]
  %201 = load ptr, ptr %6, align 4
  %202 = getelementptr inbounds %struct.nfc_hci_ops, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %199
  call void %203(ptr noundef %5) #16
  br label %206

206:                                              ; preds = %205, %199, %194, %10
  %207 = phi i32 [ %11, %10 ], [ 0, %194 ], [ %200, %205 ], [ %200, %199 ]
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_dev_down(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @nfc_llc_stop(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfc_hci_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %3) #16
  br label %13

13:                                               ; preds = %12, %1
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %18, %14 ], [ 0, %13 ]
  %16 = getelementptr %struct.nfc_hci_dev, ptr %3, i32 0, i32 16, i32 %15
  store i8 -1, ptr %16, align 2
  %17 = getelementptr %struct.nfc_hci_dev, ptr %3, i32 0, i32 16, i32 %15, i32 1
  store i8 -128, ptr %17, align 1
  %18 = add nuw nsw i32 %15, 1
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %14

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 15
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(256) %21, i8 -128, i32 256, i1 false) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_start_poll(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nfc_hci_dev, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfc_hci_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 %9(ptr noundef %5, i32 noundef %1, i32 noundef %2) #16
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 @nfc_hci_send_event(ptr noundef %5, i8 noundef zeroext 19, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #16
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_stop_poll(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_hci_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %3) #16
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 @nfc_hci_send_event(ptr noundef %3, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #16
  br label %12

12:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_dep_link_up(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfc_hci_ops, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = tail call i32 %11(ptr noundef %7, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #16
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %14, %13 ], [ 0, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_dep_link_down(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_hci_ops, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @hci_activate_target(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @hci_deactivate_target(ptr nocapture noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_transceive(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfc_target, ptr %1, i32 0, i32 12
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %30 [
    i8 19, label %10
    i8 17, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfc_hci_ops, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i32 %14(ptr noundef %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %40, label %19

19:                                               ; preds = %16, %10
  %20 = tail call ptr @skb_push(ptr noundef %2, i32 noundef 1) #16
  store i8 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 26
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 27
  store ptr %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 28
  store ptr %4, ptr %23, align 4
  %24 = load i8, ptr %8, align 1
  %25 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %7, i8 noundef zeroext %24, i8 noundef zeroext 16, ptr noundef %26, i32 noundef %28, ptr noundef nonnull @hci_transceive_cb, ptr noundef %7) #16
  br label %40

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.nfc_hci_dev, ptr %7, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfc_hci_ops, ptr %32, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 -524, i32 %37
  br label %40

40:                                               ; preds = %36, %30, %19, %16
  %41 = phi i32 [ %39, %36 ], [ %17, %16 ], [ %29, %19 ], [ -524, %30 ]
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #16
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_tm_send(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_ops, ptr %6, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #16
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #16
  br label %13

13:                                               ; preds = %11, %10
  %14 = phi i32 [ %12, %11 ], [ -524, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_check_presence(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_ops, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_fw_download(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_ops, ptr %6, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, ptr noundef %1) #16
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -524, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_discover_se(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfc_hci_ops, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_enable_se(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_ops, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #16
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_disable_se(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfc_hci_dev, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_hci_ops, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %4, i32 noundef %1) #16
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_se_io(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #5 {
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfc_hci_dev, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nfc_hci_ops, ptr %10, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 %12(ptr noundef %8, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #16
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_start(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_stop(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_connect_gate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_disconnect_all_gates(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_set_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_transceive_cb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  %7 = icmp eq i32 %2, 0
  br i1 %6, label %8, label %18

8:                                                ; preds = %3
  br i1 %7, label %9, label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = add i32 %11, -1
  tail call void @skb_trim(ptr noundef %1, i32 noundef %12) #16
  br label %13

13:                                               ; preds = %9, %8
  %14 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 27
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfc_hci_dev, ptr %0, i32 0, i32 28
  %17 = load ptr, ptr %16, align 4
  tail call void %15(ptr noundef %17, ptr noundef %1, i32 noundef %2) #16
  br label %20

18:                                               ; preds = %3
  br i1 %7, label %19, label %20

19:                                               ; preds = %18
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #16
  br label %20

20:                                               ; preds = %19, %18, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_xmit_from_hci(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_driver_failure(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_init() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llc_exit() local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
