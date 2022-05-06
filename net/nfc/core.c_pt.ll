; ModuleID = '/llk/IR/net/nfc/core.c_pt.bc'
source_filename = "../net/nfc/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_fw_download_done:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_fw_download_done\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_fw_download_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_dep_link_is_up:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_dep_link_is_up\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_dep_link_is_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_find_se:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_find_se\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_find_se:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_set_remote_general_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_set_remote_general_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_set_remote_general_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_get_local_general_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_get_local_general_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_get_local_general_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_tm_data_received:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_tm_data_received\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_tm_data_received:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_tm_activated:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_tm_activated\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_tm_activated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_tm_deactivated:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_tm_deactivated\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_tm_deactivated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_alloc_recv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_alloc_recv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_alloc_recv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_targets_found:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_targets_found\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_targets_found:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_target_lost:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_target_lost\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_target_lost:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_driver_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_driver_failure\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_driver_failure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_add_se:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_add_se\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_add_se:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_remove_se:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_remove_se\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_remove_se:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_se_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_se_transaction\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_se_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_se_connectivity:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_se_connectivity\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_se_connectivity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_class:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_class\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nfc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_se = type { %struct.list_head, i32, i16, i16 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }

@nfc_devlist_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nfc_devlist_mutex, i64 12), ptr getelementptr (i8, ptr @nfc_devlist_mutex, i64 12) } }, align 4
@__kstrtab_nfc_fw_download_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_fw_download_done = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_fw_download_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_fw_download_done to i32), ptr @__kstrtab_nfc_fw_download_done, ptr @__kstrtabns_nfc_fw_download_done }, section "___ksymtab+nfc_fw_download_done", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013nfc: %s: SE discovery failed\0A\00", align 1
@__func__.nfc_dev_up = private unnamed_addr constant [11 x i8] c"nfc_dev_up\00", align 1
@__kstrtab_nfc_dep_link_is_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_dep_link_is_up = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_dep_link_is_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_dep_link_is_up to i32), ptr @__kstrtab_nfc_dep_link_is_up, ptr @__kstrtabns_nfc_dep_link_is_up }, section "___ksymtab+nfc_dep_link_is_up", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_nfc_find_se = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_find_se = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_find_se = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_find_se to i32), ptr @__kstrtab_nfc_find_se, ptr @__kstrtabns_nfc_find_se }, section "___ksymtab+nfc_find_se", align 4
@__kstrtab_nfc_set_remote_general_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_set_remote_general_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_set_remote_general_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_set_remote_general_bytes to i32), ptr @__kstrtab_nfc_set_remote_general_bytes, ptr @__kstrtabns_nfc_set_remote_general_bytes }, section "___ksymtab+nfc_set_remote_general_bytes", align 4
@__kstrtab_nfc_get_local_general_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_get_local_general_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_get_local_general_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_get_local_general_bytes to i32), ptr @__kstrtab_nfc_get_local_general_bytes, ptr @__kstrtabns_nfc_get_local_general_bytes }, section "___ksymtab+nfc_get_local_general_bytes", align 4
@__kstrtab_nfc_tm_data_received = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_tm_data_received = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_tm_data_received = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_tm_data_received to i32), ptr @__kstrtab_nfc_tm_data_received, ptr @__kstrtabns_nfc_tm_data_received }, section "___ksymtab+nfc_tm_data_received", align 4
@__kstrtab_nfc_tm_activated = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_tm_activated = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_tm_activated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_tm_activated to i32), ptr @__kstrtab_nfc_tm_activated, ptr @__kstrtabns_nfc_tm_activated }, section "___ksymtab+nfc_tm_activated", align 4
@__kstrtab_nfc_tm_deactivated = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_tm_deactivated = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_tm_deactivated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_tm_deactivated to i32), ptr @__kstrtab_nfc_tm_deactivated, ptr @__kstrtabns_nfc_tm_deactivated }, section "___ksymtab+nfc_tm_deactivated", align 4
@__kstrtab_nfc_alloc_recv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_alloc_recv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_alloc_recv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_alloc_recv_skb to i32), ptr @__kstrtab_nfc_alloc_recv_skb, ptr @__kstrtabns_nfc_alloc_recv_skb }, section "___ksymtab+nfc_alloc_recv_skb", align 4
@__kstrtab_nfc_targets_found = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_targets_found = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_targets_found = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_targets_found to i32), ptr @__kstrtab_nfc_targets_found, ptr @__kstrtabns_nfc_targets_found }, section "___ksymtab+nfc_targets_found", align 4
@__kstrtab_nfc_target_lost = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_target_lost = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_target_lost = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_target_lost to i32), ptr @__kstrtab_nfc_target_lost, ptr @__kstrtabns_nfc_target_lost }, section "___ksymtab+nfc_target_lost", align 4
@__kstrtab_nfc_driver_failure = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_driver_failure = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_driver_failure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_driver_failure to i32), ptr @__kstrtab_nfc_driver_failure, ptr @__kstrtabns_nfc_driver_failure }, section "___ksymtab+nfc_driver_failure", align 4
@__kstrtab_nfc_add_se = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_add_se = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_add_se = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_add_se to i32), ptr @__kstrtab_nfc_add_se, ptr @__kstrtabns_nfc_add_se }, section "___ksymtab+nfc_add_se", align 4
@__kstrtab_nfc_remove_se = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_remove_se = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_remove_se = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_remove_se to i32), ptr @__kstrtab_nfc_remove_se, ptr @__kstrtabns_nfc_remove_se }, section "___ksymtab+nfc_remove_se", align 4
@__kstrtab_nfc_se_transaction = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_se_transaction = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_se_transaction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_se_transaction to i32), ptr @__kstrtab_nfc_se_transaction, ptr @__kstrtabns_nfc_se_transaction }, section "___ksymtab+nfc_se_transaction", align 4
@__kstrtab_nfc_se_connectivity = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_se_connectivity = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_se_connectivity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_se_connectivity to i32), ptr @__kstrtab_nfc_se_connectivity, ptr @__kstrtabns_nfc_se_connectivity }, section "___ksymtab+nfc_se_connectivity", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@nfc_class = dso_local global %struct.class { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_nfc_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_class = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_class to i32), ptr @__kstrtab_nfc_class, ptr @__kstrtabns_nfc_class }, section "___ksymtab+nfc_class", align 4
@nfc_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"nfc%d\00", align 1
@__kstrtab_nfc_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_allocate_device to i32), ptr @__kstrtab_nfc_allocate_device, ptr @__kstrtabns_nfc_allocate_device }, section "___ksymtab+nfc_allocate_device", align 4
@nfc_devlist_generation = dso_local local_unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"\013nfc: %s: Could not register llcp device\0A\00", align 1
@__func__.nfc_register_device = private unnamed_addr constant [20 x i8] c"nfc_register_device\00", align 1
@nfc_rfkill_ops = internal constant %struct.rfkill_ops { ptr null, ptr null, ptr @nfc_rfkill_set_block }, align 4
@__kstrtab_nfc_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_register_device to i32), ptr @__kstrtab_nfc_register_device, ptr @__kstrtabns_nfc_register_device }, section "___ksymtab+nfc_register_device", align 4
@__kstrtab_nfc_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_unregister_device to i32), ptr @__kstrtab_nfc_unregister_device, ptr @__kstrtabns_nfc_unregister_device }, section "___ksymtab+nfc_unregister_device", align 4
@__UNIQUE_ID_author418 = internal constant [59 x i8] c"author=Lauro Ramos Venancio <lauro.venancio@openbossa.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description419 = internal constant [29 x i8] c"description=NFC Core ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version420 = internal constant [12 x i8] c"version=0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_license421 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias422 = internal constant [16 x i8] c"alias=net-pf-39\00", section ".modinfo", align 1
@__UNIQUE_ID_alias423 = internal constant [36 x i8] c"alias=net-pf-16-proto-16-family-nfc\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"\016nfc: %s: NFC Core ver %s\0A\00", align 1
@__func__.nfc_init = private unnamed_addr constant [9 x i8] c"nfc_init\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@nfc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias422, ptr @__UNIQUE_ID_alias423, ptr @__UNIQUE_ID_author418, ptr @__UNIQUE_ID_description419, ptr @__UNIQUE_ID_license421, ptr @__UNIQUE_ID_version420, ptr @__ksymtab_nfc_add_se, ptr @__ksymtab_nfc_alloc_recv_skb, ptr @__ksymtab_nfc_allocate_device, ptr @__ksymtab_nfc_class, ptr @__ksymtab_nfc_dep_link_is_up, ptr @__ksymtab_nfc_driver_failure, ptr @__ksymtab_nfc_find_se, ptr @__ksymtab_nfc_fw_download_done, ptr @__ksymtab_nfc_get_local_general_bytes, ptr @__ksymtab_nfc_register_device, ptr @__ksymtab_nfc_remove_se, ptr @__ksymtab_nfc_se_connectivity, ptr @__ksymtab_nfc_se_transaction, ptr @__ksymtab_nfc_set_remote_general_bytes, ptr @__ksymtab_nfc_target_lost, ptr @__ksymtab_nfc_targets_found, ptr @__ksymtab_nfc_tm_activated, ptr @__ksymtab_nfc_tm_data_received, ptr @__ksymtab_nfc_tm_deactivated, ptr @__ksymtab_nfc_unregister_device], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_fw_download(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfc_ops, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 7
  store i8 1, ptr %19, align 1
  %20 = load ptr, ptr %15, align 4
  %21 = tail call i32 %20(ptr noundef %0, ptr noundef %1) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8 0, ptr %19, align 1
  br label %24

24:                                               ; preds = %23, %18, %12, %8, %2
  %25 = phi i32 [ %21, %23 ], [ 0, %18 ], [ -19, %2 ], [ -16, %8 ], [ -95, %12 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_fw_download_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 7
  store i8 0, ptr %4, align 1
  %5 = tail call i32 @nfc_genl_fw_download_done(ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_fw_download_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_dev_up(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @rfkill_blocked(ptr noundef nonnull %9) #10
  br i1 %12, label %41, label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 7
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %19 = load i8, ptr %18, align 8, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %0) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %21
  store i8 1, ptr %18, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i32 [ 0, %29 ], [ %27, %26 ]
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr inbounds %struct.nfc_ops, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %0) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfc_dev_up) #11
  br label %41

41:                                               ; preds = %39, %36, %30, %17, %13, %11, %1
  %42 = phi i32 [ %31, %39 ], [ %31, %36 ], [ %31, %30 ], [ -19, %1 ], [ -132, %11 ], [ -16, %13 ], [ -114, %17 ]
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_dev_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfc_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 %23(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %25, %19
  store i8 0, ptr %8, align 8
  br label %28

28:                                               ; preds = %27, %15, %11, %7, %1
  %29 = phi i32 [ 0, %27 ], [ -19, %1 ], [ -114, %7 ], [ -16, %15 ], [ -16, %11 ]
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_start_poll(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = or i32 %2, %1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 8, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %18 = load i8, ptr %17, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nfc_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  store i8 1, ptr %17, align 1
  %28 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 2, ptr %28, align 2
  br label %29

29:                                               ; preds = %27, %20, %16, %12, %6
  %30 = phi i32 [ %25, %20 ], [ 0, %27 ], [ -19, %6 ], [ -19, %12 ], [ -16, %16 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %31

31:                                               ; preds = %29, %3
  %32 = phi i32 [ %30, %29 ], [ -22, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_stop_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nfc_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #10
  store i8 0, ptr %8, align 1
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 2, ptr %16, align 2
  br label %17

17:                                               ; preds = %11, %7, %1
  %18 = phi i32 [ 0, %11 ], [ -19, %1 ], [ -22, %7 ]
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_dep_link_up(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfc_ops, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = call ptr @nfc_llcp_general_bytes(ptr noundef %0, ptr noundef nonnull %4) #10
  %22 = load i32, ptr %4, align 4
  %23 = icmp ugt i32 %22, 48
  br i1 %23, label %50, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  br label %34

31:                                               ; preds = %34
  %32 = add nuw nsw i32 %35, 1
  %33 = icmp eq i32 %32, %26
  br i1 %33, label %50, label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ 0, %28 ], [ %32, %31 ]
  %36 = getelementptr %struct.nfc_target, ptr %30, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %39, label %31

39:                                               ; preds = %34
  %40 = icmp eq ptr %36, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.nfc_ops, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %0, ptr noundef nonnull %36, i8 noundef zeroext %2, ptr noundef %21, i32 noundef %22) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  store ptr %36, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 0, ptr %49, align 2
  br label %50

50:                                               ; preds = %47, %41, %39, %31, %24, %20, %16, %10
  %51 = phi i32 [ %45, %41 ], [ 0, %47 ], [ -19, %10 ], [ -114, %16 ], [ -22, %20 ], [ -107, %39 ], [ -107, %24 ], [ -107, %31 ]
  call void @mutex_unlock(ptr noundef %11) #10
  br label %52

52:                                               ; preds = %50, %3
  %53 = phi i32 [ %51, %50 ], [ -95, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_dep_link_down(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfc_ops, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  %15 = load i8, ptr %14, align 8, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nfc_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %0) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  store i8 0, ptr %14, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 2, ptr %25, align 2
  tail call void @nfc_llcp_mac_is_down(ptr noundef %0) #10
  %26 = tail call i32 @nfc_genl_dep_link_down_event(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %23, %17, %13, %7
  %28 = phi i32 [ %21, %17 ], [ 0, %23 ], [ -19, %7 ], [ -114, %13 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi i32 [ %28, %27 ], [ -95, %1 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_mac_is_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_dep_link_down_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_dep_link_is_up(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  store i8 1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i8 %3, 0
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  br label %21

18:                                               ; preds = %21
  %19 = add nuw nsw i32 %22, 1
  %20 = icmp eq i32 %19, %13
  br i1 %20, label %33, label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 0, %15 ], [ %19, %18 ]
  %23 = getelementptr %struct.nfc_target, ptr %17, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %18

26:                                               ; preds = %21
  %27 = icmp eq ptr %23, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  store ptr %23, ptr %6, align 4
  br label %29

29:                                               ; preds = %28, %4
  %30 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 %3, ptr %31, align 2
  tail call void @nfc_llcp_mac_is_up(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #10
  %32 = tail call i32 @nfc_genl_dep_link_up_event(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #10
  br label %33

33:                                               ; preds = %29, %26, %18, %11
  %34 = phi i32 [ %32, %29 ], [ -107, %26 ], [ -107, %11 ], [ -107, %18 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_mac_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_dep_link_up_event(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_activate_target(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i32 %24, 1
  %22 = icmp eq i32 %21, %15
  br i1 %22, label %52, label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 0, %17 ], [ %21, %20 ]
  %25 = getelementptr %struct.nfc_target, ptr %19, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %20

28:                                               ; preds = %23
  %29 = icmp eq ptr %25, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nfc_ops, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef nonnull %25, i32 noundef %2) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  store ptr %25, ptr %10, align 4
  %38 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 0, ptr %38, align 2
  %39 = load ptr, ptr %31, align 4
  %40 = getelementptr inbounds %struct.nfc_ops, ptr %39, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 19
  %45 = load i8, ptr %44, align 4, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 17
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %49, 200
  %51 = tail call i32 @mod_timer(ptr noundef %48, i32 noundef %50) #10
  br label %52

52:                                               ; preds = %47, %43, %37, %30, %28, %20, %13, %9, %3
  %53 = phi i32 [ %35, %30 ], [ 0, %43 ], [ 0, %47 ], [ 0, %37 ], [ -19, %3 ], [ -16, %9 ], [ -107, %28 ], [ -107, %13 ], [ -107, %20 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_deactivate_target(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfc_ops, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 17
  %24 = tail call i32 @del_timer_sync(ptr noundef %23) #10
  %25 = load ptr, ptr %17, align 4
  %26 = load ptr, ptr %10, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi ptr [ %26, %22 ], [ %11, %16 ]
  %29 = phi ptr [ %25, %22 ], [ %18, %16 ]
  %30 = getelementptr inbounds %struct.nfc_ops, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0, ptr noundef %28, i8 noundef zeroext %2) #10
  store ptr null, ptr %10, align 4
  br label %32

32:                                               ; preds = %27, %13, %9, %3
  %33 = phi i32 [ 0, %27 ], [ -19, %3 ], [ -107, %9 ], [ -107, %13 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_data_exchange(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %64

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  %14 = load i8, ptr %13, align 2
  switch i8 %14, label %63 [
    i8 0, label %15
    i8 1, label %55
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %17, align 4
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %64

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfc_ops, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 17
  %31 = tail call i32 @del_timer_sync(ptr noundef %30) #10
  %32 = load ptr, ptr %24, align 4
  %33 = load ptr, ptr %16, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi ptr [ %33, %29 ], [ %17, %23 ]
  %36 = phi ptr [ %32, %29 ], [ %25, %23 ]
  %37 = getelementptr inbounds %struct.nfc_ops, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0, ptr noundef %35, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load ptr, ptr %24, align 4
  %43 = getelementptr inbounds %struct.nfc_ops, ptr %42, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 19
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 17
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = add i32 %52, 200
  %54 = tail call i32 @mod_timer(ptr noundef %51, i32 noundef %53) #10
  br label %64

55:                                               ; preds = %12
  %56 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nfc_ops, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = tail call i32 %59(ptr noundef %0, ptr noundef %2) #10
  br label %64

63:                                               ; preds = %55, %15, %12
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #10
  br label %64

64:                                               ; preds = %63, %61, %50, %46, %41, %34, %22, %11
  %65 = phi i32 [ -99, %22 ], [ %39, %34 ], [ 0, %46 ], [ 0, %50 ], [ 0, %41 ], [ %62, %61 ], [ -107, %63 ], [ -19, %11 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %65
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nfc_find_se(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfc_se, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_enable_se(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfc_ops, ptr %18, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nfc_ops, ptr %18, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 14
  br label %28

28:                                               ; preds = %32, %26
  %29 = phi ptr [ %27, %26 ], [ %30, %32 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %27
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nfc_se, ptr %30, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %28

36:                                               ; preds = %32
  %37 = icmp eq ptr %30, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.nfc_se, ptr %30, i32 0, i32 3
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %20(ptr noundef %0, i32 noundef %1) #10
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i16 1, ptr %39, align 2
  br label %46

46:                                               ; preds = %45, %42, %38, %36, %28, %22, %16, %12, %8, %2
  %47 = phi i32 [ %43, %45 ], [ %43, %42 ], [ -19, %2 ], [ -19, %8 ], [ -16, %12 ], [ -95, %22 ], [ -95, %16 ], [ -22, %36 ], [ -114, %38 ], [ -22, %28 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_disable_se(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 8, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfc_ops, ptr %14, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nfc_ops, ptr %14, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 14
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %42, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nfc_se, ptr %26, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %24

32:                                               ; preds = %28
  %33 = icmp eq ptr %26, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nfc_se, ptr %26, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %20(ptr noundef %0, i32 noundef %1) #10
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i16 0, ptr %35, align 2
  br label %42

42:                                               ; preds = %41, %38, %34, %32, %24, %18, %12, %8, %2
  %43 = phi i32 [ %39, %41 ], [ %39, %38 ], [ -19, %2 ], [ -19, %8 ], [ -95, %18 ], [ -95, %12 ], [ -22, %32 ], [ -114, %34 ], [ -22, %24 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_set_remote_general_bytes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = tail call i32 @nfc_llcp_set_remote_gb(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_set_remote_gb(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_get_local_general_bytes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @nfc_llcp_general_bytes(ptr noundef %0, ptr noundef %1) #10
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_tm_data_received(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #10
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @nfc_llcp_data_received(ptr noundef %0, ptr noundef %1) #10
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i32 [ -67, %6 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_tm_activated(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  store i8 0, ptr %7, align 1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = trunc i32 %4 to i8
  %11 = tail call i32 @nfc_llcp_set_remote_gb(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %10) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 1, ptr %14, align 2
  %15 = icmp eq i32 %1, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  store i8 1, ptr %17, align 8
  store i8 0, ptr %7, align 1
  tail call void @nfc_llcp_mac_is_up(ptr noundef %0, i32 noundef 0, i8 noundef zeroext %2, i8 noundef zeroext 1) #10
  %18 = tail call i32 @nfc_genl_dep_link_up_event(ptr noundef %0, i32 noundef 0, i8 noundef zeroext %2, i8 noundef zeroext 1) #10
  br label %19

19:                                               ; preds = %16, %13
  %20 = tail call i32 @nfc_genl_tm_activated(ptr noundef %0, i32 noundef %1) #10
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %11, %9 ], [ %20, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_tm_activated(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_tm_deactivated(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 11
  store i8 0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 8
  store i8 2, ptr %3, align 2
  %4 = tail call i32 @nfc_genl_tm_deactivated(ptr noundef %0) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_tm_deactivated(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_alloc_send_skb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %3, 1
  %11 = add i32 %10, %7
  %12 = add i32 %11, %9
  %13 = and i32 %2, 64
  %14 = tail call ptr @sock_alloc_send_skb(ptr noundef %1, i32 noundef %12, i32 noundef %13, ptr noundef %4) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = load i32, ptr %6, align 8
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 %18
  store ptr %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %16, %5
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_alloc_recv_skb(i32 noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %0, 1
  %4 = tail call ptr @__alloc_skb(i32 noundef %3, i32 noundef %1, i32 noundef 0, i32 noundef -1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 1
  store ptr %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_targets_found(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %12, %7 ]
  %9 = load i32, ptr %6, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %6, align 4
  %11 = getelementptr %struct.nfc_target, ptr %1, i32 %8
  store i32 %9, ptr %11, align 4
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %3
  %15 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @mutex_unlock(ptr noundef %15) #10
  br label %36

20:                                               ; preds = %14
  store i8 0, ptr %16, align 1
  %21 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  tail call void @kfree(ptr noundef %25) #10
  store ptr null, ptr %24, align 8
  %26 = icmp eq ptr %1, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = mul i32 %2, 76
  %29 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %28, i32 noundef 2592) #10
  store ptr %29, ptr %24, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  store i32 0, ptr %32, align 4
  tail call void @mutex_unlock(ptr noundef %15) #10
  br label %36

33:                                               ; preds = %27, %20
  %34 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  store i32 %2, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %15) #10
  %35 = tail call i32 @nfc_genl_targets_found(ptr noundef %0) #10
  br label %36

36:                                               ; preds = %33, %31, %19
  %37 = phi i32 [ 0, %19 ], [ 0, %33 ], [ -12, %31 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_targets_found(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_target_lost(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %15, %7
  %11 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %12 = getelementptr %struct.nfc_target, ptr %9, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %21, label %10

18:                                               ; preds = %10, %2
  %19 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %40

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  %26 = add i32 %5, -1
  store i32 %26, ptr %4, align 4
  %27 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %27, align 4
  %28 = icmp eq i32 %26, 0
  %29 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  br i1 %28, label %37, label %31

31:                                               ; preds = %22
  %32 = getelementptr %struct.nfc_target, ptr %30, i32 %19
  %33 = add nuw i32 %19, 1
  %34 = getelementptr %struct.nfc_target, ptr %30, i32 %33
  %35 = sub i32 %26, %19
  %36 = mul i32 %35, 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %32, ptr align 4 %34, i32 %36, i1 false)
  br label %38

37:                                               ; preds = %22
  tail call void @kfree(ptr noundef %30) #10
  store ptr null, ptr %29, align 8
  br label %38

38:                                               ; preds = %37, %31
  tail call void @mutex_unlock(ptr noundef %3) #10
  %39 = tail call i32 @nfc_genl_target_lost(ptr noundef %0, i32 noundef %1) #10
  br label %40

40:                                               ; preds = %38, %21
  %41 = phi i32 [ -22, %21 ], [ 0, %38 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_target_lost(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_driver_failure(ptr noundef %0, i32 %1) #6 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %16

8:                                                ; preds = %2
  store i8 0, ptr %4, align 1
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  tail call void @kfree(ptr noundef %13) #10
  store ptr null, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 3
  store i32 0, ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  %15 = tail call i32 @nfc_genl_targets_found(ptr noundef %0) #10
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_add_se(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 14
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfc_se, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = icmp eq ptr %7, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %13, %5
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nfc_se, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nfc_se, ptr %17, i32 0, i32 2
  store i16 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nfc_se, ptr %17, i32 0, i32 3
  store i16 0, ptr %22, align 2
  store volatile ptr %17, ptr %17, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %17, ptr %25, align 4
  store ptr %24, ptr %17, align 8
  store ptr %4, ptr %23, align 4
  store volatile ptr %17, ptr %4, align 4
  %26 = tail call i32 @nfc_genl_se_added(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load ptr, ptr %23, align 4
  %30 = load ptr, ptr %17, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 8
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @kfree(ptr noundef nonnull %17) #10
  br label %32

32:                                               ; preds = %28, %19, %15, %13
  %33 = phi i32 [ %26, %28 ], [ -114, %13 ], [ -12, %15 ], [ 0, %19 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_se_added(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_remove_se(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfc_se, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = tail call i32 @nfc_genl_se_removed(ptr noundef %0, i32 noundef %1) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %6) #10
  br label %20

20:                                               ; preds = %15, %12, %4
  %21 = phi i32 [ 0, %15 ], [ %13, %12 ], [ -22, %4 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_se_removed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_se_transaction(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = icmp eq ptr %2, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @nfc_genl_se_transaction(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %2) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ -71, %3 ]
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_se_transaction(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_se_connectivity(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = tail call i32 @nfc_genl_se_connectivity(ptr noundef %0, i8 noundef zeroext %1) #10
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_se_connectivity(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = getelementptr i8, ptr %0, i32 484
  tail call void @nfc_genl_data_exit(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #10
  %6 = getelementptr i8, ptr %0, i32 512
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %11, %9 ], [ %7, %1 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfc_se, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @nfc_genl_se_removed(ptr noundef %2, i32 noundef %13) #10
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @kfree(ptr noundef %10) #10
  %19 = icmp eq ptr %11, %6
  br i1 %19, label %20, label %9

20:                                               ; preds = %9, %1
  %21 = load i32, ptr %2, align 8
  tail call void @ida_free(ptr noundef nonnull @nfc_index_ida, i32 noundef %21) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_get_device(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = call ptr @class_find_device(ptr noundef nonnull @nfc_class, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @match_idx) #10
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -24
  %6 = select i1 %4, ptr null, ptr %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @match_idx(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_allocate_device(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = icmp eq i32 %1, 0
  %25 = or i1 %24, %23
  br i1 %25, label %56, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 616) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @ida_alloc_range(ptr noundef nonnull @nfc_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %30
  store i32 %31, ptr %28, align 8
  %34 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 5
  %35 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 5, i32 31
  store ptr @nfc_class, ptr %35, align 4
  %36 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %34, ptr noundef nonnull @.str.2, i32 noundef %31) #10
  tail call void @device_initialize(ptr noundef %34) #10
  %37 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 23
  store ptr %0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 13
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 15
  store i32 %2, ptr %39, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 16
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 14
  store volatile ptr %41, ptr %41, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 14, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 12
  tail call void @nfc_genl_data_init(ptr noundef %43) #10
  %44 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 8
  store i8 2, ptr %44, align 2
  %45 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 4
  store i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nfc_ops, ptr %0, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %50, ptr noundef nonnull @nfc_check_pres_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %51 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 18
  store i32 -32, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 18, i32 1
  store volatile ptr %52, ptr %52, align 8
  %53 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 18, i32 1, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nfc_dev, ptr %28, i32 0, i32 18, i32 2
  store ptr @nfc_check_pres_work, ptr %54, align 8
  br label %56

55:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %28) #10
  br label %56

56:                                               ; preds = %55, %49, %33, %26, %20, %16, %12, %8, %4
  %57 = phi ptr [ null, %55 ], [ null, %20 ], [ null, %16 ], [ null, %12 ], [ null, %8 ], [ null, %4 ], [ null, %26 ], [ %28, %49 ], [ %28, %33 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_genl_data_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_check_pres_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr @system_wq, align 4
  %4 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfc_check_pres_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -572
  %3 = getelementptr i8, ptr %0, i32 -480
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr i8, ptr %0, i32 -72
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = getelementptr i8, ptr %0, i32 -16
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %0, i32 32
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nfc_ops, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %2, ptr noundef nonnull %5) #10
  switch i32 %17, label %18 [
    i32 -95, label %30
    i32 0, label %22
  ]

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 4
  %20 = load i32, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  %21 = tail call i32 @nfc_target_lost(ptr noundef %2, i32 noundef %20)
  br label %31

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %0, i32 16
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = add i32 %27, 200
  %29 = tail call i32 @mod_timer(ptr noundef %8, i32 noundef %28) #10
  br label %30

30:                                               ; preds = %26, %22, %12, %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_register_device(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %2 = load i32, ptr @nfc_devlist_generation, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @nfc_devlist_generation, align 4
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  %5 = tail call i32 @device_add(ptr noundef %4) #10
  tail call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @nfc_llcp_register_device(ptr noundef %0) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nfc_register_device) #11
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %21 = tail call ptr @rfkill_alloc(ptr noundef %20, ptr noundef %4, i32 noundef 8, ptr noundef nonnull @nfc_rfkill_ops, ptr noundef %0) #10
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 20
  store ptr %21, ptr %22, align 8
  %23 = icmp eq ptr %21, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @rfkill_register(ptr noundef nonnull %21) #10
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr %22, align 8
  tail call void @rfkill_destroy(ptr noundef %28) #10
  store ptr null, ptr %22, align 8
  br label %29

29:                                               ; preds = %27, %24, %19
  tail call void @mutex_unlock(ptr noundef %13) #10
  %30 = tail call i32 @nfc_genl_device_added(ptr noundef %0) #10
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i32 [ 0, %29 ], [ %5, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfkill_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_device_added(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_unregister_device(ptr noundef %0) #0 {
  %2 = tail call i32 @nfc_genl_device_removed(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @rfkill_unregister(ptr noundef nonnull %5) #10
  %8 = load ptr, ptr %4, align 8
  tail call void @rfkill_destroy(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %7, %1
  tail call void @mutex_unlock(ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfc_ops, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef %3) #10
  %16 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 19
  store i8 1, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  %17 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 17
  %18 = tail call i32 @del_timer_sync(ptr noundef %17) #10
  %19 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 18
  %20 = tail call zeroext i1 @cancel_work_sync(ptr noundef %19) #10
  br label %21

21:                                               ; preds = %15, %9
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5
  tail call void @nfc_llcp_unregister_device(ptr noundef %0) #10
  tail call void @mutex_lock(ptr noundef nonnull @nfc_devlist_mutex) #10
  %23 = load i32, ptr @nfc_devlist_generation, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr @nfc_devlist_generation, align 4
  tail call void @device_del(ptr noundef %22) #10
  tail call void @mutex_unlock(ptr noundef nonnull @nfc_devlist_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_genl_device_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.nfc_init, ptr noundef nonnull @.str.5) #11
  %2 = tail call i32 @__class_register(ptr noundef nonnull @nfc_class, ptr noundef nonnull @nfc_init.__key) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = tail call i32 @nfc_genl_init() #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  store i32 1, ptr @nfc_devlist_generation, align 4
  %8 = tail call i32 @rawsock_init() #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = tail call i32 @nfc_llcp_init() #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call i32 @af_nfc_init() #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  tail call void @nfc_llcp_exit() #10
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi i32 [ %11, %10 ], [ %14, %16 ]
  tail call void @rawsock_exit() #10
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %8, %7 ], [ %18, %17 ]
  tail call void @nfc_genl_exit() #10
  br label %21

21:                                               ; preds = %19, %4
  %22 = phi i32 [ %5, %4 ], [ %20, %19 ]
  tail call void @class_unregister(ptr noundef nonnull @nfc_class) #10
  br label %23

23:                                               ; preds = %21, %13, %0
  %24 = phi i32 [ %22, %21 ], [ %2, %0 ], [ 0, %13 ]
  ret i32 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  tail call void @af_nfc_exit() #10
  tail call void @nfc_llcp_exit() #10
  tail call void @rawsock_exit() #10
  tail call void @nfc_genl_exit() #10
  tail call void @class_unregister(ptr noundef nonnull @nfc_class) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_genl_data_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_rfkill_set_block(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %31

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 5, i32 0, i32 7
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfc_dev, ptr %0, i32 0, i32 23
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfc_ops, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = tail call i32 %25(ptr noundef %0) #10
  br label %29

29:                                               ; preds = %27, %21
  store i8 0, ptr %10, align 8
  br label %30

30:                                               ; preds = %29, %17, %13, %9, %3
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %31

31:                                               ; preds = %30, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfc_genl_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @rawsock_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfc_llcp_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @af_nfc_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rawsock_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_genl_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_nfc_exit() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
