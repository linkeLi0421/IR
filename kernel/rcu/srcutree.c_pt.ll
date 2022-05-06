; ModuleID = '/llk/IR/kernel/rcu/srcutree.c_pt.bc'
source_filename = "../kernel/rcu/srcutree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22init_srcu_struct\22\09\09\09\09\09"
module asm "__kstrtabns_init_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cleanup_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22cleanup_srcu_struct\22\09\09\09\09\09"
module asm "__kstrtabns_cleanup_srcu_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___srcu_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__srcu_read_lock\22\09\09\09\09\09"
module asm "__kstrtabns___srcu_read_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___srcu_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__srcu_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___srcu_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22call_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_call_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_srcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_srcu_expedited\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_srcu_expedited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22get_state_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_get_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_start_poll_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22start_poll_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_start_poll_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_poll_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22poll_state_synchronize_srcu\22\09\09\09\09\09"
module asm "__kstrtabns_poll_state_synchronize_srcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_barrier\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_batches_completed\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_batches_completed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22srcutorture_get_gp_data\22\09\09\09\09\09"
module asm "__kstrtabns_srcutorture_get_gp_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_torture_stats_print:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_torture_stats_print\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_torture_stats_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.rcu_synchronize = type { %struct.callback_head, %struct.completion }
%struct.rcu_cblist = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@__param_str_exp_holdoff = internal constant [21 x i8] c"srcutree.exp_holdoff\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@exp_holdoff = internal global i32 25000, align 4
@__param_exp_holdoff = internal constant %struct.kernel_param { ptr @__param_str_exp_holdoff, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.4 { ptr @exp_holdoff } }, section "__param", align 4
@__UNIQUE_ID_exp_holdofftype220 = internal constant [36 x i8] c"srcutree.parmtype=exp_holdoff:ulong\00", section ".modinfo", align 1
@__param_str_counter_wrap_check = internal constant [28 x i8] c"srcutree.counter_wrap_check\00", align 1
@counter_wrap_check = internal global i32 1073741823, align 4
@__param_counter_wrap_check = internal constant %struct.kernel_param { ptr @__param_str_counter_wrap_check, ptr null, ptr @param_ops_ulong, i16 292, i8 -1, i8 0, %union.anon.4 { ptr @counter_wrap_check } }, section "__param", align 4
@__UNIQUE_ID_counter_wrap_checktype221 = internal constant [43 x i8] c"srcutree.parmtype=counter_wrap_check:ulong\00", section ".modinfo", align 1
@__kstrtab_init_srcu_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_srcu_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_init_srcu_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_srcu_struct to i32), ptr @__kstrtab_init_srcu_struct, ptr @__kstrtabns_init_srcu_struct }, section "___ksymtab_gpl+init_srcu_struct", align 4
@.str = private unnamed_addr constant [22 x i8] c"kernel/rcu/srcutree.c\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\016rcu: %s: Active srcu_struct %p state: %d\0A\00", align 1
@__func__.cleanup_srcu_struct = private unnamed_addr constant [20 x i8] c"cleanup_srcu_struct\00", align 1
@__kstrtab_cleanup_srcu_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns_cleanup_srcu_struct = external dso_local constant [0 x i8], align 1
@__ksymtab_cleanup_srcu_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cleanup_srcu_struct to i32), ptr @__kstrtab_cleanup_srcu_struct, ptr @__kstrtabns_cleanup_srcu_struct }, section "___ksymtab_gpl+cleanup_srcu_struct", align 4
@__kstrtab___srcu_read_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___srcu_read_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___srcu_read_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__srcu_read_lock to i32), ptr @__kstrtab___srcu_read_lock, ptr @__kstrtabns___srcu_read_lock }, section "___ksymtab_gpl+__srcu_read_lock", align 4
@__kstrtab___srcu_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___srcu_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___srcu_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__srcu_read_unlock to i32), ptr @__kstrtab___srcu_read_unlock, ptr @__kstrtabns___srcu_read_unlock }, section "___ksymtab_gpl+__srcu_read_unlock", align 4
@__kstrtab_call_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_call_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_srcu to i32), ptr @__kstrtab_call_srcu, ptr @__kstrtabns_call_srcu }, section "___ksymtab_gpl+call_srcu", align 4
@__kstrtab_synchronize_srcu_expedited = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_srcu_expedited = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_srcu_expedited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_srcu_expedited to i32), ptr @__kstrtab_synchronize_srcu_expedited, ptr @__kstrtabns_synchronize_srcu_expedited }, section "___ksymtab_gpl+synchronize_srcu_expedited", align 4
@__kstrtab_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @synchronize_srcu to i32), ptr @__kstrtab_synchronize_srcu, ptr @__kstrtabns_synchronize_srcu }, section "___ksymtab_gpl+synchronize_srcu", align 4
@__kstrtab_get_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_get_state_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_state_synchronize_srcu to i32), ptr @__kstrtab_get_state_synchronize_srcu, ptr @__kstrtabns_get_state_synchronize_srcu }, section "___ksymtab_gpl+get_state_synchronize_srcu", align 4
@__kstrtab_start_poll_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_start_poll_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_start_poll_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @start_poll_synchronize_srcu to i32), ptr @__kstrtab_start_poll_synchronize_srcu, ptr @__kstrtabns_start_poll_synchronize_srcu }, section "___ksymtab_gpl+start_poll_synchronize_srcu", align 4
@__kstrtab_poll_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_poll_state_synchronize_srcu = external dso_local constant [0 x i8], align 1
@__ksymtab_poll_state_synchronize_srcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @poll_state_synchronize_srcu to i32), ptr @__kstrtab_poll_state_synchronize_srcu, ptr @__kstrtabns_poll_state_synchronize_srcu }, section "___ksymtab_gpl+poll_state_synchronize_srcu", align 4
@__kstrtab_srcu_barrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_barrier = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_barrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_barrier to i32), ptr @__kstrtab_srcu_barrier, ptr @__kstrtabns_srcu_barrier }, section "___ksymtab_gpl+srcu_barrier", align 4
@__kstrtab_srcu_batches_completed = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_batches_completed = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_batches_completed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_batches_completed to i32), ptr @__kstrtab_srcu_batches_completed, ptr @__kstrtabns_srcu_batches_completed }, section "___ksymtab_gpl+srcu_batches_completed", align 4
@__kstrtab_srcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcutorture_get_gp_data = external dso_local constant [0 x i8], align 1
@__ksymtab_srcutorture_get_gp_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcutorture_get_gp_data to i32), ptr @__kstrtab_srcutorture_get_gp_data, ptr @__kstrtabns_srcutorture_get_gp_data }, section "___ksymtab_gpl+srcutorture_get_gp_data", align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"\011rcu: %s%s Tree SRCU g%ld per-CPU(idx=%d):\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\01c %d(%ld,%ld %c)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C.\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\01c T(%ld,%ld)\0A\00", align 1
@__kstrtab_srcu_torture_stats_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_torture_stats_print = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_torture_stats_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_torture_stats_print to i32), ptr @__kstrtab_srcu_torture_stats_print, ptr @__kstrtabns_srcu_torture_stats_print }, section "___ksymtab_gpl+srcu_torture_stats_print", align 4
@__initcall__kmod_srcutree__257_1387_srcu_bootup_announceearly = internal global ptr @srcu_bootup_announce, section ".initcallearly.init", align 4
@srcu_init_done = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@srcu_boot_list = internal global %struct.list_head { ptr @srcu_boot_list, ptr @srcu_boot_list }, align 4
@rcu_gp_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_srcutree__258_1468_init_srcu_module_notifier7 = internal global ptr @init_srcu_module_notifier, section ".initcall7.init", align 4
@init_srcu_struct_fields.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"&ssp->srcu_cb_mutex\00", align 1
@init_srcu_struct_fields.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"&ssp->srcu_gp_mutex\00", align 1
@init_srcu_struct_fields.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"&ssp->srcu_barrier_mutex\00", align 1
@srcu_advance_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_gp_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@srcu_gp_start.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"kernel/rcu/rcu.h\00", align 1
@srcu_gp_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_num_nodes = external dso_local local_unnamed_addr global i32, align 4
@rcu_num_lvls = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@srcu_reschedule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@num_rcu_lvl = external dso_local local_unnamed_addr global [0 x i32], align 4
@srcu_invoke_callbacks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_scheduler_active = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@srcu_funnel_gp_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_seq_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@rcu_seq_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\016rcu: Hierarchical SRCU implementation.\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"\016rcu: \09Non-default auto-expedite holdoff of %lu ns.\0A\00", align 1
@srcu_module_nb = internal global %struct.notifier_block { ptr @srcu_module_notify, ptr null, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [48 x i8] c"\014rcu: Failed to register srcu module notifier\0A\00", align 1
@srcu_module_coming.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_counter_wrap_checktype221, ptr @__UNIQUE_ID_exp_holdofftype220, ptr @__initcall__kmod_srcutree__257_1387_srcu_bootup_announceearly, ptr @__initcall__kmod_srcutree__258_1468_init_srcu_module_notifier7, ptr @__ksymtab___srcu_read_lock, ptr @__ksymtab___srcu_read_unlock, ptr @__ksymtab_call_srcu, ptr @__ksymtab_cleanup_srcu_struct, ptr @__ksymtab_get_state_synchronize_srcu, ptr @__ksymtab_init_srcu_struct, ptr @__ksymtab_poll_state_synchronize_srcu, ptr @__ksymtab_srcu_barrier, ptr @__ksymtab_srcu_batches_completed, ptr @__ksymtab_srcu_torture_stats_print, ptr @__ksymtab_srcutorture_get_gp_data, ptr @__ksymtab_start_poll_synchronize_srcu, ptr @__ksymtab_synchronize_srcu, ptr @__ksymtab_synchronize_srcu_expedited, ptr @__param_counter_wrap_check, ptr @__param_exp_holdoff], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @init_srcu_struct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  store i32 0, ptr %2, align 4
  %3 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_srcu_struct_fields.__key) #12
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_srcu_struct_fields.__key.7) #12
  %5 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 11
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_srcu_struct_fields.__key.9) #12
  %9 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 14
  store volatile i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15
  store i32 -32, ptr %10, align 4
  %11 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 0, i32 2
  store ptr @process_srcu, ptr %13, align 4
  %14 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %14, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  br i1 %1, label %15, label %18

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  br label %21

18:                                               ; preds = %2
  %19 = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 64) #13
  %20 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  store ptr %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %24 = icmp eq ptr %22, null
  br i1 %24, label %156, label %25

25:                                               ; preds = %21
  tail call void @rcu_init_geometry() #12
  %26 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  %27 = load i32, ptr @rcu_num_lvls, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %35, %29 ], [ %0, %25 ]
  %31 = phi i32 [ %37, %29 ], [ 1, %25 ]
  %32 = add nsw i32 %31, -1
  %33 = getelementptr [0 x i32], ptr @num_rcu_lvl, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.srcu_node, ptr %30, i32 %34
  %36 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1, i32 %31
  store ptr %35, ptr %36, align 4
  %37 = add nuw nsw i32 %31, 1
  %38 = load i32, ptr @rcu_num_lvls, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %29, label %40

40:                                               ; preds = %29, %25
  %41 = phi i32 [ %27, %25 ], [ %38, %29 ]
  %42 = add i32 %41, -1
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, ptr @nr_cpu_ids, align 4
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i32 [ %51, %46 ], [ %42, %44 ]
  %48 = phi i32 [ %50, %46 ], [ %45, %44 ]
  %49 = getelementptr i32, ptr @num_rcu_lvl, i32 %47
  %50 = load i32, ptr %49, align 4
  %51 = add nsw i32 %47, -1
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %46

53:                                               ; preds = %46
  %54 = add i32 %48, -1
  %55 = add i32 %54, %50
  %56 = sdiv i32 %55, %50
  br label %57

57:                                               ; preds = %53, %40
  %58 = phi i32 [ %56, %53 ], [ -2147483648, %40 ]
  %59 = load i32, ptr @rcu_num_nodes, align 4
  %60 = getelementptr [1 x %struct.srcu_node], ptr %0, i32 0, i32 %59
  %61 = icmp ugt ptr %60, %0
  br i1 %61, label %62, label %96

62:                                               ; preds = %85, %57
  %63 = phi i32 [ %87, %85 ], [ 0, %57 ]
  %64 = phi ptr [ %89, %85 ], [ %0, %57 ]
  %65 = getelementptr inbounds %struct.srcu_node, ptr %64, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %64, i8 0, i64 40, i1 false) #12
  store i32 -1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.srcu_node, ptr %64, i32 0, i32 6
  store i32 -1, ptr %66, align 4
  %67 = icmp eq ptr %64, %0
  br i1 %67, label %85, label %68

68:                                               ; preds = %62
  %69 = add i32 %63, 1
  %70 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %64, %71
  %73 = select i1 %72, i32 %69, i32 %63
  %74 = add i32 %73, -1
  %75 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1, i32 %73
  %78 = load ptr, ptr %77, align 4
  %79 = ptrtoint ptr %64 to i32
  %80 = ptrtoint ptr %78 to i32
  %81 = sub i32 %79, %80
  %82 = sdiv exact i32 %81, 52
  %83 = sdiv i32 %82, %58
  %84 = getelementptr %struct.srcu_node, ptr %76, i32 %83
  br label %85

85:                                               ; preds = %68, %62
  %86 = phi ptr [ %84, %68 ], [ null, %62 ]
  %87 = phi i32 [ %73, %68 ], [ %63, %62 ]
  %88 = getelementptr inbounds %struct.srcu_node, ptr %64, i32 0, i32 4
  store ptr %86, ptr %88, align 4
  %89 = getelementptr %struct.srcu_node, ptr %64, i32 1
  %90 = load i32, ptr @rcu_num_nodes, align 4
  %91 = getelementptr [1 x %struct.srcu_node], ptr %0, i32 0, i32 %90
  %92 = icmp ult ptr %89, %91
  br i1 %92, label %62, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr @rcu_num_lvls, align 4
  %95 = add i32 %94, -1
  br label %96

96:                                               ; preds = %93, %57
  %97 = phi i32 [ %95, %93 ], [ %42, %57 ]
  %98 = getelementptr %struct.srcu_struct, ptr %0, i32 0, i32 1, i32 %97
  %99 = load ptr, ptr %98, align 4
  %100 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %101 = load i32, ptr @nr_cpu_ids, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %150

103:                                              ; preds = %133, %96
  %104 = phi i32 [ %147, %133 ], [ %100, %96 ]
  %105 = load ptr, ptr %23, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %106
  %110 = inttoptr i32 %109 to ptr
  %111 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 3
  store i32 0, ptr %111, align 64
  %112 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 4
  tail call void @rcu_segcblist_init(ptr noundef %112) #12
  %113 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 7
  store i8 0, ptr %113, align 8
  %114 = load i32, ptr %6, align 4
  %115 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 5
  store i32 %114, ptr %115, align 64
  %116 = load i32, ptr %6, align 4
  %117 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 6
  store i32 %116, ptr %117, align 4
  %118 = sdiv i32 %104, %58
  %119 = getelementptr %struct.srcu_node, ptr %99, i32 %118
  %120 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 11
  store ptr %119, ptr %120, align 8
  %121 = icmp eq ptr %119, null
  br i1 %121, label %133, label %122

122:                                              ; preds = %128, %103
  %123 = phi ptr [ %131, %128 ], [ %119, %103 ]
  %124 = getelementptr inbounds %struct.srcu_node, ptr %123, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 %104, ptr %124, align 4
  br label %128

128:                                              ; preds = %127, %122
  %129 = getelementptr inbounds %struct.srcu_node, ptr %123, i32 0, i32 6
  store i32 %104, ptr %129, align 4
  %130 = getelementptr inbounds %struct.srcu_node, ptr %123, i32 0, i32 4
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %122

133:                                              ; preds = %128, %103
  %134 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 13
  store i32 %104, ptr %134, align 64
  %135 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 9
  store i32 -32, ptr %135, align 32
  %136 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 9, i32 1
  store volatile ptr %136, ptr %136, align 4
  %137 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 9, i32 1, i32 1
  store ptr %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 9, i32 2
  store ptr @srcu_invoke_callbacks, ptr %138, align 4
  %139 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %139, ptr noundef nonnull @srcu_delay_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %140 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 14
  store ptr %0, ptr %140, align 4
  %141 = load ptr, ptr %120, align 8
  %142 = getelementptr inbounds %struct.srcu_node, ptr %141, i32 0, i32 5
  %143 = load i32, ptr %142, align 4
  %144 = sub i32 %104, %143
  %145 = shl nuw i32 1, %144
  %146 = getelementptr inbounds %struct.srcu_data, ptr %110, i32 0, i32 12
  store i32 %145, ptr %146, align 4
  %147 = tail call i32 @cpumask_next(i32 noundef %104, ptr noundef nonnull @__cpu_possible_mask) #14
  %148 = load i32, ptr @nr_cpu_ids, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %103, label %150

150:                                              ; preds = %133, %96
  %151 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  store i32 0, ptr %151, align 4
  %152 = tail call i64 @ktime_get_mono_fast_ns() #12
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 9
  store i32 %153, ptr %154, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %155 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  store volatile i32 0, ptr %155, align 4
  br label %156

156:                                              ; preds = %150, %21
  %157 = phi i32 [ 0, %150 ], [ -12, %21 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cleanup_srcu_struct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  %5 = load volatile i32, ptr %4, align 4
  %6 = xor i32 %3, -1
  %7 = add i32 %5, %6
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #12
  br label %103

10:                                               ; preds = %1
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %12, %14 ], [ %36, %18 ]
  %20 = phi i32 [ 0, %14 ], [ %35, %18 ]
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %17
  %24 = inttoptr i32 %23 to ptr
  %25 = load volatile i32, ptr %24, align 64
  %26 = getelementptr [2 x i32], ptr %24, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.srcu_data, ptr %24, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 8
  %30 = getelementptr %struct.srcu_data, ptr %24, i32 0, i32 1, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = add i32 %25, %20
  %33 = add i32 %32, %27
  %34 = add i32 %29, %31
  %35 = sub i32 %33, %34
  %36 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #14
  %37 = icmp ult i32 %36, %11
  br i1 %37, label %18, label %38

38:                                               ; preds = %18
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %41, label %40, !prof !11

40:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 9, ptr noundef null) #12
  br label %103

41:                                               ; preds = %38, %10
  %42 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15
  %43 = tail call zeroext i1 @flush_delayed_work(ptr noundef %42) #12
  %44 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  br label %45

45:                                               ; preds = %50, %41
  %46 = phi i32 [ -1, %41 ], [ %47, %50 ]
  %47 = tail call i32 @cpumask_next(i32 noundef %46, ptr noundef nonnull @__cpu_possible_mask) #14
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load ptr, ptr %44, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.srcu_data, ptr %56, i32 0, i32 8
  %58 = tail call i32 @del_timer_sync(ptr noundef %57) #12
  %59 = getelementptr inbounds %struct.srcu_data, ptr %56, i32 0, i32 9
  %60 = tail call zeroext i1 @flush_work(ptr noundef %59) #12
  %61 = getelementptr inbounds %struct.srcu_data, ptr %56, i32 0, i32 4, i32 3
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %45, label %64, !prof !11

64:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 381, i32 noundef 9, ptr noundef null) #12
  br label %103

65:                                               ; preds = %45
  %66 = load volatile i32, ptr %2, align 4
  %67 = and i32 %66, 3
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %97, !prof !11

69:                                               ; preds = %65
  %70 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %71 = icmp ult i32 %70, %48
  %72 = load ptr, ptr %44, align 4
  br i1 %71, label %73, label %102

73:                                               ; preds = %69
  %74 = ptrtoint ptr %72 to i32
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i32 [ %70, %73 ], [ %93, %75 ]
  %77 = phi i32 [ 0, %73 ], [ %92, %75 ]
  %78 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %74
  %81 = inttoptr i32 %80 to ptr
  %82 = load volatile i32, ptr %81, align 64
  %83 = getelementptr [2 x i32], ptr %81, i32 0, i32 1
  %84 = load volatile i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.srcu_data, ptr %81, i32 0, i32 1
  %86 = load volatile i32, ptr %85, align 8
  %87 = getelementptr %struct.srcu_data, ptr %81, i32 0, i32 1, i32 1
  %88 = load volatile i32, ptr %87, align 4
  %89 = add i32 %82, %77
  %90 = add i32 %89, %84
  %91 = add i32 %86, %88
  %92 = sub i32 %90, %91
  %93 = tail call i32 @cpumask_next(i32 noundef %76, ptr noundef nonnull @__cpu_possible_mask) #14
  %94 = icmp ult i32 %93, %48
  br i1 %94, label %75, label %95

95:                                               ; preds = %75
  %96 = icmp eq i32 %92, 0
  br i1 %96, label %102, label %97, !prof !11

97:                                               ; preds = %95, %65
  %98 = phi i32 [ 384, %65 ], [ 385, %95 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %98, i32 noundef 9, ptr noundef null) #12
  %99 = load volatile i32, ptr %2, align 4
  %100 = and i32 %99, 3
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cleanup_srcu_struct, ptr noundef %0, i32 noundef %100) #15
  br label %103

102:                                              ; preds = %95, %69
  tail call void @free_percpu(ptr noundef %72) #12
  store ptr null, ptr %44, align 4
  br label %103

103:                                              ; preds = %102, %97, %64, %40, %9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__srcu_read_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [2 x i32], ptr %7, i32 0, i32 %4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !13
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #12, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__srcu_read_unlock(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.srcu_data, ptr %5, i32 0, i32 1, i32 %1
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @call_srcu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.callback_head, ptr %1, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = tail call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_srcu_expedited(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @rcu_gp_is_normal() #12
  tail call fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.rcu_synchronize, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !17
  %4 = load i32, ptr @rcu_scheduler_active, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %8 = load volatile i32, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  %14 = load i32, ptr %7, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #12
  br label %19

19:                                               ; preds = %17, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #12
  br label %20

20:                                               ; preds = %19, %6
  %21 = getelementptr inbounds %struct.rcu_synchronize, ptr %3, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rcu_synchronize, ptr %3, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #12
  %23 = getelementptr inbounds %struct.callback_head, ptr %3, i32 0, i32 1
  store ptr @wakeme_after_rcu, ptr %23, align 4
  %24 = call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext %1) #12
  call void @wait_for_completion(ptr noundef %21) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  br label %25

25:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_normal() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synchronize_srcu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %3 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %4 = and i32 %3, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #12
  br label %14

14:                                               ; preds = %12, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #11, !srcloc !13
  %22 = add i32 %21, %18
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.srcu_data, ptr %23, i32 0, i32 3
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #12
  %26 = getelementptr inbounds %struct.srcu_data, ptr %23, i32 0, i32 4
  %27 = tail call zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %26) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #12
  br i1 %27, label %51, label %28

28:                                               ; preds = %15
  %29 = tail call i64 @ktime_get_mono_fast_ns() #12
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 9
  %32 = load volatile i32, ptr %31, align 4
  %33 = load i32, ptr @exp_holdoff, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %28
  %36 = sub i32 %30, %32
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = add i32 %32, %33
  %40 = sub i32 %30, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %35
  %43 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %44 = load volatile i32, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  %45 = load volatile i32, ptr %2, align 4
  %46 = sub i32 %44, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %49 = load volatile i32, ptr %43, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %48, %42, %38, %28, %15
  %52 = tail call zeroext i1 @rcu_gp_is_expedited() #12
  br i1 %52, label %53, label %55

53:                                               ; preds = %51, %48
  %54 = tail call zeroext i1 @rcu_gp_is_normal() #12
  tail call fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext %54) #12
  br label %56

55:                                               ; preds = %51
  tail call fastcc void @__synchronize_srcu(ptr noundef %0, i1 noundef zeroext true)
  br label %56

56:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_gp_is_expedited() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_state_synchronize_srcu(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, 7
  %5 = and i32 %4, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @start_poll_synchronize_srcu(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef null, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @srcu_gp_start_if_needed(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %5 = load volatile i32, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %11 = load i32, ptr %4, align 4
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #12
  br label %16

16:                                               ; preds = %14, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #12
  br label %17

17:                                               ; preds = %16, %3
  %18 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 5
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %22 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr [2 x i32], ptr %23, i32 0, i32 %20
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #11, !srcloc !13
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #12, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !15
  %33 = load ptr, ptr %22, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #11, !srcloc !13
  %38 = add i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 3
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #12
  %42 = icmp eq ptr %1, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %17
  %44 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 4
  tail call void @rcu_segcblist_enqueue(ptr noundef %44, ptr noundef nonnull %1) #12
  br label %45

45:                                               ; preds = %43, %17
  %46 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 4
  %47 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %48 = load volatile i32, ptr %47, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %46, i32 noundef %48) #12
  %49 = load volatile i32, ptr %47, align 4
  %50 = add i32 %49, 7
  %51 = and i32 %50, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %52 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %46, i32 noundef %51) #12
  %53 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 5
  %54 = load i32, ptr %53, align 64
  %55 = sub i32 %54, %51
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 %51, ptr %53, align 64
  br label %58

58:                                               ; preds = %57, %45
  br i1 %2, label %64, label %59

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %61, %51
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %58
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  br i1 %56, label %66, label %188

65:                                               ; preds = %59
  store i32 %51, ptr %60, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #12
  br i1 %56, label %66, label %185

66:                                               ; preds = %65, %64
  %67 = lshr i32 %50, 2
  %68 = and i32 %67, 3
  %69 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %135, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 12
  br label %74

74:                                               ; preds = %131, %72
  %75 = phi ptr [ %70, %72 ], [ %133, %131 ]
  %76 = load volatile i32, ptr %47, align 4
  %77 = sub i32 %76, %51
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load ptr, ptr %69, align 8
  %81 = icmp eq ptr %75, %80
  br i1 %81, label %82, label %188

82:                                               ; preds = %79, %74
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %75) #12
  %84 = getelementptr %struct.srcu_node, ptr %75, i32 0, i32 1, i32 %68
  %85 = load i32, ptr %84, align 4
  %86 = sub i32 %85, %51
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  %89 = load ptr, ptr %69, align 8
  %90 = icmp eq ptr %75, %89
  %91 = icmp eq i32 %85, %51
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, ptr %73, align 4
  %95 = getelementptr %struct.srcu_node, ptr %75, i32 0, i32 2, i32 %68
  %96 = load i32, ptr %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, ptr %95, align 4
  br label %98

98:                                               ; preds = %93, %88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %75, i32 noundef %83) #12
  %99 = load ptr, ptr %69, align 8
  %100 = icmp ne ptr %75, %99
  %101 = select i1 %100, i1 true, i1 %91
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  br i1 %2, label %109, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 13
  %105 = load i32, ptr %104, align 64
  %106 = load ptr, ptr @rcu_gp_wq, align 4
  %107 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 9
  %108 = tail call zeroext i1 @queue_work_on(i32 noundef %105, ptr noundef %106, ptr noundef %107) #12
  br label %188

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 8
  %111 = load volatile i32, ptr @jiffies, align 64
  %112 = add i32 %111, 1
  %113 = tail call i32 @timer_reduce(ptr noundef %110, i32 noundef %112) #12
  br label %188

114:                                              ; preds = %98
  br i1 %2, label %188, label %115

115:                                              ; preds = %114
  tail call fastcc void @srcu_funnel_exp_start(ptr noundef %0, ptr noundef nonnull %75, i32 noundef %51) #12
  br label %188

116:                                              ; preds = %82
  store i32 %51, ptr %84, align 4
  %117 = load ptr, ptr %69, align 8
  %118 = icmp eq ptr %75, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, ptr %73, align 4
  %121 = getelementptr %struct.srcu_node, ptr %75, i32 0, i32 2, i32 %68
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %119, %116
  br i1 %2, label %131, label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.srcu_node, ptr %75, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = sub i32 %127, %51
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store volatile i32 %51, ptr %126, align 4
  br label %131

131:                                              ; preds = %130, %125, %124
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %75, i32 noundef %83) #12
  %132 = getelementptr inbounds %struct.srcu_node, ptr %75, i32 0, i32 4
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %74

135:                                              ; preds = %131, %66
  %136 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %137 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %136) #12
  %138 = load i32, ptr %4, align 4
  %139 = sub i32 %138, %51
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  store volatile i32 %51, ptr %4, align 4
  br label %142

142:                                              ; preds = %141, %135
  %143 = phi i32 [ %51, %141 ], [ %138, %135 ]
  br i1 %2, label %150, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  %146 = load i32, ptr %145, align 4
  %147 = sub i32 %146, %51
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  store volatile i32 %51, ptr %145, align 4
  br label %150

150:                                              ; preds = %149, %144, %142
  %151 = load volatile i32, ptr %47, align 4
  %152 = sub i32 %151, %51
  %153 = icmp slt i32 %152, 0
  %154 = and i32 %151, 3
  %155 = icmp eq i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %184

157:                                              ; preds = %150
  %158 = sub i32 %151, %143
  %159 = icmp sgt i32 %158, -1
  %160 = load i1, ptr @srcu_funnel_gp_start.__already_done, align 1
  %161 = xor i1 %160, true
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %163, label %164, !prof !10

163:                                              ; preds = %157
  store i1 true, ptr @srcu_funnel_gp_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 679, i32 noundef 9, ptr noundef null) #12
  br label %164

164:                                              ; preds = %163, %157
  tail call fastcc void @srcu_gp_start(ptr noundef %0) #12
  %165 = load i1, ptr @srcu_init_done, align 1
  br i1 %165, label %166, label %176, !prof !11

166:                                              ; preds = %164
  %167 = load ptr, ptr @rcu_gp_wq, align 4
  %168 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15
  %169 = load volatile i32, ptr %47, align 4
  %170 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  %171 = load volatile i32, ptr %170, align 4
  %172 = xor i32 %169, -1
  %173 = add i32 %171, %172
  %174 = lshr i32 %173, 31
  %175 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %167, ptr noundef %168, i32 noundef %174) #12
  br label %184

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 0, i32 1
  %178 = load volatile ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, %177
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load ptr, ptr @srcu_boot_list, align 4
  %182 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  store ptr %177, ptr %182, align 4
  store ptr %181, ptr %177, align 4
  %183 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15, i32 0, i32 1, i32 1
  store ptr @srcu_boot_list, ptr %183, align 4
  store volatile ptr %177, ptr @srcu_boot_list, align 4
  br label %184

184:                                              ; preds = %180, %176, %166, %150
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %136, i32 noundef %137) #12
  br label %188

185:                                              ; preds = %65
  %186 = getelementptr inbounds %struct.srcu_data, ptr %39, i32 0, i32 11
  %187 = load ptr, ptr %186, align 8
  tail call fastcc void @srcu_funnel_exp_start(ptr noundef %0, ptr noundef %187, i32 noundef %51)
  br label %188

188:                                              ; preds = %185, %184, %115, %114, %109, %103, %79, %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %189 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !12
  %190 = load ptr, ptr %22, align 4
  %191 = getelementptr %struct.srcu_data, ptr %190, i32 0, i32 1, i32 %20
  %192 = ptrtoint ptr %191 to i32
  %193 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %194 = inttoptr i32 %193 to ptr
  %195 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %194) #11, !srcloc !13
  %196 = add i32 %195, %192
  %197 = inttoptr i32 %196 to ptr
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, ptr %197, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %189) #12, !srcloc !14
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @poll_state_synchronize_srcu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %4 = load volatile i32, ptr %3, align 4
  %5 = sub i32 %4, %1
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  br label %8

8:                                                ; preds = %7, %2
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @srcu_barrier(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, 7
  %5 = and i32 %4, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %7 = load volatile i32, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #12
  %13 = load i32, ptr %6, align 4
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %0, i1 noundef zeroext true) #12
  br label %18

18:                                               ; preds = %16, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #12
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %20) #12
  %21 = load volatile i32, ptr %2, align 4
  %22 = sub i32 %21, %5
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  br label %83

25:                                               ; preds = %19
  %26 = add i32 %21, 1
  store volatile i32 %26, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 1
  %30 = load i1, ptr @rcu_seq_start.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %25
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 13
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %36, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #12
  %37 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 14
  store volatile i32 1, ptr %37, align 4
  %38 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  br label %43

43:                                               ; preds = %59, %41
  %44 = phi i32 [ %38, %41 ], [ %62, %59 ]
  %45 = load ptr, ptr %42, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %51) #12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !28
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !29
  %53 = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 10
  %54 = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 10, i32 1
  store ptr @srcu_barrier_cb, ptr %54, align 4
  %55 = getelementptr inbounds %struct.srcu_data, ptr %50, i32 0, i32 4
  %56 = tail call zeroext i1 @rcu_segcblist_entrain(ptr noundef %55, ptr noundef %53) #12
  br i1 %56, label %59, label %57

57:                                               ; preds = %43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !28
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !30
  br label %59

59:                                               ; preds = %57, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %60 = load i16, ptr %51, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %62 = tail call i32 @cpumask_next(i32 noundef %44, ptr noundef nonnull @__cpu_possible_mask) #14
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %43, label %65

65:                                               ; preds = %59, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #12, !srcloc !28
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !37
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !38
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @complete(ptr noundef %35) #12
  br label %70

70:                                               ; preds = %69, %65
  tail call void @wait_for_completion(ptr noundef %35) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !39
  %71 = load i32, ptr %2, align 4
  %72 = and i32 %71, 3
  %73 = icmp eq i32 %72, 0
  %74 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %79, !prof !10

77:                                               ; preds = %70
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 72, i32 noundef 9, ptr noundef null) #12
  %78 = load i32, ptr %2, align 4
  br label %79

79:                                               ; preds = %77, %70
  %80 = phi i32 [ %78, %77 ], [ %71, %70 ]
  %81 = or i32 %80, 3
  %82 = add i32 %81, 1
  store volatile i32 %82, ptr %2, align 4
  br label %83

83:                                               ; preds = %79, %24
  tail call void @mutex_unlock(ptr noundef %20) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @srcu_barrier_cb(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %3, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !28
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !37
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.srcu_struct, ptr %3, i32 0, i32 13
  tail call void @complete(ptr noundef %9) #12
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_entrain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @srcu_batches_completed(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 5
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @srcutorture_get_gp_data(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = icmp eq i32 %0, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  store i32 0, ptr %2, align 4
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %1, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  br label %9

9:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @srcu_torture_stats_print(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2, i32 noundef %8, i32 noundef %6) #15
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %15 = xor i32 %6, 1
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %10, %13 ], [ %46, %16 ]
  %18 = phi i32 [ 0, %13 ], [ %44, %16 ]
  %19 = phi i32 [ 0, %13 ], [ %45, %16 ]
  %20 = load ptr, ptr %14, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr %struct.srcu_data, ptr %25, i32 0, i32 1, i32 %15
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.srcu_data, ptr %25, i32 0, i32 1, i32 %6
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !40
  %30 = getelementptr [2 x i32], ptr %25, i32 0, i32 %15
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [2 x i32], ptr %25, i32 0, i32 %6
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %31, %27
  %35 = sub i32 %33, %29
  %36 = getelementptr inbounds %struct.srcu_data, ptr %25, i32 0, i32 4
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = zext i1 %38 to i32
  %40 = getelementptr [3 x i8], ptr @.str.4, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %17, i32 noundef %34, i32 noundef %35, i32 noundef %42) #15
  %44 = add i32 %34, %18
  %45 = add i32 %35, %19
  %46 = tail call i32 @cpumask_next(i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #14
  %47 = load i32, ptr @nr_cpu_ids, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %16, label %49

49:                                               ; preds = %16, %3
  %50 = phi i32 [ 0, %3 ], [ %45, %16 ]
  %51 = phi i32 [ 0, %3 ], [ %44, %16 ]
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %51, i32 noundef %50) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @srcu_bootup_announce() #6 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  %2 = load i32, ptr @exp_holdoff, align 4
  %3 = icmp eq i32 %2, 25000
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %2) #15
  br label %6

6:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @srcu_init() local_unnamed_addr #6 section ".init.text" {
  store i1 true, ptr @srcu_init_done, align 1
  %1 = load volatile ptr, ptr @srcu_boot_list, align 4
  %2 = icmp eq ptr %1, @srcu_boot_list
  br i1 %2, label %14, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %12, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %6, align 4
  %10 = load ptr, ptr @rcu_gp_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %5) #12
  %12 = load volatile ptr, ptr @srcu_boot_list, align 4
  %13 = icmp eq ptr %12, @srcu_boot_list
  br i1 %13, label %14, label %3

14:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_srcu_module_notifier() #6 section ".init.text" {
  %1 = tail call i32 @register_module_notifier(ptr noundef nonnull @srcu_module_nb) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @process_srcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -172
  %3 = getelementptr i8, ptr %0, i32 -88
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load volatile i32, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !41
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -92
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr i8, ptr %0, i32 -60
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = and i32 %10, 3
  %17 = icmp ne i32 %16, 0
  %18 = load i1, ptr @srcu_advance_state.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !10

21:                                               ; preds = %15
  store i1 true, ptr @srcu_advance_state.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1193, i32 noundef 9, ptr noundef null) #12
  br label %22

22:                                               ; preds = %21, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %23 = load i16, ptr %9, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  tail call void @mutex_unlock(ptr noundef %3) #12
  br label %233

25:                                               ; preds = %8
  %26 = load volatile i32, ptr %4, align 4
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  tail call fastcc void @srcu_gp_start(ptr noundef %2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %30 = load i16, ptr %9, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %35

32:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %33 = load i16, ptr %9, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  tail call void @mutex_unlock(ptr noundef %3) #12
  br label %233

35:                                               ; preds = %29, %1
  %36 = load volatile i32, ptr %4, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 -68
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = xor i32 %42, 1
  %44 = tail call fastcc zeroext i1 @try_check_zero(ptr noundef %2, i32 noundef %43, i32 noundef 1) #12
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @mutex_unlock(ptr noundef %3) #12
  br label %233

46:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !42
  %47 = load i32, ptr %40, align 4
  %48 = add i32 %47, 1
  store volatile i32 %48, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  %49 = getelementptr i8, ptr %0, i32 -92
  tail call void @_raw_spin_lock_irq(ptr noundef %49) #12
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, -4
  %52 = or i32 %51, 2
  store volatile i32 %52, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %53 = load i16, ptr %49, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %55

55:                                               ; preds = %46, %35
  %56 = load volatile i32, ptr %4, align 4
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %233

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %0, i32 -68
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = xor i32 %62, 1
  %64 = tail call fastcc zeroext i1 @try_check_zero(ptr noundef %2, i32 noundef %63, i32 noundef 2) #12
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void @mutex_unlock(ptr noundef %3) #12
  br label %233

66:                                               ; preds = %59
  %67 = getelementptr i8, ptr %0, i32 -112
  tail call void @mutex_lock(ptr noundef %67) #12
  %68 = getelementptr i8, ptr %0, i32 -92
  tail call void @_raw_spin_lock_irq(ptr noundef %68) #12
  %69 = load i32, ptr %4, align 4
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 2
  %72 = load i1, ptr @srcu_gp_end.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !10

75:                                               ; preds = %66
  store i1 true, ptr @srcu_gp_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #12
  br label %76

76:                                               ; preds = %75, %66
  %77 = load volatile i32, ptr %4, align 4
  %78 = getelementptr i8, ptr %0, i32 -56
  %79 = load volatile i32, ptr %78, align 4
  %80 = xor i32 %77, -1
  %81 = add i32 %79, %80
  %82 = tail call i64 @ktime_get_mono_fast_ns() #12
  %83 = trunc i64 %82 to i32
  %84 = getelementptr i8, ptr %0, i32 -52
  store volatile i32 %83, ptr %84, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !39
  %85 = load i32, ptr %4, align 4
  %86 = and i32 %85, 3
  %87 = icmp eq i32 %86, 0
  %88 = load i1, ptr @rcu_seq_end.__already_done, align 1
  %89 = xor i1 %88, true
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %93, !prof !10

91:                                               ; preds = %76
  store i1 true, ptr @rcu_seq_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 72, i32 noundef 9, ptr noundef null) #12
  %92 = load i32, ptr %4, align 4
  br label %93

93:                                               ; preds = %91, %76
  %94 = phi i32 [ %92, %91 ], [ %85, %76 ]
  %95 = or i32 %94, 3
  %96 = add i32 %95, 1
  store volatile i32 %96, ptr %4, align 4
  %97 = load volatile i32, ptr %4, align 4
  %98 = load i32, ptr %78, align 4
  %99 = sub i32 %98, %97
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store volatile i32 %97, ptr %78, align 4
  br label %102

102:                                              ; preds = %101, %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %103 = load i16, ptr %68, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  tail call void @mutex_unlock(ptr noundef %3) #12
  %105 = lshr i32 %97, 2
  %106 = and i32 %105, 3
  %107 = load i32, ptr @rcu_num_nodes, align 4
  %108 = getelementptr [1 x %struct.srcu_node], ptr %2, i32 0, i32 %107
  %109 = icmp ugt ptr %108, %2
  br i1 %109, label %110, label %218

110:                                              ; preds = %102
  %111 = and i32 %97, -4
  %112 = or i32 %111, 1
  %113 = getelementptr i8, ptr %0, i32 -48
  %114 = icmp sgt i32 %81, -1
  %115 = add i32 %97, -100
  br label %116

116:                                              ; preds = %213, %110
  %117 = phi ptr [ %2, %110 ], [ %214, %213 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %117) #12
  %118 = load i32, ptr @rcu_num_lvls, align 4
  %119 = add i32 %118, -1
  %120 = getelementptr %struct.srcu_struct, ptr %2, i32 0, i32 1, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = icmp ult ptr %117, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %116
  %124 = getelementptr %struct.srcu_node, ptr %117, i32 0, i32 1, i32 %106
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, %97
  br label %127

127:                                              ; preds = %123, %116
  %128 = phi i1 [ %126, %123 ], [ false, %116 ]
  %129 = getelementptr %struct.srcu_node, ptr %117, i32 0, i32 1, i32 %106
  store volatile i32 %112, ptr %129, align 4
  %130 = getelementptr inbounds %struct.srcu_node, ptr %117, i32 0, i32 3
  %131 = load i32, ptr %130, align 4
  %132 = sub i32 %131, %97
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store volatile i32 %97, ptr %130, align 4
  br label %135

135:                                              ; preds = %134, %127
  %136 = getelementptr %struct.srcu_node, ptr %117, i32 0, i32 2, i32 %106
  %137 = load i32, ptr %136, align 4
  store i32 0, ptr %136, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %138 = load i16, ptr %117, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br i1 %128, label %140, label %177

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.srcu_node, ptr %117, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.srcu_node, ptr %117, i32 0, i32 6
  %144 = load i32, ptr %143, align 4
  %145 = icmp sgt i32 %142, %144
  br i1 %145, label %177, label %146

146:                                              ; preds = %175, %140
  %147 = phi i32 [ %176, %175 ], [ %142, %140 ]
  %148 = phi i32 [ %172, %175 ], [ %142, %140 ]
  %149 = sub i32 %148, %147
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %137
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %171, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr %113, align 4
  %155 = ptrtoint ptr %154 to i32
  %156 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %148
  %157 = load i32, ptr %156, align 4
  %158 = add i32 %157, %155
  %159 = inttoptr i32 %158 to ptr
  br i1 %114, label %160, label %166

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.srcu_data, ptr %159, i32 0, i32 13
  %162 = load i32, ptr %161, align 64
  %163 = load ptr, ptr @rcu_gp_wq, align 4
  %164 = getelementptr inbounds %struct.srcu_data, ptr %159, i32 0, i32 9
  %165 = tail call zeroext i1 @queue_work_on(i32 noundef %162, ptr noundef %163, ptr noundef %164) #12
  br label %171

166:                                              ; preds = %153
  %167 = getelementptr inbounds %struct.srcu_data, ptr %159, i32 0, i32 8
  %168 = load volatile i32, ptr @jiffies, align 64
  %169 = add i32 %168, 1
  %170 = tail call i32 @timer_reduce(ptr noundef %167, i32 noundef %169) #12
  br label %171

171:                                              ; preds = %166, %160, %146
  %172 = add i32 %148, 1
  %173 = load i32, ptr %143, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %141, align 4
  br label %146

177:                                              ; preds = %171, %140, %135
  %178 = load i32, ptr @counter_wrap_check, align 4
  %179 = and i32 %178, %97
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, i1 true, i1 %122
  br i1 %181, label %213, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.srcu_node, ptr %117, i32 0, i32 5
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.srcu_node, ptr %117, i32 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = icmp sgt i32 %184, %186
  br i1 %187, label %213, label %188

188:                                              ; preds = %209, %182
  %189 = phi i32 [ %210, %209 ], [ %184, %182 ]
  %190 = load ptr, ptr %113, align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %189
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, %191
  %195 = inttoptr i32 %194 to ptr
  %196 = getelementptr inbounds %struct.srcu_data, ptr %195, i32 0, i32 3
  %197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #12
  %198 = getelementptr inbounds %struct.srcu_data, ptr %195, i32 0, i32 5
  %199 = load i32, ptr %198, align 64
  %200 = sub i32 %115, %199
  %201 = icmp sgt i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %188
  store i32 %97, ptr %198, align 64
  br label %203

203:                                              ; preds = %202, %188
  %204 = getelementptr inbounds %struct.srcu_data, ptr %195, i32 0, i32 6
  %205 = load i32, ptr %204, align 4
  %206 = sub i32 %115, %205
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 %97, ptr %204, align 4
  br label %209

209:                                              ; preds = %208, %203
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %196, i32 noundef %197) #12
  %210 = add i32 %189, 1
  %211 = load i32, ptr %185, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %188

213:                                              ; preds = %209, %182, %177
  %214 = getelementptr %struct.srcu_node, ptr %117, i32 1
  %215 = load i32, ptr @rcu_num_nodes, align 4
  %216 = getelementptr [1 x %struct.srcu_node], ptr %2, i32 0, i32 %215
  %217 = icmp ult ptr %214, %216
  br i1 %217, label %116, label %218

218:                                              ; preds = %213, %102
  tail call void @mutex_unlock(ptr noundef %67) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %68) #12
  %219 = load volatile i32, ptr %4, align 4
  %220 = and i32 %219, 3
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = getelementptr i8, ptr %0, i32 -60
  %224 = load i32, ptr %223, align 4
  %225 = sub i32 %219, %224
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  tail call fastcc void @srcu_gp_start(ptr noundef %2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %228 = load i16, ptr %68, align 4
  %229 = add i16 %228, 1
  store i16 %229, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  tail call fastcc void @srcu_reschedule(ptr noundef %2, i32 noundef 0) #12
  br label %233

230:                                              ; preds = %222, %218
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %231 = load i16, ptr %68, align 4
  %232 = add i16 %231, 1
  store i16 %232, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %233

233:                                              ; preds = %230, %227, %65, %55, %45, %32, %22
  %234 = load volatile i32, ptr %4, align 4
  %235 = getelementptr i8, ptr %0, i32 -56
  %236 = load volatile i32, ptr %235, align 4
  %237 = xor i32 %234, -1
  %238 = add i32 %236, %237
  %239 = lshr i32 %238, 31
  tail call fastcc void @srcu_reschedule(ptr noundef %2, i32 noundef %239)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @srcu_reschedule(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = icmp sgt i32 %8, -1
  %10 = and i32 %5, 3
  br i1 %9, label %11, label %20

11:                                               ; preds = %2
  %12 = icmp ne i32 %10, 0
  %13 = load i1, ptr @srcu_reschedule.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %11
  store i1 true, ptr @srcu_reschedule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1302, i32 noundef 9, ptr noundef null) #12
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br i1 %12, label %28, label %32

20:                                               ; preds = %2
  %21 = icmp eq i32 %10, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  tail call fastcc void @srcu_gp_start(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %23 = load i16, ptr %3, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %28

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %26 = load i16, ptr %3, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %28

28:                                               ; preds = %25, %22, %17
  %29 = load ptr, ptr @rcu_gp_wq, align 4
  %30 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 15
  %31 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef %30, i32 noundef %1) #12
  br label %32

32:                                               ; preds = %28, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @srcu_gp_start(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #11, !srcloc !13
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = icmp sgt i32 %14, -1
  %16 = load i1, ptr @srcu_gp_start.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %1
  store i1 true, ptr @srcu_gp_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.srcu_data, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %21) #12
  %22 = getelementptr inbounds %struct.srcu_data, ptr %9, i32 0, i32 4
  %23 = load volatile i32, ptr %10, align 4
  tail call void @rcu_segcblist_advance(ptr noundef %22, i32 noundef %23) #12
  %24 = load volatile i32, ptr %10, align 4
  %25 = add i32 %24, 7
  %26 = and i32 %25, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %27 = tail call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %22, i32 noundef %26) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %28 = load i16, ptr %21, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %30 = load i32, ptr %10, align 4
  %31 = add i32 %30, 1
  store volatile i32 %31, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %32 = load i32, ptr %10, align 4
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 1
  %35 = load i1, ptr @rcu_seq_start.__already_done, align 1
  %36 = xor i1 %35, true
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %41, !prof !10

38:                                               ; preds = %20
  store i1 true, ptr @rcu_seq_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 59, i32 noundef 9, ptr noundef null) #12
  %39 = load i32, ptr %10, align 4
  %40 = and i32 %39, 3
  br label %41

41:                                               ; preds = %38, %20
  %42 = phi i32 [ %33, %20 ], [ %40, %38 ]
  %43 = icmp ne i32 %42, 1
  %44 = load i1, ptr @srcu_gp_start.__already_done.11, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !10

47:                                               ; preds = %41
  store i1 true, ptr @srcu_gp_start.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 451, i32 noundef 9, ptr noundef null) #12
  br label %48

48:                                               ; preds = %47, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_check_zero(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 10
  %5 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  br label %7

7:                                                ; preds = %58, %3
  %8 = phi i32 [ %2, %3 ], [ %51, %58 ]
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %11 = icmp ult i32 %10, %9
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %10, %12 ], [ %25, %15 ]
  %17 = phi i32 [ 0, %12 ], [ %24, %15 ]
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %14
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr %struct.srcu_data, ptr %21, i32 0, i32 1, i32 %1
  %23 = load volatile i32, ptr %22, align 4
  %24 = add i32 %23, %17
  %25 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #14
  %26 = icmp ult i32 %25, %9
  br i1 %26, label %15, label %27

27:                                               ; preds = %15, %7
  %28 = phi i32 [ 0, %7 ], [ %24, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !46
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %30, %32 ], [ %45, %35 ]
  %37 = phi i32 [ 0, %32 ], [ %44, %35 ]
  %38 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %34
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr [2 x i32], ptr %41, i32 0, i32 %1
  %43 = load volatile i32, ptr %42, align 4
  %44 = add i32 %43, %37
  %45 = tail call i32 @cpumask_next(i32 noundef %36, ptr noundef nonnull @__cpu_possible_mask) #14
  %46 = icmp ult i32 %45, %29
  br i1 %46, label %35, label %47

47:                                               ; preds = %35, %27
  %48 = phi i32 [ 0, %27 ], [ %44, %35 ]
  %49 = icmp eq i32 %48, %28
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = add i32 %8, -1
  %52 = load volatile i32, ptr %5, align 4
  %53 = load volatile i32, ptr %6, align 4
  %54 = sub i32 %52, %53
  %55 = lshr i32 %54, 31
  %56 = add i32 %55, %51
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 1073740) #12
  br label %7

60:                                               ; preds = %50, %47
  ret i1 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_accelerate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_init_geometry() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @srcu_invoke_callbacks(ptr noundef %0) #0 {
  %2 = alloca %struct.rcu_cblist, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !17
  %3 = getelementptr i8, ptr %0, i32 36
  %4 = load ptr, ptr %3, align 4
  call void @rcu_cblist_init(ptr noundef nonnull %2) #12
  %5 = getelementptr i8, ptr %0, i32 -96
  call void @_raw_spin_lock_irq(ptr noundef %5) #12
  %6 = getelementptr i8, ptr %0, i32 -92
  %7 = getelementptr inbounds %struct.srcu_struct, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  call void @rcu_segcblist_advance(ptr noundef %6, i32 noundef %8) #12
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load i8, ptr %9, align 8, !range !47
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %6) #12
  br i1 %13, label %17, label %14

14:                                               ; preds = %12, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %15 = load i16, ptr %5, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br label %56

17:                                               ; preds = %12
  store i8 1, ptr %9, align 8
  call void @rcu_segcblist_extract_done_cbs(ptr noundef %6, ptr noundef nonnull %2) #12
  %18 = getelementptr inbounds %struct.rcu_cblist, ptr %2, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %20 = load i16, ptr %5, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %22 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %2) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %17
  %25 = tail call ptr @llvm.thread.pointer() #12
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi ptr [ %22, %24 ], [ %33, %27 ]
  %29 = load volatile i32, ptr %26, align 4
  %30 = add i32 %29, 512
  store volatile i32 %30, ptr %26, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %31 = getelementptr inbounds %struct.callback_head, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef nonnull %28) #12
  call fastcc void @local_bh_enable()
  %33 = call ptr @rcu_cblist_dequeue(ptr noundef nonnull %2) #12
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %27

35:                                               ; preds = %27, %17
  %36 = load i32, ptr %18, align 4
  %37 = icmp ne i32 %36, 0
  %38 = load i1, ptr @srcu_invoke_callbacks.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !10

41:                                               ; preds = %35
  store i1 true, ptr @srcu_invoke_callbacks.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1275, i32 noundef 9, ptr noundef null) #12
  br label %42

42:                                               ; preds = %41, %35
  call void @_raw_spin_lock_irq(ptr noundef %5) #12
  %43 = sub i32 0, %19
  call void @rcu_segcblist_add_len(ptr noundef %6, i32 noundef %43) #12
  %44 = load volatile i32, ptr %7, align 4
  %45 = add i32 %44, 7
  %46 = and i32 %45, -4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  %47 = call zeroext i1 @rcu_segcblist_accelerate(ptr noundef %6, i32 noundef %46) #12
  store i8 0, ptr %9, align 8
  %48 = call zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %6) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  %49 = load i16, ptr %5, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !32
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !33
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  br i1 %48, label %51, label %56

51:                                               ; preds = %42
  %52 = getelementptr i8, ptr %0, i32 32
  %53 = load i32, ptr %52, align 64
  %54 = load ptr, ptr @rcu_gp_wq, align 4
  %55 = call zeroext i1 @queue_work_on(i32 noundef %53, ptr noundef %54, ptr noundef %0) #12
  br label %56

56:                                               ; preds = %51, %42, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @srcu_delay_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load i32, ptr %2, align 64
  %4 = load ptr, ptr @rcu_gp_wq, align 4
  %5 = getelementptr i8, ptr %0, i32 20
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef %3, ptr noundef %4, ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_cblist_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_extract_done_cbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcu_cblist_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_add_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeme_after_rcu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_segcblist_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @srcu_funnel_exp_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %23, %5
  %8 = phi ptr [ %1, %5 ], [ %25, %23 ]
  %9 = load volatile i32, ptr %6, align 4
  %10 = sub i32 %9, %2
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.srcu_node, ptr %8, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = sub i32 %14, %2
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #12
  %19 = load i32, ptr %13, align 4
  %20 = sub i32 %19, %2
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %8, i32 noundef %18) #12
  br label %36

23:                                               ; preds = %17
  store volatile i32 %2, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %8, i32 noundef %18) #12
  %24 = getelementptr inbounds %struct.srcu_node, ptr %8, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7

27:                                               ; preds = %23, %3
  %28 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.srcu_struct, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %31, %2
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store volatile i32 %2, ptr %30, align 4
  br label %35

35:                                               ; preds = %34, %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #12
  br label %36

36:                                               ; preds = %35, %22, %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @srcu_module_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  switch i32 %1, label %43 [
    i32 1, label %4
    i32 2, label %28
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 41
  %6 = load i32, ptr %5, align 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 42
  %10 = load ptr, ptr %9, align 4
  br label %15

11:                                               ; preds = %27
  %12 = add nuw i32 %16, 1
  %13 = load i32, ptr %5, align 32
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %17 = phi ptr [ %18, %11 ], [ %10, %8 ]
  %18 = getelementptr ptr, ptr %17, i32 1
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr inbounds %struct.srcu_struct, ptr %19, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = tail call fastcc i32 @init_srcu_struct_fields(ptr noundef %19, i1 noundef zeroext false) #12
  %22 = icmp ne i32 %21, 0
  %23 = load i1, ptr @srcu_module_coming.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !10

26:                                               ; preds = %15
  store i1 true, ptr @srcu_module_coming.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1418, i32 noundef 9, ptr noundef null) #12
  br label %27

27:                                               ; preds = %26, %15
  br i1 %22, label %43, label %11

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 41
  %30 = load i32, ptr %29, align 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 42
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %38, %35 ], [ %34, %32 ]
  %37 = phi i32 [ %40, %35 ], [ 0, %32 ]
  %38 = getelementptr ptr, ptr %36, i32 1
  %39 = load ptr, ptr %36, align 4
  tail call void @cleanup_srcu_struct(ptr noundef %39) #12
  %40 = add nuw i32 %37, 1
  %41 = load i32, ptr %29, align 32
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %35, label %43

43:                                               ; preds = %35, %28, %27, %11, %4, %3
  %44 = phi i32 [ 0, %3 ], [ 0, %4 ], [ 0, %28 ], [ %21, %27 ], [ 0, %11 ], [ 0, %35 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2151756240}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 538049, i64 538110}
!13 = !{i64 556749}
!14 = !{i64 541066}
!15 = !{i64 2151825630}
!16 = !{i64 2151827003}
!17 = !{!"auto-init"}
!18 = !{i64 2151766707}
!19 = !{i64 2151895613}
!20 = !{i64 2151885199}
!21 = !{i64 2151889563}
!22 = !{i64 2151898453}
!23 = !{i64 2151668895}
!24 = !{i64 2151870626}
!25 = !{i64 2151901547}
!26 = !{i64 2151904417}
!27 = !{i64 2151661549}
!28 = !{i64 632371, i64 2148122342, i64 2148122368, i64 2148122415, i64 2148122437, i64 2148122465, i64 2148122485}
!29 = !{i64 2148134554, i64 2148134580, i64 2148134609, i64 2148134643, i64 2148134674, i64 2148134697}
!30 = !{i64 2148136911, i64 2148136937, i64 2148136966, i64 2148137000, i64 2148137031, i64 2148137054}
!31 = !{i64 2148956048}
!32 = !{i64 2148951872}
!33 = !{i64 2148951947, i64 2148951974, i64 2148952021, i64 2148952043, i64 2148952071, i64 2148952091}
!34 = !{i64 538294}
!35 = !{i64 2148980192}
!36 = !{i64 2148235233}
!37 = !{i64 2148137595, i64 2148137627, i64 2148137656, i64 2148137690, i64 2148137721, i64 2148137744}
!38 = !{i64 2148235436}
!39 = !{i64 2151663056}
!40 = !{i64 2151941874}
!41 = !{i64 2151920976}
!42 = !{i64 2151877570}
!43 = !{i64 2151879841}
!44 = !{i64 2148979051}
!45 = !{i64 2151839053}
!46 = !{i64 2151775889}
!47 = !{i8 0, i8 2}
!48 = !{i64 2148901568}
