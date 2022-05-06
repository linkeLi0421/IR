; ModuleID = '/llk/IR/drivers/gpu/drm/drm_framebuffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_framebuffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_unregister_private:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_unregister_private\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_unregister_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_remove\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_plane_width:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_plane_width\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_plane_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_framebuffer_plane_height:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_framebuffer_plane_height\22\09\09\09\09\09"
module asm "__kstrtabns_drm_framebuffer_plane_height:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.74 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_fb_cmd = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.71, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.71 = type { [4 x i8] }
%struct.drm_mode_rmfb_work = type { %struct.work_struct, %struct.list_head }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_fb_dirty_cmd = type { i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [71 x i8] c"Invalid source coordinates %u.%06ux%u.%06u+%u.%06u+%u.%06u (fb %ux%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"bad {bpp:%d, depth:%d}\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"bad framebuffer flags 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"bad framebuffer width %d, should be >= %d && <= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"bad framebuffer height %d, should be >= %d && <= %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"driver does not support fb modifiers\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"could not create framebuffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"[FB:%d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_framebuffer.c\00", align 1
@drm_framebuffer_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_framebuffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_init to i32), ptr @__kstrtab_drm_framebuffer_init, ptr @__kstrtabns_drm_framebuffer_init }, section "___ksymtab+drm_framebuffer_init", align 4
@__kstrtab_drm_framebuffer_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_lookup to i32), ptr @__kstrtab_drm_framebuffer_lookup, ptr @__kstrtabns_drm_framebuffer_lookup }, section "___ksymtab+drm_framebuffer_lookup", align 4
@__kstrtab_drm_framebuffer_unregister_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_unregister_private = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_unregister_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_unregister_private to i32), ptr @__kstrtab_drm_framebuffer_unregister_private, ptr @__kstrtabns_drm_framebuffer_unregister_private }, section "___ksymtab+drm_framebuffer_unregister_private", align 4
@__kstrtab_drm_framebuffer_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_cleanup to i32), ptr @__kstrtab_drm_framebuffer_cleanup, ptr @__kstrtabns_drm_framebuffer_cleanup }, section "___ksymtab+drm_framebuffer_cleanup", align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"atomic remove_fb failed with %i\0A\00", align 1
@__kstrtab_drm_framebuffer_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_remove to i32), ptr @__kstrtab_drm_framebuffer_remove, ptr @__kstrtabns_drm_framebuffer_remove }, section "___ksymtab+drm_framebuffer_remove", align 4
@__kstrtab_drm_framebuffer_plane_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_plane_width = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_plane_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_plane_width to i32), ptr @__kstrtab_drm_framebuffer_plane_width, ptr @__kstrtabns_drm_framebuffer_plane_width }, section "___ksymtab+drm_framebuffer_plane_width", align 4
@__kstrtab_drm_framebuffer_plane_height = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_framebuffer_plane_height = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_framebuffer_plane_height = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_framebuffer_plane_height to i32), ptr @__kstrtab_drm_framebuffer_plane_height, ptr @__kstrtabns_drm_framebuffer_plane_height }, section "___ksymtab+drm_framebuffer_plane_height", align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"%.*sallocated by = %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\09\09\09\09\09X\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%.*srefcount=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"%.*sformat=%p4cc\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%.*smodifier=0x%llx\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%.*ssize=%ux%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"%.*slayers:\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"%.*ssize[%u]=%dx%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%.*spitch[%u]=%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"%.*soffset[%u]=%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"%.*sobj[%u]:%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@drm_framebuffer_debugfs_list = internal constant [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.41, ptr @drm_framebuffer_info, i32 0, ptr null }], align 4
@.str.23 = private unnamed_addr constant [30 x i8] c"bad framebuffer format %p4cc\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"bad framebuffer width %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"bad framebuffer height %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"Format requires non-linear modifier for plane %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"no buffer object handle for plane %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"bad pitch %u for plane %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"bad fb modifier %llu for plane %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"bad modifier data for plane %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"non-zero modifier for unused plane %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"buffer object handle for unused plane %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"non-zero pitch for unused plane %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"non-zero offset for unused plane %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"Removing [FB:%d] from all active usage due to RMFB ioctl\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = private unnamed_addr constant [52 x i8] c"Disabling [PLANE:%d:%s] because [FB:%d] is removed\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Disabling [CRTC:%d:%s] because [FB:%d] is removed\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"failed to reset crtc %p when fb was deleted\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"framebuffer\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"framebuffer[%u]:\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_drm_framebuffer_cleanup, ptr @__ksymtab_drm_framebuffer_init, ptr @__ksymtab_drm_framebuffer_lookup, ptr @__ksymtab_drm_framebuffer_plane_height, ptr @__ksymtab_drm_framebuffer_plane_width, ptr @__ksymtab_drm_framebuffer_remove, ptr @__ksymtab_drm_framebuffer_unregister_private], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_framebuffer_check_src_coords(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %7, 16
  %9 = getelementptr inbounds %struct.drm_framebuffer, ptr %4, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 16
  %12 = icmp ult i32 %8, %2
  %13 = sub i32 %8, %2
  %14 = icmp ult i32 %13, %0
  %15 = or i1 %12, %14
  %16 = icmp ult i32 %11, %3
  %17 = select i1 %15, i1 true, i1 %16
  %18 = sub i32 %11, %3
  %19 = icmp ult i32 %18, %1
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %5
  %22 = lshr i32 %2, 16
  %23 = and i32 %2, 65535
  %24 = mul nuw nsw i32 %23, 15625
  %25 = lshr i32 %24, 10
  %26 = lshr i32 %3, 16
  %27 = and i32 %3, 65535
  %28 = mul nuw nsw i32 %27, 15625
  %29 = lshr i32 %28, 10
  %30 = lshr i32 %0, 16
  %31 = and i32 %0, 65535
  %32 = mul nuw nsw i32 %31, 15625
  %33 = lshr i32 %32, 10
  %34 = lshr i32 %1, 16
  %35 = and i32 %1, 65535
  %36 = mul nuw nsw i32 %35, 15625
  %37 = lshr i32 %36, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %25, i32 noundef %26, i32 noundef %29, i32 noundef %30, i32 noundef %33, i32 noundef %34, i32 noundef %37, i32 noundef %7, i32 noundef %10) #8
  br label %38

38:                                               ; preds = %21, %5
  %39 = phi i32 [ -28, %21 ], [ 0, %5 ]
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_addfb(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_mode_fb_cmd2, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %5, i8 0, i32 88, i1 false)
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 2
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %63

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @drm_driver_legacy_fb_format(ptr noundef %0, i32 noundef %17, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, ptr %16, align 4
  %25 = load i32, ptr %18, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef %25) #8
  br label %63

26:                                               ; preds = %15
  %27 = load i32, ptr %1, align 4
  store i32 %27, ptr %4, align 8
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 2
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %4, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.drm_driver, ptr %40, i32 0, i32 24
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %10, align 4
  %44 = and i32 %42, 2
  %45 = and i32 %44, %43
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %63

47:                                               ; preds = %26
  %48 = call ptr @drm_internal_framebuffer_create(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #8
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %52) #8
  %53 = load i32, ptr %51, align 4
  store i32 %53, ptr %4, align 8
  %54 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 21
  call void @mutex_lock(ptr noundef %54) #8
  %55 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 14
  %56 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 20
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store ptr %57, ptr %55, align 4
  %59 = getelementptr inbounds %struct.drm_framebuffer, ptr %48, i32 0, i32 14, i32 1
  store ptr %56, ptr %59, align 4
  store volatile ptr %55, ptr %56, align 4
  call void @mutex_unlock(ptr noundef %54) #8
  %60 = load i32, ptr %4, align 8
  store i32 %60, ptr %1, align 4
  br label %63

61:                                               ; preds = %47
  %62 = ptrtoint ptr %48 to i32
  br label %63

63:                                               ; preds = %61, %50, %26, %23, %3
  %64 = phi i32 [ -22, %23 ], [ 0, %50 ], [ -95, %3 ], [ %62, %61 ], [ -95, %26 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %4) #8
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_driver_legacy_fb_format(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_addfb2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = tail call ptr @drm_internal_framebuffer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %20) #8
  %21 = load i32, ptr %19, align 4
  store i32 %21, ptr %1, align 8
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 14
  %24 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %23, ptr %26, align 4
  store ptr %25, ptr %23, align 4
  %27 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 14, i32 1
  store ptr %24, ptr %27, align 4
  store volatile ptr %23, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %22) #8
  br label %28

28:                                               ; preds = %18, %16, %3
  %29 = phi i32 [ %17, %16 ], [ 0, %18 ], [ -95, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_addfb_ioctl(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @drm_mode_addfb(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_internal_framebuffer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %5) #8
  br label %192

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %12, %15
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %12, i32 noundef %10, i32 noundef %15) #8
  br label %192

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = icmp ugt i32 %21, %23
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %23, %26
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %23, i32 noundef %21, i32 noundef %26) #8
  br label %192

30:                                               ; preds = %19
  %31 = and i32 %5, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 97
  %35 = load i8, ptr %34, align 4, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #8
  br label %192

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @__drm_format_info(i32 noundef %40) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef %39) #8
  br label %192

44:                                               ; preds = %38
  %45 = load i32, ptr %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef 0) #8
  br label %192

48:                                               ; preds = %44
  %49 = load i32, ptr %22, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef 0) #8
  br label %192

52:                                               ; preds = %48
  %53 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %1) #8
  %54 = getelementptr inbounds %struct.drm_format_info, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.drm_format_info, ptr %53, i32 0, i32 6
  %59 = getelementptr inbounds %struct.drm_format_info, ptr %53, i32 0, i32 7
  %60 = getelementptr inbounds %struct.drm_format_info, ptr %53, i32 0, i32 3
  %61 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8
  br label %67

62:                                               ; preds = %152
  %63 = icmp ult i8 %154, 4
  br i1 %63, label %64, label %185

64:                                               ; preds = %62, %52
  %65 = phi i8 [ %154, %62 ], [ 0, %52 ]
  %66 = zext i8 %65 to i32
  br label %157

67:                                               ; preds = %152, %57
  %68 = phi i32 [ 0, %57 ], [ %153, %152 ]
  %69 = load i32, ptr %11, align 4
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, ptr %22, align 8
  br label %85

73:                                               ; preds = %67
  %74 = load i8, ptr %58, align 2
  %75 = zext i8 %74 to i32
  %76 = add i32 %69, -1
  %77 = add i32 %76, %75
  %78 = sdiv i32 %77, %75
  %79 = load i32, ptr %22, align 8
  %80 = load i8, ptr %59, align 1
  %81 = zext i8 %80 to i32
  %82 = add i32 %79, -1
  %83 = add i32 %82, %81
  %84 = sdiv i32 %83, %81
  br label %85

85:                                               ; preds = %73, %71
  %86 = phi i32 [ %78, %73 ], [ %69, %71 ]
  %87 = phi i32 [ %84, %73 ], [ %72, %71 ]
  %88 = getelementptr [4 x i8], ptr %60, i32 0, i32 %68
  %89 = load i8, ptr %88, align 1
  %90 = tail call i64 @drm_format_info_min_pitch(ptr noundef %53, i32 noundef %68, i32 noundef %86) #8
  %91 = icmp eq i8 %89, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8, i32 %68
  %94 = load i64, ptr %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %68) #8
  br label %192

97:                                               ; preds = %92, %85
  %98 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 %68
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %68) #8
  br label %192

102:                                              ; preds = %97
  %103 = icmp ugt i64 %90, 4294967295
  br i1 %103, label %192, label %104

104:                                              ; preds = %102
  %105 = zext i32 %87 to i64
  %106 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 %68
  %107 = load i32, ptr %106, align 4
  %108 = zext i32 %107 to i64
  %109 = mul nuw i64 %108, %105
  %110 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 %68
  %111 = load i32, ptr %110, align 4
  %112 = zext i32 %111 to i64
  %113 = add nuw i64 %109, %112
  %114 = icmp ugt i64 %113, 4294967295
  br i1 %114, label %192, label %115

115:                                              ; preds = %104
  %116 = xor i1 %91, true
  %117 = icmp ugt i64 %90, %108
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %107, i32 noundef %68) #8
  br label %192

120:                                              ; preds = %115
  %121 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8, i32 %68
  %122 = load i64, ptr %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = load i32, ptr %4, align 8
  %125 = and i32 %124, 2
  %126 = icmp eq i32 %125, 0
  br i1 %123, label %129, label %127

127:                                              ; preds = %120
  br i1 %126, label %128, label %130

128:                                              ; preds = %127
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29, i64 noundef %122, i32 noundef %68) #8
  br label %192

129:                                              ; preds = %120
  br i1 %126, label %152, label %133

130:                                              ; preds = %127
  %131 = load i64, ptr %61, align 8
  %132 = icmp eq i64 %122, %131
  br i1 %132, label %137, label %136

133:                                              ; preds = %129
  %134 = load i64, ptr %61, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %152, label %136

136:                                              ; preds = %133, %130
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29, i64 noundef %122, i32 noundef %68) #8
  br label %192

137:                                              ; preds = %130
  %138 = icmp eq i64 %122, 288230376151711745
  br i1 %138, label %139, label %152

139:                                              ; preds = %137
  %140 = load i32, ptr %39, align 4
  %141 = icmp eq i32 %140, 842094158
  %142 = and i32 %86, 127
  %143 = icmp eq i32 %142, 0
  %144 = and i1 %143, %141
  %145 = and i32 %87, 31
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %144, i1 %146, i1 false
  %148 = and i32 %107, 127
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %152, label %151

151:                                              ; preds = %139
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %68) #8
  br label %192

152:                                              ; preds = %139, %137, %133, %129
  %153 = add nuw nsw i32 %68, 1
  %154 = load i8, ptr %54, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp ult i32 %153, %155
  br i1 %156, label %67, label %62

157:                                              ; preds = %182, %64
  %158 = phi i32 [ %66, %64 ], [ %183, %182 ]
  %159 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8, i32 %158
  %160 = load i64, ptr %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %158) #8
  br label %192

163:                                              ; preds = %157
  %164 = load i32, ptr %4, align 8
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %163
  %168 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 %158
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %158) #8
  br label %192

172:                                              ; preds = %167
  %173 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 %158
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %158) #8
  br label %192

177:                                              ; preds = %172
  %178 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 %158
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %158) #8
  br label %192

182:                                              ; preds = %177, %163
  %183 = add nuw nsw i32 %158, 1
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %157

185:                                              ; preds = %182, %62
  %186 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %187 = load ptr, ptr %186, align 4
  %188 = load ptr, ptr %187, align 4
  %189 = tail call ptr %188(ptr noundef %0, ptr noundef %2, ptr noundef %1) #8
  %190 = icmp ugt ptr %189, inttoptr (i32 -4096 to ptr)
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #8
  br label %192

192:                                              ; preds = %191, %185, %181, %176, %171, %162, %151, %136, %128, %119, %104, %102, %101, %96, %51, %47, %43, %37, %29, %18, %7
  %193 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %29 ], [ %189, %191 ], [ inttoptr (i32 -22 to ptr), %37 ], [ %189, %185 ], [ inttoptr (i32 -22 to ptr), %119 ], [ inttoptr (i32 -22 to ptr), %136 ], [ inttoptr (i32 -22 to ptr), %151 ], [ inttoptr (i32 -22 to ptr), %128 ], [ inttoptr (i32 -22 to ptr), %101 ], [ inttoptr (i32 -22 to ptr), %96 ], [ inttoptr (i32 -22 to ptr), %43 ], [ inttoptr (i32 -22 to ptr), %181 ], [ inttoptr (i32 -22 to ptr), %176 ], [ inttoptr (i32 -22 to ptr), %171 ], [ inttoptr (i32 -22 to ptr), %162 ], [ inttoptr (i32 -22 to ptr), %51 ], [ inttoptr (i32 -22 to ptr), %47 ], [ inttoptr (i32 -34 to ptr), %102 ], [ inttoptr (i32 -34 to ptr), %104 ]
  ret ptr %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_addfb2_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = tail call ptr @drm_internal_framebuffer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %28

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %20) #8
  %21 = load i32, ptr %19, align 4
  store i32 %21, ptr %1, align 8
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 14
  %24 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %23, ptr %26, align 4
  store ptr %25, ptr %23, align 4
  %27 = getelementptr inbounds %struct.drm_framebuffer, ptr %14, i32 0, i32 14, i32 1
  store ptr %24, ptr %27, align 4
  store volatile ptr %23, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %22) #8
  br label %28

28:                                               ; preds = %18, %16, %3
  %29 = phi i32 [ %17, %16 ], [ 0, %18 ], [ -95, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_rmfb(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_mode_rmfb_work, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %8, 2
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %55

14:                                               ; preds = %3
  %15 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef -67372037) #8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -12
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %55, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %21) #8
  %22 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %35, label %25

25:                                               ; preds = %25, %20
  %26 = phi ptr [ %31, %25 ], [ %23, %20 ]
  %27 = phi i32 [ %30, %25 ], [ 0, %20 ]
  %28 = getelementptr i8, ptr %26, i32 -116
  %29 = icmp eq ptr %17, %28
  %30 = select i1 %29, i32 1, i32 %27
  %31 = load ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, %22
  br i1 %32, label %33, label %25

33:                                               ; preds = %25
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33, %20
  tail call void @mutex_unlock(ptr noundef %21) #8
  tail call void @drm_mode_object_put(ptr noundef %15) #8
  br label %55

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %15, i32 104
  %38 = getelementptr i8, ptr %15, i32 108
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %37, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store volatile ptr %37, ptr %37, align 4
  store ptr %37, ptr %38, align 4
  tail call void @mutex_unlock(ptr noundef %21) #8
  tail call void @drm_mode_object_put(ptr noundef %15) #8
  %42 = getelementptr i8, ptr %15, i32 12
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  store i32 -32, ptr %4, align 4
  %46 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 1, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.work_struct, ptr %4, i32 0, i32 2
  store ptr @drm_mode_rmfb_work_fn, ptr %48, align 4
  %49 = getelementptr inbounds %struct.drm_mode_rmfb_work, ptr %4, i32 0, i32 1
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.drm_mode_rmfb_work, ptr %4, i32 0, i32 1, i32 1
  store ptr %37, ptr %50, align 4
  store ptr %49, ptr %37, align 4
  store ptr %49, ptr %38, align 4
  store volatile ptr %37, ptr %49, align 4
  %51 = load ptr, ptr @system_wq, align 4
  %52 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %51, ptr noundef nonnull %4) #8
  %53 = call zeroext i1 @flush_work(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %55

54:                                               ; preds = %36
  tail call void @drm_mode_object_put(ptr noundef %15) #8
  br label %55

55:                                               ; preds = %54, %45, %35, %14, %3
  %56 = phi i32 [ -2, %35 ], [ -95, %3 ], [ -2, %14 ], [ 0, %54 ], [ 0, %45 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @drm_framebuffer_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef -67372037) #8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -12
  %7 = select i1 %5, ptr null, ptr %6
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_mode_rmfb_work_fn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_mode_rmfb_work, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %5

5:                                                ; preds = %13, %1
  %6 = phi ptr [ %21, %13 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -116
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ null, %5 ]
  %15 = getelementptr i8, ptr %6, i32 -104
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %16) #8
  %17 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %17, align 4
  tail call void @drm_framebuffer_remove(ptr noundef %7)
  %21 = load volatile ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %5

23:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_rmfb_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = tail call i32 @drm_mode_rmfb(ptr noundef %0, i32 noundef %4, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getfb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %66

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  %15 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %14, i32 noundef -67372037) #8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -12
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %66, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %15, i32 36
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp ugt i8 %24, 1
  br i1 %25, label %64, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %15, i32 40
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %15, i32 88
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr i8, ptr %15, i32 84
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %21, align 8
  %40 = getelementptr inbounds %struct.drm_format_info, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %21, align 8
  %45 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 3
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 3
  %49 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %15, i32 44
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = tail call zeroext i1 @drm_is_current_master(ptr noundef %2) #8
  br i1 %53, label %58, label %54

54:                                               ; preds = %32
  %55 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 6
  store i32 0, ptr %57, align 4
  br label %64

58:                                               ; preds = %54, %32
  %59 = load ptr, ptr %27, align 4
  %60 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.drm_mode_fb_cmd, ptr %1, i32 0, i32 6
  %63 = tail call i32 %61(ptr noundef nonnull %17, ptr noundef %2, ptr noundef %62) #8
  br label %64

64:                                               ; preds = %58, %56, %26, %20
  %65 = phi i32 [ %63, %58 ], [ 0, %56 ], [ -22, %20 ], [ -19, %26 ]
  tail call void @drm_mode_object_put(ptr noundef nonnull %15) #8
  br label %66

66:                                               ; preds = %64, %13, %3
  %67 = phi i32 [ %65, %64 ], [ -95, %3 ], [ -2, %13 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_is_current_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getfb2_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %194

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 8
  %15 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %14, i32 noundef -67372037) #8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -12
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %194, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %15, i32 112
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %15, i32 36
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.drm_format_info, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = icmp ugt i8 %28, 1
  br i1 %29, label %136, label %30

30:                                               ; preds = %24
  %31 = getelementptr i8, ptr %15, i32 40
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %136, label %36

36:                                               ; preds = %30, %20
  %37 = getelementptr i8, ptr %15, i32 88
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  %40 = getelementptr i8, ptr %15, i32 84
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr i8, ptr %15, i32 36
  %44 = load ptr, ptr %43, align 8
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 4
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 97
  %49 = load i8, ptr %48, align 4, !range !8
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 0, i32 2
  store i32 %51, ptr %47, align 8
  %52 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 0
  %53 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8, i32 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(48) %52, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %53, i8 0, i64 32, i1 false)
  %54 = load ptr, ptr %43, align 8
  %55 = getelementptr inbounds %struct.drm_format_info, ptr %54, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %36
  %59 = getelementptr i8, ptr %15, i32 76
  br label %60

60:                                               ; preds = %73, %58
  %61 = phi i32 [ 0, %58 ], [ %74, %73 ]
  %62 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 6, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 %61
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 7, i32 %61
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 %61
  store i32 %66, ptr %67, align 4
  %68 = load i8, ptr %48, align 4, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i64, ptr %59, align 8
  %72 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8, i32 %61
  store i64 %71, ptr %72, align 8
  br label %73

73:                                               ; preds = %70, %60
  %74 = add nuw nsw i32 %61, 1
  %75 = load ptr, ptr %43, align 8
  %76 = getelementptr inbounds %struct.drm_format_info, ptr %75, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ult i32 %74, %78
  br i1 %79, label %60, label %80

80:                                               ; preds = %73, %36
  %81 = tail call zeroext i1 @drm_is_current_master(ptr noundef %2) #8
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %83, label %84, label %192

84:                                               ; preds = %82, %80
  %85 = load ptr, ptr %43, align 8
  %86 = getelementptr inbounds %struct.drm_format_info, ptr %85, i32 0, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %192, label %89

89:                                               ; preds = %84
  %90 = getelementptr i8, ptr %15, i32 40
  br label %91

91:                                               ; preds = %129, %89
  %92 = phi i32 [ 0, %89 ], [ %130, %129 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %91
  %95 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 15, i32 %92
  %96 = load ptr, ptr %95, align 4
  br label %97

97:                                               ; preds = %106, %94
  %98 = phi i32 [ 0, %94 ], [ %107, %106 ]
  %99 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 15, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %96, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 %98
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 %92
  store i32 %104, ptr %105, align 4
  br label %109

106:                                              ; preds = %97
  %107 = add nuw nsw i32 %98, 1
  %108 = icmp eq i32 %107, %92
  br i1 %108, label %109, label %97

109:                                              ; preds = %106, %102, %91
  %110 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 %92
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = getelementptr %struct.drm_framebuffer, ptr %17, i32 0, i32 15, i32 %92
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = tail call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef nonnull %115, ptr noundef %110) #8
  br label %126

119:                                              ; preds = %113
  br i1 %93, label %121, label %120, !prof !9

120:                                              ; preds = %119
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 644, i32 noundef 9, ptr noundef null) #8
  br label %121

121:                                              ; preds = %120, %119
  %122 = load ptr, ptr %90, align 4
  %123 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = tail call i32 %124(ptr noundef nonnull %17, ptr noundef %2, ptr noundef %110) #8
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi i32 [ %118, %117 ], [ %125, %121 ]
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %126, %109
  %130 = add nuw nsw i32 %92, 1
  %131 = load ptr, ptr %43, align 8
  %132 = getelementptr inbounds %struct.drm_format_info, ptr %131, i32 0, i32 2
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp ult i32 %130, %134
  br i1 %135, label %91, label %192

136:                                              ; preds = %126, %30, %24
  %137 = phi i32 [ -19, %24 ], [ -19, %30 ], [ %127, %126 ]
  %138 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 0
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %175, label %173

141:                                              ; preds = %191, %187
  %142 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 1
  %143 = icmp eq i32 %182, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = tail call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %182) #8
  br label %146

146:                                              ; preds = %144, %141
  %147 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = load i32, ptr %142, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, ptr %147, align 4
  br label %152

152:                                              ; preds = %151, %146
  %153 = phi i32 [ 0, %151 ], [ %148, %146 ]
  %154 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, %149
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 0, ptr %154, align 4
  br label %158

158:                                              ; preds = %157, %152
  %159 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 2
  %160 = icmp eq i32 %153, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = tail call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %153) #8
  br label %163

163:                                              ; preds = %161, %158
  %164 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 3
  %165 = load i32, ptr %164, align 4
  %166 = load i32, ptr %159, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 0, ptr %164, align 4
  br label %192

169:                                              ; preds = %163
  %170 = icmp eq i32 %165, 0
  br i1 %170, label %192, label %171

171:                                              ; preds = %169
  %172 = tail call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %165) #8
  br label %192

173:                                              ; preds = %136
  %174 = tail call i32 @drm_gem_handle_delete(ptr noundef %2, i32 noundef %139) #8
  br label %175

175:                                              ; preds = %173, %136
  %176 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = load i32, ptr %138, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store i32 0, ptr %176, align 4
  br label %181

181:                                              ; preds = %180, %175
  %182 = phi i32 [ %177, %175 ], [ 0, %180 ]
  %183 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, %178
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 0, ptr %183, align 4
  br label %187

187:                                              ; preds = %186, %181
  %188 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 5, i32 3
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %178
  br i1 %190, label %191, label %141

191:                                              ; preds = %187
  store i32 0, ptr %188, align 4
  br label %141

192:                                              ; preds = %171, %169, %168, %129, %84, %82
  %193 = phi i32 [ 0, %82 ], [ 0, %84 ], [ %137, %169 ], [ %137, %171 ], [ %137, %168 ], [ 0, %129 ]
  tail call void @drm_mode_object_put(ptr noundef %15) #8
  br label %194

194:                                              ; preds = %192, %13, %3
  %195 = phi i32 [ %193, %192 ], [ -22, %3 ], [ -2, %13 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_mode_dirtyfb_ioctl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %7, 2
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %79

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 8
  %15 = tail call ptr @__drm_mode_object_find(ptr noundef %0, ptr noundef %2, i32 noundef %14, i32 noundef -67372037) #8
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -12
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  br i1 %19, label %79, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.drm_mode_fb_dirty_cmd, ptr %1, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_mode_fb_dirty_cmd, ptr %1, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp ne i32 %22, 0
  %28 = icmp ne i32 %25, 0
  %29 = xor i1 %27, %28
  br i1 %29, label %77, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.drm_mode_fb_dirty_cmd, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 3
  %34 = and i32 %32, 1
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %22, 1
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %30
  %40 = select i1 %27, i1 %28, i1 false
  br i1 %40, label %41, label %63

41:                                               ; preds = %39
  %42 = icmp ugt i32 %22, 256
  br i1 %42, label %77, label %43

43:                                               ; preds = %41
  %44 = shl nuw nsw i32 %22, 3
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %77, label %47

47:                                               ; preds = %43
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %26, i32 %44, i32 -1090519040) #10, !srcloc !10
  %49 = extractvalue { i32, i32 } %48, 0
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59, !prof !9

51:                                               ; preds = %47
  %52 = tail call ptr @llvm.thread.pointer() #8
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #11, !srcloc !11
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %57 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %45, ptr noundef nonnull %26, i32 noundef %44) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #8, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59, !prof !9

59:                                               ; preds = %51, %47
  %60 = phi i32 [ %57, %51 ], [ %44, %47 ]
  %61 = sub i32 %44, %60
  %62 = getelementptr i8, ptr %45, i32 %61
  tail call void @llvm.memset.p0.i32(ptr align 1 %62, i8 0, i32 %60, i1 false) #8
  br label %74

63:                                               ; preds = %51, %39
  %64 = phi ptr [ null, %39 ], [ %45, %51 ]
  %65 = getelementptr i8, ptr %15, i32 40
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.drm_framebuffer_funcs, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.drm_mode_fb_dirty_cmd, ptr %1, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = tail call i32 %68(ptr noundef nonnull %17, ptr noundef %2, i32 noundef %33, i32 noundef %72, ptr noundef %64, i32 noundef %22) #8
  br label %74

74:                                               ; preds = %70, %63, %59
  %75 = phi ptr [ %64, %70 ], [ %64, %63 ], [ %45, %59 ]
  %76 = phi i32 [ %73, %70 ], [ -38, %63 ], [ -14, %59 ]
  tail call void @kfree(ptr noundef %75) #8
  br label %77

77:                                               ; preds = %74, %43, %41, %30, %20
  %78 = phi i32 [ %76, %74 ], [ -22, %20 ], [ -22, %30 ], [ -22, %41 ], [ -12, %43 ]
  tail call void @drm_mode_object_put(ptr noundef nonnull %15) #8
  br label %79

79:                                               ; preds = %77, %13, %3
  %80 = phi i32 [ %78, %77 ], [ -95, %3 ], [ -2, %13 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_fb_release(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.drm_mode_rmfb_work, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 16, i1 false), !annotation !14
  %3 = getelementptr inbounds %struct.drm_mode_rmfb_work, ptr %2, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.drm_mode_rmfb_work, ptr %2, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %23, label %8

8:                                                ; preds = %21, %1
  %9 = phi ptr [ %10, %21 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 -92
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 1
  %14 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %10, ptr %15, align 4
  br i1 %13, label %17, label %19

17:                                               ; preds = %8
  %18 = load ptr, ptr %4, align 4
  store ptr %9, ptr %4, align 4
  store ptr %3, ptr %9, align 4
  store ptr %18, ptr %14, align 4
  store volatile ptr %9, ptr %18, align 4
  br label %21

19:                                               ; preds = %8
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %14, align 4
  %20 = getelementptr i8, ptr %9, i32 -104
  call void @drm_mode_object_put(ptr noundef %20) #8
  br label %21

21:                                               ; preds = %19, %17
  %22 = icmp eq ptr %10, %5
  br i1 %22, label %23, label %8

23:                                               ; preds = %21, %1
  %24 = load volatile ptr, ptr %3, align 4
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  store i32 -32, ptr %2, align 4
  %27 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 1, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.work_struct, ptr %2, i32 0, i32 2
  store ptr @drm_mode_rmfb_work_fn, ptr %29, align 4
  %30 = load ptr, ptr @system_wq, align 4
  %31 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef nonnull %2) #8
  %32 = call zeroext i1 @flush_work(ptr noundef nonnull %2) #8
  br label %33

33:                                               ; preds = %26, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 -12
  tail call void @drm_mode_object_unregister(ptr noundef %3, ptr noundef %4) #8
  %5 = getelementptr i8, ptr %0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_framebuffer_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 8
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i1 [ true, %3 ], [ %9, %6 ]
  %12 = load i1, ptr @drm_framebuffer_init.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !15

15:                                               ; preds = %10
  store i1 true, ptr @drm_framebuffer_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 849, i32 noundef 9, ptr noundef null) #8
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %38, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 14
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 14, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 5
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 3
  %22 = tail call ptr @llvm.thread.pointer() #8
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 85
  %24 = tail call ptr @strcpy(ptr noundef %21, ptr noundef %23)
  %25 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 2
  %26 = tail call i32 @__drm_mode_object_add(ptr noundef %0, ptr noundef %25, i32 noundef -67372037, i1 noundef zeroext false, ptr noundef nonnull @drm_framebuffer_free) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 6
  tail call void @mutex_lock(ptr noundef %29) #8
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %33, ptr %36, align 4
  store ptr %35, ptr %33, align 4
  %37 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 1, i32 1
  store ptr %34, ptr %37, align 4
  store volatile ptr %33, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %29) #8
  tail call void @drm_mode_object_register(ptr noundef %0, ptr noundef %25) #8
  br label %38

38:                                               ; preds = %28, %17, %16
  %39 = phi i32 [ -22, %16 ], [ %26, %17 ], [ 0, %28 ]
  ret i32 %39
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_mode_object_add(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_unregister_private(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  tail call void @drm_mode_object_unregister(ptr noundef %4, ptr noundef %5) #8
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_cleanup(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 6
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_remove(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %227, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 14
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1109, i32 noundef 9, ptr noundef null) #8
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %225

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 24
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %18, 16
  %22 = and i32 %21, %20
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %32, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %164, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %164, label %32

32:                                               ; preds = %28, %14
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false) #8, !annotation !14
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 18
  %35 = icmp eq ptr %33, null
  %36 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %37 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  br label %38

38:                                               ; preds = %157, %32
  %39 = phi i1 [ false, %32 ], [ true, %157 ]
  call void @drm_modeset_acquire_init(ptr noundef nonnull %2, i32 noundef 0) #8
  %40 = call ptr @drm_atomic_state_alloc(ptr noundef %33) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %157, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 9
  store ptr %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 4
  %45 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 5
  %46 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 6
  br label %47

47:                                               ; preds = %146, %42
  %48 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %33, ptr noundef nonnull %2) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %143

50:                                               ; preds = %47
  %51 = load ptr, ptr %34, align 4
  %52 = icmp eq ptr %51, %34
  br i1 %52, label %53, label %57

53:                                               ; preds = %117, %50
  %54 = phi i32 [ 0, %50 ], [ %118, %117 ]
  %55 = load i32, ptr %45, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %121, label %139

57:                                               ; preds = %117, %50
  %58 = phi ptr [ %119, %117 ], [ %51, %50 ]
  %59 = phi i32 [ %118, %117 ], [ 0, %50 ]
  %60 = getelementptr i8, ptr %58, i32 -4
  %61 = getelementptr i8, ptr %58, i32 416
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.drm_plane_state, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %117

66:                                               ; preds = %57
  br i1 %35, label %69, label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %36, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi ptr [ %68, %67 ], [ null, %66 ]
  %71 = getelementptr i8, ptr %58, i32 44
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr i8, ptr %58, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = load i32, ptr %37, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %70, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %72, ptr noundef %74, i32 noundef %75) #8
  %76 = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %40, ptr noundef %60) #8
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = ptrtoint ptr %76 to i32
  br label %143

80:                                               ; preds = %69
  br i1 %39, label %81, label %109

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.drm_plane_state, ptr %76, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.drm_crtc, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, %60
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  br i1 %35, label %90, label %88

88:                                               ; preds = %87
  %89 = load ptr, ptr %36, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi ptr [ %89, %88 ], [ null, %87 ]
  %92 = getelementptr inbounds %struct.drm_crtc, ptr %83, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.drm_crtc, ptr %83, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = load i32, ptr %37, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %91, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %93, ptr noundef %95, i32 noundef %96) #8
  %97 = load ptr, ptr %82, align 4
  %98 = load ptr, ptr %44, align 4
  %99 = getelementptr inbounds %struct.drm_crtc, ptr %97, i32 0, i32 8
  %100 = load i32, ptr %99, align 8
  %101 = getelementptr %struct.__drm_crtcs_state, ptr %98, i32 %100, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @drm_atomic_add_affected_connectors(ptr noundef nonnull %40, ptr noundef %97) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.drm_crtc_state, ptr %102, i32 0, i32 2
  store i8 0, ptr %106, align 1
  %107 = call i32 @drm_atomic_set_mode_for_crtc(ptr noundef %102, ptr noundef null) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %105, %81, %80
  call void @drm_atomic_set_fb_for_plane(ptr noundef %76, ptr noundef null) #8
  %110 = call i32 @drm_atomic_set_crtc_for_plane(ptr noundef %76, ptr noundef null) #8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %143

112:                                              ; preds = %109
  %113 = getelementptr i8, ptr %58, i32 408
  %114 = load i32, ptr %113, align 4
  %115 = shl nuw i32 1, %114
  %116 = or i32 %115, %59
  br label %117

117:                                              ; preds = %112, %57
  %118 = phi i32 [ %59, %57 ], [ %116, %112 ]
  %119 = load ptr, ptr %58, align 4
  %120 = icmp eq ptr %119, %34
  br i1 %120, label %53, label %57

121:                                              ; preds = %135, %53
  %122 = phi i32 [ %136, %135 ], [ %55, %53 ]
  %123 = phi i32 [ %137, %135 ], [ 0, %53 ]
  %124 = load ptr, ptr %46, align 4
  %125 = getelementptr %struct.__drm_connnectors_state, ptr %124, i32 %123
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = getelementptr %struct.__drm_connnectors_state, ptr %124, i32 %123, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = call i32 @drm_atomic_set_crtc_for_connector(ptr noundef %130, ptr noundef null) #8
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load i32, ptr %45, align 4
  br label %135

135:                                              ; preds = %133, %121
  %136 = phi i32 [ %134, %133 ], [ %122, %121 ]
  %137 = add nuw nsw i32 %123, 1
  %138 = icmp slt i32 %137, %136
  br i1 %138, label %121, label %139

139:                                              ; preds = %135, %53
  %140 = icmp eq i32 %54, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %139
  %142 = call i32 @drm_atomic_commit(ptr noundef nonnull %40) #8
  br label %143

143:                                              ; preds = %141, %128, %109, %105, %90, %78, %47
  %144 = phi i32 [ %48, %47 ], [ %142, %141 ], [ %79, %78 ], [ %131, %128 ], [ %110, %109 ], [ %103, %90 ], [ %107, %105 ]
  %145 = icmp eq i32 %144, -35
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  call void @drm_atomic_state_clear(ptr noundef nonnull %40) #8
  %147 = call i32 @drm_modeset_backoff(ptr noundef nonnull %2) #8
  br label %47

148:                                              ; preds = %143, %139
  %149 = phi i32 [ %144, %143 ], [ 0, %139 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %40) #8, !srcloc !17
  %150 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #8, !srcloc !18
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %157, label %155, !prof !9

155:                                              ; preds = %153
  call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef 3) #8
  br label %157

156:                                              ; preds = %148
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  call void @__drm_atomic_state_free(ptr noundef nonnull %40) #8
  br label %157

157:                                              ; preds = %156, %155, %153, %38
  %158 = phi i32 [ -12, %38 ], [ %149, %153 ], [ %149, %155 ], [ %149, %156 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %2) #8
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %2) #8
  %159 = icmp ne i32 %158, -22
  %160 = or i1 %39, %159
  br i1 %160, label %161, label %38

161:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #8
  %162 = icmp eq i32 %158, 0
  br i1 %162, label %225, label %163, !prof !9

163:                                              ; preds = %161
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1130, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %158) #8
  br label %225

164:                                              ; preds = %28, %24
  %165 = load ptr, ptr %0, align 8
  tail call void @drm_modeset_lock_all(ptr noundef %165) #8
  %166 = getelementptr inbounds %struct.drm_device, ptr %165, i32 0, i32 30, i32 20
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, %166
  br i1 %168, label %197, label %169

169:                                              ; preds = %164
  %170 = icmp eq ptr %165, null
  %171 = getelementptr inbounds %struct.drm_device, ptr %165, i32 0, i32 2
  %172 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  br label %173

173:                                              ; preds = %194, %169
  %174 = phi ptr [ %167, %169 ], [ %195, %194 ]
  %175 = getelementptr i8, ptr %174, i32 -8
  %176 = getelementptr i8, ptr %174, i32 64
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.drm_plane, ptr %177, i32 0, i32 12
  %179 = load ptr, ptr %178, align 8
  %180 = icmp eq ptr %179, %0
  br i1 %180, label %181, label %194

181:                                              ; preds = %173
  br i1 %170, label %184, label %182

182:                                              ; preds = %181
  %183 = load ptr, ptr %171, align 4
  br label %184

184:                                              ; preds = %182, %181
  %185 = phi ptr [ %183, %182 ], [ null, %181 ]
  %186 = getelementptr i8, ptr %174, i32 44
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr i8, ptr %174, i32 8
  %189 = load ptr, ptr %188, align 8
  %190 = load i32, ptr %172, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %185, i32 noundef 4, ptr noundef nonnull @.str.39, i32 noundef %187, ptr noundef %189, i32 noundef %190) #8
  %191 = tail call i32 @drm_crtc_force_disable(ptr noundef %175) #8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %184
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, ptr noundef %175) #8
  br label %194

194:                                              ; preds = %193, %184, %173
  %195 = load ptr, ptr %174, align 4
  %196 = icmp eq ptr %195, %166
  br i1 %196, label %197, label %173

197:                                              ; preds = %194, %164
  %198 = getelementptr inbounds %struct.drm_device, ptr %165, i32 0, i32 30, i32 18
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, %198
  br i1 %200, label %224, label %201

201:                                              ; preds = %197
  %202 = icmp eq ptr %165, null
  %203 = getelementptr inbounds %struct.drm_device, ptr %165, i32 0, i32 2
  %204 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  br label %205

205:                                              ; preds = %221, %201
  %206 = phi ptr [ %199, %201 ], [ %222, %221 ]
  %207 = getelementptr i8, ptr %206, i32 -4
  %208 = getelementptr i8, ptr %206, i32 92
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, %0
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  br i1 %202, label %214, label %212

212:                                              ; preds = %211
  %213 = load ptr, ptr %203, align 4
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi ptr [ %213, %212 ], [ null, %211 ]
  %216 = getelementptr i8, ptr %206, i32 44
  %217 = load i32, ptr %216, align 8
  %218 = getelementptr i8, ptr %206, i32 8
  %219 = load ptr, ptr %218, align 4
  %220 = load i32, ptr %204, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %215, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %217, ptr noundef %219, i32 noundef %220) #8
  tail call void @drm_plane_force_disable(ptr noundef %207) #8
  br label %221

221:                                              ; preds = %214, %205
  %222 = load ptr, ptr %206, align 4
  %223 = icmp eq ptr %222, %198
  br i1 %223, label %224, label %205

224:                                              ; preds = %221, %197
  tail call void @drm_modeset_unlock_all(ptr noundef %165) #8
  br label %225

225:                                              ; preds = %224, %163, %161, %10
  %226 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 2
  call void @drm_mode_object_put(ptr noundef %226) #8
  br label %227

227:                                              ; preds = %225, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_framebuffer_plane_width(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = add i32 %0, -1
  %17 = add i32 %16, %15
  %18 = sdiv i32 %17, %15
  br label %19

19:                                               ; preds = %12, %10, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %12 ], [ %0, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @drm_framebuffer_plane_height(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %0, -1
  %17 = add i32 %16, %15
  %18 = sdiv i32 %17, %15
  br label %19

19:                                               ; preds = %12, %10, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %12 ], [ %0, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_print_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef nonnull @.str.11, ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 2, i32 3
  %6 = load volatile i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef nonnull @.str.11, i32 noundef %6) #8
  %7 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %1, ptr noundef nonnull @.str.11, ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 8
  %10 = load i64, ptr %9, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %1, ptr noundef nonnull @.str.11, i64 noundef %10) #8
  %11 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, ptr %2, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %1, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %14) #8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %1, ptr noundef nonnull @.str.11) #8
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.drm_format_info, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %3
  %20 = add i32 %1, 1
  %21 = add i32 %1, 2
  %22 = load i32, ptr %11, align 8
  %23 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %22, i32 noundef %23) #8
  %24 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 6, i32 0
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %25) #8
  %26 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 7, i32 0
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %27) #8
  %28 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 15, i32 0
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull %31) #8
  %32 = load ptr, ptr %28, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  tail call void @drm_gem_print_info(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %32) #8
  br label %35

35:                                               ; preds = %34, %19
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.drm_format_info, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = icmp ugt i8 %38, 1
  br i1 %39, label %40, label %83

40:                                               ; preds = %35
  %41 = zext i8 %38 to i32
  br label %42

42:                                               ; preds = %76, %40
  %43 = phi i32 [ %41, %40 ], [ %81, %76 ]
  %44 = phi ptr [ %36, %40 ], [ %78, %76 ]
  %45 = phi i32 [ 1, %40 ], [ %77, %76 ]
  %46 = icmp ult i32 %45, %43
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, ptr %11, align 8
  %49 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 6
  %50 = load i8, ptr %49, align 2
  %51 = zext i8 %50 to i32
  %52 = add i32 %48, -1
  %53 = add i32 %52, %51
  %54 = sdiv i32 %53, %51
  %55 = load i32, ptr %13, align 4
  %56 = getelementptr inbounds %struct.drm_format_info, ptr %44, i32 0, i32 7
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add i32 %55, -1
  %60 = add i32 %59, %58
  %61 = sdiv i32 %60, %58
  br label %62

62:                                               ; preds = %47, %42
  %63 = phi i32 [ %54, %47 ], [ 0, %42 ]
  %64 = phi i32 [ %61, %47 ], [ 0, %42 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %63, i32 noundef %64) #8
  %65 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 6, i32 %45
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %66) #8
  %67 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 7, i32 %45
  %68 = load i32, ptr %67, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %68) #8
  %69 = getelementptr %struct.drm_framebuffer, ptr %2, i32 0, i32 15, i32 %45
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr @.str.22, ptr @.str.21
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %20, ptr noundef nonnull @.str.11, i32 noundef %45, ptr noundef nonnull %72) #8
  %73 = load ptr, ptr %69, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  tail call void @drm_gem_print_info(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %73) #8
  br label %76

76:                                               ; preds = %75, %62
  %77 = add nuw nsw i32 %45, 1
  %78 = load ptr, ptr %7, align 8
  %79 = getelementptr inbounds %struct.drm_format_info, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %42, label %83, !llvm.loop !20

83:                                               ; preds = %76, %35, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_print_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_framebuffer_debugfs_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_minor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @drm_framebuffer_debugfs_list, i32 noundef 1, ptr noundef %3, ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_format_info_min_pitch(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_mode_for_crtc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_set_fb_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_crtc_for_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_set_crtc_for_connector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_force_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_framebuffer_info(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.drm_printer, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  store ptr @__drm_printfn_seq_file, ptr %3, align 4, !alias.scope !22
  %9 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 1
  store ptr @__drm_puts_seq_file, ptr %9, align 4, !alias.scope !22
  %10 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 2
  store ptr %0, ptr %10, align 4, !alias.scope !22
  %11 = getelementptr inbounds %struct.drm_printer, ptr %3, i32 0, i32 3
  store ptr null, ptr %11, align 4, !alias.scope !22
  %12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 6
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = tail call zeroext i1 @mutex_is_locked(ptr noundef %12) #8
  br i1 %13, label %15, label %14, !prof !9

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1212, i32 noundef 9, ptr noundef null) #8
  br label %15

15:                                               ; preds = %14, %2
  %16 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %26, label %19

19:                                               ; preds = %19, %15
  %20 = phi ptr [ %24, %19 ], [ %17, %15 ]
  %21 = getelementptr i8, ptr %20, i32 -4
  %22 = getelementptr i8, ptr %20, i32 8
  %23 = load i32, ptr %22, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.42, i32 noundef %23) #8
  call void @drm_framebuffer_print_info(ptr noundef nonnull %3, i32 noundef 1, ptr noundef %21)
  %24 = load ptr, ptr %20, align 4
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %19

26:                                               ; preds = %19, %15
  call void @mutex_unlock(ptr noundef %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149937257, i64 2149937282}
!11 = !{i64 2433369}
!12 = !{i64 2433566}
!13 = !{i64 2149918845}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2148244854}
!17 = !{i64 578346, i64 2148079912, i64 2148079938, i64 2148079985, i64 2148080007, i64 2148080035, i64 2148080055}
!18 = !{i64 2148146989, i64 2148147021, i64 2148147050, i64 2148147084, i64 2148147115, i64 2148147138}
!19 = !{i64 2149285014}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.peeled.count", i32 1}
!22 = !{!23}
!23 = distinct !{!23, !24, !"drm_seq_file_printer: argument 0"}
!24 = distinct !{!24, !"drm_seq_file_printer"}
