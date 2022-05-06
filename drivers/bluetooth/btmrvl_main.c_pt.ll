; ModuleID = '/llk/IR/drivers/bluetooth/btmrvl_main.c_pt.bc'
source_filename = "../drivers/bluetooth/btmrvl_main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_check_evtpkt:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_check_evtpkt\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_check_evtpkt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_process_event:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_process_event\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_process_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_send_module_cfg_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_send_module_cfg_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_send_module_cfg_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_pscan_window_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_pscan_window_reporting\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_pscan_window_reporting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_send_hscfg_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_send_hscfg_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_send_hscfg_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_enable_ps:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_enable_ps\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_enable_ps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_enable_hs\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_enable_hs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_register_hdev:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_register_hdev\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_register_hdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_add_card:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_add_card\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_add_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btmrvl_remove_card:\09\09\09\09\09"
module asm "\09.asciz \09\22btmrvl_remove_card\22\09\09\09\09\09"
module asm "__kstrtabns_btmrvl_remove_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.btmrvl_private = type { %struct.btmrvl_device, ptr, %struct.btmrvl_thread, ptr, ptr, ptr, %struct.spinlock, ptr, i8 }
%struct.btmrvl_device = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i8, i8 }
%struct.btmrvl_thread = type { ptr, %struct.wait_queue_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.btmrvl_adapter = type { ptr, ptr, i32, %struct.sk_buff_head, i8, i8, i8, i8, %struct.wait_queue_head, %struct.wait_queue_head, i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.btmrvl_event = type { i8, i8, [4 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hci_command_hdr = type <{ i16, i8 }>
%struct.btmrvl_sdio_card = type { ptr, i32, ptr, ptr, ptr, i8, i8, i16, i8, ptr, ptr, ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_btmrvl_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_interrupt to i32), ptr @__kstrtab_btmrvl_interrupt, ptr @__kstrtabns_btmrvl_interrupt }, section "___ksymtab_gpl+btmrvl_interrupt", align 4
@__kstrtab_btmrvl_check_evtpkt = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_check_evtpkt = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_check_evtpkt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_check_evtpkt to i32), ptr @__kstrtab_btmrvl_check_evtpkt, ptr @__kstrtabns_btmrvl_check_evtpkt }, section "___ksymtab_gpl+btmrvl_check_evtpkt", align 4
@__kstrtab_btmrvl_process_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_process_event = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_process_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_process_event to i32), ptr @__kstrtab_btmrvl_process_event, ptr @__kstrtabns_btmrvl_process_event }, section "___ksymtab_gpl+btmrvl_process_event", align 4
@.str = private unnamed_addr constant [27 x i8] c"module_cfg_cmd(%x) failed\0A\00", align 1
@__kstrtab_btmrvl_send_module_cfg_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_send_module_cfg_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_send_module_cfg_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_send_module_cfg_cmd to i32), ptr @__kstrtab_btmrvl_send_module_cfg_cmd, ptr @__kstrtabns_btmrvl_send_module_cfg_cmd }, section "___ksymtab_gpl+btmrvl_send_module_cfg_cmd", align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"PSCAN_WIN_REPORT_ENABLE command failed: %#x\0A\00", align 1
@__kstrtab_btmrvl_pscan_window_reporting = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_pscan_window_reporting = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_pscan_window_reporting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_pscan_window_reporting to i32), ptr @__kstrtab_btmrvl_pscan_window_reporting, ptr @__kstrtabns_btmrvl_pscan_window_reporting }, section "___ksymtab_gpl+btmrvl_pscan_window_reporting", align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"HSCFG command failed\0A\00", align 1
@__kstrtab_btmrvl_send_hscfg_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_send_hscfg_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_send_hscfg_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_send_hscfg_cmd to i32), ptr @__kstrtab_btmrvl_send_hscfg_cmd, ptr @__kstrtabns_btmrvl_send_hscfg_cmd }, section "___ksymtab_gpl+btmrvl_send_hscfg_cmd", align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"PSMODE command failed\0A\00", align 1
@__kstrtab_btmrvl_enable_ps = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_enable_ps = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_enable_ps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_enable_ps to i32), ptr @__kstrtab_btmrvl_enable_ps, ptr @__kstrtabns_btmrvl_enable_ps }, section "___ksymtab_gpl+btmrvl_enable_ps", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Host sleep enable command failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"event_hs_wait_q terminated (%d): %d,%d,%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"hs_enable timeout: %d,%d,%d\0A\00", align 1
@__kstrtab_btmrvl_enable_hs = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_enable_hs = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_enable_hs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_enable_hs to i32), ptr @__kstrtab_btmrvl_enable_hs, ptr @__kstrtabns_btmrvl_enable_hs }, section "___ksymtab_gpl+btmrvl_enable_hs", align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Can not allocate HCI device\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Can not register HCI device\0A\00", align 1
@__kstrtab_btmrvl_register_hdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_register_hdev = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_register_hdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_register_hdev to i32), ptr @__kstrtab_btmrvl_register_hdev, ptr @__kstrtabns_btmrvl_register_hdev }, section "___ksymtab_gpl+btmrvl_register_hdev", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Can not allocate priv\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Allocate buffer for btmrvl_adapter failed!\0A\00", align 1
@btmrvl_add_card.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"&priv->main_thread.wait_q\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"btmrvl_main_service\00", align 1
@__kstrtab_btmrvl_add_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_add_card = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_add_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_add_card to i32), ptr @__kstrtab_btmrvl_add_card, ptr @__kstrtabns_btmrvl_add_card }, section "___ksymtab_gpl+btmrvl_add_card", align 4
@__kstrtab_btmrvl_remove_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_btmrvl_remove_card = external dso_local constant [0 x i8], align 1
@__ksymtab_btmrvl_remove_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btmrvl_remove_card to i32), ptr @__kstrtab_btmrvl_remove_card, ptr @__kstrtabns_btmrvl_remove_card }, section "___ksymtab_gpl+btmrvl_remove_card", align 4
@__UNIQUE_ID_author435 = internal constant [34 x i8] c"author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description436 = internal constant [45 x i8] c"description=Marvell Bluetooth driver ver 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version437 = internal constant [12 x i8] c"version=1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_license438 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Card is removed\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"No free skb\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"%s: Device is suspending or suspended\0A\00", align 1
@__func__.btmrvl_send_frame = private unnamed_addr constant [18 x i8] c"btmrvl_send_frame\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"marvell,wakeup-pin\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"marvell,wakeup-gap-ms\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"marvell,cal-data\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"Failed to download calibration data\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"BT_CMD_ROUTE_SCO_TO_HOST command failed: %#x\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"%s: changing btmrvl device address failed (%ld)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"Unable to allocate buffer for hw_regs.\0A\00", align 1
@btmrvl_init_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"&priv->adapter->cmd_wait_q\00", align 1
@btmrvl_init_adapter.__key.26 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"&priv->adapter->event_hs_wait_q\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Tx Error: Bad skb length %d : %d\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author435, ptr @__UNIQUE_ID_description436, ptr @__UNIQUE_ID_license438, ptr @__UNIQUE_ID_version437, ptr @__ksymtab_btmrvl_add_card, ptr @__ksymtab_btmrvl_check_evtpkt, ptr @__ksymtab_btmrvl_enable_hs, ptr @__ksymtab_btmrvl_enable_ps, ptr @__ksymtab_btmrvl_interrupt, ptr @__ksymtab_btmrvl_process_event, ptr @__ksymtab_btmrvl_pscan_window_reporting, ptr @__ksymtab_btmrvl_register_hdev, ptr @__ksymtab_btmrvl_remove_card, ptr @__ksymtab_btmrvl_send_hscfg_cmd, ptr @__ksymtab_btmrvl_send_module_cfg_cmd], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @btmrvl_interrupt(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.btmrvl_adapter, ptr %3, i32 0, i32 5
  store i8 0, ptr %4, align 1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.btmrvl_adapter, ptr %5, i32 0, i32 7
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.btmrvl_adapter, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.btmrvl_adapter, ptr %11, i32 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8 0, ptr %12, align 2
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 2, i32 1
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @btmrvl_check_evtpkt(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 14
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 10
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %4, i32 3
  %13 = load i16, ptr %12, align 1
  store i8 0, ptr %8, align 1
  %14 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.btmrvl_adapter, ptr %15, i32 0, i32 10
  store i8 1, ptr %16, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.btmrvl_adapter, ptr %17, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %18, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %19 = icmp ugt i16 %13, -1025
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %21

21:                                               ; preds = %20, %11, %7, %2
  %22 = phi i1 [ false, %20 ], [ true, %11 ], [ true, %7 ], [ true, %2 ]
  ret i1 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_process_event(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, -1
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.btmrvl_event, ptr %6, i32 0, i32 2
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %62 [
    i8 35, label %12
    i8 89, label %61
    i8 90, label %23
    i8 91, label %36
    i8 32, label %55
  ]

12:                                               ; preds = %9
  %13 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 2
  %20 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 4
  br i1 %19, label %21, label %22

21:                                               ; preds = %16
  store i8 1, ptr %20, align 4
  br label %61

22:                                               ; preds = %16
  store i8 0, ptr %20, align 4
  br label %61

23:                                               ; preds = %9
  %24 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 1
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 6
  store i8 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 5
  store i8 1, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %35, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %61

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 10
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 1
  %42 = load i8, ptr %41, align 1
  switch i8 %42, label %62 [
    i8 -15, label %43
    i8 -14, label %61
  ]

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.btmrvl_event, ptr %6, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = icmp ugt i8 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 2
  store i8 1, ptr %52, align 4
  br label %61

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 2
  store i8 0, ptr %54, align 4
  br label %61

55:                                               ; preds = %9
  %56 = getelementptr %struct.btmrvl_event, ptr %6, i32 0, i32 2, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 5
  store i8 1, ptr %60, align 1
  br label %61

61:                                               ; preds = %59, %55, %53, %51, %40, %34, %23, %22, %21, %12, %9
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %62

62:                                               ; preds = %61, %40, %36, %9, %2
  %63 = phi i32 [ 0, %61 ], [ -22, %2 ], [ -22, %36 ], [ -22, %9 ], [ -22, %40 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_send_module_cfg_cmd(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -933, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, i32 noundef %7) #9
  br label %8

8:                                                ; preds = %6, %2
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 8
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.13) #9
  br label %90

10:                                               ; preds = %4
  %11 = zext i8 %3 to i32
  %12 = add nuw nsw i32 %11, 11
  %13 = tail call ptr @__alloc_skb(i32 noundef %12, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.14) #9
  br label %90

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 8
  store ptr %22, ptr %20, align 8
  %23 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef 3) #9
  store i16 %1, ptr %23, align 1
  %24 = getelementptr inbounds %struct.hci_command_hdr, ptr %23, i32 0, i32 1
  store i8 %3, ptr %24, align 1
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %16
  %27 = tail call ptr @skb_put(ptr noundef nonnull %13, i32 noundef %11) #9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %2, i32 %11, i1 false) #9
  br label %28

28:                                               ; preds = %26, %16
  %29 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  store i8 -2, ptr %29, align 8
  %30 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.btmrvl_adapter, ptr %31, i32 0, i32 3
  tail call void @skb_queue_head(ptr noundef %32, ptr noundef nonnull %13) #9
  %33 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 10
  store i8 1, ptr %33, align 1
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.btmrvl_adapter, ptr %34, i32 0, i32 10
  store i8 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 2, i32 1
  tail call void @__wake_up(ptr noundef %36, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.btmrvl_adapter, ptr %37, i32 0, i32 10
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %28
  %42 = load i8, ptr %6, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr inbounds %struct.btmrvl_adapter, ptr %45, i32 0, i32 8
  %47 = call i32 @prepare_to_wait_event(ptr noundef %46, ptr noundef nonnull %5, i32 noundef 1) #9
  %48 = load ptr, ptr %30, align 4
  %49 = getelementptr inbounds %struct.btmrvl_adapter, ptr %48, i32 0, i32 10
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load i8, ptr %6, align 4, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %64, label %84

55:                                               ; preds = %69
  %56 = load i8, ptr %6, align 4, !range !8
  %57 = icmp ne i8 %56, 0
  %58 = xor i1 %57, true
  %59 = icmp ne i32 %70, 0
  %60 = select i1 %58, i1 true, i1 %59
  %61 = select i1 %60, i32 %70, i32 1
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %57, i1 true, i1 %62
  br i1 %63, label %81, label %64

64:                                               ; preds = %55, %52
  %65 = phi i32 [ %61, %55 ], [ 500, %52 ]
  %66 = phi i32 [ %73, %55 ], [ %47, %52 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %86

69:                                               ; preds = %64
  %70 = call i32 @schedule_timeout(i32 noundef %65) #9
  %71 = load ptr, ptr %30, align 4
  %72 = getelementptr inbounds %struct.btmrvl_adapter, ptr %71, i32 0, i32 8
  %73 = call i32 @prepare_to_wait_event(ptr noundef %72, ptr noundef nonnull %5, i32 noundef 1) #9
  %74 = load ptr, ptr %30, align 4
  %75 = getelementptr inbounds %struct.btmrvl_adapter, ptr %74, i32 0, i32 10
  %76 = load i8, ptr %75, align 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %55, label %78

78:                                               ; preds = %69, %44
  %79 = phi ptr [ %48, %44 ], [ %74, %69 ]
  %80 = getelementptr inbounds %struct.btmrvl_adapter, ptr %79, i32 0, i32 8
  call void @finish_wait(ptr noundef %80, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %86

81:                                               ; preds = %55
  %82 = icmp eq i32 %61, 0
  %83 = getelementptr inbounds %struct.btmrvl_adapter, ptr %74, i32 0, i32 8
  call void @finish_wait(ptr noundef %83, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br i1 %82, label %90, label %86

84:                                               ; preds = %52
  %85 = getelementptr inbounds %struct.btmrvl_adapter, ptr %48, i32 0, i32 8
  call void @finish_wait(ptr noundef %85, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %86

86:                                               ; preds = %84, %81, %78, %68, %41, %28
  %87 = load i8, ptr %6, align 4, !range !8
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, i32 0, i32 -14
  br label %90

90:                                               ; preds = %86, %81, %15, %9
  %91 = phi i32 [ -14, %9 ], [ -12, %15 ], [ -110, %81 ], [ %89, %86 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_pscan_window_reporting(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -1021, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, i32 noundef %9) #9
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = phi i32 [ 0, %2 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_send_hscfg_cmd(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = lshr i16 %4, 8
  %6 = trunc i16 %5 to i8
  store i8 %6, ptr %2, align 2
  %7 = trunc i16 %4 to i8
  %8 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %7, ptr %8, align 1
  %9 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -935, ptr noundef nonnull %2, i8 noundef zeroext 2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #9
  br label %12

12:                                               ; preds = %11, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_enable_ps(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i8 3, i8 2
  store i8 %6, ptr %2, align 1
  %7 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -989, ptr noundef nonnull %2, i8 noundef zeroext 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3) #9
  br label %10

10:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_enable_hs(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -934, ptr noundef null, i8 noundef zeroext 0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4) #9
  br label %72

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 6
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 8
  %13 = load i8, ptr %12, align 4, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %11, label %15, label %50

15:                                               ; preds = %8
  br i1 %14, label %16, label %51

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  %17 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 9
  %18 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #9
  %19 = load i8, ptr %9, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %42

21:                                               ; preds = %37
  %22 = icmp eq i32 %38, 0
  %23 = select i1 %22, i32 1, i32 %38
  br label %42

24:                                               ; preds = %37, %16
  %25 = phi i32 [ %39, %37 ], [ %18, %16 ]
  %26 = phi i32 [ %38, %37 ], [ 500, %16 ]
  %27 = load i8, ptr %12, align 4, !range !8
  %28 = icmp ne i8 %27, 0
  %29 = xor i1 %28, true
  %30 = icmp ne i32 %26, 0
  %31 = select i1 %29, i1 true, i1 %30
  %32 = select i1 %31, i32 %26, i32 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %28, i1 true, i1 %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = icmp eq i32 %25, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = call i32 @schedule_timeout(i32 noundef %32) #9
  %39 = call i32 @prepare_to_wait_event(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 1) #9
  %40 = load i8, ptr %9, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %24, label %21

42:                                               ; preds = %24, %21, %16
  %43 = phi i32 [ 500, %16 ], [ %23, %21 ], [ %32, %24 ]
  call void @finish_wait(ptr noundef %17, ptr noundef nonnull %2) #9
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i32 [ %43, %42 ], [ %25, %35 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr %12, align 4, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %51

50:                                               ; preds = %8
  br i1 %14, label %72, label %51

51:                                               ; preds = %50, %47, %44, %15
  %52 = phi i32 [ %45, %47 ], [ %45, %44 ], [ 500, %50 ], [ 500, %15 ]
  %53 = load i8, ptr %9, align 2
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 7
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, i32 noundef %52, i32 noundef %54, i32 noundef %57, i32 noundef %60) #9
  br label %72

61:                                               ; preds = %47
  %62 = icmp eq i32 %45, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %61
  %64 = load i8, ptr %9, align 2
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.btmrvl_adapter, ptr %4, i32 0, i32 7
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, i32 noundef %65, i32 noundef %68, i32 noundef %71) #9
  br label %72

72:                                               ; preds = %63, %61, %51, %50, %7
  %73 = phi i32 [ %5, %7 ], [ %52, %51 ], [ -110, %63 ], [ 0, %61 ], [ 0, %50 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_prepare_command(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  store i8 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %8 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 8
  %9 = load i16, ptr %8, align 2
  %10 = lshr i16 %9, 8
  %11 = trunc i16 %10 to i8
  store i8 %11, ptr %3, align 2
  %12 = trunc i16 %9 to i8
  %13 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -935, ptr noundef nonnull %3, i8 noundef zeroext 2) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #9
  br label %17

17:                                               ; preds = %16, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %18

18:                                               ; preds = %17, %1
  %19 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  %23 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 4
  %24 = load i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i8 3, i8 2
  store i8 %26, ptr %2, align 1
  %27 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %0, i16 noundef zeroext -989, ptr noundef nonnull %2, i8 noundef zeroext 1) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3) #9
  br label %30

30:                                               ; preds = %29, %22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  br label %31

31:                                               ; preds = %30, %18
  %32 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  store i8 0, ptr %32, align 1
  %36 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 6
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @btmrvl_enable_hs(ptr noundef %0)
  br label %48

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0) #9
  %45 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.btmrvl_adapter, ptr %46, i32 0, i32 6
  store i8 0, ptr %47, align 2
  br label %48

48:                                               ; preds = %41, %39, %31
  %49 = phi i32 [ %40, %39 ], [ %44, %41 ], [ 0, %31 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_register_hdev(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @hci_alloc_dev_priv(i32 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7) #9
  br label %27

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 8
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 5
  store i8 6, ptr %9, align 2
  %10 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 226
  store ptr @btmrvl_open, ptr %10, align 8
  %11 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 227
  store ptr @btmrvl_close, ptr %11, align 4
  %12 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 228
  store ptr @btmrvl_flush, ptr %12, align 8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 231
  store ptr @btmrvl_send_frame, ptr %13, align 4
  %14 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 229
  store ptr @btmrvl_setup, ptr %14, align 4
  %15 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 236
  store ptr @btmrvl_set_bdaddr, ptr %15, align 8
  %16 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 238
  store ptr @btmrvl_wakeup, ptr %16, align 8
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.sdio_func, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 204, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 2
  %21 = load i8, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hci_dev, ptr %3, i32 0, i32 6
  store i8 %21, ptr %22, align 1
  %23 = tail call i32 @hci_register_dev(ptr noundef nonnull %3) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #9
  tail call void @hci_free_dev(ptr noundef nonnull %3) #9
  br label %27

26:                                               ; preds = %6
  tail call void @btmrvl_debugfs_init(ptr noundef nonnull %3) #9
  br label %37

27:                                               ; preds = %25, %5
  %28 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @kthread_stop(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.btmrvl_adapter, ptr %32, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %33) #9
  %34 = load ptr, ptr %31, align 4
  %35 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %35) #9
  %36 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %36) #9
  store ptr null, ptr %31, align 4
  tail call void @kfree(ptr noundef %0) #9
  br label %37

37:                                               ; preds = %27, %26
  %38 = phi i32 [ -12, %27 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @btmrvl_open(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.btmrvl_adapter, ptr %5, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_flush(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.btmrvl_adapter, ptr %5, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_send_frame(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 12
  %8 = load i8, ptr %7, align 2, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 11
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.btmrvl_send_frame) #9
  br label %37

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %17 = load i8, ptr %16, align 8
  switch i8 %17, label %28 [
    i8 1, label %18
    i8 2, label %20
    i8 3, label %22
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 199, i32 2
  br label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 199, i32 4
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 199, i32 6
  br label %24

24:                                               ; preds = %22, %20, %18
  %25 = phi ptr [ %23, %22 ], [ %21, %20 ], [ %19, %18 ]
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.btmrvl_adapter, ptr %29, i32 0, i32 3
  tail call void @skb_queue_tail(ptr noundef %30, ptr noundef %1) #9
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.btmrvl_adapter, ptr %31, i32 0, i32 11
  %33 = load i8, ptr %32, align 1, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 2, i32 1
  tail call void @__wake_up(ptr noundef %36, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %37

37:                                               ; preds = %35, %28, %14
  %38 = phi i32 [ -16, %14 ], [ 0, %35 ], [ 0, %28 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_setup(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [32 x i8], align 1
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 -15, ptr %9, align 1
  %12 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -933, ptr noundef nonnull %9, i8 noundef zeroext 1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, i32 noundef 241) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  br label %78

15:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %16 = getelementptr inbounds %struct.btmrvl_device, ptr %11, i32 0, i32 8
  store i16 -2, ptr %16, align 2
  %17 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false) #9, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i16 0, ptr %7, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i16 0, ptr %8, align 2, !annotation !9
  %18 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %15
  %22 = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.16, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #9
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr %16, align 2
  %26 = lshr i16 %25, 8
  store i16 %26, ptr %7, align 2
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.17, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #9
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i16, ptr %8, align 2
  br label %35

32:                                               ; preds = %27
  %33 = load i16, ptr %16, align 2
  %34 = and i16 %33, 255
  store i16 %34, ptr %8, align 2
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i16 [ %31, %30 ], [ %34, %32 ]
  %37 = load i16, ptr %7, align 2
  %38 = shl i16 %37, 8
  %39 = add i16 %38, %36
  store i16 %39, ptr %16, align 2
  %40 = getelementptr inbounds i8, ptr %6, i32 4
  %41 = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %19, ptr noundef nonnull @.str.18, ptr noundef %40, i32 noundef 28, i32 noundef 0) #9
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  store i8 0, ptr %6, align 1
  %44 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 28, ptr %46, align 1
  %47 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -927, ptr noundef nonnull %6, i8 noundef zeroext 32) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21) #9
  br label %50

50:                                               ; preds = %49, %43, %35, %15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1
  %51 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -995, ptr noundef nonnull %5, i8 noundef zeroext 1) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, i32 noundef %51) #9
  br label %54

54:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 1, ptr %4, align 1
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr inbounds %struct.btmrvl_sdio_card, ptr %55, i32 0, i32 5
  %57 = load i8, ptr %56, align 4, !range !8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -1021, ptr noundef nonnull %4, i8 noundef zeroext 1) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, i32 noundef %60) #9
  br label %63

63:                                               ; preds = %62, %59, %54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %64 = getelementptr inbounds %struct.btmrvl_device, ptr %11, i32 0, i32 4
  store i8 1, ptr %64, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 2, ptr %3, align 1
  %65 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -989, ptr noundef nonnull %3, i8 noundef zeroext 1) #9
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3) #9
  br label %68

68:                                               ; preds = %67, %63
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  %69 = load i16, ptr %16, align 2
  %70 = lshr i16 %69, 8
  %71 = trunc i16 %70 to i8
  store i8 %71, ptr %2, align 2
  %72 = trunc i16 %69 to i8
  %73 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %72, ptr %73, align 1
  %74 = call fastcc i32 @btmrvl_send_sync_cmd(ptr noundef %11, i16 noundef zeroext -935, ptr noundef nonnull %2, i8 noundef zeroext 2) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #9
  br label %77

77:                                               ; preds = %76, %68
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %78

78:                                               ; preds = %77, %14
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_set_bdaddr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 1790, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds i8, ptr %3, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(6) %4, ptr noundef align 1 dereferenceable(6) %1, i32 6, i1 false)
  %5 = call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -990, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 1000) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %8) #9
  br label %11

10:                                               ; preds = %2
  call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #9
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ %8, %7 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @btmrvl_wakeup(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 1, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdio_func, ptr %5, i32 0, i32 1, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ false, %1 ], [ %13, %10 ]
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @btmrvl_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @btmrvl_add_card(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 68) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9) #9
  br label %43

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #10
  %9 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.10) #9
  br label %42

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 3
  %14 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 3, i32 2
  store i32 0, ptr %14, align 8
  store ptr %13, ptr %13, align 4
  %15 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 1
  store ptr %13, ptr %15, align 8
  %16 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 3, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 5
  store i8 0, ptr %17, align 1
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #10
  store ptr %19, ptr %8, align 8
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 1
  br i1 %20, label %22, label %23

22:                                               ; preds = %12
  store ptr null, ptr %21, align 4
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24) #9
  br label %24

23:                                               ; preds = %12
  store ptr %19, ptr %21, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %25, ptr noundef nonnull @.str.25, ptr noundef nonnull @btmrvl_init_adapter.__key) #9
  %26 = getelementptr inbounds %struct.btmrvl_adapter, ptr %8, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %26, ptr noundef nonnull @.str.27, ptr noundef nonnull @btmrvl_init_adapter.__key.26) #9
  %27 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 2, i32 2
  store ptr %3, ptr %28, align 8
  %29 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 6
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.btmrvl_private, ptr %3, i32 0, i32 2, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %30, ptr noundef nonnull @.str.11, ptr noundef nonnull @btmrvl_add_card.__key) #9
  %31 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @btmrvl_service_main_thread, ptr noundef %27, i32 noundef -1, ptr noundef nonnull @.str.12) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = tail call i32 @wake_up_process(ptr noundef %31) #9
  store ptr %31, ptr %27, align 8
  store ptr %0, ptr %3, align 8
  %35 = getelementptr inbounds %struct.btmrvl_device, ptr %3, i32 0, i32 3
  store i8 1, ptr %35, align 1
  br label %43

36:                                               ; preds = %24
  store ptr %31, ptr %27, align 8
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr inbounds %struct.btmrvl_adapter, ptr %37, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %38) #9
  %39 = load ptr, ptr %9, align 4
  %40 = load ptr, ptr %39, align 4
  tail call void @kfree(ptr noundef %40) #9
  %41 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %41) #9
  store ptr null, ptr %9, align 4
  br label %42

42:                                               ; preds = %36, %11
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %43

43:                                               ; preds = %42, %33, %5
  %44 = phi ptr [ %3, %33 ], [ null, %42 ], [ null, %5 ]
  ret ptr %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @btmrvl_service_main_thread(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.btmrvl_thread, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #9
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @default_wake_function, ptr %9, align 4
  %10 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 8
  %11 = getelementptr inbounds %struct.btmrvl_thread, ptr %0, i32 0, i32 1
  call void @add_wait_queue(ptr noundef %11, ptr noundef nonnull %2) #9
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  store volatile i32 1, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %13 = call zeroext i1 @kthread_should_stop() #9
  br i1 %13, label %132, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 7
  %16 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.btmrvl_device, ptr %4, i32 0, i32 3
  %18 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 6
  %20 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 5
  %21 = getelementptr inbounds %struct.btmrvl_adapter, ptr %6, i32 0, i32 5
  %22 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 4
  %23 = getelementptr inbounds %struct.btmrvl_private, ptr %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.btmrvl_device, ptr %4, i32 0, i32 1
  br label %25

25:                                               ; preds = %64, %14
  %26 = load i8, ptr %10, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %132

28:                                               ; preds = %25
  %29 = load i8, ptr %15, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32, ptr %16, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i8, ptr %17, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %18, align 4
  %39 = icmp eq ptr %38, %18
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %28
  call void @schedule() #9
  br label %41

41:                                               ; preds = %40, %37, %31
  store volatile i32 0, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  call void @remove_wait_queue(ptr noundef %11, ptr noundef nonnull %2) #9
  %42 = call zeroext i1 @kthread_should_stop() #9
  br i1 %42, label %132, label %43

43:                                               ; preds = %41
  %44 = load i8, ptr %10, align 4, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %132

46:                                               ; preds = %43
  %47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %48 = load i32, ptr %16, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  store i32 0, ptr %16, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %47) #9
  %51 = load ptr, ptr %20, align 4
  %52 = call i32 %51(ptr noundef %4) #9
  br label %67

53:                                               ; preds = %46
  %54 = load i8, ptr %21, align 1
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load ptr, ptr %18, align 4
  %58 = icmp eq ptr %57, %18
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %47) #9
  %60 = load i8, ptr %15, align 1
  %61 = add i8 %60, 1
  store i8 %61, ptr %15, align 1
  %62 = load ptr, ptr %22, align 4
  %63 = call i32 %62(ptr noundef %4) #9
  br label %64

64:                                               ; preds = %127, %78, %73, %70, %67, %59
  call void @add_wait_queue(ptr noundef %11, ptr noundef nonnull %2) #9
  store volatile i32 1, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %65 = call zeroext i1 @kthread_should_stop() #9
  br i1 %65, label %132, label %25

66:                                               ; preds = %56, %53
  call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %47) #9
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i8, ptr %21, align 1
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %64, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr %17, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %64, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %5, align 4
  %75 = getelementptr inbounds %struct.btmrvl_adapter, ptr %74, i32 0, i32 11
  %76 = load i8, ptr %75, align 1, !range !8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %64

78:                                               ; preds = %73
  %79 = call ptr @skb_dequeue(ptr noundef %18) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %64, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 17
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %120, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 5
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, 0
  %89 = add i32 %87, -2309
  %90 = icmp ult i32 %89, -2313
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.28, i32 noundef %87, i32 noundef 2312) #9
  br label %120

93:                                               ; preds = %85
  %94 = call ptr @skb_push(ptr noundef nonnull %79, i32 noundef 4) #9
  %95 = load i32, ptr %86, align 8
  %96 = trunc i32 %95 to i8
  %97 = load ptr, ptr %82, align 4
  store i8 %96, ptr %97, align 1
  %98 = load i32, ptr %86, align 8
  %99 = lshr i32 %98, 8
  %100 = trunc i32 %99 to i8
  %101 = load ptr, ptr %82, align 4
  %102 = getelementptr i8, ptr %101, i32 1
  store i8 %100, ptr %102, align 1
  %103 = load i32, ptr %86, align 8
  %104 = lshr i32 %103, 16
  %105 = trunc i32 %104 to i8
  %106 = load ptr, ptr %82, align 4
  %107 = getelementptr i8, ptr %106, i32 2
  store i8 %105, ptr %107, align 1
  %108 = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 3
  %109 = load i8, ptr %108, align 8
  %110 = load ptr, ptr %82, align 4
  %111 = getelementptr i8, ptr %110, i32 3
  store i8 %109, ptr %111, align 1
  %112 = load ptr, ptr %23, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %123, label %114

114:                                              ; preds = %93
  %115 = load ptr, ptr %82, align 4
  %116 = load i32, ptr %86, align 8
  %117 = trunc i32 %116 to i16
  %118 = call i32 %112(ptr noundef %4, ptr noundef %115, i16 noundef zeroext %117) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114, %92, %81
  %121 = load ptr, ptr %24, align 4
  %122 = getelementptr inbounds %struct.hci_dev, ptr %121, i32 0, i32 199, i32 1
  br label %127

123:                                              ; preds = %114, %93
  %124 = load i32, ptr %86, align 8
  %125 = load ptr, ptr %24, align 4
  %126 = getelementptr inbounds %struct.hci_dev, ptr %125, i32 0, i32 199, i32 9
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi ptr [ %126, %123 ], [ %122, %120 ]
  %129 = phi i32 [ %124, %123 ], [ 1, %120 ]
  %130 = load i32, ptr %128, align 4
  %131 = add i32 %130, %129
  store i32 %131, ptr %128, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %79, i32 noundef 0) #9
  br label %64

132:                                              ; preds = %64, %43, %41, %25, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btmrvl_remove_card(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.btmrvl_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.btmrvl_adapter, ptr %5, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %6, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.btmrvl_adapter, ptr %7, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %9 = getelementptr inbounds %struct.btmrvl_private, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @kthread_stop(ptr noundef %10) #9
  tail call void @btmrvl_debugfs_remove(ptr noundef %3) #9
  tail call void @hci_unregister_dev(ptr noundef %3) #9
  tail call void @hci_free_dev(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.btmrvl_adapter, ptr %12, i32 0, i32 3
  tail call void @skb_queue_purge(ptr noundef %13) #9
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #9
  %16 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %16) #9
  store ptr null, ptr %4, align 4
  tail call void @kfree(ptr noundef %0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btmrvl_debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_alloc_dev_priv(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2156030955}
!11 = !{i64 2156035098}
