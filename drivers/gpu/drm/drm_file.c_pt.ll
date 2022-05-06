; ModuleID = '/llk/IR/drivers/gpu/drm/drm_file.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_open\22\09\09\09\09\09"
module asm "__kstrtabns_drm_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_release\22\09\09\09\09\09"
module asm "__kstrtabns_drm_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_release_noglobal:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_release_noglobal\22\09\09\09\09\09"
module asm "__kstrtabns_drm_release_noglobal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_read:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_read\22\09\09\09\09\09"
module asm "__kstrtabns_drm_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_poll\22\09\09\09\09\09"
module asm "__kstrtabns_drm_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_event_reserve_init_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_event_reserve_init_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_event_reserve_init_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_event_reserve_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_event_reserve_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_event_reserve_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_event_cancel_free:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_event_cancel_free\22\09\09\09\09\09"
module asm "__kstrtabns_drm_event_cancel_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_send_event_timestamp_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_send_event_timestamp_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_send_event_timestamp_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_send_event_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_send_event_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_send_event_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_send_event\22\09\09\09\09\09"
module asm "__kstrtabns_drm_send_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_get_unmapped_area\22\09\09\09\09\09"
module asm "__kstrtabns_drm_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.71, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.69 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_event = type { i32, i32 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.74, i64, i64, i32, %struct.kref, i32 }
%union.anon.74 = type { i64 }
%struct.anon.8 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@drm_global_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @drm_global_mutex, i64 12), ptr getelementptr (i8, ptr @drm_global_mutex, i64 12) } }, align 4
@drm_file_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&file->fbs_lock\00", align 1
@drm_file_alloc.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"&file->event_wait\00", align 1
@drm_file_alloc.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"&file->event_read_lock\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"comm=\22%s\22, pid=%d, dev=0x%lx, open_count=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"drivers/gpu/drm/drm_file.c\00", align 1
@__kstrtab_drm_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_open = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_open to i32), ptr @__kstrtab_drm_open, ptr @__kstrtabns_drm_open }, section "___ksymtab+drm_open", align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"driver lastclose completed\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"open_count = %d\0A\00", align 1
@__kstrtab_drm_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_release = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_release to i32), ptr @__kstrtab_drm_release, ptr @__kstrtabns_drm_release }, section "___ksymtab+drm_release", align 4
@__kstrtab_drm_release_noglobal = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_release_noglobal = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_release_noglobal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_release_noglobal to i32), ptr @__kstrtab_drm_release_noglobal, ptr @__kstrtabns_drm_release_noglobal }, section "___ksymtab+drm_release_noglobal", align 4
@__kstrtab_drm_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_read = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_read to i32), ptr @__kstrtab_drm_read, ptr @__kstrtabns_drm_read }, section "___ksymtab+drm_read", align 4
@__kstrtab_drm_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_poll to i32), ptr @__kstrtab_drm_poll, ptr @__kstrtabns_drm_poll }, section "___ksymtab+drm_poll", align 4
@__kstrtab_drm_event_reserve_init_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_event_reserve_init_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_event_reserve_init_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_event_reserve_init_locked to i32), ptr @__kstrtab_drm_event_reserve_init_locked, ptr @__kstrtabns_drm_event_reserve_init_locked }, section "___ksymtab+drm_event_reserve_init_locked", align 4
@__kstrtab_drm_event_reserve_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_event_reserve_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_event_reserve_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_event_reserve_init to i32), ptr @__kstrtab_drm_event_reserve_init, ptr @__kstrtabns_drm_event_reserve_init }, section "___ksymtab+drm_event_reserve_init", align 4
@__kstrtab_drm_event_cancel_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_event_cancel_free = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_event_cancel_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_event_cancel_free to i32), ptr @__kstrtab_drm_event_cancel_free, ptr @__kstrtabns_drm_event_cancel_free }, section "___ksymtab+drm_event_cancel_free", align 4
@__kstrtab_drm_send_event_timestamp_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_send_event_timestamp_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_send_event_timestamp_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_send_event_timestamp_locked to i32), ptr @__kstrtab_drm_send_event_timestamp_locked, ptr @__kstrtabns_drm_send_event_timestamp_locked }, section "___ksymtab+drm_send_event_timestamp_locked", align 4
@__kstrtab_drm_send_event_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_send_event_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_send_event_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_send_event_locked to i32), ptr @__kstrtab_drm_send_event_locked, ptr @__kstrtabns_drm_send_event_locked }, section "___ksymtab+drm_send_event_locked", align 4
@__kstrtab_drm_send_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_send_event = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_send_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_send_event to i32), ptr @__kstrtab_drm_send_event, ptr @__kstrtabns_drm_send_event }, section "___ksymtab+drm_send_event", align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"drm\00", align 1
@__kstrtab_drm_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_get_unmapped_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_get_unmapped_area to i32), ptr @__kstrtab_drm_get_unmapped_area, ptr @__kstrtabns_drm_get_unmapped_area }, section "___ksymtab_gpl+drm_get_unmapped_area", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"comm=\22%s\22, pid=%d, minor=%d\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_drm_event_cancel_free, ptr @__ksymtab_drm_event_reserve_init, ptr @__ksymtab_drm_event_reserve_init_locked, ptr @__ksymtab_drm_get_unmapped_area, ptr @__ksymtab_drm_open, ptr @__ksymtab_drm_poll, ptr @__ksymtab_drm_read, ptr @__ksymtab_drm_release, ptr @__ksymtab_drm_release_noglobal, ptr @__ksymtab_drm_send_event, ptr @__ksymtab_drm_send_event_locked, ptr @__ksymtab_drm_send_event_timestamp_locked], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @drm_dev_needs_global_mutex(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %5, 67108864
  %9 = and i32 %8, %7
  %10 = icmp eq i32 %9, 67108864
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %20, null
  br label %22

22:                                               ; preds = %18, %14, %11, %1
  %23 = phi i1 [ true, %1 ], [ true, %14 ], [ true, %11 ], [ %21, %18 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_file_alloc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 212) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %95, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 62
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %10) #9, !srcloc !8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #9, !srcloc !9
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !10

16:                                               ; preds = %12
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !11

20:                                               ; preds = %16, %12
  %21 = phi i32 [ 2, %12 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef %21) #9
  br label %22

22:                                               ; preds = %20, %16, %7
  %23 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 10
  store ptr %10, ptr %23, align 8
  %24 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 13
  store ptr %0, ptr %24, align 8
  %25 = tail call zeroext i1 @capable(i32 noundef 21) #9
  %26 = zext i1 %25 to i8
  store i8 %26, ptr %5, align 8
  %27 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 12
  store volatile ptr %27, ptr %27, align 8
  %28 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 12, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 20
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 20, i32 1
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str, ptr noundef nonnull @drm_file_alloc.__key) #9
  %32 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 22
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 22, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 24
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 24, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 25
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 25, i32 1
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 23
  tail call void @__init_waitqueue_head(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull @drm_file_alloc.__key.1) #9
  %39 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 26
  store i32 4096, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 9
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.4, ptr noundef nonnull @drm_file_alloc.__key.3) #9
  %42 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_driver, ptr %43, i32 0, i32 24
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %45, 1
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %22
  tail call void @drm_gem_open(ptr noundef %3, ptr noundef nonnull %5) #9
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr inbounds %struct.drm_driver, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %53, align 4
  %55 = load i32, ptr %46, align 4
  br label %56

56:                                               ; preds = %51, %22
  %57 = phi i32 [ %55, %51 ], [ %47, %22 ]
  %58 = phi i32 [ %54, %51 ], [ %45, %22 ]
  %59 = and i32 %58, 32
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 32
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void @drm_syncobj_open(ptr noundef nonnull %5) #9
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 28
  tail call void @drm_prime_init_file_private(ptr noundef %64) #9
  %65 = load ptr, ptr %42, align 4
  %66 = getelementptr inbounds %struct.drm_driver, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %95, label %69

69:                                               ; preds = %63
  %70 = tail call i32 %67(ptr noundef %3, ptr noundef nonnull %5) #9
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  tail call void @drm_prime_destroy_file_private(ptr noundef %64) #9
  %73 = load ptr, ptr %42, align 4
  %74 = getelementptr inbounds %struct.drm_driver, ptr %73, i32 0, i32 24
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %46, align 4
  %77 = and i32 %75, 32
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  tail call void @drm_syncobj_release(ptr noundef nonnull %5) #9
  %81 = load ptr, ptr %42, align 4
  %82 = getelementptr inbounds %struct.drm_driver, ptr %81, i32 0, i32 24
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %46, align 4
  br label %85

85:                                               ; preds = %80, %72
  %86 = phi i32 [ %84, %80 ], [ %76, %72 ]
  %87 = phi i32 [ %83, %80 ], [ %75, %72 ]
  %88 = and i32 %87, 1
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  tail call void @drm_gem_release(ptr noundef %3, ptr noundef nonnull %5) #9
  br label %92

92:                                               ; preds = %91, %85
  %93 = load ptr, ptr %23, align 8
  tail call void @put_pid(ptr noundef %93) #9
  tail call void @kfree(ptr noundef nonnull %5) #9
  %94 = inttoptr i32 %70 to ptr
  br label %95

95:                                               ; preds = %92, %69, %63, %1
  %96 = phi ptr [ %94, %92 ], [ %5, %69 ], [ %5, %63 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_init_file_private(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_destroy_file_private(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_file_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %141, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 85
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 12
  %17 = and i32 %16, 65280
  %18 = and i32 %15, 65535
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 16
  %21 = load volatile i32, ptr %20, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef %11, i32 noundef %19, i32 noundef %21) #9
  %22 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_driver, ptr %23, i32 0, i32 24
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %25, 67108864
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 67108864
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.drm_driver, ptr %23, i32 0, i32 29
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  tail call void %33(ptr noundef %7, ptr noundef nonnull %0) #9
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr inbounds %struct.drm_driver, ptr %36, i32 0, i32 24
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %26, align 4
  %40 = and i32 %38, 67108864
  br label %41

41:                                               ; preds = %35, %31, %3
  %42 = phi i32 [ %40, %35 ], [ %28, %31 ], [ %28, %3 ]
  %43 = phi i32 [ %39, %35 ], [ %27, %31 ], [ %27, %3 ]
  %44 = phi i32 [ %38, %35 ], [ %25, %31 ], [ %25, %3 ]
  %45 = and i32 %42, %43
  %46 = icmp eq i32 %45, 67108864
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 18
  %49 = load ptr, ptr %48, align 4
  tail call void @drm_legacy_lock_release(ptr noundef %7, ptr noundef %49) #9
  %50 = load ptr, ptr %22, align 4
  %51 = getelementptr inbounds %struct.drm_driver, ptr %50, i32 0, i32 24
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %26, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = phi i32 [ %53, %47 ], [ %43, %41 ]
  %56 = phi i32 [ %52, %47 ], [ %44, %41 ]
  %57 = and i32 %56, 536870912
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 536870912
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @drm_legacy_reclaim_buffers(ptr noundef %7, ptr noundef nonnull %0) #9
  br label %61

61:                                               ; preds = %60, %54
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds %struct.drm_minor, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 28
  %66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %65) #9
  %67 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 24
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %78, label %70

70:                                               ; preds = %70, %61
  %71 = phi ptr [ %72, %70 ], [ %68, %61 ]
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %72, ptr %74, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  %76 = getelementptr i8, ptr %71, i32 -12
  store ptr null, ptr %76, align 4
  %77 = icmp eq ptr %72, %67
  br i1 %77, label %78, label %70

78:                                               ; preds = %70, %61
  %79 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 25
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %79
  br i1 %81, label %90, label %82

82:                                               ; preds = %82, %78
  %83 = phi ptr [ %85, %82 ], [ %80, %78 ]
  %84 = getelementptr i8, ptr %83, i32 -20
  %85 = load ptr, ptr %83, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  store volatile ptr %85, ptr %87, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %83, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %86, align 4
  tail call void @kfree(ptr noundef %84) #9
  %89 = icmp eq ptr %85, %79
  br i1 %89, label %90, label %82

90:                                               ; preds = %82, %78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %65, i32 noundef %66) #9
  %91 = load ptr, ptr %22, align 4
  %92 = getelementptr inbounds %struct.drm_driver, ptr %91, i32 0, i32 24
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr %26, align 4
  %95 = and i32 %93, 2
  %96 = and i32 %95, %94
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  tail call void @drm_fb_release(ptr noundef nonnull %0) #9
  tail call void @drm_property_destroy_user_blobs(ptr noundef %7, ptr noundef nonnull %0) #9
  %99 = load ptr, ptr %22, align 4
  %100 = getelementptr inbounds %struct.drm_driver, ptr %99, i32 0, i32 24
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %26, align 4
  br label %103

103:                                              ; preds = %98, %90
  %104 = phi i32 [ %102, %98 ], [ %94, %90 ]
  %105 = phi i32 [ %101, %98 ], [ %93, %90 ]
  %106 = and i32 %105, 32
  %107 = and i32 %106, %104
  %108 = icmp eq i32 %107, 32
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  tail call void @drm_syncobj_release(ptr noundef nonnull %0) #9
  %110 = load ptr, ptr %22, align 4
  %111 = getelementptr inbounds %struct.drm_driver, ptr %110, i32 0, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = load i32, ptr %26, align 4
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i32 [ %113, %109 ], [ %104, %103 ]
  %116 = phi i32 [ %112, %109 ], [ %105, %103 ]
  %117 = and i32 %116, 1
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  tail call void @drm_gem_release(ptr noundef %7, ptr noundef nonnull %0) #9
  br label %121

121:                                              ; preds = %120, %114
  tail call void @drm_legacy_ctxbitmap_flush(ptr noundef %7, ptr noundef nonnull %0) #9
  %122 = load ptr, ptr %4, align 4
  %123 = getelementptr inbounds %struct.drm_minor, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  tail call void @drm_master_release(ptr noundef nonnull %0) #9
  br label %127

127:                                              ; preds = %126, %121
  %128 = load ptr, ptr %22, align 4
  %129 = getelementptr inbounds %struct.drm_driver, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void %130(ptr noundef %7, ptr noundef nonnull %0) #9
  br label %133

133:                                              ; preds = %132, %127
  %134 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 28
  tail call void @drm_prime_destroy_file_private(ptr noundef %134) #9
  %135 = load volatile ptr, ptr %79, align 4
  %136 = icmp eq ptr %135, %79
  br i1 %136, label %138, label %137, !prof !11

137:                                              ; preds = %133
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 293, i32 noundef 9, ptr noundef null) #9
  br label %138

138:                                              ; preds = %137, %133
  %139 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 10
  %140 = load ptr, ptr %139, align 4
  tail call void @put_pid(ptr noundef %140) #9
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %141

141:                                              ; preds = %138, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_lock_release(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_reclaim_buffers(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_destroy_user_blobs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ctxbitmap_flush(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_open(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1048575
  %6 = tail call ptr @drm_minor_acquire(i32 noundef %5) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i32
  br label %142

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 24
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %16, 67108864
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 67108864
  br i1 %21, label %33, label %22

22:                                               ; preds = %10
  %23 = load ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.drm_driver, ptr %14, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %25, %22, %10
  tail call void @mutex_lock(ptr noundef nonnull @drm_global_mutex) #9
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #9, !srcloc !9
  %37 = extractvalue { i32, i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 9
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  store ptr %42, ptr %43, align 8
  %44 = load ptr, ptr %11, align 4
  %45 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 35
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %119 [
    i32 0, label %52
    i32 3, label %52
  ]

52:                                               ; preds = %49, %49
  %53 = tail call ptr @llvm.thread.pointer() #9
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 85
  %55 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 52
  %56 = load i32, ptr %55, align 8
  %57 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef %54, i32 noundef %56, i32 noundef %57) #9
  %58 = tail call ptr @drm_file_alloc(ptr noundef %6) #9
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %82, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.drm_file, ptr %58, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_minor, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = tail call i32 @drm_master_open(ptr noundef %58) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @drm_file_free(ptr noundef %58) #9
  br label %119

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %58, ptr %71, align 8
  %72 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %73 = load i32, ptr %72, align 8
  %74 = or i32 %73, 8192
  store i32 %74, ptr %72, align 8
  %75 = getelementptr inbounds %struct.drm_file, ptr %58, i32 0, i32 18
  store ptr %1, ptr %75, align 4
  %76 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.drm_file, ptr %58, i32 0, i32 12
  %78 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 18
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %79, ptr %77, align 4
  %81 = getelementptr inbounds %struct.drm_file, ptr %58, i32 0, i32 12, i32 1
  store ptr %78, ptr %81, align 4
  store volatile ptr %77, ptr %78, align 4
  tail call void @mutex_unlock(ptr noundef %76) #9
  br i1 %38, label %84, label %99

82:                                               ; preds = %52
  %83 = ptrtoint ptr %58 to i32
  br label %119

84:                                               ; preds = %70
  %85 = tail call i32 @drm_legacy_setup(ptr noundef %12) #9
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %71, align 8
  %89 = getelementptr inbounds %struct.drm_file, ptr %88, i32 0, i32 13
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.drm_minor, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.drm_device, ptr %92, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %93) #9
  %94 = getelementptr inbounds %struct.drm_file, ptr %88, i32 0, i32 12
  %95 = getelementptr inbounds %struct.drm_file, ptr %88, i32 0, i32 12, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %94, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %96, ptr %98, align 4
  store volatile ptr %97, ptr %96, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %94, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %95, align 4
  tail call void @mutex_unlock(ptr noundef %93) #9
  tail call void @drm_file_free(ptr noundef %88) #9
  br label %119

99:                                               ; preds = %84, %70
  %100 = load ptr, ptr %13, align 4
  %101 = getelementptr inbounds %struct.drm_driver, ptr %100, i32 0, i32 24
  %102 = load i32, ptr %101, align 4
  %103 = load i32, ptr %17, align 4
  %104 = and i32 %102, 67108864
  %105 = and i32 %104, %103
  %106 = icmp eq i32 %105, 67108864
  br i1 %106, label %118, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %100, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.drm_driver, ptr %100, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.drm_driver, ptr %100, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %142, label %118

118:                                              ; preds = %114, %110, %107, %99
  tail call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #9
  br label %142

119:                                              ; preds = %87, %82, %69, %49, %34
  %120 = phi i32 [ %83, %82 ], [ %85, %87 ], [ -22, %49 ], [ -16, %34 ], [ %67, %69 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #9, !srcloc !8
  %121 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #9, !srcloc !14
  %122 = load ptr, ptr %13, align 4
  %123 = getelementptr inbounds %struct.drm_driver, ptr %122, i32 0, i32 24
  %124 = load i32, ptr %123, align 4
  %125 = load i32, ptr %17, align 4
  %126 = and i32 %124, 67108864
  %127 = and i32 %126, %125
  %128 = icmp eq i32 %127, 67108864
  br i1 %128, label %140, label %129

129:                                              ; preds = %119
  %130 = load ptr, ptr %122, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.drm_driver, ptr %122, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.drm_driver, ptr %122, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %136, %132, %129, %119
  tail call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #9
  br label %141

141:                                              ; preds = %140, %136
  tail call void @drm_minor_release(ptr noundef %6) #9
  br label %142

142:                                              ; preds = %141, %118, %114, %8
  %143 = phi i32 [ %9, %8 ], [ %120, %141 ], [ 0, %118 ], [ 0, %114 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_minor_acquire(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_minor_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_lastclose(ptr noundef %0) local_unnamed_addr #1 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #9
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, 67108864
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 67108864
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @drm_legacy_dev_reinit(ptr noundef %0) #9
  br label %18

18:                                               ; preds = %17, %8
  tail call void @drm_client_dev_restore(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_dev_reinit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_client_dev_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_driver, ptr %10, i32 0, i32 24
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %12, 67108864
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 67108864
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load ptr, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.drm_driver, ptr %10, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_driver, ptr %10, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %21, %18, %2
  tail call void @mutex_lock(ptr noundef nonnull @drm_global_mutex) #9
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 16
  %32 = load volatile i32, ptr %31, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %32) #9
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.drm_file, ptr %33, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_minor, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %38) #9
  %39 = getelementptr inbounds %struct.drm_file, ptr %33, i32 0, i32 12
  %40 = getelementptr inbounds %struct.drm_file, ptr %33, i32 0, i32 12, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %38) #9
  tail call void @drm_file_free(ptr noundef %33) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #9, !srcloc !8
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #9, !srcloc !16
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %30
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #9
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef %8) #9
  br label %53

53:                                               ; preds = %52, %47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr inbounds %struct.drm_driver, ptr %54, i32 0, i32 24
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %13, align 4
  %58 = and i32 %56, 67108864
  %59 = and i32 %58, %57
  %60 = icmp eq i32 %59, 67108864
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  tail call void @drm_legacy_dev_reinit(ptr noundef %8) #9
  br label %62

62:                                               ; preds = %61, %53
  tail call void @drm_client_dev_restore(ptr noundef %8) #9
  br label %63

63:                                               ; preds = %62, %30
  %64 = load ptr, ptr %9, align 4
  %65 = getelementptr inbounds %struct.drm_driver, ptr %64, i32 0, i32 24
  %66 = load i32, ptr %65, align 4
  %67 = load i32, ptr %13, align 4
  %68 = and i32 %66, 67108864
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, 67108864
  br i1 %70, label %82, label %71

71:                                               ; preds = %63
  %72 = load ptr, ptr %64, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.drm_driver, ptr %64, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.drm_driver, ptr %64, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78, %74, %71, %63
  tail call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #9
  br label %83

83:                                               ; preds = %82, %78
  tail call void @drm_minor_release(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_release_noglobal(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 12
  %11 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 12, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %9) #9
  tail call void @drm_file_free(ptr noundef %4) #9
  %15 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 16
  %16 = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef %15, ptr noundef nonnull @drm_global_mutex) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #9
  %19 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.drm_driver, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  tail call void %22(ptr noundef %8) #9
  br label %25

25:                                               ; preds = %24, %18
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.drm_driver, ptr %26, i32 0, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %28, 67108864
  %32 = and i32 %31, %30
  %33 = icmp eq i32 %32, 67108864
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  tail call void @drm_legacy_dev_reinit(ptr noundef %8) #9
  br label %35

35:                                               ; preds = %34, %25
  tail call void @drm_client_dev_restore(ptr noundef %8) #9
  tail call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #9
  br label %36

36:                                               ; preds = %35, %2
  tail call void @drm_minor_release(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) #1 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 27
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %116

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  %17 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 25
  %18 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 26
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %20 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 23
  br label %21

21:                                               ; preds = %68, %15
  %22 = phi i32 [ 0, %15 ], [ %69, %68 ]
  call void @_raw_spin_lock_irq(ptr noundef %16) #9
  %23 = load volatile ptr, ptr %17, align 4
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -20
  %27 = getelementptr i8, ptr %23, i32 -12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_event, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr %18, align 4
  %32 = add i32 %31, %30
  store i32 %32, ptr %18, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  br label %37

37:                                               ; preds = %25, %21
  %38 = phi ptr [ null, %21 ], [ %26, %25 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %39 = load i16, ptr %16, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %41 = icmp eq ptr %38, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = icmp eq i32 %22, 0
  br i1 %43, label %44, label %114

44:                                               ; preds = %42
  %45 = load i32, ptr %19, align 4
  %46 = and i32 %45, 2048
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %44
  call void @mutex_unlock(ptr noundef %12) #9
  %49 = load volatile ptr, ptr %17, align 4
  %50 = icmp eq ptr %49, %17
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !23
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #9
  %52 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 1) #9
  %53 = load volatile ptr, ptr %17, align 4
  %54 = icmp eq ptr %53, %17
  br i1 %54, label %55, label %62

55:                                               ; preds = %58, %51
  %56 = phi i32 [ %59, %58 ], [ %52, %51 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  call void @schedule() #9
  %59 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 1) #9
  %60 = load volatile ptr, ptr %17, align 4
  %61 = icmp eq ptr %60, %17
  br i1 %61, label %55, label %62

62:                                               ; preds = %58, %51
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  br label %65

63:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  %64 = icmp sgt i32 %56, -1
  br i1 %64, label %65, label %116

65:                                               ; preds = %63, %62, %48
  %66 = call i32 @mutex_lock_interruptible(ptr noundef %12) #9
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %116

68:                                               ; preds = %102, %65
  %69 = phi i32 [ 0, %65 ], [ %103, %102 ]
  br label %21

70:                                               ; preds = %37
  %71 = getelementptr inbounds %struct.drm_pending_event, ptr %38, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_event, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 %2, %22
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %104, label %77

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %1, i32 %22
  %79 = icmp slt i32 %74, 0
  %80 = load i1, ptr @check_copy_size.__already_done, align 1
  %81 = xor i1 %80, true
  %82 = select i1 %79, i1 %81, i1 false
  br i1 %82, label %83, label %84, !prof !10

83:                                               ; preds = %77
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %84

84:                                               ; preds = %83, %77
  br i1 %79, label %99, label %85, !prof !10

85:                                               ; preds = %84
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %78, i32 %74, i32 -1090519040) #10, !srcloc !24
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = tail call ptr @llvm.thread.pointer() #9
  %91 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 3
  %92 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %91) #11, !srcloc !25
  %93 = and i32 %92, -13
  %94 = or i32 %93, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #9, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !27
  %95 = call i32 @arm_copy_to_user(ptr noundef %78, ptr noundef %72, i32 noundef %74) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !26
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !27
  br label %96

96:                                               ; preds = %89, %85
  %97 = phi i32 [ %95, %89 ], [ %74, %85 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %84
  %100 = icmp eq i32 %22, 0
  %101 = select i1 %100, i32 -14, i32 %22
  br label %104

102:                                              ; preds = %96
  %103 = add i32 %74, %22
  call void @kfree(ptr noundef nonnull %38) #9
  br label %68

104:                                              ; preds = %99, %70
  %105 = phi i32 [ %101, %99 ], [ %22, %70 ]
  call void @_raw_spin_lock_irq(ptr noundef %16) #9
  %106 = load i32, ptr %18, align 4
  %107 = sub i32 %106, %74
  store i32 %107, ptr %18, align 4
  %108 = getelementptr inbounds %struct.drm_pending_event, ptr %38, i32 0, i32 5
  %109 = load ptr, ptr %17, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %108, ptr %110, align 4
  store ptr %109, ptr %108, align 4
  %111 = getelementptr inbounds %struct.drm_pending_event, ptr %38, i32 0, i32 5, i32 1
  store ptr %17, ptr %111, align 4
  store volatile ptr %108, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %112 = load i16, ptr %16, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %16, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  call void @__wake_up(ptr noundef %20, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %114

114:                                              ; preds = %104, %44, %42
  %115 = phi i32 [ %105, %104 ], [ %22, %42 ], [ -11, %44 ]
  call void @mutex_unlock(ptr noundef %12) #9
  br label %116

116:                                              ; preds = %114, %65, %63, %4
  %117 = phi i32 [ %115, %114 ], [ %13, %4 ], [ %56, %63 ], [ %66, %65 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 23
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #9
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.drm_file, ptr %4, i32 0, i32 25
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  %17 = select i1 %16, i32 0, i32 65
  ret i32 %17
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_event_reserve_init_locked(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_event, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = sub i32 %6, %8
  store i32 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 2
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 6
  %14 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  store ptr %15, ptr %13, align 4
  %17 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 6, i32 1
  store ptr %14, ptr %17, align 4
  store volatile ptr %13, ptr %14, align 4
  %18 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 4
  store ptr %1, ptr %18, align 4
  br label %19

19:                                               ; preds = %10, %4
  %20 = phi i32 [ 0, %10 ], [ -12, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_event_reserve_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 28
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 26
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_event, ptr %3, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = sub i32 %8, %10
  store i32 %13, ptr %7, align 4
  %14 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 2
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 6
  %16 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  store ptr %17, ptr %15, align 4
  %19 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 6, i32 1
  store ptr %16, ptr %19, align 4
  store volatile ptr %15, ptr %16, align 4
  %20 = getelementptr inbounds %struct.drm_pending_event, ptr %2, i32 0, i32 4
  store ptr %1, ptr %20, align 4
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ 0, %12 ], [ -12, %4 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #9
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_event_cancel_free(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 28
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_event, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_file, ptr %6, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 6
  %17 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 6, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %21

21:                                               ; preds = %8, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  %22 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #9, !srcloc !29
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #9
  br label %34

33:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void @dma_fence_release(ptr noundef %26) #9
  br label %34

34:                                               ; preds = %33, %32, %30, %21
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_send_event_timestamp_locked(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
  tail call fastcc void @drm_send_event_helper(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_send_event_helper(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %6 = load volatile i32, ptr %5, align 4
  store volatile i32 %6, ptr %4, align 4
  %7 = lshr i32 %6, 16
  %8 = and i32 %6, 65535
  %9 = icmp eq i32 %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/drm_file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 781, 0\0A.popsection", ""() #9, !srcloc !31
  unreachable

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @complete_all(ptr noundef nonnull %12) #9
  %15 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %1, align 4
  tail call void %16(ptr noundef %17) #9
  store ptr null, ptr %1, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %18
  %23 = icmp eq i64 %2, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @dma_fence_signal_timestamp(ptr noundef nonnull %20, i64 noundef %2) #9
  br label %28

26:                                               ; preds = %22
  %27 = tail call i32 @dma_fence_signal(ptr noundef nonnull %20) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = load ptr, ptr %19, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #9, !srcloc !8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #9, !srcloc !29
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = icmp sgt i32 %34, 0
  br i1 %37, label %40, label %38, !prof !11

38:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef %32, i32 noundef 3) #9
  br label %40

39:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  tail call void @dma_fence_release(ptr noundef %32) #9
  br label %40

40:                                               ; preds = %39, %38, %36, %28, %18
  %41 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @kfree(ptr noundef %1) #9
  br label %59

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 6
  %47 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 6, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 5
  %52 = load ptr, ptr %41, align 4
  %53 = getelementptr inbounds %struct.drm_file, ptr %52, i32 0, i32 25
  %54 = getelementptr inbounds %struct.drm_file, ptr %52, i32 0, i32 25, i32 1
  %55 = load ptr, ptr %54, align 4
  store ptr %51, ptr %54, align 4
  store ptr %53, ptr %51, align 4
  %56 = getelementptr inbounds %struct.drm_pending_event, ptr %1, i32 0, i32 5, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %51, ptr %55, align 4
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr inbounds %struct.drm_file, ptr %57, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %58, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  br label %59

59:                                               ; preds = %45, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_send_event_locked(ptr noundef %0, ptr noundef %1) #1 {
  tail call fastcc void @drm_send_event_helper(ptr noundef %0, ptr noundef %1, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_send_event(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 28
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  tail call fastcc void @drm_send_event_helper(ptr noundef %0, ptr noundef %1, i64 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mock_drm_getfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @drm_file_alloc(ptr noundef %0)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.10, ptr noundef %11, ptr noundef %5, i32 noundef %1) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  tail call void @drm_file_free(ptr noundef %5)
  br label %22

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 17
  store ptr %19, ptr %20, align 8
  tail call void @drm_dev_get(ptr noundef %4) #9
  %21 = getelementptr inbounds %struct.drm_file, ptr %5, i32 0, i32 18
  store ptr %12, ptr %21, align 4
  br label %22

22:                                               ; preds = %15, %14, %2
  %23 = phi ptr [ %12, %14 ], [ %12, %15 ], [ %5, %2 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_get_unmapped_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5) #1 {
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #9
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_master_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_timestamp(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{i64 745436, i64 2148235407, i64 2148235433, i64 2148235480, i64 2148235502, i64 2148235530, i64 2148235550}
!9 = !{i64 2148248280, i64 2148248312, i64 2148248341, i64 2148248375, i64 2148248406, i64 2148248429}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148346084}
!13 = !{i64 2148346286}
!14 = !{i64 2148249179, i64 2148249205, i64 2148249234, i64 2148249268, i64 2148249299, i64 2148249322}
!15 = !{i64 2148347501}
!16 = !{i64 2148249863, i64 2148249895, i64 2148249924, i64 2148249958, i64 2148249989, i64 2148250012}
!17 = !{i64 2148347704}
!18 = !{i64 2148914040}
!19 = !{i64 2148909864}
!20 = !{i64 2148909939, i64 2148909966, i64 2148910013, i64 2148910035, i64 2148910063, i64 2148910083}
!21 = !{i64 651359}
!22 = !{i64 2148938184}
!23 = !{!"auto-init"}
!24 = !{i64 2152703356, i64 2152703381}
!25 = !{i64 5198890}
!26 = !{i64 5199087}
!27 = !{i64 2152684366}
!28 = !{i64 2148348502}
!29 = !{i64 2148250637, i64 2148250669, i64 2148250698, i64 2148250732, i64 2148250763, i64 2148250786}
!30 = !{i64 2148991111}
!31 = !{i64 2155447329, i64 2155447820, i64 2155447366, i64 2155447422, i64 2155447456, i64 2155447480, i64 2155447521, i64 2155447542, i64 2155447570, i64 2155447604}
