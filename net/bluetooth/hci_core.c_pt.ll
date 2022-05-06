; ModuleID = '/llk/IR/net/bluetooth/hci_core.c_pt.bc'
source_filename = "../net/bluetooth/hci_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_alloc_dev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_alloc_dev_priv\22\09\09\09\09\09"
module asm "__kstrtabns_hci_alloc_dev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_free_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_free_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_register_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_unregister_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_release_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_release_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_release_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_suspend_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_suspend_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_suspend_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_resume_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_resume_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_resume_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_reset_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_reset_dev\22\09\09\09\09\09"
module asm "__kstrtabns_hci_reset_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_hci_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_recv_diag:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_recv_diag\22\09\09\09\09\09"
module asm "__kstrtabns_hci_recv_diag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_set_hw_info:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_set_hw_info\22\09\09\09\09\09"
module asm "__kstrtabns_hci_set_hw_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_set_fw_info:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_set_fw_info\22\09\09\09\09\09"
module asm "__kstrtabns_hci_set_fw_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_register_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_register_cb\22\09\09\09\09\09"
module asm "__kstrtabns_hci_register_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_unregister_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_unregister_cb\22\09\09\09\09\09"
module asm "__kstrtabns_hci_unregister_cb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___hci_cmd_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__hci_cmd_send\22\09\09\09\09\09"
module asm "__kstrtabns___hci_cmd_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.rfkill_ops = type { ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.hci_inquiry_req = type { i16, i16, [3 x i8], i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hci_cp_inquiry = type { [3 x i8], i8, i8 }
%struct.inquiry_info = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16 }
%struct.hci_dev_req = type { i16, i32 }
%struct.hci_dev_list_req = type { i16, [0 x %struct.hci_dev_req] }
%struct.hci_dev_info = type { i16, [8 x i8], %struct.bdaddr_t, i32, i8, [8 x i8], i32, i32, i32, i16, i16, i16, i16, %struct.hci_dev_stats }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.blocked_key = type { %struct.list_head, %struct.callback_head, i8, [16 x i8] }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.adv_info = type { %struct.list_head, i8, i8, i8, i32, i16, i16, i16, i16, [251 x i8], i16, [251 x i8], i8, i32, i32, %struct.bdaddr_t, i8, %struct.delayed_work }
%struct.adv_monitor = type { %struct.list_head, %struct.adv_rssi_thresholds, i16, i32 }
%struct.adv_rssi_thresholds = type { i8, i8, i16, i16, i8 }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.bdaddr_list_with_irk = type { %struct.list_head, %struct.bdaddr_t, i8, [16 x i8], [16 x i8] }
%struct.bdaddr_list_with_flags = type { %struct.list_head, %struct.bdaddr_t, i8, [1 x i32] }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
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
%struct.hci_chan = type { %struct.list_head, i16, ptr, %struct.sk_buff_head, i32, i8, i8 }
%struct.__va_list = type { ptr }
%struct.hci_acl_hdr = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }

@hci_dev_list = dso_local global %struct.list_head { ptr @hci_dev_list, ptr @hci_dev_list }, align 4
@hci_dev_list_lock = dso_local global %struct.rwlock_t zeroinitializer, align 4
@hci_cb_list = dso_local global %struct.list_head { ptr @hci_cb_list, ptr @hci_cb_list }, align 4
@hci_cb_list_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hci_cb_list_lock, i64 12), ptr getelementptr (i8, ptr @hci_cb_list_lock, i64 12) } }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [30 x i8] c"%s: Link key blocked for %pMR\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: LTK blocked for %pMR\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Identity key blocked for %pMR\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: out of memory\0A\00", align 1
@hci_alloc_dev_priv.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&hdev->lock\00", align 1
@hci_alloc_dev_priv.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"&hdev->req_lock\00", align 1
@hci_alloc_dev_priv.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"&hdev->req_wait_q\00", align 1
@__kstrtab_hci_alloc_dev_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_alloc_dev_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_alloc_dev_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_alloc_dev_priv to i32), ptr @__kstrtab_hci_alloc_dev_priv, ptr @__kstrtabns_hci_alloc_dev_priv }, section "___ksymtab+hci_alloc_dev_priv", align 4
@__kstrtab_hci_free_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_free_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_free_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_free_dev to i32), ptr @__kstrtab_hci_free_dev, ptr @__kstrtabns_hci_free_dev }, section "___ksymtab+hci_free_dev", align 4
@hci_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"hci%d\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@hci_rfkill_ops = internal constant %struct.rfkill_ops { ptr null, ptr null, ptr @hci_rfkill_set_block }, align 4
@__kstrtab_hci_register_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_register_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_register_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_register_dev to i32), ptr @__kstrtab_hci_register_dev, ptr @__kstrtabns_hci_register_dev }, section "___ksymtab+hci_register_dev", align 4
@__kstrtab_hci_unregister_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_unregister_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_unregister_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_unregister_dev to i32), ptr @__kstrtab_hci_unregister_dev, ptr @__kstrtabns_hci_unregister_dev }, section "___ksymtab+hci_unregister_dev", align 4
@__kstrtab_hci_release_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_release_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_release_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_release_dev to i32), ptr @__kstrtab_hci_release_dev, ptr @__kstrtabns_hci_release_dev }, section "___ksymtab+hci_release_dev", align 4
@__kstrtab_hci_suspend_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_suspend_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_suspend_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_suspend_dev to i32), ptr @__kstrtab_hci_suspend_dev, ptr @__kstrtabns_hci_suspend_dev }, section "___ksymtab+hci_suspend_dev", align 4
@__kstrtab_hci_resume_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_resume_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_resume_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_resume_dev to i32), ptr @__kstrtab_hci_resume_dev, ptr @__kstrtabns_hci_resume_dev }, section "___ksymtab+hci_resume_dev", align 4
@hci_reset_dev.hw_err = internal unnamed_addr constant [3 x i8] c"\10\01\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"%s: Injecting HCI hardware error event\0A\00", align 1
@__kstrtab_hci_reset_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_reset_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_reset_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_reset_dev to i32), ptr @__kstrtab_hci_reset_dev, ptr @__kstrtabns_hci_reset_dev }, section "___ksymtab+hci_reset_dev", align 4
@__kstrtab_hci_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_recv_frame to i32), ptr @__kstrtab_hci_recv_frame, ptr @__kstrtabns_hci_recv_frame }, section "___ksymtab+hci_recv_frame", align 4
@__kstrtab_hci_recv_diag = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_recv_diag = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_recv_diag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_recv_diag to i32), ptr @__kstrtab_hci_recv_diag, ptr @__kstrtabns_hci_recv_diag }, section "___ksymtab+hci_recv_diag", align 4
@__kstrtab_hci_set_hw_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_set_hw_info = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_set_hw_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_set_hw_info to i32), ptr @__kstrtab_hci_set_hw_info, ptr @__kstrtabns_hci_set_hw_info }, section "___ksymtab+hci_set_hw_info", align 4
@__kstrtab_hci_set_fw_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_set_fw_info = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_set_fw_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_set_fw_info to i32), ptr @__kstrtab_hci_set_fw_info, ptr @__kstrtabns_hci_set_fw_info }, section "___ksymtab+hci_set_fw_info", align 4
@__kstrtab_hci_register_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_register_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_register_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_register_cb to i32), ptr @__kstrtab_hci_register_cb, ptr @__kstrtabns_hci_register_cb }, section "___ksymtab+hci_register_cb", align 4
@__kstrtab_hci_unregister_cb = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_unregister_cb = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_unregister_cb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_unregister_cb to i32), ptr @__kstrtab_hci_unregister_cb, ptr @__kstrtabns_hci_unregister_cb }, section "___ksymtab+hci_unregister_cb", align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: no memory for command\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s: unresponded command not supported\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"%s: no memory for command (opcode 0x%4.4x)\0A\00", align 1
@__kstrtab___hci_cmd_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___hci_cmd_send = external dso_local constant [0 x i8], align 1
@__ksymtab___hci_cmd_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__hci_cmd_send to i32), ptr @__kstrtab___hci_cmd_send, ptr @__kstrtabns___hci_cmd_send }, section "___ksymtab+__hci_cmd_send", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"%s: hardware error 0x%2.2x\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"%s: command 0x%4.4x tx timeout\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"%s: command tx timeout\0A\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"%s: Controller not accepting commands anymore: ncmd = 0\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"%s: Suspend notifier action (%lu) failed: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"%s: sending frame failed (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%s: unknown dev_type %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"%s: unknown link type %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"%s: link tx timeout\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"%s: killing stalled connection %pMR\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"%s: ACL packet for unknown connection handle %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"%s: SCO packet for unknown connection handle %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab___hci_cmd_send, ptr @__ksymtab_hci_alloc_dev_priv, ptr @__ksymtab_hci_free_dev, ptr @__ksymtab_hci_recv_diag, ptr @__ksymtab_hci_recv_frame, ptr @__ksymtab_hci_register_cb, ptr @__ksymtab_hci_register_dev, ptr @__ksymtab_hci_release_dev, ptr @__ksymtab_hci_reset_dev, ptr @__ksymtab_hci_resume_dev, ptr @__ksymtab_hci_set_fw_info, ptr @__ksymtab_hci_set_hw_info, ptr @__ksymtab_hci_suspend_dev, ptr @__ksymtab_hci_unregister_cb, ptr @__ksymtab_hci_unregister_dev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_dev_get(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @hci_dev_list, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @hci_dev_list
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.hci_dev, ptr %6, i32 0, i32 204
  %15 = tail call ptr @get_device(ptr noundef %14) #24
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ %6, %13 ], [ null, %4 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %22

22:                                               ; preds = %21, %16
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  br label %23

23:                                               ; preds = %22, %1
  %24 = phi ptr [ %17, %22 ], [ null, %1 ]
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hci_discovery_active(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_discovery_set_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  store i32 %1, ptr %3, align 4
  switch i32 %1, label %12 [
    i32 0, label %7
    i32 2, label %10
  ]

7:                                                ; preds = %6
  %8 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #24
  %9 = icmp eq i32 %4, 1
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %6
  %11 = phi i8 [ 0, %7 ], [ 1, %6 ]
  tail call void @mgmt_discovering(ptr noundef %0, i8 noundef zeroext %11) #24
  br label %12

12:                                               ; preds = %10, %7, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_update_passive_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_discovering(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_inquiry_cache_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #24
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4, i32 1
  store ptr %15, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_inquiry_cache_lookup(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inquiry_entry, ptr %6, i32 0, i32 4
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_inquiry_cache_lookup_unknown(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 16
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -8
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_inquiry_cache_lookup_resolve(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  br label %6

6:                                                ; preds = %17, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %17 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %11 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %8, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %10
  %18 = getelementptr i8, ptr %8, i32 16
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %1, i32 6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %6

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %8, i32 -8
  br label %25

23:                                               ; preds = %13
  %24 = getelementptr i8, ptr %8, i32 -8
  br label %25

25:                                               ; preds = %23, %21, %6
  %26 = phi ptr [ %22, %21 ], [ %24, %23 ], [ null, %6 ]
  ret ptr %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_inquiry_cache_update_resolve(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  %4 = getelementptr inbounds %struct.inquiry_entry, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.inquiry_entry, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.inquiry_entry, ptr %1, i32 0, i32 4, i32 6
  br label %13

13:                                               ; preds = %26, %11
  %14 = phi ptr [ %9, %11 ], [ %27, %26 ]
  %15 = phi ptr [ %3, %11 ], [ %14, %26 ]
  %16 = getelementptr i8, ptr %14, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %14, i32 30
  %21 = load i8, ptr %20, align 2
  %22 = tail call i8 @llvm.abs.i8(i8 %21, i1 false)
  %23 = load i8, ptr %12, align 2
  %24 = tail call i8 @llvm.abs.i8(i8 %23, i1 false)
  %25 = icmp ult i8 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %13
  %27 = load ptr, ptr %14, align 4
  %28 = icmp eq ptr %27, %3
  br i1 %28, label %29, label %13

29:                                               ; preds = %26, %19, %2
  %30 = phi ptr [ %3, %2 ], [ %15, %19 ], [ %14, %26 ]
  %31 = phi ptr [ %3, %2 ], [ %14, %19 ], [ %3, %26 ]
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %4, ptr %32, align 4
  store ptr %31, ptr %4, align 4
  store ptr %30, ptr %5, align 4
  store volatile ptr %4, ptr %30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_inquiry_cache_update(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 1
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %26, label %7

19:                                               ; preds = %12
  %20 = icmp eq ptr %8, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %8) #24
  br label %26

26:                                               ; preds = %21, %19, %16, %3
  %27 = getelementptr inbounds %struct.inquiry_data, ptr %1, i32 0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 2, i32 0
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 2
  br label %32

32:                                               ; preds = %36, %26
  %33 = phi ptr [ %31, %26 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %85, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4
  %38 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %37, ptr noundef dereferenceable(6) %1, i32 6) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32

40:                                               ; preds = %36
  %41 = icmp eq ptr %34, null
  br i1 %41, label %85, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4, i32 7
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 2, i32 %30
  %47 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %103

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.inquiry_data, ptr %1, i32 0, i32 6
  %52 = load i8, ptr %51, align 2
  %53 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 4, i32 6
  %54 = load i8, ptr %53, align 2
  %55 = icmp eq i8 %52, %54
  br i1 %55, label %103, label %56

56:                                               ; preds = %50
  store i8 %52, ptr %53, align 2
  %57 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 4
  %58 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 1
  %59 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  %63 = load ptr, ptr %57, align 4
  %64 = icmp eq ptr %63, %57
  br i1 %64, label %81, label %65

65:                                               ; preds = %78, %56
  %66 = phi ptr [ %79, %78 ], [ %63, %56 ]
  %67 = phi ptr [ %66, %78 ], [ %57, %56 ]
  %68 = getelementptr i8, ptr %66, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = getelementptr i8, ptr %66, i32 30
  %73 = load i8, ptr %72, align 2
  %74 = tail call i8 @llvm.abs.i8(i8 %73, i1 false) #24
  %75 = load i8, ptr %53, align 2
  %76 = tail call i8 @llvm.abs.i8(i8 %75, i1 false) #24
  %77 = icmp ult i8 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71, %65
  %79 = load ptr, ptr %66, align 4
  %80 = icmp eq ptr %79, %57
  br i1 %80, label %81, label %65

81:                                               ; preds = %78, %71, %56
  %82 = phi ptr [ %57, %56 ], [ %66, %78 ], [ %67, %71 ]
  %83 = phi ptr [ %57, %56 ], [ %57, %78 ], [ %66, %71 ]
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %58, ptr %84, align 4
  store ptr %83, ptr %58, align 4
  store ptr %82, ptr %59, align 4
  store volatile ptr %58, ptr %82, align 4
  br label %103

85:                                               ; preds = %40, %32
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 40) #25
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = or i32 %30, 1
  br label %128

91:                                               ; preds = %85
  %92 = load ptr, ptr %31, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %87, ptr %93, align 4
  store ptr %92, ptr %87, align 8
  %94 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %31, ptr %94, align 4
  store volatile ptr %87, ptr %31, align 4
  %95 = getelementptr inbounds %struct.inquiry_entry, ptr %87, i32 0, i32 2
  br i1 %2, label %96, label %97

96:                                               ; preds = %91
  store i32 3, ptr %95, align 8
  br label %115

97:                                               ; preds = %91
  store i32 0, ptr %95, align 8
  %98 = getelementptr inbounds %struct.inquiry_entry, ptr %87, i32 0, i32 1
  %99 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %98, ptr %101, align 4
  store ptr %100, ptr %98, align 8
  %102 = getelementptr inbounds %struct.inquiry_entry, ptr %87, i32 0, i32 1, i32 1
  store ptr %99, ptr %102, align 4
  store volatile ptr %98, ptr %99, align 4
  br label %115

103:                                              ; preds = %81, %50, %42
  br i1 %2, label %104, label %115

104:                                              ; preds = %103
  %105 = load i32, ptr %47, align 4
  %106 = and i32 %105, -2
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 2
  store i32 3, ptr %109, align 4
  %110 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 1
  %111 = getelementptr inbounds %struct.inquiry_entry, ptr %34, i32 0, i32 1, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %110, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %110, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  br label %115

115:                                              ; preds = %108, %104, %103, %97, %96
  %116 = phi i32 [ %46, %104 ], [ %46, %108 ], [ %46, %103 ], [ %30, %97 ], [ %30, %96 ]
  %117 = phi ptr [ %34, %104 ], [ %34, %108 ], [ %34, %103 ], [ %87, %97 ], [ %87, %96 ]
  %118 = getelementptr inbounds %struct.inquiry_entry, ptr %117, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %118, ptr noundef align 2 dereferenceable(16) %1, i32 16, i1 false)
  %119 = load volatile i32, ptr @jiffies, align 64
  %120 = getelementptr inbounds %struct.inquiry_entry, ptr %117, i32 0, i32 3
  store i32 %119, ptr %120, align 4
  %121 = load volatile i32, ptr @jiffies, align 64
  %122 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 5
  store i32 %121, ptr %122, align 4
  %123 = getelementptr inbounds %struct.inquiry_entry, ptr %117, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = or i32 %116, %126
  br label %128

128:                                              ; preds = %115, %89
  %129 = phi i32 [ %90, %89 ], [ %127, %115 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_remote_oob_data(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 1
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %26, label %7

19:                                               ; preds = %12
  %20 = icmp eq ptr %8, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %8) #24
  br label %26

26:                                               ; preds = %21, %19, %16, %3
  %27 = phi i32 [ 0, %21 ], [ -2, %19 ], [ -2, %3 ], [ -2, %16 ]
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_inquiry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_inquiry_req, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(10) %2, i8 0, i32 10, i1 false), !annotation !14
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 10, i32 -1090519040) #26
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !15

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #24
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #27, !srcloc !16
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 10) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !15

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 10, %1 ]
  %16 = sub i32 10, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #24
  br label %133

18:                                               ; preds = %6
  %19 = load i16, ptr %2, align 2
  call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ @hci_dev_list, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @hci_dev_list
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = icmp eq i16 %26, %19
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 204
  %30 = call ptr @get_device(ptr noundef %29) #24
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %22, %28 ], [ null, %20 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %33 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %37

37:                                               ; preds = %36, %31
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %38 = icmp eq ptr %32, null
  br i1 %38, label %133, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 206
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 2048
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %130

44:                                               ; preds = %39
  %45 = load volatile i32, ptr %40, align 4
  %46 = and i32 %45, 1024
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %130

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %130

52:                                               ; preds = %48
  %53 = getelementptr %struct.hci_dev, ptr %32, i32 0, i32 206, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %130, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hci_inquiry_req, ptr %2, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = icmp ugt i8 %59, 60
  br i1 %60, label %130, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 1
  call void @mutex_lock(ptr noundef %62) #24
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 170, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 %63, %65
  %67 = icmp sgt i32 %66, 3000
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 170, i32 2
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.hci_inquiry_req, ptr %2, i32 0, i32 1
  %74 = load i16, ptr %73, align 2
  %75 = and i16 %74, 1
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  call void @mutex_unlock(ptr noundef %62) #24
  br label %93

78:                                               ; preds = %72, %68, %61
  call void @hci_inquiry_cache_flush(ptr noundef nonnull %32)
  call void @mutex_unlock(ptr noundef %62) #24
  %79 = load i8, ptr %58, align 1
  %80 = zext i8 %79 to i32
  %81 = mul nuw nsw i32 %80, 200
  %82 = ptrtoint ptr %2 to i32
  %83 = call i32 @hci_req_sync(ptr noundef nonnull %32, ptr noundef nonnull @hci_inq_req, i32 noundef %82, i32 noundef %81, ptr noundef null) #24
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %130, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 3
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 128
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = call i32 @out_of_line_wait_on_bit(ptr noundef %86, i32 noundef 7, ptr noundef nonnull @bit_wait, i32 noundef 1) #24
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %90, %85, %77
  %94 = phi i32 [ %83, %90 ], [ 0, %77 ], [ %83, %85 ]
  %95 = getelementptr inbounds %struct.hci_inquiry_req, ptr %2, i32 0, i32 4
  %96 = load i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %97, i8 -1, i8 %96
  %99 = zext i8 %98 to i32
  %100 = mul nuw nsw i32 %99, 14
  %101 = call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 3264) #28
  %102 = icmp eq ptr %101, null
  br i1 %102, label %130, label %103

103:                                              ; preds = %93
  call void @mutex_lock(ptr noundef %62) #24
  %104 = call fastcc i32 @inquiry_cache_dump(ptr noundef nonnull %32, i32 noundef %99, ptr noundef nonnull %101)
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %95, align 2
  call void @mutex_unlock(ptr noundef %62) #24
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #27, !srcloc !16
  %107 = and i32 %106, -13
  %108 = or i32 %107, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %109 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %103
  %112 = getelementptr i8, ptr %0, i32 10
  %113 = load i8, ptr %95, align 2
  %114 = zext i8 %113 to i32
  %115 = mul nuw nsw i32 %114, 14
  %116 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %112, i32 %115, i32 -1090519040) #26, !srcloc !19
  %117 = extractvalue { i32, i32 } %116, 0
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #27, !srcloc !16
  %121 = and i32 %120, -13
  %122 = or i32 %121, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %123 = call i32 @arm_copy_to_user(ptr noundef %112, ptr noundef nonnull %101, i32 noundef %115) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %120) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  br label %124

124:                                              ; preds = %119, %111
  %125 = phi i32 [ %123, %119 ], [ %115, %111 ]
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 %94, i32 -14
  br label %128

128:                                              ; preds = %124, %103
  %129 = phi i32 [ -14, %103 ], [ %127, %124 ]
  call void @kfree(ptr noundef nonnull %101) #24
  br label %130

130:                                              ; preds = %128, %93, %90, %78, %57, %52, %48, %44, %39
  %131 = phi i32 [ %83, %78 ], [ %129, %128 ], [ -16, %39 ], [ -95, %44 ], [ -95, %48 ], [ -95, %52 ], [ -22, %57 ], [ -4, %90 ], [ -12, %93 ]
  %132 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 204
  call void @put_device(ptr noundef %132) #24
  br label %133

133:                                              ; preds = %130, %37, %14
  %134 = phi i32 [ %131, %130 ], [ -19, %37 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #24
  ret i32 %134
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_sync(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_inq_req(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hci_cp_inquiry, align 1
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #24
  %5 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = inttoptr i32 %1 to ptr
  %11 = getelementptr inbounds %struct.hci_inquiry_req, ptr %10, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef align 2 dereferenceable(3) %11, i32 3, i1 false)
  %12 = getelementptr inbounds %struct.hci_inquiry_req, ptr %10, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.hci_cp_inquiry, ptr %3, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr inbounds %struct.hci_inquiry_req, ptr %10, i32 0, i32 4
  %16 = load i8, ptr %15, align 2
  %17 = getelementptr inbounds %struct.hci_cp_inquiry, ptr %3, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  call void @hci_req_add(ptr noundef %0, i16 noundef zeroext 1025, i32 noundef 5, ptr noundef nonnull %3) #24
  br label %18

18:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @inquiry_cache_dump(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, %4
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %9, %3
  %10 = phi ptr [ %30, %9 ], [ %5, %3 ]
  %11 = phi ptr [ %28, %9 ], [ %2, %3 ]
  %12 = phi i32 [ %29, %9 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %11, ptr noundef align 1 dereferenceable(6) %13, i32 6, i1 false) #24
  %14 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 1
  %15 = load i8, ptr %14, align 2
  %16 = getelementptr inbounds %struct.inquiry_info, ptr %11, i32 0, i32 1
  store i8 %15, ptr %16, align 1
  %17 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr inbounds %struct.inquiry_info, ptr %11, i32 0, i32 2
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.inquiry_info, ptr %11, i32 0, i32 3
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.inquiry_info, ptr %11, i32 0, i32 4
  %24 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %23, ptr noundef align 1 dereferenceable(3) %24, i32 3, i1 false)
  %25 = getelementptr inbounds %struct.inquiry_entry, ptr %10, i32 0, i32 4, i32 5
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.inquiry_info, ptr %11, i32 0, i32 5
  store i16 %26, ptr %27, align 1
  %28 = getelementptr %struct.inquiry_info, ptr %11, i32 1
  %29 = add nuw nsw i32 %12, 1
  %30 = load ptr, ptr %10, align 4
  %31 = icmp ne ptr %30, %4
  %32 = icmp slt i32 %29, %1
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %9, label %34

34:                                               ; preds = %9, %3
  %35 = phi i32 [ 0, %3 ], [ %29, %9 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_open(i16 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @hci_dev_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @hci_dev_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204
  %12 = tail call ptr @get_device(ptr noundef %11) #24
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %4, %10 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %19

19:                                               ; preds = %18, %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26, %21
  %31 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %22) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 141
  %35 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %34) #24
  br label %36

36:                                               ; preds = %33, %30
  %37 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 139
  %38 = load ptr, ptr %37, align 8
  tail call void @flush_workqueue(ptr noundef %38) #24
  %39 = load volatile i32, ptr %22, align 4
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load volatile i32, ptr %22, align 4
  %44 = and i32 %43, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @_set_bit(i32 noundef 5, ptr noundef %22) #24
  br label %47

47:                                               ; preds = %46, %42, %36
  %48 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %48) #24
  %49 = tail call i32 @hci_dev_open_sync(ptr noundef nonnull %14) #24
  tail call void @mutex_unlock(ptr noundef %48) #24
  br label %50

50:                                               ; preds = %47, %26
  %51 = phi i32 [ %49, %47 ], [ -95, %26 ]
  %52 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204
  tail call void @put_device(ptr noundef %52) #24
  br label %53

53:                                               ; preds = %50, %19
  %54 = phi i32 [ %51, %50 ], [ -19, %19 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_do_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %2) #24
  %3 = tail call i32 @hci_dev_close_sync(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %2) #24
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_close_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_close(i16 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @hci_dev_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @hci_dev_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204
  %12 = tail call ptr @get_device(ptr noundef %11) #24
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %4, %10 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %19

19:                                               ; preds = %18, %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %22) #24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 141
  %31 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %30) #24
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %33) #24
  %34 = tail call i32 @hci_dev_close_sync(ptr noundef nonnull %14) #24
  tail call void @mutex_unlock(ptr noundef %33) #24
  br label %35

35:                                               ; preds = %32, %21
  %36 = phi i32 [ %34, %32 ], [ -16, %21 ]
  %37 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204
  tail call void @put_device(ptr noundef %37) #24
  br label %38

38:                                               ; preds = %35, %19
  %39 = phi i32 [ %36, %35 ], [ -19, %19 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_reset(i16 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @hci_dev_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @hci_dev_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204
  %12 = tail call ptr @get_device(ptr noundef %11) #24
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %4, %10 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %19

19:                                               ; preds = %18, %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 3
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = load volatile i32, ptr %27, align 4
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %36) #24
  %37 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 159
  tail call void @skb_queue_purge(ptr noundef %37) #24
  %38 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 161
  tail call void @skb_queue_purge(ptr noundef %38) #24
  %39 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 138
  %40 = load ptr, ptr %39, align 4
  tail call void @drain_workqueue(ptr noundef %40) #24
  %41 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %41) #24
  %42 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %52, label %45

45:                                               ; preds = %45, %35
  %46 = phi ptr [ %47, %45 ], [ %43, %35 ]
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %47, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @kfree(ptr noundef %46) #24
  %51 = icmp eq ptr %47, %42
  br i1 %51, label %52, label %45

52:                                               ; preds = %45, %35
  %53 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 3
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 3, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 4
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 170, i32 4, i32 1
  store ptr %55, ptr %56, align 4
  tail call void @hci_conn_hash_flush(ptr noundef nonnull %14) #24
  tail call void @mutex_unlock(ptr noundef %41) #24
  %57 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 228
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = tail call i32 %58(ptr noundef nonnull %14) #24
  br label %62

62:                                               ; preds = %60, %52
  %63 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 119
  store volatile i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 120
  store i32 0, ptr %64, align 8
  %65 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 121
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 122
  store i32 0, ptr %66, align 8
  %67 = tail call i32 @hci_reset_sync(ptr noundef nonnull %14) #24
  tail call void @mutex_unlock(ptr noundef %36) #24
  br label %68

68:                                               ; preds = %62, %31, %26, %21
  %69 = phi i32 [ %67, %62 ], [ -100, %21 ], [ -16, %26 ], [ -95, %31 ]
  %70 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204
  tail call void @put_device(ptr noundef %70) #24
  br label %71

71:                                               ; preds = %68, %19
  %72 = phi i32 [ %69, %68 ], [ -19, %19 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_reset_stat(i16 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @hci_dev_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @hci_dev_list
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 204
  %12 = tail call ptr @get_device(ptr noundef %11) #24
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %4, %10 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %19

19:                                               ; preds = %18, %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %20 = icmp eq ptr %14, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 206
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 199
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %31, i8 0, i32 40, i1 false)
  br label %32

32:                                               ; preds = %30, %26, %21
  %33 = phi i32 [ 0, %30 ], [ -16, %21 ], [ -95, %26 ]
  %34 = getelementptr inbounds %struct.hci_dev, ptr %14, i32 0, i32 204
  tail call void @put_device(ptr noundef %34) #24
  br label %35

35:                                               ; preds = %32, %19
  %36 = phi i32 [ %33, %32 ], [ -19, %19 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_dev_cmd(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.hci_dev_req, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store i64 0, ptr %3, align 8, !annotation !14
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #26, !srcloc !20
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !15

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #24
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #27, !srcloc !16
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 8) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 8, %2 ]
  %17 = sub i32 8, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #24
  br label %130

19:                                               ; preds = %7
  %20 = load i16, ptr %3, align 8
  call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ @hci_dev_list, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @hci_dev_list
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 4
  %27 = load i16, ptr %26, align 8
  %28 = icmp eq i16 %27, %20
  br i1 %28, label %29, label %21

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.hci_dev, ptr %23, i32 0, i32 204
  %31 = call ptr @get_device(ptr noundef %30) #24
  br label %32

32:                                               ; preds = %29, %21
  %33 = phi ptr [ %23, %29 ], [ null, %21 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %34 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %38

38:                                               ; preds = %37, %32
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %39 = icmp eq ptr %33, null
  br i1 %39, label %130, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 206
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %127

45:                                               ; preds = %40
  %46 = load volatile i32, ptr %41, align 4
  %47 = and i32 %46, 1024
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %127

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %127

53:                                               ; preds = %49
  %54 = getelementptr %struct.hci_dev, ptr %33, i32 0, i32 206, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %127, label %58

58:                                               ; preds = %53
  switch i32 %0, label %127 [
    i32 1074022622, label %59
    i32 1074022623, label %63
    i32 1074022621, label %82
    i32 1074022625, label %90
    i32 1074022626, label %94
    i32 1074022624, label %100
    i32 1074022627, label %109
    i32 1074022628, label %118
  ]

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @hci_req_sync(ptr noundef nonnull %33, ptr noundef nonnull @hci_auth_req, i32 noundef %61, i32 noundef 1000, ptr noundef null) #24
  br label %127

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 21
  %65 = load i8, ptr %64, align 2
  %66 = and i8 %65, 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %127, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 3
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = call i32 @hci_req_sync(ptr noundef nonnull %33, ptr noundef nonnull @hci_auth_req, i32 noundef %75, i32 noundef 1000, ptr noundef null) #24
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %73, %68
  %79 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = call i32 @hci_req_sync(ptr noundef nonnull %33, ptr noundef nonnull @hci_encrypt_req, i32 noundef %80, i32 noundef 1000, ptr noundef null) #24
  br label %127

82:                                               ; preds = %58
  %83 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = call i32 @hci_req_sync(ptr noundef nonnull %33, ptr noundef nonnull @hci_scan_req, i32 noundef %84, i32 noundef 1000, ptr noundef null) #24
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %82
  %88 = load i32, ptr %83, align 4
  %89 = trunc i32 %88 to i8
  call fastcc void @hci_update_passive_scan_state(ptr noundef nonnull %33, i8 noundef zeroext %89)
  br label %127

90:                                               ; preds = %58
  %91 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = call i32 @hci_req_sync(ptr noundef nonnull %33, ptr noundef nonnull @hci_linkpol_req, i32 noundef %92, i32 noundef 1000, ptr noundef null) #24
  br label %127

94:                                               ; preds = %58
  %95 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = trunc i32 %96 to i16
  %98 = and i16 %97, -32767
  %99 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 101
  store i16 %98, ptr %99, align 2
  br label %127

100:                                              ; preds = %58
  %101 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 98
  %102 = load i16, ptr %101, align 4
  %103 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = trunc i32 %104 to i16
  %106 = icmp eq i16 %102, %105
  br i1 %106, label %127, label %107

107:                                              ; preds = %100
  store i16 %105, ptr %101, align 4
  %108 = call i32 @mgmt_phy_configuration_changed(ptr noundef nonnull %33, ptr noundef null) #24
  br label %127

109:                                              ; preds = %58
  %110 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %111 = getelementptr inbounds i16, ptr %110, i32 1
  %112 = load i16, ptr %111, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 123
  store i32 %113, ptr %114, align 4
  %115 = load i16, ptr %110, align 4
  %116 = zext i16 %115 to i32
  %117 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 126
  store i32 %116, ptr %117, align 8
  br label %127

118:                                              ; preds = %58
  %119 = getelementptr inbounds %struct.hci_dev_req, ptr %3, i32 0, i32 1
  %120 = getelementptr inbounds i16, ptr %119, i32 1
  %121 = load i16, ptr %120, align 2
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 124
  store i32 %122, ptr %123, align 8
  %124 = load i16, ptr %119, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 127
  store i32 %125, ptr %126, align 4
  br label %127

127:                                              ; preds = %118, %109, %107, %100, %94, %90, %87, %82, %78, %73, %63, %59, %58, %53, %49, %45, %40
  %128 = phi i32 [ 0, %118 ], [ 0, %109 ], [ 0, %100 ], [ 0, %107 ], [ 0, %94 ], [ %93, %90 ], [ %85, %82 ], [ 0, %87 ], [ %81, %78 ], [ %76, %73 ], [ %62, %59 ], [ -16, %40 ], [ -95, %45 ], [ -95, %49 ], [ -95, %53 ], [ -95, %63 ], [ -22, %58 ]
  %129 = getelementptr inbounds %struct.hci_dev, ptr %33, i32 0, i32 204
  call void @put_device(ptr noundef %129) #24
  br label %130

130:                                              ; preds = %127, %38, %15
  %131 = phi i32 [ %128, %127 ], [ -19, %38 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_auth_req(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1
  call void @hci_req_add(ptr noundef %0, i16 noundef zeroext 3104, i32 noundef 1, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_encrypt_req(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1
  call void @hci_req_add(ptr noundef %0, i16 noundef zeroext 3106, i32 noundef 1, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_scan_req(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr %3, align 1
  call void @hci_req_add(ptr noundef %0, i16 noundef zeroext 3098, i32 noundef 1, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_update_passive_scan_state(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %5, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %6) #24
  %9 = icmp eq i32 %8, 0
  br label %13

10:                                               ; preds = %2
  %11 = tail call i32 @_test_and_clear_bit(i32 noundef 26, ptr noundef %6) #24
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ %9, %7 ], [ %12, %10 ]
  %15 = and i32 %3, 1
  %16 = icmp eq i32 %15, 0
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  br i1 %16, label %21, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @_test_and_set_bit(i32 noundef 27, ptr noundef %17) #24
  %20 = icmp eq i32 %19, 0
  br label %24

21:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef 28, ptr noundef %17) #24
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 27, ptr noundef %17) #24
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ %20, %18 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %14, i1 true, i1 %25
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  tail call void @_set_bit(i32 noundef 32, ptr noundef %26) #24
  %33 = load volatile i32, ptr %26, align 4
  %34 = and i32 %33, 8388608
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %38 = load i8, ptr %37, align 8
  %39 = tail call i32 @hci_req_update_adv_data(ptr noundef %0, i8 noundef zeroext %38) #24
  br label %40

40:                                               ; preds = %36, %32
  %41 = tail call i32 @mgmt_new_settings(ptr noundef %0) #24
  br label %42

42:                                               ; preds = %40, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_linkpol_req(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #24
  %4 = trunc i32 %1 to i16
  store i16 %4, ptr %3, align 2
  call void @hci_req_add(ptr noundef %0, i16 noundef zeroext 2063, i32 noundef 2, ptr noundef nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_phy_configuration_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_dev_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #24
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %3) #27, !srcloc !16
  %5 = and i32 %4, -13
  %6 = or i32 %5, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #24, !srcloc !21
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %74

10:                                               ; preds = %1
  %11 = extractvalue { i32, i32 } %7, 1
  %12 = trunc i32 %11 to i16
  %13 = icmp eq i16 %12, 0
  %14 = and i32 %11, 65535
  %15 = icmp ugt i32 %14, 1024
  %16 = or i1 %13, %15
  br i1 %16, label %74, label %17

17:                                               ; preds = %10
  %18 = shl nuw nsw i32 %14, 3
  %19 = or i32 %18, 4
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %74, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hci_dev_list_req, ptr %20, i32 0, i32 1
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  %24 = call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %25

25:                                               ; preds = %30, %22
  %26 = phi i32 [ 0, %22 ], [ %43, %30 ]
  %27 = phi ptr [ @hci_dev_list, %22 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @hci_dev_list
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 206
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %32, -2
  %38 = select i1 %36, i32 %32, i32 %37
  %39 = getelementptr inbounds %struct.hci_dev, ptr %28, i32 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = getelementptr %struct.hci_dev_req, ptr %23, i32 %26
  store i16 %40, ptr %41, align 4
  %42 = getelementptr %struct.hci_dev_req, ptr %23, i32 %26, i32 1
  store i32 %38, ptr %42, align 8
  %43 = add nuw nsw i32 %26, 1
  %44 = icmp eq i32 %43, %24
  br i1 %44, label %45, label %25

45:                                               ; preds = %30, %25
  %46 = phi i32 [ %24, %30 ], [ %26, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %47 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %51

51:                                               ; preds = %50, %45
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %52 = trunc i32 %46 to i16
  store i16 %52, ptr %20, align 64
  %53 = shl i32 %46, 3
  %54 = or i32 %53, 4
  %55 = icmp slt i32 %54, 0
  %56 = load i1, ptr @check_copy_size.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !22

59:                                               ; preds = %51
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #24
  br label %60

60:                                               ; preds = %59, %51
  br i1 %55, label %72, label %61, !prof !22

61:                                               ; preds = %60
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %54, i32 -1090519040) #26, !srcloc !19
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %3) #27, !srcloc !16
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %69 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %54) #24
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 0, i32 -14
  br label %72

72:                                               ; preds = %65, %61, %60
  %73 = phi i32 [ -14, %60 ], [ %71, %65 ], [ -14, %61 ]
  tail call void @kfree(ptr noundef nonnull %20) #24
  br label %74

74:                                               ; preds = %72, %17, %10, %1
  %75 = phi i32 [ %73, %72 ], [ -14, %1 ], [ -22, %10 ], [ -12, %17 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_get_dev_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.hci_dev_info, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i32 92, i1 false), !annotation !14
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 92, i32 -1090519040) #26
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !15

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #24
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #27, !srcloc !16
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #24, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 92) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !15

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 92, %1 ]
  %16 = sub i32 92, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #24
  br label %116

18:                                               ; preds = %6
  %19 = load i16, ptr %2, align 4
  call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  br label %20

20:                                               ; preds = %24, %18
  %21 = phi ptr [ @hci_dev_list, %18 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, @hci_dev_list
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = icmp eq i16 %26, %19
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hci_dev, ptr %22, i32 0, i32 204
  %30 = call ptr @get_device(ptr noundef %29) #24
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %22, %28 ], [ null, %20 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !9
  %33 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #24, !srcloc !10
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  br label %37

37:                                               ; preds = %36, %31
  call void asm sideeffect "", "~{memory}"() #24, !srcloc !13
  %38 = icmp eq ptr %32, null
  br i1 %38, label %116, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 206
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -2
  %47 = select i1 %43, i32 %45, i32 %46
  %48 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 1
  %49 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 2
  %50 = call ptr @strcpy(ptr noundef %48, ptr noundef %49)
  %51 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 2
  %52 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %51, ptr noundef align 4 dereferenceable(6) %52, i32 6, i1 false)
  %53 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 5
  %54 = load i8, ptr %53, align 2
  %55 = and i8 %54, 15
  %56 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = shl i8 %57, 4
  %59 = and i8 %58, 48
  %60 = or i8 %59, %55
  %61 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 4
  store i8 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 3
  store i32 %47, ptr %62, align 4
  %63 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 98
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 6
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 21
  %68 = getelementptr %struct.hci_dev, ptr %32, i32 0, i32 21, i32 0, i32 4
  %69 = load i8, ptr %68, align 2
  %70 = and i8 %69, 32
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %39
  %73 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 123
  %74 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 126
  %75 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 124
  %76 = load i32, ptr %75, align 8
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 127
  %79 = load i32, ptr %78, align 4
  %80 = trunc i32 %79 to i16
  br label %84

81:                                               ; preds = %39
  %82 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 125
  %83 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 128
  br label %84

84:                                               ; preds = %81, %72
  %85 = phi ptr [ %73, %72 ], [ %82, %81 ]
  %86 = phi ptr [ %74, %72 ], [ %83, %81 ]
  %87 = phi i16 [ %77, %72 ], [ 0, %81 ]
  %88 = phi i16 [ %80, %72 ], [ 0, %81 ]
  %89 = load i32, ptr %86, align 8
  %90 = trunc i32 %89 to i16
  %91 = load i32, ptr %85, align 4
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 9
  store i16 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 10
  store i16 %90, ptr %94, align 2
  %95 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 11
  store i16 %87, ptr %95, align 4
  %96 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 12
  store i16 %88, ptr %96, align 2
  %97 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 100
  %98 = load i16, ptr %97, align 8
  %99 = zext i16 %98 to i32
  %100 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 7
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 101
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 8
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 13
  %106 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 199
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %105, ptr noundef align 4 dereferenceable(40) %106, i32 40, i1 false)
  %107 = getelementptr inbounds %struct.hci_dev_info, ptr %2, i32 0, i32 5
  %108 = load i64, ptr %67, align 2
  store i64 %108, ptr %107, align 1
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #27, !srcloc !16
  %110 = and i32 %109, -13
  %111 = or i32 %110, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %112 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 92) #24
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #24, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #24, !srcloc !18
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 0, i32 -14
  %115 = getelementptr inbounds %struct.hci_dev, ptr %32, i32 0, i32 204
  call void @put_device(ptr noundef %115) #24
  br label %116

116:                                              ; preds = %84, %37, %14
  %117 = phi i32 [ %114, %84 ], [ -19, %37 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #24
  ret i32 %117
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_uuids_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #24
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_link_keys_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %13, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %14

14:                                               ; preds = %12, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_smp_ltks_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.smp_ltk, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %13, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %14

14:                                               ; preds = %12, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_smp_irks_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.smp_irk, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %13, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %14

14:                                               ; preds = %12, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_blocked_keys_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %15, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.blocked_key, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %13, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %14

14:                                               ; preds = %12, %5
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_is_blocked_key(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.blocked_key, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.blocked_key, ptr %8, i32 0, i32 3
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %13, ptr noundef dereferenceable(16) %2, i32 16)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load volatile ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %12, %3
  %20 = phi i1 [ false, %3 ], [ true, %12 ], [ false, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_find_link_key(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %13 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %29, label %17

17:                                               ; preds = %26, %12
  %18 = phi ptr [ %27, %26 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.blocked_key, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.blocked_key, ptr %18, i32 0, i32 3
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %23, ptr noundef dereferenceable(16) %13, i32 16) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %17
  %27 = load volatile ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %29, label %17

29:                                               ; preds = %26, %12
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %33

30:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str, ptr noundef %31, ptr noundef %9) #24
  br label %33

32:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %33

33:                                               ; preds = %32, %30, %29
  %34 = phi ptr [ null, %30 ], [ null, %32 ], [ %6, %29 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_warn_ratelimited(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_find_ltk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %49, label %8

8:                                                ; preds = %46, %4
  %9 = phi ptr [ %47, %46 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, %2
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %14, i32 6)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 5
  %19 = load i8, ptr %18, align 8
  %20 = add i8 %19, -3
  %21 = icmp ult i8 %20, 2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = icmp ne i8 %19, 1
  %24 = zext i1 %23 to i8
  %25 = icmp eq i8 %24, %3
  br i1 %25, label %26, label %46

26:                                               ; preds = %22, %17
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %27 = getelementptr inbounds %struct.smp_ltk, ptr %9, i32 0, i32 9
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %43, label %31

31:                                               ; preds = %40, %26
  %32 = phi ptr [ %41, %40 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.blocked_key, ptr %32, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.blocked_key, ptr %32, i32 0, i32 3
  %38 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %37, ptr noundef dereferenceable(16) %27, i32 16) #24
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %31
  %41 = load volatile ptr, ptr %32, align 4
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31

43:                                               ; preds = %40, %26
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %50

44:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.1, ptr noundef %45, ptr noundef %14) #24
  br label %50

46:                                               ; preds = %22, %13, %8
  %47 = load volatile ptr, ptr %9, align 4
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %49, label %8

49:                                               ; preds = %46, %4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %50

50:                                               ; preds = %49, %44, %43
  %51 = phi ptr [ null, %44 ], [ null, %49 ], [ %9, %43 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_find_irk_by_rpa(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.smp_irk, ptr %6, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %4

12:                                               ; preds = %16, %4
  %13 = phi ptr [ %14, %16 ], [ %3, %4 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %3
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 5
  %18 = tail call zeroext i1 @smp_irk_matches(ptr noundef %0, ptr noundef %17, ptr noundef %1) #24
  br i1 %18, label %19, label %12

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %20, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  br label %21

21:                                               ; preds = %19, %8
  %22 = phi ptr [ %14, %19 ], [ %6, %8 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.smp_irk, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %41, label %29

29:                                               ; preds = %38, %24
  %30 = phi ptr [ %39, %38 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.blocked_key, ptr %30, i32 0, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.blocked_key, ptr %30, i32 0, i32 3
  %36 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %35, ptr noundef dereferenceable(16) %25, i32 16) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34, %29
  %39 = load volatile ptr, ptr %30, align 4
  %40 = icmp eq ptr %39, %26
  br i1 %40, label %41, label %29

41:                                               ; preds = %38, %24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %45

42:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %44 = getelementptr inbounds %struct.smp_irk, ptr %22, i32 0, i32 3
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.2, ptr noundef %43, ptr noundef %44) #24
  br label %45

45:                                               ; preds = %42, %41, %21, %12
  %46 = phi ptr [ null, %42 ], [ null, %21 ], [ %22, %41 ], [ null, %12 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smp_irk_matches(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_find_irk_by_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr [6 x i8], ptr %1, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, -65
  br i1 %8, label %9, label %49

9:                                                ; preds = %5, %3
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %47, label %13

13:                                               ; preds = %22, %9
  %14 = phi ptr [ %23, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 4
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 3
  %20 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %19, i32 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %13
  %23 = load volatile ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, %10
  br i1 %24, label %47, label %13

25:                                               ; preds = %18
  %26 = icmp eq ptr %14, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.smp_irk, ptr %14, i32 0, i32 5
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %44, label %32

32:                                               ; preds = %41, %27
  %33 = phi ptr [ %42, %41 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.blocked_key, ptr %33, i32 0, i32 2
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.blocked_key, ptr %33, i32 0, i32 3
  %39 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %38, ptr noundef dereferenceable(16) %28, i32 16) #24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %32
  %42 = load volatile ptr, ptr %33, align 4
  %43 = icmp eq ptr %42, %29
  br i1 %43, label %44, label %32

44:                                               ; preds = %41, %27
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %47

45:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str.2, ptr noundef %46, ptr noundef %19) #24
  br label %47

47:                                               ; preds = %45, %44, %25, %22, %9
  %48 = phi ptr [ null, %45 ], [ null, %25 ], [ %14, %44 ], [ null, %9 ], [ null, %22 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %49

49:                                               ; preds = %47, %5
  %50 = phi ptr [ %48, %47 ], [ null, %5 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_add_link_key(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 2
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %2, ptr noundef dereferenceable(6) %14, i32 6) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %9

17:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %18 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %37, label %22

22:                                               ; preds = %31, %17
  %23 = phi ptr [ %32, %31 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct.blocked_key, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.blocked_key, ptr %23, i32 0, i32 3
  %29 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %28, ptr noundef dereferenceable(16) %18, i32 16) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %22
  %32 = load volatile ptr, ptr %23, align 4
  %33 = icmp eq ptr %32, %19
  br i1 %33, label %37, label %22

34:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str, ptr noundef %35, ptr noundef %14) #24
  br label %42

36:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %42

37:                                               ; preds = %31, %17
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %38 = icmp eq ptr %11, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.link_key, ptr %11, i32 0, i32 3
  %41 = load i8, ptr %40, align 2
  br label %56

42:                                               ; preds = %37, %36, %34
  %43 = icmp eq ptr %1, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 22
  %46 = load i8, ptr %45, align 2
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i8 [ %46, %44 ], [ -1, %42 ]
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 40) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %113, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %8, align 4
  store ptr %53, ptr %50, align 8
  %54 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %8, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !25
  store volatile ptr %50, ptr %8, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %50, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %39
  %57 = phi ptr [ %11, %39 ], [ %50, %52 ]
  %58 = phi i8 [ %41, %39 ], [ %48, %52 ]
  %59 = icmp eq i8 %4, 6
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = icmp eq ptr %1, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 53
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, -1
  %66 = icmp eq i8 %58, -1
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %71, label %73

68:                                               ; preds = %60
  %69 = icmp eq i8 %58, -1
  %70 = select i1 %69, i8 0, i8 6
  br label %73

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 22
  store i8 0, ptr %72, align 2
  br label %73

73:                                               ; preds = %71, %68, %62, %56
  %74 = phi i8 [ 0, %71 ], [ 6, %62 ], [ %4, %56 ], [ %70, %68 ]
  %75 = getelementptr inbounds %struct.link_key, ptr %57, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %75, ptr noundef align 1 dereferenceable(6) %2, i32 6, i1 false) #24
  %76 = getelementptr inbounds %struct.link_key, ptr %57, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %76, ptr noundef align 1 dereferenceable(16) %3, i32 16, i1 false)
  %77 = getelementptr inbounds %struct.link_key, ptr %57, i32 0, i32 5
  store i8 %5, ptr %77, align 1
  %78 = icmp eq i8 %74, 6
  %79 = getelementptr inbounds %struct.link_key, ptr %57, i32 0, i32 3
  br i1 %78, label %82, label %80

80:                                               ; preds = %73
  store i8 %74, ptr %79, align 2
  %81 = icmp eq ptr %6, null
  br i1 %81, label %113, label %84

82:                                               ; preds = %73
  store i8 %58, ptr %79, align 2
  %83 = icmp eq ptr %6, null
  br i1 %83, label %113, label %88

84:                                               ; preds = %80
  %85 = icmp ult i8 %74, 3
  br i1 %85, label %110, label %86

86:                                               ; preds = %84
  %87 = icmp eq i8 %74, 3
  br i1 %87, label %110, label %90

88:                                               ; preds = %82
  %89 = icmp eq i8 %58, -1
  br i1 %89, label %110, label %90

90:                                               ; preds = %88, %86
  %91 = icmp eq ptr %1, null
  br i1 %91, label %110, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, -128
  br i1 %95, label %110, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 23
  %98 = load i8, ptr %97, align 1
  %99 = icmp ugt i8 %98, 1
  %100 = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 53
  %101 = load i8, ptr %100, align 1
  br i1 %99, label %102, label %107

102:                                              ; preds = %96
  %103 = icmp ugt i8 %101, 1
  %104 = and i8 %98, -2
  %105 = icmp eq i8 %104, 2
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %102, %96
  %108 = and i8 %101, -2
  %109 = icmp eq i8 %108, 2
  br label %110

110:                                              ; preds = %107, %102, %92, %90, %88, %86, %84
  %111 = phi i1 [ true, %84 ], [ false, %86 ], [ false, %88 ], [ true, %90 ], [ true, %92 ], [ true, %102 ], [ %109, %107 ]
  %112 = zext i1 %111 to i8
  store i8 %112, ptr %6, align 1
  br label %113

113:                                              ; preds = %110, %82, %80, %47
  %114 = phi ptr [ null, %47 ], [ %57, %110 ], [ %57, %80 ], [ %57, %82 ]
  ret ptr %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_add_ltk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i8 noundef zeroext %6, i16 noundef zeroext %7, i64 noundef %8) local_unnamed_addr #0 {
  %10 = icmp ne i8 %3, 1
  %11 = zext i1 %10 to i8
  %12 = tail call ptr @hci_find_ltk(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 56) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %16, align 8
  %21 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !25
  store volatile ptr %16, ptr %19, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %16, ptr %22, align 4
  br label %23

23:                                               ; preds = %18, %9
  %24 = phi ptr [ %16, %18 ], [ %12, %9 ]
  %25 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %25, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %26 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 3
  store i8 %2, ptr %26, align 2
  %27 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef align 1 dereferenceable(16) %5, i32 16, i1 false)
  %28 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 4
  store i8 %4, ptr %28, align 1
  %29 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 7
  store i16 %7, ptr %29, align 2
  %30 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 8
  store i64 %8, ptr %30, align 8
  %31 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 6
  store i8 %6, ptr %31, align 1
  %32 = getelementptr inbounds %struct.smp_ltk, ptr %24, i32 0, i32 5
  store i8 %3, ptr %32, align 8
  br label %33

33:                                               ; preds = %23, %14
  %34 = phi ptr [ %24, %23 ], [ null, %14 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_add_irk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call ptr @hci_find_irk_by_addr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 48) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.smp_irk, ptr %10, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %13, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %14 = getelementptr inbounds %struct.smp_irk, ptr %10, i32 0, i32 4
  store i8 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %10, align 8
  %17 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !25
  store volatile ptr %10, ptr %15, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %10, ptr %18, align 4
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %6, %5 ], [ %10, %12 ]
  %21 = getelementptr inbounds %struct.smp_irk, ptr %20, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %21, ptr noundef align 1 dereferenceable(16) %3, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.smp_irk, ptr %20, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %22, ptr noundef align 1 dereferenceable(6) %4, i32 6, i1 false) #24
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi ptr [ %20, %19 ], [ null, %8 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_link_key(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %31, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %13 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %32, label %17

17:                                               ; preds = %26, %12
  %18 = phi ptr [ %27, %26 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.blocked_key, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.blocked_key, ptr %18, i32 0, i32 3
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %23, ptr noundef dereferenceable(16) %13, i32 16) #24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17
  %27 = load volatile ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, %14
  br i1 %28, label %32, label %17

29:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str, ptr noundef %30, ptr noundef %9) #24
  br label %40

31:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %40

32:                                               ; preds = %26, %12
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %33 = icmp eq ptr %6, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %39 = getelementptr inbounds %struct.link_key, ptr %6, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %39, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %40

40:                                               ; preds = %34, %32, %31, %29
  %41 = phi i32 [ 0, %34 ], [ -2, %32 ], [ -2, %29 ], [ -2, %31 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_ltk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %33, label %7

7:                                                ; preds = %27, %3
  %8 = phi ptr [ %29, %27 ], [ %5, %3 ]
  %9 = phi i32 [ %28, %27 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct.smp_ltk, ptr %8, i32 0, i32 2
  %11 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %10, i32 6)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.smp_ltk, ptr %8, i32 0, i32 3
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, %2
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = icmp eq ptr %8, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.smp_ltk, ptr %8, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %24, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %25

25:                                               ; preds = %23, %17
  %26 = add i32 %9, 1
  br label %27

27:                                               ; preds = %25, %13, %7
  %28 = phi i32 [ %9, %7 ], [ %9, %13 ], [ %26, %25 ]
  %29 = load volatile ptr, ptr %8, align 4
  %30 = icmp eq ptr %29, %4
  br i1 %30, label %31, label %7

31:                                               ; preds = %27
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %3
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ -2, %33 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_remove_irk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %27, label %7

7:                                                ; preds = %24, %3
  %8 = phi ptr [ %25, %24 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.smp_irk, ptr %8, i32 0, i32 3
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.smp_irk, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = icmp eq ptr %8, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.smp_irk, ptr %8, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %23, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %24

24:                                               ; preds = %22, %16, %12, %7
  %25 = load volatile ptr, ptr %8, align 4
  %26 = icmp eq ptr %25, %4
  br i1 %26, label %27, label %7

27:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_bdaddr_is_paired(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i8 %2, label %36 [
    i8 0, label %4
    i8 1, label %48
  ]

4:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.link_key, ptr %8, i32 0, i32 2
  %12 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %11, i32 6) #24
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %15 = getelementptr inbounds %struct.link_key, ptr %8, i32 0, i32 4
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %31, label %19

19:                                               ; preds = %28, %14
  %20 = phi ptr [ %29, %28 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.blocked_key, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.blocked_key, ptr %20, i32 0, i32 3
  %26 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %25, ptr noundef dereferenceable(16) %15, i32 16) #24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %19
  %29 = load volatile ptr, ptr %20, align 4
  %30 = icmp eq ptr %29, %16
  br i1 %30, label %31, label %19

31:                                               ; preds = %28, %14
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %32 = icmp ne ptr %8, null
  br label %68

33:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_warn_ratelimited(ptr noundef nonnull @.str, ptr noundef %34, ptr noundef %11) #24
  br label %68

35:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %68

36:                                               ; preds = %3
  %37 = getelementptr [6 x i8], ptr %1, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, -64
  %40 = icmp eq i8 %39, 64
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = tail call ptr @hci_find_irk_by_rpa(ptr noundef %0, ptr noundef %1) #24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.smp_irk, ptr %42, i32 0, i32 3
  %46 = getelementptr inbounds %struct.smp_irk, ptr %42, i32 0, i32 4
  %47 = load i8, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %41, %36, %3
  %49 = phi i8 [ %47, %44 ], [ 1, %41 ], [ 0, %3 ], [ 1, %36 ]
  %50 = phi ptr [ %45, %44 ], [ %1, %41 ], [ %1, %3 ], [ %1, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %51 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %67, label %54

54:                                               ; preds = %64, %48
  %55 = phi ptr [ %65, %64 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.smp_ltk, ptr %55, i32 0, i32 3
  %57 = load i8, ptr %56, align 2
  %58 = icmp eq i8 %57, %49
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.smp_ltk, ptr %55, i32 0, i32 2
  %61 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %50, ptr noundef dereferenceable(6) %60, i32 6)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %68

64:                                               ; preds = %59, %54
  %65 = load volatile ptr, ptr %55, align 4
  %66 = icmp eq ptr %65, %51
  br i1 %66, label %67, label %54

67:                                               ; preds = %64, %48
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %68

68:                                               ; preds = %67, %63, %35, %33, %31
  %69 = phi i1 [ true, %63 ], [ false, %67 ], [ false, %33 ], [ false, %35 ], [ %32, %31 ]
  ret i1 %69
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_find_remote_oob_data(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 1
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %9, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.oob_data, ptr %8, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %12, %3
  %20 = phi ptr [ null, %3 ], [ null, %16 ], [ %8, %12 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_remote_oob_data_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #24
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_add_remote_oob_data(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %25, label %11

11:                                               ; preds = %20, %7
  %12 = phi ptr [ %21, %20 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.oob_data, ptr %12, i32 0, i32 1
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef dereferenceable(6) %13, i32 6) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.oob_data, ptr %12, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %8
  br i1 %22, label %25, label %11

23:                                               ; preds = %16
  %24 = icmp eq ptr %12, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %23, %20, %7
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 80) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.oob_data, ptr %27, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %30, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %31 = getelementptr inbounds %struct.oob_data, ptr %27, i32 0, i32 2
  store i8 %2, ptr %31, align 2
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %27, ptr %33, align 4
  store ptr %32, ptr %27, align 8
  %34 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %8, ptr %34, align 4
  store volatile ptr %27, ptr %8, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi ptr [ %12, %23 ], [ %27, %29 ]
  %37 = icmp ne ptr %3, null
  %38 = icmp ne ptr %4, null
  %39 = and i1 %37, %38
  %40 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 4
  br i1 %39, label %41, label %48

41:                                               ; preds = %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %40, ptr noundef nonnull align 1 dereferenceable(16) %3, i32 16, i1 false)
  %42 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef nonnull align 1 dereferenceable(16) %4, i32 16, i1 false)
  %43 = icmp ne ptr %5, null
  %44 = icmp ne ptr %6, null
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 3
  store i8 3, ptr %47, align 1
  br label %54

48:                                               ; preds = %35
  %49 = icmp ne ptr %5, null
  %50 = icmp ne ptr %6, null
  %51 = and i1 %49, %50
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %40, i8 0, i64 32, i1 false)
  %52 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 3
  br i1 %51, label %53, label %57

53:                                               ; preds = %48
  store i8 2, ptr %52, align 1
  br label %54

54:                                               ; preds = %53, %46
  %55 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %55, ptr noundef nonnull align 1 dereferenceable(16) %5, i32 16, i1 false)
  %56 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %56, ptr noundef nonnull align 1 dereferenceable(16) %6, i32 16, i1 false)
  br label %62

57:                                               ; preds = %48
  store i8 0, ptr %52, align 1
  %58 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %58, i8 0, i64 32, i1 false)
  br label %62

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 6
  %61 = getelementptr inbounds %struct.oob_data, ptr %36, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %60, i8 0, i64 32, i1 false)
  store i8 1, ptr %61, align 1
  br label %62

62:                                               ; preds = %59, %57, %54, %25
  %63 = phi i32 [ -12, %25 ], [ 0, %57 ], [ 0, %59 ], [ 0, %54 ]
  ret i32 %63
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_find_adv_instance(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_get_next_instance(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %6, %16
  %18 = select i1 %17, ptr %3, ptr %6
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %14, %12, %4
  %21 = phi ptr [ null, %12 ], [ %19, %14 ], [ null, %4 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_adv_instance(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  %16 = load i8, ptr %15, align 8
  %17 = icmp eq i8 %16, %1
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %24 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %23) #24
  store i16 0, ptr %19, align 2
  br label %25

25:                                               ; preds = %22, %18
  store i8 0, ptr %15, align 8
  br label %26

26:                                               ; preds = %25, %14
  %27 = getelementptr inbounds %struct.adv_info, ptr %6, i32 0, i32 17
  %28 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %27) #24
  %29 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef nonnull %6) #24
  %33 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 214
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %26, %12, %4
  %37 = phi i32 [ 0, %26 ], [ -2, %12 ], [ -2, %4 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_adv_instances_set_rpa_expired(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 16
  store i8 %3, ptr %10, align 2
  %11 = icmp eq ptr %9, %4
  br i1 %11, label %12, label %7

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_adv_instances_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %7 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %6) #24
  store i16 0, ptr %2, align 2
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %22, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.adv_info, ptr %13, i32 0, i32 17
  %16 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %15) #24
  %17 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef %13) #24
  %21 = icmp eq ptr %14, %9
  br i1 %21, label %22, label %12

22:                                               ; preds = %12, %8
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 214
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 0, ptr %24, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_add_adv_instance(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i16 noundef zeroext %3, ptr nocapture noundef readonly %4, i16 noundef zeroext %5, ptr nocapture noundef readonly %6, i16 noundef zeroext %7, i16 noundef zeroext %8, i8 noundef signext %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 3
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, %1
  br i1 %21, label %22, label %14

22:                                               ; preds = %18
  %23 = icmp eq ptr %16, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(251) %25, i8 0, i32 251, i1 false)
  %26 = getelementptr inbounds %struct.adv_info, ptr %16, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(251) %26, i8 0, i32 251, i1 false)
  br label %50

27:                                               ; preds = %22, %14
  %28 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 214
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 25
  %31 = load i8, ptr %30, align 8
  %32 = zext i8 %31 to i32
  %33 = icmp uge i32 %29, %32
  %34 = icmp eq i8 %1, 0
  %35 = or i1 %34, %33
  %36 = icmp ult i8 %31, %1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %82, label %38

38:                                               ; preds = %27
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 592) #25
  %41 = icmp eq ptr %40, null
  br i1 %41, label %82, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.adv_info, ptr %40, i32 0, i32 2
  store i8 1, ptr %43, align 1
  %44 = getelementptr inbounds %struct.adv_info, ptr %40, i32 0, i32 3
  store i8 %1, ptr %44, align 2
  %45 = load ptr, ptr %13, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %40, ptr %46, align 4
  store ptr %45, ptr %40, align 8
  %47 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %13, ptr %47, align 4
  store volatile ptr %40, ptr %13, align 4
  %48 = load i32, ptr %28, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %28, align 4
  br label %50

50:                                               ; preds = %42, %24
  %51 = phi ptr [ %16, %24 ], [ %40, %42 ]
  %52 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 4
  store i32 %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 8
  store i16 %3, ptr %53, align 2
  %54 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 10
  store i16 %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 13
  store i32 %10, ptr %55, align 4
  %56 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 14
  store i32 %11, ptr %56, align 4
  %57 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 12
  store i8 %9, ptr %57, align 1
  %58 = icmp eq i16 %3, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 9
  %61 = zext i16 %3 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %60, ptr align 1 %4, i32 %61, i1 false)
  br label %62

62:                                               ; preds = %59, %50
  %63 = icmp eq i16 %5, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 11
  %66 = zext i16 %5 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %65, ptr align 1 %6, i32 %66, i1 false)
  br label %67

67:                                               ; preds = %64, %62
  %68 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 5
  store i16 %7, ptr %68, align 4
  %69 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 6
  store i16 %7, ptr %69, align 2
  %70 = icmp eq i16 %8, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 94
  %73 = load i16, ptr %72, align 2
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i16 [ %73, %71 ], [ %8, %67 ]
  %76 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 7
  store i16 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 17
  store i32 -32, ptr %77, align 4
  %78 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 17, i32 0, i32 1
  store volatile ptr %78, ptr %78, align 4
  %79 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 17, i32 0, i32 1, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 17, i32 0, i32 2
  store ptr @adv_instance_rpa_expired, ptr %80, align 4
  %81 = getelementptr inbounds %struct.adv_info, ptr %51, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %81, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  br label %82

82:                                               ; preds = %74, %38, %27
  %83 = phi i32 [ 0, %74 ], [ -75, %27 ], [ -12, %38 ]
  ret i32 %83
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @adv_instance_rpa_expired(ptr nocapture noundef writeonly %0) #12 {
  %2 = getelementptr i8, ptr %0, i32 -2
  store i8 1, ptr %2, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_set_adv_instance_data(ptr noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef readonly %3, i16 noundef zeroext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #8 {
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = icmp eq i16 %2, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 9
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(251) %21, i8 0, i32 251, i1 false)
  %22 = zext i16 %2 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %21, ptr align 1 %3, i32 %22, i1 false)
  %23 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 8
  store i16 %2, ptr %23, align 2
  br label %24

24:                                               ; preds = %20, %18
  %25 = icmp eq i16 %4, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 11
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(251) %27, i8 0, i32 251, i1 false)
  %28 = zext i16 %4 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %27, ptr align 1 %5, i32 %28, i1 false)
  %29 = getelementptr inbounds %struct.adv_info, ptr %10, i32 0, i32 10
  store i16 %4, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %24, %16, %8
  %31 = phi i32 [ -2, %16 ], [ 0, %26 ], [ 0, %24 ], [ -2, %8 ]
  ret i32 %31
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_adv_instance_flags(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #13 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 24, i32 25
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 268435456
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = or i32 %9, 4
  br label %35

15:                                               ; preds = %4
  %16 = load volatile i32, ptr %5, align 4
  %17 = lshr i32 %16, 26
  %18 = and i32 %17, 2
  %19 = or i32 %18, %9
  br label %35

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %22

22:                                               ; preds = %26, %20
  %23 = phi ptr [ %21, %20 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %21
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.adv_info, ptr %24, i32 0, i32 3
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, %1
  br i1 %29, label %30, label %22

30:                                               ; preds = %26
  %31 = icmp eq ptr %24, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.adv_info, ptr %24, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %30, %22, %15, %13
  %36 = phi i32 [ %34, %32 ], [ %14, %13 ], [ %19, %15 ], [ 0, %30 ], [ 0, %22 ]
  ret i32 %36
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_adv_instance_is_scannable(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = icmp eq ptr %8, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.adv_info, ptr %8, i32 0, i32 10
  %23 = load i16, ptr %22, align 4
  %24 = icmp ne i16 %23, 0
  br label %25

25:                                               ; preds = %21, %16, %14, %6, %2
  %26 = phi i1 [ %24, %21 ], [ true, %2 ], [ false, %14 ], [ true, %16 ], [ false, %6 ]
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_adv_monitors_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  store i32 0, ptr %2, align 4
  %4 = call ptr @idr_get_next(ptr noundef %3, ptr noundef nonnull %2) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 219
  br label %8

8:                                                ; preds = %34, %6
  %9 = phi ptr [ %4, %6 ], [ %37, %34 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %14, %12 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  call void @kfree(ptr noundef %13) #24
  %18 = icmp eq ptr %14, %9
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %8
  %20 = getelementptr inbounds %struct.adv_monitor, ptr %9, i32 0, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = zext i16 %21 to i32
  %25 = call ptr @idr_remove(ptr noundef %3, i32 noundef %24) #24
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.adv_monitor, ptr %9, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %7, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %7, align 4
  %33 = load i16, ptr %20, align 4
  call void @mgmt_adv_monitor_removed(ptr noundef %0, i16 noundef zeroext %33) #24
  br label %34

34:                                               ; preds = %30, %26
  call void @kfree(ptr noundef nonnull %9) #24
  %35 = load i32, ptr %2, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %2, align 4
  %37 = call ptr @idr_get_next(ptr noundef %3, ptr noundef nonnull %2) #24
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8

39:                                               ; preds = %34, %1
  call void @idr_destroy(ptr noundef %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_free_adv_monitor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  tail call void @kfree(ptr noundef %8) #24
  %13 = icmp eq ptr %9, %1
  br i1 %13, label %14, label %7

14:                                               ; preds = %7, %4
  %15 = getelementptr inbounds %struct.adv_monitor, ptr %1, i32 0, i32 2
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %20 = zext i16 %16 to i32
  %21 = tail call ptr @idr_remove(ptr noundef %19, i32 noundef %20) #24
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.adv_monitor, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 219
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  %30 = load i16, ptr %15, align 4
  tail call void @mgmt_adv_monitor_removed(ptr noundef %0, i16 noundef zeroext %30) #24
  br label %31

31:                                               ; preds = %26, %22
  tail call void @kfree(ptr noundef nonnull %1) #24
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_adv_monitor_removed(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_add_adv_patterns_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @mgmt_add_adv_patterns_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) #24
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_add_adv_patterns_monitor_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_remove_adv_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @mgmt_remove_adv_monitor_complete(ptr noundef %0, i8 noundef zeroext %1) #24
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_remove_adv_monitor_complete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_add_adv_monitor(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i32 0, ptr %2, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 -22, ptr %2, align 4
  br label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %8 = tail call i32 @idr_alloc(ptr noundef %7, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 33, i32 noundef 3264) #24
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 %8, ptr %2, align 4
  br label %25

11:                                               ; preds = %6
  %12 = trunc i32 %8 to i16
  %13 = getelementptr inbounds %struct.adv_monitor, ptr %1, i32 0, i32 2
  store i16 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #24
  br label %25

25:                                               ; preds = %23, %18, %11, %10, %5
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_get_adv_monitor_offload_ext(ptr nocapture readnone %0) local_unnamed_addr #14 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_remove_single_adv_monitor(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %5 = zext i16 %1 to i32
  %6 = tail call ptr @idr_find(ptr noundef %4, i32 noundef %5) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store i32 -22, ptr %2, align 4
  br label %11

9:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  tail call void @hci_free_adv_monitor(ptr noundef %0, ptr noundef nonnull %6) #24
  store i32 0, ptr %2, align 4
  %10 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #24
  br label %11

11:                                               ; preds = %9, %8
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_remove_all_adv_monitor(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  store i32 0, ptr %1, align 4
  %5 = call ptr @idr_get_next(ptr noundef %4, ptr noundef nonnull %3) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  store i32 0, ptr %1, align 4
  call void @hci_free_adv_monitor(ptr noundef %0, ptr noundef nonnull %8) #24
  store i32 0, ptr %1, align 4
  %9 = call ptr @idr_get_next(ptr noundef %4, ptr noundef nonnull %3) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7

11:                                               ; preds = %7
  %12 = call i32 @hci_update_passive_scan(ptr noundef %0) #24
  br label %13

13:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @hci_is_adv_monitoring(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  %7 = tail call i32 @radix_tree_tagged(ptr noundef %6, i32 noundef 0) #24
  %8 = icmp eq i32 %7, 0
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ true, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_bdaddr_list_lookup(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bdaddr_list, ptr %7, i32 0, i32 1
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %8, ptr noundef dereferenceable(6) %1, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %7, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %3
  %19 = phi ptr [ null, %3 ], [ null, %15 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_bdaddr_list_lookup_with_irk(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %7, i32 0, i32 1
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %8, ptr noundef dereferenceable(6) %1, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %7, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %3
  %19 = phi ptr [ null, %3 ], [ null, %15 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_bdaddr_list_lookup_with_flags(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %7, i32 0, i32 1
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %8, ptr noundef dereferenceable(6) %1, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %7, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %3
  %19 = phi ptr [ null, %3 ], [ null, %15 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_bdaddr_list_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %5) #24
  %10 = icmp eq ptr %6, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_add(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %5 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %24, label %10

10:                                               ; preds = %19, %7
  %11 = phi ptr [ %20, %19 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.bdaddr_list, ptr %11, i32 0, i32 1
  %13 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %12, ptr noundef dereferenceable(6) %1, i32 6) #24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bdaddr_list, ptr %11, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, %2
  br i1 %18, label %22, label %19

19:                                               ; preds = %15, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %24, label %10

22:                                               ; preds = %15
  %23 = icmp eq ptr %11, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %22, %19, %7
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 16) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bdaddr_list, ptr %26, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %29, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %30 = getelementptr inbounds %struct.bdaddr_list, ptr %26, i32 0, i32 2
  store i8 %2, ptr %30, align 2
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %26, ptr %32, align 4
  store ptr %31, ptr %26, align 8
  %33 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %0, ptr %33, align 4
  store volatile ptr %26, ptr %0, align 4
  br label %34

34:                                               ; preds = %28, %24, %22, %3
  %35 = phi i32 [ 0, %28 ], [ -9, %3 ], [ -17, %22 ], [ -12, %24 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_add_with_irk(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef readonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %7 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %26, label %12

12:                                               ; preds = %21, %9
  %13 = phi ptr [ %22, %21 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.bdaddr_list, ptr %13, i32 0, i32 1
  %15 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %14, ptr noundef dereferenceable(6) %1, i32 6) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.bdaddr_list, ptr %13, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %26, label %12

24:                                               ; preds = %17
  %25 = icmp eq ptr %13, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %24, %21, %9
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 48) #25
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %28, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %31, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %32 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %28, i32 0, i32 2
  store i8 %2, ptr %32, align 2
  %33 = icmp eq ptr %3, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %28, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %35, ptr noundef nonnull align 1 dereferenceable(16) %3, i32 16, i1 false)
  br label %36

36:                                               ; preds = %34, %30
  %37 = icmp eq ptr %4, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %28, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %39, ptr noundef nonnull align 1 dereferenceable(16) %4, i32 16, i1 false)
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %28, ptr %42, align 4
  store ptr %41, ptr %28, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %0, ptr %43, align 4
  store volatile ptr %28, ptr %0, align 4
  br label %44

44:                                               ; preds = %40, %26, %24, %5
  %45 = phi i32 [ 0, %40 ], [ -9, %5 ], [ -17, %24 ], [ -12, %26 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_add_with_flags(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %6 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %25, label %11

11:                                               ; preds = %20, %8
  %12 = phi ptr [ %21, %20 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.bdaddr_list, ptr %12, i32 0, i32 1
  %14 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %13, ptr noundef dereferenceable(6) %1, i32 6) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bdaddr_list, ptr %12, i32 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, %2
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %11
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %25, label %11

23:                                               ; preds = %16
  %24 = icmp eq ptr %12, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %23, %20, %8
  %26 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 20) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %27, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %30, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %31 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %27, i32 0, i32 2
  store i8 %2, ptr %31, align 2
  %32 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %27, i32 0, i32 3
  store i32 %3, ptr %32, align 8
  %33 = getelementptr %struct.bdaddr_list_with_flags, ptr %27, i32 1
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %27, ptr %35, align 4
  store ptr %34, ptr %27, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %0, ptr %36, align 4
  store volatile ptr %27, ptr %0, align 4
  br label %37

37:                                               ; preds = %29, %25, %23, %4
  %38 = phi i32 [ 0, %29 ], [ -9, %4 ], [ -17, %23 ], [ -12, %25 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_del(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %5 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %6, label %9, label %17

9:                                                ; preds = %3
  br i1 %8, label %37, label %10

10:                                               ; preds = %10, %9
  %11 = phi ptr [ %12, %10 ], [ %7, %9 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @kfree(ptr noundef %11) #24
  %16 = icmp eq ptr %12, %0
  br i1 %16, label %37, label %10

17:                                               ; preds = %3
  br i1 %8, label %37, label %18

18:                                               ; preds = %27, %17
  %19 = phi ptr [ %28, %27 ], [ %7, %17 ]
  %20 = getelementptr inbounds %struct.bdaddr_list, ptr %19, i32 0, i32 1
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %20, ptr noundef dereferenceable(6) %1, i32 6) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bdaddr_list, ptr %19, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %37, label %18

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef nonnull %19) #24
  br label %37

37:                                               ; preds = %32, %30, %27, %17, %10, %9
  %38 = phi i32 [ 0, %32 ], [ -2, %30 ], [ 0, %9 ], [ -2, %17 ], [ 0, %10 ], [ -2, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_del_with_irk(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %5 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %6, label %9, label %17

9:                                                ; preds = %3
  br i1 %8, label %37, label %10

10:                                               ; preds = %10, %9
  %11 = phi ptr [ %12, %10 ], [ %7, %9 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @kfree(ptr noundef %11) #24
  %16 = icmp eq ptr %12, %0
  br i1 %16, label %37, label %10

17:                                               ; preds = %3
  br i1 %8, label %37, label %18

18:                                               ; preds = %27, %17
  %19 = phi ptr [ %28, %27 ], [ %7, %17 ]
  %20 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %19, i32 0, i32 1
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %20, ptr noundef dereferenceable(6) %1, i32 6) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bdaddr_list_with_irk, ptr %19, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %37, label %18

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef nonnull %19) #24
  br label %37

37:                                               ; preds = %32, %30, %27, %17, %10, %9
  %38 = phi i32 [ 0, %32 ], [ -2, %30 ], [ 0, %9 ], [ -2, %17 ], [ 0, %10 ], [ -2, %27 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_bdaddr_list_del_with_flags(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %5 = call i32 @bcmp(ptr noundef dereferenceable(6) %1, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, %0
  br i1 %6, label %9, label %17

9:                                                ; preds = %3
  br i1 %8, label %37, label %10

10:                                               ; preds = %10, %9
  %11 = phi ptr [ %12, %10 ], [ %7, %9 ]
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  tail call void @kfree(ptr noundef %11) #24
  %16 = icmp eq ptr %12, %0
  br i1 %16, label %37, label %10

17:                                               ; preds = %3
  br i1 %8, label %37, label %18

18:                                               ; preds = %27, %17
  %19 = phi ptr [ %28, %27 ], [ %7, %17 ]
  %20 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %19, i32 0, i32 1
  %21 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %20, ptr noundef dereferenceable(6) %1, i32 6) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.bdaddr_list_with_flags, ptr %19, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, %2
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %37, label %18

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %19, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @kfree(ptr noundef nonnull %19) #24
  br label %37

37:                                               ; preds = %32, %30, %27, %17, %10, %9
  %38 = phi i32 [ 0, %32 ], [ -2, %30 ], [ 0, %9 ], [ -2, %17 ], [ 0, %10 ], [ -2, %27 ]
  ret i32 %38
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_conn_params_lookup(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %12, %3
  %20 = phi ptr [ null, %3 ], [ null, %16 ], [ %8, %12 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @hci_pend_le_action_lookup(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %20, label %6

6:                                                ; preds = %15, %3
  %7 = phi ptr [ %16, %15 ], [ %4, %3 ]
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %8, ptr noundef dereferenceable(6) %1, i32 6)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 14
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, %2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %20, label %6

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 -8
  br label %20

20:                                               ; preds = %18, %15, %3
  %21 = phi ptr [ %19, %18 ], [ null, %3 ], [ null, %15 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_conn_params_add(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %21, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %21, label %7

19:                                               ; preds = %12
  %20 = icmp eq ptr %8, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %19, %16, %3
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 52) #25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, ptr noundef %26) #24
  br label %48

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(6) %28, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false) #24
  %29 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 3
  store i8 %2, ptr %29, align 2
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %23, ptr %31, align 4
  store ptr %30, ptr %23, align 8
  %32 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %4, ptr %32, align 4
  store volatile ptr %23, ptr %4, align 4
  %33 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 1
  store volatile ptr %33, ptr %33, align 8
  %34 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 57
  %36 = load i16, ptr %35, align 2
  %37 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 4
  store i16 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 58
  %39 = load i16, ptr %38, align 8
  %40 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 5
  store i16 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 59
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 6
  store i16 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 60
  %45 = load i16, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 7
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.hci_conn_params, ptr %23, i32 0, i32 8
  store i32 0, ptr %47, align 8
  br label %48

48:                                               ; preds = %27, %25, %19
  %49 = phi ptr [ %23, %27 ], [ null, %25 ], [ %8, %19 ]
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_conn_params_del(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %23, label %7

7:                                                ; preds = %16, %3
  %8 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 2
  %10 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %9, ptr noundef dereferenceable(6) %1, i32 6) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hci_conn_params, ptr %8, i32 0, i32 3
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, %2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %23, label %7

19:                                               ; preds = %12
  %20 = icmp eq ptr %8, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  tail call fastcc void @hci_conn_params_free(ptr noundef nonnull %8)
  %22 = tail call i32 @hci_update_passive_scan(ptr noundef %0) #24
  br label %23

23:                                               ; preds = %21, %19, %16, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_conn_params_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_conn_params, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #24, !srcloc !9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #24, !srcloc !27
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !28
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %32 [
    i8 1, label %13
    i8 -128, label %13
    i8 -127, label %28
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 60
  %15 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %14) #24
  %16 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 12
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 31
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 16
  %24 = load i8, ptr %23, align 1, !range !29
  %25 = xor i8 %24, 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %22, %26
  br label %32

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 31
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  br label %32

32:                                               ; preds = %28, %19, %13, %10
  %33 = phi i32 [ %31, %28 ], [ %27, %19 ], [ 0, %13 ], [ 0, %10 ]
  %34 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 58
  %35 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %34) #24
  %36 = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 65
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.hci_dev, ptr %37, i32 0, i32 138
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %39, ptr noundef %34, i32 noundef %33) #24
  br label %41

41:                                               ; preds = %32, %5
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.hci_conn, ptr %42, i32 0, i32 63
  tail call void @put_device(ptr noundef %43) #24
  br label %44

44:                                               ; preds = %41, %1
  %45 = getelementptr inbounds %struct.hci_conn_params, ptr %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.hci_conn_params, ptr %0, i32 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %45, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  tail call void @kfree(ptr noundef %0) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_conn_params_clear_disabled(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %22, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %7, %20 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_conn_params, ptr %6, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hci_conn_params, ptr %6, i32 0, i32 10
  %13 = load i8, ptr %12, align 4, !range !29
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 5, ptr %8, align 4
  br label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %7, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  tail call void @kfree(ptr noundef %6) #24
  br label %20

20:                                               ; preds = %16, %15, %5
  %21 = icmp eq ptr %7, %2
  br i1 %21, label %22, label %5

22:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @hci_copy_identity_address(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #15 {
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = getelementptr %struct.hci_dev, ptr %0, i32 0, i32 206, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %12 = call i32 @bcmp(ptr noundef dereferenceable(6) %11, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = load volatile i32, ptr %6, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i64 6, i1 false)
  %20 = call i32 @bcmp(ptr noundef dereferenceable(6) %19, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %10, %3
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 11
  br label %24

24:                                               ; preds = %22, %18, %14
  %25 = phi ptr [ %23, %22 ], [ %11, %18 ], [ %11, %14 ]
  %26 = phi i8 [ 1, %22 ], [ 0, %18 ], [ 0, %14 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef align 1 dereferenceable(6) %25, i32 6, i1 false) #24
  store i8 %26, ptr %2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hci_alloc_dev_priv(i32 noundef %0) #0 {
  %2 = add i32 %0, 3848
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %156, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 98
  store i16 56, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 99
  store i16 1, ptr %7, align 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 101
  store i16 -32768, ptr %8, align 2
  %9 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 34
  store i8 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 37
  store i8 3, ptr %10, align 2
  %11 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 31
  store i16 -1, ptr %11, align 2
  %12 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 38
  store i8 127, ptr %12, align 1
  %13 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 208
  store i8 127, ptr %13, align 64
  %14 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 214
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 215
  store i8 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 216
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 79
  store i16 300, ptr %17, align 16
  %18 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 80
  store i16 500, ptr %18, align 2
  %19 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 81
  store i8 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 104
  store i16 800, ptr %20, align 2
  %21 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 103
  store i16 80, ptr %21, align 64
  %22 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 43
  store i8 7, ptr %22, align 1
  %23 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 44
  store i16 2048, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 45
  store i16 2048, ptr %24, align 2
  %25 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 47
  store i16 96, ptr %25, align 2
  %26 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 48
  store i16 48, ptr %26, align 4
  %27 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 49
  store i16 1024, ptr %27, align 2
  %28 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 50
  store i16 18, ptr %28, align 8
  %29 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 51
  store i16 18, ptr %29, align 2
  %30 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 52
  store i16 18, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 53
  store i16 96, ptr %31, align 2
  %32 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 54
  store i16 48, ptr %32, align 32
  %33 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 55
  store i16 96, ptr %33, align 2
  %34 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 56
  store i16 96, ptr %34, align 4
  %35 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 57
  store i16 24, ptr %35, align 2
  %36 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 58
  store i16 40, ptr %36, align 8
  %37 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 59
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 60
  store i16 42, ptr %38, align 4
  %39 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 61
  store i16 27, ptr %39, align 2
  %40 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 62
  store i16 328, ptr %40, align 16
  %41 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 63
  store i16 27, ptr %41, align 2
  %42 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 64
  store i16 328, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 65
  store i16 27, ptr %43, align 2
  %44 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 66
  store i16 328, ptr %44, align 8
  %45 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 67
  store i8 16, ptr %45, align 2
  %46 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 68
  store i8 7, ptr %46, align 1
  %47 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 136
  store i8 1, ptr %47, align 8
  %48 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 137
  store i8 1, ptr %48, align 1
  %49 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 25
  store i8 5, ptr %49, align 8
  %50 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 94
  store i16 2, ptr %50, align 2
  %51 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 95
  store i16 400, ptr %51, align 16
  %52 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 96
  store i8 127, ptr %52, align 2
  %53 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 97
  store i8 127, ptr %53, align 1
  %54 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 221
  store i32 900, ptr %54, align 32
  %55 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 69
  store i16 5120, ptr %55, align 4
  %56 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 70
  store i16 1000, ptr %56, align 2
  %57 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 71
  store i16 3000, ptr %57, align 64
  %58 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 72
  store i16 3000, ptr %58, align 2
  %59 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 73
  store i8 7, ptr %59, align 4
  %60 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 86
  store i8 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 87
  store i16 2048, ptr %61, align 32
  %62 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 88
  store i16 18, ptr %62, align 2
  %63 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %63, ptr noundef nonnull @.str.4, ptr noundef nonnull @hci_alloc_dev_priv.__key) #24
  %64 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 163
  tail call void @__mutex_init(ptr noundef %64, ptr noundef nonnull @.str.6, ptr noundef nonnull @hci_alloc_dev_priv.__key.5) #24
  %65 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 184
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 184, i32 1
  store ptr %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 185
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 185, i32 1
  store ptr %67, ptr %68, align 16
  %69 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 186
  store volatile ptr %69, ptr %69, align 4
  %70 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 186, i32 1
  store ptr %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 187
  store volatile ptr %71, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 187, i32 1
  store ptr %71, ptr %72, align 64
  %73 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 188
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 188, i32 1
  store ptr %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 189
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 189, i32 1
  store ptr %75, ptr %76, align 16
  %77 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 190
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 190, i32 1
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 191
  store volatile ptr %79, ptr %79, align 4
  %80 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 191, i32 1
  store ptr %79, ptr %80, align 32
  %81 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 192
  store volatile ptr %81, ptr %81, align 4
  %82 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 192, i32 1
  store ptr %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 193
  store volatile ptr %83, ptr %83, align 4
  %84 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 193, i32 1
  store ptr %83, ptr %84, align 16
  %85 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 194
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 194, i32 1
  store ptr %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 195
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 195, i32 1
  store ptr %87, ptr %88, align 64
  %89 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 196
  store volatile ptr %89, ptr %89, align 4
  %90 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 196, i32 1
  store ptr %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183
  store volatile ptr %91, ptr %91, align 8
  %92 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 183, i32 0, i32 1
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 213
  store volatile ptr %93, ptr %93, align 4
  %94 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 213, i32 1
  store ptr %93, ptr %94, align 64
  %95 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 197
  store volatile ptr %95, ptr %95, align 4
  %96 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 197, i32 1
  store ptr %95, ptr %96, align 16
  %97 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 198
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 198, i32 1
  store ptr %97, ptr %98, align 8
  %99 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 152
  store i32 -32, ptr %99, align 32
  %100 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 152, i32 1
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 152, i32 1, i32 1
  store ptr %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 152, i32 2
  store ptr @hci_rx_work, ptr %102, align 4
  %103 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 153
  store i32 -32, ptr %103, align 16
  %104 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 153, i32 1
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 153, i32 1, i32 1
  store ptr %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 153, i32 2
  store ptr @hci_cmd_work, ptr %106, align 4
  %107 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 154
  store i32 -32, ptr %107, align 64
  %108 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 154, i32 1
  store volatile ptr %108, ptr %108, align 4
  %109 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 154, i32 1, i32 1
  store ptr %108, ptr %109, align 8
  %110 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 154, i32 2
  store ptr @hci_tx_work, ptr %110, align 4
  %111 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 140
  store i32 -32, ptr %111, align 4
  %112 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 140, i32 1
  store volatile ptr %112, ptr %112, align 8
  %113 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 140, i32 1, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 140, i32 2
  store ptr @hci_power_on, ptr %114, align 16
  %115 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 142
  store i32 -32, ptr %115, align 32
  %116 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 142, i32 1
  store volatile ptr %116, ptr %116, align 4
  %117 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 142, i32 1, i32 1
  store ptr %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 142, i32 2
  store ptr @hci_error_reset, ptr %118, align 4
  tail call void @hci_cmd_sync_init(ptr noundef nonnull %3) #24
  %119 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 141
  store i32 -32, ptr %119, align 4
  %120 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 141, i32 0, i32 1
  store volatile ptr %120, ptr %120, align 8
  %121 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 141, i32 0, i32 1, i32 1
  store ptr %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 141, i32 0, i32 2
  store ptr @hci_power_off, ptr %122, align 64
  %123 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 141, i32 1
  tail call void @init_timer_key(ptr noundef %123, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  %124 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 159
  %125 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 159, i32 2
  store i32 0, ptr %125, align 4
  store ptr %124, ptr %124, align 8
  %126 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 159, i32 0, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  %127 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 159, i32 1
  store i32 0, ptr %127, align 16
  %128 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 161
  %129 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 161, i32 2
  store i32 0, ptr %129, align 4
  store ptr %128, ptr %128, align 8
  %130 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 161, i32 0, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  %131 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 161, i32 1
  store i32 0, ptr %131, align 16
  %132 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 160
  %133 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 160, i32 2
  store i32 0, ptr %133, align 4
  store ptr %132, ptr %132, align 8
  %134 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 160, i32 0, i32 0, i32 1
  store ptr %132, ptr %134, align 4
  %135 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 160, i32 1
  store i32 0, ptr %135, align 32
  %136 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 164
  tail call void @__init_waitqueue_head(ptr noundef %136, ptr noundef nonnull @.str.8, ptr noundef nonnull @hci_alloc_dev_priv.__key.7) #24
  %137 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 150
  store i32 -32, ptr %137, align 8
  %138 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 150, i32 0, i32 1
  store volatile ptr %138, ptr %138, align 4
  %139 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 150, i32 0, i32 1, i32 1
  store ptr %138, ptr %139, align 16
  %140 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 150, i32 0, i32 2
  store ptr @hci_cmd_timeout, ptr %140, align 4
  %141 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 150, i32 1
  tail call void @init_timer_key(ptr noundef %141, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  %142 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 151
  store i32 -32, ptr %142, align 4
  %143 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 151, i32 0, i32 1
  store volatile ptr %143, ptr %143, align 8
  %144 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 151, i32 0, i32 1, i32 1
  store ptr %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 151, i32 0, i32 2
  store ptr @hci_ncmd_timeout, ptr %145, align 64
  %146 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 151, i32 1
  tail call void @init_timer_key(ptr noundef %146, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #24
  tail call void @hci_request_setup(ptr noundef nonnull %3) #24
  tail call void @hci_init_sysfs(ptr noundef nonnull %3) #24
  %147 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 1
  store i32 0, ptr %147, align 4
  %148 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 2
  store volatile ptr %148, ptr %148, align 8
  %149 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 2, i32 1
  store ptr %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 3
  store volatile ptr %150, ptr %150, align 64
  %151 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 3, i32 1
  store ptr %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 4
  store volatile ptr %152, ptr %152, align 8
  %153 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 4, i32 1
  store ptr %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 12
  store i8 1, ptr %154, align 64
  %155 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 170, i32 15
  store i8 127, ptr %155, align 1
  br label %156

156:                                              ; preds = %5, %1
  %157 = phi ptr [ %3, %5 ], [ null, %1 ]
  ret ptr %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_rx_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1952
  %3 = getelementptr i8, ptr %0, i32 168
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %92, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 612
  %8 = getelementptr i8, ptr %0, i32 1108
  %9 = getelementptr i8, ptr %0, i32 -1916
  %10 = getelementptr i8, ptr %0, i32 600
  %11 = getelementptr i8, ptr %0, i32 -1944
  %12 = getelementptr i8, ptr %0, i32 424
  %13 = getelementptr i8, ptr %0, i32 -1924
  %14 = getelementptr i8, ptr %0, i32 592
  br label %15

15:                                               ; preds = %29, %6
  %16 = phi ptr [ %4, %6 ], [ %30, %29 ]
  tail call void @hci_send_to_monitor(ptr noundef %2, ptr noundef nonnull %16) #24
  %17 = load volatile i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @hci_send_to_sock(ptr noundef %2, ptr noundef nonnull %16) #24
  br label %20

20:                                               ; preds = %19, %15
  %21 = load volatile i32, ptr %8, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %9, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #24
  br label %29

29:                                               ; preds = %91, %89, %84, %63, %61, %41, %39, %28
  %30 = tail call ptr @skb_dequeue(ptr noundef %3) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %92, label %15

32:                                               ; preds = %24, %20
  %33 = load volatile i32, ptr %9, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3
  %37 = load i8, ptr %36, align 8
  br i1 %35, label %40, label %38

38:                                               ; preds = %32
  switch i8 %37, label %91 [
    i8 2, label %39
    i8 3, label %39
    i8 5, label %39
    i8 4, label %41
  ]

39:                                               ; preds = %38, %38, %38
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #24
  br label %29

40:                                               ; preds = %32
  switch i8 %37, label %91 [
    i8 4, label %41
    i8 2, label %42
    i8 3, label %65
  ]

41:                                               ; preds = %40, %38
  tail call void @hci_event_packet(ptr noundef %2, ptr noundef nonnull %16) #24
  br label %29

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = tail call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 4) #24
  %46 = load i16, ptr %44, align 1
  %47 = and i16 %46, 4095
  %48 = load i32, ptr %14, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %14, align 4
  tail call void @mutex_lock(ptr noundef %11) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  br label %50

50:                                               ; preds = %54, %42
  %51 = phi ptr [ %12, %42 ], [ %52, %54 ]
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %12
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 11
  %56 = load i16, ptr %55, align 2
  %57 = icmp eq i16 %56, %47
  br i1 %57, label %59, label %50

58:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @mutex_unlock(ptr noundef %11) #24
  br label %63

59:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @mutex_unlock(ptr noundef %11) #24
  %60 = icmp eq ptr %52, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = lshr i16 %46, 12
  tail call void @hci_conn_enter_active_mode(ptr noundef nonnull %52, i8 noundef zeroext 0) #24
  tail call void @l2cap_recv_acldata(ptr noundef nonnull %52, ptr noundef nonnull %16, i16 noundef zeroext %62) #24
  br label %29

63:                                               ; preds = %59, %58
  %64 = zext i16 %47 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, ptr noundef %13, i32 noundef %64) #24
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #24
  br label %29

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %67 = load ptr, ptr %66, align 4
  %68 = tail call ptr @skb_pull(ptr noundef nonnull %16, i32 noundef 3) #24
  %69 = load i16, ptr %67, align 1
  %70 = and i16 %69, 4095
  %71 = load i32, ptr %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef %11) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  br label %73

73:                                               ; preds = %77, %65
  %74 = phi ptr [ %12, %65 ], [ %75, %77 ]
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %12
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hci_conn, ptr %75, i32 0, i32 11
  %79 = load i16, ptr %78, align 2
  %80 = icmp eq i16 %79, %70
  br i1 %80, label %82, label %73

81:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @mutex_unlock(ptr noundef %11) #24
  br label %89

82:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  tail call void @mutex_unlock(ptr noundef %11) #24
  %83 = icmp eq ptr %75, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = lshr i16 %69, 12
  %86 = trunc i16 %85 to i8
  %87 = and i8 %86, 3
  %88 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 3, i32 8
  store i8 %87, ptr %88, align 8
  tail call void @sco_recv_scodata(ptr noundef nonnull %75, ptr noundef nonnull %16) #24
  br label %29

89:                                               ; preds = %82, %81
  %90 = zext i16 %70 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, ptr noundef %13, i32 noundef %90) #24
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #24
  br label %29

91:                                               ; preds = %40, %38
  tail call void @kfree_skb_reason(ptr noundef nonnull %16, i32 noundef 0) #24
  br label %29

92:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1968
  %3 = getelementptr i8, ptr %0, i32 -404
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 184
  %8 = tail call ptr @skb_dequeue(ptr noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 200
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #24
  %13 = tail call ptr @skb_clone(ptr noundef nonnull %8, i32 noundef 3264) #24
  store ptr %13, ptr %11, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %10
  %16 = tail call zeroext i1 @hci_req_status_pend(ptr noundef %2) #24
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 1092
  tail call void @_set_bit(i32 noundef 42, ptr noundef %18) #24
  br label %19

19:                                               ; preds = %17, %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #24, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #24, !srcloc !30
  %21 = tail call fastcc i32 @hci_send_frame(ptr noundef %2, ptr noundef nonnull %8)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = sub i32 0, %21
  tail call void @__hci_cmd_sync_cancel(ptr noundef %2, i32 noundef %24) #24
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr i8, ptr %0, i32 -1932
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr i8, ptr %0, i32 -104
  br i1 %29, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %30) #24
  br label %40

33:                                               ; preds = %25
  %34 = load ptr, ptr @system_wq, align 4
  %35 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %30, i32 noundef 200) #24
  br label %40

36:                                               ; preds = %10
  tail call void @skb_queue_head(ptr noundef %7, ptr noundef nonnull %8) #24
  %37 = getelementptr i8, ptr %0, i32 -340
  %38 = load ptr, ptr %37, align 4
  %39 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %0) #24
  br label %40

40:                                               ; preds = %36, %33, %31, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_tx_work(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr i8, ptr %0, i32 -1984
  %12 = getelementptr i8, ptr %0, i32 1076
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %683

16:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #24
  store i32 0, ptr %10, align 4, !annotation !14
  %17 = getelementptr i8, ptr %0, i32 408
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  br label %82

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %0, i32 -412
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  store i32 0, ptr %9, align 4, !annotation !14
  br label %54

26:                                               ; preds = %47, %21
  %27 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull %10) #24
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.hci_conn, ptr %27, i32 0, i32 56
  %31 = load i32, ptr %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hci_conn, ptr %27, i32 0, i32 55
  br label %35

35:                                               ; preds = %40, %33
  %36 = phi i32 [ %31, %33 ], [ %37, %40 ]
  %37 = add i32 %36, -1
  %38 = tail call ptr @skb_dequeue(ptr noundef %30) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %38) #24
  %42 = load i32, ptr %34, align 4
  %43 = add i32 %42, 1
  %44 = icmp eq i32 %43, -1
  %45 = select i1 %44, i32 0, i32 %43
  store i32 %45, ptr %34, align 4
  %46 = icmp eq i32 %37, 0
  br i1 %46, label %47, label %35

47:                                               ; preds = %40, %35, %29
  %48 = phi i32 [ -1, %29 ], [ %37, %35 ], [ -1, %40 ]
  store i32 %48, ptr %10, align 4
  %49 = load i32, ptr %22, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %26

51:                                               ; preds = %47, %26
  %52 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #24
  store i32 0, ptr %9, align 4, !annotation !14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %51, %25
  %55 = load i32, ptr %22, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %82, label %57

57:                                               ; preds = %78, %54
  %58 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 2, ptr noundef nonnull %9) #24
  %59 = icmp eq ptr %58, null
  br i1 %59, label %82, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.hci_conn, ptr %58, i32 0, i32 56
  %62 = load i32, ptr %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.hci_conn, ptr %58, i32 0, i32 55
  br label %66

66:                                               ; preds = %71, %64
  %67 = phi i32 [ %62, %64 ], [ %68, %71 ]
  %68 = add i32 %67, -1
  %69 = tail call ptr @skb_dequeue(ptr noundef %61) #24
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %69) #24
  %73 = load i32, ptr %65, align 4
  %74 = add i32 %73, 1
  %75 = icmp eq i32 %74, -1
  %76 = select i1 %75, i32 0, i32 %74
  store i32 %76, ptr %65, align 4
  %77 = icmp eq i32 %68, 0
  br i1 %77, label %78, label %66

78:                                               ; preds = %71, %66, %60
  %79 = phi i32 [ -1, %60 ], [ %68, %66 ], [ -1, %71 ]
  store i32 %79, ptr %9, align 4
  %80 = load i32, ptr %22, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %57

82:                                               ; preds = %78, %57, %54, %51, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #24
  %83 = getelementptr i8, ptr %0, i32 400
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %0, i32 -1941
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %469, label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr i8, ptr %0, i32 404
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %0, i32 -1941
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %469, label %98

98:                                               ; preds = %94, %90
  %99 = getelementptr i8, ptr %0, i32 -432
  %100 = load i8, ptr %99, align 8
  switch i8 %100, label %469 [
    i8 0, label %101
    i8 1, label %308
  ]

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %0, i32 -416
  %103 = load i32, ptr %102, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  store i32 0, ptr %8, align 4, !annotation !14
  %104 = load volatile i32, ptr %12, align 4
  %105 = lshr i32 %104, 10
  %106 = and i32 %105, 1
  %107 = or i32 %106, %103
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %101
  %110 = getelementptr i8, ptr %0, i32 -372
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 4500
  %113 = load volatile i32, ptr @jiffies, align 64
  %114 = sub i32 %112, %113
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %109
  %117 = getelementptr i8, ptr %0, i32 392
  %118 = getelementptr i8, ptr %0, i32 -1956
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %118) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %119 = load volatile ptr, ptr %117, align 4
  %120 = icmp eq ptr %119, %117
  br i1 %120, label %136, label %121

121:                                              ; preds = %133, %116
  %122 = phi ptr [ %134, %133 ], [ %119, %116 ]
  %123 = getelementptr inbounds %struct.hci_conn, ptr %122, i32 0, i32 14
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 1
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.hci_conn, ptr %122, i32 0, i32 55
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.hci_conn, ptr %122, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, ptr noundef %118, ptr noundef %131) #24
  %132 = tail call i32 @hci_disconnect(ptr noundef %122, i8 noundef zeroext 19) #24
  br label %133

133:                                              ; preds = %130, %126, %121
  %134 = load volatile ptr, ptr %122, align 4
  %135 = icmp eq ptr %134, %117
  br i1 %135, label %136, label %121

136:                                              ; preds = %133, %116
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %137 = load i32, ptr %102, align 8
  br label %138

138:                                              ; preds = %136, %109, %101
  %139 = phi i32 [ %103, %101 ], [ %103, %109 ], [ %137, %136 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %260, label %141

141:                                              ; preds = %138
  %142 = getelementptr i8, ptr %0, i32 -372
  %143 = getelementptr i8, ptr %0, i32 -412
  br label %144

144:                                              ; preds = %256, %141
  %145 = call fastcc ptr @hci_chan_sent(ptr noundef %11, i8 noundef zeroext 1, ptr noundef nonnull %8) #24
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, ptr %102, align 8
  br label %260

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.hci_chan, ptr %145, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  %153 = select i1 %152, ptr null, ptr %151
  %154 = getelementptr inbounds %struct.sk_buff, ptr %153, i32 0, i32 13, i32 0, i32 5
  %155 = load i32, ptr %154, align 8
  %156 = load i32, ptr %8, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %256, label %158

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.hci_chan, ptr %145, i32 0, i32 2
  %160 = getelementptr inbounds %struct.hci_chan, ptr %145, i32 0, i32 4
  %161 = add i32 %156, -1
  %162 = icmp eq ptr %151, null
  %163 = or i1 %152, %162
  br i1 %163, label %256, label %164

164:                                              ; preds = %250, %158
  %165 = phi i32 [ %252, %250 ], [ %161, %158 ]
  %166 = phi ptr [ %251, %250 ], [ %151, %158 ]
  %167 = getelementptr inbounds %struct.sk_buff, ptr %166, i32 0, i32 13, i32 0, i32 5
  %168 = load i32, ptr %167, align 8
  %169 = icmp ult i32 %168, %155
  br i1 %169, label %256, label %170

170:                                              ; preds = %164
  %171 = tail call ptr @skb_dequeue(ptr noundef %150) #24
  %172 = load ptr, ptr %159, align 4
  %173 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 3, i32 1
  %174 = load i8, ptr %173, align 1
  tail call void @hci_conn_enter_active_mode(ptr noundef %172, i8 noundef zeroext %174) #24
  %175 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef %171) #24
  %176 = load volatile i32, ptr @jiffies, align 64
  store i32 %176, ptr %142, align 4
  %177 = load i32, ptr %102, align 8
  %178 = add i32 %177, -1
  store i32 %178, ptr %102, align 8
  %179 = load i32, ptr %160, align 4
  %180 = add i32 %179, 1
  store i32 %180, ptr %160, align 4
  %181 = load ptr, ptr %159, align 4
  %182 = getelementptr inbounds %struct.hci_conn, ptr %181, i32 0, i32 55
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 1
  store i32 %184, ptr %182, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  store i32 0, ptr %7, align 4, !annotation !14
  %185 = load i32, ptr %17, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  br label %248

188:                                              ; preds = %170
  %189 = load i32, ptr %143, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  br label %248

192:                                              ; preds = %213, %188
  %193 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull %7) #24
  %194 = icmp eq ptr %193, null
  br i1 %194, label %217, label %195

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.hci_conn, ptr %193, i32 0, i32 56
  %197 = load i32, ptr %7, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %213, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.hci_conn, ptr %193, i32 0, i32 55
  br label %201

201:                                              ; preds = %206, %199
  %202 = phi i32 [ %197, %199 ], [ %203, %206 ]
  %203 = add i32 %202, -1
  %204 = tail call ptr @skb_dequeue(ptr noundef %196) #24
  %205 = icmp eq ptr %204, null
  br i1 %205, label %213, label %206

206:                                              ; preds = %201
  %207 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %204) #24
  %208 = load i32, ptr %200, align 4
  %209 = add i32 %208, 1
  %210 = icmp eq i32 %209, -1
  %211 = select i1 %210, i32 0, i32 %209
  store i32 %211, ptr %200, align 4
  %212 = icmp eq i32 %203, 0
  br i1 %212, label %213, label %201

213:                                              ; preds = %206, %201, %195
  %214 = phi i32 [ -1, %195 ], [ %203, %201 ], [ -1, %206 ]
  store i32 %214, ptr %7, align 4
  %215 = load i32, ptr %143, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %192

217:                                              ; preds = %213, %192
  %218 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store i32 0, ptr %6, align 4, !annotation !14
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %248, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr %143, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %248, label %223

223:                                              ; preds = %244, %220
  %224 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 2, ptr noundef nonnull %6) #24
  %225 = icmp eq ptr %224, null
  br i1 %225, label %248, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.hci_conn, ptr %224, i32 0, i32 56
  %228 = load i32, ptr %6, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %244, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.hci_conn, ptr %224, i32 0, i32 55
  br label %232

232:                                              ; preds = %237, %230
  %233 = phi i32 [ %228, %230 ], [ %234, %237 ]
  %234 = add i32 %233, -1
  %235 = tail call ptr @skb_dequeue(ptr noundef %227) #24
  %236 = icmp eq ptr %235, null
  br i1 %236, label %244, label %237

237:                                              ; preds = %232
  %238 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %235) #24
  %239 = load i32, ptr %231, align 4
  %240 = add i32 %239, 1
  %241 = icmp eq i32 %240, -1
  %242 = select i1 %241, i32 0, i32 %240
  store i32 %242, ptr %231, align 4
  %243 = icmp eq i32 %234, 0
  br i1 %243, label %244, label %232

244:                                              ; preds = %237, %232, %226
  %245 = phi i32 [ -1, %226 ], [ %234, %232 ], [ -1, %237 ]
  store i32 %245, ptr %6, align 4
  %246 = load i32, ptr %143, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %223

248:                                              ; preds = %244, %223, %220, %217, %191, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  %249 = icmp eq i32 %165, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %248
  %251 = load ptr, ptr %150, align 4
  %252 = add i32 %165, -1
  %253 = icmp eq ptr %251, %150
  %254 = icmp eq ptr %251, null
  %255 = or i1 %253, %254
  br i1 %255, label %256, label %164

256:                                              ; preds = %250, %248, %164, %158, %149
  %257 = phi i32 [ -1, %149 ], [ %161, %158 ], [ -1, %248 ], [ %165, %164 ], [ %252, %250 ]
  store i32 %257, ptr %8, align 4
  %258 = load i32, ptr %102, align 8
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %144

260:                                              ; preds = %256, %147, %138
  %261 = phi i32 [ 0, %138 ], [ %148, %147 ], [ 0, %256 ]
  %262 = icmp eq i32 %103, %261
  br i1 %262, label %307, label %263

263:                                              ; preds = %260
  %264 = getelementptr i8, ptr %0, i32 392
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %265 = load volatile ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, %264
  br i1 %266, label %306, label %267

267:                                              ; preds = %302, %263
  %268 = phi ptr [ %304, %302 ], [ %265, %263 ]
  %269 = phi i32 [ %303, %302 ], [ 0, %263 ]
  %270 = getelementptr inbounds %struct.hci_conn, ptr %268, i32 0, i32 14
  %271 = load i8, ptr %270, align 1
  %272 = icmp eq i8 %271, 1
  br i1 %272, label %273, label %302

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.hci_conn, ptr %268, i32 0, i32 12
  %275 = load i16, ptr %274, align 4
  switch i16 %275, label %302 [
    i16 1, label %276
    i16 7, label %276
  ]

276:                                              ; preds = %273, %273
  %277 = add i32 %269, 1
  %278 = getelementptr inbounds %struct.hci_conn, ptr %268, i32 0, i32 57
  %279 = load volatile ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, %278
  br i1 %280, label %299, label %281

281:                                              ; preds = %296, %276
  %282 = phi ptr [ %297, %296 ], [ %279, %276 ]
  %283 = getelementptr inbounds %struct.hci_chan, ptr %282, i32 0, i32 4
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %281
  store i32 0, ptr %283, align 4
  br label %296

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.hci_chan, ptr %282, i32 0, i32 3
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, %288
  br i1 %290, label %296, label %291

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.sk_buff, ptr %289, i32 0, i32 13, i32 0, i32 5
  %293 = load i32, ptr %292, align 8
  %294 = icmp ugt i32 %293, 5
  br i1 %294, label %296, label %295

295:                                              ; preds = %291
  store i32 6, ptr %292, align 8
  br label %296

296:                                              ; preds = %295, %291, %287, %286
  %297 = load volatile ptr, ptr %282, align 4
  %298 = icmp eq ptr %297, %278
  br i1 %298, label %299, label %281

299:                                              ; preds = %296, %276
  %300 = load i32, ptr %83, align 4
  %301 = icmp eq i32 %300, %277
  br i1 %301, label %306, label %302

302:                                              ; preds = %299, %273, %267
  %303 = phi i32 [ %269, %267 ], [ %269, %273 ], [ %277, %299 ]
  %304 = load volatile ptr, ptr %268, align 4
  %305 = icmp eq ptr %304, %264
  br i1 %305, label %306, label %267

306:                                              ; preds = %302, %299, %263
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %307

307:                                              ; preds = %306, %260
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  br label %469

308:                                              ; preds = %98
  %309 = getelementptr i8, ptr %0, i32 -374
  %310 = load i16, ptr %309, align 2
  %311 = zext i16 %310 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  store i32 0, ptr %5, align 4, !annotation !14
  %312 = load volatile i32, ptr %12, align 4
  %313 = lshr i32 %312, 10
  %314 = and i32 %313, 1
  %315 = or i32 %314, %311
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %346

317:                                              ; preds = %308
  %318 = getelementptr i8, ptr %0, i32 -372
  %319 = load i32, ptr %318, align 4
  %320 = add i32 %319, 4500
  %321 = load volatile i32, ptr @jiffies, align 64
  %322 = sub i32 %320, %321
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %346

324:                                              ; preds = %317
  %325 = getelementptr i8, ptr %0, i32 392
  %326 = getelementptr i8, ptr %0, i32 -1956
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %326) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %327 = load volatile ptr, ptr %325, align 4
  %328 = icmp eq ptr %327, %325
  br i1 %328, label %344, label %329

329:                                              ; preds = %341, %324
  %330 = phi ptr [ %342, %341 ], [ %327, %324 ]
  %331 = getelementptr inbounds %struct.hci_conn, ptr %330, i32 0, i32 14
  %332 = load i8, ptr %331, align 1
  %333 = icmp eq i8 %332, 1
  br i1 %333, label %334, label %341

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.hci_conn, ptr %330, i32 0, i32 55
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.hci_conn, ptr %330, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, ptr noundef %326, ptr noundef %339) #24
  %340 = tail call i32 @hci_disconnect(ptr noundef %330, i8 noundef zeroext 19) #24
  br label %341

341:                                              ; preds = %338, %334, %329
  %342 = load volatile ptr, ptr %330, align 4
  %343 = icmp eq ptr %342, %325
  br i1 %343, label %344, label %329

344:                                              ; preds = %341, %324
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %345 = load i16, ptr %309, align 2
  br label %346

346:                                              ; preds = %344, %317, %308
  %347 = phi i16 [ %310, %308 ], [ %310, %317 ], [ %345, %344 ]
  %348 = getelementptr i8, ptr %0, i32 -1941
  %349 = load i8, ptr %348, align 1
  %350 = icmp eq i8 %349, 1
  %351 = select i1 %350, i8 -127, i8 1
  %352 = icmp eq i16 %347, 0
  br i1 %352, label %419, label %353

353:                                              ; preds = %346
  %354 = getelementptr i8, ptr %0, i32 -380
  %355 = getelementptr i8, ptr %0, i32 -372
  br label %356

356:                                              ; preds = %415, %353
  %357 = call fastcc ptr @hci_chan_sent(ptr noundef %11, i8 noundef zeroext %351, ptr noundef nonnull %5) #24
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = load i16, ptr %309, align 2
  br label %419

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.hci_chan, ptr %357, i32 0, i32 3
  %363 = load ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, %362
  %365 = select i1 %364, ptr null, ptr %363
  %366 = getelementptr inbounds %struct.sk_buff, ptr %365, i32 0, i32 13, i32 0, i32 5
  %367 = load i32, ptr %366, align 8
  %368 = load i32, ptr %5, align 4
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %415

370:                                              ; preds = %361
  %371 = getelementptr inbounds %struct.hci_chan, ptr %357, i32 0, i32 2
  %372 = getelementptr inbounds %struct.hci_chan, ptr %357, i32 0, i32 4
  %373 = icmp eq ptr %363, null
  %374 = or i1 %364, %373
  br i1 %374, label %415, label %375

375:                                              ; preds = %410, %370
  %376 = phi i32 [ %402, %410 ], [ %368, %370 ]
  %377 = phi ptr [ %411, %410 ], [ %363, %370 ]
  %378 = getelementptr inbounds %struct.sk_buff, ptr %377, i32 0, i32 13, i32 0, i32 5
  %379 = load i32, ptr %378, align 8
  %380 = icmp ult i32 %379, %367
  br i1 %380, label %415, label %381

381:                                              ; preds = %375
  %382 = tail call ptr @skb_dequeue(ptr noundef %362) #24
  %383 = getelementptr inbounds %struct.sk_buff, ptr %382, i32 0, i32 5
  %384 = load i32, ptr %383, align 8
  %385 = load i16, ptr %354, align 4
  %386 = zext i16 %385 to i32
  %387 = add i32 %384, -5
  %388 = add i32 %387, %386
  %389 = udiv i32 %388, %386
  %390 = load i16, ptr %309, align 2
  %391 = zext i16 %390 to i32
  %392 = icmp sgt i32 %389, %391
  br i1 %392, label %468, label %393

393:                                              ; preds = %381
  %394 = load ptr, ptr %371, align 4
  %395 = getelementptr inbounds %struct.sk_buff, ptr %382, i32 0, i32 3, i32 1
  %396 = load i8, ptr %395, align 1
  tail call void @hci_conn_enter_active_mode(ptr noundef %394, i8 noundef zeroext %396) #24
  %397 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef %382) #24
  %398 = load volatile i32, ptr @jiffies, align 64
  store i32 %398, ptr %355, align 4
  %399 = load i16, ptr %309, align 2
  %400 = trunc i32 %389 to i16
  %401 = sub i16 %399, %400
  store i16 %401, ptr %309, align 2
  %402 = sub i32 %376, %389
  %403 = load i32, ptr %372, align 4
  %404 = add i32 %403, %389
  store i32 %404, ptr %372, align 4
  %405 = load ptr, ptr %371, align 4
  %406 = getelementptr inbounds %struct.hci_conn, ptr %405, i32 0, i32 55
  %407 = load i32, ptr %406, align 4
  %408 = add i32 %407, %389
  store i32 %408, ptr %406, align 4
  %409 = icmp sgt i32 %402, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %393
  %411 = load ptr, ptr %362, align 4
  %412 = icmp eq ptr %411, %362
  %413 = icmp eq ptr %411, null
  %414 = or i1 %412, %413
  br i1 %414, label %415, label %375

415:                                              ; preds = %410, %393, %375, %370, %361
  %416 = phi i32 [ %368, %361 ], [ %368, %370 ], [ %402, %393 ], [ %376, %375 ], [ %402, %410 ]
  store i32 %416, ptr %5, align 4
  %417 = load i16, ptr %309, align 2
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %419, label %356

419:                                              ; preds = %415, %359, %346
  %420 = phi i16 [ 0, %346 ], [ %360, %359 ], [ 0, %415 ]
  %421 = icmp eq i16 %310, %420
  br i1 %421, label %468, label %422

422:                                              ; preds = %419
  %423 = getelementptr i8, ptr %0, i32 392
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %424 = load volatile ptr, ptr %423, align 4
  %425 = icmp eq ptr %424, %423
  br i1 %425, label %467, label %426

426:                                              ; preds = %422
  %427 = select i1 %350, ptr %91, ptr %83
  br label %428

428:                                              ; preds = %463, %426
  %429 = phi ptr [ %424, %426 ], [ %465, %463 ]
  %430 = phi i32 [ 0, %426 ], [ %464, %463 ]
  %431 = getelementptr inbounds %struct.hci_conn, ptr %429, i32 0, i32 14
  %432 = load i8, ptr %431, align 1
  %433 = icmp eq i8 %432, %351
  br i1 %433, label %434, label %463

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.hci_conn, ptr %429, i32 0, i32 12
  %436 = load i16, ptr %435, align 4
  switch i16 %436, label %463 [
    i16 1, label %437
    i16 7, label %437
  ]

437:                                              ; preds = %434, %434
  %438 = add i32 %430, 1
  %439 = getelementptr inbounds %struct.hci_conn, ptr %429, i32 0, i32 57
  %440 = load volatile ptr, ptr %439, align 4
  %441 = icmp eq ptr %440, %439
  br i1 %441, label %460, label %442

442:                                              ; preds = %457, %437
  %443 = phi ptr [ %458, %457 ], [ %440, %437 ]
  %444 = getelementptr inbounds %struct.hci_chan, ptr %443, i32 0, i32 4
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %442
  store i32 0, ptr %444, align 4
  br label %457

448:                                              ; preds = %442
  %449 = getelementptr inbounds %struct.hci_chan, ptr %443, i32 0, i32 3
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, %449
  br i1 %451, label %457, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.sk_buff, ptr %450, i32 0, i32 13, i32 0, i32 5
  %454 = load i32, ptr %453, align 8
  %455 = icmp ugt i32 %454, 5
  br i1 %455, label %457, label %456

456:                                              ; preds = %452
  store i32 6, ptr %453, align 8
  br label %457

457:                                              ; preds = %456, %452, %448, %447
  %458 = load volatile ptr, ptr %443, align 4
  %459 = icmp eq ptr %458, %439
  br i1 %459, label %460, label %442

460:                                              ; preds = %457, %437
  %461 = load i32, ptr %427, align 4
  %462 = icmp eq i32 %461, %438
  br i1 %462, label %467, label %463

463:                                              ; preds = %460, %434, %428
  %464 = phi i32 [ %430, %428 ], [ %430, %434 ], [ %438, %460 ]
  %465 = load volatile ptr, ptr %429, align 4
  %466 = icmp eq ptr %465, %423
  br i1 %466, label %467, label %428

467:                                              ; preds = %463, %460, %422
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %468

468:                                              ; preds = %467, %419, %381
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  br label %469

469:                                              ; preds = %468, %307, %98, %94, %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i32 0, ptr %4, align 4, !annotation !14
  %470 = getelementptr i8, ptr %0, i32 412
  %471 = load i32, ptr %470, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %682, label %473

473:                                              ; preds = %469
  %474 = getelementptr i8, ptr %0, i32 -384
  %475 = load i32, ptr %474, align 8
  %476 = icmp eq i32 %475, 0
  %477 = getelementptr i8, ptr %0, i32 -408
  %478 = getelementptr i8, ptr %0, i32 -416
  %479 = select i1 %476, ptr %478, ptr %477
  %480 = load i32, ptr %479, align 8
  %481 = load volatile i32, ptr %12, align 4
  %482 = lshr i32 %481, 10
  %483 = and i32 %482, 1
  %484 = or i32 %483, %480
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %514

486:                                              ; preds = %473
  %487 = getelementptr i8, ptr %0, i32 -372
  %488 = load i32, ptr %487, align 4
  %489 = add i32 %488, 4500
  %490 = load volatile i32, ptr @jiffies, align 64
  %491 = sub i32 %489, %490
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %514

493:                                              ; preds = %486
  %494 = getelementptr i8, ptr %0, i32 392
  %495 = getelementptr i8, ptr %0, i32 -1956
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, ptr noundef %495) #24
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %496 = load volatile ptr, ptr %494, align 4
  %497 = icmp eq ptr %496, %494
  br i1 %497, label %513, label %498

498:                                              ; preds = %510, %493
  %499 = phi ptr [ %511, %510 ], [ %496, %493 ]
  %500 = getelementptr inbounds %struct.hci_conn, ptr %499, i32 0, i32 14
  %501 = load i8, ptr %500, align 1
  %502 = icmp eq i8 %501, 1
  br i1 %502, label %503, label %510

503:                                              ; preds = %498
  %504 = getelementptr inbounds %struct.hci_conn, ptr %499, i32 0, i32 55
  %505 = load i32, ptr %504, align 4
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %503
  %508 = getelementptr inbounds %struct.hci_conn, ptr %499, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, ptr noundef %495, ptr noundef %508) #24
  %509 = tail call i32 @hci_disconnect(ptr noundef %499, i8 noundef zeroext 19) #24
  br label %510

510:                                              ; preds = %507, %503, %498
  %511 = load volatile ptr, ptr %499, align 4
  %512 = icmp eq ptr %511, %494
  br i1 %512, label %513, label %498

513:                                              ; preds = %510, %493
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %514

514:                                              ; preds = %513, %486, %473
  %515 = icmp eq i32 %480, 0
  br i1 %515, label %632, label %516

516:                                              ; preds = %514
  %517 = getelementptr i8, ptr %0, i32 -364
  %518 = getelementptr i8, ptr %0, i32 -412
  br label %519

519:                                              ; preds = %628, %516
  %520 = phi i32 [ %480, %516 ], [ %630, %628 ]
  %521 = call fastcc ptr @hci_chan_sent(ptr noundef %11, i8 noundef zeroext -128, ptr noundef nonnull %4) #24
  %522 = icmp eq ptr %521, null
  br i1 %522, label %632, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.hci_chan, ptr %521, i32 0, i32 3
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, %524
  %527 = select i1 %526, ptr null, ptr %525
  %528 = getelementptr inbounds %struct.sk_buff, ptr %527, i32 0, i32 13, i32 0, i32 5
  %529 = load i32, ptr %528, align 8
  %530 = load i32, ptr %4, align 4
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %628, label %532

532:                                              ; preds = %523
  %533 = getelementptr inbounds %struct.hci_chan, ptr %521, i32 0, i32 4
  %534 = getelementptr inbounds %struct.hci_chan, ptr %521, i32 0, i32 2
  %535 = sub i32 %520, %530
  %536 = add i32 %530, -1
  %537 = icmp eq ptr %525, null
  %538 = or i1 %526, %537
  br i1 %538, label %628, label %539

539:                                              ; preds = %622, %532
  %540 = phi i32 [ %624, %622 ], [ %536, %532 ]
  %541 = phi i32 [ %550, %622 ], [ %520, %532 ]
  %542 = phi ptr [ %623, %622 ], [ %525, %532 ]
  %543 = getelementptr inbounds %struct.sk_buff, ptr %542, i32 0, i32 13, i32 0, i32 5
  %544 = load i32, ptr %543, align 8
  %545 = icmp ult i32 %544, %529
  br i1 %545, label %628, label %546

546:                                              ; preds = %539
  %547 = tail call ptr @skb_dequeue(ptr noundef %524) #24
  %548 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef %547) #24
  %549 = load volatile i32, ptr @jiffies, align 64
  store i32 %549, ptr %517, align 4
  %550 = add i32 %541, -1
  %551 = load i32, ptr %533, align 4
  %552 = add i32 %551, 1
  store i32 %552, ptr %533, align 4
  %553 = load ptr, ptr %534, align 4
  %554 = getelementptr inbounds %struct.hci_conn, ptr %553, i32 0, i32 55
  %555 = load i32, ptr %554, align 4
  %556 = add i32 %555, 1
  store i32 %556, ptr %554, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !annotation !14
  %557 = load i32, ptr %17, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %560

559:                                              ; preds = %546
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  br label %620

560:                                              ; preds = %546
  %561 = load i32, ptr %518, align 4
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %560
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  br label %620

564:                                              ; preds = %585, %560
  %565 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 0, ptr noundef nonnull %3) #24
  %566 = icmp eq ptr %565, null
  br i1 %566, label %589, label %567

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.hci_conn, ptr %565, i32 0, i32 56
  %569 = load i32, ptr %3, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %585, label %571

571:                                              ; preds = %567
  %572 = getelementptr inbounds %struct.hci_conn, ptr %565, i32 0, i32 55
  br label %573

573:                                              ; preds = %578, %571
  %574 = phi i32 [ %569, %571 ], [ %575, %578 ]
  %575 = add i32 %574, -1
  %576 = tail call ptr @skb_dequeue(ptr noundef %568) #24
  %577 = icmp eq ptr %576, null
  br i1 %577, label %585, label %578

578:                                              ; preds = %573
  %579 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %576) #24
  %580 = load i32, ptr %572, align 4
  %581 = add i32 %580, 1
  %582 = icmp eq i32 %581, -1
  %583 = select i1 %582, i32 0, i32 %581
  store i32 %583, ptr %572, align 4
  %584 = icmp eq i32 %575, 0
  br i1 %584, label %585, label %573

585:                                              ; preds = %578, %573, %567
  %586 = phi i32 [ -1, %567 ], [ -1, %578 ], [ %575, %573 ]
  store i32 %586, ptr %3, align 4
  %587 = load i32, ptr %518, align 4
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %589, label %564

589:                                              ; preds = %585, %564
  %590 = load i32, ptr %17, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  store i32 0, ptr %2, align 4, !annotation !14
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %620, label %592

592:                                              ; preds = %589
  %593 = load i32, ptr %518, align 4
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %620, label %595

595:                                              ; preds = %616, %592
  %596 = call fastcc ptr @hci_low_sent(ptr noundef %11, i8 noundef zeroext 2, ptr noundef nonnull %2) #24
  %597 = icmp eq ptr %596, null
  br i1 %597, label %620, label %598

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.hci_conn, ptr %596, i32 0, i32 56
  %600 = load i32, ptr %2, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %616, label %602

602:                                              ; preds = %598
  %603 = getelementptr inbounds %struct.hci_conn, ptr %596, i32 0, i32 55
  br label %604

604:                                              ; preds = %609, %602
  %605 = phi i32 [ %600, %602 ], [ %606, %609 ]
  %606 = add i32 %605, -1
  %607 = tail call ptr @skb_dequeue(ptr noundef %599) #24
  %608 = icmp eq ptr %607, null
  br i1 %608, label %616, label %609

609:                                              ; preds = %604
  %610 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %607) #24
  %611 = load i32, ptr %603, align 4
  %612 = add i32 %611, 1
  %613 = icmp eq i32 %612, -1
  %614 = select i1 %613, i32 0, i32 %612
  store i32 %614, ptr %603, align 4
  %615 = icmp eq i32 %606, 0
  br i1 %615, label %616, label %604

616:                                              ; preds = %609, %604, %598
  %617 = phi i32 [ -1, %598 ], [ -1, %609 ], [ %606, %604 ]
  store i32 %617, ptr %2, align 4
  %618 = load i32, ptr %518, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %595

620:                                              ; preds = %616, %595, %592, %589, %563, %559
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  %621 = icmp eq i32 %540, 0
  br i1 %621, label %628, label %622

622:                                              ; preds = %620
  %623 = load ptr, ptr %524, align 4
  %624 = add i32 %540, -1
  %625 = icmp eq ptr %623, %524
  %626 = icmp eq ptr %623, null
  %627 = or i1 %625, %626
  br i1 %627, label %628, label %539

628:                                              ; preds = %622, %620, %539, %532, %523
  %629 = phi i32 [ -1, %523 ], [ %536, %532 ], [ %624, %622 ], [ %540, %539 ], [ -1, %620 ]
  %630 = phi i32 [ %520, %523 ], [ %520, %532 ], [ %550, %622 ], [ %541, %539 ], [ %535, %620 ]
  store i32 %629, ptr %4, align 4
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %519

632:                                              ; preds = %628, %519, %514
  %633 = phi i32 [ 0, %514 ], [ %520, %519 ], [ 0, %628 ]
  %634 = load i32, ptr %474, align 8
  %635 = icmp eq i32 %634, 0
  %636 = select i1 %635, ptr %478, ptr %477
  store i32 %633, ptr %636, align 8
  %637 = icmp eq i32 %633, %480
  br i1 %637, label %682, label %638

638:                                              ; preds = %632
  %639 = getelementptr i8, ptr %0, i32 392
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %640 = load volatile ptr, ptr %639, align 4
  %641 = icmp eq ptr %640, %639
  br i1 %641, label %681, label %642

642:                                              ; preds = %677, %638
  %643 = phi ptr [ %679, %677 ], [ %640, %638 ]
  %644 = phi i32 [ %678, %677 ], [ 0, %638 ]
  %645 = getelementptr inbounds %struct.hci_conn, ptr %643, i32 0, i32 14
  %646 = load i8, ptr %645, align 1
  %647 = icmp eq i8 %646, -128
  br i1 %647, label %648, label %677

648:                                              ; preds = %642
  %649 = getelementptr inbounds %struct.hci_conn, ptr %643, i32 0, i32 12
  %650 = load i16, ptr %649, align 4
  switch i16 %650, label %677 [
    i16 1, label %651
    i16 7, label %651
  ]

651:                                              ; preds = %648, %648
  %652 = add i32 %644, 1
  %653 = getelementptr inbounds %struct.hci_conn, ptr %643, i32 0, i32 57
  %654 = load volatile ptr, ptr %653, align 4
  %655 = icmp eq ptr %654, %653
  br i1 %655, label %674, label %656

656:                                              ; preds = %671, %651
  %657 = phi ptr [ %672, %671 ], [ %654, %651 ]
  %658 = getelementptr inbounds %struct.hci_chan, ptr %657, i32 0, i32 4
  %659 = load i32, ptr %658, align 4
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %662, label %661

661:                                              ; preds = %656
  store i32 0, ptr %658, align 4
  br label %671

662:                                              ; preds = %656
  %663 = getelementptr inbounds %struct.hci_chan, ptr %657, i32 0, i32 3
  %664 = load ptr, ptr %663, align 4
  %665 = icmp eq ptr %664, %663
  br i1 %665, label %671, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.sk_buff, ptr %664, i32 0, i32 13, i32 0, i32 5
  %668 = load i32, ptr %667, align 8
  %669 = icmp ugt i32 %668, 5
  br i1 %669, label %671, label %670

670:                                              ; preds = %666
  store i32 6, ptr %667, align 8
  br label %671

671:                                              ; preds = %670, %666, %662, %661
  %672 = load volatile ptr, ptr %657, align 4
  %673 = icmp eq ptr %672, %653
  br i1 %673, label %674, label %656

674:                                              ; preds = %671, %651
  %675 = load i32, ptr %470, align 4
  %676 = icmp eq i32 %675, %652
  br i1 %676, label %681, label %677

677:                                              ; preds = %674, %648, %642
  %678 = phi i32 [ %644, %642 ], [ %644, %648 ], [ %652, %674 ]
  %679 = load volatile ptr, ptr %643, align 4
  %680 = icmp eq ptr %679, %639
  br i1 %680, label %681, label %642

681:                                              ; preds = %677, %674, %638
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %682

682:                                              ; preds = %681, %632, %469
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  br label %683

683:                                              ; preds = %682, %1
  %684 = getelementptr i8, ptr %0, i32 152
  %685 = tail call ptr @skb_dequeue(ptr noundef %684) #24
  %686 = icmp eq ptr %685, null
  br i1 %686, label %692, label %687

687:                                              ; preds = %687, %683
  %688 = phi ptr [ %690, %687 ], [ %685, %683 ]
  %689 = tail call fastcc i32 @hci_send_frame(ptr noundef %11, ptr noundef nonnull %688)
  %690 = tail call ptr @skb_dequeue(ptr noundef %684) #24
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %687

692:                                              ; preds = %687, %683
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_power_on(ptr noundef %0) #0 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr i8, ptr %0, i32 -1636
  %5 = getelementptr i8, ptr %0, i32 -1600
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1424
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %10) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr i8, ptr %0, i32 16
  %19 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %18) #24
  %20 = tail call i32 @hci_powered_update_sync(ptr noundef %4) #24
  tail call void @mgmt_power_on(ptr noundef %4, i32 noundef %20) #24
  br label %77

21:                                               ; preds = %14, %9, %1
  %22 = getelementptr i8, ptr %0, i32 536
  tail call void @mutex_lock(ptr noundef %22) #24
  %23 = tail call i32 @hci_dev_open_sync(ptr noundef %4) #24
  tail call void @mutex_unlock(ptr noundef %22) #24
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 -1628
  tail call void @mutex_lock(ptr noundef %26) #24
  tail call void @mgmt_set_powered_failed(ptr noundef %4, i32 noundef %23) #24
  tail call void @mutex_unlock(ptr noundef %26) #24
  br label %77

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %0, i32 1424
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
  %37 = getelementptr i8, ptr %0, i32 -1593
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %0, i32 -1592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, i8 0, i64 6, i1 false)
  %42 = call i32 @bcmp(ptr noundef dereferenceable(6) %41, ptr noundef nonnull dereferenceable(6) %2, i32 6)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %0, i32 -1568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false)
  %46 = call i32 @bcmp(ptr noundef dereferenceable(6) %45, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %32, %27
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %28) #24
  tail call void @mutex_lock(ptr noundef %22) #24
  %49 = tail call i32 @hci_dev_close_sync(ptr noundef %4) #24
  tail call void @mutex_unlock(ptr noundef %22) #24
  br label %59

50:                                               ; preds = %44, %40, %36
  %51 = load volatile i32, ptr %28, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %0, i32 -4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %0, i32 16
  %58 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %56, ptr noundef %57, i32 noundef 200) #24
  br label %59

59:                                               ; preds = %54, %50, %48
  %60 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %28) #24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load volatile i32, ptr %28, align 4
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 8, ptr noundef %5) #24
  br label %67

67:                                               ; preds = %66, %62
  tail call void @mgmt_index_added(ptr noundef %4) #24
  br label %77

68:                                               ; preds = %59
  %69 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %28) #24
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = load volatile i32, ptr %28, align 4
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %5) #24
  br label %76

76:                                               ; preds = %75, %71
  tail call void @mgmt_index_added(ptr noundef %4) #24
  br label %77

77:                                               ; preds = %76, %68, %67, %25, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_error_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1696
  %3 = getelementptr i8, ptr %0, i32 2116
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -920
  %8 = load i8, ptr %7, align 8
  tail call void %4(ptr noundef %2, i8 noundef zeroext %8) #24
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -1668
  %11 = getelementptr i8, ptr %0, i32 -920
  %12 = load i8, ptr %11, align 8
  %13 = zext i8 %12 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %10, i32 noundef %13) #24
  br label %14

14:                                               ; preds = %9, %6
  %15 = getelementptr i8, ptr %0, i32 476
  tail call void @mutex_lock(ptr noundef %15) #24
  %16 = tail call i32 @hci_dev_close_sync(ptr noundef %2) #24
  tail call void @mutex_unlock(ptr noundef %15) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef %15) #24
  %19 = tail call i32 @hci_dev_open_sync(ptr noundef %2) #24
  tail call void @mutex_unlock(ptr noundef %15) #24
  br label %20

20:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_cmd_sync_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_power_off(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1652
  %3 = getelementptr i8, ptr %0, i32 520
  tail call void @mutex_lock(ptr noundef %3) #24
  %4 = tail call i32 @hci_dev_close_sync(ptr noundef %2) #24
  tail call void @mutex_unlock(ptr noundef %3) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_cmd_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1864
  %3 = getelementptr i8, ptr %0, i32 304
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 1
  %10 = getelementptr i8, ptr %0, i32 -1836
  %11 = zext i16 %9 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.19, ptr noundef %10, i32 noundef %11) #24
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 -1836
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.20, ptr noundef %13) #24
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr i8, ptr %0, i32 1964
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(ptr noundef %2) #24
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %0, i32 -300
  store volatile i32 1, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 -236
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 104
  %24 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %23) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_ncmd_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1880
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21, ptr noundef %2) #24
  %3 = getelementptr i8, ptr %0, i32 -1872
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 -1908
  %12 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  store ptr %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 8
  store ptr %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 3
  store i8 4, ptr %18, align 8
  %19 = tail call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 3) #24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %19, ptr noundef nonnull align 1 dereferenceable(3) @hci_reset_dev.hw_err, i32 3, i1 false) #24
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %2) #24
  %20 = tail call i32 @hci_recv_frame(ptr noundef %11, ptr noundef nonnull %8) #24
  br label %21

21:                                               ; preds = %10, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_request_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_init_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_free_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  tail call void @put_device(ptr noundef %2) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_register_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 226
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %112, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 227
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %112, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 231
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %112, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  switch i8 %15, label %112 [
    i8 0, label %17
    i8 1, label %16
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 1, %16 ], [ 0, %13 ]
  %19 = tail call i32 @ida_alloc_range(ptr noundef nonnull @hci_index_ida, i32 noundef %18, i32 noundef -1, i32 noundef 3264) #24
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %112, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %19)
  %24 = trunc i32 %19 to i16
  %25 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  store i16 %24, ptr %25, align 8
  %26 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 655378, i32 noundef 1, ptr noundef %22) #24
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %108, label %29

29:                                               ; preds = %21
  %30 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 655378, i32 noundef 1, ptr noundef %22) #24
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  store ptr %30, ptr %31, align 8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @bt_debugfs, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %37 = or i1 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @debugfs_create_dir(ptr noundef %22, ptr noundef nonnull %34) #24
  %40 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  store ptr %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  %43 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %42, ptr noundef nonnull @.str.10, ptr noundef %22) #24
  %44 = tail call i32 @device_add(ptr noundef %42) #24
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %99, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @rfkill_alloc(ptr noundef %22, ptr noundef %42, i32 noundef 2, ptr noundef nonnull @hci_rfkill_ops, ptr noundef %0) #24
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 205
  store ptr %47, ptr %48, align 8
  %49 = icmp eq ptr %47, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @rfkill_register(ptr noundef nonnull %47) #24
  %52 = icmp slt i32 %51, 0
  %53 = load ptr, ptr %48, align 8
  br i1 %52, label %54, label %55

54:                                               ; preds = %50
  tail call void @rfkill_destroy(ptr noundef %53) #24
  store ptr null, ptr %48, align 8
  br label %61

55:                                               ; preds = %50
  %56 = icmp eq ptr %53, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %55
  %58 = tail call zeroext i1 @rfkill_blocked(ptr noundef nonnull %53) #24
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 3, ptr noundef %60) #24
  br label %61

61:                                               ; preds = %59, %57, %55, %54, %46
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 0, ptr noundef %62) #24
  tail call void @_set_bit(i32 noundef 2, ptr noundef %62) #24
  %63 = load i8, ptr %14, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void @_set_bit(i32 noundef 32, ptr noundef %62) #24
  br label %66

66:                                               ; preds = %65, %61
  tail call void @_raw_write_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  %67 = load ptr, ptr @hci_dev_list, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %0, ptr %68, align 4
  store ptr %67, ptr %0, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @hci_dev_list, ptr %69, align 4
  store volatile ptr %0, ptr @hci_dev_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @hci_dev_list_lock, i32 0) #24, !srcloc !32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !33
  %70 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  tail call void @_set_bit(i32 noundef 10, ptr noundef %62) #24
  br label %75

75:                                               ; preds = %74, %66
  %76 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 238
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 207
  tail call void @_set_bit(i32 noundef 0, ptr noundef %80) #24
  br label %81

81:                                               ; preds = %79, %75
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 1) #24
  %82 = tail call ptr @get_device(ptr noundef %42) #24
  %83 = load volatile i32, ptr %70, align 4
  %84 = and i32 %83, 65536
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 175
  store ptr @hci_suspend_notifier, ptr %87, align 8
  %88 = tail call i32 @register_pm_notifier(ptr noundef %87) #24
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86, %81
  %91 = load ptr, ptr %31, align 8
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 140
  %93 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %91, ptr noundef %92) #24
  %94 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 0, i32 1
  store i32 33554436, ptr %95, align 4
  %96 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 0, i32 2
  store ptr null, ptr %96, align 4
  %97 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 1
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 218, i32 2
  store i32 0, ptr %98, align 4
  br label %112

99:                                               ; preds = %86, %41
  %100 = phi i32 [ %44, %41 ], [ %88, %86 ]
  %101 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %102 = load ptr, ptr %101, align 8
  tail call void @debugfs_remove(ptr noundef %102) #24
  %103 = load ptr, ptr %27, align 4
  tail call void @destroy_workqueue(ptr noundef %103) #24
  br label %104

104:                                              ; preds = %99, %29
  %105 = phi ptr [ %31, %99 ], [ %27, %29 ]
  %106 = phi i32 [ %100, %99 ], [ -12, %29 ]
  %107 = load ptr, ptr %105, align 4
  tail call void @destroy_workqueue(ptr noundef %107) #24
  br label %108

108:                                              ; preds = %104, %21
  %109 = phi i32 [ -12, %21 ], [ %106, %104 ]
  %110 = load i16, ptr %25, align 8
  %111 = zext i16 %110 to i32
  tail call void @ida_free(ptr noundef nonnull @hci_index_ida, i32 noundef %111) #24
  br label %112

112:                                              ; preds = %108, %90, %17, %13, %9, %5, %1
  %113 = phi i32 [ %109, %108 ], [ %19, %90 ], [ -22, %9 ], [ -22, %5 ], [ -22, %1 ], [ -22, %13 ], [ %19, %17 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rfkill_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rfkill_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rfkill_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_sock_dev_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_suspend_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -2344
  switch i32 %1, label %14 [
    i32 3, label %5
    i32 4, label %7
  ]

5:                                                ; preds = %3
  %6 = tail call i32 @hci_suspend_dev(ptr noundef %4)
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @hci_resume_dev(ptr noundef %4)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %0, i32 -2316
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, ptr noundef %13, i32 noundef %1, i32 noundef %10) #24
  br label %14

14:                                               ; preds = %12, %9, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_unregister_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_set_bit(i32 noundef 9, ptr noundef %2) #24
  tail call void @_raw_write_lock(ptr noundef nonnull @hci_dev_list_lock) #24
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #24, !srcloc !31
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @hci_dev_list_lock, i32 0) #24, !srcloc !32
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #24, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #24, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !33
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 140
  %8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %7) #24
  tail call void @hci_cmd_sync_clear(ptr noundef %0) #24
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 175
  %15 = tail call i32 @unregister_pm_notifier(ptr noundef %14) #24
  br label %16

16:                                               ; preds = %13, %1
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %17) #24
  %18 = tail call i32 @hci_dev_close_sync(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %17) #24
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load volatile i32, ptr %2, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %32) #24
  tail call void @mgmt_index_removed(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %32) #24
  br label %33

33:                                               ; preds = %31, %27, %23, %16
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 184
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %38, label %37, !prof !15

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/bluetooth/hci_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2698, 0\0A.popsection", ""() #24, !srcloc !34
  unreachable

38:                                               ; preds = %33
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 2) #24
  %39 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 205
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  tail call void @rfkill_unregister(ptr noundef nonnull %40) #24
  %43 = load ptr, ptr %39, align 8
  tail call void @rfkill_destroy(ptr noundef %43) #24
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  tail call void @device_del(ptr noundef %45) #24
  tail call void @put_device(ptr noundef %45) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_cmd_sync_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rfkill_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_release_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 203
  %3 = load ptr, ptr %2, align 8
  tail call void @debugfs_remove(ptr noundef %3) #24
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 201
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree_const(ptr noundef %5) #24
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 202
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree_const(ptr noundef %7) #24
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %9 = load ptr, ptr %8, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #24
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 139
  %11 = load ptr, ptr %10, align 8
  tail call void @destroy_workqueue(ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #24
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %23, label %16

16:                                               ; preds = %16, %1
  %17 = phi ptr [ %18, %16 ], [ %14, %1 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %17) #24
  %22 = icmp eq ptr %18, %13
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %1
  %24 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 186
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %34, label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %29, %27 ], [ %25, %23 ]
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %29, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef %28) #24
  %33 = icmp eq ptr %29, %24
  br i1 %33, label %34, label %27

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 187
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %45, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %40, %38 ], [ %36, %34 ]
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %40, ptr %42, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %41, align 4
  tail call void @kfree(ptr noundef %39) #24
  %44 = icmp eq ptr %40, %35
  br i1 %44, label %45, label %38

45:                                               ; preds = %38, %34
  %46 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 188
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %61, label %49

49:                                               ; preds = %58, %45
  %50 = phi ptr [ %59, %58 ], [ %47, %45 ]
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  %55 = icmp eq ptr %50, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.link_key, ptr %50, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %57, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %58

58:                                               ; preds = %56, %49
  %59 = load ptr, ptr %50, align 4
  %60 = icmp eq ptr %59, %46
  br i1 %60, label %61, label %49

61:                                               ; preds = %58, %45
  %62 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 189
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %77, label %65

65:                                               ; preds = %74, %61
  %66 = phi ptr [ %75, %74 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %66, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %68, ptr %70, align 4
  store volatile ptr %69, ptr %68, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %67, align 4
  %71 = icmp eq ptr %66, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.smp_ltk, ptr %66, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %73, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %74

74:                                               ; preds = %72, %65
  %75 = load ptr, ptr %66, align 4
  %76 = icmp eq ptr %75, %62
  br i1 %76, label %77, label %65

77:                                               ; preds = %74, %61
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 190
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %78
  br i1 %80, label %93, label %81

81:                                               ; preds = %90, %77
  %82 = phi ptr [ %91, %90 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %82, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %84, ptr %86, align 4
  store volatile ptr %85, ptr %84, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %83, align 4
  %87 = icmp eq ptr %82, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.smp_irk, ptr %82, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %89, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %90

90:                                               ; preds = %88, %81
  %91 = load ptr, ptr %82, align 4
  %92 = icmp eq ptr %91, %78
  br i1 %92, label %93, label %81

93:                                               ; preds = %90, %77
  %94 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 191
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %94
  br i1 %96, label %104, label %97

97:                                               ; preds = %97, %93
  %98 = phi ptr [ %99, %97 ], [ %95, %93 ]
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  store volatile ptr %99, ptr %101, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %98, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %100, align 4
  tail call void @kfree(ptr noundef %98) #24
  %103 = icmp eq ptr %99, %94
  br i1 %103, label %104, label %97

104:                                              ; preds = %97, %93
  %105 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 216
  %106 = load i16, ptr %105, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 217
  %110 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %109) #24
  store i16 0, ptr %105, align 2
  br label %111

111:                                              ; preds = %108, %104
  %112 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 213
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %125, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %117, %115 ], [ %113, %111 ]
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.adv_info, ptr %116, i32 0, i32 17
  %119 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %118) #24
  %120 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %116, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  tail call void @kfree(ptr noundef %116) #24
  %124 = icmp eq ptr %117, %112
  br i1 %124, label %125, label %115

125:                                              ; preds = %115, %111
  %126 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 214
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 215
  store i8 0, ptr %127, align 8
  tail call void @hci_adv_monitors_clear(ptr noundef %0)
  %128 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 192
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %138, label %131

131:                                              ; preds = %131, %125
  %132 = phi ptr [ %133, %131 ], [ %129, %125 ]
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %135, ptr %136, align 4
  store volatile ptr %133, ptr %135, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %132, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %134, align 4
  tail call void @kfree(ptr noundef %132) #24
  %137 = icmp eq ptr %133, %128
  br i1 %137, label %138, label %131

138:                                              ; preds = %131, %125
  %139 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 193
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %149, label %142

142:                                              ; preds = %142, %138
  %143 = phi ptr [ %144, %142 ], [ %140, %138 ]
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  store ptr %146, ptr %147, align 4
  store volatile ptr %144, ptr %146, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %143, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %145, align 4
  tail call void @kfree(ptr noundef %143) #24
  %148 = icmp eq ptr %144, %139
  br i1 %148, label %149, label %142

149:                                              ; preds = %142, %138
  %150 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 194
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  br i1 %152, label %157, label %153

153:                                              ; preds = %153, %149
  %154 = phi ptr [ %155, %153 ], [ %151, %149 ]
  %155 = load ptr, ptr %154, align 4
  tail call fastcc void @hci_conn_params_free(ptr noundef %154) #24
  %156 = icmp eq ptr %155, %150
  br i1 %156, label %157, label %153

157:                                              ; preds = %153, %149
  %158 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 13
  store i8 0, ptr %158, align 1
  %159 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 12
  store i8 1, ptr %159, align 8
  %160 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 15
  store i8 127, ptr %160, align 1
  %161 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 16
  store i16 0, ptr %161, align 4
  %162 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 17
  %163 = load ptr, ptr %162, align 8
  tail call void @kfree(ptr noundef %163) #24
  store ptr null, ptr %162, align 8
  %164 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 18
  store i32 0, ptr %164, align 4
  %165 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 170, i32 19
  store i32 0, ptr %165, align 8
  %166 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 197
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, %166
  br i1 %168, label %181, label %169

169:                                              ; preds = %178, %157
  %170 = phi ptr [ %179, %178 ], [ %167, %157 ]
  %171 = getelementptr inbounds %struct.list_head, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr %170, align 4
  %174 = getelementptr inbounds %struct.list_head, ptr %173, i32 0, i32 1
  store ptr %172, ptr %174, align 4
  store volatile ptr %173, ptr %172, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %171, align 4
  %175 = icmp eq ptr %170, null
  br i1 %175, label %178, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.blocked_key, ptr %170, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %177, ptr noundef nonnull inttoptr (i32 8 to ptr)) #24
  br label %178

178:                                              ; preds = %176, %169
  %179 = load ptr, ptr %170, align 4
  %180 = icmp eq ptr %179, %166
  br i1 %180, label %181, label %169

181:                                              ; preds = %178, %157
  tail call void @mutex_unlock(ptr noundef %12) #24
  %182 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %183 = load i16, ptr %182, align 8
  %184 = zext i16 %183 to i32
  tail call void @ida_free(ptr noundef nonnull @hci_index_ida, i32 noundef %184) #24
  %185 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %186 = load ptr, ptr %185, align 8
  tail call void @kfree_skb_reason(ptr noundef %186, i32 noundef 0) #24
  tail call void @kfree(ptr noundef %0) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_suspend_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = tail call zeroext i1 @mgmt_powering_down(ptr noundef %0) #24
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %18) #24
  %19 = tail call i32 @hci_suspend_sync(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %18) #24
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %20) #24
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 180
  store i64 0, ptr %21, align 2
  tail call void @mutex_unlock(ptr noundef %20) #24
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 177
  %23 = load i32, ptr %22, align 8
  %24 = trunc i32 %23 to i8
  tail call void @mgmt_suspending(ptr noundef %0, i8 noundef zeroext %24) #24
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 5) #24
  br label %25

25:                                               ; preds = %17, %15, %11, %6, %1
  %26 = phi i32 [ %19, %17 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mgmt_powering_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_suspend_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_suspending(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_resume_dev(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = tail call zeroext i1 @mgmt_powering_down(ptr noundef %0) #24
  br i1 %16, label %25, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %18) #24
  %19 = tail call i32 @hci_resume_sync(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %18) #24
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 180
  %21 = load i8, ptr %20, align 2
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 181
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 182
  %24 = load i8, ptr %23, align 1
  tail call void @mgmt_resuming(ptr noundef %0, i8 noundef zeroext %21, ptr noundef %22, i8 noundef zeroext %24) #24
  tail call void @hci_sock_dev_event(ptr noundef %0, i32 noundef 6) #24
  br label %25

25:                                               ; preds = %17, %15, %11, %6, %1
  %26 = phi i32 [ %19, %17 ], [ 0, %11 ], [ 0, %6 ], [ 0, %1 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_resume_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_resuming(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_reset_dev(ptr noundef %0) #0 {
  %2 = tail call ptr @__alloc_skb(i32 noundef 11, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  store ptr %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3
  store i8 4, ptr %11, align 8
  %12 = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 3) #24
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %12, ptr noundef nonnull align 1 dereferenceable(3) @hci_reset_dev.hw_err, i32 3, i1 false) #24
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.11, ptr noundef %13) #24
  %14 = tail call i32 @hci_recv_frame(ptr noundef %0, ptr noundef nonnull %2)
  br label %15

15:                                               ; preds = %4, %1
  %16 = phi i32 [ %14, %4 ], [ -12, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_recv_frame(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load volatile i32, ptr %5, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  br label %31

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %16 = load i8, ptr %15, align 8
  %17 = add i8 %16, -2
  %18 = icmp ult i8 %17, 4
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = or i8 %22, 1
  store i8 %23, ptr %21, align 4
  %24 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #24
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 159
  tail call void @skb_queue_tail(ptr noundef %26, ptr noundef %1) #24
  %27 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 152
  %30 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %29) #24
  br label %31

31:                                               ; preds = %20, %19, %13
  %32 = phi i32 [ -22, %19 ], [ 0, %20 ], [ -6, %13 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_recv_diag(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i8 -16, ptr %3, align 8
  %4 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #24
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %4, ptr %5, align 8
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 159
  tail call void @skb_queue_tail(ptr noundef %6, ptr noundef %1) #24
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 152
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %9) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_set_hw_info(ptr nocapture noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !annotation !14
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 201
  %5 = load ptr, ptr %4, align 8
  call void @kfree_const(ptr noundef %5) #24
  %6 = load i32, ptr %3, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call ptr @kvasprintf_const(i32 noundef 3264, ptr noundef %1, [1 x i32] %7) #24
  store ptr %8, ptr %4, align 8
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kvasprintf_const(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_set_fw_info(ptr nocapture noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !annotation !14
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 202
  %5 = load ptr, ptr %4, align 4
  call void @kfree_const(ptr noundef %5) #24
  %6 = load i32, ptr %3, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call ptr @kvasprintf_const(i32 noundef 3264, ptr noundef %1, [1 x i32] %7) #24
  store ptr %8, ptr %4, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_register_cb(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #24
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hci_cb_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @hci_cb_list, i32 0, i32 1), align 4
  store ptr @hci_cb_list, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  store volatile ptr %0, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_unregister_cb(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @hci_cb_list_lock) #24
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @hci_cb_list_lock) #24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_send_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @hci_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.12, ptr noundef %8) #24
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 14
  %11 = load i8, ptr %10, align 2
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 2
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  tail call void @skb_queue_tail(ptr noundef %13, ptr noundef nonnull %5) #24
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16) #24
  br label %18

18:                                               ; preds = %9, %7
  %19 = phi i32 [ 0, %9 ], [ -12, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_prepare_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__hci_cmd_send(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = zext i16 %1 to i32
  %6 = and i32 %5, 64512
  %7 = icmp eq i32 %6, 64512
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13, ptr noundef %9) #24
  br label %17

10:                                               ; preds = %4
  %11 = tail call ptr @hci_prepare_cmd(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14, ptr noundef %14, i32 noundef %5) #24
  br label %17

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @hci_send_frame(ptr noundef %0, ptr noundef nonnull %11)
  br label %17

17:                                               ; preds = %15, %13, %8
  %18 = phi i32 [ -22, %8 ], [ 0, %15 ], [ -12, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_send_frame(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #24
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 2
  store i64 %3, ptr %4, align 8
  tail call void @hci_send_to_monitor(ptr noundef %0, ptr noundef %1) #24
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 200
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @hci_send_to_sock(ptr noundef %0, ptr noundef %1) #24
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %1) #24
  store ptr null, ptr %10, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  store ptr null, ptr %14, align 4
  br label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !15

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #24, !srcloc !35
  unreachable

20:                                               ; preds = %15, %13
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 231
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0, ptr noundef %1) #24
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %31, i32 noundef %28) #24
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %28, %30 ], [ -22, %20 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #24
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi i32 [ 0, %25 ], [ %33, %32 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @hci_sent_cmd_data(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i16, ptr %8, align 1
  %10 = icmp eq i16 %9, %1
  %11 = getelementptr i8, ptr %8, i32 3
  %12 = select i1 %10, ptr %11, ptr null
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ null, %2 ], [ %12, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_acl(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 65
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  store i32 %13, ptr %9, align 8
  store i32 0, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i8 2, ptr %14, align 8
  %15 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  switch i8 %16, label %21 [
    i8 0, label %17
    i8 1, label %19
  ]

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 11
  br label %24

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 1
  br label %24

21:                                               ; preds = %3
  %22 = zext i8 %16 to i32
  %23 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %23, i32 noundef %22) #24
  br label %90

24:                                               ; preds = %19, %17
  %25 = phi ptr [ %20, %19 ], [ %18, %17 ]
  %26 = load i16, ptr %25, align 2
  %27 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 4) #24
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %31 to i32
  %34 = sub i32 %32, %33
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  store i16 %35, ptr %36, align 2
  %37 = and i32 %34, 65535
  %38 = getelementptr i8, ptr %31, i32 %37
  %39 = and i16 %26, 4095
  %40 = shl i16 %2, 12
  %41 = or i16 %39, %40
  store i16 %41, ptr %38, align 1
  %42 = trunc i32 %13 to i16
  %43 = getelementptr inbounds %struct.hci_acl_hdr, ptr %38, i32 0, i32 1
  store i16 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %24
  tail call void @skb_queue_tail(ptr noundef %8, ptr noundef %1) #24
  br label %90

50:                                               ; preds = %24
  store ptr null, ptr %46, align 8
  %51 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 3, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %51) #24
  %52 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 3, i32 0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  store volatile ptr %8, ptr %1, align 8
  %54 = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 1
  store volatile ptr %53, ptr %54, align 4
  store volatile ptr %1, ptr %52, align 4
  store volatile ptr %1, ptr %53, align 4
  %55 = getelementptr inbounds %struct.hci_chan, ptr %0, i32 0, i32 3, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store volatile i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 11
  %59 = and i16 %40, -16384
  br label %60

60:                                               ; preds = %60, %50
  %61 = phi ptr [ %47, %50 ], [ %62, %60 ]
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 3
  store i8 2, ptr %63, align 8
  %64 = load i16, ptr %58, align 2
  %65 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = tail call ptr @skb_push(ptr noundef nonnull %61, i32 noundef 4) #24
  %68 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 17
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 16
  %71 = load ptr, ptr %70, align 8
  %72 = ptrtoint ptr %69 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 13, i32 0, i32 17
  store i16 %75, ptr %76, align 2
  %77 = and i32 %74, 65535
  %78 = getelementptr i8, ptr %71, i32 %77
  %79 = and i16 %64, 4095
  %80 = or i16 %59, %79
  %81 = or i16 %80, 4096
  store i16 %81, ptr %78, align 1
  %82 = trunc i32 %66 to i16
  %83 = getelementptr inbounds %struct.hci_acl_hdr, ptr %78, i32 0, i32 1
  store i16 %82, ptr %83, align 1
  %84 = load ptr, ptr %52, align 4
  store volatile ptr %8, ptr %61, align 8
  %85 = getelementptr inbounds %struct.anon.2, ptr %61, i32 0, i32 1
  store volatile ptr %84, ptr %85, align 4
  store volatile ptr %61, ptr %52, align 4
  store volatile ptr %61, ptr %84, align 4
  %86 = load i32, ptr %55, align 4
  %87 = add i32 %86, 1
  store volatile i32 %87, ptr %55, align 4
  %88 = icmp eq ptr %62, null
  br i1 %88, label %89, label %60

89:                                               ; preds = %60
  tail call void @_raw_spin_unlock_bh(ptr noundef %51) #24
  br label %90

90:                                               ; preds = %89, %49, %21
  %91 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 138
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.hci_dev, ptr %7, i32 0, i32 154
  %94 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %92, ptr noundef %93) #24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_sco(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 11
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = trunc i32 %8 to i8
  %10 = tail call ptr @skb_push(ptr noundef %1, i32 noundef 3) #24
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  store i16 %18, ptr %19, align 2
  %20 = and i32 %17, 65535
  %21 = getelementptr i8, ptr %14, i32 %20
  store i16 %6, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 %9, ptr %22, align 1
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store i8 3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 56
  tail call void @skb_queue_tail(ptr noundef %24, ptr noundef %1) #24
  %25 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 138
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.hci_dev, ptr %4, i32 0, i32 154
  %28 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %26, ptr noundef %27) #24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_req_cmd_complete(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 162
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i16, ptr %11, align 1
  %13 = icmp eq i16 %12, %1
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %11, i32 3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %47

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  br label %113

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne i16 %1, 3075
  %26 = or i1 %25, %24
  %27 = icmp eq i16 %12, 3075
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %113, label %38

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 3
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = icmp ne i16 %1, 3075
  %35 = or i1 %34, %33
  %36 = icmp eq i16 %12, 3075
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %113, label %38

38:                                               ; preds = %29, %20
  %39 = tail call ptr @skb_clone(ptr noundef nonnull %7, i32 noundef 3264) #24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %113, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  tail call void @skb_queue_head(ptr noundef %42, ptr noundef nonnull %39) #24
  %43 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 138
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 153
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %45) #24
  br label %113

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 42, ptr noundef %48) #24
  %49 = icmp eq i8 %2, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  %54 = icmp eq ptr %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 3, i32 14
  %58 = load i8, ptr %57, align 2
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %56, %50, %47
  %62 = load ptr, ptr %6, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3, i32 14
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3, i32 16
  %68 = load ptr, ptr %67, align 8
  br i1 %66, label %70, label %69

69:                                               ; preds = %61
  store ptr %68, ptr %4, align 4
  br label %113

70:                                               ; preds = %61
  %71 = icmp eq ptr %68, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %70
  store ptr %68, ptr %3, align 4
  br label %113

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161
  %75 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161, i32 2
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #24
  %77 = load ptr, ptr %74, align 4
  %78 = icmp eq ptr %77, %74
  %79 = icmp eq ptr %77, null
  %80 = or i1 %78, %79
  br i1 %80, label %112, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 161, i32 1
  br label %83

83:                                               ; preds = %102, %81
  %84 = phi ptr [ %77, %81 ], [ %108, %102 ]
  %85 = load i32, ptr %82, align 4
  %86 = add i32 %85, -1
  store volatile i32 %86, ptr %82, align 4
  %87 = load ptr, ptr %84, align 8
  %88 = getelementptr inbounds %struct.anon.2, ptr %84, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr null, ptr %88, align 4
  store ptr null, ptr %84, align 8
  %90 = getelementptr inbounds %struct.anon.2, ptr %87, i32 0, i32 1
  store volatile ptr %89, ptr %90, align 4
  store volatile ptr %87, ptr %89, align 8
  %91 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 3, i32 14
  %92 = load i8, ptr %91, align 2
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %83
  %97 = getelementptr inbounds %struct.anon.2, ptr %84, i32 0, i32 1
  %98 = load ptr, ptr %74, align 4
  store volatile ptr %98, ptr %84, align 8
  store volatile ptr %74, ptr %97, align 4
  %99 = getelementptr inbounds %struct.sk_buff_list, ptr %98, i32 0, i32 1
  store volatile ptr %84, ptr %99, align 4
  store volatile ptr %84, ptr %74, align 4
  %100 = load i32, ptr %82, align 4
  %101 = add i32 %100, 1
  store volatile i32 %101, ptr %82, align 4
  br label %112

102:                                              ; preds = %83
  %103 = and i32 %93, 2
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 3, i32 16
  %106 = load ptr, ptr %105, align 8
  %107 = select i1 %104, ptr %3, ptr %4
  store ptr %106, ptr %107, align 4
  tail call void @kfree_skb_reason(ptr noundef nonnull %84, i32 noundef 0) #24
  %108 = load ptr, ptr %74, align 4
  %109 = icmp eq ptr %108, %74
  %110 = icmp eq ptr %108, null
  %111 = or i1 %109, %110
  br i1 %111, label %112, label %83

112:                                              ; preds = %102, %96, %73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #24
  br label %113

113:                                              ; preds = %112, %72, %69, %56, %41, %38, %29, %20, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_add(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_open_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_hash_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_reset_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_update_adv_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_new_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #20

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tagged(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_powered_update_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_power_on(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_set_powered_failed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_added(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_rfkill_set_block(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 206
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  br i1 %1, label %8, label %19

8:                                                ; preds = %7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %3) #24
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load volatile i32, ptr %3, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 163
  tail call void @mutex_lock(ptr noundef %17) #24
  %18 = tail call i32 @hci_dev_close_sync(ptr noundef %0) #24
  tail call void @mutex_unlock(ptr noundef %17) #24
  br label %20

19:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %3) #24
  br label %20

20:                                               ; preds = %19, %16, %12, %8, %2
  %21 = phi i32 [ -16, %2 ], [ 0, %8 ], [ 0, %12 ], [ 0, %16 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_to_monitor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_to_sock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hci_low_sent(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  br label %79

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 3
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 2
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 1
  br label %13

13:                                               ; preds = %44, %8
  %14 = phi ptr [ %5, %8 ], [ %48, %44 ]
  %15 = phi ptr [ null, %8 ], [ %47, %44 ]
  %16 = phi i32 [ 0, %8 ], [ %46, %44 ]
  %17 = phi i32 [ -1, %8 ], [ %45, %44 ]
  %18 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 14
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %1
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 56
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 12
  %27 = load i16, ptr %26, align 4
  switch i16 %27, label %44 [
    i16 1, label %28
    i16 7, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = add i32 %16, 1
  %30 = getelementptr inbounds %struct.hci_conn, ptr %14, i32 0, i32 55
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %17
  %33 = tail call i32 @llvm.umin.i32(i32 %31, i32 %17)
  %34 = select i1 %32, ptr %14, ptr %15
  switch i8 %1, label %41 [
    i8 1, label %38
    i8 -127, label %35
    i8 -128, label %36
    i8 0, label %37
    i8 2, label %37
  ]

35:                                               ; preds = %28
  br label %38

36:                                               ; preds = %28
  br label %38

37:                                               ; preds = %28, %28
  br label %38

38:                                               ; preds = %37, %36, %35, %28
  %39 = phi ptr [ %9, %37 ], [ %10, %36 ], [ %11, %35 ], [ %12, %28 ]
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ 0, %28 ], [ %40, %38 ]
  %43 = icmp eq i32 %42, %29
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %25, %21, %13
  %45 = phi i32 [ %17, %13 ], [ %17, %21 ], [ %33, %41 ], [ %17, %25 ]
  %46 = phi i32 [ %16, %13 ], [ %16, %21 ], [ %29, %41 ], [ %16, %25 ]
  %47 = phi ptr [ %15, %13 ], [ %15, %21 ], [ %34, %41 ], [ %15, %25 ]
  %48 = load volatile ptr, ptr %14, align 4
  %49 = icmp eq ptr %48, %4
  br i1 %49, label %50, label %13

50:                                               ; preds = %44, %41
  %51 = phi i32 [ %46, %44 ], [ %29, %41 ]
  %52 = phi ptr [ %47, %44 ], [ %34, %41 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %53 = icmp eq ptr %52, null
  br i1 %53, label %79, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.hci_conn, ptr %52, i32 0, i32 14
  %56 = load i8, ptr %55, align 1
  switch i8 %56, label %71 [
    i8 1, label %57
    i8 0, label %60
    i8 2, label %60
    i8 -128, label %63
  ]

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  %59 = load i32, ptr %58, align 8
  br label %74

60:                                               ; preds = %54, %54
  %61 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 121
  %62 = load i32, ptr %61, align 4
  br label %74

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 125
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 122
  %68 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  %69 = select i1 %66, ptr %68, ptr %67
  %70 = load i32, ptr %69, align 8
  br label %74

71:                                               ; preds = %54
  %72 = zext i8 %56 to i32
  %73 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %73, i32 noundef %72) #24
  br label %74

74:                                               ; preds = %71, %63, %60, %57
  %75 = phi i32 [ 0, %71 ], [ %70, %63 ], [ %62, %60 ], [ %59, %57 ]
  %76 = udiv i32 %75, %51
  %77 = icmp ugt i32 %51, %75
  %78 = select i1 %77, i32 1, i32 %76
  br label %79

79:                                               ; preds = %74, %50, %7
  %80 = phi ptr [ %52, %74 ], [ null, %50 ], [ null, %7 ]
  %81 = phi i32 [ %78, %74 ], [ 0, %50 ], [ 0, %7 ]
  store i32 %81, ptr %2, align 4
  ret ptr %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hci_chan_sent(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !23
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 3
  %6 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 4
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 2
  %8 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 183, i32 1
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %82, label %11

11:                                               ; preds = %74, %3
  %12 = phi ptr [ %80, %74 ], [ %9, %3 ]
  %13 = phi ptr [ %79, %74 ], [ null, %3 ]
  %14 = phi i32 [ %78, %74 ], [ 0, %3 ]
  %15 = phi i32 [ %77, %74 ], [ -1, %3 ]
  %16 = phi i32 [ %76, %74 ], [ 0, %3 ]
  %17 = phi i32 [ %75, %74 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 14
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, %1
  br i1 %20, label %21, label %74

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 12
  %23 = load i16, ptr %22, align 4
  switch i16 %23, label %74 [
    i16 1, label %24
    i16 7, label %24
  ]

24:                                               ; preds = %21, %21
  %25 = add i32 %17, 1
  %26 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 57
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hci_conn, ptr %12, i32 0, i32 55
  br label %31

31:                                               ; preds = %53, %29
  %32 = phi ptr [ %27, %29 ], [ %58, %53 ]
  %33 = phi ptr [ %13, %29 ], [ %57, %53 ]
  %34 = phi i32 [ %14, %29 ], [ %56, %53 ]
  %35 = phi i32 [ %15, %29 ], [ %55, %53 ]
  %36 = phi i32 [ %16, %29 ], [ %54, %53 ]
  %37 = getelementptr inbounds %struct.hci_chan, ptr %32, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %53, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 13, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %42, %36
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = icmp ugt i32 %42, %36
  %46 = select i1 %45, i32 -1, i32 %35
  %47 = add i32 %34, 1
  %48 = select i1 %45, i32 1, i32 %47
  %49 = load i32, ptr %30, align 4
  %50 = icmp ult i32 %49, %46
  %51 = tail call i32 @llvm.umin.i32(i32 %49, i32 %46)
  %52 = select i1 %50, ptr %32, ptr %33
  br label %53

53:                                               ; preds = %44, %40, %31
  %54 = phi i32 [ %42, %44 ], [ %36, %31 ], [ %36, %40 ]
  %55 = phi i32 [ %51, %44 ], [ %35, %31 ], [ %35, %40 ]
  %56 = phi i32 [ %48, %44 ], [ %34, %31 ], [ %34, %40 ]
  %57 = phi ptr [ %52, %44 ], [ %33, %31 ], [ %33, %40 ]
  %58 = load volatile ptr, ptr %32, align 4
  %59 = icmp eq ptr %58, %26
  br i1 %59, label %60, label %31

60:                                               ; preds = %53, %24
  %61 = phi i32 [ %16, %24 ], [ %54, %53 ]
  %62 = phi i32 [ %15, %24 ], [ %55, %53 ]
  %63 = phi i32 [ %14, %24 ], [ %56, %53 ]
  %64 = phi ptr [ %13, %24 ], [ %57, %53 ]
  switch i8 %1, label %71 [
    i8 1, label %68
    i8 -127, label %65
    i8 -128, label %66
    i8 0, label %67
    i8 2, label %67
  ]

65:                                               ; preds = %60
  br label %68

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60, %60
  br label %68

68:                                               ; preds = %67, %66, %65, %60
  %69 = phi ptr [ %5, %67 ], [ %6, %66 ], [ %7, %65 ], [ %8, %60 ]
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %60
  %72 = phi i32 [ 0, %60 ], [ %70, %68 ]
  %73 = icmp eq i32 %72, %25
  br i1 %73, label %82, label %74

74:                                               ; preds = %71, %21, %11
  %75 = phi i32 [ %17, %11 ], [ %17, %21 ], [ %25, %71 ]
  %76 = phi i32 [ %16, %11 ], [ %16, %21 ], [ %61, %71 ]
  %77 = phi i32 [ %15, %11 ], [ %15, %21 ], [ %62, %71 ]
  %78 = phi i32 [ %14, %11 ], [ %14, %21 ], [ %63, %71 ]
  %79 = phi ptr [ %13, %11 ], [ %13, %21 ], [ %64, %71 ]
  %80 = load volatile ptr, ptr %12, align 4
  %81 = icmp eq ptr %80, %4
  br i1 %81, label %82, label %11

82:                                               ; preds = %74, %71, %3
  %83 = phi i32 [ 0, %3 ], [ %78, %74 ], [ %63, %71 ]
  %84 = phi ptr [ null, %3 ], [ %79, %74 ], [ %64, %71 ]
  tail call void asm sideeffect "", "~{memory}"() #24, !srcloc !24
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.hci_chan, ptr %84, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.hci_conn, ptr %88, i32 0, i32 14
  %90 = load i8, ptr %89, align 1
  switch i8 %90, label %109 [
    i8 1, label %91
    i8 -127, label %94
    i8 0, label %98
    i8 2, label %98
    i8 -128, label %101
  ]

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  %93 = load i32, ptr %92, align 8
  br label %112

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 132
  %96 = load i16, ptr %95, align 2
  %97 = zext i16 %96 to i32
  br label %112

98:                                               ; preds = %86, %86
  %99 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 121
  %100 = load i32, ptr %99, align 4
  br label %112

101:                                              ; preds = %86
  %102 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 125
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 122
  %106 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 120
  %107 = select i1 %104, ptr %106, ptr %105
  %108 = load i32, ptr %107, align 8
  br label %112

109:                                              ; preds = %86
  %110 = zext i8 %90 to i32
  %111 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %111, i32 noundef %110) #24
  br label %112

112:                                              ; preds = %109, %101, %98, %94, %91
  %113 = phi i32 [ 0, %109 ], [ %108, %101 ], [ %100, %98 ], [ %97, %94 ], [ %93, %91 ]
  %114 = udiv i32 %113, %83
  %115 = icmp ugt i32 %83, %113
  %116 = select i1 %115, i32 1, i32 %114
  store i32 %116, ptr %2, align 4
  br label %117

117:                                              ; preds = %112, %82
  ret ptr %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_conn_enter_active_mode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_disconnect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_event_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_recv_acldata(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sco_recv_scodata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hci_req_status_pend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hci_cmd_sync_cancel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.abs.i8(i8, i1 immarg) #22

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #23

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #21 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { nounwind }
attributes #25 = { nounwind allocsize(2) }
attributes #26 = { nounwind readnone }
attributes #27 = { nounwind readonly }
attributes #28 = { nounwind allocsize(0) }

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
!8 = !{i64 2149357123}
!9 = !{i64 515756, i64 2148005727, i64 2148005753, i64 2148005800, i64 2148005822, i64 2148005850, i64 2148005870}
!10 = !{i64 1860547, i64 1860570, i64 1860590, i64 1860614, i64 1860630}
!11 = !{i64 2149345065}
!12 = !{i64 2149345140, i64 2149345167, i64 2149345214, i64 2149345236, i64 2149345264, i64 2149345284}
!13 = !{i64 2149394726}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 4102452}
!17 = !{i64 4102649}
!18 = !{i64 2151587928}
!19 = !{i64 2151606918, i64 2151606943}
!20 = !{i64 2151606340, i64 2151606365}
!21 = !{i64 2156212234, i64 2156212514, i64 2156212848, i64 2156213182}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2149126684}
!24 = !{i64 2149126901}
!25 = !{i64 2149151925}
!26 = !{i64 2148118594}
!27 = !{i64 2148020980, i64 2148021012, i64 2148021041, i64 2148021075, i64 2148021106, i64 2148021129}
!28 = !{i64 2148118797}
!29 = !{i8 0, i8 2}
!30 = !{i64 2148020296, i64 2148020322, i64 2148020351, i64 2148020385, i64 2148020416, i64 2148020439}
!31 = !{i64 2149356318}
!32 = !{i64 1859532}
!33 = !{i64 2149394287}
!34 = !{i64 2156714733, i64 2156715223, i64 2156714770, i64 2156714826, i64 2156714860, i64 2156714884, i64 2156714925, i64 2156714946, i64 2156714974, i64 2156715008}
!35 = !{i64 2154532495, i64 2154532983, i64 2154532532, i64 2154532588, i64 2154532622, i64 2154532646, i64 2154532687, i64 2154532708, i64 2154532736, i64 2154532770}
