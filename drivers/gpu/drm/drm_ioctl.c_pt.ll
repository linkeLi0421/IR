; ModuleID = '/llk/IR/drivers/gpu/drm/drm_ioctl.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_noop\22\09\09\09\09\09"
module asm "__kstrtabns_drm_noop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_invalid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_invalid_op\22\09\09\09\09\09"
module asm "__kstrtabns_drm_invalid_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_ioctl_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_ioctl_flags\22\09\09\09\09\09"
module asm "__kstrtabns_drm_ioctl_flags:\09\09\09\09\09"
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
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.71 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_unique = type { i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_client = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_version = type { i32, i32, i32, i32, ptr, i32, ptr, i32, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_set_version = type { i32, i32, i32, i32 }
%struct.drm_get_cap = type { i64, i64 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_set_client_cap = type { i64, i64 }

@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__kstrtab_drm_noop = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_noop = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_noop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_noop to i32), ptr @__kstrtab_drm_noop, ptr @__kstrtabns_drm_noop }, section "___ksymtab+drm_noop", align 4
@__kstrtab_drm_invalid_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_invalid_op = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_invalid_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_invalid_op to i32), ptr @__kstrtab_drm_invalid_op, ptr @__kstrtabns_drm_invalid_op }, section "___ksymtab+drm_invalid_op", align 4
@drm_global_mutex = external dso_local global %struct.mutex, align 4
@__kstrtab_drm_ioctl_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl_kernel to i32), ptr @__kstrtab_drm_ioctl_kernel, ptr @__kstrtabns_drm_ioctl_kernel }, section "___ksymtab+drm_ioctl_kernel", align 4
@drm_ioctls = internal constant [207 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1071356928, i32 32, ptr @drm_version, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 -1073191935, i32 0, ptr @drm_getunique, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 -2147195902, i32 0, ptr @drm_getmagic, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -1072667645, i32 6, ptr @drm_legacy_irq_by_busid, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 -1072143356, i32 0, ptr @drm_legacy_getmap_ioctl, ptr @.str.11 }, %struct.drm_ioctl_desc { i32 -1072143355, i32 0, ptr @drm_getclient, ptr @.str.12 }, %struct.drm_ioctl_desc { i32 -2139331578, i32 0, ptr @drm_getstats, ptr @.str.13 }, %struct.drm_ioctl_desc { i32 -1072667641, i32 2, ptr @drm_setversion, ptr @.str.14 }, %struct.drm_ioctl_desc { i32 1074291720, i32 0, ptr @drm_legacy_modeset_ctl_ioctl, ptr @.str.15 }, %struct.drm_ioctl_desc { i32 1074291721, i32 32, ptr @drm_gem_close_ioctl, ptr @.str.16 }, %struct.drm_ioctl_desc { i32 -1073191926, i32 1, ptr @drm_gem_flink_ioctl, ptr @.str.17 }, %struct.drm_ioctl_desc { i32 -1072667637, i32 1, ptr @drm_gem_open_ioctl, ptr @.str.18 }, %struct.drm_ioctl_desc { i32 -1072667636, i32 32, ptr @drm_getcap, ptr @.str.19 }, %struct.drm_ioctl_desc { i32 1074816013, i32 0, ptr @drm_setclientcap, ptr @.str.20 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 1074291728, i32 7, ptr @drm_invalid_op, ptr @.str.21 }, %struct.drm_ioctl_desc { i32 1074029585, i32 2, ptr @drm_authmagic, ptr @.str.22 }, %struct.drm_ioctl_desc { i32 -1073454062, i32 7, ptr @drm_noop, ptr @.str.23 }, %struct.drm_ioctl_desc { i32 -1073454061, i32 7, ptr @drm_noop, ptr @.str.24 }, %struct.drm_ioctl_desc { i32 1074291732, i32 7, ptr @drm_legacy_irq_control, ptr @.str.25 }, %struct.drm_ioctl_desc { i32 -1072143339, i32 7, ptr @drm_legacy_addmap_ioctl, ptr @.str.26 }, %struct.drm_ioctl_desc { i32 -1072143338, i32 7, ptr @drm_legacy_addbufs, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 1075340311, i32 7, ptr @drm_legacy_markbufs, ptr @.str.28 }, %struct.drm_ioctl_desc { i32 -1073191912, i32 1, ptr @drm_legacy_infobufs, ptr @.str.29 }, %struct.drm_ioctl_desc { i32 -1072929767, i32 1, ptr @drm_legacy_mapbufs, ptr @.str.30 }, %struct.drm_ioctl_desc { i32 1074291738, i32 1, ptr @drm_legacy_freebufs, ptr @.str.31 }, %struct.drm_ioctl_desc { i32 1075340315, i32 1, ptr @drm_legacy_rmmap_ioctl, ptr @.str.32 }, %struct.drm_ioctl_desc { i32 1074291740, i32 7, ptr @drm_legacy_setsareactx, ptr @.str.33 }, %struct.drm_ioctl_desc { i32 -1073191907, i32 1, ptr @drm_legacy_getsareactx, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 25630, i32 0, ptr @drm_setmaster_ioctl, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 25631, i32 0, ptr @drm_dropmaster_ioctl, ptr @.str.36 }, %struct.drm_ioctl_desc { i32 -1073191904, i32 5, ptr @drm_legacy_addctx, ptr @.str.37 }, %struct.drm_ioctl_desc { i32 -1073191903, i32 7, ptr @drm_legacy_rmctx, ptr @.str.38 }, %struct.drm_ioctl_desc { i32 1074291746, i32 7, ptr @drm_noop, ptr @.str.39 }, %struct.drm_ioctl_desc { i32 -1073191901, i32 1, ptr @drm_legacy_getctx, ptr @.str.40 }, %struct.drm_ioctl_desc { i32 1074291748, i32 7, ptr @drm_legacy_switchctx, ptr @.str.41 }, %struct.drm_ioctl_desc { i32 1074291749, i32 7, ptr @drm_legacy_newctx, ptr @.str.42 }, %struct.drm_ioctl_desc { i32 -1073191898, i32 1, ptr @drm_legacy_resctx, ptr @.str.43 }, %struct.drm_ioctl_desc { i32 -1073454041, i32 7, ptr @drm_noop, ptr @.str.44 }, %struct.drm_ioctl_desc { i32 -1073454040, i32 7, ptr @drm_noop, ptr @.str.45 }, %struct.drm_ioctl_desc { i32 -1071094743, i32 1, ptr @drm_legacy_dma_ioctl, ptr @.str.46 }, %struct.drm_ioctl_desc { i32 1074291754, i32 1, ptr @drm_legacy_lock, ptr @.str.47 }, %struct.drm_ioctl_desc { i32 1074291755, i32 1, ptr @drm_legacy_unlock, ptr @.str.48 }, %struct.drm_ioctl_desc { i32 1074291756, i32 1, ptr @drm_noop, ptr @.str.49 }, %struct.drm_ioctl_desc { i32 -1072929747, i32 32, ptr @drm_prime_handle_to_fd_ioctl, ptr @.str.50 }, %struct.drm_ioctl_desc { i32 -1072929746, i32 32, ptr @drm_prime_fd_to_handle_ioctl, ptr @.str.51 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1073191880, i32 7, ptr @drm_legacy_sg_alloc, ptr @.str.52 }, %struct.drm_ioctl_desc { i32 1074291769, i32 7, ptr @drm_legacy_sg_free, ptr @.str.53 }, %struct.drm_ioctl_desc { i32 -1072667590, i32 16, ptr @drm_wait_vblank_ioctl, ptr @.str.54 }, %struct.drm_ioctl_desc { i32 -1072143301, i32 0, ptr @drm_crtc_get_sequence_ioctl, ptr @.str.55 }, %struct.drm_ioctl_desc { i32 -1072143300, i32 0, ptr @drm_crtc_queue_sequence_ioctl, ptr @.str.56 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 1075340351, i32 7, ptr @drm_noop, ptr @.str.57 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1069521760, i32 0, ptr @drm_mode_getresources, ptr @.str.58 }, %struct.drm_ioctl_desc { i32 -1066900319, i32 0, ptr @drm_mode_getcrtc, ptr @.str.59 }, %struct.drm_ioctl_desc { i32 -1066900318, i32 2, ptr @drm_mode_setcrtc, ptr @.str.60 }, %struct.drm_ioctl_desc { i32 -1071881053, i32 2, ptr @drm_mode_cursor_ioctl, ptr @.str.61 }, %struct.drm_ioctl_desc { i32 -1071618908, i32 0, ptr @drm_mode_gamma_get_ioctl, ptr @.str.62 }, %struct.drm_ioctl_desc { i32 -1071618907, i32 2, ptr @drm_mode_gamma_set_ioctl, ptr @.str.63 }, %struct.drm_ioctl_desc { i32 -1072405338, i32 0, ptr @drm_mode_getencoder, ptr @.str.64 }, %struct.drm_ioctl_desc { i32 -1068473177, i32 0, ptr @drm_mode_getconnector, ptr @.str.65 }, %struct.drm_ioctl_desc { i32 -1068997464, i32 2, ptr @drm_noop, ptr @.str.66 }, %struct.drm_ioctl_desc { i32 -1068997463, i32 2, ptr @drm_noop, ptr @.str.67 }, %struct.drm_ioctl_desc { i32 -1069521750, i32 0, ptr @drm_mode_getproperty_ioctl, ptr @.str.68 }, %struct.drm_ioctl_desc { i32 -1072667477, i32 2, ptr @drm_connector_property_set_ioctl, ptr @.str.69 }, %struct.drm_ioctl_desc { i32 -1072667476, i32 0, ptr @drm_mode_getblob_ioctl, ptr @.str.70 }, %struct.drm_ioctl_desc { i32 -1071881043, i32 0, ptr @drm_mode_getfb, ptr @.str.71 }, %struct.drm_ioctl_desc { i32 -1071881042, i32 0, ptr @drm_mode_addfb_ioctl, ptr @.str.72 }, %struct.drm_ioctl_desc { i32 -1073453905, i32 0, ptr @drm_mode_rmfb_ioctl, ptr @.str.73 }, %struct.drm_ioctl_desc { i32 -1072143184, i32 2, ptr @drm_mode_page_flip_ioctl, ptr @.str.74 }, %struct.drm_ioctl_desc { i32 -1072143183, i32 2, ptr @drm_mode_dirtyfb_ioctl, ptr @.str.75 }, %struct.drm_ioctl_desc { i32 -1071618894, i32 0, ptr @drm_mode_create_dumb_ioctl, ptr @.str.76 }, %struct.drm_ioctl_desc { i32 -1072667469, i32 0, ptr @drm_mode_mmap_dumb_ioctl, ptr @.str.77 }, %struct.drm_ioctl_desc { i32 -1073453900, i32 0, ptr @drm_mode_destroy_dumb_ioctl, ptr @.str.78 }, %struct.drm_ioctl_desc { i32 -1072667467, i32 0, ptr @drm_mode_getplane_res, ptr @.str.79 }, %struct.drm_ioctl_desc { i32 -1071618890, i32 0, ptr @drm_mode_getplane, ptr @.str.80 }, %struct.drm_ioctl_desc { i32 -1070570313, i32 2, ptr @drm_mode_setplane, ptr @.str.81 }, %struct.drm_ioctl_desc { i32 -1066900296, i32 0, ptr @drm_mode_addfb2_ioctl, ptr @.str.82 }, %struct.drm_ioctl_desc { i32 -1071618887, i32 0, ptr @drm_mode_obj_get_properties_ioctl, ptr @.str.83 }, %struct.drm_ioctl_desc { i32 -1072143174, i32 2, ptr @drm_mode_obj_set_property_ioctl, ptr @.str.84 }, %struct.drm_ioctl_desc { i32 -1071356741, i32 2, ptr @drm_mode_cursor2_ioctl, ptr @.str.85 }, %struct.drm_ioctl_desc { i32 -1070046020, i32 2, ptr @drm_mode_atomic_ioctl, ptr @.str.86 }, %struct.drm_ioctl_desc { i32 -1072667459, i32 0, ptr @drm_mode_createblob_ioctl, ptr @.str.87 }, %struct.drm_ioctl_desc { i32 -1073453890, i32 0, ptr @drm_mode_destroyblob_ioctl, ptr @.str.88 }, %struct.drm_ioctl_desc { i32 -1073191745, i32 32, ptr @drm_syncobj_create_ioctl, ptr @.str.89 }, %struct.drm_ioctl_desc { i32 -1073191744, i32 32, ptr @drm_syncobj_destroy_ioctl, ptr @.str.90 }, %struct.drm_ioctl_desc { i32 -1072667455, i32 32, ptr @drm_syncobj_handle_to_fd_ioctl, ptr @.str.91 }, %struct.drm_ioctl_desc { i32 -1072667454, i32 32, ptr @drm_syncobj_fd_to_handle_ioctl, ptr @.str.92 }, %struct.drm_ioctl_desc { i32 -1071618877, i32 32, ptr @drm_syncobj_wait_ioctl, ptr @.str.93 }, %struct.drm_ioctl_desc { i32 -1072667452, i32 32, ptr @drm_syncobj_reset_ioctl, ptr @.str.94 }, %struct.drm_ioctl_desc { i32 -1072667451, i32 32, ptr @drm_syncobj_signal_ioctl, ptr @.str.95 }, %struct.drm_ioctl_desc { i32 -1072143162, i32 2, ptr @drm_mode_create_lease_ioctl, ptr @.str.96 }, %struct.drm_ioctl_desc { i32 -1072667449, i32 2, ptr @drm_mode_list_lessees_ioctl, ptr @.str.97 }, %struct.drm_ioctl_desc { i32 -1072667448, i32 2, ptr @drm_mode_get_lease_ioctl, ptr @.str.98 }, %struct.drm_ioctl_desc { i32 -1073453879, i32 2, ptr @drm_mode_revoke_lease_ioctl, ptr @.str.99 }, %struct.drm_ioctl_desc { i32 -1071094582, i32 32, ptr @drm_syncobj_timeline_wait_ioctl, ptr @.str.100 }, %struct.drm_ioctl_desc { i32 -1072143157, i32 32, ptr @drm_syncobj_query_ioctl, ptr @.str.101 }, %struct.drm_ioctl_desc { i32 -1071618868, i32 32, ptr @drm_syncobj_transfer_ioctl, ptr @.str.102 }, %struct.drm_ioctl_desc { i32 -1072143155, i32 32, ptr @drm_syncobj_timeline_signal_ioctl, ptr @.str.103 }, %struct.drm_ioctl_desc { i32 -1066900274, i32 0, ptr @drm_mode_getfb2_ioctl, ptr @.str.104 }], align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"comm=\22%s\22 pid=%d, dev=0x%lx, auth=%d, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"no function\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"invalid ioctl: comm=\22%s\22, pid=%d, dev=0x%lx, auth=%d, cmd=0x%02x, nr=0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"comm=\22%s\22, pid=%d, ret=%d\0A\00", align 1
@__kstrtab_drm_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl to i32), ptr @__kstrtab_drm_ioctl, ptr @__kstrtabns_drm_ioctl }, section "___ksymtab+drm_ioctl", align 4
@__kstrtab_drm_ioctl_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_ioctl_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_ioctl_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_ioctl_flags to i32), ptr @__kstrtab_drm_ioctl_flags, ptr @__kstrtabns_drm_ioctl_flags }, section "___ksymtab+drm_ioctl_flags", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"DRM_IOCTL_VERSION\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_GET_UNIQUE\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_GET_MAGIC\00", align 1
@.str.10 = private unnamed_addr constant [267 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x03)) << 0) | (((((sizeof(struct drm_irq_busid) == sizeof(struct drm_irq_busid[1]) && sizeof(struct drm_irq_busid) < (1 << 14)) ? sizeof(struct drm_irq_busid) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.11 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x04)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_GET_CLIENT\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_GET_STATS\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_SET_VERSION\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODESET_CTL\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_GEM_CLOSE\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_GEM_FLINK\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"DRM_IOCTL_GEM_OPEN\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"DRM_IOCTL_GET_CAP\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"DRM_IOCTL_SET_CLIENT_CAP\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_SET_UNIQUE\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_AUTH_MAGIC\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"DRM_IOCTL_BLOCK\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"DRM_IOCTL_UNBLOCK\00", align 1
@.str.25 = private unnamed_addr constant [256 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x14)) << 0) | (((((sizeof(struct drm_control) == sizeof(struct drm_control[1]) && sizeof(struct drm_control) < (1 << 14)) ? sizeof(struct drm_control) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.26 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x15)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.27 = private unnamed_addr constant [263 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x16)) << 0) | (((((sizeof(struct drm_buf_desc) == sizeof(struct drm_buf_desc[1]) && sizeof(struct drm_buf_desc) < (1 << 14)) ? sizeof(struct drm_buf_desc) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.28 = private unnamed_addr constant [260 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x17)) << 0) | (((((sizeof(struct drm_buf_desc) == sizeof(struct drm_buf_desc[1]) && sizeof(struct drm_buf_desc) < (1 << 14)) ? sizeof(struct drm_buf_desc) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.29 = private unnamed_addr constant [263 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x18)) << 0) | (((((sizeof(struct drm_buf_info) == sizeof(struct drm_buf_info[1]) && sizeof(struct drm_buf_info) < (1 << 14)) ? sizeof(struct drm_buf_info) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.30 = private unnamed_addr constant [259 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x19)) << 0) | (((((sizeof(struct drm_buf_map) == sizeof(struct drm_buf_map[1]) && sizeof(struct drm_buf_map) < (1 << 14)) ? sizeof(struct drm_buf_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.31 = private unnamed_addr constant [260 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1a)) << 0) | (((((sizeof(struct drm_buf_free) == sizeof(struct drm_buf_free[1]) && sizeof(struct drm_buf_free) < (1 << 14)) ? sizeof(struct drm_buf_free) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.32 = private unnamed_addr constant [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1b)) << 0) | (((((sizeof(struct drm_map) == sizeof(struct drm_map[1]) && sizeof(struct drm_map) < (1 << 14)) ? sizeof(struct drm_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.33 = private unnamed_addr constant [276 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1c)) << 0) | (((((sizeof(struct drm_ctx_priv_map) == sizeof(struct drm_ctx_priv_map[1]) && sizeof(struct drm_ctx_priv_map) < (1 << 14)) ? sizeof(struct drm_ctx_priv_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.34 = private unnamed_addr constant [279 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x1d)) << 0) | (((((sizeof(struct drm_ctx_priv_map) == sizeof(struct drm_ctx_priv_map[1]) && sizeof(struct drm_ctx_priv_map) < (1 << 14)) ? sizeof(struct drm_ctx_priv_map) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_SET_MASTER\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_DROP_MASTER\00", align 1
@.str.37 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x20)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.38 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x21)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.39 = private unnamed_addr constant [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x22)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.40 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x23)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.41 = private unnamed_addr constant [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x24)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.42 = private unnamed_addr constant [240 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x25)) << 0) | (((((sizeof(struct drm_ctx) == sizeof(struct drm_ctx[1]) && sizeof(struct drm_ctx) < (1 << 14)) ? sizeof(struct drm_ctx) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.43 = private unnamed_addr constant [259 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x26)) << 0) | (((((sizeof(struct drm_ctx_res) == sizeof(struct drm_ctx_res[1]) && sizeof(struct drm_ctx_res) < (1 << 14)) ? sizeof(struct drm_ctx_res) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"DRM_IOCTL_ADD_DRAW\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"DRM_IOCTL_RM_DRAW\00", align 1
@.str.46 = private unnamed_addr constant [243 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x29)) << 0) | (((((sizeof(struct drm_dma) == sizeof(struct drm_dma[1]) && sizeof(struct drm_dma) < (1 << 14)) ? sizeof(struct drm_dma) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.47 = private unnamed_addr constant [244 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x2a)) << 0) | (((((sizeof(struct drm_lock) == sizeof(struct drm_lock[1]) && sizeof(struct drm_lock) < (1 << 14)) ? sizeof(struct drm_lock) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.48 = private unnamed_addr constant [244 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x2b)) << 0) | (((((sizeof(struct drm_lock) == sizeof(struct drm_lock[1]) && sizeof(struct drm_lock) < (1 << 14)) ? sizeof(struct drm_lock) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"DRM_IOCTL_FINISH\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"DRM_IOCTL_PRIME_HANDLE_TO_FD\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"DRM_IOCTL_PRIME_FD_TO_HANDLE\00", align 1
@.str.52 = private unnamed_addr constant [287 x i8] c"(((2U|1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x38)) << 0) | (((((sizeof(struct drm_scatter_gather) == sizeof(struct drm_scatter_gather[1]) && sizeof(struct drm_scatter_gather) < (1 << 14)) ? sizeof(struct drm_scatter_gather) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.53 = private unnamed_addr constant [284 x i8] c"(((1U) << (((0+8)+8)+14)) | ((('d')) << (0+8)) | (((0x39)) << 0) | (((((sizeof(struct drm_scatter_gather) == sizeof(struct drm_scatter_gather[1]) && sizeof(struct drm_scatter_gather) < (1 << 14)) ? sizeof(struct drm_scatter_gather) : __invalid_size_argument_for_IOC))) << ((0+8)+8)))\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_WAIT_VBLANK\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_CRTC_GET_SEQUENCE\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"DRM_IOCTL_CRTC_QUEUE_SEQUENCE\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_UPDATE_DRAW\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_GETRESOURCES\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"DRM_IOCTL_MODE_GETCRTC\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"DRM_IOCTL_MODE_SETCRTC\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODE_CURSOR\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_MODE_GETGAMMA\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_MODE_SETGAMMA\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"DRM_IOCTL_MODE_GETENCODER\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_GETCONNECTOR\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"DRM_IOCTL_MODE_ATTACHMODE\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"DRM_IOCTL_MODE_DETACHMODE\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"DRM_IOCTL_MODE_GETPROPERTY\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"DRM_IOCTL_MODE_SETPROPERTY\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"DRM_IOCTL_MODE_GETPROPBLOB\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_MODE_GETFB\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"DRM_IOCTL_MODE_ADDFB\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"DRM_IOCTL_MODE_RMFB\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"DRM_IOCTL_MODE_PAGE_FLIP\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"DRM_IOCTL_MODE_DIRTYFB\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"DRM_IOCTL_MODE_CREATE_DUMB\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_MODE_MAP_DUMB\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_DESTROY_DUMB\00", align 1
@.str.79 = private unnamed_addr constant [33 x i8] c"DRM_IOCTL_MODE_GETPLANERESOURCES\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_MODE_GETPLANE\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_MODE_SETPLANE\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODE_ADDFB2\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"DRM_IOCTL_MODE_OBJ_GETPROPERTIES\00", align 1
@.str.84 = private unnamed_addr constant [31 x i8] c"DRM_IOCTL_MODE_OBJ_SETPROPERTY\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"DRM_IOCTL_MODE_CURSOR2\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODE_ATOMIC\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"DRM_IOCTL_MODE_CREATEPROPBLOB\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"DRM_IOCTL_MODE_DESTROYPROPBLOB\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"DRM_IOCTL_SYNCOBJ_CREATE\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"DRM_IOCTL_SYNCOBJ_DESTROY\00", align 1
@.str.91 = private unnamed_addr constant [31 x i8] c"DRM_IOCTL_SYNCOBJ_HANDLE_TO_FD\00", align 1
@.str.92 = private unnamed_addr constant [31 x i8] c"DRM_IOCTL_SYNCOBJ_FD_TO_HANDLE\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"DRM_IOCTL_SYNCOBJ_WAIT\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_SYNCOBJ_RESET\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"DRM_IOCTL_SYNCOBJ_SIGNAL\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_CREATE_LEASE\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_LIST_LESSEES\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"DRM_IOCTL_MODE_GET_LEASE\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"DRM_IOCTL_MODE_REVOKE_LEASE\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"DRM_IOCTL_SYNCOBJ_TIMELINE_WAIT\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"DRM_IOCTL_SYNCOBJ_QUERY\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"DRM_IOCTL_SYNCOBJ_TRANSFER\00", align 1
@.str.103 = private unnamed_addr constant [34 x i8] c"DRM_IOCTL_SYNCOBJ_TIMELINE_SIGNAL\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"DRM_IOCTL_MODE_GETFB2\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.105 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_ioctl.c\00", align 1
@.str.106 = private unnamed_addr constant [62 x i8] c"\016broken atomic modeset userspace detected, disabling atomic\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_invalid_op, ptr @__ksymtab_drm_ioctl, ptr @__ksymtab_drm_ioctl_flags, ptr @__ksymtab_drm_ioctl_kernel, ptr @__ksymtab_drm_noop], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_getunique(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %38, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_unique, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_master, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp slt i32 %9, 0
  %17 = load i1, ptr @check_copy_size.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %21

21:                                               ; preds = %20, %11
  br i1 %16, label %40, label %22, !prof !8

22:                                               ; preds = %21
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 %9, i32 -1090519040) #13, !srcloc !9
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #14, !srcloc !10
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %32 = tail call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %15, i32 noundef %9) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %33

33:                                               ; preds = %26, %22
  %34 = phi i32 [ %32, %26 ], [ %9, %22 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4
  br label %38

38:                                               ; preds = %36, %3
  %39 = phi i32 [ %37, %36 ], [ %9, %3 ]
  store i32 %39, ptr %1, align 4
  br label %40

40:                                               ; preds = %38, %33, %21
  %41 = phi i32 [ 0, %38 ], [ -14, %21 ], [ -14, %33 ]
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_getclient(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load i8, ptr %2, align 4, !range !13
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.drm_client, ptr %1, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = tail call ptr @llvm.thread.pointer() #12
  %11 = tail call i32 @__task_pid_nr_ns(ptr noundef %10, i32 noundef 0, ptr noundef null) #12
  %12 = getelementptr inbounds %struct.drm_client, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr @overflowuid, align 4
  %14 = getelementptr inbounds %struct.drm_client, ptr %1, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_client, ptr %1, i32 0, i32 4
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_client, ptr %1, i32 0, i32 5
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %6, %3
  %18 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_noop(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_invalid_op(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #3 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_version(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %1, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.drm_driver, ptr %12, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.drm_driver, ptr %19, i32 0, i32 21
  %21 = load ptr, ptr %20, align 4
  %22 = tail call fastcc i32 @drm_copy_field(ptr noundef %17, ptr noundef %18, ptr noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 5
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.drm_driver, ptr %28, i32 0, i32 23
  %30 = load ptr, ptr %29, align 4
  %31 = tail call fastcc i32 @drm_copy_field(ptr noundef %26, ptr noundef %27, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_version, ptr %1, i32 0, i32 7
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.drm_driver, ptr %37, i32 0, i32 22
  %39 = load ptr, ptr %38, align 4
  %40 = tail call fastcc i32 @drm_copy_field(ptr noundef %35, ptr noundef %36, ptr noundef %39)
  br label %41

41:                                               ; preds = %33, %24, %3
  %42 = phi i32 [ %31, %24 ], [ %40, %33 ], [ %22, %3 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drm_copy_field(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @strlen(ptr noundef %2)
  %5 = load i32, ptr %1, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %4, i32 %5)
  store i32 %4, ptr %1, align 4
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne ptr %0, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = icmp slt i32 %6, 0
  %12 = load i1, ptr @check_copy_size.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %30, label %17, !prof !8

17:                                               ; preds = %16
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 %6, i32 -1090519040) #13, !srcloc !9
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #14, !srcloc !10
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %27 = tail call i32 @arm_copy_to_user(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %3
  br label %30

30:                                               ; preds = %29, %21, %17, %16
  %31 = phi i32 [ 0, %29 ], [ -14, %21 ], [ -14, %16 ], [ -14, %17 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ioctl_kernel(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_minor, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !14
  %12 = call zeroext i1 @drm_dev_enter(ptr noundef %11, ptr noundef nonnull %5) #12
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %61

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4
  call void @drm_dev_exit(i32 noundef %15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %16 = and i32 %3, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %19, label %20, label %61, !prof !15

20:                                               ; preds = %18, %14
  %21 = and i32 %3, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 4
  %25 = getelementptr inbounds %struct.drm_minor, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i8, ptr %7, align 4, !range !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %61, label %31, !prof !8

31:                                               ; preds = %28, %23, %20
  %32 = and i32 %3, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call zeroext i1 @drm_is_current_master(ptr noundef %7) #12
  br i1 %35, label %36, label %61, !prof !15

36:                                               ; preds = %34, %31
  %37 = and i32 %3, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.drm_minor, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %61, label %44

44:                                               ; preds = %39, %36
  %45 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.drm_driver, ptr %46, i32 0, i32 24
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 10
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %48, 67108864
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 67108864
  br i1 %53, label %54, label %57, !prof !8

54:                                               ; preds = %44
  %55 = and i32 %3, 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %44
  %58 = call i32 %1(ptr noundef %11, ptr noundef %2, ptr noundef %7) #12
  br label %61

59:                                               ; preds = %54
  call void @mutex_lock(ptr noundef nonnull @drm_global_mutex) #12
  %60 = call i32 %1(ptr noundef %11, ptr noundef %2, ptr noundef %7) #12
  call void @mutex_unlock(ptr noundef nonnull @drm_global_mutex) #12
  br label %61

61:                                               ; preds = %59, %57, %39, %34, %28, %18, %13
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ], [ -19, %13 ], [ -13, %18 ], [ -13, %28 ], [ -13, %34 ], [ -13, %39 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [128 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !14
  %9 = getelementptr inbounds %struct.drm_file, ptr %7, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !14
  %13 = call zeroext i1 @drm_dev_enter(ptr noundef %12, ptr noundef nonnull %4) #12
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %158

15:                                               ; preds = %3
  %16 = load i32, ptr %4, align 4
  call void @drm_dev_exit(i32 noundef %16) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %17 = and i32 %1, 65280
  %18 = icmp eq i32 %17, 25600
  br i1 %18, label %19, label %158

19:                                               ; preds = %15
  %20 = add nsw i32 %8, -64
  %21 = icmp ult i32 %20, 96
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.drm_driver, ptr %24, i32 0, i32 26
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %20, %26
  br i1 %27, label %28, label %127

28:                                               ; preds = %22
  %29 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %20, i32 %26) #12, !srcloc !16
  %30 = and i32 %29, %20
  %31 = load ptr, ptr %23, align 4
  %32 = getelementptr inbounds %struct.drm_driver, ptr %31, i32 0, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.drm_ioctl_desc, ptr %33, i32 %30
  br label %41

35:                                               ; preds = %19
  %36 = icmp ugt i32 %8, 206
  br i1 %36, label %127, label %37

37:                                               ; preds = %35
  %38 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %8, i32 207) #12, !srcloc !16
  %39 = and i32 %38, %8
  %40 = getelementptr [207 x %struct.drm_ioctl_desc], ptr @drm_ioctls, i32 0, i32 %39
  br label %41

41:                                               ; preds = %37, %28
  %42 = phi i32 [ %39, %37 ], [ %8, %28 ]
  %43 = phi ptr [ %40, %37 ], [ %34, %28 ]
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 16
  %46 = and i32 %45, 16383
  %47 = lshr i32 %1, 16
  %48 = and i32 %47, 16383
  %49 = and i32 %44, %1
  %50 = and i32 %49, 1073741824
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 0, i32 %48
  %53 = icmp slt i32 %49, 0
  %54 = select i1 %53, i32 %48, i32 0
  %55 = call i32 @llvm.umax.i32(i32 %52, i32 %54)
  %56 = call i32 @llvm.umax.i32(i32 %55, i32 %46)
  %57 = tail call ptr @llvm.thread.pointer() #12
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 85
  %59 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 52
  %60 = load i32, ptr %59, align 8
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.drm_minor, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 27
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 12
  %67 = and i32 %66, 65280
  %68 = and i32 %65, 65535
  %69 = or i32 %67, %68
  %70 = load i8, ptr %7, align 4, !range !13
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.drm_ioctl_desc, ptr %43, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %58, i32 noundef %60, i32 noundef %69, i32 noundef %71, ptr noundef %73) #12
  %74 = getelementptr inbounds %struct.drm_ioctl_desc, ptr %43, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78, !prof !8

77:                                               ; preds = %41
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #12
  br label %123

78:                                               ; preds = %41
  %79 = icmp ult i32 %56, 129
  br i1 %79, label %83, label %80

80:                                               ; preds = %78
  %81 = call noalias align 64 ptr @__kmalloc(i32 noundef %56, i32 noundef 3264) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %123, label %83

83:                                               ; preds = %80, %78
  %84 = phi ptr [ %81, %80 ], [ %5, %78 ]
  %85 = inttoptr i32 %2 to ptr
  %86 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %85, i32 %52, i32 -1090519040) #13, !srcloc !17
  %87 = extractvalue { i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95, !prof !15

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %91 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %90) #14, !srcloc !10
  %92 = and i32 %91, -13
  %93 = or i32 %92, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #12, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %94 = call i32 @arm_copy_from_user(ptr noundef nonnull %84, ptr noundef %85, i32 noundef %52) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #12, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %95

95:                                               ; preds = %89, %83
  %96 = phi i32 [ %94, %89 ], [ %52, %83 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98, !prof !15

98:                                               ; preds = %95
  %99 = sub i32 %52, %96
  %100 = getelementptr i8, ptr %84, i32 %99
  call void @llvm.memset.p0.i32(ptr align 1 %100, i8 0, i32 %96, i1 false) #12
  br label %123

101:                                              ; preds = %95
  %102 = icmp ugt i32 %56, %52
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = getelementptr i8, ptr %84, i32 %52
  %105 = sub nsw i32 %56, %52
  call void @llvm.memset.p0.i32(ptr align 1 %104, i8 0, i32 %105, i1 false)
  br label %106

106:                                              ; preds = %103, %101
  %107 = getelementptr inbounds %struct.drm_ioctl_desc, ptr %43, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = call i32 @drm_ioctl_kernel(ptr noundef %0, ptr noundef nonnull %75, ptr noundef nonnull %84, i32 noundef %108)
  %110 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %85, i32 %54, i32 -1090519040) #13, !srcloc !9
  %111 = extractvalue { i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %114) #14, !srcloc !10
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #12, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %118 = call i32 @arm_copy_to_user(ptr noundef %85, ptr noundef nonnull %84, i32 noundef %54) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #12, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  br label %119

119:                                              ; preds = %113, %106
  %120 = phi i32 [ %118, %113 ], [ %54, %106 ]
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 %109, i32 -14
  br label %123

123:                                              ; preds = %119, %98, %80, %77
  %124 = phi ptr [ null, %77 ], [ null, %80 ], [ %84, %119 ], [ %84, %98 ]
  %125 = phi i32 [ -22, %77 ], [ -12, %80 ], [ %122, %119 ], [ -14, %98 ]
  %126 = icmp eq ptr %43, null
  br i1 %126, label %127, label %146

127:                                              ; preds = %123, %35, %22
  %128 = phi i32 [ %42, %123 ], [ %8, %35 ], [ %8, %22 ]
  %129 = phi i32 [ %125, %123 ], [ -22, %35 ], [ -22, %22 ]
  %130 = phi ptr [ %124, %123 ], [ null, %35 ], [ null, %22 ]
  %131 = tail call ptr @llvm.thread.pointer() #12
  %132 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 85
  %133 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 52
  %134 = load i32, ptr %133, align 8
  %135 = load ptr, ptr %9, align 4
  %136 = getelementptr inbounds %struct.drm_minor, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 27
  %139 = load i32, ptr %138, align 8
  %140 = lshr i32 %139, 12
  %141 = and i32 %140, 65280
  %142 = and i32 %139, 65535
  %143 = or i32 %141, %142
  %144 = load i8, ptr %7, align 4, !range !13
  %145 = zext i8 %144 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, ptr noundef %132, i32 noundef %134, i32 noundef %143, i32 noundef %145, i32 noundef %1, i32 noundef %128) #12
  br label %146

146:                                              ; preds = %127, %123
  %147 = phi i32 [ %129, %127 ], [ %125, %123 ]
  %148 = phi ptr [ %130, %127 ], [ %124, %123 ]
  %149 = icmp eq ptr %148, %5
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  call void @kfree(ptr noundef %148) #12
  br label %151

151:                                              ; preds = %150, %146
  %152 = icmp eq i32 %147, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = tail call ptr @llvm.thread.pointer() #12
  %155 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 85
  %156 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 52
  %157 = load i32, ptr %156, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef %155, i32 noundef %157, i32 noundef %147) #12
  br label %158

158:                                              ; preds = %153, %151, %15, %14
  %159 = phi i32 [ -25, %15 ], [ %147, %153 ], [ 0, %151 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  ret i32 %159
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_ioctl_flags(i32 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = add i32 %0, -64
  %4 = icmp ult i32 %3, 96
  %5 = icmp ugt i32 %0, 206
  %6 = or i1 %5, %4
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 207) #12, !srcloc !16
  %9 = and i32 %8, %0
  %10 = getelementptr [207 x %struct.drm_ioctl_desc], ptr @drm_ioctls, i32 0, i32 %9, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  br label %12

12:                                               ; preds = %7, %2
  %13 = or i1 %5, %4
  %14 = xor i1 %13, true
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_getmagic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_by_busid(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drm_getstats(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #7 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(124) %1, i8 0, i32 124, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_setversion(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = load i32, ptr %1, align 4
  switch i32 %5, label %71 [
    i32 -1, label %52
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %71, label %10

10:                                               ; preds = %6
  %11 = or i32 %8, 65536
  %12 = load i32, ptr %0, align 4
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 %12)
  store i32 %13, ptr %0, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_master, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %20) #12
  store ptr null, ptr %19, align 4
  %23 = getelementptr inbounds %struct.drm_master, ptr %18, i32 0, i32 3
  store i32 0, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, @pci_bus_type
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = tail call i32 @drm_pci_set_busid(ptr noundef %0, ptr noundef %18) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %52, label %49

35:                                               ; preds = %28, %24
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 13
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41, !prof !8

39:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 160, i32 noundef 9, ptr noundef null) #12
  %40 = load ptr, ptr %36, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %40, %39 ], [ %37, %35 ]
  %43 = tail call noalias ptr @kstrdup(ptr noundef %42, i32 noundef 3264) #12
  store ptr %43, ptr %19, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %36, align 4
  %47 = tail call i32 @strlen(ptr noundef %46) #12
  %48 = getelementptr inbounds %struct.drm_master, ptr %18, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  br label %52

49:                                               ; preds = %32
  %50 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %50) #12
  store ptr null, ptr %19, align 4
  %51 = getelementptr inbounds %struct.drm_master, ptr %18, i32 0, i32 3
  store i32 0, ptr %51, align 4
  br label %71

52:                                               ; preds = %45, %41, %32, %10, %3
  %53 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.drm_driver, ptr %58, i32 0, i32 18
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %54, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.drm_driver, ptr %58, i32 0, i32 19
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62, %56
  br label %71

71:                                               ; preds = %70, %66, %52, %49, %6, %3
  %72 = phi i32 [ %33, %49 ], [ -22, %70 ], [ 0, %66 ], [ 0, %52 ], [ -22, %3 ], [ -22, %6 ]
  store i32 1, ptr %1, align 4
  %73 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 1
  store i32 4, ptr %73, align 4
  %74 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.drm_driver, ptr %75, i32 0, i32 18
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 2
  store i32 %77, ptr %78, align 4
  %79 = load ptr, ptr %74, align 4
  %80 = getelementptr inbounds %struct.drm_driver, ptr %79, i32 0, i32 19
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.drm_set_version, ptr %1, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_modeset_ctl_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_close_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_flink_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_open_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_getcap(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #8 {
  %4 = getelementptr inbounds %struct.drm_get_cap, ptr %1, i32 0, i32 1
  store i64 0, ptr %4, align 8
  %5 = load i64, ptr %1, align 8
  switch i64 %5, label %41 [
    i64 6, label %99
    i64 5, label %6
    i64 19, label %19
    i64 20, label %30
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i64
  store i64 %12, ptr %4, align 8
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i64 0, i64 2
  %18 = or i64 %17, %12
  br label %99

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_driver, ptr %21, i32 0, i32 24
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %23, 32
  %27 = and i32 %26, %25
  %28 = lshr exact i32 %27, 5
  %29 = zext i32 %28 to i64
  br label %99

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_driver, ptr %32, i32 0, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %34, 64
  %38 = and i32 %37, %36
  %39 = lshr exact i32 %38, 6
  %40 = zext i32 %39 to i64
  br label %99

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_driver, ptr %43, i32 0, i32 24
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %45, 2
  %49 = and i32 %48, %47
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %101

51:                                               ; preds = %41
  switch i64 %5, label %101 [
    i64 1, label %52
    i64 2, label %99
    i64 3, label %56
    i64 4, label %60
    i64 7, label %64
    i64 17, label %68
    i64 8, label %83
    i64 9, label %89
    i64 16, label %95
    i64 18, label %99
  ]

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.drm_driver, ptr %43, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %101, label %99

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 91
  %58 = load i32, ptr %57, align 4
  %59 = zext i32 %58 to i64
  br label %99

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 92
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  br label %99

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 96
  %66 = load i8, ptr %65, align 1, !range !13
  %67 = zext i8 %66 to i64
  br label %99

68:                                               ; preds = %51
  store i64 1, ptr %4, align 8
  %69 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %101, label %72

72:                                               ; preds = %80, %68
  %73 = phi ptr [ %81, %80 ], [ %70, %68 ]
  %74 = getelementptr i8, ptr %73, i32 320
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i64 0, ptr %4, align 8
  br label %80

80:                                               ; preds = %79, %72
  %81 = load ptr, ptr %73, align 4
  %82 = icmp eq ptr %81, %69
  br i1 %82, label %101, label %72

83:                                               ; preds = %51
  %84 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 100
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 64, i32 %85
  %88 = zext i32 %87 to i64
  br label %99

89:                                               ; preds = %51
  %90 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 101
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 64, i32 %91
  %94 = zext i32 %93 to i64
  br label %99

95:                                               ; preds = %51
  %96 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 97
  %97 = load i8, ptr %96, align 4, !range !13
  %98 = zext i8 %97 to i64
  br label %99

99:                                               ; preds = %95, %89, %83, %64, %60, %56, %52, %51, %51, %30, %19, %6, %3
  %100 = phi i64 [ %59, %56 ], [ %63, %60 ], [ %67, %64 ], [ %98, %95 ], [ %40, %30 ], [ %29, %19 ], [ %18, %6 ], [ 1, %3 ], [ 1, %52 ], [ 1, %51 ], [ 1, %51 ], [ %88, %83 ], [ %94, %89 ]
  store i64 %100, ptr %4, align 8
  br label %101

101:                                              ; preds = %99, %80, %68, %52, %51, %41
  %102 = phi i32 [ -95, %41 ], [ -22, %51 ], [ 0, %52 ], [ 0, %68 ], [ 0, %99 ], [ 0, %80 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_setclientcap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %3
  %14 = load i64, ptr %1, align 8
  switch i64 %14, label %80 [
    i64 1, label %15
    i64 2, label %23
    i64 3, label %31
    i64 4, label %60
    i64 5, label %68
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %80, label %19

19:                                               ; preds = %15
  %20 = icmp ne i64 %17, 0
  %21 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 1
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 1
  br label %80

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %80, label %27

27:                                               ; preds = %23
  %28 = icmp ne i64 %25, 0
  %29 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 2
  %30 = zext i1 %28 to i8
  store i8 %30, ptr %29, align 2
  br label %80

31:                                               ; preds = %13
  %32 = and i32 %10, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %80, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 85
  %37 = load i8, ptr %36, align 32
  %38 = icmp eq i8 %37, 88
  %39 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 1
  %42 = select i1 %38, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #16
  br label %80

45:                                               ; preds = %34
  %46 = icmp ugt i64 %40, 2
  br i1 %46, label %80, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %49 = icmp ne i64 %40, 0
  %50 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 3
  %51 = zext i1 %49 to i8
  store i8 %51, ptr %50, align 1
  %52 = load i64, ptr %48, align 8
  %53 = icmp ne i64 %52, 0
  %54 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 2
  %55 = zext i1 %53 to i8
  store i8 %55, ptr %54, align 2
  %56 = load i64, ptr %48, align 8
  %57 = icmp ne i64 %56, 0
  %58 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 4
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 4
  br label %80

60:                                               ; preds = %13
  %61 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = icmp ugt i64 %62, 1
  br i1 %63, label %80, label %64

64:                                               ; preds = %60
  %65 = icmp ne i64 %62, 0
  %66 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 4
  %67 = zext i1 %65 to i8
  store i8 %67, ptr %66, align 4
  br label %80

68:                                               ; preds = %13
  %69 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 3
  %70 = load i8, ptr %69, align 1, !range !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.drm_set_client_cap, ptr %1, i32 0, i32 1
  %74 = load i64, ptr %73, align 8
  %75 = icmp ugt i64 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = icmp ne i64 %74, 0
  %78 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 5
  %79 = zext i1 %77 to i8
  store i8 %79, ptr %78, align 1
  br label %80

80:                                               ; preds = %76, %72, %68, %64, %60, %47, %45, %43, %31, %27, %23, %19, %15, %13, %3
  %81 = phi i32 [ -95, %43 ], [ -95, %3 ], [ -22, %15 ], [ -22, %23 ], [ -95, %31 ], [ -22, %45 ], [ -22, %60 ], [ -22, %68 ], [ -22, %72 ], [ -22, %13 ], [ 0, %76 ], [ 0, %64 ], [ 0, %47 ], [ 0, %27 ], [ 0, %19 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_authmagic(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_control(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_markbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_infobufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_mapbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_freebufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_rmmap_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_setsareactx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getsareactx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_setmaster_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dropmaster_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_rmctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_getctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_switchctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_newctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_resctx(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_dma_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_lock(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_unlock(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_handle_to_fd_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_fd_to_handle_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_sg_alloc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_sg_free(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_wait_vblank_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_get_sequence_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_queue_sequence_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getresources(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getcrtc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_setcrtc(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_cursor_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_gamma_get_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_gamma_set_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getencoder(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getconnector(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getproperty_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_property_set_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getfb(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_rmfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_page_flip_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_dirtyfb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_mmap_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_destroy_dumb_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getplane_res(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_setplane(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_addfb2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_obj_get_properties_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_obj_set_property_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_cursor2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_atomic_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_createblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_destroyblob_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_create_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_destroy_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_handle_to_fd_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_fd_to_handle_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_wait_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_reset_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_signal_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_list_lessees_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_get_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_revoke_lease_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_timeline_wait_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_query_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_transfer_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_timeline_signal_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_getfb2_ioctl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_pci_set_busid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

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
!9 = !{i64 2152669629, i64 2152669654}
!10 = !{i64 5165163}
!11 = !{i64 5165360}
!12 = !{i64 2152650639}
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 267110, i64 267127, i64 2147751197}
!17 = !{i64 2152669051, i64 2152669076}
