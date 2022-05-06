; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.83, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.83 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_dspp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_dspp_ops }
%struct.dpu_hw_dspp_ops = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.75 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.76, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.76 = type { [4 x i8] }
%struct.dpu_multirect_plane_states = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.plane_state = type { ptr, ptr, i32, i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_hw_pcc_cfg = type { %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff }
%struct.dpu_hw_pcc_coeff = type { i32, i32, i32 }
%struct.dpu_hw_stage_cfg = type { [12 x [2 x i32]], [12 x [2 x i32]] }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }

@.str = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"crtc_commit\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"crtc%d first commit\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"crtc%d commit\0A\00", align 1
@dpu_crtc_funcs = internal constant %struct.drm_crtc_funcs { ptr @dpu_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @dpu_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @dpu_crtc_duplicate_state, ptr @dpu_crtc_destroy_state, ptr null, ptr null, ptr @dpu_crtc_late_register, ptr null, ptr @dpu_crtc_set_crc_source, ptr @dpu_crtc_verify_crc_source, ptr null, ptr @dpu_crtc_atomic_print_state, ptr @dpu_crtc_get_vblank_counter, ptr @msm_crtc_enable_vblank, ptr @msm_crtc_disable_vblank, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@dpu_crtc_helper_funcs = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_crtc_atomic_check, ptr @dpu_crtc_atomic_begin, ptr @dpu_crtc_atomic_flush, ptr @dpu_crtc_enable, ptr @dpu_crtc_disable, ptr @dpu_crtc_get_scanout_position }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"crtc%u\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: successfully initialized crtc\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"MISR read failed\0A\00", align 1
@__tracepoint_dpu_crtc_vblank_cb = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dpu_crtc_complete_commit = external dso_local global %struct.tracepoint, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: send event: %pK\0A\00", align 1
@__tracepoint_dpu_crtc_complete_flip = external dso_local global %struct.tracepoint, align 4
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_crtc_vblank = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_crtc_vblank_enable = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"crtc_frame_event\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"crtc%d event:%u ts:%lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d ts:%lld received panel dead event\0A\00", align 1
@__func__.dpu_crtc_frame_event_work = private unnamed_addr constant [26 x i8] c"dpu_crtc_frame_event_work\00", align 1
@__tracepoint_dpu_crtc_frame_event_done = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_crtc_frame_event_more_pending = external dso_local global %struct.tracepoint, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"\013[drm:%s:%d] [dpu error]failed to allocate state\0A\00", align 1
@__func__.dpu_crtc_duplicate_state = private unnamed_addr constant [25 x i8] c"dpu_crtc_duplicate_state\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"crtc%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@_dpu_debugfs_status_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_dpu_debugfs_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@dpu_crtc_debugfs_state_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_crtc_debugfs_state_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.17 = private unnamed_addr constant [28 x i8] c"crtc:%d width:%d height:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"\09mixer:%d ctl:%d width:%d height:%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\09plane:%u stage:%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\09fb:%d image format:%4.4s wxh:%ux%u \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"cpp[%d]:%u \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"modifier:%8llu \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"pitches[%d]:%8u \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"offsets[%d]:%8u \00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\09src_x:%4d src_y:%4d src_w:%4d src_h:%4d\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"\09dst x:%4d dst_y:%4d dst_w:%4d dst_h:%4d\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"\09multirect: mode: %d index: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"vblank fps:%lld count:%u total:%llums total_framecount:%llu\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"client type: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"intf_mode: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"core_clk_rate: %llu\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"bw_ctl: %llu\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"max_per_pipe_ib: %llu\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid CRC source %s for CRTC%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"lm\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Invalid source %s for CRTC%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"\09lm[%d]=%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"\09ctl[%d]=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"\09dspp[%d]=%d\0A\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"no encoder found for crtc %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"crtc%d -> enable %d, active %d, skip atomic_check\0A\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"%s: check\0A\00", align 1
@.str.48 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]%s: failed to get plane%d state, %d\0A\00", align 1
@__func__.dpu_crtc_atomic_check = private unnamed_addr constant [22 x i8] c"dpu_crtc_atomic_check\00", align 1
@.str.49 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]invalid vertical/horizontal destination\0A\00", align 1
@.str.50 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]display: %dx%d%+d%+d plane: %dx%d%+d%+d\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]r1 only virt plane:%d not supported\0A\00", align 1
@.str.52 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]> %d plane stages assigned\0A\00", align 1
@.str.53 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]> 2 planes @ stage %d on left\0A\00", align 1
@.str.54 = private unnamed_addr constant [57 x i8] c"\013[drm:%s:%d] [dpu error]> 2 planes @ stage %d on right\0A\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"%s: zpos %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [75 x i8] c"\013[drm:%s:%d] [dpu error]multirect validation failed for planes (%d - %d)\0A\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d failed performance check %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [97 x i8] c"\013[drm:%s:%d] [dpu error]invalid src split cfg. priority mismatch. stage: %d left: %d right: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [115 x i8] c"\013[drm:%s:%d] [dpu error]non-contiguous coordinates for src split. stage: %d left: %dx%d%+d%+d right: %dx%d%+d%+d\0A\00", align 1
@.str.60 = private unnamed_addr constant [111 x i8] c"\013[drm:%s:%d] [dpu error]source split at stage: %d. invalid yoff/height: left: %dx%d%+d%+d right: %dx%d%+d%+d\0A\00", align 1
@__tracepoint_dpu_crtc_setup_lm_bounds = external dso_local global %struct.tracepoint, align 4
@.str.61 = private unnamed_addr constant [40 x i8] c"crtc%d -> enable %d, skip atomic_begin\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"lm %d, op_mode 0x%X, ctl %d, flush mask 0x%x\0A\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"crtc %d stage:%d - plane %d sspp %d fb %d\0A\00", align 1
@__tracepoint_dpu_crtc_setup_mixer = external dso_local global %struct.tracepoint, align 4
@.str.65 = private unnamed_addr constant [41 x i8] c"format:%p4cc, alpha_en:%u blend_op:0x%x\0A\00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"lm %d, ctl %d, flush mask 0x%x\0A\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"crtc%d -> enable %d, skip atomic_flush\0A\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc index[%d]\0A\00", align 1
@__func__.dpu_crtc_atomic_flush = private unnamed_addr constant [22 x i8] c"dpu_crtc_atomic_flush\00", align 1
@dpu_crtc_frame_event_cb._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dpu_crtc_frame_event_cb = private unnamed_addr constant [24 x i8] c"dpu_crtc_frame_event_cb\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"*ERROR* crtc%d event %d overflow\0A\00", align 1
@__tracepoint_dpu_crtc_frame_event_cb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_crtc_enable = external dso_local global %struct.tracepoint, align 4
@.str.71 = private unnamed_addr constant [76 x i8] c"\013[drm:%s:%d] [dpu error]crtc%d wait for frame done failed;frame_pending%d\0A\00", align 1
@__func__.dpu_crtc_disable = private unnamed_addr constant [17 x i8] c"dpu_crtc_disable\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"no frames pending\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"frame done completion wait\00", align 1
@.str.74 = private unnamed_addr constant [35 x i8] c"frame done wait timed out, ret:%d\0A\00", align 1
@__tracepoint_dpu_crtc_disable = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_crtc_disable_frame_pending = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_crtc_get_intf_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 4
  %3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %2) #10
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #10
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 16
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  br label %9

9:                                                ; preds = %13, %5
  %10 = phi ptr [ %7, %5 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr inbounds %struct.drm_crtc_state, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %11, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %9, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %11, i32 -4
  %24 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %23) #10
  br label %25

25:                                               ; preds = %22, %9
  %26 = phi i32 [ %24, %22 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_intf_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_crtc_vblank_callback(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  %3 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i64 @ktime_get() #10
  store i64 %7, ptr %3, align 8
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !9
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_crtc_state, ptr %14, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dpu_crtc_state, ptr %14, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %45, label %24

22:                                               ; preds = %12
  %23 = add nsw i32 %16, 1
  store i32 %23, ptr %15, align 4
  br label %49

24:                                               ; preds = %41, %18
  %25 = phi i32 [ %42, %41 ], [ %20, %18 ]
  %26 = phi i32 [ %43, %41 ], [ 0, %18 ]
  %27 = getelementptr %struct.dpu_crtc_state, ptr %14, i32 0, i32 7, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %28, i32 0, i32 6, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr [2 x i32], ptr %2, i32 0, i32 %26
  %36 = call i32 %32(ptr noundef nonnull %28, ptr noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, ptr %19, align 8
  br label %41

40:                                               ; preds = %34
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #10
  br label %49

41:                                               ; preds = %38, %30, %24
  %42 = phi i32 [ %39, %38 ], [ %25, %24 ], [ %25, %30 ]
  %43 = add nuw i32 %26, 1
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %24, label %45

45:                                               ; preds = %41, %18
  %46 = call i64 @drm_crtc_accurate_vblank_count(ptr noundef %0) #10
  %47 = trunc i64 %46 to i32
  %48 = call i32 @drm_crtc_add_crc_entry(ptr noundef %0, i1 noundef zeroext true, i32 noundef %47, ptr noundef nonnull %2) #10
  br label %49

49:                                               ; preds = %45, %40, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %50 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %0) #10
  %51 = icmp eq ptr %0, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %54, %52 ], [ -1, %49 ]
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_cb, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = tail call ptr @llvm.thread.pointer() #10
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %71 = call i32 @__traceiter_dpu_crtc_vblank_cb(ptr noundef null, i32 noundef %56) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %72

72:                                               ; preds = %70, %59, %55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_crtc_complete_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_commit, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %22 = tail call i32 @__traceiter_dpu_crtc_complete_commit(ptr noundef null, i32 noundef %7) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %23

23:                                               ; preds = %21, %10, %6
  %24 = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #10
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  %28 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %32, ptr noundef nonnull %29) #10
  br i1 %2, label %36, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %35, %33 ], [ -1, %31 ]
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_flip, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #10
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  %52 = tail call i32 @__traceiter_dpu_crtc_complete_flip(ptr noundef null, i32 noundef %37) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  br label %53

53:                                               ; preds = %51, %40, %36
  %54 = load ptr, ptr %28, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %54) #10
  store ptr null, ptr %28, align 4
  br label %55

55:                                               ; preds = %53, %23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_perf_crtc_update(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_crtc_commit_kickoff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dpu_crtc_state, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %106, label %12, !prof !16

12:                                               ; preds = %1
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 53
  %15 = load i32, ptr %14, align 4
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %29 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %15, ptr noundef nonnull @.str.1, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %30 = load ptr, ptr %0, align 8
  br label %31

31:                                               ; preds = %28, %18, %12
  %32 = phi ptr [ %2, %12 ], [ %2, %18 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %55, label %36

36:                                               ; preds = %50, %31
  %37 = phi ptr [ %51, %50 ], [ %32, %31 ]
  %38 = phi ptr [ %52, %50 ], [ %34, %31 ]
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %38, i32 36
  %43 = load i32, ptr %42, align 4
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = getelementptr i8, ptr %38, i32 -4
  tail call void @dpu_encoder_prepare_for_kickoff(ptr noundef %48) #10
  %49 = load ptr, ptr %0, align 8
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi ptr [ %49, %47 ], [ %37, %36 ]
  %52 = load ptr, ptr %38, align 4
  %53 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 30, i32 16
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %36

55:                                               ; preds = %50, %31
  %56 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #10, !srcloc !20
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #10, !srcloc !21
  %58 = extractvalue { i32, i32 } %57, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !22
  %59 = icmp eq i32 %58, 1
  %60 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = select i1 %59, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull %62, i32 noundef %61) #10
  %63 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 5
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, ptr %63, align 8
  tail call void @dpu_vbif_clear_errors(ptr noundef %6) #10
  %66 = load ptr, ptr %0, align 8
  %67 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 16
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %89, label %70

70:                                               ; preds = %84, %55
  %71 = phi ptr [ %85, %84 ], [ %66, %55 ]
  %72 = phi ptr [ %86, %84 ], [ %68, %55 ]
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr inbounds %struct.drm_crtc_state, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i8, ptr %72, i32 36
  %77 = load i32, ptr %76, align 4
  %78 = shl nuw i32 1, %77
  %79 = and i32 %78, %75
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %70
  %82 = getelementptr i8, ptr %72, i32 -4
  tail call void @dpu_encoder_kickoff(ptr noundef %82) #10
  %83 = load ptr, ptr %0, align 8
  br label %84

84:                                               ; preds = %81, %70
  %85 = phi ptr [ %83, %81 ], [ %71, %70 ]
  %86 = load ptr, ptr %72, align 4
  %87 = getelementptr inbounds %struct.drm_device, ptr %85, i32 0, i32 30, i32 16
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %89, label %70

89:                                               ; preds = %84, %55
  %90 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 17
  store i32 0, ptr %90, align 4
  %91 = load i32, ptr %14, align 4
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %96 = load i32, ptr %95, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %94
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %105 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %91, ptr noundef nonnull @.str.1, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %106

106:                                              ; preds = %104, %94, %89, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_prepare_for_kickoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_clear_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_kickoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_crtc_vblank(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ -1, %2 ]
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %23 = tail call i32 @__traceiter_dpu_crtc_vblank(ptr noundef null, i32 noundef %8, i1 noundef zeroext %1, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %24

24:                                               ; preds = %22, %11, %7
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 30, i32 16
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  br label %31

31:                                               ; preds = %59, %29
  %32 = phi ptr [ %27, %29 ], [ %60, %59 ]
  %33 = getelementptr i8, ptr %32, i32 -4
  br i1 %3, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %35, %34 ], [ -1, %31 ]
  %38 = icmp eq ptr %33, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %32, i32 8
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %41, %39 ], [ -1, %36 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_enable, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #10
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  %58 = tail call i32 @__traceiter_dpu_crtc_vblank_enable(ptr noundef null, i32 noundef %37, i32 noundef %43, i1 noundef zeroext %1, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  br label %59

59:                                               ; preds = %57, %46, %42
  tail call void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef %33, ptr noundef %0, i1 noundef zeroext %1) #10
  %60 = load ptr, ptr %32, align 4
  %61 = load ptr, ptr %0, align 8
  %62 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 30, i32 16
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %64, label %31

64:                                               ; preds = %59, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_crtc_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1104) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 16
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 13
  store volatile i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 17
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #10
  %12 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 15
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0
  %14 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0, i32 2
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 15, i32 1
  store ptr %14, ptr %15, align 4
  store ptr %12, ptr %14, align 8
  store volatile ptr %14, ptr %12, align 8
  %16 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %16, i8 0, i32 12, i1 false)
  store volatile ptr %13, ptr %13, align 8
  %17 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 0, i32 1
  store ptr %13, ptr %17, align 4
  %18 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0, i32 0, i32 1
  store ptr @dpu_crtc_frame_event_work, ptr %18, align 8
  %19 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1
  %20 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1, i32 2
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 0, i32 2, i32 1
  store ptr %20, ptr %21, align 4
  store ptr %14, ptr %20, align 8
  store volatile ptr %20, ptr %12, align 8
  %22 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %22, i8 0, i32 12, i1 false)
  store volatile ptr %19, ptr %19, align 8
  %23 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1, i32 0, i32 0, i32 1
  store ptr %19, ptr %23, align 4
  %24 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1, i32 0, i32 1
  store ptr @dpu_crtc_frame_event_work, ptr %24, align 8
  %25 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2
  %26 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2, i32 2
  store volatile ptr %26, ptr %26, align 8
  %27 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 1, i32 2, i32 1
  store ptr %26, ptr %27, align 4
  store ptr %20, ptr %26, align 8
  store volatile ptr %26, ptr %12, align 8
  %28 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %28, i8 0, i32 12, i1 false)
  store volatile ptr %25, ptr %25, align 8
  %29 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2, i32 0, i32 0, i32 1
  store ptr %25, ptr %29, align 4
  %30 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2, i32 0, i32 1
  store ptr @dpu_crtc_frame_event_work, ptr %30, align 8
  %31 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3
  %32 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3, i32 2
  store volatile ptr %32, ptr %32, align 8
  %33 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3, i32 2, i32 1
  %34 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 2, i32 2, i32 1
  store ptr %32, ptr %34, align 4
  store ptr %26, ptr %32, align 8
  store ptr %12, ptr %33, align 4
  store volatile ptr %32, ptr %12, align 8
  %35 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %35, i8 0, i32 12, i1 false)
  store volatile ptr %31, ptr %31, align 8
  %36 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3, i32 0, i32 0, i32 1
  store ptr %31, ptr %36, align 4
  %37 = getelementptr %struct.dpu_crtc, ptr %5, i32 0, i32 14, i32 3, i32 0, i32 1
  store ptr @dpu_crtc_frame_event_work, ptr %37, align 8
  %38 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @dpu_crtc_funcs, ptr noundef null) #10
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 19
  store ptr @dpu_crtc_helper_funcs, ptr %39, align 4
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %5, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0) #10
  %40 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 1
  %41 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %40, i32 noundef 12, ptr noundef nonnull @.str.4, i32 noundef %42)
  %44 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 18
  store i32 0, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef %40) #10
  br label %45

45:                                               ; preds = %7, %3
  %46 = phi ptr [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %46
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_frame_event_work(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %6 = load i32, ptr %5, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %20 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %6, ptr noundef nonnull @.str.10, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %21

21:                                               ; preds = %19, %9, %1
  %22 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %23, i32 noundef %25, i64 noundef %27) #10
  %28 = load i32, ptr %24, align 8
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %85, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 13
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %81, label %35

35:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #10, !srcloc !20
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #10, !srcloc !28
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %38 = icmp eq i32 %37, 0
  %39 = icmp eq ptr %3, null
  br i1 %38, label %40, label %61

40:                                               ; preds = %35
  br i1 %39, label %43, label %41

41:                                               ; preds = %40
  %42 = load i32, ptr %22, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %42, %41 ], [ -1, %40 ]
  %45 = load i32, ptr %24, align 8
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_done, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %59 = tail call i32 @__traceiter_dpu_crtc_frame_event_done(ptr noundef null, i32 noundef %44, i32 noundef %45) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %60

60:                                               ; preds = %58, %48, %43
  tail call void @dpu_core_perf_crtc_release_bw(ptr noundef %3) #10
  br label %81

61:                                               ; preds = %35
  br i1 %39, label %64, label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %22, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ %63, %62 ], [ -1, %61 ]
  %66 = load i32, ptr %24, align 8
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %80 = tail call i32 @__traceiter_dpu_crtc_frame_event_more_pending(ptr noundef null, i32 noundef %65, i32 noundef %66) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %81

81:                                               ; preds = %79, %69, %64, %60, %31
  %82 = load i32, ptr %24, align 8
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %81, %21
  %86 = phi i32 [ %28, %21 ], [ %82, %81 ]
  %87 = phi i1 [ false, %21 ], [ %84, %81 ]
  %88 = and i32 %86, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %22, align 4
  %92 = load i64, ptr %26, align 8
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dpu_crtc_frame_event_work, i32 noundef 567, i32 noundef %91, i64 noundef %92) #12
  br label %94

94:                                               ; preds = %90, %85
  br i1 %87, label %95, label %97

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 17
  tail call void @complete_all(ptr noundef %96) #10
  br label %97

97:                                               ; preds = %95, %94
  %98 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 16
  %99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %98) #10
  %100 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %0, i32 0, i32 2
  %101 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 15
  %102 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 15, i32 1
  %103 = load ptr, ptr %102, align 4
  store ptr %100, ptr %102, align 4
  store ptr %101, ptr %100, align 4
  %104 = getelementptr inbounds %struct.dpu_crtc_frame_event, ptr %0, i32 0, i32 2, i32 1
  store ptr %103, ptr %104, align 4
  store volatile ptr %100, ptr %103, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %98, i32 noundef %99) #10
  %105 = load i32, ptr %5, align 4
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = lshr i32 %110, 5
  %112 = getelementptr i32, ptr @__cpu_online_mask, i32 %111
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %110, 31
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %113
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %119 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %105, ptr noundef nonnull @.str.10, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %120

120:                                              ; preds = %118, %108, %97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_complete_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_complete_flip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_vblank_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_core_perf_crtc_release_bw(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_more_pending(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 416) #11
  %4 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %9) #10
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %5) #10
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %10

10:                                               ; preds = %7, %1
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %0) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dpu_crtc_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 416, i32 noundef 3264) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.dpu_crtc_duplicate_state, i32 noundef 917) #12
  br label %9

8:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #10
  br label %9

9:                                                ; preds = %8, %6
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_destroy_state(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %4) #10
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_late_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @debugfs_create_dir(ptr noundef %2, ptr noundef %7) #10
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %8, ptr noundef %0, ptr noundef nonnull @_dpu_debugfs_status_fops) #10
  %10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 384, ptr noundef %8, ptr noundef %0, ptr noundef nonnull @dpu_crtc_debugfs_state_fops) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_set_crc_source(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.38) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.39) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(3) @.str.40) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, ptr noundef nonnull %1, i32 noundef %15) #10
  br label %66

16:                                               ; preds = %10, %7, %4, %2
  %17 = phi i1 [ false, %10 ], [ true, %4 ], [ true, %2 ], [ false, %7 ]
  %18 = phi i32 [ 1, %10 ], [ 0, %4 ], [ 0, %2 ], [ 1, %7 ]
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 4
  %21 = tail call i32 @drm_modeset_lock(ptr noundef %20, ptr noundef null) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %66

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.dpu_crtc_state, ptr %25, i32 0, i32 10
  %28 = load i32, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %29 = load i16, ptr %26, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %31 = icmp eq i32 %28, 0
  %32 = xor i1 %31, true
  %33 = or i1 %17, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = tail call i32 @drm_crtc_vblank_get(ptr noundef %0) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %64

37:                                               ; preds = %23
  %38 = xor i1 %17, true
  %39 = or i1 %31, %38
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @drm_crtc_vblank_put(ptr noundef %0) #10
  br label %41

41:                                               ; preds = %40, %37, %34
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #10
  store i32 %18, ptr %27, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !34
  %42 = load i16, ptr %26, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !35
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !36
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %44 = getelementptr inbounds %struct.dpu_crtc_state, ptr %25, i32 0, i32 11
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dpu_crtc_state, ptr %25, i32 0, i32 6
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %60, %41
  %49 = phi i32 [ %61, %60 ], [ %46, %41 ]
  %50 = phi i32 [ %62, %60 ], [ 0, %41 ]
  %51 = getelementptr %struct.dpu_crtc_state, ptr %25, i32 0, i32 7, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %52, i32 0, i32 6, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef nonnull %52, i1 noundef zeroext true, i32 noundef 1) #10
  %59 = load i32, ptr %45, align 8
  br label %60

60:                                               ; preds = %58, %54, %48
  %61 = phi i32 [ %49, %48 ], [ %49, %54 ], [ %59, %58 ]
  %62 = add nuw i32 %50, 1
  %63 = icmp ult i32 %62, %61
  br i1 %63, label %48, label %64

64:                                               ; preds = %60, %41, %34
  %65 = phi i32 [ %35, %34 ], [ 0, %41 ], [ 0, %60 ]
  tail call void @drm_modeset_unlock(ptr noundef %20) #10
  br label %66

66:                                               ; preds = %64, %16, %13
  %67 = phi i32 [ -22, %13 ], [ %65, %64 ], [ %21, %16 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_verify_crc_source(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.38) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.39) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(3) @.str.40) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, ptr noundef nonnull %1, i32 noundef %16) #10
  br label %22

17:                                               ; preds = %11, %8
  %18 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dpu_crtc_state, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  store i32 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %17, %14, %5, %3
  %23 = phi i32 [ -22, %14 ], [ 0, %17 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_print_state(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_crtc_state, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %25, %2
  %7 = phi i32 [ %26, %25 ], [ 0, %2 ]
  %8 = getelementptr %struct.dpu_crtc_state, ptr %1, i32 0, i32 7, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %7, i32 noundef %12) #10
  %13 = getelementptr %struct.dpu_crtc_state, ptr %1, i32 0, i32 7, i32 %7, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %7, i32 noundef %17) #10
  %18 = getelementptr %struct.dpu_crtc_state, ptr %1, i32 0, i32 7, i32 %7, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %19, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %7, i32 noundef %24) #10
  br label %25

25:                                               ; preds = %21, %6
  %26 = add nuw i32 %7, 1
  %27 = load i32, ptr %3, align 8
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %6, label %29

29:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_get_vblank_counter(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4
  %16 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %17) #10
  br label %20

18:                                               ; preds = %12
  %19 = tail call i32 @dpu_encoder_get_vsync_count(ptr noundef nonnull %13) #10
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_crtc_enable_vblank(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_crtc_disable_vblank(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_debugfs_status_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @_dpu_debugfs_status_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_debugfs_status_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  tail call void @drm_modeset_lock_all(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds %struct.dpu_crtc_state, ptr %8, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = udiv i32 %11, %13
  %15 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 6
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %16, i32 noundef %11, i32 noundef %19) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %20 = load i32, ptr %12, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %22, %2
  %23 = phi i32 [ %36, %22 ], [ 0, %2 ]
  %24 = getelementptr %struct.dpu_crtc_state, ptr %8, i32 0, i32 7, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, -1
  %29 = getelementptr %struct.dpu_crtc_state, ptr %8, i32 0, i32 7, i32 %23, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  %34 = load i16, ptr %17, align 2
  %35 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %28, i32 noundef %33, i32 noundef %14, i32 noundef %35) #10
  %36 = add nuw i32 %23, 1
  %37 = load i32, ptr %12, align 8
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %22, label %39

39:                                               ; preds = %22, %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %138, label %44

44:                                               ; preds = %133, %39
  %45 = phi ptr [ %134, %133 ], [ %40, %39 ]
  %46 = phi ptr [ %135, %133 ], [ %42, %39 ]
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.drm_crtc_state, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %46, i32 408
  %51 = load i32, ptr %50, align 4
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %49
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %133, label %55

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %46, i32 416
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %133, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %46, i32 44
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.dpu_plane_state, ptr %57, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %61, i32 noundef %63) #10
  %64 = load ptr, ptr %56, align 4
  %65 = getelementptr inbounds %struct.drm_plane_state, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %111, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 9
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %70, ptr noundef %72, i32 noundef %74, i32 noundef %76) #10
  %77 = load ptr, ptr %71, align 8
  %78 = getelementptr inbounds %struct.drm_format_info, ptr %77, i32 0, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 0, i32 noundef %80) #10
  %81 = load ptr, ptr %71, align 8
  %82 = getelementptr %struct.drm_format_info, ptr %81, i32 0, i32 3, i32 0, i32 1
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 1, i32 noundef %84) #10
  %85 = load ptr, ptr %71, align 8
  %86 = getelementptr %struct.drm_format_info, ptr %85, i32 0, i32 3, i32 0, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef %88) #10
  %89 = load ptr, ptr %71, align 8
  %90 = getelementptr %struct.drm_format_info, ptr %89, i32 0, i32 3, i32 0, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef 3, i32 noundef %92) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  %93 = getelementptr inbounds %struct.drm_framebuffer, ptr %66, i32 0, i32 8
  %94 = load i64, ptr %93, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef %94) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.25) #10
  %95 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 6, i32 0
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef %96) #10
  %97 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 6, i32 1
  %98 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef %98) #10
  %99 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 6, i32 2
  %100 = load i32, ptr %99, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 2, i32 noundef %100) #10
  %101 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 6, i32 3
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef 3, i32 noundef %102) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.25) #10
  %103 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 7, i32 0
  %104 = load i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef %104) #10
  %105 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 7, i32 1
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %106) #10
  %107 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 7, i32 2
  %108 = load i32, ptr %107, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 2, i32 noundef %108) #10
  %109 = getelementptr %struct.drm_framebuffer, ptr %66, i32 0, i32 7, i32 3
  %110 = load i32, ptr %109, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 3, i32 noundef %110) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  br label %111

111:                                              ; preds = %68, %59
  %112 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 8
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 9
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 11
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 10
  %119 = load i32, ptr %118, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119) #10
  %120 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = getelementptr inbounds %struct.drm_plane_state, ptr %57, i32 0, i32 7
  %127 = load i32, ptr %126, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127) #10
  %128 = getelementptr inbounds %struct.dpu_plane_state, ptr %57, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.dpu_plane_state, ptr %57, i32 0, i32 4
  %131 = load i32, ptr %130, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %129, i32 noundef %131) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %132 = load ptr, ptr %5, align 8
  br label %133

133:                                              ; preds = %111, %55, %44
  %134 = phi ptr [ %132, %111 ], [ %45, %44 ], [ %45, %55 ]
  %135 = load ptr, ptr %46, align 4
  %136 = getelementptr inbounds %struct.drm_device, ptr %134, i32 0, i32 30, i32 18
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %138, label %44

138:                                              ; preds = %133, %39
  %139 = phi ptr [ %40, %39 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %169, label %143

143:                                              ; preds = %138
  %144 = tail call i64 @ktime_get() #10
  %145 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 6
  %146 = load i64, ptr %145, align 8
  %147 = sub i64 %144, %146
  %148 = tail call i64 @llvm.abs.i64(i64 %147, i1 false) #10
  %149 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %148) #13, !srcloc !39
  %150 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %148, i64 %149, i32 0) #13, !srcloc !40
  %151 = extractvalue { i64, i32 } %150, 0
  %152 = icmp slt i64 %147, 0
  %153 = lshr i64 %151, 18
  %154 = sub nsw i64 0, %153
  %155 = select i1 %152, i64 %154, i64 %153
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %143
  %158 = load i32, ptr %140, align 4
  %159 = mul i32 %158, 1000
  %160 = zext i32 %159 to i64
  %161 = trunc i64 %155 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  %162 = call i64 @div_s64_rem(i64 noundef %160, i32 noundef %161, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %163

163:                                              ; preds = %157, %143
  %164 = phi i64 [ %162, %157 ], [ 0, %143 ]
  %165 = load i32, ptr %140, align 4
  %166 = getelementptr inbounds %struct.dpu_crtc, ptr %5, i32 0, i32 5
  %167 = load i64, ptr %166, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %164, i32 noundef %165, i64 noundef %155, i64 noundef %167) #10
  store i32 0, ptr %140, align 4
  store i64 0, ptr %145, align 8
  %168 = load ptr, ptr %5, align 8
  br label %169

169:                                              ; preds = %163, %138
  %170 = phi ptr [ %168, %163 ], [ %139, %138 ]
  call void @drm_modeset_unlock_all(ptr noundef %170) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_debugfs_state_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dpu_crtc_debugfs_state_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_debugfs_state_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 1, %2 ], [ %10, %6 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %12) #10
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 4
  %14 = tail call zeroext i1 @mutex_is_locked(ptr noundef %13) #10
  br i1 %14, label %16, label %15, !prof !8

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #10
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 16
  %19 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  br label %20

20:                                               ; preds = %24, %16
  %21 = phi ptr [ %18, %16 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %18
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.drm_crtc_state, ptr %25, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %22, i32 36
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %20, label %33

33:                                               ; preds = %24
  %34 = getelementptr i8, ptr %22, i32 -4
  %35 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %34) #10
  br label %36

36:                                               ; preds = %33, %20
  %37 = phi i32 [ %35, %33 ], [ 0, %20 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %37) #10
  %38 = getelementptr inbounds %struct.dpu_crtc, ptr %4, i32 0, i32 19
  %39 = getelementptr inbounds %struct.dpu_crtc, ptr %4, i32 0, i32 19, i32 2
  %40 = load i64, ptr %39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %40) #10
  %41 = getelementptr inbounds %struct.dpu_crtc, ptr %4, i32 0, i32 19, i32 1
  %42 = load i64, ptr %41, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %42) #10
  %43 = load i64, ptr %38, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %43) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_vsync_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_crtc_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [24 x %struct.dpu_multirect_plane_states], align 4
  %4 = alloca [15 x ptr], align 4
  %5 = alloca %struct.drm_rect, align 4
  %6 = alloca %struct.drm_rect, align 8
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %10, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #10
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 768) #11
  %15 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 1
  %16 = load i8, ptr %15, align 4, !range !41
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !41
  br i1 %17, label %20, label %22

20:                                               ; preds = %2
  %21 = zext i8 %19 to i32
  br label %24

22:                                               ; preds = %2
  %23 = icmp eq i8 %19, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %26 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %27, i32 noundef %28, i32 noundef %25) #10
  %29 = getelementptr inbounds %struct.dpu_crtc_state, ptr %12, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(24) %29, i8 0, i32 24, i1 false)
  br label %461

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.47, ptr noundef %31) #10
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 3
  %33 = load i8, ptr %32, align 2
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = or i8 %33, 2
  store i8 %37, ptr %32, align 2
  br label %38

38:                                               ; preds = %36, %30
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, i8 0, i32 60, i1 false)
  %39 = getelementptr inbounds %struct.dpu_crtc_state, ptr %12, i32 0, i32 6
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %83, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = udiv i32 %45, %40
  %47 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 6
  %48 = icmp eq ptr %0, null
  %49 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  br label %50

50:                                               ; preds = %79, %42
  %51 = phi i32 [ 0, %42 ], [ %80, %79 ]
  %52 = getelementptr %struct.dpu_crtc_state, ptr %12, i32 0, i32 3, i32 %51
  %53 = mul i32 %51, %46
  store i32 %53, ptr %52, align 4
  %54 = getelementptr %struct.dpu_crtc_state, ptr %12, i32 0, i32 3, i32 %51, i32 1
  store i32 0, ptr %54, align 4
  %55 = add i32 %53, %46
  %56 = getelementptr %struct.dpu_crtc_state, ptr %12, i32 0, i32 3, i32 %51, i32 2
  store i32 %55, ptr %56, align 4
  %57 = load i16, ptr %47, align 2
  %58 = zext i16 %57 to i32
  %59 = getelementptr %struct.dpu_crtc_state, ptr %12, i32 0, i32 3, i32 %51, i32 3
  store i32 %58, ptr %59, align 4
  br i1 %48, label %62, label %60

60:                                               ; preds = %50
  %61 = load i32, ptr %49, align 4
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i32 [ %61, %60 ], [ -1, %50 ]
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = tail call ptr @llvm.thread.pointer() #10
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %78 = tail call i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr noundef null, i32 noundef %63, i32 noundef %51, ptr noundef %52) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  br label %79

79:                                               ; preds = %77, %66, %62
  %80 = add nuw i32 %51, 1
  %81 = load i32, ptr %39, align 8
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %50, label %83

83:                                               ; preds = %79, %38
  %84 = phi i32 [ 0, %38 ], [ %46, %79 ]
  %85 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %86 = load i16, ptr %85, align 4
  %87 = zext i16 %86 to i32
  %88 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 6
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 20
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.drm_atomic_state, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.drm_device, ptr %94, i32 0, i32 30, i32 18
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, %95
  br i1 %97, label %207, label %98

98:                                               ; preds = %83
  %99 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 4
  %100 = getelementptr inbounds i8, ptr %6, i32 8
  %101 = getelementptr inbounds i8, ptr %6, i32 12
  %102 = getelementptr inbounds i8, ptr %5, i32 4
  %103 = getelementptr inbounds i8, ptr %5, i32 8
  %104 = getelementptr inbounds i8, ptr %5, i32 12
  br label %109

105:                                              ; preds = %188
  %106 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %207, label %198

109:                                              ; preds = %188, %98
  %110 = phi ptr [ %92, %98 ], [ %189, %188 ]
  %111 = phi ptr [ %92, %98 ], [ %190, %188 ]
  %112 = phi ptr [ %96, %98 ], [ %193, %188 ]
  %113 = phi i32 [ 0, %98 ], [ %192, %188 ]
  %114 = phi i32 [ 0, %98 ], [ %191, %188 ]
  %115 = getelementptr i8, ptr %112, i32 -4
  %116 = load i32, ptr %99, align 4
  %117 = getelementptr i8, ptr %112, i32 408
  %118 = load i32, ptr %117, align 4
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %116
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %188, label %122

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.drm_atomic_state, ptr %111, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr %struct.__drm_planes_state, ptr %124, i32 %118, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  %128 = getelementptr i8, ptr %112, i32 416
  %129 = select i1 %127, ptr %128, ptr %125
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %188, label %132

132:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8
  store i32 %87, ptr %100, align 8
  store i32 %90, ptr %101, align 4
  %133 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %139

134:                                              ; preds = %132
  %135 = ptrtoint ptr %130 to i32
  %136 = getelementptr i8, ptr %112, i32 44
  %137 = load i32, ptr %136, align 8
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1105, ptr noundef %31, i32 noundef %137, i32 noundef %135) #12
  br label %186

139:                                              ; preds = %132
  %140 = icmp sgt i32 %113, 47
  br i1 %140, label %182, label %141

141:                                              ; preds = %139
  %142 = getelementptr %struct.plane_state, ptr %14, i32 %113
  store ptr %130, ptr %142, align 8
  %143 = getelementptr %struct.plane_state, ptr %14, i32 %113, i32 1
  store ptr %130, ptr %143, align 4
  %144 = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 16
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr %struct.plane_state, ptr %14, i32 %113, i32 2
  store i32 %145, ptr %146, align 8
  %147 = call i32 @dpu_plane_pipe(ptr noundef %115) #10
  %148 = getelementptr %struct.plane_state, ptr %14, i32 %113, i32 3
  store i32 %147, ptr %148, align 4
  %149 = getelementptr [15 x ptr], ptr %4, i32 0, i32 %147
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %141
  %153 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %3, i32 0, i32 %114
  store ptr %150, ptr %153, align 4
  %154 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %3, i32 0, i32 %114, i32 1
  store ptr %130, ptr %154, align 4
  %155 = add i32 %114, 1
  br label %156

156:                                              ; preds = %152, %141
  %157 = phi ptr [ null, %152 ], [ %130, %141 ]
  %158 = phi i32 [ %155, %152 ], [ %114, %141 ]
  store ptr %157, ptr %149, align 4
  %159 = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 4
  %160 = load i32, ptr %159, align 4, !noalias !44
  %161 = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 5
  %162 = load i32, ptr %161, align 4, !noalias !44
  %163 = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 6
  %164 = load i32, ptr %163, align 4, !noalias !44
  %165 = add i32 %164, %160
  %166 = getelementptr inbounds %struct.drm_plane_state, ptr %130, i32 0, i32 7
  %167 = load i32, ptr %166, align 4, !noalias !44
  %168 = add i32 %167, %162
  store i32 %160, ptr %5, align 4
  store i32 %162, ptr %102, align 4
  store i32 %165, ptr %103, align 4
  store i32 %168, ptr %104, align 4
  %169 = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %6, ptr noundef nonnull %5) #10
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = add nsw i32 %113, 1
  %172 = load ptr, ptr %91, align 4
  br label %182

173:                                              ; preds = %156
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1131) #12
  %175 = load i32, ptr %103, align 4
  %176 = load i32, ptr %5, align 4
  %177 = sub i32 %175, %176
  %178 = load i32, ptr %104, align 4
  %179 = load i32, ptr %102, align 4
  %180 = sub i32 %178, %179
  %181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1134, i32 noundef %87, i32 noundef %90, i32 noundef 0, i32 noundef 0, i32 noundef %177, i32 noundef %180, i32 noundef %176, i32 noundef %179) #12
  br label %186

182:                                              ; preds = %170, %139
  %183 = phi ptr [ %172, %170 ], [ %110, %139 ]
  %184 = phi i32 [ %158, %170 ], [ %114, %139 ]
  %185 = phi i32 [ %171, %170 ], [ %113, %139 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %188

186:                                              ; preds = %173, %134
  %187 = phi i32 [ %135, %134 ], [ -7, %173 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %461

188:                                              ; preds = %182, %122, %109
  %189 = phi ptr [ %110, %122 ], [ %110, %109 ], [ %183, %182 ]
  %190 = phi ptr [ %111, %122 ], [ %111, %109 ], [ %183, %182 ]
  %191 = phi i32 [ %114, %122 ], [ %114, %109 ], [ %184, %182 ]
  %192 = phi i32 [ %113, %122 ], [ %113, %109 ], [ %185, %182 ]
  %193 = load ptr, ptr %112, align 4
  %194 = getelementptr inbounds %struct.drm_atomic_state, ptr %190, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.drm_device, ptr %195, i32 0, i32 30, i32 18
  %197 = icmp eq ptr %193, %196
  br i1 %197, label %105, label %109

198:                                              ; preds = %105
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %107) #10
  %199 = load ptr, ptr %107, align 4
  %200 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %199) #10
  br i1 %200, label %201, label %207

201:                                              ; preds = %297, %290, %283, %276, %269, %262, %255, %248, %241, %234, %227, %220, %213, %198
  %202 = phi ptr [ %107, %198 ], [ %211, %213 ], [ %218, %220 ], [ %225, %227 ], [ %232, %234 ], [ %239, %241 ], [ %246, %248 ], [ %253, %255 ], [ %260, %262 ], [ %267, %269 ], [ %274, %276 ], [ %281, %283 ], [ %288, %290 ], [ %295, %297 ]
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.drm_plane, ptr %203, i32 0, i32 4
  %205 = load i32, ptr %204, align 8
  %206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1147, i32 noundef %205) #12
  br label %461

207:                                              ; preds = %198, %105, %83
  %208 = phi i32 [ %192, %105 ], [ %192, %198 ], [ 0, %83 ]
  %209 = phi i32 [ %191, %105 ], [ %191, %198 ], [ 0, %83 ]
  %210 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %207
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %211) #10
  %214 = load ptr, ptr %211, align 4
  %215 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %214) #10
  br i1 %215, label %201, label %216

216:                                              ; preds = %213, %207
  %217 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 3
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %218) #10
  %221 = load ptr, ptr %218, align 4
  %222 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %221) #10
  br i1 %222, label %201, label %223

223:                                              ; preds = %220, %216
  %224 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 4
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %225) #10
  %228 = load ptr, ptr %225, align 4
  %229 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %228) #10
  br i1 %229, label %201, label %230

230:                                              ; preds = %227, %223
  %231 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 5
  %232 = load ptr, ptr %231, align 4
  %233 = icmp eq ptr %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %232) #10
  %235 = load ptr, ptr %232, align 4
  %236 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %235) #10
  br i1 %236, label %201, label %237

237:                                              ; preds = %234, %230
  %238 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 6
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %239) #10
  %242 = load ptr, ptr %239, align 4
  %243 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %242) #10
  br i1 %243, label %201, label %244

244:                                              ; preds = %241, %237
  %245 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 7
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %246) #10
  %249 = load ptr, ptr %246, align 4
  %250 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %249) #10
  br i1 %250, label %201, label %251

251:                                              ; preds = %248, %244
  %252 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 8
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %251
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %253) #10
  %256 = load ptr, ptr %253, align 4
  %257 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %256) #10
  br i1 %257, label %201, label %258

258:                                              ; preds = %255, %251
  %259 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 9
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %260) #10
  %263 = load ptr, ptr %260, align 4
  %264 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %263) #10
  br i1 %264, label %201, label %265

265:                                              ; preds = %262, %258
  %266 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 10
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %267) #10
  %270 = load ptr, ptr %267, align 4
  %271 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %270) #10
  br i1 %271, label %201, label %272

272:                                              ; preds = %269, %265
  %273 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 11
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %274) #10
  %277 = load ptr, ptr %274, align 4
  %278 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %277) #10
  br i1 %278, label %201, label %279

279:                                              ; preds = %276, %272
  %280 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 12
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %279
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %281) #10
  %284 = load ptr, ptr %281, align 4
  %285 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %284) #10
  br i1 %285, label %201, label %286

286:                                              ; preds = %283, %279
  %287 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 13
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %293, label %290

290:                                              ; preds = %286
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %288) #10
  %291 = load ptr, ptr %288, align 4
  %292 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %291) #10
  br i1 %292, label %201, label %293

293:                                              ; preds = %290, %286
  %294 = getelementptr inbounds [15 x ptr], ptr %4, i32 0, i32 14
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  call void @dpu_plane_clear_multirect(ptr noundef nonnull %295) #10
  %298 = load ptr, ptr %295, align 4
  %299 = call zeroext i1 @is_dpu_plane_virtual(ptr noundef %298) #10
  br i1 %299, label %201, label %300

300:                                              ; preds = %297, %293
  %301 = icmp sgt i32 %208, 0
  br i1 %301, label %304, label %302

302:                                              ; preds = %336, %300
  %303 = icmp sgt i32 %209, 0
  br i1 %303, label %344, label %363

304:                                              ; preds = %336, %300
  %305 = phi i32 [ %342, %336 ], [ 0, %300 ]
  %306 = phi i32 [ %311, %336 ], [ -1, %300 ]
  %307 = phi i32 [ %338, %336 ], [ 0, %300 ]
  %308 = phi i32 [ %337, %336 ], [ 0, %300 ]
  %309 = getelementptr %struct.plane_state, ptr %14, i32 %305
  %310 = getelementptr %struct.plane_state, ptr %14, i32 %305, i32 2
  %311 = load i32, ptr %310, align 8
  %312 = icmp eq i32 %311, %306
  %313 = select i1 %312, i32 %308, i32 0
  %314 = select i1 %312, i32 %307, i32 0
  %315 = icmp sgt i32 %311, 10
  br i1 %315, label %316, label %318

316:                                              ; preds = %304
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1166, i32 noundef 11) #12
  br label %461

318:                                              ; preds = %304
  %319 = getelementptr %struct.plane_state, ptr %14, i32 %305, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.drm_plane_state, ptr %320, i32 0, i32 4
  %322 = load i32, ptr %321, align 4
  %323 = icmp slt i32 %322, %84
  br i1 %323, label %324, label %330

324:                                              ; preds = %318
  %325 = icmp eq i32 %314, 2
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1172, i32 noundef %311) #12
  br label %461

328:                                              ; preds = %324
  %329 = add i32 %314, 1
  br label %336

330:                                              ; preds = %318
  %331 = icmp eq i32 %313, 2
  br i1 %331, label %332, label %334

332:                                              ; preds = %330
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1181, i32 noundef %311) #12
  br label %461

334:                                              ; preds = %330
  %335 = add i32 %313, 1
  br label %336

336:                                              ; preds = %334, %328
  %337 = phi i32 [ %313, %328 ], [ %335, %334 ]
  %338 = phi i32 [ %329, %328 ], [ %314, %334 ]
  %339 = add nsw i32 %311, 1
  %340 = load ptr, ptr %309, align 8
  %341 = getelementptr inbounds %struct.dpu_plane_state, ptr %340, i32 0, i32 2
  store i32 %339, ptr %341, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.55, ptr noundef %31, i32 noundef %311) #10
  %342 = add nuw nsw i32 %305, 1
  %343 = icmp eq i32 %342, %208
  br i1 %343, label %302, label %304

344:                                              ; preds = %360, %302
  %345 = phi i32 [ %361, %360 ], [ 0, %302 ]
  %346 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %3, i32 0, i32 %345
  %347 = call i32 @dpu_plane_validate_multirect_v2(ptr noundef %346) #10
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %360, label %349

349:                                              ; preds = %344
  %350 = load ptr, ptr %346, align 4
  %351 = load ptr, ptr %350, align 4
  %352 = getelementptr inbounds %struct.drm_plane, ptr %351, i32 0, i32 4
  %353 = load i32, ptr %352, align 8
  %354 = getelementptr [24 x %struct.dpu_multirect_plane_states], ptr %3, i32 0, i32 %345, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr inbounds %struct.drm_plane, ptr %356, i32 0, i32 4
  %358 = load i32, ptr %357, align 8
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1197, i32 noundef %353, i32 noundef %358) #12
  br label %461

360:                                              ; preds = %344
  %361 = add nuw nsw i32 %345, 1
  %362 = icmp eq i32 %361, %209
  br i1 %362, label %363, label %344

363:                                              ; preds = %360, %302
  %364 = load ptr, ptr %0, align 8
  %365 = getelementptr inbounds %struct.drm_device, ptr %364, i32 0, i32 5
  %366 = load ptr, ptr %365, align 4
  %367 = getelementptr inbounds %struct.msm_drm_private, ptr %366, i32 0, i32 1
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.dpu_kms, ptr %368, i32 0, i32 22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %369) #10, !srcloc !20
  %370 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %369, ptr %369, i32 1, ptr elementtype(i32) %369) #10, !srcloc !47
  %371 = call i32 @dpu_core_perf_crtc_check(ptr noundef %0, ptr noundef %12) #10
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %363
  %374 = icmp sgt i32 %208, 1
  br i1 %374, label %375, label %461

375:                                              ; preds = %373
  %376 = getelementptr %struct.plane_state, ptr %14, i32 0, i32 2
  %377 = load i32, ptr %376, align 8
  br label %382

378:                                              ; preds = %363
  %379 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %380 = load i32, ptr %379, align 4
  %381 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1208, i32 noundef %380, i32 noundef %371) #12
  br label %461

382:                                              ; preds = %458, %375
  %383 = phi i32 [ %386, %458 ], [ %377, %375 ]
  %384 = phi i32 [ %459, %458 ], [ 1, %375 ]
  %385 = getelementptr %struct.plane_state, ptr %14, i32 %384, i32 2
  %386 = load i32, ptr %385, align 8
  %387 = icmp eq i32 %383, %386
  br i1 %387, label %388, label %458

388:                                              ; preds = %382
  %389 = add nsw i32 %384, -1
  %390 = getelementptr %struct.plane_state, ptr %14, i32 %384
  %391 = getelementptr %struct.plane_state, ptr %14, i32 %389
  %392 = load ptr, ptr %391, align 8
  %393 = load ptr, ptr %392, align 8
  %394 = getelementptr inbounds %struct.drm_plane, ptr %393, i32 0, i32 4
  %395 = load i32, ptr %394, align 8
  %396 = getelementptr %struct.plane_state, ptr %14, i32 %389, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.drm_plane_state, ptr %397, i32 0, i32 4
  %399 = load i32, ptr %398, align 4, !noalias !48
  %400 = getelementptr inbounds %struct.drm_plane_state, ptr %397, i32 0, i32 5
  %401 = load i32, ptr %400, align 4, !noalias !48
  %402 = getelementptr inbounds %struct.drm_plane_state, ptr %397, i32 0, i32 6
  %403 = load i32, ptr %402, align 4, !noalias !48
  %404 = add i32 %403, %399
  %405 = getelementptr inbounds %struct.drm_plane_state, ptr %397, i32 0, i32 7
  %406 = load i32, ptr %405, align 4, !noalias !48
  %407 = add i32 %406, %401
  %408 = load ptr, ptr %390, align 8
  %409 = load ptr, ptr %408, align 8
  %410 = getelementptr inbounds %struct.drm_plane, ptr %409, i32 0, i32 4
  %411 = load i32, ptr %410, align 8
  %412 = getelementptr %struct.plane_state, ptr %14, i32 %384, i32 1
  %413 = load ptr, ptr %412, align 4
  %414 = getelementptr inbounds %struct.drm_plane_state, ptr %413, i32 0, i32 4
  %415 = load i32, ptr %414, align 4, !noalias !51
  %416 = getelementptr inbounds %struct.drm_plane_state, ptr %413, i32 0, i32 5
  %417 = load i32, ptr %416, align 4, !noalias !51
  %418 = getelementptr inbounds %struct.drm_plane_state, ptr %413, i32 0, i32 6
  %419 = load i32, ptr %418, align 4, !noalias !51
  %420 = add i32 %419, %415
  %421 = getelementptr inbounds %struct.drm_plane_state, ptr %413, i32 0, i32 7
  %422 = load i32, ptr %421, align 4, !noalias !51
  %423 = add i32 %422, %417
  %424 = icmp slt i32 %415, %399
  br i1 %424, label %425, label %426

425:                                              ; preds = %388
  br label %426

426:                                              ; preds = %425, %388
  %427 = phi i32 [ %399, %425 ], [ %415, %388 ]
  %428 = phi i32 [ %401, %425 ], [ %417, %388 ]
  %429 = phi i32 [ %404, %425 ], [ %420, %388 ]
  %430 = phi i32 [ %407, %425 ], [ %423, %388 ]
  %431 = phi i32 [ %423, %425 ], [ %407, %388 ]
  %432 = phi i32 [ %420, %425 ], [ %404, %388 ]
  %433 = phi i32 [ %417, %425 ], [ %401, %388 ]
  %434 = phi i32 [ %415, %425 ], [ %399, %388 ]
  %435 = phi i32 [ %411, %425 ], [ %395, %388 ]
  %436 = phi i32 [ %395, %425 ], [ %411, %388 ]
  %437 = icmp slt i32 %436, %435
  br i1 %437, label %438, label %440

438:                                              ; preds = %426
  %439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1251, i32 noundef %383, i32 noundef %435, i32 noundef %436) #12
  br label %461

440:                                              ; preds = %426
  %441 = sub i32 %432, %434
  %442 = icmp eq i32 %427, %441
  br i1 %442, label %448, label %443

443:                                              ; preds = %440
  %444 = sub i32 %431, %433
  %445 = sub i32 %429, %427
  %446 = sub i32 %430, %428
  %447 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1259, i32 noundef %383, i32 noundef %441, i32 noundef %444, i32 noundef %434, i32 noundef %433, i32 noundef %445, i32 noundef %446, i32 noundef %427, i32 noundef %428) #12
  br label %461

448:                                              ; preds = %440
  %449 = icmp eq i32 %433, %428
  br i1 %449, label %450, label %452

450:                                              ; preds = %448
  %451 = icmp eq i32 %431, %430
  br i1 %451, label %458, label %452

452:                                              ; preds = %450, %448
  %453 = phi i32 [ %433, %448 ], [ %428, %450 ]
  %454 = sub i32 %431, %453
  %455 = sub i32 %430, %428
  %456 = sub i32 %429, %427
  %457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.dpu_crtc_atomic_check, i32 noundef 1268, i32 noundef %383, i32 noundef %427, i32 noundef %454, i32 noundef %434, i32 noundef %453, i32 noundef %456, i32 noundef %455, i32 noundef %427, i32 noundef %428) #12
  br label %461

458:                                              ; preds = %450, %382
  %459 = add nuw nsw i32 %384, 1
  %460 = icmp eq i32 %459, %208
  br i1 %460, label %461, label %382

461:                                              ; preds = %458, %452, %443, %438, %378, %373, %349, %332, %326, %316, %201, %186, %24
  %462 = phi i32 [ %187, %186 ], [ -22, %201 ], [ -22, %316 ], [ -22, %326 ], [ -22, %332 ], [ -22, %349 ], [ %371, %378 ], [ 0, %24 ], [ -22, %438 ], [ -22, %443 ], [ -22, %452 ], [ 0, %373 ], [ 0, %458 ]
  call void @kfree(ptr noundef %14) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #10
  ret i32 %462
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_begin(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.dpu_hw_pcc_cfg, align 4
  %4 = alloca %struct.dpu_hw_mixer_cfg, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i32], align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca %struct.dpu_hw_stage_cfg, align 4
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 4, !range !41
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %16, label %17

16:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.61, i32 noundef %15, i32 noundef 0) #10
  br label %480

17:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %15) #10
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 7, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.dpu_crtc_state, ptr %18, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = udiv i32 %21, %23
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %18, i32 0, i32 7, i32 6
  %28 = icmp eq ptr %0, null
  br label %29

29:                                               ; preds = %58, %26
  %30 = phi i32 [ 0, %26 ], [ %59, %58 ]
  %31 = getelementptr %struct.dpu_crtc_state, ptr %18, i32 0, i32 3, i32 %30
  %32 = mul i32 %30, %24
  store i32 %32, ptr %31, align 4
  %33 = getelementptr %struct.dpu_crtc_state, ptr %18, i32 0, i32 3, i32 %30, i32 1
  store i32 0, ptr %33, align 4
  %34 = add i32 %32, %24
  %35 = getelementptr %struct.dpu_crtc_state, ptr %18, i32 0, i32 3, i32 %30, i32 2
  store i32 %34, ptr %35, align 4
  %36 = load i16, ptr %27, align 2
  %37 = zext i16 %36 to i32
  %38 = getelementptr %struct.dpu_crtc_state, ptr %18, i32 0, i32 3, i32 %30, i32 3
  store i32 %37, ptr %38, align 4
  br i1 %28, label %41, label %39

39:                                               ; preds = %29
  %40 = load i32, ptr %14, align 4
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %40, %39 ], [ -1, %29 ]
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #10
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %57 = tail call i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr noundef null, i32 noundef %42, i32 noundef %30, ptr noundef %31) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  br label %58

58:                                               ; preds = %56, %45, %41
  %59 = add nuw i32 %30, 1
  %60 = load i32, ptr %22, align 8
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %29, label %62

62:                                               ; preds = %58, %17
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.drm_device, ptr %63, i32 0, i32 30, i32 16
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %86, label %67

67:                                               ; preds = %81, %62
  %68 = phi ptr [ %82, %81 ], [ %63, %62 ]
  %69 = phi ptr [ %83, %81 ], [ %65, %62 ]
  %70 = load ptr, ptr %9, align 4
  %71 = getelementptr inbounds %struct.drm_crtc_state, ptr %70, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr i8, ptr %69, i32 36
  %74 = load i32, ptr %73, align 4
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %72
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = getelementptr i8, ptr %69, i32 -4
  tail call void @dpu_encoder_trigger_kickoff_pending(ptr noundef %79) #10
  %80 = load ptr, ptr %0, align 8
  br label %81

81:                                               ; preds = %78, %67
  %82 = phi ptr [ %80, %78 ], [ %68, %67 ]
  %83 = load ptr, ptr %69, align 4
  %84 = getelementptr inbounds %struct.drm_device, ptr %82, i32 0, i32 30, i32 16
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %67

86:                                               ; preds = %81, %62
  %87 = getelementptr inbounds %struct.dpu_crtc_state, ptr %10, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %480, label %90, !prof !16

90:                                               ; preds = %86
  %91 = load ptr, ptr %9, align 4
  %92 = getelementptr inbounds %struct.dpu_crtc_state, ptr %91, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #10
  %93 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.62, ptr noundef %93) #10
  %94 = getelementptr inbounds %struct.dpu_crtc_state, ptr %91, i32 0, i32 6
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %107, %90
  %98 = phi i32 [ %108, %107 ], [ 0, %90 ]
  %99 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %98, i32 3
  store i32 0, ptr %99, align 4
  %100 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %98, i32 4
  store i32 0, ptr %100, align 4
  %101 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %98, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %102, i32 0, i32 9, i32 15
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  tail call void %104(ptr noundef %102) #10
  br label %107

107:                                              ; preds = %106, %97
  %108 = add nuw i32 %98, 1
  %109 = load i32, ptr %94, align 8
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %97, label %111

111:                                              ; preds = %107, %90
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %8, i8 0, i32 192, i1 false) #10
  %112 = load ptr, ptr %9, align 4
  %113 = getelementptr inbounds %struct.dpu_crtc_state, ptr %91, i32 0, i32 7, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %6, i8 0, i32 52, i1 false) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4
  %115 = load ptr, ptr %0, align 8
  %116 = getelementptr inbounds %struct.drm_device, ptr %115, i32 0, i32 30, i32 18
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %274, label %119

119:                                              ; preds = %111
  %120 = icmp eq ptr %0, null
  %121 = getelementptr inbounds %struct.dpu_crtc_state, ptr %112, i32 0, i32 6
  br label %122

122:                                              ; preds = %272, %119
  %123 = phi ptr [ %112, %119 ], [ %273, %272 ]
  %124 = phi ptr [ %117, %119 ], [ %268, %272 ]
  %125 = phi i1 [ false, %119 ], [ %267, %272 ]
  %126 = getelementptr i8, ptr %124, i32 -4
  %127 = getelementptr inbounds %struct.drm_crtc_state, ptr %123, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr i8, ptr %124, i32 408
  %130 = load i32, ptr %129, align 4
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %128
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %266, label %134

134:                                              ; preds = %122
  %135 = getelementptr i8, ptr %124, i32 416
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %266, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.drm_plane_state, ptr %136, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  call void @dpu_plane_get_ctl_flush(ptr noundef %126, ptr noundef %114, ptr noundef nonnull %5) #10
  %141 = call i32 @dpu_plane_pipe(ptr noundef %126) #10
  call void @_set_bit(i32 noundef %141, ptr noundef nonnull %7) #10
  %142 = load i32, ptr %14, align 4
  %143 = getelementptr inbounds %struct.dpu_plane_state, ptr %136, i32 0, i32 2
  %144 = load i32, ptr %143, align 8
  %145 = getelementptr i8, ptr %124, i32 44
  %146 = load i32, ptr %145, align 8
  %147 = call i32 @dpu_plane_pipe(ptr noundef %126) #10
  %148 = add i32 %147, -1
  %149 = load ptr, ptr %139, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %138
  %152 = getelementptr inbounds %struct.drm_framebuffer, ptr %149, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %151, %138
  %155 = phi i32 [ %153, %151 ], [ -1, %138 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, i32 noundef %155) #10
  %156 = load ptr, ptr %139, align 8
  %157 = call ptr @msm_framebuffer_format(ptr noundef %156) #10
  %158 = load i32, ptr %143, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.dpu_format, ptr %157, i32 0, i32 9
  %162 = load i8, ptr %161, align 4
  %163 = icmp ne i8 %162, 0
  %164 = select i1 %163, i1 true, i1 %125
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i1 [ %125, %154 ], [ %164, %160 ]
  %167 = getelementptr [13 x i32], ptr %6, i32 0, i32 %158
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, 1
  store i32 %169, ptr %167, align 4
  %170 = call i32 @dpu_plane_pipe(ptr noundef %126) #10
  %171 = load i32, ptr %143, align 8
  %172 = getelementptr [12 x [2 x i32]], ptr %8, i32 0, i32 %171, i32 %168
  store i32 %170, ptr %172, align 4
  %173 = getelementptr inbounds %struct.dpu_plane_state, ptr %136, i32 0, i32 4
  %174 = load i32, ptr %173, align 8
  %175 = load i32, ptr %143, align 8
  %176 = getelementptr %struct.dpu_hw_stage_cfg, ptr %8, i32 0, i32 1, i32 %175, i32 %168
  store i32 %174, ptr %176, align 4
  br i1 %120, label %179, label %177

177:                                              ; preds = %165
  %178 = load i32, ptr %14, align 4
  br label %179

179:                                              ; preds = %177, %165
  %180 = phi i32 [ %178, %177 ], [ -1, %165 ]
  %181 = icmp eq ptr %126, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = load i32, ptr %145, align 8
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi i32 [ %183, %182 ], [ -1, %179 ]
  %186 = call i32 @dpu_plane_pipe(ptr noundef %126) #10
  %187 = add i32 %186, -1
  %188 = load i32, ptr %157, align 4
  %189 = icmp eq ptr %140, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.drm_framebuffer, ptr %140, i32 0, i32 8
  %192 = load i64, ptr %191, align 8
  br label %193

193:                                              ; preds = %190, %184
  %194 = phi i64 [ %192, %190 ], [ 0, %184 ]
  %195 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_mixer, i32 0, i32 1), align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = tail call ptr @llvm.thread.pointer() #10
  %199 = getelementptr inbounds %struct.thread_info, ptr %198, i32 0, i32 2
  %200 = load i32, ptr %199, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %197
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %209 = call i32 @__traceiter_dpu_crtc_setup_mixer(ptr noundef null, i32 noundef %180, i32 noundef %185, ptr noundef nonnull %136, ptr noundef nonnull %136, i32 noundef %168, i32 noundef %187, i32 noundef %188, i64 noundef %194) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  br label %210

210:                                              ; preds = %208, %197, %193
  %211 = load i32, ptr %121, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %266, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.drm_plane_state, ptr %136, i32 0, i32 12
  %215 = getelementptr inbounds %struct.drm_plane_state, ptr %136, i32 0, i32 13
  %216 = getelementptr inbounds %struct.dpu_format, ptr %157, i32 0, i32 9
  br label %217

217:                                              ; preds = %262, %213
  %218 = phi i32 [ 0, %213 ], [ %263, %262 ]
  %219 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %218
  %220 = load ptr, ptr %219, align 4
  %221 = load i16, ptr %214, align 8
  %222 = lshr i16 %221, 8
  %223 = zext i16 %222 to i32
  %224 = xor i32 %223, 255
  %225 = load i16, ptr %215, align 2
  %226 = icmp eq i16 %225, 2
  br i1 %226, label %239, label %227

227:                                              ; preds = %217
  %228 = load i8, ptr %216, align 4
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %227
  %231 = icmp eq i16 %225, 0
  %232 = icmp eq i16 %222, 255
  br i1 %231, label %233, label %236

233:                                              ; preds = %230
  %234 = select i1 %232, i32 1536, i32 6656
  %235 = select i1 %232, i32 %224, i32 %223
  br label %239

236:                                              ; preds = %230
  %237 = select i1 %232, i32 1538, i32 6682
  %238 = select i1 %232, i32 %224, i32 %223
  br label %239

239:                                              ; preds = %236, %233, %227, %217
  %240 = phi i32 [ 256, %227 ], [ 256, %217 ], [ %234, %233 ], [ %237, %236 ]
  %241 = phi i32 [ %224, %227 ], [ %224, %217 ], [ %235, %233 ], [ %238, %236 ]
  %242 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %220, i32 0, i32 6, i32 1
  %243 = load ptr, ptr %242, align 4
  %244 = load i32, ptr %143, align 8
  call void %243(ptr noundef %220, i32 noundef %244, i32 noundef %223, i32 noundef %241, i32 noundef %240) #10
  %245 = load i8, ptr %216, align 4
  %246 = zext i8 %245 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.65, ptr noundef %157, i32 noundef %246, i32 noundef %240) #10
  %247 = load i32, ptr %5, align 4
  %248 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %218, i32 4
  %249 = load i32, ptr %248, align 4
  %250 = or i32 %249, %247
  store i32 %250, ptr %248, align 4
  br i1 %166, label %251, label %256

251:                                              ; preds = %239
  %252 = load i8, ptr %216, align 4
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  %255 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %218, i32 3
  store i32 0, ptr %255, align 4
  br label %262

256:                                              ; preds = %251, %239
  %257 = load i32, ptr %143, align 8
  %258 = shl nuw i32 1, %257
  %259 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %218, i32 3
  %260 = load i32, ptr %259, align 4
  %261 = or i32 %260, %258
  store i32 %261, ptr %259, align 4
  br label %262

262:                                              ; preds = %256, %254
  %263 = add nuw i32 %218, 1
  %264 = load i32, ptr %121, align 8
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %217, label %266

266:                                              ; preds = %262, %210, %134, %122
  %267 = phi i1 [ %125, %134 ], [ %125, %122 ], [ %166, %210 ], [ %166, %262 ]
  %268 = load ptr, ptr %124, align 4
  %269 = load ptr, ptr %0, align 8
  %270 = getelementptr inbounds %struct.drm_device, ptr %269, i32 0, i32 30, i32 18
  %271 = icmp eq ptr %268, %270
  br i1 %271, label %274, label %272

272:                                              ; preds = %266
  %273 = load ptr, ptr %9, align 4
  br label %122

274:                                              ; preds = %266, %111
  %275 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %114, i32 0, i32 9, i32 17
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %274
  call void %276(ptr noundef %114, ptr noundef nonnull %7) #10
  br label %279

279:                                              ; preds = %278, %274
  %280 = load ptr, ptr %9, align 4
  %281 = getelementptr inbounds %struct.dpu_crtc_state, ptr %280, i32 0, i32 6
  %282 = load i32, ptr %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %324, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %4, i32 0, i32 1
  %286 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %4, i32 0, i32 2
  %287 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %4, i32 0, i32 3
  br label %288

288:                                              ; preds = %319, %284
  %289 = phi i32 [ %282, %284 ], [ %320, %319 ]
  %290 = phi i32 [ 0, %284 ], [ %322, %319 ]
  %291 = phi i32 [ 0, %284 ], [ %321, %319 ]
  %292 = getelementptr %struct.dpu_crtc_state, ptr %280, i32 0, i32 3, i32 %290
  %293 = getelementptr %struct.dpu_crtc_state, ptr %280, i32 0, i32 7, i32 %290
  %294 = load ptr, ptr %293, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  store i32 0, ptr %286, align 4, !annotation !9
  %295 = icmp eq ptr %292, null
  br i1 %295, label %319, label %296

296:                                              ; preds = %288
  %297 = getelementptr %struct.dpu_crtc_state, ptr %280, i32 0, i32 3, i32 %290, i32 2
  %298 = load i32, ptr %297, align 4
  %299 = load i32, ptr %292, align 4
  %300 = sub i32 %298, %299
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %319

302:                                              ; preds = %296
  %303 = getelementptr %struct.dpu_crtc_state, ptr %280, i32 0, i32 3, i32 %290, i32 3
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr %struct.dpu_crtc_state, ptr %280, i32 0, i32 3, i32 %290, i32 1
  %306 = load i32, ptr %305, align 4
  %307 = sub i32 %304, %306
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %302
  store i32 %300, ptr %4, align 4
  %310 = load i32, ptr %303, align 4
  %311 = load i32, ptr %305, align 4
  %312 = sub i32 %310, %311
  store i32 %312, ptr %285, align 4
  %313 = add i32 %291, 1
  %314 = icmp ne i32 %291, 0
  %315 = zext i1 %314 to i8
  store i8 %315, ptr %286, align 4
  store i32 0, ptr %287, align 4
  %316 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %294, i32 0, i32 6
  %317 = load ptr, ptr %316, align 4
  call void %317(ptr noundef %294, ptr noundef nonnull %4) #10
  %318 = load i32, ptr %281, align 8
  br label %319

319:                                              ; preds = %309, %302, %296, %288
  %320 = phi i32 [ %318, %309 ], [ %289, %302 ], [ %289, %288 ], [ %289, %296 ]
  %321 = phi i32 [ %313, %309 ], [ %291, %302 ], [ %291, %288 ], [ %291, %296 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %322 = add nuw i32 %290, 1
  %323 = icmp ult i32 %322, %320
  br i1 %323, label %288, label %324

324:                                              ; preds = %319, %279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %325 = load i32, ptr %94, align 8
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %365, label %327

327:                                              ; preds = %327, %324
  %328 = phi i32 [ %362, %327 ], [ 0, %324 ]
  %329 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %328
  %330 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %328, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = load ptr, ptr %329, align 4
  %333 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %332, i32 0, i32 6, i32 2
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %328, i32 3
  %336 = load i32, ptr %335, align 4
  call void %334(ptr noundef %332, i32 noundef %336) #10
  %337 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %331, i32 0, i32 9, i32 13
  %338 = load ptr, ptr %337, align 4
  %339 = load ptr, ptr %329, align 4
  %340 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %339, i32 0, i32 2
  %341 = load i32, ptr %340, align 4
  %342 = call i32 %338(ptr noundef %331, i32 noundef %341) #10
  %343 = getelementptr %struct.dpu_crtc_mixer, ptr %92, i32 %328, i32 4
  %344 = load i32, ptr %343, align 4
  %345 = or i32 %344, %342
  store i32 %345, ptr %343, align 4
  %346 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %331, i32 0, i32 9, i32 4
  %347 = load ptr, ptr %346, align 4
  call void %347(ptr noundef %331, i32 noundef %345) #10
  %348 = load ptr, ptr %329, align 4
  %349 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %348, i32 0, i32 2
  %350 = load i32, ptr %349, align 4
  %351 = add i32 %350, -1
  %352 = load i32, ptr %335, align 4
  %353 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %331, i32 0, i32 2
  %354 = load i32, ptr %353, align 4
  %355 = add i32 %354, -1
  %356 = load i32, ptr %343, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef %351, i32 noundef %352, i32 noundef %355, i32 noundef %356) #10
  %357 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %331, i32 0, i32 9, i32 16
  %358 = load ptr, ptr %357, align 4
  %359 = load ptr, ptr %329, align 4
  %360 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %359, i32 0, i32 2
  %361 = load i32, ptr %360, align 4
  call void %358(ptr noundef %331, i32 noundef %361, ptr noundef nonnull %8) #10
  %362 = add nuw i32 %328, 1
  %363 = load i32, ptr %94, align 8
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %327, label %365

365:                                              ; preds = %327, %324
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #10
  %366 = load ptr, ptr %9, align 4
  %367 = getelementptr inbounds %struct.dpu_crtc_state, ptr %366, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #10, !annotation !9
  %368 = getelementptr inbounds %struct.drm_crtc_state, ptr %366, i32 0, i32 3
  %369 = load i8, ptr %368, align 2
  %370 = and i8 %369, 32
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %479, label %372

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.dpu_crtc_state, ptr %366, i32 0, i32 6
  %374 = load i32, ptr %373, align 8
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %479, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.drm_crtc_state, ptr %366, i32 0, i32 11
  %378 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 1
  %379 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 2
  %380 = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %3, i32 0, i32 1
  %381 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 1, i32 1
  %382 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 2, i32 1
  %383 = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %3, i32 0, i32 2
  %384 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 1, i32 2
  %385 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %3, i32 0, i32 2, i32 2
  br label %386

386:                                              ; preds = %475, %376
  %387 = phi i32 [ %374, %376 ], [ %476, %475 ]
  %388 = phi i32 [ 0, %376 ], [ %477, %475 ]
  %389 = getelementptr %struct.dpu_crtc_mixer, ptr %367, i32 %388
  %390 = getelementptr %struct.dpu_crtc_mixer, ptr %367, i32 %388, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr %struct.dpu_crtc_mixer, ptr %367, i32 %388, i32 2
  %393 = load ptr, ptr %392, align 4
  %394 = icmp eq ptr %393, null
  br i1 %394, label %475, label %395

395:                                              ; preds = %386
  %396 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %393, i32 0, i32 4
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %475, label %399

399:                                              ; preds = %395
  %400 = load ptr, ptr %377, align 4
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  call void %397(ptr noundef nonnull %393, ptr noundef null) #10
  br label %454

403:                                              ; preds = %399
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false) #10
  %404 = getelementptr inbounds %struct.drm_property_blob, ptr %400, i32 0, i32 5
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %452, label %407

407:                                              ; preds = %403
  %408 = load i64, ptr %405, align 8
  %409 = lshr i64 %408, 17
  %410 = trunc i64 %409 to i32
  %411 = and i32 %410, 262143
  store i32 %411, ptr %3, align 4
  %412 = getelementptr [9 x i64], ptr %405, i32 0, i32 1
  %413 = load i64, ptr %412, align 8
  %414 = lshr i64 %413, 17
  %415 = trunc i64 %414 to i32
  %416 = and i32 %415, 262143
  store i32 %416, ptr %378, align 4
  %417 = getelementptr [9 x i64], ptr %405, i32 0, i32 2
  %418 = load i64, ptr %417, align 8
  %419 = lshr i64 %418, 17
  %420 = trunc i64 %419 to i32
  %421 = and i32 %420, 262143
  store i32 %421, ptr %379, align 4
  %422 = getelementptr [9 x i64], ptr %405, i32 0, i32 3
  %423 = load i64, ptr %422, align 8
  %424 = lshr i64 %423, 17
  %425 = trunc i64 %424 to i32
  %426 = and i32 %425, 262143
  store i32 %426, ptr %380, align 4
  %427 = getelementptr [9 x i64], ptr %405, i32 0, i32 4
  %428 = load i64, ptr %427, align 8
  %429 = lshr i64 %428, 17
  %430 = trunc i64 %429 to i32
  %431 = and i32 %430, 262143
  store i32 %431, ptr %381, align 4
  %432 = getelementptr [9 x i64], ptr %405, i32 0, i32 5
  %433 = load i64, ptr %432, align 8
  %434 = lshr i64 %433, 17
  %435 = trunc i64 %434 to i32
  %436 = and i32 %435, 262143
  store i32 %436, ptr %382, align 4
  %437 = getelementptr [9 x i64], ptr %405, i32 0, i32 6
  %438 = load i64, ptr %437, align 8
  %439 = lshr i64 %438, 17
  %440 = trunc i64 %439 to i32
  %441 = and i32 %440, 262143
  store i32 %441, ptr %383, align 4
  %442 = getelementptr [9 x i64], ptr %405, i32 0, i32 7
  %443 = load i64, ptr %442, align 8
  %444 = lshr i64 %443, 17
  %445 = trunc i64 %444 to i32
  %446 = and i32 %445, 262143
  store i32 %446, ptr %384, align 4
  %447 = getelementptr [9 x i64], ptr %405, i32 0, i32 8
  %448 = load i64, ptr %447, align 8
  %449 = lshr i64 %448, 17
  %450 = trunc i64 %449 to i32
  %451 = and i32 %450, 262143
  store i32 %451, ptr %385, align 4
  br label %452

452:                                              ; preds = %407, %403
  %453 = load ptr, ptr %396, align 4
  call void %453(ptr noundef nonnull %393, ptr noundef nonnull %3) #10
  br label %454

454:                                              ; preds = %452, %402
  %455 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %391, i32 0, i32 9, i32 14
  %456 = load ptr, ptr %455, align 4
  %457 = load ptr, ptr %392, align 4
  %458 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %457, i32 0, i32 2
  %459 = load i32, ptr %458, align 4
  %460 = call i32 %456(ptr noundef %391, i32 noundef %459) #10
  %461 = getelementptr %struct.dpu_crtc_mixer, ptr %367, i32 %388, i32 4
  %462 = load i32, ptr %461, align 4
  %463 = or i32 %462, %460
  store i32 %463, ptr %461, align 4
  %464 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %391, i32 0, i32 9, i32 4
  %465 = load ptr, ptr %464, align 4
  call void %465(ptr noundef %391, i32 noundef %463) #10
  %466 = load ptr, ptr %389, align 4
  %467 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %466, i32 0, i32 2
  %468 = load i32, ptr %467, align 4
  %469 = add i32 %468, -1
  %470 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %391, i32 0, i32 2
  %471 = load i32, ptr %470, align 4
  %472 = add i32 %471, -1
  %473 = load i32, ptr %461, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %469, i32 noundef %472, i32 noundef %473) #10
  %474 = load i32, ptr %373, align 8
  br label %475

475:                                              ; preds = %454, %395, %386
  %476 = phi i32 [ %387, %386 ], [ %387, %395 ], [ %474, %454 ]
  %477 = add nuw i32 %388, 1
  %478 = icmp ult i32 %477, %476
  br i1 %478, label %386, label %479

479:                                              ; preds = %475, %372, %365
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  br label %480

480:                                              ; preds = %479, %86, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_atomic_flush(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !41
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %10, label %11

10:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %9, i32 noundef 0) #10
  br label %64

11:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %9) #10
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, 7
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.dpu_crtc_atomic_flush, i32 noundef 781, i32 noundef %15) #12
  br label %64

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !8

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 785, i32 noundef 9, ptr noundef null) #10
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 28
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 18
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %20, align 4
  store ptr null, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  %30 = getelementptr inbounds %struct.dpu_crtc_state, ptr %12, i32 0, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33, !prof !16

33:                                               ; preds = %24
  %34 = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %0, i32 noundef 1, i1 noundef zeroext false) #10
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 30, i32 18
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %64, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 20, i32 2
  br label %41

41:                                               ; preds = %59, %39
  %42 = phi ptr [ %35, %39 ], [ %60, %59 ]
  %43 = phi ptr [ %37, %39 ], [ %61, %59 ]
  %44 = getelementptr i8, ptr %43, i32 -4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %43, i32 408
  %49 = load i32, ptr %48, align 4
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %47
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %41
  %54 = load i32, ptr %40, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @dpu_plane_set_error(ptr noundef %44, i1 noundef zeroext true) #10
  br label %57

57:                                               ; preds = %56, %53
  tail call void @dpu_plane_flush(ptr noundef %44) #10
  %58 = load ptr, ptr %0, align 8
  br label %59

59:                                               ; preds = %57, %41
  %60 = phi ptr [ %58, %57 ], [ %42, %41 ]
  %61 = load ptr, ptr %43, align 4
  %62 = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 30, i32 18
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %41

64:                                               ; preds = %59, %33, %24, %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_enable(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %8) #10
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %47, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  br label %15

15:                                               ; preds = %33, %13
  %16 = phi ptr [ %9, %13 ], [ %34, %33 ]
  %17 = phi ptr [ %11, %13 ], [ %36, %33 ]
  %18 = phi i1 [ false, %13 ], [ %35, %33 ]
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %17, i32 36
  %23 = load i32, ptr %22, align 4
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %15
  %28 = getelementptr i8, ptr %17, i32 -4
  %29 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %28) #10
  %30 = icmp eq i32 %29, 2
  %31 = select i1 %30, i1 true, i1 %18
  tail call void @dpu_encoder_register_frame_event_callback(ptr noundef %28, ptr noundef nonnull @dpu_crtc_frame_event_cb, ptr noundef %0) #10
  %32 = load ptr, ptr %0, align 8
  br label %33

33:                                               ; preds = %27, %15
  %34 = phi ptr [ %32, %27 ], [ %16, %15 ]
  %35 = phi i1 [ %31, %27 ], [ %18, %15 ]
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 16
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %15

39:                                               ; preds = %33
  br i1 %35, label %40, label %47

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.msm_drm_private, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dpu_kms, ptr %44, i32 0, i32 22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #10, !srcloc !20
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #10, !srcloc !47
  br label %47

47:                                               ; preds = %40, %39, %2
  %48 = icmp eq ptr %0, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %7, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %50, %49 ], [ -1, %47 ]
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_enable, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #10
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %67 = tail call i32 @__traceiter_dpu_crtc_enable(ptr noundef null, i32 noundef %52, i1 noundef zeroext true, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !57
  br label %68

68:                                               ; preds = %66, %55, %51
  %69 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 7
  store i8 1, ptr %69, align 8
  %70 = load ptr, ptr %0, align 8
  %71 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 30, i32 16
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %95, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  br label %76

76:                                               ; preds = %90, %74
  %77 = phi ptr [ %70, %74 ], [ %91, %90 ]
  %78 = phi ptr [ %72, %74 ], [ %92, %90 ]
  %79 = load ptr, ptr %75, align 4
  %80 = getelementptr inbounds %struct.drm_crtc_state, ptr %79, i32 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %78, i32 36
  %83 = load i32, ptr %82, align 4
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %81
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %76
  %88 = getelementptr i8, ptr %78, i32 -4
  tail call void @dpu_encoder_assign_crtc(ptr noundef %88, ptr noundef %0) #10
  %89 = load ptr, ptr %0, align 8
  br label %90

90:                                               ; preds = %87, %76
  %91 = phi ptr [ %89, %87 ], [ %77, %76 ]
  %92 = load ptr, ptr %78, align 4
  %93 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 30, i32 16
  %94 = icmp eq ptr %92, %93
  br i1 %94, label %95, label %76

95:                                               ; preds = %90, %68
  tail call void @drm_crtc_vblank_on(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.__drm_crtcs_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %12) #10
  tail call void @drm_crtc_vblank_off(ptr noundef %0) #10
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %41, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 6
  br label %19

19:                                               ; preds = %35, %17
  %20 = phi ptr [ %13, %17 ], [ %36, %35 ]
  %21 = phi ptr [ %15, %17 ], [ %38, %35 ]
  %22 = phi i1 [ false, %17 ], [ %37, %35 ]
  %23 = load i32, ptr %18, align 4
  %24 = getelementptr i8, ptr %21, i32 36
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = getelementptr i8, ptr %21, i32 -4
  %31 = tail call i32 @dpu_encoder_get_intf_mode(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 2
  %33 = select i1 %32, i1 true, i1 %22
  tail call void @dpu_encoder_assign_crtc(ptr noundef %30, ptr noundef null) #10
  %34 = load ptr, ptr %0, align 8
  br label %35

35:                                               ; preds = %29, %19
  %36 = phi ptr [ %34, %29 ], [ %20, %19 ]
  %37 = phi i1 [ %33, %29 ], [ %22, %19 ]
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 16
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %19

41:                                               ; preds = %35, %2
  %42 = phi i1 [ false, %2 ], [ %37, %35 ]
  %43 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 13
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.72) #10
  br label %91

47:                                               ; preds = %41
  %48 = tail call ptr @llvm.thread.pointer() #10
  %49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 53
  %50 = load i32, ptr %49, align 4
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %64 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %50, ptr noundef nonnull @.str.73, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %65

65:                                               ; preds = %63, %53, %47
  %66 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 17
  %67 = tail call i32 @wait_for_completion_timeout(ptr noundef %66, i32 noundef 6) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.74, i32 noundef 0) #10
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, ptr %49, align 4
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %85 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %71, ptr noundef nonnull @.str.73, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %86

86:                                               ; preds = %84, %74, %70
  br i1 %68, label %87, label %91

87:                                               ; preds = %86
  %88 = load i32, ptr %11, align 4
  %89 = load volatile i32, ptr %43, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.dpu_crtc_disable, i32 noundef 972, i32 noundef %88, i32 noundef %89) #12
  br label %91

91:                                               ; preds = %87, %86, %46
  %92 = icmp eq ptr %0, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = load i32, ptr %11, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %94, %93 ], [ -1, %91 ]
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = tail call ptr @llvm.thread.pointer() #10
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %111 = tail call i32 @__traceiter_dpu_crtc_disable(ptr noundef null, i32 noundef %96, i1 noundef zeroext false, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !59
  br label %112

112:                                              ; preds = %110, %99, %95
  %113 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 7
  store i8 0, ptr %113, align 8
  %114 = load volatile i32, ptr %43, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %112
  br i1 %92, label %119, label %117

117:                                              ; preds = %116
  %118 = load i32, ptr %11, align 4
  br label %119

119:                                              ; preds = %117, %116
  %120 = phi i32 [ %118, %117 ], [ -1, %116 ]
  %121 = load volatile i32, ptr %43, align 4
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable_frame_pending, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = tail call ptr @llvm.thread.pointer() #10
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %124
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %136 = tail call i32 @__traceiter_dpu_crtc_disable_frame_pending(ptr noundef null, i32 noundef %120, i32 noundef %121) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  br label %137

137:                                              ; preds = %135, %124, %119
  br i1 %42, label %138, label %139

138:                                              ; preds = %137
  tail call void @dpu_core_perf_crtc_release_bw(ptr noundef %0) #10
  br label %139

139:                                              ; preds = %138, %137
  store volatile i32 0, ptr %43, align 4
  br label %140

140:                                              ; preds = %139, %112
  %141 = tail call i32 @dpu_core_perf_crtc_update(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #10
  %142 = load ptr, ptr %0, align 8
  %143 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 30, i32 16
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %143
  br i1 %145, label %165, label %146

146:                                              ; preds = %160, %140
  %147 = phi ptr [ %161, %160 ], [ %142, %140 ]
  %148 = phi ptr [ %162, %160 ], [ %144, %140 ]
  %149 = load ptr, ptr %9, align 4
  %150 = getelementptr inbounds %struct.drm_crtc_state, ptr %149, i32 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr i8, ptr %148, i32 36
  %153 = load i32, ptr %152, align 4
  %154 = shl nuw i32 1, %153
  %155 = and i32 %154, %151
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %146
  %158 = getelementptr i8, ptr %148, i32 -4
  tail call void @dpu_encoder_register_frame_event_callback(ptr noundef %158, ptr noundef null, ptr noundef null) #10
  %159 = load ptr, ptr %0, align 8
  br label %160

160:                                              ; preds = %157, %146
  %161 = phi ptr [ %159, %157 ], [ %147, %146 ]
  %162 = load ptr, ptr %148, align 4
  %163 = getelementptr inbounds %struct.drm_device, ptr %161, i32 0, i32 30, i32 16
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %165, label %146

165:                                              ; preds = %160, %140
  %166 = getelementptr inbounds %struct.dpu_crtc_state, ptr %10, i32 0, i32 6
  %167 = getelementptr inbounds %struct.dpu_crtc_state, ptr %10, i32 0, i32 1
  store i8 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.dpu_crtc_state, ptr %10, i32 0, i32 2
  store i8 0, ptr %168, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(44) %166, i8 0, i64 44, i1 false)
  %169 = load ptr, ptr %9, align 4
  %170 = getelementptr inbounds %struct.drm_crtc_state, ptr %169, i32 0, i32 18
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %188, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.drm_crtc_state, ptr %169, i32 0, i32 2
  %175 = load i8, ptr %174, align 1, !range !41
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load ptr, ptr %0, align 8
  %179 = getelementptr inbounds %struct.drm_device, ptr %178, i32 0, i32 28
  %180 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %179) #10
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr inbounds %struct.drm_crtc_state, ptr %181, i32 0, i32 18
  %183 = load ptr, ptr %182, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %0, ptr noundef %183) #10
  %184 = load ptr, ptr %9, align 4
  %185 = getelementptr inbounds %struct.drm_crtc_state, ptr %184, i32 0, i32 18
  store ptr null, ptr %185, align 4
  %186 = load ptr, ptr %0, align 8
  %187 = getelementptr inbounds %struct.drm_device, ptr %186, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %187, i32 noundef %180) #10
  br label %188

188:                                              ; preds = %177, %173, %165
  %189 = load ptr, ptr %0, align 8
  %190 = getelementptr inbounds %struct.drm_device, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @__pm_runtime_idle(ptr noundef %191, i32 noundef 4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_crtc_get_scanout_position(ptr noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef readonly %6) #0 {
  %8 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 16
  br label %12

12:                                               ; preds = %16, %7
  %13 = phi ptr [ %11, %7 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 48
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %9) #10
  br label %57

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 24
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 23
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 25
  %33 = load i16, ptr %32, align 4
  %34 = zext i16 %33 to i32
  %35 = sub nsw i32 %34, %27
  %36 = add nsw i32 %35, %31
  %37 = add nsw i32 %36, 1
  %38 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 20
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %37, %40
  %42 = icmp eq ptr %4, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %24
  %44 = tail call i64 @ktime_get() #10
  store i64 %44, ptr %4, align 8
  br label %45

45:                                               ; preds = %43, %24
  %46 = tail call i32 @dpu_encoder_get_linecount(ptr noundef nonnull %21) #10
  %47 = icmp sgt i32 %46, %36
  %48 = icmp sgt i32 %46, %41
  %49 = select i1 %47, i1 %48, i1 false
  %50 = select i1 %49, i32 %34, i32 0
  %51 = xor i32 %36, -1
  %52 = add i32 %46, %51
  %53 = sub i32 %52, %50
  store i32 %53, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %54 = icmp eq ptr %5, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %45
  %56 = tail call i64 @ktime_get() #10
  store i64 %56, ptr %5, align 8
  br label %57

57:                                               ; preds = %55, %45, %23
  %58 = phi i1 [ true, %45 ], [ true, %55 ], [ false, %23 ]
  ret i1 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_plane_pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_clear_multirect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_dpu_plane_virtual(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_plane_validate_multirect_v2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_perf_crtc_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_trigger_kickoff_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_get_ctl_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_setup_mixer(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_set_error(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_register_frame_event_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_crtc_frame_event_cb(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %5
  %16 = phi i32 [ %14, %12 ], [ -1, %5 ]
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_cb, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %31 = tail call i32 @__traceiter_dpu_crtc_frame_event_cb(ptr noundef null, i32 noundef %16, i32 noundef %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  br label %32

32:                                               ; preds = %30, %19, %15
  %33 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 16
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #10
  %35 = getelementptr inbounds %struct.dpu_crtc, ptr %0, i32 0, i32 15
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  %38 = getelementptr i8, ptr %36, i32 -24
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %36, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %42, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #10
  %46 = getelementptr i8, ptr %36, i32 16
  store i32 %1, ptr %46, align 8
  %47 = getelementptr i8, ptr %36, i32 -4
  store ptr %0, ptr %47, align 4
  %48 = tail call i64 @ktime_get() #10
  %49 = getelementptr i8, ptr %36, i32 8
  store i64 %48, ptr %49, align 8
  %50 = getelementptr %struct.msm_drm_private, ptr %8, i32 0, i32 27, i32 %10, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = tail call zeroext i1 @kthread_queue_work(ptr noundef %51, ptr noundef nonnull %38) #10
  br label %59

53:                                               ; preds = %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #10
  %54 = tail call i32 @___ratelimit(ptr noundef nonnull @dpu_crtc_frame_event_cb._rs, ptr noundef nonnull @__func__.dpu_crtc_frame_event_cb) #10
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i32 noundef %58, i32 noundef %1) #10
  br label %59

59:                                               ; preds = %56, %53, %41, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_assign_crtc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_frame_event_cb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_enable(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_disable(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_crtc_disable_frame_pending(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_get_linecount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = !{i64 2156204969}
!11 = !{i64 2156205129}
!12 = !{i64 2156222083}
!13 = !{i64 2156222255}
!14 = !{i64 2156191960}
!15 = !{i64 2156192128}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2156017145}
!18 = !{i64 2156017337}
!19 = !{i64 2148479036}
!20 = !{i64 879804, i64 2148369775, i64 2148369801, i64 2148369848, i64 2148369870, i64 2148369898, i64 2148369918}
!21 = !{i64 2148381874, i64 2148381906, i64 2148381935, i64 2148381969, i64 2148382000, i64 2148382023}
!22 = !{i64 2148479239}
!23 = !{i64 2156712918}
!24 = !{i64 2156713100}
!25 = !{i64 2156668742}
!26 = !{i64 2156668954}
!27 = !{i64 2148481869}
!28 = !{i64 2148384231, i64 2148384263, i64 2148384292, i64 2148384326, i64 2148384357, i64 2148384380}
!29 = !{i64 2148482072}
!30 = !{i64 2156514042}
!31 = !{i64 2156514230}
!32 = !{i64 2156527990}
!33 = !{i64 2156528194}
!34 = !{i64 2149048408}
!35 = !{i64 2149044232}
!36 = !{i64 2149044307, i64 2149044334, i64 2149044381, i64 2149044403, i64 2149044431, i64 2149044451}
!37 = !{i64 785727}
!38 = !{i64 2149072552}
!39 = !{i64 744756, i64 744783}
!40 = !{i64 745451, i64 745478, i64 745511, i64 745532, i64 745559, i64 745585}
!41 = !{i8 0, i8 2}
!42 = !{i64 2156654477}
!43 = !{i64 2156654679}
!44 = !{!45}
!45 = distinct !{!45, !46, !"drm_plane_state_dest: argument 0"}
!46 = distinct !{!46, !"drm_plane_state_dest"}
!47 = !{i64 2148381190, i64 2148381216, i64 2148381245, i64 2148381279, i64 2148381310, i64 2148381333}
!48 = !{!49}
!49 = distinct !{!49, !50, !"drm_plane_state_dest: argument 0"}
!50 = distinct !{!50, !"drm_plane_state_dest"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"drm_plane_state_dest: argument 0"}
!53 = distinct !{!53, !"drm_plane_state_dest"}
!54 = !{i64 2156640555}
!55 = !{i64 2156640857}
!56 = !{i64 2156686372}
!57 = !{i64 2156686554}
!58 = !{i64 2156699641}
!59 = !{i64 2156699825}
!60 = !{i64 2156726490}
!61 = !{i64 2156726704}
!62 = !{i64 2156496429}
!63 = !{i64 2156496613}
