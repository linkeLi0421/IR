; ModuleID = '/llk/IR/drivers/edac/edac_mc.c_pt.bc'
source_filename = "../drivers/edac/edac_mc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_op_state:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_op_state\22\09\09\09\09\09"
module asm "__kstrtabns_edac_op_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mem_types:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mem_types\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mem_types:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_free\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_has_mcs:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_has_mcs\22\09\09\09\09\09"
module asm "__kstrtabns_edac_has_mcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_mci_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22find_mci_by_dev\22\09\09\09\09\09"
module asm "__kstrtabns_find_mci_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_find\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_get_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_get_owner\22\09\09\09\09\09"
module asm "__kstrtabns_edac_get_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_add_mc_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_add_mc_with_groups\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_add_mc_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_del_mc:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_del_mc\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_del_mc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_find_csrow_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_find_csrow_by_page\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_find_csrow_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_layer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_layer_name\22\09\09\09\09\09"
module asm "__kstrtabns_edac_layer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_raw_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_raw_mc_handle_error\22\09\09\09\09\09"
module asm "__kstrtabns_edac_raw_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_handle_error\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@edac_op_state = dso_local global i32 -1, align 4
@__kstrtab_edac_op_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_op_state = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_op_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_op_state to i32), ptr @__kstrtab_edac_op_state, ptr @__kstrtabns_edac_op_state }, section "___ksymtab_gpl+edac_op_state", align 4
@.str = private unnamed_addr constant [7 x i8] c"%s %d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"FPM\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"EDO\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"BEDO\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Unbuffered-SDR\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Registered-SDR\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Unbuffered-DDR\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Registered-DDR\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RMBS\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Unbuffered-DDR2\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"FullyBuffered-DDR2\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Registered-DDR2\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"XDR\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Unbuffered-DDR3\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Registered-DDR3\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Load-Reduced-DDR3-RAM\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Low-Power-DDR3-RAM\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Unbuffered-DDR4\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Registered-DDR4\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Load-Reduced-DDR4-RAM\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Low-Power-DDR4-RAM\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Unbuffered-DDR5\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Registered-DDR5\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Load-Reduced-DDR5-RAM\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Non-volatile-RAM\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Wide-IO-2\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"High-bandwidth-memory-Gen2\00", align 1
@edac_mem_types = dso_local constant [29 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], align 4
@__kstrtab_edac_mem_types = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mem_types = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mem_types = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mem_types to i32), ptr @__kstrtab_edac_mem_types, ptr @__kstrtabns_edac_mem_types }, section "___ksymtab_gpl+edac_mem_types", align 4
@.str.30 = private unnamed_addr constant [23 x i8] c"drivers/edac/edac_mc.c\00", align 1
@__kstrtab_edac_mc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_alloc to i32), ptr @__kstrtab_edac_mc_alloc, ptr @__kstrtabns_edac_mc_alloc }, section "___ksymtab_gpl+edac_mc_alloc", align 4
@__kstrtab_edac_mc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_free to i32), ptr @__kstrtab_edac_mc_free, ptr @__kstrtabns_edac_mc_free }, section "___ksymtab_gpl+edac_mc_free", align 4
@mem_ctls_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mem_ctls_mutex, i64 12), ptr getelementptr (i8, ptr @mem_ctls_mutex, i64 12) } }, align 4
@mc_devices = internal global %struct.list_head { ptr @mc_devices, ptr @mc_devices }, align 4
@__kstrtab_edac_has_mcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_has_mcs = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_has_mcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_has_mcs to i32), ptr @__kstrtab_edac_has_mcs, ptr @__kstrtabns_edac_has_mcs }, section "___ksymtab_gpl+edac_has_mcs", align 4
@__kstrtab_find_mci_by_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_mci_by_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_find_mci_by_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_mci_by_dev to i32), ptr @__kstrtab_find_mci_by_dev, ptr @__kstrtabns_find_mci_by_dev }, section "___ksymtab_gpl+find_mci_by_dev", align 4
@__kstrtab_edac_mc_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_find = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_find to i32), ptr @__kstrtab_edac_mc_find, ptr @__kstrtabns_edac_mc_find }, section "___ksymtab+edac_mc_find", align 4
@edac_mc_owner = internal unnamed_addr global ptr null, align 4
@__kstrtab_edac_get_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_get_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_get_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_get_owner to i32), ptr @__kstrtab_edac_get_owner, ptr @__kstrtabns_edac_get_owner }, section "___ksymtab_gpl+edac_get_owner", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.31 = private unnamed_addr constant [44 x i8] c"\014EDAC MC%d: failed to create sysfs device\0A\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"\016EDAC MC%d: Giving out device to module %s controller %s: DEV %s (%s)\0A\00", align 1
@__kstrtab_edac_mc_add_mc_with_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_add_mc_with_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_add_mc_with_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups to i32), ptr @__kstrtab_edac_mc_add_mc_with_groups, ptr @__kstrtabns_edac_mc_add_mc_with_groups }, section "___ksymtab_gpl+edac_mc_add_mc_with_groups", align 4
@.str.33 = private unnamed_addr constant [48 x i8] c"\016EDAC MC: Removed device %d for %s %s: DEV %s\0A\00", align 1
@__kstrtab_edac_mc_del_mc = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_del_mc = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_del_mc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_del_mc to i32), ptr @__kstrtab_edac_mc_del_mc, ptr @__kstrtabns_edac_mc_del_mc }, section "___ksymtab_gpl+edac_mc_del_mc", align 4
@.str.34 = private unnamed_addr constant [55 x i8] c"\013EDAC MC%d: could not look up page error address %lx\0A\00", align 1
@__kstrtab_edac_mc_find_csrow_by_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_find_csrow_by_page = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_find_csrow_by_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_find_csrow_by_page to i32), ptr @__kstrtab_edac_mc_find_csrow_by_page, ptr @__kstrtabns_edac_mc_find_csrow_by_page }, section "___ksymtab_gpl+edac_mc_find_csrow_by_page", align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"csrow\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@edac_layer_name = dso_local global [5 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], align 4
@__kstrtab_edac_layer_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_layer_name = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_layer_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_layer_name to i32), ptr @__kstrtab_edac_layer_name, ptr @__kstrtabns_edac_layer_name }, section "___ksymtab_gpl+edac_layer_name", align 4
@edac_raw_mc_handle_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_edac_raw_mc_handle_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_raw_mc_handle_error = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_raw_mc_handle_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_raw_mc_handle_error to i32), ptr @__kstrtab_edac_raw_mc_handle_error, ptr @__kstrtabns_edac_raw_mc_handle_error }, section "___ksymtab_gpl+edac_raw_mc_handle_error", align 4
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [66 x i8] c"\013EDAC MC%d: INTERNAL ERROR: %s value is out of range (%d >= %d)\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c" or \00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"any memory\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"unknown memory\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"%s%s:%d\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__kstrtab_edac_mc_handle_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_handle_error = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_handle_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_handle_error to i32), ptr @__kstrtab_edac_mc_handle_error, ptr @__kstrtabns_edac_mc_handle_error }, section "___ksymtab_gpl+edac_mc_handle_error", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"mc#%u\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"%s#%u\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"\014EDAC MC: %s (%s) %s %s already assigned %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [87 x i8] c"\014EDAC MC: bug in low-level driver: attempt to assign\0A    duplicate mc_idx %d in %s()\0A\00", align 1
@__func__.add_mc_to_global_list = private unnamed_addr constant [22 x i8] c"add_mc_to_global_list\00", align 1
@__tracepoint_mc_event = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.54 = private unnamed_addr constant [88 x i8] c"\014EDAC MC%d: %d CE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld syndrome:0x%lx%s%s)\0A\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@edac_get_dimm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"include/linux/edac.h\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [73 x i8] c"\014EDAC MC%d: %d UE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld%s%s)\0A\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"UE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld%s%s)\0A\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_edac_get_owner, ptr @__ksymtab_edac_has_mcs, ptr @__ksymtab_edac_layer_name, ptr @__ksymtab_edac_mc_add_mc_with_groups, ptr @__ksymtab_edac_mc_alloc, ptr @__ksymtab_edac_mc_del_mc, ptr @__ksymtab_edac_mc_find, ptr @__ksymtab_edac_mc_find_csrow_by_page, ptr @__ksymtab_edac_mc_free, ptr @__ksymtab_edac_mc_handle_error, ptr @__ksymtab_edac_mem_types, ptr @__ksymtab_edac_op_state, ptr @__ksymtab_edac_raw_mc_handle_error, ptr @__ksymtab_find_mci_by_dev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_dimm_info_location(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mem_ctl_info, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mem_ctl_info, ptr %5, i32 0, i32 18
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %1, %9 ], [ %24, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %26, %11 ]
  %14 = phi i32 [ 0, %9 ], [ %27, %11 ]
  %15 = phi i32 [ %2, %9 ], [ %25, %11 ]
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr %struct.edac_mc_layer, ptr %16, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.dimm_info, ptr %0, i32 0, i32 2, i32 %14
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %12, i32 noundef %15, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %22) #13
  %24 = getelementptr i8, ptr %12, i32 %23
  %25 = sub i32 %15, %23
  %26 = add i32 %23, %13
  %27 = add nuw i32 %14, 1
  %28 = load i32, ptr %6, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %11, label %30

30:                                               ; preds = %11, %3
  %31 = phi i32 [ 0, %3 ], [ %26, %11 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @edac_align_ptr(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr %0, align 4
  %5 = mul i32 %2, %1
  %6 = getelementptr i8, ptr %4, i32 %5
  store ptr %6, ptr %0, align 4
  %7 = icmp ugt i32 %1, 4
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = icmp ugt i32 %1, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %1, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %10, %8, %3
  %13 = phi i32 [ 8, %3 ], [ 4, %8 ], [ 2, %10 ]
  %14 = ptrtoint ptr %4 to i32
  %15 = urem i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = sub nsw i32 %13, %15
  %19 = getelementptr i8, ptr %6, i32 %18
  store ptr %19, ptr %0, align 4
  %20 = add i32 %13, %14
  %21 = sub i32 %20, %15
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %17, %12, %10
  %24 = phi ptr [ %22, %17 ], [ %4, %10 ], [ %4, %12 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_mc_alloc(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [3 x i32], align 4
  %6 = add i32 %1, -4
  %7 = icmp ult i32 %6, -3
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 400, i32 noundef 9, ptr noundef null) #13
  br label %250

9:                                                ; preds = %4
  %10 = getelementptr %struct.edac_mc_layer, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.edac_mc_layer, ptr %2, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 1, i32 %11
  %16 = select i1 %14, i32 %11, i32 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, 3
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %51, label %20

20:                                               ; preds = %9
  %21 = getelementptr %struct.edac_mc_layer, ptr %2, i32 1
  %22 = getelementptr %struct.edac_mc_layer, ptr %2, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %11
  %25 = getelementptr %struct.edac_mc_layer, ptr %2, i32 1, i32 2
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 1, i32 %23
  %29 = mul i32 %28, %15
  %30 = select i1 %27, i32 %23, i32 1
  %31 = mul i32 %30, %16
  %32 = load i32, ptr %21, align 4
  %33 = icmp eq i32 %32, 3
  %34 = select i1 %33, i1 true, i1 %18
  %35 = icmp eq i32 %1, 2
  br i1 %35, label %51, label %36

36:                                               ; preds = %20
  %37 = getelementptr %struct.edac_mc_layer, ptr %2, i32 2
  %38 = getelementptr %struct.edac_mc_layer, ptr %2, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %24
  %41 = getelementptr %struct.edac_mc_layer, ptr %2, i32 2, i32 2
  %42 = load i8, ptr %41, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i32 1, i32 %39
  %45 = mul i32 %44, %29
  %46 = select i1 %43, i32 %39, i32 1
  %47 = mul i32 %46, %31
  %48 = load i32, ptr %37, align 4
  %49 = icmp eq i32 %48, 3
  %50 = select i1 %49, i1 true, i1 %34
  br label %51

51:                                               ; preds = %36, %20, %9
  %52 = phi i32 [ %11, %9 ], [ %24, %20 ], [ %40, %36 ]
  %53 = phi i32 [ %15, %9 ], [ %29, %20 ], [ %45, %36 ]
  %54 = phi i32 [ %16, %9 ], [ %31, %20 ], [ %47, %36 ]
  %55 = phi i1 [ %18, %9 ], [ %34, %20 ], [ %50, %36 ]
  %56 = mul i32 %1, 12
  %57 = getelementptr i8, ptr inttoptr (i32 1280 to ptr), i32 %56
  %58 = icmp ugt i32 %3, 4
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = icmp ugt i32 %3, 2
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = icmp eq i32 %3, 2
  br i1 %62, label %63, label %72

63:                                               ; preds = %61, %59, %51
  %64 = phi i32 [ 8, %51 ], [ 4, %59 ], [ 2, %61 ]
  %65 = ptrtoint ptr %57 to i32
  %66 = urem i32 %65, %64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = add i32 %64, %65
  %70 = sub i32 %69, %66
  %71 = inttoptr i32 %70 to ptr
  br label %72

72:                                               ; preds = %68, %63, %61
  %73 = phi ptr [ %71, %68 ], [ %57, %61 ], [ %57, %63 ]
  %74 = ptrtoint ptr %73 to i32
  %75 = add i32 %74, %3
  %76 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #14
  %77 = icmp eq ptr %76, null
  br i1 %77, label %250, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 33
  store ptr @mci_release, ptr %79, align 4
  tail call void @device_initialize(ptr noundef nonnull %76) #13
  %80 = getelementptr i8, ptr %76, i32 1280
  %81 = icmp eq i32 %3, 0
  %82 = getelementptr i8, ptr %76, i32 %74
  %83 = select i1 %81, ptr null, ptr %82
  %84 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 13
  store i32 %0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 20
  store i32 %52, ptr %85, align 8
  %86 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 26
  store ptr %83, ptr %86, align 64
  %87 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 17
  store i32 %1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 18
  store ptr %80, ptr %88, align 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 64 %80, ptr align 4 %2, i32 %56, i1 false)
  %89 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 15
  store i32 %53, ptr %89, align 4
  %90 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 16
  store i32 %54, ptr %90, align 8
  %91 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 19
  %92 = zext i1 %55 to i8
  store i8 %92, ptr %91, align 4
  %93 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #13
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %95, label %97, !prof !8

95:                                               ; preds = %78
  %96 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 14
  br label %141

97:                                               ; preds = %78
  %98 = extractvalue { i32, i1 } %93, 0
  %99 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #14
  %100 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 14
  store ptr %99, ptr %100, align 16
  %101 = icmp eq ptr %99, null
  br i1 %101, label %249, label %102

102:                                              ; preds = %97
  %103 = icmp eq i32 %53, 0
  br i1 %103, label %143, label %104

104:                                              ; preds = %102
  %105 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 4) #13
  %106 = extractvalue { i32, i1 } %105, 1
  %107 = extractvalue { i32, i1 } %105, 0
  %108 = icmp eq i32 %54, 0
  br label %109

109:                                              ; preds = %138, %104
  %110 = phi i32 [ 0, %104 ], [ %139, %138 ]
  %111 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %112 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3520, i32 noundef 512) #15
  %113 = icmp eq ptr %112, null
  br i1 %113, label %249, label %114

114:                                              ; preds = %109
  %115 = load ptr, ptr %100, align 16
  %116 = getelementptr ptr, ptr %115, i32 %110
  store ptr %112, ptr %116, align 4
  %117 = getelementptr inbounds %struct.csrow_info, ptr %112, i32 0, i32 4
  store i32 %110, ptr %117, align 4
  %118 = getelementptr inbounds %struct.csrow_info, ptr %112, i32 0, i32 7
  store ptr %76, ptr %118, align 8
  %119 = getelementptr inbounds %struct.csrow_info, ptr %112, i32 0, i32 8
  store i32 %54, ptr %119, align 4
  br i1 %106, label %120, label %122, !prof !8

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.csrow_info, ptr %112, i32 0, i32 9
  br label %141

122:                                              ; preds = %114
  %123 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %107, i32 noundef 3520) #14
  %124 = getelementptr inbounds %struct.csrow_info, ptr %112, i32 0, i32 9
  store ptr %123, ptr %124, align 8
  %125 = icmp eq ptr %123, null
  br i1 %125, label %249, label %126

126:                                              ; preds = %122
  br i1 %108, label %138, label %127

127:                                              ; preds = %132, %126
  %128 = phi i32 [ %136, %132 ], [ 0, %126 ]
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 16) #15
  %131 = icmp eq ptr %130, null
  br i1 %131, label %249, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %124, align 8
  %134 = getelementptr ptr, ptr %133, i32 %128
  store ptr %130, ptr %134, align 4
  store i32 %128, ptr %130, align 8
  %135 = getelementptr inbounds %struct.rank_info, ptr %130, i32 0, i32 1
  store ptr %112, ptr %135, align 4
  %136 = add nuw i32 %128, 1
  %137 = icmp eq i32 %136, %54
  br i1 %137, label %138, label %127

138:                                              ; preds = %132, %126
  %139 = add nuw i32 %110, 1
  %140 = icmp eq i32 %139, %53
  br i1 %140, label %143, label %109

141:                                              ; preds = %120, %95
  %142 = phi ptr [ %121, %120 ], [ %96, %95 ]
  store ptr null, ptr %142, align 8
  br label %249

143:                                              ; preds = %138, %102
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %144 = load i32, ptr %85, align 8
  %145 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %144, i32 4) #13
  %146 = extractvalue { i32, i1 } %145, 1
  br i1 %146, label %147, label %149, !prof !8

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 21
  store ptr null, ptr %148, align 4
  br label %246

149:                                              ; preds = %143
  %150 = extractvalue { i32, i1 } %145, 0
  %151 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %150, i32 noundef 3520) #14
  %152 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 21
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %246, label %154

154:                                              ; preds = %149
  %155 = load i32, ptr %85, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #13
  %156 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 14
  %157 = icmp eq i32 %155, 0
  br i1 %157, label %247, label %162

158:                                              ; preds = %243, %235, %229
  %159 = add nuw i32 %163, 1
  %160 = load i32, ptr %85, align 8
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %162, label %247

162:                                              ; preds = %158, %154
  %163 = phi i32 [ %159, %158 ], [ 0, %154 ]
  %164 = phi i32 [ %231, %158 ], [ 0, %154 ]
  %165 = phi i32 [ %230, %158 ], [ 0, %154 ]
  %166 = load ptr, ptr %156, align 16
  %167 = getelementptr ptr, ptr %166, i32 %165
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.csrow_info, ptr %168, i32 0, i32 9
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr ptr, ptr %170, i32 %164
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %174 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %173, i32 noundef 3520, i32 noundef 568) #15
  %175 = icmp eq ptr %174, null
  br i1 %175, label %246, label %176

176:                                              ; preds = %162
  %177 = load ptr, ptr %152, align 4
  %178 = getelementptr ptr, ptr %177, i32 %163
  store ptr %174, ptr %178, align 4
  %179 = getelementptr inbounds %struct.dimm_info, ptr %174, i32 0, i32 3
  store ptr %76, ptr %179, align 4
  %180 = getelementptr inbounds %struct.dimm_info, ptr %174, i32 0, i32 4
  store i32 %163, ptr %180, align 8
  %181 = getelementptr inbounds %struct.dimm_info, ptr %174, i32 0, i32 1
  %182 = load i32, ptr %84, align 4
  %183 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %181, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %182) #13
  %184 = load i32, ptr %87, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %207, label %186

186:                                              ; preds = %176
  %187 = sub i32 32, %183
  %188 = getelementptr i8, ptr %181, i32 %183
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi i32 [ %202, %189 ], [ %187, %186 ]
  %191 = phi ptr [ %201, %189 ], [ %188, %186 ]
  %192 = phi i32 [ %204, %189 ], [ 0, %186 ]
  %193 = load ptr, ptr %88, align 32
  %194 = getelementptr %struct.edac_mc_layer, ptr %193, i32 %192
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %195
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr [3 x i32], ptr %5, i32 0, i32 %192
  %199 = load i32, ptr %198, align 4
  %200 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %191, i32 noundef %190, ptr noundef nonnull @.str.50, ptr noundef %197, i32 noundef %199) #13
  %201 = getelementptr i8, ptr %191, i32 %200
  %202 = sub i32 %190, %200
  %203 = getelementptr %struct.dimm_info, ptr %174, i32 0, i32 2, i32 %192
  store i32 %199, ptr %203, align 4
  %204 = add nuw i32 %192, 1
  %205 = load i32, ptr %87, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %189, label %207

207:                                              ; preds = %189, %176
  %208 = getelementptr inbounds %struct.rank_info, ptr %172, i32 0, i32 2
  store ptr %174, ptr %208, align 4
  %209 = getelementptr inbounds %struct.dimm_info, ptr %174, i32 0, i32 10
  store i32 %165, ptr %209, align 8
  %210 = getelementptr inbounds %struct.dimm_info, ptr %174, i32 0, i32 11
  store i32 %164, ptr %210, align 4
  %211 = load ptr, ptr %88, align 32
  %212 = getelementptr inbounds %struct.edac_mc_layer, ptr %211, i32 0, i32 2
  %213 = load i8, ptr %212, align 4, !range !9
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %207
  %216 = add i32 %164, 1
  %217 = load i32, ptr %90, align 8
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = add i32 %165, %219
  %221 = select i1 %218, i32 0, i32 %216
  br label %229

222:                                              ; preds = %207
  %223 = add i32 %165, 1
  %224 = load i32, ptr %89, align 4
  %225 = icmp eq i32 %223, %224
  %226 = select i1 %225, i32 0, i32 %223
  %227 = zext i1 %225 to i32
  %228 = add i32 %164, %227
  br label %229

229:                                              ; preds = %222, %215
  %230 = phi i32 [ %220, %215 ], [ %226, %222 ]
  %231 = phi i32 [ %221, %215 ], [ %228, %222 ]
  %232 = load i32, ptr %87, align 4
  %233 = add i32 %232, -1
  %234 = icmp sgt i32 %233, -1
  br i1 %234, label %235, label %158

235:                                              ; preds = %243, %229
  %236 = phi i32 [ %244, %243 ], [ %233, %229 ]
  %237 = getelementptr [3 x i32], ptr %5, i32 0, i32 %236
  %238 = load i32, ptr %237, align 4
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 4
  %240 = getelementptr %struct.edac_mc_layer, ptr %211, i32 %236, i32 1
  %241 = load i32, ptr %240, align 4
  %242 = icmp ult i32 %239, %241
  br i1 %242, label %158, label %243

243:                                              ; preds = %235
  store i32 0, ptr %237, align 4
  %244 = add i32 %236, -1
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %235, label %158

246:                                              ; preds = %162, %149, %147
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br label %249

247:                                              ; preds = %158, %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  %248 = getelementptr inbounds %struct.mem_ctl_info, ptr %76, i32 0, i32 36
  store i32 256, ptr %248, align 4
  br label %250

249:                                              ; preds = %246, %141, %127, %122, %109, %97
  tail call void @put_device(ptr noundef nonnull %76) #13
  br label %250

250:                                              ; preds = %249, %247, %72, %8
  %251 = phi ptr [ null, %8 ], [ null, %249 ], [ %76, %247 ], [ null, %72 ]
  ret ptr %251
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mci_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %17, %9 ], [ %3, %5 ]
  %11 = phi i32 [ %14, %9 ], [ 0, %5 ]
  %12 = getelementptr ptr, ptr %10, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #13
  %14 = add nuw i32 %11, 1
  %15 = load i32, ptr %6, align 8
  %16 = icmp ult i32 %14, %15
  %17 = load ptr, ptr %2, align 4
  br i1 %16, label %9, label %18

18:                                               ; preds = %9, %5
  %19 = phi ptr [ %3, %5 ], [ %17, %9 ]
  tail call void @kfree(ptr noundef %19) #13
  br label %20

20:                                               ; preds = %18, %1
  %21 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 16
  br label %30

30:                                               ; preds = %57, %28
  %31 = phi i32 [ %26, %28 ], [ %58, %57 ]
  %32 = phi ptr [ %22, %28 ], [ %61, %57 ]
  %33 = phi i32 [ 0, %28 ], [ %59, %57 ]
  %34 = getelementptr ptr, ptr %32, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.csrow_info, ptr %35, i32 0, i32 9
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %29, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %41
  %45 = phi ptr [ %52, %44 ], [ %39, %41 ]
  %46 = phi i32 [ %49, %44 ], [ 0, %41 ]
  %47 = getelementptr ptr, ptr %45, i32 %46
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #13
  %49 = add nuw i32 %46, 1
  %50 = load i32, ptr %29, align 8
  %51 = icmp ult i32 %49, %50
  %52 = load ptr, ptr %38, align 8
  br i1 %51, label %44, label %53

53:                                               ; preds = %44, %41
  %54 = phi ptr [ %39, %41 ], [ %52, %44 ]
  tail call void @kfree(ptr noundef %54) #13
  br label %55

55:                                               ; preds = %53, %37
  tail call void @kfree(ptr noundef nonnull %35) #13
  %56 = load i32, ptr %25, align 4
  br label %57

57:                                               ; preds = %55, %30
  %58 = phi i32 [ %31, %30 ], [ %56, %55 ]
  %59 = add nuw i32 %33, 1
  %60 = icmp ult i32 %59, %58
  %61 = load ptr, ptr %21, align 8
  br i1 %60, label %30, label %62

62:                                               ; preds = %57, %24
  %63 = phi ptr [ %22, %24 ], [ %61, %57 ]
  tail call void @kfree(ptr noundef %63) #13
  br label %64

64:                                               ; preds = %62, %20
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_mc_free(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_has_mcs() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  %1 = load volatile ptr, ptr @mc_devices, align 4
  %2 = icmp ne ptr %1, @mc_devices
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_mci_by_dev(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @mc_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @mc_devices
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 84
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -476
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_mc_reset_delay_period(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  %2 = load ptr, ptr @mc_devices, align 4
  %3 = icmp eq ptr %2, @mc_devices
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 784
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 513
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %5, i32 144
  %11 = tail call zeroext i1 @edac_mod_work(ptr noundef %10, i32 noundef %0) #13
  br label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @mc_devices
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_mod_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_mc_find(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @mc_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @mc_devices
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 48
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -476
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @edac_get_owner() #5 {
  %1 = load ptr, ptr @edac_mc_owner, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  %3 = load ptr, ptr @edac_mc_owner, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 23
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %3, %7
  br i1 %8, label %9, label %98

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 22
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ @mc_devices, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @mc_devices
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 84
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -476
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %36, !prof !10

23:                                               ; preds = %20, %12
  %24 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 13
  br label %25

25:                                               ; preds = %29, %23
  %26 = phi ptr [ %27, %29 ], [ @mc_devices, %23 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, @mc_devices
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 48
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %24, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %29
  %35 = icmp eq i32 %31, %32
  br i1 %35, label %53, label %55, !prof !8

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %11, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 25
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %14, i32 88
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %14, i32 92
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr i8, ptr %14, i32 48
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %43, ptr noundef %45, ptr noundef %47, ptr noundef %49, i32 noundef %51) #16
  br label %98

53:                                               ; preds = %34
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %31, ptr noundef nonnull @__func__.add_mc_to_global_list) #16
  br label %98

55:                                               ; preds = %34, %25
  %56 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 2
  %57 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %27, ptr %56, align 4
  %59 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 2, i32 1
  store ptr %58, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  store volatile ptr %56, ptr %58, align 4
  store ptr %56, ptr %57, align 4
  %60 = load volatile i32, ptr @jiffies, align 64
  %61 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 27
  store i32 %60, ptr %61, align 4
  %62 = tail call ptr @edac_get_sysfs_subsys() #13
  %63 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 1
  store ptr %62, ptr %63, align 8
  %64 = tail call i32 @edac_create_sysfs_mci_device(ptr noundef %0, ptr noundef %1) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load i32, ptr %24, align 4
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %67) #16
  %69 = tail call fastcc i32 @del_mc_from_global_list(ptr noundef %0)
  br label %98

70:                                               ; preds = %55
  %71 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 11
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 36
  br i1 %73, label %85, label %75

75:                                               ; preds = %70
  store i32 513, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 34
  store i32 -32, ptr %76, align 4
  %77 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 34, i32 0, i32 1
  store volatile ptr %77, ptr %77, align 4
  %78 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 34, i32 0, i32 1, i32 1
  store ptr %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 34, i32 0, i32 2
  store ptr @edac_mc_workq_function, ptr %79, align 4
  %80 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 34, i32 1
  tail call void @init_timer_key(ptr noundef %80, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %81 = tail call i32 @edac_mc_get_poll_msec() #13
  %82 = tail call i32 @__msecs_to_jiffies(i32 noundef %81) #13
  %83 = tail call zeroext i1 @edac_queue_work(ptr noundef %76, i32 noundef %82) #13
  %84 = load i32, ptr %74, align 4
  br label %86

85:                                               ; preds = %70
  store i32 514, ptr %74, align 4
  br label %86

86:                                               ; preds = %85, %75
  %87 = phi i32 [ %84, %75 ], [ 514, %85 ]
  %88 = load i32, ptr %24, align 4
  %89 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 23
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 24
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 25
  %94 = load ptr, ptr %93, align 4
  %95 = tail call ptr @edac_op_state_to_string(i32 noundef %87) #13
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %88, ptr noundef %90, ptr noundef %92, ptr noundef %94, ptr noundef %95) #16
  %97 = load ptr, ptr %89, align 4
  store ptr %97, ptr @edac_mc_owner, align 4
  br label %98

98:                                               ; preds = %86, %66, %53, %42, %5
  %99 = phi i32 [ 0, %86 ], [ -22, %66 ], [ -1, %5 ], [ -22, %42 ], [ -22, %53 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_create_sysfs_mci_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edac_mc_workq_function(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -620
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  %3 = getelementptr i8, ptr %0, i32 640
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 513
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  br label %17

7:                                                ; preds = %1
  %8 = load i32, ptr @edac_op_state, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 -104
  %12 = load ptr, ptr %11, align 4
  tail call void %12(ptr noundef %2) #13
  br label %13

13:                                               ; preds = %10, %7
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  %14 = tail call i32 @edac_mc_get_poll_msec() #13
  %15 = tail call i32 @__msecs_to_jiffies(i32 noundef %14) #13
  %16 = tail call zeroext i1 @edac_queue_work(ptr noundef %0, i32 noundef %15) #13
  br label %17

17:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_queue_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_poll_msec() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_op_state_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @del_mc_from_global_list(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @synchronize_rcu() #13
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = load volatile ptr, ptr @mc_devices, align 4
  %8 = icmp eq ptr %7, @mc_devices
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @edac_mc_del_mc(ptr noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mem_ctls_mutex) #13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @mc_devices, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @mc_devices
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 84
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -476
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  br label %40

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %4, i32 784
  store i32 768, ptr %15, align 4
  %16 = getelementptr i8, ptr %4, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @synchronize_rcu() #13
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %16, align 4
  %20 = load volatile ptr, ptr @mc_devices, align 4
  %21 = icmp eq ptr %20, @mc_devices
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store ptr null, ptr @edac_mc_owner, align 4
  br label %23

23:                                               ; preds = %22, %14
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #13
  %24 = getelementptr i8, ptr %4, i32 40
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %4, i32 144
  %29 = tail call zeroext i1 @edac_stop_work(ptr noundef %28) #13
  br label %30

30:                                               ; preds = %27, %23
  tail call void @edac_remove_sysfs_mci_device(ptr noundef nonnull %11) #13
  %31 = getelementptr i8, ptr %4, i32 48
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %4, i32 88
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %4, i32 92
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr i8, ptr %4, i32 96
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %32, ptr noundef %34, ptr noundef %36, ptr noundef %38) #16
  br label %40

40:                                               ; preds = %30, %13
  %41 = phi ptr [ null, %13 ], [ %11, %30 ]
  ret ptr %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_stop_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_remove_sysfs_mci_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_mc_find_csrow_by_page(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %46, %2
  %9 = phi i32 [ %47, %46 ], [ 0, %2 ]
  %10 = getelementptr ptr, ptr %4, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.csrow_info, ptr %11, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.csrow_info, ptr %11, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ 0, %15 ], [ %27, %18 ]
  %20 = phi i32 [ 0, %15 ], [ %28, %18 ]
  %21 = getelementptr ptr, ptr %17, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rank_info, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dimm_info, ptr %24, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %19
  %28 = add nuw i32 %20, 1
  %29 = icmp eq i32 %28, %13
  br i1 %29, label %30, label %18

30:                                               ; preds = %18
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.csrow_info, ptr %11, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %34, %1
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.csrow_info, ptr %11, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %38, %1
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.csrow_info, ptr %11, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = xor i32 %34, %1
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %36, %32, %30, %8
  %47 = add nuw i32 %9, 1
  %48 = icmp eq i32 %47, %6
  br i1 %48, label %51, label %8

49:                                               ; preds = %40
  %50 = icmp eq i32 %9, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %49, %46, %2
  %52 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 13
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %53, i32 noundef %1) #16
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i32 [ -1, %51 ], [ %9, %49 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_raw_mc_handle_error(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -664
  %3 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = load i1, ptr @edac_raw_mc_handle_error.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  store i1 true, ptr @edac_raw_mc_handle_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 994, i32 noundef 9, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %1
  br i1 %5, label %13, label %11

11:                                               ; preds = %10
  %12 = load i32, ptr %3, align 4
  br label %14

13:                                               ; preds = %10
  store i32 1, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i32 [ %12, %11 ], [ 1, %13 ]
  %16 = add i32 %15, -1
  %17 = icmp eq i32 %16, 0
  %18 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #13, !range !12
  %19 = trunc i32 %18 to i8
  %20 = sub nuw nsw i8 32, %19
  %21 = select i1 %17, i8 0, i8 %20
  %22 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 3
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 -140
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 12
  %45 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %44, %46
  %48 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.edac_raw_error_desc, ptr %0, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mc_event, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %14
  %55 = tail call ptr @llvm.thread.pointer() #13
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %66 = tail call i32 @__traceiter_mc_event(ptr noundef null, i32 noundef %23, ptr noundef %25, ptr noundef %26, i32 noundef %29, i8 noundef zeroext %32, i8 noundef signext %35, i8 noundef signext %38, i8 noundef signext %41, i32 noundef %47, i8 noundef zeroext %21, i32 noundef %49, ptr noundef %51) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %67 = load i32, ptr %22, align 4
  br label %68

68:                                               ; preds = %65, %54, %14
  %69 = phi i32 [ %23, %14 ], [ %23, %54 ], [ %67, %65 ]
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %232

71:                                               ; preds = %68
  %72 = tail call i32 @edac_mc_get_log_ce() #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %30, align 4
  %76 = load i16, ptr %27, align 4
  %77 = zext i16 %76 to i32
  %78 = load ptr, ptr %24, align 4
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, ptr @.str.41, ptr @.str.48
  %82 = load i32, ptr %42, align 4
  %83 = load i32, ptr %45, align 4
  %84 = load i32, ptr %3, align 4
  %85 = load i32, ptr %48, align 4
  %86 = load ptr, ptr %50, align 4
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr @.str.41, ptr @.str.55
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %75, i32 noundef %77, ptr noundef %78, ptr noundef nonnull %81, ptr noundef %26, ptr noundef %0, i32 noundef %82, i32 noundef %83, i32 noundef %84, i32 noundef %85, ptr noundef nonnull %89, ptr noundef %86) #16
  br label %91

91:                                               ; preds = %74, %71
  %92 = load i32, ptr %33, align 4
  %93 = load i32, ptr %36, align 4
  %94 = load i32, ptr %39, align 4
  %95 = icmp slt i32 %92, 0
  br i1 %95, label %143, label %96

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %0, i32 -124
  %98 = load i32, ptr %97, align 4
  %99 = icmp ugt i32 %98, 1
  %100 = icmp slt i32 %93, 0
  %101 = and i1 %100, %99
  br i1 %101, label %143, label %102

102:                                              ; preds = %96
  %103 = icmp ugt i32 %98, 2
  %104 = icmp slt i32 %94, 0
  %105 = and i1 %104, %103
  br i1 %105, label %143, label %106

106:                                              ; preds = %102
  br i1 %99, label %107, label %114

107:                                              ; preds = %106
  %108 = getelementptr i8, ptr %0, i32 -120
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr %struct.edac_mc_layer, ptr %109, i32 1, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = mul i32 %111, %92
  %113 = add i32 %112, %93
  br label %114

114:                                              ; preds = %107, %106
  %115 = phi i32 [ %113, %107 ], [ %92, %106 ]
  br i1 %103, label %116, label %123

116:                                              ; preds = %114
  %117 = getelementptr i8, ptr %0, i32 -120
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr %struct.edac_mc_layer, ptr %118, i32 2, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = mul i32 %120, %115
  %122 = add i32 %121, %94
  br label %123

123:                                              ; preds = %116, %114
  %124 = phi i32 [ %122, %116 ], [ %115, %114 ]
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %123
  %127 = getelementptr i8, ptr %0, i32 -112
  %128 = load i32, ptr %127, align 8
  %129 = icmp ult i32 %124, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %0, i32 -108
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr ptr, ptr %132, i32 %124
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dimm_info, ptr %134, i32 0, i32 4
  %136 = load i32, ptr %135, align 8
  %137 = icmp ne i32 %136, %124
  %138 = load i1, ptr @edac_get_dimm.__already_done, align 1
  %139 = xor i1 %138, true
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %142, !prof !8

141:                                              ; preds = %130
  store i1 true, ptr @edac_get_dimm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 656, i32 noundef 9, ptr noundef null) #13
  br label %142

142:                                              ; preds = %141, %130
  br i1 %137, label %143, label %149

143:                                              ; preds = %142, %126, %123, %102, %96, %91
  %144 = load i16, ptr %27, align 4
  %145 = zext i16 %144 to i32
  %146 = getelementptr i8, ptr %0, i32 -68
  %147 = load i32, ptr %146, align 4
  %148 = add i32 %147, %145
  store i32 %148, ptr %146, align 4
  br label %163

149:                                              ; preds = %142
  %150 = load ptr, ptr %131, align 4
  %151 = getelementptr ptr, ptr %150, i32 %124
  %152 = load ptr, ptr %151, align 4
  %153 = load i16, ptr %27, align 4
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %0, i32 -68
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, %154
  store i32 %157, ptr %155, align 4
  %158 = icmp eq ptr %152, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.dimm_info, ptr %152, i32 0, i32 13
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, %154
  store i32 %162, ptr %160, align 4
  br label %168

163:                                              ; preds = %149, %143
  %164 = phi i32 [ %145, %143 ], [ %154, %149 ]
  %165 = getelementptr i8, ptr %0, i32 -80
  %166 = load i32, ptr %165, align 8
  %167 = add i32 %166, %164
  store i32 %167, ptr %165, align 8
  br label %168

168:                                              ; preds = %163, %159
  %169 = getelementptr i8, ptr %0, i32 -160
  %170 = load i32, ptr %169, align 8
  %171 = icmp eq i32 %170, 3
  br i1 %171, label %172, label %343

172:                                              ; preds = %168
  %173 = getelementptr i8, ptr %0, i32 -144
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  %176 = load i32, ptr %42, align 4
  br i1 %175, label %179, label %177

177:                                              ; preds = %172
  %178 = tail call i32 %174(ptr noundef %2, i32 noundef %176) #13
  br label %179

179:                                              ; preds = %177, %172
  %180 = phi i32 [ %178, %177 ], [ %176, %172 ]
  %181 = load i32, ptr %45, align 4
  %182 = load i32, ptr %3, align 4
  %183 = tail call i32 @pfn_valid(i32 noundef %180) #13
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %343, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr @mem_map, align 4
  %187 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %188 = sub i32 %180, %187
  %189 = getelementptr %struct.page, ptr %186, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = lshr i32 %190, 30
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %198, label %193

193:                                              ; preds = %185
  %194 = icmp ne i32 %191, 3
  %195 = load i32, ptr @movable_zone, align 4
  %196 = icmp ne i32 %195, 2
  %197 = select i1 %194, i1 true, i1 %196
  br i1 %197, label %200, label %198

198:                                              ; preds = %193, %185
  %199 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !15
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi i32 [ %199, %198 ], [ 0, %193 ]
  %202 = load i32, ptr @pgprot_kernel, align 4
  %203 = or i32 %202, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %204 = tail call ptr @llvm.thread.pointer() #13
  %205 = getelementptr inbounds %struct.task_struct, ptr %204, i32 0, i32 149
  %206 = load i32, ptr %205, align 8
  %207 = add i32 %206, 1
  store i32 %207, ptr %205, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %208 = tail call ptr @__kmap_local_page_prot(ptr noundef %189, i32 noundef %203) #13
  %209 = icmp ult i32 %182, 4
  br i1 %209, label %220, label %210

210:                                              ; preds = %200
  %211 = getelementptr i8, ptr %208, i32 %181
  %212 = lshr i32 %182, 2
  br label %213

213:                                              ; preds = %213, %210
  %214 = phi i32 [ %217, %213 ], [ 0, %210 ]
  %215 = phi ptr [ %218, %213 ], [ %211, %210 ]
  %216 = tail call { i32, i32 } asm sideeffect "\0A1:\09ldrex\09$0, [$2]\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b\0A", "=&r,=&r,r,~{cc}"(ptr %215) #13, !srcloc !18
  %217 = add nuw nsw i32 %214, 1
  %218 = getelementptr i32, ptr %215, i32 1
  %219 = icmp eq i32 %217, %212
  br i1 %219, label %220, label %213

220:                                              ; preds = %213, %200
  tail call void @kunmap_local_indexed(ptr noundef %208) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  %221 = load i32, ptr %205, align 8
  %222 = add i32 %221, -1
  store i32 %222, ptr %205, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %223 = load i32, ptr %189, align 4
  %224 = lshr i32 %223, 30
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %231, label %226

226:                                              ; preds = %220
  %227 = icmp ne i32 %224, 3
  %228 = load i32, ptr @movable_zone, align 4
  %229 = icmp ne i32 %228, 2
  %230 = select i1 %227, i1 true, i1 %229
  br i1 %230, label %343, label %231

231:                                              ; preds = %226, %220
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %201) #13, !srcloc !21
  br label %343

232:                                              ; preds = %68
  %233 = tail call i32 @edac_mc_get_log_ue() #13
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %232
  %236 = load i32, ptr %30, align 4
  %237 = load i16, ptr %27, align 4
  %238 = zext i16 %237 to i32
  %239 = load ptr, ptr %24, align 4
  %240 = load i8, ptr %239, align 1
  %241 = icmp eq i8 %240, 0
  %242 = select i1 %241, ptr @.str.41, ptr @.str.48
  %243 = load i32, ptr %42, align 4
  %244 = load i32, ptr %45, align 4
  %245 = load i32, ptr %3, align 4
  %246 = load ptr, ptr %50, align 4
  %247 = load i8, ptr %246, align 1
  %248 = icmp eq i8 %247, 0
  %249 = select i1 %248, ptr @.str.41, ptr @.str.55
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %236, i32 noundef %238, ptr noundef %239, ptr noundef nonnull %242, ptr noundef %26, ptr noundef %0, i32 noundef %243, i32 noundef %244, i32 noundef %245, ptr noundef nonnull %249, ptr noundef %246) #16
  br label %251

251:                                              ; preds = %235, %232
  %252 = load i32, ptr %33, align 4
  %253 = load i32, ptr %36, align 4
  %254 = load i32, ptr %39, align 4
  %255 = icmp slt i32 %252, 0
  br i1 %255, label %303, label %256

256:                                              ; preds = %251
  %257 = getelementptr i8, ptr %0, i32 -124
  %258 = load i32, ptr %257, align 4
  %259 = icmp ugt i32 %258, 1
  %260 = icmp slt i32 %253, 0
  %261 = and i1 %260, %259
  br i1 %261, label %303, label %262

262:                                              ; preds = %256
  %263 = icmp ugt i32 %258, 2
  %264 = icmp slt i32 %254, 0
  %265 = and i1 %264, %263
  br i1 %265, label %303, label %266

266:                                              ; preds = %262
  br i1 %259, label %267, label %274

267:                                              ; preds = %266
  %268 = getelementptr i8, ptr %0, i32 -120
  %269 = load ptr, ptr %268, align 8
  %270 = getelementptr %struct.edac_mc_layer, ptr %269, i32 1, i32 1
  %271 = load i32, ptr %270, align 4
  %272 = mul i32 %271, %252
  %273 = add i32 %272, %253
  br label %274

274:                                              ; preds = %267, %266
  %275 = phi i32 [ %273, %267 ], [ %252, %266 ]
  br i1 %263, label %276, label %283

276:                                              ; preds = %274
  %277 = getelementptr i8, ptr %0, i32 -120
  %278 = load ptr, ptr %277, align 8
  %279 = getelementptr %struct.edac_mc_layer, ptr %278, i32 2, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = mul i32 %280, %275
  %282 = add i32 %281, %254
  br label %283

283:                                              ; preds = %276, %274
  %284 = phi i32 [ %282, %276 ], [ %275, %274 ]
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %283
  %287 = getelementptr i8, ptr %0, i32 -112
  %288 = load i32, ptr %287, align 8
  %289 = icmp ult i32 %284, %288
  br i1 %289, label %290, label %303

290:                                              ; preds = %286
  %291 = getelementptr i8, ptr %0, i32 -108
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr ptr, ptr %292, i32 %284
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.dimm_info, ptr %294, i32 0, i32 4
  %296 = load i32, ptr %295, align 8
  %297 = icmp ne i32 %296, %284
  %298 = load i1, ptr @edac_get_dimm.__already_done, align 1
  %299 = xor i1 %298, true
  %300 = select i1 %297, i1 %299, i1 false
  br i1 %300, label %301, label %302, !prof !8

301:                                              ; preds = %290
  store i1 true, ptr @edac_get_dimm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 656, i32 noundef 9, ptr noundef null) #13
  br label %302

302:                                              ; preds = %301, %290
  br i1 %297, label %303, label %309

303:                                              ; preds = %302, %286, %283, %262, %256, %251
  %304 = load i16, ptr %27, align 4
  %305 = zext i16 %304 to i32
  %306 = getelementptr i8, ptr %0, i32 -72
  %307 = load i32, ptr %306, align 8
  %308 = add i32 %307, %305
  store i32 %308, ptr %306, align 8
  br label %323

309:                                              ; preds = %302
  %310 = load ptr, ptr %291, align 4
  %311 = getelementptr ptr, ptr %310, i32 %284
  %312 = load ptr, ptr %311, align 4
  %313 = load i16, ptr %27, align 4
  %314 = zext i16 %313 to i32
  %315 = getelementptr i8, ptr %0, i32 -72
  %316 = load i32, ptr %315, align 8
  %317 = add i32 %316, %314
  store i32 %317, ptr %315, align 8
  %318 = icmp eq ptr %312, null
  br i1 %318, label %323, label %319

319:                                              ; preds = %309
  %320 = getelementptr inbounds %struct.dimm_info, ptr %312, i32 0, i32 14
  %321 = load i32, ptr %320, align 8
  %322 = add i32 %321, %314
  store i32 %322, ptr %320, align 8
  br label %328

323:                                              ; preds = %309, %303
  %324 = phi i32 [ %305, %303 ], [ %314, %309 ]
  %325 = getelementptr i8, ptr %0, i32 -76
  %326 = load i32, ptr %325, align 4
  %327 = add i32 %326, %324
  store i32 %327, ptr %325, align 4
  br label %328

328:                                              ; preds = %323, %319
  %329 = tail call i32 @edac_mc_get_panic_on_ue() #13
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %343, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %24, align 4
  %333 = load i8, ptr %332, align 1
  %334 = icmp eq i8 %333, 0
  %335 = select i1 %334, ptr @.str.41, ptr @.str.48
  %336 = load i32, ptr %42, align 4
  %337 = load i32, ptr %45, align 4
  %338 = load i32, ptr %3, align 4
  %339 = load ptr, ptr %50, align 4
  %340 = load i8, ptr %339, align 1
  %341 = icmp eq i8 %340, 0
  %342 = select i1 %341, ptr @.str.41, ptr @.str.55
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.58, ptr noundef %332, ptr noundef nonnull %335, ptr noundef %26, ptr noundef %0, i32 noundef %336, i32 noundef %337, i32 noundef %338, ptr noundef nonnull %342, ptr noundef %339) #17
  unreachable

343:                                              ; preds = %328, %231, %226, %179, %168
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_mc_handle_error(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) #0 {
  %12 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  store i32 %6, ptr %12, align 4
  %13 = getelementptr inbounds i32, ptr %12, i32 1
  store i32 %7, ptr %13, align 4
  %14 = getelementptr inbounds i32, ptr %12, i32 2
  store i32 %8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(596) %15, i8 0, i32 560, i1 false)
  %16 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 3
  store i16 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 4
  store i32 %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 5
  store i32 %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 6
  store i32 %7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 7
  store i32 %8, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 8
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 9
  store i32 %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 10
  store i32 %5, ptr %23, align 4
  %24 = icmp eq ptr %9, null
  %25 = select i1 %24, ptr @.str.41, ptr %9
  %26 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 11
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %10, null
  %28 = select i1 %27, ptr @.str.41, ptr %10
  %29 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 12
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %11
  %34 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 18
  %35 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 13
  br label %36

36:                                               ; preds = %61, %33
  %37 = phi i32 [ %31, %33 ], [ %55, %61 ]
  %38 = phi i32 [ %6, %33 ], [ %63, %61 ]
  %39 = phi i1 [ true, %33 ], [ %58, %61 ]
  %40 = phi i32 [ 0, %33 ], [ %59, %61 ]
  %41 = load ptr, ptr %34, align 8
  %42 = getelementptr %struct.edac_mc_layer, ptr %41, i32 %40, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = getelementptr [3 x i32], ptr %12, i32 0, i32 %40
  %47 = getelementptr %struct.edac_mc_layer, ptr %41, i32 %40
  %48 = load i32, ptr %35, align 4
  %49 = load i32, ptr %47, align 4
  %50 = getelementptr [5 x ptr], ptr @edac_layer_name, i32 0, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %48, ptr noundef %51, i32 noundef %38, i32 noundef %43) #16
  store i32 -1, ptr %46, align 4
  %53 = load i32, ptr %30, align 4
  br label %54

54:                                               ; preds = %45, %36
  %55 = phi i32 [ %53, %45 ], [ %37, %36 ]
  %56 = phi i32 [ -1, %45 ], [ %38, %36 ]
  %57 = icmp slt i32 %56, 0
  %58 = select i1 %57, i1 %39, i1 false
  %59 = add nuw i32 %40, 1
  %60 = icmp ult i32 %59, %55
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = getelementptr [3 x i32], ptr %12, i32 0, i32 %59
  %63 = load i32, ptr %62, align 4
  br label %36

64:                                               ; preds = %54, %11
  %65 = phi i1 [ true, %11 ], [ %58, %54 ]
  %66 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 1
  store i8 0, ptr %66, align 1
  %67 = getelementptr %struct.mem_ctl_info, ptr %1, i32 0, i32 35, i32 2
  %68 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 21
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %162, label %72

72:                                               ; preds = %64
  %73 = icmp sgt i32 %6, -1
  %74 = icmp sgt i32 %7, -1
  %75 = icmp sgt i32 %8, -1
  %76 = ptrtoint ptr %67 to i32
  %77 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 20
  br label %78

78:                                               ; preds = %157, %72
  %79 = phi ptr [ %70, %72 ], [ %160, %157 ]
  %80 = phi ptr [ @.str.41, %72 ], [ %151, %157 ]
  %81 = phi i32 [ 0, %72 ], [ %150, %157 ]
  %82 = phi i32 [ -1, %72 ], [ %149, %157 ]
  %83 = phi i32 [ -1, %72 ], [ %148, %157 ]
  %84 = phi ptr [ %66, %72 ], [ %147, %157 ]
  br i1 %73, label %85, label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = icmp eq i32 %87, %6
  br i1 %88, label %89, label %146

89:                                               ; preds = %85, %78
  br i1 %74, label %90, label %94

90:                                               ; preds = %89
  %91 = getelementptr %struct.dimm_info, ptr %79, i32 0, i32 2, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, %7
  br i1 %93, label %94, label %146

94:                                               ; preds = %90, %89
  br i1 %75, label %95, label %99

95:                                               ; preds = %94
  %96 = getelementptr %struct.dimm_info, ptr %79, i32 0, i32 2, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, %8
  br i1 %98, label %99, label %146

99:                                               ; preds = %95, %94
  %100 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %67, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 %101, ptr %67, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 9
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %146, label %109

109:                                              ; preds = %105
  %110 = add i32 %81, 1
  %111 = icmp sgt i32 %110, 8
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i8 0, ptr %66, align 1
  br label %119

113:                                              ; preds = %109
  %114 = ptrtoint ptr %84 to i32
  %115 = sub i32 %76, %114
  %116 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 1
  %117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %84, i32 noundef %115, ptr noundef nonnull @.str.43, ptr noundef %80, ptr noundef %116) #13
  %118 = getelementptr i8, ptr %84, i32 %117
  br label %119

119:                                              ; preds = %113, %112
  %120 = phi ptr [ %66, %112 ], [ %118, %113 ]
  %121 = phi ptr [ %80, %112 ], [ @.str.44, %113 ]
  %122 = icmp eq i32 %83, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 10
  %125 = load i32, ptr %124, align 8
  br label %133

126:                                              ; preds = %119
  %127 = icmp sgt i32 %83, -1
  br i1 %127, label %128, label %133

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 10
  %130 = load i32, ptr %129, align 8
  %131 = icmp eq i32 %83, %130
  %132 = select i1 %131, i32 %83, i32 -2
  br label %133

133:                                              ; preds = %128, %126, %123
  %134 = phi i32 [ %125, %123 ], [ %132, %128 ], [ %83, %126 ]
  %135 = icmp eq i32 %82, -1
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 11
  %138 = load i32, ptr %137, align 4
  br label %146

139:                                              ; preds = %133
  %140 = icmp sgt i32 %82, -1
  br i1 %140, label %141, label %146

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 11
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %82, %143
  %145 = select i1 %144, i32 %82, i32 -2
  br label %146

146:                                              ; preds = %141, %139, %136, %105, %95, %90, %85
  %147 = phi ptr [ %84, %85 ], [ %84, %90 ], [ %84, %95 ], [ %120, %136 ], [ %120, %141 ], [ %120, %139 ], [ %84, %105 ]
  %148 = phi i32 [ %83, %85 ], [ %83, %90 ], [ %83, %95 ], [ %134, %136 ], [ %134, %141 ], [ %134, %139 ], [ %83, %105 ]
  %149 = phi i32 [ %82, %85 ], [ %82, %90 ], [ %82, %95 ], [ %138, %136 ], [ %145, %141 ], [ %82, %139 ], [ %82, %105 ]
  %150 = phi i32 [ %81, %85 ], [ %81, %90 ], [ %81, %95 ], [ %110, %136 ], [ %110, %141 ], [ %110, %139 ], [ %81, %105 ]
  %151 = phi ptr [ %80, %85 ], [ %80, %90 ], [ %80, %95 ], [ %121, %136 ], [ %121, %141 ], [ %121, %139 ], [ %80, %105 ]
  %152 = getelementptr inbounds %struct.dimm_info, ptr %79, i32 0, i32 4
  %153 = load i32, ptr %152, align 8
  %154 = add i32 %153, 1
  %155 = load i32, ptr %77, align 8
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load ptr, ptr %68, align 4
  %159 = getelementptr ptr, ptr %158, i32 %154
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %78

162:                                              ; preds = %157, %146, %64
  %163 = phi i32 [ -1, %64 ], [ %148, %157 ], [ %148, %146 ]
  %164 = phi i32 [ -1, %64 ], [ %149, %157 ], [ %149, %146 ]
  br i1 %65, label %168, label %165

165:                                              ; preds = %162
  %166 = load i8, ptr %66, align 4
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165, %162
  %169 = phi ptr [ @.str.45, %162 ], [ @.str.46, %165 ]
  %170 = tail call i32 @strscpy(ptr noundef %66, ptr noundef nonnull %169, i32 noundef 296) #13
  br label %171

171:                                              ; preds = %168, %165
  %172 = icmp slt i32 %163, 0
  br i1 %172, label %202, label %173

173:                                              ; preds = %171
  %174 = load i16, ptr %16, align 4
  %175 = load i32, ptr %17, align 4
  %176 = icmp eq i32 %175, 0
  %177 = zext i16 %174 to i32
  %178 = getelementptr %struct.mem_ctl_info, ptr %1, i32 0, i32 14
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr ptr, ptr %179, i32 %163
  %181 = load ptr, ptr %180, align 4
  br i1 %176, label %182, label %198

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.csrow_info, ptr %181, i32 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, %177
  store i32 %185, ptr %183, align 4
  %186 = icmp sgt i32 %164, -1
  br i1 %186, label %187, label %202

187:                                              ; preds = %182
  %188 = load ptr, ptr %178, align 8
  %189 = getelementptr ptr, ptr %188, i32 %163
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.csrow_info, ptr %190, i32 0, i32 9
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr ptr, ptr %192, i32 %164
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.rank_info, ptr %194, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = add i32 %196, %177
  store i32 %197, ptr %195, align 4
  br label %202

198:                                              ; preds = %173
  %199 = getelementptr inbounds %struct.csrow_info, ptr %181, i32 0, i32 5
  %200 = load i32, ptr %199, align 8
  %201 = add i32 %200, %177
  store i32 %201, ptr %199, align 8
  br label %202

202:                                              ; preds = %198, %187, %182, %171
  %203 = load i32, ptr %30, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %233, label %205

205:                                              ; preds = %202
  %206 = ptrtoint ptr %66 to i32
  %207 = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 18
  br label %208

208:                                              ; preds = %227, %205
  %209 = phi i32 [ %203, %205 ], [ %228, %227 ]
  %210 = phi ptr [ @.str.41, %205 ], [ %230, %227 ]
  %211 = phi i32 [ 0, %205 ], [ %231, %227 ]
  %212 = phi ptr [ %15, %205 ], [ %229, %227 ]
  %213 = getelementptr [3 x i32], ptr %12, i32 0, i32 %211
  %214 = load i32, ptr %213, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %208
  %217 = ptrtoint ptr %212 to i32
  %218 = sub i32 %206, %217
  %219 = load ptr, ptr %207, align 8
  %220 = getelementptr %struct.edac_mc_layer, ptr %219, i32 %211
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr [5 x ptr], ptr @edac_layer_name, i32 0, i32 %221
  %223 = load ptr, ptr %222, align 4
  %224 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %212, i32 noundef %218, ptr noundef nonnull @.str.47, ptr noundef %210, ptr noundef %223, i32 noundef %214) #13
  %225 = getelementptr i8, ptr %212, i32 %224
  %226 = load i32, ptr %30, align 4
  br label %227

227:                                              ; preds = %216, %208
  %228 = phi i32 [ %209, %208 ], [ %226, %216 ]
  %229 = phi ptr [ %212, %208 ], [ %225, %216 ]
  %230 = phi ptr [ %210, %208 ], [ @.str.48, %216 ]
  %231 = add nuw i32 %211, 1
  %232 = icmp ult i32 %231, %228
  br i1 %232, label %208, label %233

233:                                              ; preds = %227, %202
  tail call void @edac_raw_mc_handle_error(ptr noundef %15)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mc_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_log_ce() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_log_ue() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_panic_on_ue() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { cold noreturn nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2150585970}
!12 = !{i32 0, i32 33}
!13 = !{i64 2153507158}
!14 = !{i64 2153507550}
!15 = !{i64 474625, i64 474686}
!16 = !{i64 2152531428}
!17 = !{i64 2151268221}
!18 = !{i64 6094953, i64 6094962, i64 6094987, i64 6095014, i64 6095033}
!19 = !{i64 2151268428}
!20 = !{i64 2152534053}
!21 = !{i64 477642}
