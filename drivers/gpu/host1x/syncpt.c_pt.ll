; ModuleID = '/llk/IR/drivers/gpu/host1x/syncpt.c_pt.bc'
source_filename = "../drivers/gpu/host1x/syncpt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_id:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_id\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_incr_max:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_incr_max\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_incr_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_incr:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_incr\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_incr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_wait\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_request:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_request\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_put\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_read_max:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_read_max\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_read_max:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_read_min:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_read_min\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_read_min:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_read:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_read\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_get_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_get_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_get_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_get_by_id_noref:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_get_by_id_noref\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_get_by_id_noref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_get:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_get\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_get_base:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_get_base\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_get_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_base_id:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_base_id\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_base_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_host1x_syncpt_release_vblank_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22host1x_syncpt_release_vblank_reservation\22\09\09\09\09\09"
module asm "__kstrtabns_host1x_syncpt_release_vblank_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.host1x = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x %struct.reset_control_bulk_data], i32, ptr, ptr, %struct.iova_domain, i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.host1x_channel_list, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.device_dma_parameters, %struct.host1x_bo_cache }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.host1x_channel_list = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_info = type { i32, i32, i32, i32, ptr, i32, i64, i8, i8, i32, ptr, i8 }
%struct.host1x_syncpt = type { %struct.kref, i32, %struct.atomic_t, %struct.atomic_t, i32, ptr, i8, ptr, ptr, %struct.host1x_syncpt_intr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.host1x_syncpt_intr = type { %struct.spinlock, %struct.list_head, [12 x i8], %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.host1x_syncpt_base = type { i32, i8 }
%struct.host1x_syncpt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [6 x i8] c"%u-%s\00", align 1
@__kstrtab_host1x_syncpt_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_alloc to i32), ptr @__kstrtab_host1x_syncpt_alloc, ptr @__kstrtabns_host1x_syncpt_alloc }, section "___ksymtab+host1x_syncpt_alloc", align 4
@__kstrtab_host1x_syncpt_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_id = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_id to i32), ptr @__kstrtab_host1x_syncpt_id, ptr @__kstrtabns_host1x_syncpt_id }, section "___ksymtab+host1x_syncpt_id", align 4
@__kstrtab_host1x_syncpt_incr_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_incr_max = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_incr_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_incr_max to i32), ptr @__kstrtab_host1x_syncpt_incr_max, ptr @__kstrtabns_host1x_syncpt_incr_max }, section "___ksymtab+host1x_syncpt_incr_max", align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/gpu/host1x/syncpt.c\00", align 1
@__kstrtab_host1x_syncpt_incr = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_incr = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_incr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_incr to i32), ptr @__kstrtab_host1x_syncpt_incr, ptr @__kstrtabns_host1x_syncpt_incr }, section "___ksymtab+host1x_syncpt_incr", align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"%s: syncpoint id %u (%s) stuck waiting %d, timeout=%ld\0A\00", align 1
@__kstrtab_host1x_syncpt_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_wait to i32), ptr @__kstrtab_host1x_syncpt_wait, ptr @__kstrtabns_host1x_syncpt_wait }, section "___ksymtab+host1x_syncpt_wait", align 4
@host1x_syncpt_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"&host->syncpt_mutex\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reserved-nop\00", align 1
@__kstrtab_host1x_syncpt_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_request = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_request to i32), ptr @__kstrtab_host1x_syncpt_request, ptr @__kstrtabns_host1x_syncpt_request }, section "___ksymtab+host1x_syncpt_request", align 4
@__kstrtab_host1x_syncpt_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_put = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_put to i32), ptr @__kstrtab_host1x_syncpt_put, ptr @__kstrtabns_host1x_syncpt_put }, section "___ksymtab+host1x_syncpt_put", align 4
@__kstrtab_host1x_syncpt_read_max = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_read_max = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_read_max = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_read_max to i32), ptr @__kstrtab_host1x_syncpt_read_max, ptr @__kstrtabns_host1x_syncpt_read_max }, section "___ksymtab+host1x_syncpt_read_max", align 4
@__kstrtab_host1x_syncpt_read_min = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_read_min = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_read_min = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_read_min to i32), ptr @__kstrtab_host1x_syncpt_read_min, ptr @__kstrtabns_host1x_syncpt_read_min }, section "___ksymtab+host1x_syncpt_read_min", align 4
@__kstrtab_host1x_syncpt_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_read = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_read to i32), ptr @__kstrtab_host1x_syncpt_read, ptr @__kstrtabns_host1x_syncpt_read }, section "___ksymtab+host1x_syncpt_read", align 4
@__kstrtab_host1x_syncpt_get_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_get_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_get_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_get_by_id to i32), ptr @__kstrtab_host1x_syncpt_get_by_id, ptr @__kstrtabns_host1x_syncpt_get_by_id }, section "___ksymtab+host1x_syncpt_get_by_id", align 4
@__kstrtab_host1x_syncpt_get_by_id_noref = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_get_by_id_noref = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_get_by_id_noref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_get_by_id_noref to i32), ptr @__kstrtab_host1x_syncpt_get_by_id_noref, ptr @__kstrtabns_host1x_syncpt_get_by_id_noref }, section "___ksymtab+host1x_syncpt_get_by_id_noref", align 4
@__kstrtab_host1x_syncpt_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_get = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_get to i32), ptr @__kstrtab_host1x_syncpt_get, ptr @__kstrtabns_host1x_syncpt_get }, section "___ksymtab+host1x_syncpt_get", align 4
@__kstrtab_host1x_syncpt_get_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_get_base = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_get_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_get_base to i32), ptr @__kstrtab_host1x_syncpt_get_base, ptr @__kstrtabns_host1x_syncpt_get_base }, section "___ksymtab+host1x_syncpt_get_base", align 4
@__kstrtab_host1x_syncpt_base_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_base_id = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_base_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_base_id to i32), ptr @__kstrtab_host1x_syncpt_base_id, ptr @__kstrtabns_host1x_syncpt_base_id }, section "___ksymtab+host1x_syncpt_base_id", align 4
@__kstrtab_host1x_syncpt_release_vblank_reservation = external dso_local constant [0 x i8], align 1
@__kstrtabns_host1x_syncpt_release_vblank_reservation = external dso_local constant [0 x i8], align 1
@__ksymtab_host1x_syncpt_release_vblank_reservation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @host1x_syncpt_release_vblank_reservation to i32), ptr @__kstrtab_host1x_syncpt_release_vblank_reservation, ptr @__kstrtabns_host1x_syncpt_release_vblank_reservation }, section "___ksymtab+host1x_syncpt_release_vblank_reservation", align 4
@__tracepoint_host1x_syncpt_load_min = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_host1x_syncpt_alloc, ptr @__ksymtab_host1x_syncpt_base_id, ptr @__ksymtab_host1x_syncpt_get, ptr @__ksymtab_host1x_syncpt_get_base, ptr @__ksymtab_host1x_syncpt_get_by_id, ptr @__ksymtab_host1x_syncpt_get_by_id_noref, ptr @__ksymtab_host1x_syncpt_id, ptr @__ksymtab_host1x_syncpt_incr, ptr @__ksymtab_host1x_syncpt_incr_max, ptr @__ksymtab_host1x_syncpt_put, ptr @__ksymtab_host1x_syncpt_read, ptr @__ksymtab_host1x_syncpt_read_max, ptr @__ksymtab_host1x_syncpt_read_min, ptr @__ksymtab_host1x_syncpt_release_vblank_reservation, ptr @__ksymtab_host1x_syncpt_request, ptr @__ksymtab_host1x_syncpt_wait], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_syncpt_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %65, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.host1x_info, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %18, %5
  %14 = phi i32 [ %19, %18 ], [ 0, %5 ]
  %15 = phi ptr [ %20, %18 ], [ %7, %5 ]
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %14, 1
  %20 = getelementptr %struct.host1x_syncpt, ptr %15, i32 1
  %21 = icmp eq i32 %19, %11
  br i1 %21, label %63, label %13

22:                                               ; preds = %13
  %23 = and i32 %1, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.host1x_info, ptr %9, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %36, %25
  %32 = phi i32 [ %37, %36 ], [ 0, %25 ]
  %33 = getelementptr %struct.host1x_syncpt_base, ptr %27, i32 %32, i32 1
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = add nuw i32 %32, 1
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %39, label %31

39:                                               ; preds = %36, %25
  %40 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 8
  br label %61

41:                                               ; preds = %31
  %42 = getelementptr %struct.host1x_syncpt_base, ptr %27, i32 %32
  store i8 1, ptr %33, align 4
  %43 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 8
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %41, %22
  %46 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %47, ptr noundef nonnull %2) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 5
  store ptr %48, ptr %51, align 4
  %52 = trunc i32 %1 to i8
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 6
  store i8 %53, ptr %54, align 4
  store volatile i32 1, ptr %15, align 4
  br label %63

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.host1x_syncpt, ptr %15, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.host1x_syncpt_base, ptr %57, i32 0, i32 1
  store i8 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %55, %39
  %62 = phi ptr [ %40, %39 ], [ %56, %55 ], [ %56, %59 ]
  store ptr null, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %50, %41, %18, %5
  %64 = phi ptr [ %15, %50 ], [ null, %61 ], [ null, %5 ], [ null, %41 ], [ null, %18 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  br label %65

65:                                               ; preds = %63, %3
  %66 = phi ptr [ null, %3 ], [ %64, %63 ]
  ret ptr %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @host1x_syncpt_id(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_incr_max(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %1, ptr elementtype(i32) %3) #10, !srcloc !11
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_syncpt_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.host1x_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  br label %17

10:                                               ; preds = %17, %1
  %11 = phi ptr [ %4, %1 ], [ %26, %17 ]
  %12 = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  br label %30

17:                                               ; preds = %17, %8
  %18 = phi i32 [ 0, %8 ], [ %25, %17 ]
  %19 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %18
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %19, ptr noundef null) #10
  %23 = load ptr, ptr %9, align 4
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %19) #10
  %25 = add nuw i32 %18, 1
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.host1x_info, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %17, label %10

30:                                               ; preds = %30, %15
  %31 = phi i32 [ 0, %15 ], [ %36, %30 ]
  %32 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %31
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %32) #10
  %36 = add nuw i32 %31, 1
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.host1x_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %30, label %41

41:                                               ; preds = %30, %10
  %42 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @host1x_syncpt_nb_pts(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @host1x_syncpt_nb_bases(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_syncpt_save(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.host1x_info, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  br label %17

10:                                               ; preds = %35, %1
  %11 = phi ptr [ %4, %1 ], [ %37, %35 ]
  %12 = getelementptr inbounds %struct.host1x_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 15
  br label %41

17:                                               ; preds = %35, %8
  %18 = phi i32 [ 0, %8 ], [ %36, %35 ]
  %19 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %18, i32 6
  %20 = load i8, ptr %19, align 4, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %18
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %23) #10
  br label %35

28:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  %29 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %18, i32 2
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %18, i32 3
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %35, label %34, !prof !15

34:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 9, ptr noundef null) #10
  br label %35

35:                                               ; preds = %34, %28, %22
  %36 = add nuw i32 %18, 1
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.host1x_info, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %17, label %10

41:                                               ; preds = %41, %15
  %42 = phi i32 [ 0, %15 ], [ %47, %41 ]
  %43 = getelementptr %struct.host1x_syncpt, ptr %3, i32 %42
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %43) #10
  %47 = add nuw i32 %42, 1
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.host1x_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %41, label %52

52:                                               ; preds = %41, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_load(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %25 = tail call i32 @__traceiter_host1x_syncpt_load_min(ptr noundef null, i32 noundef %10, i32 noundef %8) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %26

26:                                               ; preds = %24, %13, %1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_load_wait_base(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_incr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.wait_queue_head, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %8 = getelementptr inbounds %struct.wait_queue_head, ptr %5, i32 0, i32 1
  store i32 0, ptr %5, align 4
  store ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_head, ptr %5, i32 0, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !18
  %10 = icmp eq ptr %3, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %35 = call i32 @__traceiter_host1x_syncpt_load_min(ptr noundef null, i32 noundef %20, i32 noundef %18) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %36

36:                                               ; preds = %34, %23, %11
  store i32 %18, ptr %3, align 4
  br label %37

37:                                               ; preds = %36, %4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %38 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 2
  %39 = load volatile i32, ptr %38, align 4
  %40 = sub i32 %39, %1
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %158, label %42

42:                                               ; preds = %37
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %158, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 32) #11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %158, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @host1x_intr_add_action(ptr noundef %50, ptr noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef nonnull %5, ptr noundef nonnull %46, ptr noundef nonnull %6) #10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %158

53:                                               ; preds = %48
  %54 = call i32 @llvm.umin.i32(i32 %2, i32 2147483647)
  %55 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %56 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 5
  br label %57

57:                                               ; preds = %149, %53
  %58 = phi i32 [ %54, %53 ], [ %131, %149 ]
  %59 = phi i32 [ 0, %53 ], [ %150, %149 ]
  %60 = call i32 @llvm.smin.i32(i32 %58, i32 200)
  %61 = load ptr, ptr %49, align 4
  %62 = getelementptr inbounds %struct.host1x, ptr %61, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 %65(ptr noundef %0) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %67 = load volatile i32, ptr %38, align 4
  %68 = sub i32 %67, %1
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %96, label %70

70:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !18
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #10
  br label %71

71:                                               ; preds = %91, %70
  %72 = phi i32 [ %60, %70 ], [ %92, %91 ]
  %73 = call i32 @prepare_to_wait_event(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 1) #10
  %74 = load ptr, ptr %49, align 4
  %75 = getelementptr inbounds %struct.host1x, ptr %74, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %0) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %80 = load volatile i32, ptr %38, align 4
  %81 = sub i32 %80, %1
  %82 = icmp sgt i32 %81, -1
  %83 = xor i1 %82, true
  %84 = icmp ne i32 %72, 0
  %85 = select i1 %83, i1 true, i1 %84
  %86 = select i1 %85, i32 %72, i32 1
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %82, i1 true, i1 %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %71
  %90 = icmp eq i32 %73, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = call i32 @schedule_timeout(i32 noundef %86) #10
  br label %71

93:                                               ; preds = %71
  call void @finish_wait(ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %86, %93 ], [ %73, %89 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #10
  br label %96

96:                                               ; preds = %94, %57
  %97 = phi i32 [ %60, %57 ], [ %95, %94 ]
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %100 = load volatile i32, ptr %38, align 4
  %101 = sub i32 %100, %1
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %128

103:                                              ; preds = %99, %96
  br i1 %10, label %152, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr %49, align 4
  %106 = getelementptr inbounds %struct.host1x, ptr %105, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %0) #10
  %111 = load i32, ptr %55, align 4
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %104
  %115 = tail call ptr @llvm.thread.pointer() #10
  %116 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 2
  %117 = load i32, ptr %116, align 8
  %118 = lshr i32 %117, 5
  %119 = getelementptr i32, ptr @__cpu_online_mask, i32 %118
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %117, 31
  %122 = shl nuw i32 1, %121
  %123 = and i32 %122, %120
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %114
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %126 = call i32 @__traceiter_host1x_syncpt_load_min(ptr noundef null, i32 noundef %111, i32 noundef %110) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %127

127:                                              ; preds = %125, %114, %104
  store i32 %110, ptr %3, align 4
  br label %152

128:                                              ; preds = %99
  %129 = icmp slt i32 %97, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %128
  %131 = sub i32 %58, %60
  %132 = icmp ne i32 %131, 0
  %133 = icmp slt i32 %59, 16
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load ptr, ptr %49, align 4
  %137 = getelementptr inbounds %struct.host1x, ptr %136, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = tail call ptr @llvm.thread.pointer() #10
  %140 = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 85
  %141 = load i32, ptr %55, align 4
  %142 = load ptr, ptr %56, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %138, ptr noundef nonnull @.str.2, ptr noundef %140, i32 noundef %141, ptr noundef %142, i32 noundef %1, i32 noundef %131) #12
  %143 = load ptr, ptr %49, align 4
  call void @host1x_debug_dump_syncpts(ptr noundef %143) #10
  %144 = icmp eq i32 %59, 15
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load ptr, ptr %49, align 4
  call void @host1x_debug_dump(ptr noundef %146) #10
  br label %147

147:                                              ; preds = %145, %135
  %148 = add nsw i32 %59, 1
  br label %149

149:                                              ; preds = %147, %130
  %150 = phi i32 [ %148, %147 ], [ %59, %130 ]
  %151 = icmp eq i32 %131, 0
  br i1 %151, label %152, label %57

152:                                              ; preds = %149, %128, %127, %103
  %153 = phi i32 [ 0, %103 ], [ 0, %127 ], [ -11, %149 ], [ %97, %128 ]
  %154 = load ptr, ptr %49, align 4
  %155 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = load ptr, ptr %6, align 4
  call void @host1x_intr_put_ref(ptr noundef %154, i32 noundef %156, ptr noundef %157, i1 noundef zeroext true) #10
  br label %158

158:                                              ; preds = %152, %48, %44, %42, %37
  %159 = phi i32 [ 0, %37 ], [ %51, %48 ], [ %153, %152 ], [ -11, %42 ], [ -12, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret i32 %159
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @host1x_syncpt_is_expired(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  %3 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 2
  %4 = load volatile i32, ptr %3, align 4
  %5 = sub i32 %4, %1
  %6 = icmp sgt i32 %5, -1
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_intr_add_action(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_dump_syncpts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_debug_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_intr_put_ref(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.host1x_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 80) #10
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %92, label %8, !prof !20

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = extractvalue { i32, i1 } %6, 0
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %10, i32 noundef 3520) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.host1x_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 8) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %92, label %19, !prof !20

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 4
  %21 = extractvalue { i32, i1 } %17, 0
  %22 = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %21, i32 noundef 3520) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %92, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.host1x_info, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %33, %24
  %30 = getelementptr inbounds %struct.host1x_info, ptr %25, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %40

33:                                               ; preds = %33, %24
  %34 = phi i32 [ %37, %33 ], [ 0, %24 ]
  %35 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %34, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr %struct.host1x_syncpt, ptr %11, i32 %34, i32 7
  store ptr %0, ptr %36, align 4
  %37 = add nuw i32 %34, 1
  %38 = load i32, ptr %26, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %33, label %29

40:                                               ; preds = %40, %29
  %41 = phi i32 [ %43, %40 ], [ 0, %29 ]
  %42 = getelementptr %struct.host1x_syncpt_base, ptr %22, i32 %41
  store i32 %41, ptr %42, align 4
  %43 = add nuw i32 %41, 1
  %44 = load i32, ptr %30, align 8
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %40, label %46

46:                                               ; preds = %40, %29
  %47 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @host1x_syncpt_init.__key) #10
  %48 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  store ptr %11, ptr %48, align 4
  %49 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 4
  store ptr %22, ptr %49, align 4
  tail call void @mutex_lock(ptr noundef %47) #10
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.host1x_info, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %59, %46
  %55 = phi i32 [ %60, %59 ], [ 0, %46 ]
  %56 = phi ptr [ %61, %59 ], [ %11, %46 ]
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = add nuw i32 %55, 1
  %61 = getelementptr %struct.host1x_syncpt, ptr %56, i32 1
  %62 = icmp eq i32 %60, %52
  br i1 %62, label %75, label %54

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.host1x_syncpt, ptr %56, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %65, ptr noundef nonnull @.str.4) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.host1x_syncpt, ptr %56, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.host1x_syncpt_base, ptr %70, i32 0, i32 1
  store i8 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %68
  store ptr null, ptr %69, align 4
  br label %75

75:                                               ; preds = %74, %59, %46
  tail call void @mutex_unlock(ptr noundef %47) #10
  %76 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 21
  store ptr null, ptr %76, align 4
  br label %92

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.host1x_syncpt, ptr %56, i32 0, i32 5
  store ptr %66, ptr %78, align 4
  %79 = getelementptr inbounds %struct.host1x_syncpt, ptr %56, i32 0, i32 6
  store i8 0, ptr %79, align 4
  store volatile i32 1, ptr %56, align 4
  tail call void @mutex_unlock(ptr noundef %47) #10
  %80 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 21
  store ptr %56, ptr %80, align 4
  %81 = icmp eq ptr %56, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %0, align 4
  %84 = getelementptr inbounds %struct.host1x_info, ptr %83, i32 0, i32 11
  %85 = load i8, ptr %84, align 4, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %48, align 4
  %89 = getelementptr %struct.host1x_syncpt, ptr %88, i32 26
  store volatile i32 1, ptr %89, align 4
  %90 = load ptr, ptr %48, align 4
  %91 = getelementptr %struct.host1x_syncpt, ptr %90, i32 27
  store volatile i32 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %87, %82, %77, %75, %19, %13, %8, %1
  %93 = phi i32 [ -12, %8 ], [ -12, %19 ], [ -12, %77 ], [ 0, %87 ], [ 0, %82 ], [ -12, %75 ], [ -12, %1 ], [ -12, %13 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_syncpt_request(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = tail call ptr @host1x_syncpt_alloc(ptr noundef %8, i32 noundef %1, ptr noundef %17)
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_syncpt_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !22
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %51, label %9, !prof !15

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %51

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %11 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host1x, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef nonnull %0) #10
  %19 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %10
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %35 = tail call i32 @__traceiter_host1x_syncpt_load_min(ptr noundef null, i32 noundef %20, i32 noundef %18) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %36

36:                                               ; preds = %34, %23, %10
  store volatile i32 %18, ptr %11, align 4
  %37 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 10
  store i8 0, ptr %37, align 4
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr inbounds %struct.host1x, ptr %38, i32 0, i32 22
  tail call void @mutex_lock(ptr noundef %39) #10
  %40 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.host1x_syncpt_base, ptr %41, i32 0, i32 1
  store i8 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void @kfree(ptr noundef %47) #10
  store ptr null, ptr %40, align 4
  store ptr null, ptr %46, align 4
  %48 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 6
  store i8 0, ptr %48, align 4
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr inbounds %struct.host1x, ptr %49, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %50) #10
  br label %51

51:                                               ; preds = %45, %9, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_syncpt_deinit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %14, %9 ], [ 0, %6 ]
  %11 = phi ptr [ %15, %9 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.host1x_syncpt, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = add nuw i32 %10, 1
  %15 = getelementptr %struct.host1x_syncpt, ptr %11, i32 1
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.host1x_info, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_read_max(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !24
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 3
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_read_min(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !25
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @host1x_syncpt_read(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_syncpt_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_host1x_syncpt_load_min, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = tail call ptr @llvm.thread.pointer() #10
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %25 = tail call i32 @__traceiter_host1x_syncpt_load_min(ptr noundef null, i32 noundef %10, i32 noundef %8) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %26

26:                                               ; preds = %24, %13, %1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @host1x_syncpt_nb_mlocks(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.host1x_info, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_syncpt_get_by_id(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.host1x_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.host1x_syncpt, ptr %9, i32 %1
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %7
  %14 = phi i32 [ %21, %23 ], [ %11, %7 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #10, !srcloc !10
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #10, !srcloc !26
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !15

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %7
  %26 = phi i32 [ 0, %7 ], [ %14, %20 ], [ 0, %23 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !15

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr %struct.host1x_syncpt, ptr %34, i32 %1
  br label %36

36:                                               ; preds = %33, %31, %2
  %37 = phi ptr [ %35, %33 ], [ null, %2 ], [ null, %31 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @host1x_syncpt_get_by_id_noref(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.host1x_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.host1x, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.host1x_syncpt, ptr %9, i32 %1
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %10, %7 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @host1x_syncpt_get(ptr noundef returned %0) #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !27
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !20

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #10
  br label %11

11:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @host1x_syncpt_get_base(ptr noundef readonly %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.host1x_syncpt, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @host1x_syncpt_base_id(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @host1x_syncpt_release_vblank_reservation(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.host1x_info, ptr %9, i32 0, i32 11
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.host1x, ptr %8, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.host1x_syncpt, ptr %15, i32 %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #10, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #10, !srcloc !22
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %24, label %22, !prof !15

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #10
  br label %24

23:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  br label %24

24:                                               ; preds = %23, %22, %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_host1x_syncpt_load_min(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2148152468}
!10 = !{i64 553236, i64 2148043207, i64 2148043233, i64 2148043280, i64 2148043302, i64 2148043330, i64 2148043350}
!11 = !{i64 2148055306, i64 2148055338, i64 2148055367, i64 2148055401, i64 2148055432, i64 2148055455}
!12 = !{i64 2148152671}
!13 = !{i64 2153419785}
!14 = !{i64 2151845228}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151483055}
!17 = !{i64 2151483225}
!18 = !{!"auto-init"}
!19 = !{i64 2153432277}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2148156302}
!22 = !{i64 2148058437, i64 2148058469, i64 2148058498, i64 2148058532, i64 2148058563, i64 2148058586}
!23 = !{i64 2149005749}
!24 = !{i64 2153436723}
!25 = !{i64 2153438217}
!26 = !{i64 539299, i64 539323, i64 539344, i64 539361, i64 539378}
!27 = !{i64 2148056080, i64 2148056112, i64 2148056141, i64 2148056175, i64 2148056206, i64 2148056229}
