; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.105, %struct.trace_event, ptr, ptr, %union.anon.106, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.106 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dpu_perf_set_qos_luts = type { %struct.trace_entry, i32, i32, i8, i32, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_dpu_perf_set_danger_luts = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_perf_set_ot = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_cmd_release_bw = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_tracing_mark_write = type { %struct.trace_entry, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_dpu_trace_counter = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.trace_event_raw_dpu_perf_crtc_update = type { %struct.trace_entry, i32, i64, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_irq_template = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_irq_wait_success = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_drm_obj_template = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_enable = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_keyval_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_atomic_check_flags = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_id_enable_template = type { %struct.trace_entry, i32, i8, [0 x i8] }
%struct.trace_event_raw_dpu_enc_rc = type { %struct.trace_entry, i32, i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_frame_done_cb = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_trigger_flush = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_ktime_template = type { %struct.trace_entry, i32, i64, [0 x i8] }
%struct.trace_event_raw_dpu_id_event_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_wait_event_timeout = type { %struct.trace_entry, i32, i32, i32, i64, i64, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl = type { %struct.trace_entry, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl = type { %struct.trace_entry, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_dpu_crtc_setup_mixer = type { %struct.trace_entry, i32, i32, i32, %struct.drm_rect, %struct.drm_rect, i32, i32, i32, i32, i32, i32, i64, [0 x i8] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dpu_plane_state = type { %struct.drm_plane_state, ptr, i32, i8, i32, i32, i8, i64, i64 }
%struct.trace_event_raw_dpu_crtc_setup_lm_bounds = type { %struct.trace_entry, i32, i32, %struct.drm_rect, [0 x i8] }
%struct.trace_event_raw_dpu_crtc_vblank_enable = type { %struct.trace_entry, i32, i32, i8, i8, [0 x i8] }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.trace_event_raw_dpu_crtc_enable_template = type { %struct.trace_entry, i32, i8, i8, [0 x i8] }
%struct.trace_event_raw_dpu_crtc_disable_frame_pending = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_plane_set_scanout = type { %struct.trace_entry, i32, %struct.dpu_hw_fmt_layout, i32, [0 x i8] }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.trace_event_raw_dpu_plane_disable = type { %struct.trace_entry, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_dpu_rm_iter_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_rm_reserve_lms = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_pp_connect_ext_te = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_core_irq_callback_template = type { %struct.trace_entry, i32, ptr, [0 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.trace_event_raw_dpu_core_perf_update_clk = type { %struct.trace_entry, i32, i8, i64, [0 x i8] }
%struct.trace_event_raw_dpu_hw_ctl_update_pending_flush = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_dpu_hw_ctl_pending_flush_template = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dpu_debugfs_regset32 = type { i32, i32, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.107, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.107 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
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
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.msm_display_info = type { i32, i32, i32, [2 x i32], i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.hdr_sink_metadata = type { i32, %union.anon.78 }
%union.anon.78 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.dpu_danger_safe_status = type { i8, [15 x i8] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__tpstrtab_dpu_perf_set_qos_luts = internal constant [22 x i8] c"dpu_perf_set_qos_luts\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_perf_set_qos_luts = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_perf_set_qos_luts }, align 4
@__tracepoint_dpu_perf_set_qos_luts = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_perf_set_qos_luts, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_perf_set_qos_luts, ptr null, ptr @__traceiter_dpu_perf_set_qos_luts, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_perf_set_qos_luts = internal constant ptr @__tracepoint_dpu_perf_set_qos_luts, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_perf_set_danger_luts = internal constant [25 x i8] c"dpu_perf_set_danger_luts\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_perf_set_danger_luts = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_perf_set_danger_luts }, align 4
@__tracepoint_dpu_perf_set_danger_luts = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_perf_set_danger_luts, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_perf_set_danger_luts, ptr null, ptr @__traceiter_dpu_perf_set_danger_luts, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_perf_set_danger_luts = internal constant ptr @__tracepoint_dpu_perf_set_danger_luts, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_perf_set_ot = internal constant [16 x i8] c"dpu_perf_set_ot\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_perf_set_ot = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_perf_set_ot }, align 4
@__tracepoint_dpu_perf_set_ot = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_perf_set_ot, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_perf_set_ot, ptr null, ptr @__traceiter_dpu_perf_set_ot, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_perf_set_ot = internal constant ptr @__tracepoint_dpu_perf_set_ot, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_cmd_release_bw = internal constant [19 x i8] c"dpu_cmd_release_bw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_cmd_release_bw = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_cmd_release_bw }, align 4
@__tracepoint_dpu_cmd_release_bw = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_cmd_release_bw, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_cmd_release_bw, ptr null, ptr @__traceiter_dpu_cmd_release_bw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_cmd_release_bw = internal constant ptr @__tracepoint_dpu_cmd_release_bw, section "__tracepoints_ptrs", align 4
@__tpstrtab_tracing_mark_write = internal constant [19 x i8] c"tracing_mark_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tracing_mark_write = dso_local global %struct.static_call_key { ptr @__traceiter_tracing_mark_write }, align 4
@__tracepoint_tracing_mark_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_tracing_mark_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_tracing_mark_write, ptr null, ptr @__traceiter_tracing_mark_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tracing_mark_write = internal constant ptr @__tracepoint_tracing_mark_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_trace_counter = internal constant [18 x i8] c"dpu_trace_counter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_trace_counter = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_trace_counter }, align 4
@__tracepoint_dpu_trace_counter = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_trace_counter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_trace_counter, ptr null, ptr @__traceiter_dpu_trace_counter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_trace_counter = internal constant ptr @__tracepoint_dpu_trace_counter, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_perf_crtc_update = internal constant [21 x i8] c"dpu_perf_crtc_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_perf_crtc_update = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_perf_crtc_update }, align 4
@__tracepoint_dpu_perf_crtc_update = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_perf_crtc_update, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_perf_crtc_update, ptr null, ptr @__traceiter_dpu_perf_crtc_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_perf_crtc_update = internal constant ptr @__tracepoint_dpu_perf_crtc_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_irq_register_success = internal constant [29 x i8] c"dpu_enc_irq_register_success\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_irq_register_success = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_irq_register_success }, align 4
@__tracepoint_dpu_enc_irq_register_success = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_irq_register_success, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_irq_register_success, ptr null, ptr @__traceiter_dpu_enc_irq_register_success, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_irq_register_success = internal constant ptr @__tracepoint_dpu_enc_irq_register_success, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_irq_unregister_success = internal constant [31 x i8] c"dpu_enc_irq_unregister_success\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_irq_unregister_success = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_irq_unregister_success }, align 4
@__tracepoint_dpu_enc_irq_unregister_success = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_irq_unregister_success, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_irq_unregister_success, ptr null, ptr @__traceiter_dpu_enc_irq_unregister_success, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_irq_unregister_success = internal constant ptr @__tracepoint_dpu_enc_irq_unregister_success, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_irq_wait_success = internal constant [25 x i8] c"dpu_enc_irq_wait_success\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_irq_wait_success = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_irq_wait_success }, align 4
@__tracepoint_dpu_enc_irq_wait_success = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_irq_wait_success, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_irq_wait_success, ptr null, ptr @__traceiter_dpu_enc_irq_wait_success, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_irq_wait_success = internal constant ptr @__tracepoint_dpu_enc_irq_wait_success, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_atomic_check = internal constant [21 x i8] c"dpu_enc_atomic_check\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_atomic_check = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_atomic_check }, align 4
@__tracepoint_dpu_enc_atomic_check = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_atomic_check, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_atomic_check, ptr null, ptr @__traceiter_dpu_enc_atomic_check, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_atomic_check = internal constant ptr @__tracepoint_dpu_enc_atomic_check, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_mode_set = internal constant [17 x i8] c"dpu_enc_mode_set\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_mode_set = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_mode_set }, align 4
@__tracepoint_dpu_enc_mode_set = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_mode_set, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_mode_set, ptr null, ptr @__traceiter_dpu_enc_mode_set, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_mode_set = internal constant ptr @__tracepoint_dpu_enc_mode_set, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_disable = internal constant [16 x i8] c"dpu_enc_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_disable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_disable }, align 4
@__tracepoint_dpu_enc_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_disable, ptr null, ptr @__traceiter_dpu_enc_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_disable = internal constant ptr @__tracepoint_dpu_enc_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_kickoff = internal constant [16 x i8] c"dpu_enc_kickoff\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_kickoff = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_kickoff }, align 4
@__tracepoint_dpu_enc_kickoff = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_kickoff, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_kickoff, ptr null, ptr @__traceiter_dpu_enc_kickoff, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_kickoff = internal constant ptr @__tracepoint_dpu_enc_kickoff, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_prepare_kickoff = internal constant [24 x i8] c"dpu_enc_prepare_kickoff\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_prepare_kickoff = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_prepare_kickoff }, align 4
@__tracepoint_dpu_enc_prepare_kickoff = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_prepare_kickoff, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_prepare_kickoff, ptr null, ptr @__traceiter_dpu_enc_prepare_kickoff, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_prepare_kickoff = internal constant ptr @__tracepoint_dpu_enc_prepare_kickoff, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_prepare_kickoff_reset = internal constant [30 x i8] c"dpu_enc_prepare_kickoff_reset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_prepare_kickoff_reset = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_prepare_kickoff_reset }, align 4
@__tracepoint_dpu_enc_prepare_kickoff_reset = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_prepare_kickoff_reset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_prepare_kickoff_reset, ptr null, ptr @__traceiter_dpu_enc_prepare_kickoff_reset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_prepare_kickoff_reset = internal constant ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_complete_flip = internal constant [23 x i8] c"dpu_crtc_complete_flip\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_complete_flip = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_complete_flip }, align 4
@__tracepoint_dpu_crtc_complete_flip = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_complete_flip, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_complete_flip, ptr null, ptr @__traceiter_dpu_crtc_complete_flip, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_complete_flip = internal constant ptr @__tracepoint_dpu_crtc_complete_flip, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_vblank_cb = internal constant [19 x i8] c"dpu_crtc_vblank_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_vblank_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_vblank_cb }, align 4
@__tracepoint_dpu_crtc_vblank_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_vblank_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_vblank_cb, ptr null, ptr @__traceiter_dpu_crtc_vblank_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_vblank_cb = internal constant ptr @__tracepoint_dpu_crtc_vblank_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_complete_commit = internal constant [25 x i8] c"dpu_crtc_complete_commit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_complete_commit = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_complete_commit }, align 4
@__tracepoint_dpu_crtc_complete_commit = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_complete_commit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_complete_commit, ptr null, ptr @__traceiter_dpu_crtc_complete_commit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_complete_commit = internal constant ptr @__tracepoint_dpu_crtc_complete_commit, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_kms_commit = internal constant [15 x i8] c"dpu_kms_commit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_kms_commit = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_kms_commit }, align 4
@__tracepoint_dpu_kms_commit = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_kms_commit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_kms_commit, ptr null, ptr @__traceiter_dpu_kms_commit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_kms_commit = internal constant ptr @__tracepoint_dpu_kms_commit, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_kms_wait_for_commit_done = internal constant [29 x i8] c"dpu_kms_wait_for_commit_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_kms_wait_for_commit_done = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_kms_wait_for_commit_done }, align 4
@__tracepoint_dpu_kms_wait_for_commit_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_kms_wait_for_commit_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_kms_wait_for_commit_done, ptr null, ptr @__traceiter_dpu_kms_wait_for_commit_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_kms_wait_for_commit_done = internal constant ptr @__tracepoint_dpu_kms_wait_for_commit_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_runtime_resume = internal constant [24 x i8] c"dpu_crtc_runtime_resume\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_runtime_resume = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_runtime_resume }, align 4
@__tracepoint_dpu_crtc_runtime_resume = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_runtime_resume, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_runtime_resume, ptr null, ptr @__traceiter_dpu_crtc_runtime_resume, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_runtime_resume = internal constant ptr @__tracepoint_dpu_crtc_runtime_resume, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_enable = internal constant [15 x i8] c"dpu_enc_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_enable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_enable }, align 4
@__tracepoint_dpu_enc_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_enable, ptr null, ptr @__traceiter_dpu_enc_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_enable = internal constant ptr @__tracepoint_dpu_enc_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_underrun_cb = internal constant [20 x i8] c"dpu_enc_underrun_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_underrun_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_underrun_cb }, align 4
@__tracepoint_dpu_enc_underrun_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_underrun_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_underrun_cb, ptr null, ptr @__traceiter_dpu_enc_underrun_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_underrun_cb = internal constant ptr @__tracepoint_dpu_enc_underrun_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_trigger_start = internal constant [22 x i8] c"dpu_enc_trigger_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_trigger_start = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_trigger_start }, align 4
@__tracepoint_dpu_enc_trigger_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_trigger_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_trigger_start, ptr null, ptr @__traceiter_dpu_enc_trigger_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_trigger_start = internal constant ptr @__tracepoint_dpu_enc_trigger_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_atomic_check_flags = internal constant [27 x i8] c"dpu_enc_atomic_check_flags\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_atomic_check_flags = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_atomic_check_flags }, align 4
@__tracepoint_dpu_enc_atomic_check_flags = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_atomic_check_flags, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_atomic_check_flags, ptr null, ptr @__traceiter_dpu_enc_atomic_check_flags, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_atomic_check_flags = internal constant ptr @__tracepoint_dpu_enc_atomic_check_flags, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_rc_helper = internal constant [18 x i8] c"dpu_enc_rc_helper\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_rc_helper = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_rc_helper }, align 4
@__tracepoint_dpu_enc_rc_helper = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_rc_helper, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_rc_helper, ptr null, ptr @__traceiter_dpu_enc_rc_helper, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_rc_helper = internal constant ptr @__tracepoint_dpu_enc_rc_helper, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_vblank_cb = internal constant [18 x i8] c"dpu_enc_vblank_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_vblank_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_vblank_cb }, align 4
@__tracepoint_dpu_enc_vblank_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_vblank_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_vblank_cb, ptr null, ptr @__traceiter_dpu_enc_vblank_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_vblank_cb = internal constant ptr @__tracepoint_dpu_enc_vblank_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_frame_event_cb = internal constant [23 x i8] c"dpu_enc_frame_event_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_frame_event_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_frame_event_cb }, align 4
@__tracepoint_dpu_enc_frame_event_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_frame_event_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_frame_event_cb, ptr null, ptr @__traceiter_dpu_enc_frame_event_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_frame_event_cb = internal constant ptr @__tracepoint_dpu_enc_frame_event_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_cmd_connect_te = internal constant [28 x i8] c"dpu_enc_phys_cmd_connect_te\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_cmd_connect_te = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_cmd_connect_te }, align 4
@__tracepoint_dpu_enc_phys_cmd_connect_te = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_cmd_connect_te, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_cmd_connect_te, ptr null, ptr @__traceiter_dpu_enc_phys_cmd_connect_te, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_cmd_connect_te = internal constant ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_rc = internal constant [11 x i8] c"dpu_enc_rc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_rc = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_rc }, align 4
@__tracepoint_dpu_enc_rc = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_rc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_rc, ptr null, ptr @__traceiter_dpu_enc_rc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_rc = internal constant ptr @__tracepoint_dpu_enc_rc, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_frame_done_cb_not_busy = internal constant [31 x i8] c"dpu_enc_frame_done_cb_not_busy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_frame_done_cb_not_busy = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_frame_done_cb_not_busy }, align 4
@__tracepoint_dpu_enc_frame_done_cb_not_busy = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_frame_done_cb_not_busy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_frame_done_cb_not_busy, ptr null, ptr @__traceiter_dpu_enc_frame_done_cb_not_busy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_frame_done_cb_not_busy = internal constant ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_frame_done_cb = internal constant [22 x i8] c"dpu_enc_frame_done_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_frame_done_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_frame_done_cb }, align 4
@__tracepoint_dpu_enc_frame_done_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_frame_done_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_frame_done_cb, ptr null, ptr @__traceiter_dpu_enc_frame_done_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_frame_done_cb = internal constant ptr @__tracepoint_dpu_enc_frame_done_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_trigger_flush = internal constant [22 x i8] c"dpu_enc_trigger_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_trigger_flush = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_trigger_flush }, align 4
@__tracepoint_dpu_enc_trigger_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_trigger_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_trigger_flush, ptr null, ptr @__traceiter_dpu_enc_trigger_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_trigger_flush = internal constant ptr @__tracepoint_dpu_enc_trigger_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_vsync_event_work = internal constant [25 x i8] c"dpu_enc_vsync_event_work\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_vsync_event_work = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_vsync_event_work }, align 4
@__tracepoint_dpu_enc_vsync_event_work = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_vsync_event_work, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_vsync_event_work, ptr null, ptr @__traceiter_dpu_enc_vsync_event_work, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_vsync_event_work = internal constant ptr @__tracepoint_dpu_enc_vsync_event_work, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_early_kickoff = internal constant [22 x i8] c"dpu_enc_early_kickoff\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_early_kickoff = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_early_kickoff }, align 4
@__tracepoint_dpu_enc_early_kickoff = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_early_kickoff, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_early_kickoff, ptr null, ptr @__traceiter_dpu_enc_early_kickoff, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_early_kickoff = internal constant ptr @__tracepoint_dpu_enc_early_kickoff, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_frame_done_timeout = internal constant [27 x i8] c"dpu_enc_frame_done_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_frame_done_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_frame_done_timeout }, align 4
@__tracepoint_dpu_enc_frame_done_timeout = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_frame_done_timeout, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_frame_done_timeout, ptr null, ptr @__traceiter_dpu_enc_frame_done_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_frame_done_timeout = internal constant ptr @__tracepoint_dpu_enc_frame_done_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_frame_event_cb = internal constant [24 x i8] c"dpu_crtc_frame_event_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_frame_event_cb = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_frame_event_cb }, align 4
@__tracepoint_dpu_crtc_frame_event_cb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_frame_event_cb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_frame_event_cb, ptr null, ptr @__traceiter_dpu_crtc_frame_event_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_frame_event_cb = internal constant ptr @__tracepoint_dpu_crtc_frame_event_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_frame_event_done = internal constant [26 x i8] c"dpu_crtc_frame_event_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_frame_event_done = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_frame_event_done }, align 4
@__tracepoint_dpu_crtc_frame_event_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_frame_event_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_frame_event_done, ptr null, ptr @__traceiter_dpu_crtc_frame_event_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_frame_event_done = internal constant ptr @__tracepoint_dpu_crtc_frame_event_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_frame_event_more_pending = internal constant [34 x i8] c"dpu_crtc_frame_event_more_pending\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_frame_event_more_pending = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_frame_event_more_pending }, align 4
@__tracepoint_dpu_crtc_frame_event_more_pending = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_frame_event_more_pending, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_frame_event_more_pending, ptr null, ptr @__traceiter_dpu_crtc_frame_event_more_pending, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_frame_event_more_pending = internal constant ptr @__tracepoint_dpu_crtc_frame_event_more_pending, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_wait_event_timeout = internal constant [27 x i8] c"dpu_enc_wait_event_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_wait_event_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_wait_event_timeout }, align 4
@__tracepoint_dpu_enc_wait_event_timeout = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_wait_event_timeout, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_wait_event_timeout, ptr null, ptr @__traceiter_dpu_enc_wait_event_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_wait_event_timeout = internal constant ptr @__tracepoint_dpu_enc_wait_event_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_cmd_irq_ctrl = internal constant [26 x i8] c"dpu_enc_phys_cmd_irq_ctrl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_cmd_irq_ctrl = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_cmd_irq_ctrl }, align 4
@__tracepoint_dpu_enc_phys_cmd_irq_ctrl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_cmd_irq_ctrl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_cmd_irq_ctrl, ptr null, ptr @__traceiter_dpu_enc_phys_cmd_irq_ctrl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_cmd_irq_ctrl = internal constant ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_cmd_pp_tx_done = internal constant [28 x i8] c"dpu_enc_phys_cmd_pp_tx_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_cmd_pp_tx_done = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_cmd_pp_tx_done }, align 4
@__tracepoint_dpu_enc_phys_cmd_pp_tx_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_cmd_pp_tx_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_cmd_pp_tx_done, ptr null, ptr @__traceiter_dpu_enc_phys_cmd_pp_tx_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_cmd_pp_tx_done = internal constant ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_cmd_pdone_timeout = internal constant [31 x i8] c"dpu_enc_phys_cmd_pdone_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_cmd_pdone_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_cmd_pdone_timeout }, align 4
@__tracepoint_dpu_enc_phys_cmd_pdone_timeout = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_cmd_pdone_timeout, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_cmd_pdone_timeout, ptr null, ptr @__traceiter_dpu_enc_phys_cmd_pdone_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_cmd_pdone_timeout = internal constant ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_vid_post_kickoff = internal constant [30 x i8] c"dpu_enc_phys_vid_post_kickoff\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_vid_post_kickoff = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_vid_post_kickoff }, align 4
@__tracepoint_dpu_enc_phys_vid_post_kickoff = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_vid_post_kickoff, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_vid_post_kickoff, ptr null, ptr @__traceiter_dpu_enc_phys_vid_post_kickoff, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_vid_post_kickoff = internal constant ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_enc_phys_vid_irq_ctrl = internal constant [26 x i8] c"dpu_enc_phys_vid_irq_ctrl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_enc_phys_vid_irq_ctrl = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_enc_phys_vid_irq_ctrl }, align 4
@__tracepoint_dpu_enc_phys_vid_irq_ctrl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_enc_phys_vid_irq_ctrl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_enc_phys_vid_irq_ctrl, ptr null, ptr @__traceiter_dpu_enc_phys_vid_irq_ctrl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_enc_phys_vid_irq_ctrl = internal constant ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_setup_mixer = internal constant [21 x i8] c"dpu_crtc_setup_mixer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_setup_mixer = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_setup_mixer }, align 4
@__tracepoint_dpu_crtc_setup_mixer = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_setup_mixer, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_setup_mixer, ptr null, ptr @__traceiter_dpu_crtc_setup_mixer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_setup_mixer = internal constant ptr @__tracepoint_dpu_crtc_setup_mixer, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_setup_lm_bounds = internal constant [25 x i8] c"dpu_crtc_setup_lm_bounds\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_setup_lm_bounds = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_setup_lm_bounds }, align 4
@__tracepoint_dpu_crtc_setup_lm_bounds = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_setup_lm_bounds, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_setup_lm_bounds, ptr null, ptr @__traceiter_dpu_crtc_setup_lm_bounds, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_setup_lm_bounds = internal constant ptr @__tracepoint_dpu_crtc_setup_lm_bounds, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_vblank_enable = internal constant [23 x i8] c"dpu_crtc_vblank_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_vblank_enable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_vblank_enable }, align 4
@__tracepoint_dpu_crtc_vblank_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_vblank_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_vblank_enable, ptr null, ptr @__traceiter_dpu_crtc_vblank_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_vblank_enable = internal constant ptr @__tracepoint_dpu_crtc_vblank_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_enable = internal constant [16 x i8] c"dpu_crtc_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_enable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_enable }, align 4
@__tracepoint_dpu_crtc_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_enable, ptr null, ptr @__traceiter_dpu_crtc_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_enable = internal constant ptr @__tracepoint_dpu_crtc_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_disable = internal constant [17 x i8] c"dpu_crtc_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_disable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_disable }, align 4
@__tracepoint_dpu_crtc_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_disable, ptr null, ptr @__traceiter_dpu_crtc_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_disable = internal constant ptr @__tracepoint_dpu_crtc_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_vblank = internal constant [16 x i8] c"dpu_crtc_vblank\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_vblank = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_vblank }, align 4
@__tracepoint_dpu_crtc_vblank = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_vblank, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_vblank, ptr null, ptr @__traceiter_dpu_crtc_vblank, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_vblank = internal constant ptr @__tracepoint_dpu_crtc_vblank, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_crtc_disable_frame_pending = internal constant [31 x i8] c"dpu_crtc_disable_frame_pending\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_crtc_disable_frame_pending = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_crtc_disable_frame_pending }, align 4
@__tracepoint_dpu_crtc_disable_frame_pending = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_crtc_disable_frame_pending, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_crtc_disable_frame_pending, ptr null, ptr @__traceiter_dpu_crtc_disable_frame_pending, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_crtc_disable_frame_pending = internal constant ptr @__tracepoint_dpu_crtc_disable_frame_pending, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_plane_set_scanout = internal constant [22 x i8] c"dpu_plane_set_scanout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_plane_set_scanout = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_plane_set_scanout }, align 4
@__tracepoint_dpu_plane_set_scanout = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_plane_set_scanout, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_plane_set_scanout, ptr null, ptr @__traceiter_dpu_plane_set_scanout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_plane_set_scanout = internal constant ptr @__tracepoint_dpu_plane_set_scanout, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_plane_disable = internal constant [18 x i8] c"dpu_plane_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_plane_disable = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_plane_disable }, align 4
@__tracepoint_dpu_plane_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_plane_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_plane_disable, ptr null, ptr @__traceiter_dpu_plane_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_plane_disable = internal constant ptr @__tracepoint_dpu_plane_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_rm_reserve_intf = internal constant [20 x i8] c"dpu_rm_reserve_intf\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_rm_reserve_intf = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_rm_reserve_intf }, align 4
@__tracepoint_dpu_rm_reserve_intf = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_rm_reserve_intf, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_rm_reserve_intf, ptr null, ptr @__traceiter_dpu_rm_reserve_intf, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_rm_reserve_intf = internal constant ptr @__tracepoint_dpu_rm_reserve_intf, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_rm_reserve_ctls = internal constant [20 x i8] c"dpu_rm_reserve_ctls\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_rm_reserve_ctls = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_rm_reserve_ctls }, align 4
@__tracepoint_dpu_rm_reserve_ctls = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_rm_reserve_ctls, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_rm_reserve_ctls, ptr null, ptr @__traceiter_dpu_rm_reserve_ctls, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_rm_reserve_ctls = internal constant ptr @__tracepoint_dpu_rm_reserve_ctls, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_rm_reserve_lms = internal constant [19 x i8] c"dpu_rm_reserve_lms\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_rm_reserve_lms = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_rm_reserve_lms }, align 4
@__tracepoint_dpu_rm_reserve_lms = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_rm_reserve_lms, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_rm_reserve_lms, ptr null, ptr @__traceiter_dpu_rm_reserve_lms, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_rm_reserve_lms = internal constant ptr @__tracepoint_dpu_rm_reserve_lms, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_vbif_wait_xin_halt_fail = internal constant [28 x i8] c"dpu_vbif_wait_xin_halt_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_vbif_wait_xin_halt_fail = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_vbif_wait_xin_halt_fail }, align 4
@__tracepoint_dpu_vbif_wait_xin_halt_fail = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_vbif_wait_xin_halt_fail, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_vbif_wait_xin_halt_fail, ptr null, ptr @__traceiter_dpu_vbif_wait_xin_halt_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_vbif_wait_xin_halt_fail = internal constant ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_pp_connect_ext_te = internal constant [22 x i8] c"dpu_pp_connect_ext_te\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_pp_connect_ext_te = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_pp_connect_ext_te }, align 4
@__tracepoint_dpu_pp_connect_ext_te = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_pp_connect_ext_te, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_pp_connect_ext_te, ptr null, ptr @__traceiter_dpu_pp_connect_ext_te, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_pp_connect_ext_te = internal constant ptr @__tracepoint_dpu_pp_connect_ext_te, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_core_irq_register_callback = internal constant [31 x i8] c"dpu_core_irq_register_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_core_irq_register_callback = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_core_irq_register_callback }, align 4
@__tracepoint_dpu_core_irq_register_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_core_irq_register_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_core_irq_register_callback, ptr null, ptr @__traceiter_dpu_core_irq_register_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_core_irq_register_callback = internal constant ptr @__tracepoint_dpu_core_irq_register_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_core_irq_unregister_callback = internal constant [33 x i8] c"dpu_core_irq_unregister_callback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_core_irq_unregister_callback = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_core_irq_unregister_callback }, align 4
@__tracepoint_dpu_core_irq_unregister_callback = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_core_irq_unregister_callback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_core_irq_unregister_callback, ptr null, ptr @__traceiter_dpu_core_irq_unregister_callback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_core_irq_unregister_callback = internal constant ptr @__tracepoint_dpu_core_irq_unregister_callback, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_core_perf_update_clk = internal constant [25 x i8] c"dpu_core_perf_update_clk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_core_perf_update_clk = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_core_perf_update_clk }, align 4
@__tracepoint_dpu_core_perf_update_clk = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_core_perf_update_clk, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_core_perf_update_clk, ptr null, ptr @__traceiter_dpu_core_perf_update_clk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_core_perf_update_clk = internal constant ptr @__tracepoint_dpu_core_perf_update_clk, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_hw_ctl_update_pending_flush = internal constant [32 x i8] c"dpu_hw_ctl_update_pending_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_hw_ctl_update_pending_flush = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_hw_ctl_update_pending_flush }, align 4
@__tracepoint_dpu_hw_ctl_update_pending_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_hw_ctl_update_pending_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_hw_ctl_update_pending_flush, ptr null, ptr @__traceiter_dpu_hw_ctl_update_pending_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_hw_ctl_update_pending_flush = internal constant ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_hw_ctl_clear_pending_flush = internal constant [31 x i8] c"dpu_hw_ctl_clear_pending_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_hw_ctl_clear_pending_flush = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_hw_ctl_clear_pending_flush }, align 4
@__tracepoint_dpu_hw_ctl_clear_pending_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_hw_ctl_clear_pending_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_hw_ctl_clear_pending_flush, ptr null, ptr @__traceiter_dpu_hw_ctl_clear_pending_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_hw_ctl_clear_pending_flush = internal constant ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_hw_ctl_trigger_pending_flush = internal constant [33 x i8] c"dpu_hw_ctl_trigger_pending_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_hw_ctl_trigger_pending_flush = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_hw_ctl_trigger_pending_flush }, align 4
@__tracepoint_dpu_hw_ctl_trigger_pending_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_hw_ctl_trigger_pending_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_hw_ctl_trigger_pending_flush, ptr null, ptr @__traceiter_dpu_hw_ctl_trigger_pending_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_hw_ctl_trigger_pending_flush = internal constant ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_hw_ctl_trigger_prepare = internal constant [27 x i8] c"dpu_hw_ctl_trigger_prepare\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_hw_ctl_trigger_prepare = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_hw_ctl_trigger_prepare }, align 4
@__tracepoint_dpu_hw_ctl_trigger_prepare = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_hw_ctl_trigger_prepare, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_hw_ctl_trigger_prepare, ptr null, ptr @__traceiter_dpu_hw_ctl_trigger_prepare, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_hw_ctl_trigger_prepare = internal constant ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, section "__tracepoints_ptrs", align 4
@__tpstrtab_dpu_hw_ctl_trigger_start = internal constant [25 x i8] c"dpu_hw_ctl_trigger_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dpu_hw_ctl_trigger_start = dso_local global %struct.static_call_key { ptr @__traceiter_dpu_hw_ctl_trigger_start }, align 4
@__tracepoint_dpu_hw_ctl_trigger_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_dpu_hw_ctl_trigger_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dpu_hw_ctl_trigger_start, ptr null, ptr @__traceiter_dpu_hw_ctl_trigger_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dpu_hw_ctl_trigger_start = internal constant ptr @__tracepoint_dpu_hw_ctl_trigger_start, section "__tracepoints_ptrs", align 4
@str__dpu__trace_system_name = internal constant [4 x i8] c"dpu\00", align 1
@trace_event_fields_dpu_perf_set_qos_luts = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_perf_set_qos_luts = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_perf_set_qos_luts, ptr @perf_trace_dpu_perf_set_qos_luts, ptr @trace_event_reg, ptr @trace_event_fields_dpu_perf_set_qos_luts, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_perf_set_qos_luts, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_perf_set_qos_luts, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_perf_set_qos_luts = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_perf_set_qos_luts, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_perf_set_qos_luts = internal global [118 x i8] c"\22pnum=%d fmt=%x rt=%d fl=%d lut=0x%llx lut_usage=%d\22, REC->pnum, REC->fmt, REC->rt, REC->fl, REC->lut, REC->lut_usage\00", align 1
@event_dpu_perf_set_qos_luts = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_perf_set_qos_luts, %union.anon.105 { ptr @__tracepoint_dpu_perf_set_qos_luts }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_perf_set_qos_luts }, ptr @print_fmt_dpu_perf_set_qos_luts, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_perf_set_qos_luts = internal global ptr @event_dpu_perf_set_qos_luts, section "_ftrace_events", align 4
@trace_event_fields_dpu_perf_set_danger_luts = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_perf_set_danger_luts = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_perf_set_danger_luts, ptr @perf_trace_dpu_perf_set_danger_luts, ptr @trace_event_reg, ptr @trace_event_fields_dpu_perf_set_danger_luts, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_perf_set_danger_luts, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_perf_set_danger_luts, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_perf_set_danger_luts = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_perf_set_danger_luts, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_perf_set_danger_luts = internal global [106 x i8] c"\22pnum=%d fmt=%x mode=%d luts[0x%x, 0x%x]\22, REC->pnum, REC->fmt, REC->mode, REC->danger_lut, REC->safe_lut\00", align 1
@event_dpu_perf_set_danger_luts = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_perf_set_danger_luts, %union.anon.105 { ptr @__tracepoint_dpu_perf_set_danger_luts }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_perf_set_danger_luts }, ptr @print_fmt_dpu_perf_set_danger_luts, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_perf_set_danger_luts = internal global ptr @event_dpu_perf_set_danger_luts, section "_ftrace_events", align 4
@trace_event_fields_dpu_perf_set_ot = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_perf_set_ot = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_perf_set_ot, ptr @perf_trace_dpu_perf_set_ot, ptr @trace_event_reg, ptr @trace_event_fields_dpu_perf_set_ot, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_perf_set_ot, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_perf_set_ot, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_perf_set_ot = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_perf_set_ot, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_perf_set_ot = internal global [86 x i8] c"\22pnum:%d xin_id:%d ot:%d vbif:%d\22, REC->pnum, REC->xin_id, REC->rd_lim, REC->vbif_idx\00", align 1
@event_dpu_perf_set_ot = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_perf_set_ot, %union.anon.105 { ptr @__tracepoint_dpu_perf_set_ot }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_perf_set_ot }, ptr @print_fmt_dpu_perf_set_ot, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_perf_set_ot = internal global ptr @event_dpu_perf_set_ot, section "_ftrace_events", align 4
@trace_event_fields_dpu_cmd_release_bw = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_cmd_release_bw = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_cmd_release_bw, ptr @perf_trace_dpu_cmd_release_bw, ptr @trace_event_reg, ptr @trace_event_fields_dpu_cmd_release_bw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_cmd_release_bw, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_cmd_release_bw, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_cmd_release_bw = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_cmd_release_bw, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_cmd_release_bw = internal global [24 x i8] c"\22crtc:%d\22, REC->crtc_id\00", align 1
@event_dpu_cmd_release_bw = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_cmd_release_bw, %union.anon.105 { ptr @__tracepoint_dpu_cmd_release_bw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_cmd_release_bw }, ptr @print_fmt_dpu_cmd_release_bw, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_cmd_release_bw = internal global ptr @event_dpu_cmd_release_bw, section "_ftrace_events", align 4
@trace_event_fields_tracing_mark_write = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.103 { %struct.anon.104 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.28, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_tracing_mark_write = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_tracing_mark_write, ptr @perf_trace_tracing_mark_write, ptr @trace_event_reg, ptr @trace_event_fields_tracing_mark_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tracing_mark_write, i64 24), ptr getelementptr (i8, ptr @event_class_tracing_mark_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tracing_mark_write = internal global %struct.trace_event_functions { ptr @trace_raw_output_tracing_mark_write, ptr null, ptr null, ptr null }, align 4
@print_fmt_tracing_mark_write = internal global [74 x i8] c"\22%s|%d|%s\22, REC->trace_begin ? \22B\22 : \22E\22, REC->pid, __get_str(trace_name)\00", align 1
@event_tracing_mark_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tracing_mark_write, %union.anon.105 { ptr @__tracepoint_tracing_mark_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tracing_mark_write }, ptr @print_fmt_tracing_mark_write, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_tracing_mark_write = internal global ptr @event_tracing_mark_write, section "_ftrace_events", align 4
@trace_event_fields_dpu_trace_counter = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.103 { %struct.anon.104 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_trace_counter = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_trace_counter, ptr @perf_trace_dpu_trace_counter, ptr @trace_event_reg, ptr @trace_event_fields_dpu_trace_counter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_trace_counter, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_trace_counter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_trace_counter = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_trace_counter, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_trace_counter = internal global [58 x i8] c"\22%d|%s|%d\22, REC->pid, __get_str(counter_name), REC->value\00", align 1
@event_dpu_trace_counter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_trace_counter, %union.anon.105 { ptr @__tracepoint_dpu_trace_counter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_trace_counter }, ptr @print_fmt_dpu_trace_counter, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_trace_counter = internal global ptr @event_dpu_trace_counter, section "_ftrace_events", align 4
@trace_event_fields_dpu_perf_crtc_update = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.36, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_perf_crtc_update = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_perf_crtc_update, ptr @perf_trace_dpu_perf_crtc_update, ptr @trace_event_reg, ptr @trace_event_fields_dpu_perf_crtc_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_perf_crtc_update, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_perf_crtc_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_perf_crtc_update = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_perf_crtc_update, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_perf_crtc_update = internal global [157 x i8] c"\22crtc=%d bw_ctl=%llu clk_rate=%u stop_req=%d u_bus=%d u_clk=%d\22, REC->crtc, REC->bw_ctl, REC->core_clk_rate, REC->stop_req, REC->update_bus, REC->update_clk\00", align 1
@event_dpu_perf_crtc_update = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_perf_crtc_update, %union.anon.105 { ptr @__tracepoint_dpu_perf_crtc_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_perf_crtc_update }, ptr @print_fmt_dpu_perf_crtc_update, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_perf_crtc_update = internal global ptr @event_dpu_perf_crtc_update, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_irq_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.103 { %struct.anon.104 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_irq_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_irq_template, ptr @perf_trace_dpu_enc_irq_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_irq_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_irq_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_irq_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_irq_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_irq_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_irq_template = internal global [67 x i8] c"\22id=%u, intr=%d, irq=%d\22, REC->drm_id, REC->intr_idx, REC->irq_idx\00", align 1
@event_dpu_enc_irq_register_success = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_irq_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_irq_register_success }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_irq_template }, ptr @print_fmt_dpu_enc_irq_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_irq_register_success = internal global ptr @event_dpu_enc_irq_register_success, section "_ftrace_events", align 4
@event_dpu_enc_irq_unregister_success = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_irq_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_irq_unregister_success }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_irq_template }, ptr @print_fmt_dpu_enc_irq_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_irq_unregister_success = internal global ptr @event_dpu_enc_irq_unregister_success, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_irq_wait_success = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.44, %union.anon.103 { %struct.anon.104 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.103 { %struct.anon.104 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.50, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_irq_wait_success = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_irq_wait_success, ptr @perf_trace_dpu_enc_irq_wait_success, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_irq_wait_success, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_irq_wait_success, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_irq_wait_success, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_irq_wait_success = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_irq_wait_success, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_irq_wait_success = internal global [119 x i8] c"\22id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\22, REC->drm_id, REC->intr_idx, REC->irq_idx, REC->pp_idx, REC->atomic_cnt\00", align 1
@event_dpu_enc_irq_wait_success = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_irq_wait_success, %union.anon.105 { ptr @__tracepoint_dpu_enc_irq_wait_success }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_irq_wait_success }, ptr @print_fmt_dpu_enc_irq_wait_success, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_irq_wait_success = internal global ptr @event_dpu_enc_irq_wait_success, section "_ftrace_events", align 4
@trace_event_fields_dpu_drm_obj_template = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_drm_obj_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_drm_obj_template, ptr @perf_trace_dpu_drm_obj_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_drm_obj_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_drm_obj_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_drm_obj_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_drm_obj_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_drm_obj_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_drm_obj_template = internal global [21 x i8] c"\22id=%u\22, REC->drm_id\00", align 1
@event_dpu_enc_atomic_check = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_atomic_check }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_atomic_check = internal global ptr @event_dpu_enc_atomic_check, section "_ftrace_events", align 4
@event_dpu_enc_mode_set = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_mode_set }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_mode_set = internal global ptr @event_dpu_enc_mode_set, section "_ftrace_events", align 4
@event_dpu_enc_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_disable = internal global ptr @event_dpu_enc_disable, section "_ftrace_events", align 4
@event_dpu_enc_kickoff = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_kickoff }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_kickoff = internal global ptr @event_dpu_enc_kickoff, section "_ftrace_events", align 4
@event_dpu_enc_prepare_kickoff = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_prepare_kickoff }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_prepare_kickoff = internal global ptr @event_dpu_enc_prepare_kickoff, section "_ftrace_events", align 4
@event_dpu_enc_prepare_kickoff_reset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_prepare_kickoff_reset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_prepare_kickoff_reset = internal global ptr @event_dpu_enc_prepare_kickoff_reset, section "_ftrace_events", align 4
@event_dpu_crtc_complete_flip = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_complete_flip }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_complete_flip = internal global ptr @event_dpu_crtc_complete_flip, section "_ftrace_events", align 4
@event_dpu_crtc_vblank_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_vblank_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_vblank_cb = internal global ptr @event_dpu_crtc_vblank_cb, section "_ftrace_events", align 4
@event_dpu_crtc_complete_commit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_complete_commit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_complete_commit = internal global ptr @event_dpu_crtc_complete_commit, section "_ftrace_events", align 4
@event_dpu_kms_commit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_kms_commit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_kms_commit = internal global ptr @event_dpu_kms_commit, section "_ftrace_events", align 4
@event_dpu_kms_wait_for_commit_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_kms_wait_for_commit_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_kms_wait_for_commit_done = internal global ptr @event_dpu_kms_wait_for_commit_done, section "_ftrace_events", align 4
@event_dpu_crtc_runtime_resume = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_drm_obj_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_runtime_resume }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_drm_obj_template }, ptr @print_fmt_dpu_drm_obj_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_runtime_resume = internal global ptr @event_dpu_crtc_runtime_resume, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_enable = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.53, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.54, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_enable = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_enable, ptr @perf_trace_dpu_enc_enable, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_enable, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_enable, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_enable, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_enable = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_enable, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_enable = internal global [63 x i8] c"\22id=%u, mode=%dx%d\22, REC->drm_id, REC->hdisplay, REC->vdisplay\00", align 1
@event_dpu_enc_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_enable, %union.anon.105 { ptr @__tracepoint_dpu_enc_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_enable }, ptr @print_fmt_dpu_enc_enable, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_enable = internal global ptr @event_dpu_enc_enable, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_keyval_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.56, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_keyval_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_keyval_template, ptr @perf_trace_dpu_enc_keyval_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_keyval_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_keyval_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_keyval_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_keyval_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_keyval_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_keyval_template = internal global [39 x i8] c"\22id=%u, val=%d\22, REC->drm_id, REC->val\00", align 1
@event_dpu_enc_underrun_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_keyval_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_underrun_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_keyval_template }, ptr @print_fmt_dpu_enc_keyval_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_underrun_cb = internal global ptr @event_dpu_enc_underrun_cb, section "_ftrace_events", align 4
@event_dpu_enc_trigger_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_keyval_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_trigger_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_keyval_template }, ptr @print_fmt_dpu_enc_keyval_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_trigger_start = internal global ptr @event_dpu_enc_trigger_start, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_atomic_check_flags = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.103 { %struct.anon.104 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_atomic_check_flags = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_atomic_check_flags, ptr @perf_trace_dpu_enc_atomic_check_flags, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_atomic_check_flags, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_atomic_check_flags, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_atomic_check_flags, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_atomic_check_flags = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_atomic_check_flags, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_atomic_check_flags = internal global [43 x i8] c"\22id=%u, flags=%u\22, REC->drm_id, REC->flags\00", align 1
@event_dpu_enc_atomic_check_flags = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_atomic_check_flags, %union.anon.105 { ptr @__tracepoint_dpu_enc_atomic_check_flags }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_atomic_check_flags }, ptr @print_fmt_dpu_enc_atomic_check_flags, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_atomic_check_flags = internal global ptr @event_dpu_enc_atomic_check_flags, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_id_enable_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.61, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_id_enable_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_id_enable_template, ptr @perf_trace_dpu_enc_id_enable_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_id_enable_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_id_enable_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_id_enable_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_id_enable_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_id_enable_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_id_enable_template = internal global [64 x i8] c"\22id=%u, enable=%s\22, REC->drm_id, REC->enable ? \22true\22 : \22false\22\00", align 1
@event_dpu_enc_rc_helper = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_id_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_rc_helper }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_id_enable_template }, ptr @print_fmt_dpu_enc_id_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_rc_helper = internal global ptr @event_dpu_enc_rc_helper, section "_ftrace_events", align 4
@event_dpu_enc_vblank_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_id_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_vblank_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_id_enable_template }, ptr @print_fmt_dpu_enc_id_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_vblank_cb = internal global ptr @event_dpu_enc_vblank_cb, section "_ftrace_events", align 4
@event_dpu_enc_frame_event_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_id_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_frame_event_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_id_enable_template }, ptr @print_fmt_dpu_enc_id_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_frame_event_cb = internal global ptr @event_dpu_enc_frame_event_cb, section "_ftrace_events", align 4
@event_dpu_enc_phys_cmd_connect_te = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_id_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_cmd_connect_te }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_id_enable_template }, ptr @print_fmt_dpu_enc_id_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_cmd_connect_te = internal global ptr @event_dpu_enc_phys_cmd_connect_te, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_rc = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.66, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.67, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.26, %union.anon.103 { %struct.anon.104 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_rc = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_rc, ptr @perf_trace_dpu_enc_rc, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_rc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_rc, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_rc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_rc = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_rc, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_rc = internal global [168 x i8] c"\22%s: id:%u, sw_event:%d, idle_pc_supported:%s, rc_state:%d\22, __get_str(stage_str), REC->drm_id, REC->sw_event, REC->idle_pc_supported ? \22true\22 : \22false\22, REC->rc_state\00", align 1
@event_dpu_enc_rc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_rc, %union.anon.105 { ptr @__tracepoint_dpu_enc_rc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_rc }, ptr @print_fmt_dpu_enc_rc, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_rc = internal global ptr @event_dpu_enc_rc, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_frame_done_cb_not_busy = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.103 { %struct.anon.104 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_frame_done_cb_not_busy = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_frame_done_cb_not_busy, ptr @perf_trace_dpu_enc_frame_done_cb_not_busy, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_frame_done_cb_not_busy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_frame_done_cb_not_busy, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_frame_done_cb_not_busy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_frame_done_cb_not_busy = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_frame_done_cb_not_busy, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_frame_done_cb_not_busy = internal global [67 x i8] c"\22id=%u, event=%u, intf=%d\22, REC->drm_id, REC->event, REC->intf_idx\00", align 1
@event_dpu_enc_frame_done_cb_not_busy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_frame_done_cb_not_busy, %union.anon.105 { ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_frame_done_cb_not_busy }, ptr @print_fmt_dpu_enc_frame_done_cb_not_busy, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_frame_done_cb_not_busy = internal global ptr @event_dpu_enc_frame_done_cb_not_busy, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_frame_done_cb = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.103 { %struct.anon.104 { ptr @.str.74, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.75, %union.anon.103 { %struct.anon.104 { ptr @.str.76, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_frame_done_cb = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_frame_done_cb, ptr @perf_trace_dpu_enc_frame_done_cb, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_frame_done_cb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_frame_done_cb, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_frame_done_cb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_frame_done_cb = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_frame_done_cb, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_frame_done_cb = internal global [82 x i8] c"\22id=%u, idx=%u, frame_busy_mask=%lx\22, REC->drm_id, REC->idx, REC->frame_busy_mask\00", align 1
@event_dpu_enc_frame_done_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_frame_done_cb, %union.anon.105 { ptr @__tracepoint_dpu_enc_frame_done_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_frame_done_cb }, ptr @print_fmt_dpu_enc_frame_done_cb, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_frame_done_cb = internal global ptr @event_dpu_enc_frame_done_cb, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_trigger_flush = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.103 { %struct.anon.104 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.78, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.79, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.80, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.81, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_trigger_flush = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_trigger_flush, ptr @perf_trace_dpu_enc_trigger_flush, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_trigger_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_trigger_flush, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_trigger_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_trigger_flush = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_trigger_flush, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_trigger_flush = internal global [216 x i8] c"\22id=%u, intf_idx=%d, pending_kickoff_cnt=%d ctl_idx=%d extra_flush_bits=0x%x pending_flush_ret=0x%x\22, REC->drm_id, REC->intf_idx, REC->pending_kickoff_cnt, REC->ctl_idx, REC->extra_flush_bits, REC->pending_flush_ret\00", align 1
@event_dpu_enc_trigger_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_trigger_flush, %union.anon.105 { ptr @__tracepoint_dpu_enc_trigger_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_trigger_flush }, ptr @print_fmt_dpu_enc_trigger_flush, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_trigger_flush = internal global ptr @event_dpu_enc_trigger_flush, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_ktime_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.83, %union.anon.103 { %struct.anon.104 { ptr @.str.84, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_ktime_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_ktime_template, ptr @perf_trace_dpu_enc_ktime_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_ktime_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_ktime_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_ktime_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_ktime_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_ktime_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_ktime_template = internal global [56 x i8] c"\22id=%u, time=%lld\22, REC->drm_id, ktime_to_ms(REC->time)\00", align 1
@event_dpu_enc_vsync_event_work = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_ktime_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_vsync_event_work }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_ktime_template }, ptr @print_fmt_dpu_enc_ktime_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_vsync_event_work = internal global ptr @event_dpu_enc_vsync_event_work, section "_ftrace_events", align 4
@event_dpu_enc_early_kickoff = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_ktime_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_early_kickoff }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_ktime_template }, ptr @print_fmt_dpu_enc_ktime_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_early_kickoff = internal global ptr @event_dpu_enc_early_kickoff, section "_ftrace_events", align 4
@trace_event_fields_dpu_id_event_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_id_event_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_id_event_template, ptr @perf_trace_dpu_id_event_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_id_event_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_id_event_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_id_event_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_id_event_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_id_event_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_id_event_template = internal global [43 x i8] c"\22id=%u, event=%u\22, REC->drm_id, REC->event\00", align 1
@event_dpu_enc_frame_done_timeout = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_id_event_template, %union.anon.105 { ptr @__tracepoint_dpu_enc_frame_done_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_id_event_template }, ptr @print_fmt_dpu_id_event_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_frame_done_timeout = internal global ptr @event_dpu_enc_frame_done_timeout, section "_ftrace_events", align 4
@event_dpu_crtc_frame_event_cb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_id_event_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_frame_event_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_id_event_template }, ptr @print_fmt_dpu_id_event_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_frame_event_cb = internal global ptr @event_dpu_crtc_frame_event_cb, section "_ftrace_events", align 4
@event_dpu_crtc_frame_event_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_id_event_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_frame_event_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_id_event_template }, ptr @print_fmt_dpu_id_event_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_frame_event_done = internal global ptr @event_dpu_crtc_frame_event_done, section "_ftrace_events", align 4
@event_dpu_crtc_frame_event_more_pending = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_id_event_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_frame_event_more_pending }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_id_event_template }, ptr @print_fmt_dpu_id_event_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_frame_event_more_pending = internal global ptr @event_dpu_crtc_frame_event_more_pending, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_wait_event_timeout = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.87, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.103 { %struct.anon.104 { ptr @.str.84, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.88, %union.anon.103 { %struct.anon.104 { ptr @.str.89, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.50, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_wait_event_timeout = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_wait_event_timeout, ptr @perf_trace_dpu_enc_wait_event_timeout, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_wait_event_timeout, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_wait_event_timeout, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_wait_event_timeout, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_wait_event_timeout = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_wait_event_timeout, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_wait_event_timeout = internal global [144 x i8] c"\22id=%u, irq_idx=%d, rc=%d, time=%lld, expected=%lld cnt=%d\22, REC->drm_id, REC->irq_idx, REC->rc, REC->time, REC->expected_time, REC->atomic_cnt\00", align 1
@event_dpu_enc_wait_event_timeout = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_wait_event_timeout, %union.anon.105 { ptr @__tracepoint_dpu_enc_wait_event_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_wait_event_timeout }, ptr @print_fmt_dpu_enc_wait_event_timeout, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_wait_event_timeout = internal global ptr @event_dpu_enc_wait_event_timeout, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_phys_cmd_irq_ctrl = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.103 { %struct.anon.104 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.61, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.92, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_phys_cmd_irq_ctrl = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_phys_cmd_irq_ctrl, ptr @perf_trace_dpu_enc_phys_cmd_irq_ctrl, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_phys_cmd_irq_ctrl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_irq_ctrl, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_irq_ctrl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_phys_cmd_irq_ctrl = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_phys_cmd_irq_ctrl, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_phys_cmd_irq_ctrl = internal global [104 x i8] c"\22id=%u, pp=%d, enable=%s, refcnt=%d\22, REC->drm_id, REC->pp, REC->enable ? \22true\22 : \22false\22, REC->refcnt\00", align 1
@event_dpu_enc_phys_cmd_irq_ctrl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_phys_cmd_irq_ctrl, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_phys_cmd_irq_ctrl }, ptr @print_fmt_dpu_enc_phys_cmd_irq_ctrl, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_cmd_irq_ctrl = internal global ptr @event_dpu_enc_phys_cmd_irq_ctrl, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_phys_cmd_pp_tx_done = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.103 { %struct.anon.104 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.94, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_phys_cmd_pp_tx_done = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_phys_cmd_pp_tx_done, ptr @perf_trace_dpu_enc_phys_cmd_pp_tx_done, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_phys_cmd_pp_tx_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_pp_tx_done, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_pp_tx_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_phys_cmd_pp_tx_done = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_phys_cmd_pp_tx_done, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_phys_cmd_pp_tx_done = internal global [89 x i8] c"\22id=%u, pp=%d, new_count=%d, event=%u\22, REC->drm_id, REC->pp, REC->new_count, REC->event\00", align 1
@event_dpu_enc_phys_cmd_pp_tx_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_phys_cmd_pp_tx_done, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_phys_cmd_pp_tx_done }, ptr @print_fmt_dpu_enc_phys_cmd_pp_tx_done, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_cmd_pp_tx_done = internal global ptr @event_dpu_enc_phys_cmd_pp_tx_done, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_phys_cmd_pdone_timeout = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.48, %union.anon.103 { %struct.anon.104 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.96, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.97, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_phys_cmd_pdone_timeout = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_phys_cmd_pdone_timeout, ptr @perf_trace_dpu_enc_phys_cmd_pdone_timeout, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_phys_cmd_pdone_timeout, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_pdone_timeout, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_cmd_pdone_timeout, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_phys_cmd_pdone_timeout = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_phys_cmd_pdone_timeout, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_phys_cmd_pdone_timeout = internal global [135 x i8] c"\22id=%u, pp=%d, timeout_count=%d, kickoff_count=%d, event=%u\22, REC->drm_id, REC->pp, REC->timeout_count, REC->kickoff_count, REC->event\00", align 1
@event_dpu_enc_phys_cmd_pdone_timeout = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_phys_cmd_pdone_timeout, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_phys_cmd_pdone_timeout }, ptr @print_fmt_dpu_enc_phys_cmd_pdone_timeout, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_cmd_pdone_timeout = internal global ptr @event_dpu_enc_phys_cmd_pdone_timeout, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_phys_vid_post_kickoff = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.103 { %struct.anon.104 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_phys_vid_post_kickoff = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_phys_vid_post_kickoff, ptr @perf_trace_dpu_enc_phys_vid_post_kickoff, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_phys_vid_post_kickoff, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_vid_post_kickoff, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_vid_post_kickoff, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_phys_vid_post_kickoff = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_phys_vid_post_kickoff, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_phys_vid_post_kickoff = internal global [49 x i8] c"\22id=%u, intf_idx=%d\22, REC->drm_id, REC->intf_idx\00", align 1
@event_dpu_enc_phys_vid_post_kickoff = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_phys_vid_post_kickoff, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_phys_vid_post_kickoff }, ptr @print_fmt_dpu_enc_phys_vid_post_kickoff, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_vid_post_kickoff = internal global ptr @event_dpu_enc_phys_vid_post_kickoff, section "_ftrace_events", align 4
@trace_event_fields_dpu_enc_phys_vid_irq_ctrl = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.103 { %struct.anon.104 { ptr @.str.72, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.61, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.92, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_enc_phys_vid_irq_ctrl = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_enc_phys_vid_irq_ctrl, ptr @perf_trace_dpu_enc_phys_vid_irq_ctrl, ptr @trace_event_reg, ptr @trace_event_fields_dpu_enc_phys_vid_irq_ctrl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_vid_irq_ctrl, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_enc_phys_vid_irq_ctrl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_enc_phys_vid_irq_ctrl = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_enc_phys_vid_irq_ctrl, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_enc_phys_vid_irq_ctrl = internal global [114 x i8] c"\22id=%u, intf_idx=%d enable=%s refcnt=%d\22, REC->drm_id, REC->intf_idx, REC->enable ? \22true\22 : \22false\22, REC->drm_id\00", align 1
@event_dpu_enc_phys_vid_irq_ctrl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_enc_phys_vid_irq_ctrl, %union.anon.105 { ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_enc_phys_vid_irq_ctrl }, ptr @print_fmt_dpu_enc_phys_vid_irq_ctrl, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_enc_phys_vid_irq_ctrl = internal global ptr @event_dpu_enc_phys_vid_irq_ctrl, section "_ftrace_events", align 4
@trace_event_fields_dpu_crtc_setup_mixer = internal global [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.102, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.103 { %struct.anon.104 { ptr @.str.104, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.103 { %struct.anon.104 { ptr @.str.105, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.106, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.107, %union.anon.103 { %struct.anon.104 { ptr @.str.108, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.109, %union.anon.103 { %struct.anon.104 { ptr @.str.110, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.111, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.112, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.113, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.114, %union.anon.103 { %struct.anon.104 { ptr @.str.115, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_crtc_setup_mixer = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_crtc_setup_mixer, ptr @perf_trace_dpu_crtc_setup_mixer, ptr @trace_event_reg, ptr @trace_event_fields_dpu_crtc_setup_mixer, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_crtc_setup_mixer, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_crtc_setup_mixer, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_crtc_setup_mixer = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_crtc_setup_mixer, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_crtc_setup_mixer = internal global [796 x i8] c"\22crtc_id:%u plane_id:%u fb_id:%u src:%d.%06ux%d.%06u%+d.%06u%+d.%06u dst:%dx%d%+d%+d stage_idx:%u stage:%d, sspp:%d multirect_index:%d multirect_mode:%u pix_format:%u modifier:%llu\22, REC->crtc_id, REC->plane_id, REC->fb_id, drm_rect_width(&REC->src_rect) >> 16, ((drm_rect_width(&REC->src_rect) & 0xffff) * 15625) >> 10, drm_rect_height(&REC->src_rect) >> 16, ((drm_rect_height(&REC->src_rect) & 0xffff) * 15625) >> 10, (&REC->src_rect)->x1 >> 16, (((&REC->src_rect)->x1 & 0xffff) * 15625) >> 10, (&REC->src_rect)->y1 >> 16, (((&REC->src_rect)->y1 & 0xffff) * 15625) >> 10, drm_rect_width(&REC->dst_rect), drm_rect_height(&REC->dst_rect), (&REC->dst_rect)->x1, (&REC->dst_rect)->y1, REC->stage_idx, REC->stage, REC->sspp, REC->multirect_idx, REC->multirect_mode, REC->pixel_format, REC->modifier\00", align 1
@event_dpu_crtc_setup_mixer = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_setup_mixer, %union.anon.105 { ptr @__tracepoint_dpu_crtc_setup_mixer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_setup_mixer }, ptr @print_fmt_dpu_crtc_setup_mixer, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_setup_mixer = internal global ptr @event_dpu_crtc_setup_mixer, section "_ftrace_events", align 4
@trace_event_fields_dpu_crtc_setup_lm_bounds = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.117, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.103 { %struct.anon.104 { ptr @.str.118, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_crtc_setup_lm_bounds = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_crtc_setup_lm_bounds, ptr @perf_trace_dpu_crtc_setup_lm_bounds, ptr @trace_event_reg, ptr @trace_event_fields_dpu_crtc_setup_lm_bounds, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_crtc_setup_lm_bounds, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_crtc_setup_lm_bounds, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_crtc_setup_lm_bounds = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_crtc_setup_lm_bounds, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_crtc_setup_lm_bounds = internal global [162 x i8] c"\22id:%u mixer:%d bounds:%dx%d%+d%+d\22, REC->drm_id, REC->mixer, drm_rect_width(&REC->bounds), drm_rect_height(&REC->bounds), (&REC->bounds)->x1, (&REC->bounds)->y1\00", align 1
@event_dpu_crtc_setup_lm_bounds = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_setup_lm_bounds, %union.anon.105 { ptr @__tracepoint_dpu_crtc_setup_lm_bounds }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_setup_lm_bounds }, ptr @print_fmt_dpu_crtc_setup_lm_bounds, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_setup_lm_bounds = internal global ptr @event_dpu_crtc_setup_lm_bounds, section "_ftrace_events", align 4
@trace_event_fields_dpu_crtc_vblank_enable = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.120, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.61, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.121, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_crtc_vblank_enable = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_crtc_vblank_enable, ptr @perf_trace_dpu_crtc_vblank_enable, ptr @trace_event_reg, ptr @trace_event_fields_dpu_crtc_vblank_enable, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_crtc_vblank_enable, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_crtc_vblank_enable, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_crtc_vblank_enable = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_crtc_vblank_enable, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_crtc_vblank_enable = internal global [138 x i8] c"\22id:%u encoder:%u enable:%s state{enabled:%s}\22, REC->drm_id, REC->enc_id, REC->enable ? \22true\22 : \22false\22, REC->enabled ? \22true\22 : \22false\22\00", align 1
@event_dpu_crtc_vblank_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_vblank_enable, %union.anon.105 { ptr @__tracepoint_dpu_crtc_vblank_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_vblank_enable }, ptr @print_fmt_dpu_crtc_vblank_enable, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_vblank_enable = internal global ptr @event_dpu_crtc_vblank_enable, section "_ftrace_events", align 4
@trace_event_fields_dpu_crtc_enable_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.61, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.121, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_crtc_enable_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_crtc_enable_template, ptr @perf_trace_dpu_crtc_enable_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_crtc_enable_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_crtc_enable_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_crtc_enable_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_crtc_enable_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_crtc_enable_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_crtc_enable_template = internal global [114 x i8] c"\22id:%u enable:%s state{enabled:%s}\22, REC->drm_id, REC->enable ? \22true\22 : \22false\22, REC->enabled ? \22true\22 : \22false\22\00", align 1
@event_dpu_crtc_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_enable_template }, ptr @print_fmt_dpu_crtc_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_enable = internal global ptr @event_dpu_crtc_enable, section "_ftrace_events", align 4
@event_dpu_crtc_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_enable_template }, ptr @print_fmt_dpu_crtc_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_disable = internal global ptr @event_dpu_crtc_disable, section "_ftrace_events", align 4
@event_dpu_crtc_vblank = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_enable_template, %union.anon.105 { ptr @__tracepoint_dpu_crtc_vblank }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_enable_template }, ptr @print_fmt_dpu_crtc_enable_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_vblank = internal global ptr @event_dpu_crtc_vblank, section "_ftrace_events", align 4
@trace_event_fields_dpu_crtc_disable_frame_pending = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.124, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_crtc_disable_frame_pending = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_crtc_disable_frame_pending, ptr @perf_trace_dpu_crtc_disable_frame_pending, ptr @trace_event_reg, ptr @trace_event_fields_dpu_crtc_disable_frame_pending, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_crtc_disable_frame_pending, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_crtc_disable_frame_pending, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_crtc_disable_frame_pending = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_crtc_disable_frame_pending, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_crtc_disable_frame_pending = internal global [58 x i8] c"\22id:%u frame_pending:%d\22, REC->drm_id, REC->frame_pending\00", align 1
@event_dpu_crtc_disable_frame_pending = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_crtc_disable_frame_pending, %union.anon.105 { ptr @__tracepoint_dpu_crtc_disable_frame_pending }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_crtc_disable_frame_pending }, ptr @print_fmt_dpu_crtc_disable_frame_pending, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_crtc_disable_frame_pending = internal global ptr @event_dpu_crtc_disable_frame_pending, section "_ftrace_events", align 4
@trace_event_fields_dpu_plane_set_scanout = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.109, %union.anon.103 { %struct.anon.104 { ptr @.str.126, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.127, %union.anon.103 { %struct.anon.104 { ptr @.str.128, i32 68, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.129, %union.anon.103 { %struct.anon.104 { ptr @.str.130, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_plane_set_scanout = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_plane_set_scanout, ptr @perf_trace_dpu_plane_set_scanout, ptr @trace_event_reg, ptr @trace_event_fields_dpu_plane_set_scanout, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_plane_set_scanout, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_plane_set_scanout, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_plane_set_scanout = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_plane_set_scanout, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_plane_set_scanout = internal global [365 x i8] c"\22index:%d layout:{%ux%u @ [%u/%u, %u/%u, %u/%u, %u/%u]} multirect_index:%d\22, REC->index, REC->layout.width, REC->layout.height, REC->layout.plane_addr[0], REC->layout.plane_size[0], REC->layout.plane_addr[1], REC->layout.plane_size[1], REC->layout.plane_addr[2], REC->layout.plane_size[2], REC->layout.plane_addr[3], REC->layout.plane_size[3], REC->multirect_index\00", align 1
@event_dpu_plane_set_scanout = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_plane_set_scanout, %union.anon.105 { ptr @__tracepoint_dpu_plane_set_scanout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_plane_set_scanout }, ptr @print_fmt_dpu_plane_set_scanout, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_plane_set_scanout = internal global ptr @event_dpu_plane_set_scanout, section "_ftrace_events", align 4
@trace_event_fields_dpu_plane_disable = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.132, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.112, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_plane_disable = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_plane_disable, ptr @perf_trace_dpu_plane_disable, ptr @trace_event_reg, ptr @trace_event_fields_dpu_plane_disable, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_plane_disable, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_plane_disable, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_plane_disable = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_plane_disable, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_plane_disable = internal global [110 x i8] c"\22id:%u is_virtual:%s multirect_mode:%u\22, REC->drm_id, REC->is_virtual ? \22true\22 : \22false\22, REC->multirect_mode\00", align 1
@event_dpu_plane_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_plane_disable, %union.anon.105 { ptr @__tracepoint_dpu_plane_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_plane_disable }, ptr @print_fmt_dpu_plane_disable, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_plane_disable = internal global ptr @event_dpu_plane_disable, section "_ftrace_events", align 4
@trace_event_fields_dpu_rm_iter_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.134, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.120, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_rm_iter_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_rm_iter_template, ptr @perf_trace_dpu_rm_iter_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_rm_iter_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_rm_iter_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_rm_iter_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_rm_iter_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_rm_iter_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_rm_iter_template = internal global [40 x i8] c"\22id:%d enc_id:%u\22, REC->id, REC->enc_id\00", align 1
@event_dpu_rm_reserve_intf = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_rm_iter_template, %union.anon.105 { ptr @__tracepoint_dpu_rm_reserve_intf }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_rm_iter_template }, ptr @print_fmt_dpu_rm_iter_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_rm_reserve_intf = internal global ptr @event_dpu_rm_reserve_intf, section "_ftrace_events", align 4
@event_dpu_rm_reserve_ctls = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_rm_iter_template, %union.anon.105 { ptr @__tracepoint_dpu_rm_reserve_ctls }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_rm_iter_template }, ptr @print_fmt_dpu_rm_iter_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_rm_reserve_ctls = internal global ptr @event_dpu_rm_reserve_ctls, section "_ftrace_events", align 4
@trace_event_fields_dpu_rm_reserve_lms = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.134, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.120, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon.103 { %struct.anon.104 { ptr @.str.136, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_rm_reserve_lms = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_rm_reserve_lms, ptr @perf_trace_dpu_rm_reserve_lms, ptr @trace_event_reg, ptr @trace_event_fields_dpu_rm_reserve_lms, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_rm_reserve_lms, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_rm_reserve_lms, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_rm_reserve_lms = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_rm_reserve_lms, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_rm_reserve_lms = internal global [61 x i8] c"\22id:%d enc_id:%u pp_id:%u\22, REC->id, REC->enc_id, REC->pp_id\00", align 1
@event_dpu_rm_reserve_lms = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_rm_reserve_lms, %union.anon.105 { ptr @__tracepoint_dpu_rm_reserve_lms }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_rm_reserve_lms }, ptr @print_fmt_dpu_rm_reserve_lms, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_rm_reserve_lms = internal global ptr @event_dpu_rm_reserve_lms, section "_ftrace_events", align 4
@trace_event_fields_dpu_vbif_wait_xin_halt_fail = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.138, %union.anon.103 { %struct.anon.104 { ptr @.str.126, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_vbif_wait_xin_halt_fail = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_vbif_wait_xin_halt_fail, ptr @perf_trace_dpu_vbif_wait_xin_halt_fail, ptr @trace_event_reg, ptr @trace_event_fields_dpu_vbif_wait_xin_halt_fail, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_vbif_wait_xin_halt_fail, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_vbif_wait_xin_halt_fail, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_vbif_wait_xin_halt_fail = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_vbif_wait_xin_halt_fail, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_vbif_wait_xin_halt_fail = internal global [46 x i8] c"\22index:%d xin_id:%u\22, REC->index, REC->xin_id\00", align 1
@event_dpu_vbif_wait_xin_halt_fail = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_vbif_wait_xin_halt_fail, %union.anon.105 { ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_vbif_wait_xin_halt_fail }, ptr @print_fmt_dpu_vbif_wait_xin_halt_fail, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_vbif_wait_xin_halt_fail = internal global ptr @event_dpu_vbif_wait_xin_halt_fail, section "_ftrace_events", align 4
@trace_event_fields_dpu_pp_connect_ext_te = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.48, %union.anon.103 { %struct.anon.104 { ptr @.str.91, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_pp_connect_ext_te = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_pp_connect_ext_te, ptr @perf_trace_dpu_pp_connect_ext_te, ptr @trace_event_reg, ptr @trace_event_fields_dpu_pp_connect_ext_te, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_pp_connect_ext_te, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_pp_connect_ext_te, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_pp_connect_ext_te = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_pp_connect_ext_te, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_pp_connect_ext_te = internal global [34 x i8] c"\22pp:%d cfg:%u\22, REC->pp, REC->cfg\00", align 1
@event_dpu_pp_connect_ext_te = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_pp_connect_ext_te, %union.anon.105 { ptr @__tracepoint_dpu_pp_connect_ext_te }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_pp_connect_ext_te }, ptr @print_fmt_dpu_pp_connect_ext_te, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_pp_connect_ext_te = internal global ptr @event_dpu_pp_connect_ext_te, section "_ftrace_events", align 4
@trace_event_fields_dpu_core_irq_callback_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.103 { %struct.anon.104 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.142, %union.anon.103 { %struct.anon.104 { ptr @.str.143, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_core_irq_callback_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_core_irq_callback_template, ptr @perf_trace_dpu_core_irq_callback_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_core_irq_callback_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_core_irq_callback_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_core_irq_callback_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_core_irq_callback_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_core_irq_callback_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_core_irq_callback_template = internal global [55 x i8] c"\22irq_idx:%d callback:%pK\22, REC->irq_idx, REC->callback\00", align 1
@event_dpu_core_irq_register_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_core_irq_callback_template, %union.anon.105 { ptr @__tracepoint_dpu_core_irq_register_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_core_irq_callback_template }, ptr @print_fmt_dpu_core_irq_callback_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_core_irq_register_callback = internal global ptr @event_dpu_core_irq_register_callback, section "_ftrace_events", align 4
@event_dpu_core_irq_unregister_callback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_core_irq_callback_template, %union.anon.105 { ptr @__tracepoint_dpu_core_irq_unregister_callback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_core_irq_callback_template }, ptr @print_fmt_dpu_core_irq_callback_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_core_irq_unregister_callback = internal global ptr @event_dpu_core_irq_unregister_callback, section "_ftrace_events", align 4
@trace_event_fields_dpu_core_perf_update_clk = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.26, %union.anon.103 { %struct.anon.104 { ptr @.str.145, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.103 { %struct.anon.104 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.146, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_core_perf_update_clk = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_core_perf_update_clk, ptr @perf_trace_dpu_core_perf_update_clk, ptr @trace_event_reg, ptr @trace_event_fields_dpu_core_perf_update_clk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_core_perf_update_clk, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_core_perf_update_clk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_core_perf_update_clk = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_core_perf_update_clk, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_core_perf_update_clk = internal global [105 x i8] c"\22dev:%s stop_req:%s clk_rate:%llu\22, __get_str(dev_name), REC->stop_req ? \22true\22 : \22false\22, REC->clk_rate\00", align 1
@event_dpu_core_perf_update_clk = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_core_perf_update_clk, %union.anon.105 { ptr @__tracepoint_dpu_core_perf_update_clk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_core_perf_update_clk }, ptr @print_fmt_dpu_core_perf_update_clk, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_core_perf_update_clk = internal global ptr @event_dpu_core_perf_update_clk, section "_ftrace_events", align 4
@trace_event_fields_dpu_hw_ctl_update_pending_flush = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.148, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.149, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_hw_ctl_update_pending_flush = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_hw_ctl_update_pending_flush, ptr @perf_trace_dpu_hw_ctl_update_pending_flush, ptr @trace_event_reg, ptr @trace_event_fields_dpu_hw_ctl_update_pending_flush, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_hw_ctl_update_pending_flush, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_hw_ctl_update_pending_flush, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_hw_ctl_update_pending_flush = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_hw_ctl_update_pending_flush, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_hw_ctl_update_pending_flush = internal global [55 x i8] c"\22new=%x existing=%x\22, REC->new_bits, REC->pending_mask\00", align 1
@event_dpu_hw_ctl_update_pending_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_hw_ctl_update_pending_flush, %union.anon.105 { ptr @__tracepoint_dpu_hw_ctl_update_pending_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_hw_ctl_update_pending_flush }, ptr @print_fmt_dpu_hw_ctl_update_pending_flush, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_hw_ctl_update_pending_flush = internal global ptr @event_dpu_hw_ctl_update_pending_flush, section "_ftrace_events", align 4
@trace_event_fields_dpu_hw_ctl_pending_flush_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.149, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.103 { %struct.anon.104 { ptr @.str.151, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dpu_hw_ctl_pending_flush_template = internal global %struct.trace_event_class { ptr @str__dpu__trace_system_name, ptr @trace_event_raw_event_dpu_hw_ctl_pending_flush_template, ptr @perf_trace_dpu_hw_ctl_pending_flush_template, ptr @trace_event_reg, ptr @trace_event_fields_dpu_hw_ctl_pending_flush_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dpu_hw_ctl_pending_flush_template, i64 24), ptr getelementptr (i8, ptr @event_class_dpu_hw_ctl_pending_flush_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dpu_hw_ctl_pending_flush_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_dpu_hw_ctl_pending_flush_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_dpu_hw_ctl_pending_flush_template = internal global [66 x i8] c"\22pending_mask=%x CTL_FLUSH=%x\22, REC->pending_mask, REC->ctl_flush\00", align 1
@event_dpu_hw_ctl_clear_pending_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_hw_ctl_pending_flush_template, %union.anon.105 { ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_hw_ctl_pending_flush_template }, ptr @print_fmt_dpu_hw_ctl_pending_flush_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_hw_ctl_clear_pending_flush = internal global ptr @event_dpu_hw_ctl_clear_pending_flush, section "_ftrace_events", align 4
@event_dpu_hw_ctl_trigger_pending_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_hw_ctl_pending_flush_template, %union.anon.105 { ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_hw_ctl_pending_flush_template }, ptr @print_fmt_dpu_hw_ctl_pending_flush_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_hw_ctl_trigger_pending_flush = internal global ptr @event_dpu_hw_ctl_trigger_pending_flush, section "_ftrace_events", align 4
@event_dpu_hw_ctl_trigger_prepare = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_hw_ctl_pending_flush_template, %union.anon.105 { ptr @__tracepoint_dpu_hw_ctl_trigger_prepare }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_hw_ctl_pending_flush_template }, ptr @print_fmt_dpu_hw_ctl_pending_flush_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_hw_ctl_trigger_prepare = internal global ptr @event_dpu_hw_ctl_trigger_prepare, section "_ftrace_events", align 4
@event_dpu_hw_ctl_trigger_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dpu_hw_ctl_pending_flush_template, %union.anon.105 { ptr @__tracepoint_dpu_hw_ctl_trigger_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dpu_hw_ctl_pending_flush_template }, ptr @print_fmt_dpu_hw_ctl_pending_flush_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dpu_hw_ctl_trigger_start = internal global ptr @event_dpu_hw_ctl_trigger_start, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c\00", align 1
@dpu_fops_regset32 = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_debugfs_open_regset32, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\013[drm:%s:%d] [dpu error]drm device node invalid\0A\00", align 1
@__func__.dpu_kms_init = private unnamed_addr constant [13 x i8] c"dpu_kms_init\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\013[drm:%s:%d] [dpu error]failed to get irq: %d\0A\00", align 1
@dpu_dt_match = dso_local constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-dpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@dpu_driver = internal global %struct.platform_driver { ptr @dpu_dev_probe, ptr @dpu_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.158, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dpu_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pnum\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"fl\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"lut_usage\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"pnum=%d fmt=%x rt=%d fl=%d lut=0x%llx lut_usage=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"danger_lut\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"safe_lut\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"pnum=%d fmt=%x mode=%d luts[0x%x, 0x%x]\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"xin_id\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"rd_lim\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"vbif_idx\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"pnum:%d xin_id:%d ot:%d vbif:%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"crtc_id\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"crtc:%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"trace_name\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"trace_begin\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%s|%d|%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"counter_name\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"%d|%s|%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"crtc\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"bw_ctl\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"core_clk_rate\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"stop_req\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"update_bus\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"update_clk\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"crtc=%d bw_ctl=%llu clk_rate=%u stop_req=%d u_bus=%d u_clk=%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"drm_id\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"enum dpu_intr_idx\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"intr_idx\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"irq_idx\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"id=%u, intr=%d, irq=%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"enum dpu_pingpong\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"pp_idx\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"atomic_cnt\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"id=%u\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"hdisplay\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"vdisplay\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"id=%u, mode=%dx%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"id=%u, val=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"id=%u, flags=%u\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"id=%u, enable=%s\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"sw_event\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"idle_pc_supported\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"rc_state\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"stage_str\00", align 1
@.str.69 = private unnamed_addr constant [59 x i8] c"%s: id:%u, sw_event:%d, idle_pc_supported:%s, rc_state:%d\0A\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"enum dpu_intf\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"intf_idx\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"id=%u, event=%u, intf=%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"frame_busy_mask\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"id=%u, idx=%u, frame_busy_mask=%lx\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"pending_kickoff_cnt\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"ctl_idx\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"extra_flush_bits\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"pending_flush_ret\00", align 1
@.str.82 = private unnamed_addr constant [100 x i8] c"id=%u, intf_idx=%d, pending_kickoff_cnt=%d ctl_idx=%d extra_flush_bits=0x%x pending_flush_ret=0x%x\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"ktime_t\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"id=%u, time=%lld\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"id=%u, event=%u\0A\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"expected_time\00", align 1
@.str.90 = private unnamed_addr constant [59 x i8] c"id=%u, irq_idx=%d, rc=%d, time=%lld, expected=%lld cnt=%d\0A\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"refcnt\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"id=%u, pp=%d, enable=%s, refcnt=%d\0A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"new_count\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"id=%u, pp=%d, new_count=%d, event=%u\0A\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"timeout_count\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"kickoff_count\00", align 1
@.str.98 = private unnamed_addr constant [60 x i8] c"id=%u, pp=%d, timeout_count=%d, kickoff_count=%d, event=%u\0A\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"id=%u, intf_idx=%d\0A\00", align 1
@.str.100 = private unnamed_addr constant [40 x i8] c"id=%u, intf_idx=%d enable=%s refcnt=%d\0A\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"plane_id\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"fb_id\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"struct drm_rect\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"src_rect\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"dst_rect\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"stage_idx\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"enum dpu_stage\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"stage\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"enum dpu_sspp\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"sspp\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"multirect_idx\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"multirect_mode\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"pixel_format\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.116 = private unnamed_addr constant [181 x i8] c"crtc_id:%u plane_id:%u fb_id:%u src:%d.%06ux%d.%06u%+d.%06u%+d.%06u dst:%dx%d%+d%+d stage_idx:%u stage:%d, sspp:%d multirect_index:%d multirect_mode:%u pix_format:%u modifier:%llu\0A\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"bounds\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"id:%u mixer:%d bounds:%dx%d%+d%+d\0A\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"enc_id\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"id:%u encoder:%u enable:%s state{enabled:%s}\0A\00", align 1
@.str.123 = private unnamed_addr constant [35 x i8] c"id:%u enable:%s state{enabled:%s}\0A\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"frame_pending\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"id:%u frame_pending:%d\0A\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.127 = private unnamed_addr constant [25 x i8] c"struct dpu_hw_fmt_layout\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"enum dpu_sspp_multirect_index\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"multirect_index\00", align 1
@.str.131 = private unnamed_addr constant [75 x i8] c"index:%d layout:{%ux%u @ [%u/%u, %u/%u, %u/%u, %u/%u]} multirect_index:%d\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"is_virtual\00", align 1
@.str.133 = private unnamed_addr constant [39 x i8] c"id:%u is_virtual:%s multirect_mode:%u\0A\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"id:%d enc_id:%u\0A\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"pp_id\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"id:%d enc_id:%u pp_id:%u\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"enum dpu_vbif\00", align 1
@.str.139 = private unnamed_addr constant [20 x i8] c"index:%d xin_id:%u\0A\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"pp:%d cfg:%u\0A\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"struct dpu_irq_callback *\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@.str.144 = private unnamed_addr constant [25 x i8] c"irq_idx:%d callback:%pK\0A\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"dev_name\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"clk_rate\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"dev:%s stop_req:%s clk_rate:%llu\0A\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"new_bits\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"pending_mask\00", align 1
@.str.150 = private unnamed_addr constant [20 x i8] c"new=%x existing=%x\0A\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"ctl_flush\00", align 1
@.str.152 = private unnamed_addr constant [30 x i8] c"pending_mask=%x CTL_FLUSH=%x\0A\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"[%x]\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"\0A[%x]\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c" %08x\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"msm_dpu\00", align 1
@dpu_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_runtime_suspend, ptr @dpu_runtime_resume, ptr null }, align 4
@dpu_ops = internal constant %struct.component_ops { ptr @dpu_bind, ptr @dpu_unbind }, align 4
@.str.159 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.160 = private unnamed_addr constant [34 x i8] c"invalid OPP table in device tree\0A\00", align 1
@.str.161 = private unnamed_addr constant [57 x i8] c"\013[drm:%s:%d] [dpu error]failed to parse clocks, ret=%d\0A\00", align 1
@__func__.dpu_bind = private unnamed_addr constant [9 x i8] c"dpu_bind\00", align 1
@kms_funcs = internal constant %struct.msm_kms_funcs { ptr @dpu_kms_hw_init, ptr @dpu_irq_preinstall, ptr @dpu_irq_postinstall, ptr @dpu_irq_uninstall, ptr @dpu_irq, ptr @dpu_kms_enable_vblank, ptr @dpu_kms_disable_vblank, ptr @dpu_kms_enable_commit, ptr @dpu_kms_disable_commit, ptr @dpu_kms_vsync_time, ptr @dpu_kms_prepare_commit, ptr @dpu_kms_flush_commit, ptr @dpu_kms_wait_flush, ptr @dpu_kms_complete_commit, ptr @dpu_get_msm_format, ptr @dpu_format_check_modified_format, ptr @dpu_kms_round_pixclk, ptr null, ptr @dpu_kms_destroy, ptr @dpu_kms_mdp_snapshot, ptr @dpu_kms_debugfs_init }, align 4
@.str.162 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]failed to init kms, ret=%d\0A\00", align 1
@msm_kms_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"&kms->commit_lock[i]\00", align 1
@.str.164 = private unnamed_addr constant [38 x i8] c"\013[drm:%s:%d] [dpu error]invalid kms\0A\00", align 1
@__func__.dpu_kms_hw_init = private unnamed_addr constant [16 x i8] c"dpu_kms_hw_init\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"mdp\00", align 1
@.str.166 = private unnamed_addr constant [61 x i8] c"\013[drm:%s:%d] [dpu error]mdp register memory map failed: %d\0A\00", align 1
@.str.167 = private unnamed_addr constant [31 x i8] c"mapped dpu address space @%pK\0A\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"vbif\00", align 1
@.str.169 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]vbif register memory map failed: %d\0A\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"vbif_nrt\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"VBIF NRT is not defined\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"regdma\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"REG_DMA is not defined\00", align 1
@.str.174 = private unnamed_addr constant [42 x i8] c"\016[drm:%s:%d] dpu hardware revision:0x%x\0A\00", align 1
@.str.175 = private unnamed_addr constant [50 x i8] c"\013[drm:%s:%d] [dpu error]catalog init failed: %d\0A\00", align 1
@.str.176 = private unnamed_addr constant [54 x i8] c"\013[drm:%s:%d] [dpu error]dpu_kms_mmu_init failed: %d\0A\00", align 1
@.str.177 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]rm init failed: %d\0A\00", align 1
@.str.178 = private unnamed_addr constant [51 x i8] c"\013[drm:%s:%d] [dpu error]failed to get hw_mdp: %d\0A\00", align 1
@.str.179 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]failed to init vbif %d: %d\0A\00", align 1
@.str.180 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]failed to init perf %d\0A\00", align 1
@.str.181 = private unnamed_addr constant [50 x i8] c"\013[drm:%s:%d] [dpu error]hw_intr init failed: %d\0A\00", align 1
@.str.182 = private unnamed_addr constant [50 x i8] c"\013[drm:%s:%d] [dpu error]modeset init failed: %d\0A\00", align 1
@dpu_kms_global_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @dpu_kms_global_duplicate_state, ptr @dpu_kms_global_destroy_state }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.183 = private unnamed_addr constant [9 x i8] c"mdp0-mem\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"mdp1-mem\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.185 = private unnamed_addr constant [5 x i8] c"dpu1\00", align 1
@.str.186 = private unnamed_addr constant [50 x i8] c"Create plane type %d with features %lx (cur %lx)\0A\00", align 1
@.str.187 = private unnamed_addr constant [48 x i8] c"\013[drm:%s:%d] [dpu error]dpu_plane_init failed\0A\00", align 1
@__func__._dpu_kms_drm_obj_init = private unnamed_addr constant [22 x i8] c"_dpu_kms_drm_obj_init\00", align 1
@.str.188 = private unnamed_addr constant [57 x i8] c"\013[drm:%s:%d] [dpu error]initialize_dsi failed, rc = %d\0A\00", align 1
@__func__._dpu_kms_setup_displays = private unnamed_addr constant [24 x i8] c"_dpu_kms_setup_displays\00", align 1
@.str.189 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]initialize_DP failed, rc = %d\0A\00", align 1
@.str.190 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]encoder init failed for dsi display\0A\00", align 1
@__func__._dpu_kms_initialize_dsi = private unnamed_addr constant [24 x i8] c"_dpu_kms_initialize_dsi\00", align 1
@.str.191 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]modeset_init failed for dsi[%d], rc = %d\0A\00", align 1
@.str.192 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]failed to setup DPU encoder %d: rc:%d\0A\00", align 1
@__func__._dpu_kms_initialize_displayport = private unnamed_addr constant [32 x i8] c"_dpu_kms_initialize_displayport\00", align 1
@.str.193 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]modeset_init failed for DP, rc = %d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.195 = private unnamed_addr constant [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid params\0A\00", align 1
@__func__.dpu_kms_wait_for_commit_done = private unnamed_addr constant [29 x i8] c"dpu_kms_wait_for_commit_done\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"[crtc:%d] not enable\0A\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"[crtc:%d] not active\0A\00", align 1
@.str.198 = private unnamed_addr constant [59 x i8] c"\013[drm:%s:%d] [dpu error]wait for commit done returned %d\0A\00", align 1
@.str.199 = private unnamed_addr constant [20 x i8] c"kms_complete_commit\00", align 1
@__func__.dpu_kms_destroy = private unnamed_addr constant [16 x i8] c"dpu_kms_destroy\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"ctl_%d\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"dspp_%d\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"intf_%d\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"pingpong_%d\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"sspp_%d\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"lm_%d\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.208 = private unnamed_addr constant [12 x i8] c"hw_log_mask\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"danger\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"danger_status\00", align 1
@dpu_debugfs_danger_stats_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_debugfs_danger_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.211 = private unnamed_addr constant [12 x i8] c"safe_status\00", align 1
@dpu_debugfs_safe_stats_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_debugfs_safe_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.212 = private unnamed_addr constant [15 x i8] c"disable_danger\00", align 1
@dpu_plane_danger_enable = internal constant %struct.file_operations { ptr null, ptr null, ptr @_dpu_plane_danger_read, ptr @_dpu_plane_danger_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.213 = private unnamed_addr constant [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s)\0A\00", align 1
@__func__._dpu_danger_signal_status = private unnamed_addr constant [26 x i8] c"_dpu_danger_signal_status\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"\0ADanger signal status:\0A\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"\0ASafe signal status:\0A\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"MDP     :  0x%x\0A\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"SSPP%d   :  0x%x  \0A\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"Disabling danger:\0A\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"Enabling danger:\0A\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"plane:%d img:%dx%d \00", align 1
@.str.222 = private unnamed_addr constant [35 x i8] c"src[%d,%d,%d,%d] dst[%d,%d,%d,%d]\0A\00", align 1
@.str.223 = private unnamed_addr constant [19 x i8] c"Inactive plane:%d\0A\00", align 1
@.str.224 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]clock disable failed rc:%d\0A\00", align 1
@__func__.dpu_runtime_suspend = private unnamed_addr constant [20 x i8] c"dpu_runtime_suspend\00", align 1
@.str.225 = private unnamed_addr constant [52 x i8] c"\013[drm:%s:%d] [dpu error]clock enable failed rc:%d\0A\00", align 1
@__func__.dpu_runtime_resume = private unnamed_addr constant [19 x i8] c"dpu_runtime_resume\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__event_dpu_cmd_release_bw, ptr @__event_dpu_core_irq_register_callback, ptr @__event_dpu_core_irq_unregister_callback, ptr @__event_dpu_core_perf_update_clk, ptr @__event_dpu_crtc_complete_commit, ptr @__event_dpu_crtc_complete_flip, ptr @__event_dpu_crtc_disable, ptr @__event_dpu_crtc_disable_frame_pending, ptr @__event_dpu_crtc_enable, ptr @__event_dpu_crtc_frame_event_cb, ptr @__event_dpu_crtc_frame_event_done, ptr @__event_dpu_crtc_frame_event_more_pending, ptr @__event_dpu_crtc_runtime_resume, ptr @__event_dpu_crtc_setup_lm_bounds, ptr @__event_dpu_crtc_setup_mixer, ptr @__event_dpu_crtc_vblank, ptr @__event_dpu_crtc_vblank_cb, ptr @__event_dpu_crtc_vblank_enable, ptr @__event_dpu_enc_atomic_check, ptr @__event_dpu_enc_atomic_check_flags, ptr @__event_dpu_enc_disable, ptr @__event_dpu_enc_early_kickoff, ptr @__event_dpu_enc_enable, ptr @__event_dpu_enc_frame_done_cb, ptr @__event_dpu_enc_frame_done_cb_not_busy, ptr @__event_dpu_enc_frame_done_timeout, ptr @__event_dpu_enc_frame_event_cb, ptr @__event_dpu_enc_irq_register_success, ptr @__event_dpu_enc_irq_unregister_success, ptr @__event_dpu_enc_irq_wait_success, ptr @__event_dpu_enc_kickoff, ptr @__event_dpu_enc_mode_set, ptr @__event_dpu_enc_phys_cmd_connect_te, ptr @__event_dpu_enc_phys_cmd_irq_ctrl, ptr @__event_dpu_enc_phys_cmd_pdone_timeout, ptr @__event_dpu_enc_phys_cmd_pp_tx_done, ptr @__event_dpu_enc_phys_vid_irq_ctrl, ptr @__event_dpu_enc_phys_vid_post_kickoff, ptr @__event_dpu_enc_prepare_kickoff, ptr @__event_dpu_enc_prepare_kickoff_reset, ptr @__event_dpu_enc_rc, ptr @__event_dpu_enc_rc_helper, ptr @__event_dpu_enc_trigger_flush, ptr @__event_dpu_enc_trigger_start, ptr @__event_dpu_enc_underrun_cb, ptr @__event_dpu_enc_vblank_cb, ptr @__event_dpu_enc_vsync_event_work, ptr @__event_dpu_enc_wait_event_timeout, ptr @__event_dpu_hw_ctl_clear_pending_flush, ptr @__event_dpu_hw_ctl_trigger_pending_flush, ptr @__event_dpu_hw_ctl_trigger_prepare, ptr @__event_dpu_hw_ctl_trigger_start, ptr @__event_dpu_hw_ctl_update_pending_flush, ptr @__event_dpu_kms_commit, ptr @__event_dpu_kms_wait_for_commit_done, ptr @__event_dpu_perf_crtc_update, ptr @__event_dpu_perf_set_danger_luts, ptr @__event_dpu_perf_set_ot, ptr @__event_dpu_perf_set_qos_luts, ptr @__event_dpu_plane_disable, ptr @__event_dpu_plane_set_scanout, ptr @__event_dpu_pp_connect_ext_te, ptr @__event_dpu_rm_reserve_ctls, ptr @__event_dpu_rm_reserve_intf, ptr @__event_dpu_rm_reserve_lms, ptr @__event_dpu_trace_counter, ptr @__event_dpu_vbif_wait_xin_halt_fail, ptr @__event_tracing_mark_write, ptr @__tracepoint_dpu_cmd_release_bw, ptr @__tracepoint_dpu_core_irq_register_callback, ptr @__tracepoint_dpu_core_irq_unregister_callback, ptr @__tracepoint_dpu_core_perf_update_clk, ptr @__tracepoint_dpu_crtc_complete_commit, ptr @__tracepoint_dpu_crtc_complete_flip, ptr @__tracepoint_dpu_crtc_disable, ptr @__tracepoint_dpu_crtc_disable_frame_pending, ptr @__tracepoint_dpu_crtc_enable, ptr @__tracepoint_dpu_crtc_frame_event_cb, ptr @__tracepoint_dpu_crtc_frame_event_done, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, ptr @__tracepoint_dpu_crtc_runtime_resume, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, ptr @__tracepoint_dpu_crtc_setup_mixer, ptr @__tracepoint_dpu_crtc_vblank, ptr @__tracepoint_dpu_crtc_vblank_cb, ptr @__tracepoint_dpu_crtc_vblank_enable, ptr @__tracepoint_dpu_enc_atomic_check, ptr @__tracepoint_dpu_enc_atomic_check_flags, ptr @__tracepoint_dpu_enc_disable, ptr @__tracepoint_dpu_enc_early_kickoff, ptr @__tracepoint_dpu_enc_enable, ptr @__tracepoint_dpu_enc_frame_done_cb, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, ptr @__tracepoint_dpu_enc_frame_done_timeout, ptr @__tracepoint_dpu_enc_frame_event_cb, ptr @__tracepoint_dpu_enc_irq_register_success, ptr @__tracepoint_dpu_enc_irq_unregister_success, ptr @__tracepoint_dpu_enc_irq_wait_success, ptr @__tracepoint_dpu_enc_kickoff, ptr @__tracepoint_dpu_enc_mode_set, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, ptr @__tracepoint_dpu_enc_prepare_kickoff, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, ptr @__tracepoint_dpu_enc_rc, ptr @__tracepoint_dpu_enc_rc_helper, ptr @__tracepoint_dpu_enc_trigger_flush, ptr @__tracepoint_dpu_enc_trigger_start, ptr @__tracepoint_dpu_enc_underrun_cb, ptr @__tracepoint_dpu_enc_vblank_cb, ptr @__tracepoint_dpu_enc_vsync_event_work, ptr @__tracepoint_dpu_enc_wait_event_timeout, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, ptr @__tracepoint_dpu_hw_ctl_trigger_start, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, ptr @__tracepoint_dpu_kms_commit, ptr @__tracepoint_dpu_kms_wait_for_commit_done, ptr @__tracepoint_dpu_perf_crtc_update, ptr @__tracepoint_dpu_perf_set_danger_luts, ptr @__tracepoint_dpu_perf_set_ot, ptr @__tracepoint_dpu_perf_set_qos_luts, ptr @__tracepoint_dpu_plane_disable, ptr @__tracepoint_dpu_plane_set_scanout, ptr @__tracepoint_dpu_pp_connect_ext_te, ptr @__tracepoint_dpu_rm_reserve_ctls, ptr @__tracepoint_dpu_rm_reserve_intf, ptr @__tracepoint_dpu_rm_reserve_lms, ptr @__tracepoint_dpu_trace_counter, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, ptr @__tracepoint_ptr_dpu_cmd_release_bw, ptr @__tracepoint_ptr_dpu_core_irq_register_callback, ptr @__tracepoint_ptr_dpu_core_irq_unregister_callback, ptr @__tracepoint_ptr_dpu_core_perf_update_clk, ptr @__tracepoint_ptr_dpu_crtc_complete_commit, ptr @__tracepoint_ptr_dpu_crtc_complete_flip, ptr @__tracepoint_ptr_dpu_crtc_disable, ptr @__tracepoint_ptr_dpu_crtc_disable_frame_pending, ptr @__tracepoint_ptr_dpu_crtc_enable, ptr @__tracepoint_ptr_dpu_crtc_frame_event_cb, ptr @__tracepoint_ptr_dpu_crtc_frame_event_done, ptr @__tracepoint_ptr_dpu_crtc_frame_event_more_pending, ptr @__tracepoint_ptr_dpu_crtc_runtime_resume, ptr @__tracepoint_ptr_dpu_crtc_setup_lm_bounds, ptr @__tracepoint_ptr_dpu_crtc_setup_mixer, ptr @__tracepoint_ptr_dpu_crtc_vblank, ptr @__tracepoint_ptr_dpu_crtc_vblank_cb, ptr @__tracepoint_ptr_dpu_crtc_vblank_enable, ptr @__tracepoint_ptr_dpu_enc_atomic_check, ptr @__tracepoint_ptr_dpu_enc_atomic_check_flags, ptr @__tracepoint_ptr_dpu_enc_disable, ptr @__tracepoint_ptr_dpu_enc_early_kickoff, ptr @__tracepoint_ptr_dpu_enc_enable, ptr @__tracepoint_ptr_dpu_enc_frame_done_cb, ptr @__tracepoint_ptr_dpu_enc_frame_done_cb_not_busy, ptr @__tracepoint_ptr_dpu_enc_frame_done_timeout, ptr @__tracepoint_ptr_dpu_enc_frame_event_cb, ptr @__tracepoint_ptr_dpu_enc_irq_register_success, ptr @__tracepoint_ptr_dpu_enc_irq_unregister_success, ptr @__tracepoint_ptr_dpu_enc_irq_wait_success, ptr @__tracepoint_ptr_dpu_enc_kickoff, ptr @__tracepoint_ptr_dpu_enc_mode_set, ptr @__tracepoint_ptr_dpu_enc_phys_cmd_connect_te, ptr @__tracepoint_ptr_dpu_enc_phys_cmd_irq_ctrl, ptr @__tracepoint_ptr_dpu_enc_phys_cmd_pdone_timeout, ptr @__tracepoint_ptr_dpu_enc_phys_cmd_pp_tx_done, ptr @__tracepoint_ptr_dpu_enc_phys_vid_irq_ctrl, ptr @__tracepoint_ptr_dpu_enc_phys_vid_post_kickoff, ptr @__tracepoint_ptr_dpu_enc_prepare_kickoff, ptr @__tracepoint_ptr_dpu_enc_prepare_kickoff_reset, ptr @__tracepoint_ptr_dpu_enc_rc, ptr @__tracepoint_ptr_dpu_enc_rc_helper, ptr @__tracepoint_ptr_dpu_enc_trigger_flush, ptr @__tracepoint_ptr_dpu_enc_trigger_start, ptr @__tracepoint_ptr_dpu_enc_underrun_cb, ptr @__tracepoint_ptr_dpu_enc_vblank_cb, ptr @__tracepoint_ptr_dpu_enc_vsync_event_work, ptr @__tracepoint_ptr_dpu_enc_wait_event_timeout, ptr @__tracepoint_ptr_dpu_hw_ctl_clear_pending_flush, ptr @__tracepoint_ptr_dpu_hw_ctl_trigger_pending_flush, ptr @__tracepoint_ptr_dpu_hw_ctl_trigger_prepare, ptr @__tracepoint_ptr_dpu_hw_ctl_trigger_start, ptr @__tracepoint_ptr_dpu_hw_ctl_update_pending_flush, ptr @__tracepoint_ptr_dpu_kms_commit, ptr @__tracepoint_ptr_dpu_kms_wait_for_commit_done, ptr @__tracepoint_ptr_dpu_perf_crtc_update, ptr @__tracepoint_ptr_dpu_perf_set_danger_luts, ptr @__tracepoint_ptr_dpu_perf_set_ot, ptr @__tracepoint_ptr_dpu_perf_set_qos_luts, ptr @__tracepoint_ptr_dpu_plane_disable, ptr @__tracepoint_ptr_dpu_plane_set_scanout, ptr @__tracepoint_ptr_dpu_pp_connect_ext_te, ptr @__tracepoint_ptr_dpu_rm_reserve_ctls, ptr @__tracepoint_ptr_dpu_rm_reserve_intf, ptr @__tracepoint_ptr_dpu_rm_reserve_lms, ptr @__tracepoint_ptr_dpu_trace_counter, ptr @__tracepoint_ptr_dpu_vbif_wait_xin_halt_fail, ptr @__tracepoint_ptr_tracing_mark_write, ptr @__tracepoint_tracing_mark_write, ptr @event_class_dpu_cmd_release_bw, ptr @event_class_dpu_core_irq_callback_template, ptr @event_class_dpu_core_perf_update_clk, ptr @event_class_dpu_crtc_disable_frame_pending, ptr @event_class_dpu_crtc_enable_template, ptr @event_class_dpu_crtc_setup_lm_bounds, ptr @event_class_dpu_crtc_setup_mixer, ptr @event_class_dpu_crtc_vblank_enable, ptr @event_class_dpu_drm_obj_template, ptr @event_class_dpu_enc_atomic_check_flags, ptr @event_class_dpu_enc_enable, ptr @event_class_dpu_enc_frame_done_cb, ptr @event_class_dpu_enc_frame_done_cb_not_busy, ptr @event_class_dpu_enc_id_enable_template, ptr @event_class_dpu_enc_irq_template, ptr @event_class_dpu_enc_irq_wait_success, ptr @event_class_dpu_enc_keyval_template, ptr @event_class_dpu_enc_ktime_template, ptr @event_class_dpu_enc_phys_cmd_irq_ctrl, ptr @event_class_dpu_enc_phys_cmd_pdone_timeout, ptr @event_class_dpu_enc_phys_cmd_pp_tx_done, ptr @event_class_dpu_enc_phys_vid_irq_ctrl, ptr @event_class_dpu_enc_phys_vid_post_kickoff, ptr @event_class_dpu_enc_rc, ptr @event_class_dpu_enc_trigger_flush, ptr @event_class_dpu_enc_wait_event_timeout, ptr @event_class_dpu_hw_ctl_pending_flush_template, ptr @event_class_dpu_hw_ctl_update_pending_flush, ptr @event_class_dpu_id_event_template, ptr @event_class_dpu_perf_crtc_update, ptr @event_class_dpu_perf_set_danger_luts, ptr @event_class_dpu_perf_set_ot, ptr @event_class_dpu_perf_set_qos_luts, ptr @event_class_dpu_plane_disable, ptr @event_class_dpu_plane_set_scanout, ptr @event_class_dpu_pp_connect_ext_te, ptr @event_class_dpu_rm_iter_template, ptr @event_class_dpu_rm_reserve_lms, ptr @event_class_dpu_trace_counter, ptr @event_class_dpu_vbif_wait_xin_halt_fail, ptr @event_class_tracing_mark_write, ptr @event_dpu_cmd_release_bw, ptr @event_dpu_core_irq_register_callback, ptr @event_dpu_core_irq_unregister_callback, ptr @event_dpu_core_perf_update_clk, ptr @event_dpu_crtc_complete_commit, ptr @event_dpu_crtc_complete_flip, ptr @event_dpu_crtc_disable, ptr @event_dpu_crtc_disable_frame_pending, ptr @event_dpu_crtc_enable, ptr @event_dpu_crtc_frame_event_cb, ptr @event_dpu_crtc_frame_event_done, ptr @event_dpu_crtc_frame_event_more_pending, ptr @event_dpu_crtc_runtime_resume, ptr @event_dpu_crtc_setup_lm_bounds, ptr @event_dpu_crtc_setup_mixer, ptr @event_dpu_crtc_vblank, ptr @event_dpu_crtc_vblank_cb, ptr @event_dpu_crtc_vblank_enable, ptr @event_dpu_enc_atomic_check, ptr @event_dpu_enc_atomic_check_flags, ptr @event_dpu_enc_disable, ptr @event_dpu_enc_early_kickoff, ptr @event_dpu_enc_enable, ptr @event_dpu_enc_frame_done_cb, ptr @event_dpu_enc_frame_done_cb_not_busy, ptr @event_dpu_enc_frame_done_timeout, ptr @event_dpu_enc_frame_event_cb, ptr @event_dpu_enc_irq_register_success, ptr @event_dpu_enc_irq_unregister_success, ptr @event_dpu_enc_irq_wait_success, ptr @event_dpu_enc_kickoff, ptr @event_dpu_enc_mode_set, ptr @event_dpu_enc_phys_cmd_connect_te, ptr @event_dpu_enc_phys_cmd_irq_ctrl, ptr @event_dpu_enc_phys_cmd_pdone_timeout, ptr @event_dpu_enc_phys_cmd_pp_tx_done, ptr @event_dpu_enc_phys_vid_irq_ctrl, ptr @event_dpu_enc_phys_vid_post_kickoff, ptr @event_dpu_enc_prepare_kickoff, ptr @event_dpu_enc_prepare_kickoff_reset, ptr @event_dpu_enc_rc, ptr @event_dpu_enc_rc_helper, ptr @event_dpu_enc_trigger_flush, ptr @event_dpu_enc_trigger_start, ptr @event_dpu_enc_underrun_cb, ptr @event_dpu_enc_vblank_cb, ptr @event_dpu_enc_vsync_event_work, ptr @event_dpu_enc_wait_event_timeout, ptr @event_dpu_hw_ctl_clear_pending_flush, ptr @event_dpu_hw_ctl_trigger_pending_flush, ptr @event_dpu_hw_ctl_trigger_prepare, ptr @event_dpu_hw_ctl_trigger_start, ptr @event_dpu_hw_ctl_update_pending_flush, ptr @event_dpu_kms_commit, ptr @event_dpu_kms_wait_for_commit_done, ptr @event_dpu_perf_crtc_update, ptr @event_dpu_perf_set_danger_luts, ptr @event_dpu_perf_set_ot, ptr @event_dpu_perf_set_qos_luts, ptr @event_dpu_plane_disable, ptr @event_dpu_plane_set_scanout, ptr @event_dpu_pp_connect_ext_te, ptr @event_dpu_rm_reserve_ctls, ptr @event_dpu_rm_reserve_intf, ptr @event_dpu_rm_reserve_lms, ptr @event_dpu_trace_counter, ptr @event_dpu_vbif_wait_xin_halt_fail, ptr @event_tracing_mark_write], section "llvm.metadata"

@__mod_of__dpu_dt_match_device_table = dso_local alias [6 x %struct.of_device_id], ptr @dpu_dt_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_perf_set_qos_luts(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_qos_luts, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #16
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_perf_set_danger_luts(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_danger_luts, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_perf_set_ot(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_set_ot, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_cmd_release_bw(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_cmd_release_bw, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tracing_mark_write(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_trace_counter(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_trace_counter, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_perf_crtc_update(ptr nocapture readnone %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_perf_crtc_update, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #16
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_irq_register_success(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_register_success, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_irq_unregister_success(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_unregister_success, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_irq_wait_success(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_wait_success, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_atomic_check(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_mode_set(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_mode_set, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_disable(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_disable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_kickoff(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_kickoff, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_prepare_kickoff(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_prepare_kickoff_reset(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_complete_flip(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_flip, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_vblank_cb(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_cb, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_complete_commit(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_complete_commit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_kms_commit(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_commit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_kms_wait_for_commit_done(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_wait_for_commit_done, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_runtime_resume(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_runtime_resume, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_enable(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_enable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_underrun_cb(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_underrun_cb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_trigger_start(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_atomic_check_flags(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check_flags, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_rc_helper(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc_helper, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i1 noundef zeroext %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_vblank_cb(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vblank_cb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i1 noundef zeroext %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_frame_event_cb(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_event_cb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i1 noundef zeroext %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_cmd_connect_te(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_connect_te, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i1 noundef zeroext %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_rc(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_frame_done_cb_not_busy(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_frame_done_cb(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_trigger_flush(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_flush, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #16
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_vsync_event_work(ptr nocapture readnone %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vsync_event_work, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i64 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_early_kickoff(ptr nocapture readnone %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_early_kickoff, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i64 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_frame_done_timeout(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_timeout, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_frame_event_cb(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_cb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_frame_event_done(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_done, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_frame_event_more_pending(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_frame_event_more_pending, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_wait_event_timeout(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_wait_event_timeout, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) #16
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_cmd_irq_ctrl(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_irq_ctrl, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_cmd_pp_tx_done(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pp_tx_done, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_cmd_pdone_timeout(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_cmd_pdone_timeout, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_vid_post_kickoff(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_post_kickoff, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_enc_phys_vid_irq_ctrl(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_phys_vid_irq_ctrl, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_setup_mixer(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) #0 {
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_mixer, i32 0, i32 7), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) #16
  %17 = getelementptr %struct.tracepoint_func, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_setup_lm_bounds(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_setup_lm_bounds, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, ptr noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_vblank_enable(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank_enable, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #16
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_enable(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_enable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_disable(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_vblank(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_vblank, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_crtc_disable_frame_pending(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_crtc_disable_frame_pending, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_plane_set_scanout(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_set_scanout, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_plane_disable(ptr nocapture readnone %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_plane_disable, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_rm_reserve_intf(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_intf, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_rm_reserve_ctls(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_ctls, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_rm_reserve_lms(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_rm_reserve_lms, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_vbif_wait_xin_halt_fail(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_vbif_wait_xin_halt_fail, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_pp_connect_ext_te(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_pp_connect_ext_te, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_core_irq_register_callback(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_register_callback, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_core_irq_unregister_callback(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_unregister_callback, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_core_perf_update_clk(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_perf_update_clk, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i1 noundef zeroext %2, i64 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_hw_ctl_update_pending_flush(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_update_pending_flush, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_hw_ctl_clear_pending_flush(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_clear_pending_flush, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_hw_ctl_trigger_pending_flush(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_pending_flush, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_hw_ctl_trigger_prepare(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_prepare, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dpu_hw_ctl_trigger_start(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_hw_ctl_trigger_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_perf_set_qos_luts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  %9 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %7
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %18, label %30, label %19

19:                                               ; preds = %17, %14, %7
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 40) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 3
  store i8 %9, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 4
  store i32 %4, ptr %26, align 4
  %27 = zext i32 %5 to i64
  %28 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 5
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %20, i32 0, i32 6
  store i32 %6, ptr %29, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #16
  br label %30

30:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_perf_set_qos_luts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #12, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %22, %7
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #16
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 3
  store i8 %10, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 4
  store i32 %4, ptr %42, align 4
  %43 = zext i32 %5 to i64
  %44 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 5
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %26, i32 0, i32 6
  store i32 %6, ptr %45, align 8
  %46 = load i32, ptr %9, align 4
  %47 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 44, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %18, ptr noundef null) #16
  br label %48

48:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_perf_set_danger_luts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_perf_set_danger_luts(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #16
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_perf_set_ot(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_perf_set_ot(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #12, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #16
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #16
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_cmd_release_bw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_dpu_cmd_release_bw, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_cmd_release_bw(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #12, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #16
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_dpu_cmd_release_bw, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #16
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tracing_mark_write(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %31, label %16

16:                                               ; preds = %14, %11, %4
  %17 = icmp eq ptr %2, null
  %18 = select i1 %17, ptr @.str.23, ptr %2
  %19 = tail call i32 @strlen(ptr noundef %18) #16
  %20 = add i32 %19, 21
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %20) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65553
  %26 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %21, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %21, i32 0, i32 1
  store i32 %1, ptr %27, align 4
  %28 = getelementptr i8, ptr %21, i32 17
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef %18)
  %30 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %21, i32 0, i32 3
  store i8 %6, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %31

31:                                               ; preds = %23, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_tracing_mark_write(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.23, ptr %2
  %10 = tail call i32 @strlen(ptr noundef %9) #16
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65553
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #12, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %24, %4
  %28 = add i32 %10, 32
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #16
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #16
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %31, i32 0, i32 2
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %31, i32 0, i32 1
  store i32 %1, ptr %45, align 4
  %46 = getelementptr i8, ptr %31, i32 17
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef %9)
  %48 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %31, i32 0, i32 3
  store i8 %7, ptr %48, align 4
  %49 = load i32, ptr %6, align 4
  %50 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %20, ptr noundef null) #16
  br label %51

51:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_trace_counter(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %33, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str.23, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #16
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %20, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = tail call ptr @llvm.thread.pointer() #16
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 53
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %20, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %20, i32 20
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef %17)
  %32 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %20, i32 0, i32 3
  store i32 %3, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %33

33:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_trace_counter(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %2, null
  %8 = select i1 %7, ptr @.str.23, ptr %2
  %9 = tail call i32 @strlen(ptr noundef %8) #16
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #12, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #16
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #16
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %30, i32 0, i32 2
  store i32 %11, ptr %43, align 4
  %44 = tail call ptr @llvm.thread.pointer() #16
  %45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 53
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %30, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %30, i32 20
  %49 = call ptr @strcpy(ptr noundef %48, ptr noundef %8)
  %50 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %30, i32 0, i32 3
  store i32 %3, ptr %50, align 4
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %19, ptr noundef null) #16
  br label %53

53:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_perf_crtc_update(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  %9 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %7
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %18, label %31, label %19

19:                                               ; preds = %17, %14, %7
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 40) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 2
  store i64 %2, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 3
  store i32 %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 4
  store i8 %9, ptr %26, align 4
  %27 = zext i1 %5 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 5
  store i32 %27, ptr %28, align 8
  %29 = zext i1 %6 to i32
  %30 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %20, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #16
  br label %31

31:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_perf_crtc_update(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #12, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %22, %7
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #16
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 2
  store i64 %2, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 3
  store i32 %3, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 4
  store i8 %10, ptr %42, align 4
  %43 = zext i1 %5 to i32
  %44 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 5
  store i32 %43, ptr %44, align 8
  %45 = zext i1 %6 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %26, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %9, align 4
  %48 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 44, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %18, ptr noundef null) #16
  br label %49

49:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_irq_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_irq_template(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_irq_wait_success(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_irq_wait_success(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #16
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_drm_obj_template(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_dpu_drm_obj_template, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_drm_obj_template(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #12, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #16
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_dpu_drm_obj_template, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #16
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_keyval_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_keyval_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_atomic_check_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_atomic_check_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_id_enable_template(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  %5 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %3
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %10, %3
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %16, i32 0, i32 2
  store i8 %5, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %21

21:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_id_enable_template(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %18, %3
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %22, i32 0, i32 2
  store i8 %6, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %14, ptr noundef null) #16
  br label %39

39:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_rc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  %8 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %6
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %17, label %35, label %18

18:                                               ; preds = %16, %13, %6
  %19 = icmp eq ptr %5, null
  %20 = select i1 %19, ptr @.str.23, ptr %5
  %21 = tail call i32 @strlen(ptr noundef %20) #16
  %22 = add i32 %21, 29
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65564
  %28 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %23, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %23, i32 0, i32 1
  store i32 %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %23, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %23, i32 0, i32 3
  store i8 %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %23, i32 0, i32 4
  store i32 %4, ptr %32, align 4
  %33 = getelementptr i8, ptr %23, i32 28
  %34 = call ptr @strcpy(ptr noundef %33, ptr noundef %20)
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %35

35:                                               ; preds = %25, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_rc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef readonly %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %10 = icmp eq ptr %5, null
  %11 = select i1 %10, ptr @.str.23, ptr %5
  %12 = tail call i32 @strlen(ptr noundef %11) #16
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65564
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #12, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %26, %6
  %30 = add i32 %12, 40
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #16
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %33, i32 0, i32 5
  store i32 %14, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %33, i32 0, i32 1
  store i32 %1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %33, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %33, i32 0, i32 3
  store i8 %9, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %33, i32 0, i32 4
  store i32 %4, ptr %50, align 4
  %51 = getelementptr i8, ptr %33, i32 28
  %52 = call ptr @strcpy(ptr noundef %51, ptr noundef %11)
  %53 = load i32, ptr %8, align 4
  %54 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %22, ptr noundef null) #16
  br label %55

55:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_frame_done_cb_not_busy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_frame_done_cb_not_busy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_frame_done_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_frame_done_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_trigger_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %17, label %28, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 4
  store i32 %4, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 5
  store i32 %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %19, i32 0, i32 6
  store i32 %6, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #16
  br label %28

28:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_trigger_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #12, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #16
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 4
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 5
  store i32 %5, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %25, i32 0, i32 6
  store i32 %6, ptr %43, align 4
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 36, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #16
  br label %46

46:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_ktime_template(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %15, i32 0, i32 2
  store i64 %2, ptr %19, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_ktime_template(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %21, i32 0, i32 2
  store i64 %2, ptr %35, align 8
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_id_event_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_id_event_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_wait_event_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %7
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %17, label %28, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 48) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 3
  store i32 %3, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 4
  store i64 %4, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 5
  store i64 %5, ptr %26, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %19, i32 0, i32 6
  store i32 %6, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #16
  br label %28

28:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_wait_event_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #12, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %8, ptr noundef nonnull %9) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %8, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #16
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 2
  store i32 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 3
  store i32 %3, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 4
  store i64 %4, ptr %41, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 5
  store i64 %5, ptr %42, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %25, i32 0, i32 6
  store i32 %6, ptr %43, align 8
  %44 = load i32, ptr %9, align 4
  %45 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 52, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #16
  br label %46

46:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_phys_cmd_irq_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %5
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %25, label %17

17:                                               ; preds = %15, %12, %5
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %18, i32 0, i32 3
  store i8 %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %25

25:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_phys_cmd_irq_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %5
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %24, i32 0, i32 3
  store i8 %8, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %16, ptr noundef null) #16
  br label %43

43:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_phys_cmd_pp_tx_done(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %17, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_phys_cmd_pp_tx_done(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #12, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #16
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %23, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #16
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_phys_cmd_pdone_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_phys_cmd_pdone_timeout(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #16
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_phys_vid_post_kickoff(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_phys_vid_post_kickoff(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_enc_phys_vid_irq_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %5
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %25, label %17

17:                                               ; preds = %15, %12, %5
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %18, i32 0, i32 3
  store i8 %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %25

25:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_enc_phys_vid_irq_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20, %5
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %24, i32 0, i32 3
  store i8 %8, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %16, ptr noundef null) #16
  br label %43

43:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_crtc_setup_mixer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) #0 {
  %10 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false), !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 704
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !10

15:                                               ; preds = %9
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %19, label %76, label %20

20:                                               ; preds = %18, %15, %9
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 88) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 1
  store i32 %1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 2
  store i32 %2, ptr %25, align 4
  %26 = icmp eq ptr %3, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_framebuffer, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %31, %27 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 3
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 4
  %36 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 8
  %37 = load i32, ptr %36, align 4, !noalias !13
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 9
  %39 = load i32, ptr %38, align 4, !noalias !13
  %40 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 11
  %41 = load i32, ptr %40, align 4, !noalias !13
  %42 = add i32 %41, %37
  %43 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 10
  %44 = load i32, ptr %43, align 4, !noalias !13
  %45 = add i32 %44, %39
  store i32 %37, ptr %35, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 4, i32 1
  store i32 %39, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 4, i32 2
  store i32 %42, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 4, i32 3
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 5
  %50 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 4
  %51 = load i32, ptr %50, align 4, !noalias !16
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 5
  %53 = load i32, ptr %52, align 4, !noalias !16
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 6
  %55 = load i32, ptr %54, align 4, !noalias !16
  %56 = add i32 %55, %51
  %57 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 7
  %58 = load i32, ptr %57, align 4, !noalias !16
  %59 = add i32 %58, %53
  store i32 %51, ptr %49, align 4
  %60 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 5, i32 1
  store i32 %53, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 5, i32 2
  store i32 %56, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 5, i32 3
  store i32 %59, ptr %62, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 6
  store i32 %5, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 7
  store i32 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 8
  store i32 %6, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 9
  store i32 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 10
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 11
  store i32 %7, ptr %74, align 8
  %75 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %21, i32 0, i32 12
  store i64 %8, ptr %75, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %10) #16
  br label %76

76:                                               ; preds = %32, %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_crtc_setup_mixer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) #0 {
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store ptr null, ptr %10, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  store i32 0, ptr %11, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #12, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %94, label %26

26:                                               ; preds = %23, %9
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef 92, ptr noundef nonnull %10, ptr noundef nonnull %11) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %94, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %10, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #16
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 1
  store i32 %1, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 2
  store i32 %2, ptr %41, align 4
  %42 = icmp eq ptr %3, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %43, %29
  %49 = phi i32 [ %47, %43 ], [ 0, %29 ]
  %50 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 3
  store i32 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 4
  %52 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 8
  %53 = load i32, ptr %52, align 4, !noalias !19
  %54 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 9
  %55 = load i32, ptr %54, align 4, !noalias !19
  %56 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 11
  %57 = load i32, ptr %56, align 4, !noalias !19
  %58 = add i32 %57, %53
  %59 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 10
  %60 = load i32, ptr %59, align 4, !noalias !19
  %61 = add i32 %60, %55
  store i32 %53, ptr %51, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 4, i32 1
  store i32 %55, ptr %62, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 4, i32 2
  store i32 %58, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 4, i32 3
  store i32 %61, ptr %64, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 5
  %66 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 4
  %67 = load i32, ptr %66, align 4, !noalias !22
  %68 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 5
  %69 = load i32, ptr %68, align 4, !noalias !22
  %70 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 6
  %71 = load i32, ptr %70, align 4, !noalias !22
  %72 = add i32 %71, %67
  %73 = getelementptr inbounds %struct.drm_plane_state, ptr %3, i32 0, i32 7
  %74 = load i32, ptr %73, align 4, !noalias !22
  %75 = add i32 %74, %69
  store i32 %67, ptr %65, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 5, i32 1
  store i32 %69, ptr %76, align 4
  %77 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 5, i32 2
  store i32 %72, ptr %77, align 4
  %78 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 5, i32 3
  store i32 %75, ptr %78, align 4
  %79 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 6
  store i32 %5, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 2
  %81 = load i32, ptr %80, align 8
  %82 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 7
  store i32 %81, ptr %82, align 8
  %83 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 8
  store i32 %6, ptr %83, align 4
  %84 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 4
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 9
  store i32 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.dpu_plane_state, ptr %4, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 10
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 11
  store i32 %7, ptr %90, align 8
  %91 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %27, i32 0, i32 12
  store i64 %8, ptr %91, align 8
  %92 = load i32, ptr %11, align 4
  %93 = load ptr, ptr %10, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef 92, i32 noundef %92, ptr noundef %0, i64 noundef 1, ptr noundef %93, ptr noundef %19, ptr noundef null) #16
  br label %94

94:                                               ; preds = %48, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_crtc_setup_lm_bounds(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 32) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %16, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %21, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_crtc_setup_lm_bounds(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %22, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %37, ptr noundef align 4 dereferenceable(16) %3, i32 16, i1 false)
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 36, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_crtc_vblank_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  %7 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %5
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %27, label %17

17:                                               ; preds = %15, %12, %5
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 20) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %18, i32 0, i32 3
  store i8 %7, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dpu_crtc, ptr %4, i32 0, i32 7
  %25 = load i8, ptr %24, align 8, !range !25
  %26 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %18, i32 0, i32 4
  store i8 %25, ptr %26, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #16
  br label %27

27:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_crtc_vblank_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #12, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20, %5
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %6, ptr noundef nonnull %7) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %24, i32 0, i32 3
  store i8 %8, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dpu_crtc, ptr %4, i32 0, i32 7
  %41 = load i8, ptr %40, align 8, !range !25
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %24, i32 0, i32 4
  store i8 %41, ptr %42, align 1
  %43 = load i32, ptr %7, align 4
  %44 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 20, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %16, ptr noundef null) #16
  br label %45

45:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_crtc_enable_template(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %25, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %17, i32 0, i32 2
  store i8 %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 7
  %23 = load i8, ptr %22, align 8, !range !25
  %24 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %17, i32 0, i32 3
  store i8 %23, ptr %24, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %25

25:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_crtc_enable_template(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #12, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #16
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %23, i32 0, i32 2
  store i8 %7, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dpu_crtc, ptr %3, i32 0, i32 7
  %39 = load i8, ptr %38, align 8, !range !25
  %40 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %23, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = load i32, ptr %6, align 4
  %42 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 20, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %15, ptr noundef null) #16
  br label %43

43:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_crtc_disable_frame_pending(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_crtc_disable_frame_pending(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_plane_set_scanout(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 84) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %16, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %20, ptr noundef align 4 dereferenceable(68) %2, i32 68, i1 false)
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_plane_set_scanout(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %22, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %36, ptr noundef align 4 dereferenceable(68) %2, i32 68, i1 false)
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 84, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_plane_disable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %23, label %16

16:                                               ; preds = %14, %11, %4
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %17, i32 0, i32 2
  store i8 %6, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %23

23:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_plane_disable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #12, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %19, %4
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #16
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %23, i32 0, i32 2
  store i8 %7, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = load i32, ptr %6, align 4
  %40 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %15, ptr noundef null) #16
  br label %41

41:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_rm_iter_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_rm_iter_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_rm_reserve_lms(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_rm_reserve_lms(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_vbif_wait_xin_halt_fail(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_vbif_wait_xin_halt_fail(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_pp_connect_ext_te(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_pp_connect_ext_te(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_core_irq_callback_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_core_irq_callback_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_core_perf_update_clk(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  %6 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %4
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %15, label %36, label %16

16:                                               ; preds = %14, %11, %4
  %17 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.23, ptr %18
  %21 = tail call i32 @strlen(ptr noundef nonnull %20) #16
  %22 = add i32 %21, 25
  %23 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %16
  %26 = shl i32 %21, 16
  %27 = add i32 %26, 65560
  %28 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %23, i32 0, i32 1
  store i32 %27, ptr %28, align 8
  %29 = getelementptr i8, ptr %23, i32 24
  %30 = load ptr, ptr %17, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.23, ptr %30
  %33 = call ptr @strcpy(ptr noundef %29, ptr noundef nonnull %32)
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %23, i32 0, i32 2
  store i8 %6, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %23, i32 0, i32 3
  store i64 %3, ptr %35, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %36

36:                                               ; preds = %25, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_core_perf_update_clk(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = zext i1 %2 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.23, ptr %9
  %12 = tail call i32 @strlen(ptr noundef nonnull %11) #16
  %13 = shl i32 %12, 16
  %14 = add i32 %13, 65560
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #12, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load volatile ptr, ptr %22, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %26, %4
  %30 = add i32 %12, 36
  %31 = and i32 %30, -8
  %32 = add i32 %31, -4
  %33 = call ptr @perf_trace_buf_alloc(i32 noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 4
  %37 = call ptr @llvm.returnaddress(i32 0) #16
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %36, i32 0, i32 15
  store i32 %38, ptr %39, align 4
  %40 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [18 x i32], ptr %36, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !0) #16
  %44 = getelementptr [18 x i32], ptr %36, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr [18 x i32], ptr %36, i32 0, i32 16
  store i32 19, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %33, i32 0, i32 1
  store i32 %14, ptr %46, align 8
  %47 = getelementptr i8, ptr %33, i32 24
  %48 = load ptr, ptr %8, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str.23, ptr %48
  %51 = call ptr @strcpy(ptr noundef %47, ptr noundef nonnull %50)
  %52 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %33, i32 0, i32 2
  store i8 %7, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %33, i32 0, i32 3
  store i64 %3, ptr %53, align 8
  %54 = load i32, ptr %6, align 4
  %55 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %22, ptr noundef null) #16
  br label %56

56:                                               ; preds = %35, %29, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_hw_ctl_update_pending_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_hw_ctl_update_pending_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dpu_hw_ctl_pending_flush_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dpu_hw_ctl_pending_flush_template(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_create_regset32(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  %8 = icmp eq ptr %5, null
  %9 = icmp eq i32 %4, 0
  %10 = or i1 %7, %8
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef null) #16
  br label %24

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 19
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 12, i32 noundef 3520) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = and i32 %3, -4
  store i32 %20, ptr %17, align 4
  %21 = getelementptr inbounds %struct.dpu_debugfs_regset32, ptr %17, i32 0, i32 1
  store i32 %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dpu_debugfs_regset32, ptr %17, i32 0, i32 2
  store ptr %5, ptr %22, align 4
  %23 = tail call ptr @debugfs_create_file(ptr noundef nonnull %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull @dpu_fops_regset32) #16
  br label %24

24:                                               ; preds = %19, %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @dpu_kms_get_existing_global_state(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 13, i32 2
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_kms_get_global_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 12
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @drm_modeset_lock(ptr noundef %8, ptr noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = inttoptr i32 %11 to ptr
  br label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 13
  %17 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %0, ptr noundef %16) #16
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %14, %13 ], [ %17, %15 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @dpu_kms_get_clk_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 21, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %14, %6
  %10 = phi i32 [ 0, %6 ], [ %15, %14 ]
  %11 = getelementptr %struct.dss_clk, ptr %8, i32 %10, i32 1
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %1) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %24, label %9

17:                                               ; preds = %9
  %18 = getelementptr %struct.dss_clk, ptr %8, i32 %10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 @clk_get_rate(ptr noundef %21) #16
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %20, %17, %14, %2
  %25 = phi i64 [ %23, %20 ], [ -22, %17 ], [ -22, %2 ], [ -22, %14 ]
  ret i64 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @_dpu_kms_get_clk(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 21, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %16, %6
  %10 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %11 = getelementptr %struct.dss_clk, ptr %8, i32 %10, i32 1
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr %struct.dss_clk, ptr %8, i32 %10
  br label %19

16:                                               ; preds = %9
  %17 = add nuw i32 %10, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %9

19:                                               ; preds = %16, %14, %2
  %20 = phi ptr [ %15, %14 ], [ null, %2 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_kms_init(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_kms_init, i32 noundef 1199) #17
  br label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dpu_kms, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @irq_of_parse_and_map(ptr noundef %13, i32 noundef 0) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dpu_kms_init, i32 noundef 1208, i32 noundef %14) #17
  %18 = inttoptr i32 %14 to ptr
  br label %21

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.msm_kms, ptr %9, i32 0, i32 2
  store i32 %14, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = phi ptr [ %18, %16 ], [ %9, %19 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dpu_register() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dpu_driver, ptr noundef nonnull @__this_module) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_dpu_unregister() local_unnamed_addr #6 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dpu_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_perf_set_qos_luts(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 8, !range !25
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_qos_luts, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %13, i32 noundef %16, i32 noundef %18, i64 noundef %20, i32 noundef %22) #16
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_perf_set_danger_luts(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_danger_luts, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_perf_set_ot(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_set_ot, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_cmd_release_bw(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_cmd_release_bw, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %11) #16
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tracing_mark_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %5, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !25
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.31, ptr @.str.30
  %14 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_tracing_mark_write, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %13, i32 noundef %15, ptr noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_trace_counter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_trace_counter, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %11, ptr noundef %15, i32 noundef %17) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_perf_crtc_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !25
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_perf_crtc_update, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %11, i64 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %22) #16
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_irq_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_template, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %11, i32 noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_irq_wait_success(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_irq_wait_success, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_drm_obj_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_drm_obj_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #16
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_enable(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_enable, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %11, i32 noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_keyval_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_keyval_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_atomic_check_flags(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_atomic_check_flags, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_id_enable_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_id_enable_template, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !25
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %11, ptr noundef nonnull %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_rc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %5, i32 0, i32 3
  %19 = load i8, ptr %18, align 4, !range !25
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @.str.64, ptr @.str.63
  %22 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_rc, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %21, i32 noundef %23) #16
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_frame_done_cb_not_busy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb_not_busy, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.73, i32 noundef %11, i32 noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_frame_done_cb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_frame_done_cb, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %11, i32 noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_trigger_flush(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_trigger_flush, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_ktime_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_ktime_template, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #16
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #18, !srcloc !26
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %15, i32 0) #18, !srcloc !27
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = icmp slt i64 %13, 0
  %19 = lshr i64 %17, 18
  %20 = sub nsw i64 0, %19
  %21 = select i1 %18, i64 %20, i64 %19
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %11, i64 noundef %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_id_event_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_id_event_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_wait_event_timeout(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 5
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_wait_event_timeout, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %11, i32 noundef %13, i32 noundef %15, i64 noundef %17, i64 noundef %19, i32 noundef %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_phys_cmd_irq_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !25
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.64, ptr @.str.63
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_irq_ctrl, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_phys_cmd_pp_tx_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pp_tx_done, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.95, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_phys_cmd_pdone_timeout(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_cmd_pdone_timeout, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.98, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_phys_vid_post_kickoff(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_post_kickoff, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_enc_phys_vid_irq_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_enc_phys_vid_irq_ctrl, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !25
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.100, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %17, i32 noundef %11) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_crtc_setup_mixer(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %67

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 4
  %17 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 4, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %16, align 4
  %20 = sub i32 %18, %19
  %21 = ashr i32 %20, 16
  %22 = and i32 %20, 65535
  %23 = mul nuw nsw i32 %22, 15625
  %24 = lshr i32 %23, 10
  %25 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 4, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = ashr i32 %29, 16
  %31 = and i32 %29, 65535
  %32 = mul nuw nsw i32 %31, 15625
  %33 = lshr i32 %32, 10
  %34 = ashr i32 %19, 16
  %35 = and i32 %19, 65535
  %36 = mul nuw nsw i32 %35, 15625
  %37 = lshr i32 %36, 10
  %38 = ashr i32 %28, 16
  %39 = and i32 %28, 65535
  %40 = mul nuw nsw i32 %39, 15625
  %41 = lshr i32 %40, 10
  %42 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 5
  %43 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 5, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %42, align 4
  %46 = sub i32 %44, %45
  %47 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 5, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 5, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %48, %50
  %52 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 7
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 9
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 11
  %63 = load i32, ptr %62, align 8
  %64 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_mixer, ptr %5, i32 0, i32 12
  %65 = load i64, ptr %64, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.116, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %21, i32 noundef %24, i32 noundef %30, i32 noundef %33, i32 noundef %34, i32 noundef %37, i32 noundef %38, i32 noundef %41, i32 noundef %46, i32 noundef %51, i32 noundef %45, i32 noundef %50, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i64 noundef %65) #16
  %66 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %67

67:                                               ; preds = %8, %3
  %68 = phi i32 [ %66, %8 ], [ %6, %3 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_crtc_setup_lm_bounds(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 3
  %15 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 3, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %14, align 4
  %18 = sub i32 %16, %17
  %19 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 3, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_setup_lm_bounds, ptr %5, i32 0, i32 3, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.119, i32 noundef %11, i32 noundef %13, i32 noundef %18, i32 noundef %23, i32 noundef %17, i32 noundef %22) #16
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_crtc_vblank_enable(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %5, i32 0, i32 3
  %15 = load i8, ptr %14, align 4, !range !25
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.64, ptr @.str.63
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_vblank_enable, ptr %5, i32 0, i32 4
  %19 = load i8, ptr %18, align 1, !range !25
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %20, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.122, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %17, ptr noundef nonnull %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_crtc_enable_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !25
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.64, ptr @.str.63
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_enable_template, ptr %5, i32 0, i32 3
  %17 = load i8, ptr %16, align 1, !range !25
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.64, ptr @.str.63
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.123, i32 noundef %11, ptr noundef nonnull %15, ptr noundef nonnull %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_crtc_disable_frame_pending(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_crtc_disable_frame_pending, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.125, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_plane_set_scanout(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 5, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 6, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 5, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 6, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 5, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 2, i32 6, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_set_scanout, ptr %5, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.131, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #16
  %34 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %35

35:                                               ; preds = %8, %3
  %36 = phi i32 [ %34, %8 ], [ %6, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_plane_disable(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !25
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.64, ptr @.str.63
  %16 = getelementptr inbounds %struct.trace_event_raw_dpu_plane_disable, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.133, i32 noundef %11, ptr noundef nonnull %15, i32 noundef %17) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_rm_iter_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_iter_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_rm_reserve_lms(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_rm_reserve_lms, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %11, i32 noundef %13, i32 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_vbif_wait_xin_halt_fail(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_vbif_wait_xin_halt_fail, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.139, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_pp_connect_ext_te(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_pp_connect_ext_te, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.141, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_core_irq_callback_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_core_irq_callback_template, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.144, i32 noundef %11, ptr noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_core_perf_update_clk(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %5, i32 0, i32 2
  %15 = load i8, ptr %14, align 4, !range !25
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.64, ptr @.str.63
  %18 = getelementptr inbounds %struct.trace_event_raw_dpu_core_perf_update_clk, ptr %5, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.147, ptr noundef %13, ptr noundef nonnull %17, i64 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_hw_ctl_update_pending_flush(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_update_pending_flush, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.150, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dpu_hw_ctl_pending_flush_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dpu_hw_ctl_pending_flush_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.152, i32 noundef %11, i32 noundef %13) #16
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_open_regset32(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @_dpu_debugfs_show_regset32, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_debugfs_show_regset32(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dpu_debugfs_regset32, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = and i32 %11, 15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %10
  %16 = and i32 %11, -16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.153, i32 noundef %16) #16
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.154) #16
  %21 = load i32, ptr %4, align 4
  %22 = and i32 %21, 15
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.154) #16
  %25 = load i32, ptr %4, align 4
  %26 = and i32 %25, 15
  %27 = icmp ugt i32 %26, 8
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.154) #16
  %29 = load i32, ptr %4, align 4
  %30 = and i32 %29, 15
  %31 = icmp ugt i32 %30, 12
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.154) #16
  br label %33

33:                                               ; preds = %32, %28, %24, %20, %15, %10
  %34 = getelementptr inbounds %struct.dpu_kms, ptr %6, i32 0, i32 19
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  %37 = tail call i32 @__pm_runtime_resume(ptr noundef %36, i32 noundef 4) #16
  %38 = getelementptr inbounds %struct.dpu_debugfs_regset32, ptr %4, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %50, %33
  %42 = phi i32 [ %53, %50 ], [ 0, %33 ]
  %43 = load i32, ptr %4, align 4
  %44 = add i32 %43, %42
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = icmp eq i32 %42, 0
  %49 = select i1 %48, ptr @.str.153, ptr @.str.155
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %49, i32 noundef %44) #16
  br label %50

50:                                               ; preds = %47, %41
  %51 = getelementptr i8, ptr %12, i32 %42
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #16, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.156, i32 noundef %52) #16
  %53 = add i32 %42, 4
  %54 = load i32, ptr %38, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %41, label %56

56:                                               ; preds = %50, %33
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.157) #16
  %57 = load ptr, ptr %34, align 8
  %58 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %59 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 4) #16
  br label %60

60:                                               ; preds = %56, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_dev_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @dpu_ops) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_dev_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @dpu_ops) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_bind(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %5, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1336, i32 noundef 3520) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %0, ptr noundef nonnull @.str.159) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %10
  %14 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %0) #16
  switch i32 %14, label %15 [
    i32 -19, label %16
    i32 0, label %16
  ]

15:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.160) #17
  br label %71

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 21
  %18 = tail call i32 @msm_dss_parse_clock(ptr noundef %6, ptr noundef %17) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.dpu_bind, i32 noundef 1242, i32 noundef %18) #17
  br label %71

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %0, i32 64
  store ptr %8, ptr %23, align 8
  %24 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 0
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %25 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 1
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %26 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %26, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %27 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %27, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %28 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 4
  tail call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %29 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 5
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %30 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 6
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  %31 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 7, i32 7
  tail call void @__mutex_init(ptr noundef %31, ptr noundef nonnull @.str.163, ptr noundef nonnull @msm_kms_init.__key) #16
  store ptr @kms_funcs, ptr %8, align 8
  %32 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 0
  %33 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %32, ptr noundef nonnull %8, i32 noundef 0) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %22
  %36 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 1
  %37 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %36, ptr noundef nonnull %8, i32 noundef 1) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 2
  %41 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %40, ptr noundef nonnull %8, i32 noundef 2) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 3
  %45 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %44, ptr noundef nonnull %8, i32 noundef 3) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 4
  %49 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %48, ptr noundef nonnull %8, i32 noundef 4) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 5
  %53 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %52, ptr noundef nonnull %8, i32 noundef 5) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 6
  %57 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %56, ptr noundef nonnull %8, i32 noundef 6) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr %struct.msm_kms, ptr %8, i32 0, i32 9, i32 7
  %61 = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %60, ptr noundef nonnull %8, i32 noundef 7) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %55, %51, %47, %43, %39, %35, %22
  %64 = phi i32 [ %61, %59 ], [ %57, %55 ], [ %53, %51 ], [ %49, %47 ], [ %45, %43 ], [ %41, %39 ], [ %37, %35 ], [ %33, %22 ]
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.dpu_bind, i32 noundef 1250, i32 noundef %64) #17
  br label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 1
  store ptr %7, ptr %67, align 8
  %68 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 19
  store ptr %6, ptr %68, align 8
  tail call void @pm_runtime_enable(ptr noundef %0) #16
  %69 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 20
  store i8 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  store ptr %8, ptr %70, align 4
  br label %71

71:                                               ; preds = %66, %63, %20, %15, %10, %3
  %72 = phi i32 [ %14, %15 ], [ %18, %20 ], [ %64, %63 ], [ 0, %66 ], [ -12, %3 ], [ %11, %10 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_unbind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 21
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 21, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  tail call void @msm_dss_put_clk(ptr noundef %8, i32 noundef %9) #16
  %10 = load ptr, ptr %7, align 4
  tail call void @devm_kfree(ptr noundef %0, ptr noundef %10) #16
  store i32 0, ptr %6, align 4
  %11 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 20
  %12 = load i8, ptr %11, align 4, !range !25
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #16
  br label %15

15:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_parse_clock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_init_pending_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_kms_hw_init(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1033) #17
  br label %170

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 12
  tail call void @drm_modeset_lock_init(ptr noundef %8) #16
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 128) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %170, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 13
  tail call void @drm_atomic_private_obj_init(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull @dpu_kms_global_state_funcs) #16
  %15 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 22
  store volatile i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @msm_ioremap(ptr noundef %17, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.165) #16
  %19 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 4
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = ptrtoint ptr %18 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1049, i32 noundef %22) #17
  store ptr null, ptr %19, align 4
  br label %168

24:                                               ; preds = %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.167, ptr noundef %18) #16
  %25 = load ptr, ptr %16, align 8
  %26 = tail call ptr @msm_ioremap(ptr noundef %25, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.168) #16
  %27 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 5
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = ptrtoint ptr %26 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1058, i32 noundef %30) #17
  store ptr null, ptr %27, align 8
  br label %168

32:                                               ; preds = %24
  %33 = load ptr, ptr %16, align 8
  %34 = tail call ptr @msm_ioremap_quiet(ptr noundef %33, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170) #16
  %35 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 5, i32 1
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  store ptr null, ptr %35, align 4
  %38 = load i32, ptr @__drm_debug, align 4
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.171) #16
  br label %42

42:                                               ; preds = %41, %37, %32
  %43 = load ptr, ptr %16, align 8
  %44 = tail call ptr @msm_ioremap_quiet(ptr noundef %43, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.172) #16
  %45 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 6
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  store ptr null, ptr %45, align 8
  %48 = load i32, ptr @__drm_debug, align 4
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.173) #16
  br label %52

52:                                               ; preds = %51, %47, %42
  tail call fastcc void @dpu_kms_parse_data_bus_icc_path(ptr noundef nonnull %0)
  %53 = load ptr, ptr %16, align 8
  %54 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %55 = tail call i32 @__pm_runtime_resume(ptr noundef %54, i32 noundef 4) #16
  %56 = load ptr, ptr %19, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #16, !srcloc !28
  %58 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 2
  store i32 %57, ptr %58, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1080, i32 noundef %57) #17
  %60 = load i32, ptr %58, align 4
  %61 = tail call ptr @dpu_hw_catalog_init(i32 noundef %60) #16
  %62 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 3
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  %64 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = ptrtoint ptr %61 to i32
  %68 = select i1 %63, i32 -22, i32 %67
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1087, i32 noundef %68) #17
  store ptr null, ptr %62, align 8
  br label %163

70:                                               ; preds = %52
  %71 = tail call fastcc i32 @_dpu_kms_mmu_init(ptr noundef nonnull %0)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1098, i32 noundef %71) #17
  br label %163

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 14
  %77 = load ptr, ptr %62, align 8
  %78 = load ptr, ptr %19, align 4
  %79 = tail call i32 @dpu_rm_init(ptr noundef %76, ptr noundef %77, ptr noundef %78) #16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1104, i32 noundef %79) #17
  br label %163

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 15
  store i8 1, ptr %84, align 4
  %85 = load ptr, ptr %19, align 4
  %86 = load ptr, ptr %62, align 8
  %87 = tail call ptr @dpu_hw_mdptop_init(i32 noundef 1, ptr noundef %85, ptr noundef %86) #16
  %88 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 17
  store ptr %87, ptr %88, align 8
  %89 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load ptr, ptr %62, align 8
  %92 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %91, i32 0, i32 16
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %124, label %104

95:                                               ; preds = %83
  %96 = ptrtoint ptr %87 to i32
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1114, i32 noundef %96) #17
  store ptr null, ptr %88, align 8
  br label %163

98:                                               ; preds = %104
  %99 = add nuw i32 %106, 1
  %100 = load ptr, ptr %62, align 8
  %101 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %100, i32 0, i32 16
  %102 = load i32, ptr %101, align 4
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %98, %90
  %105 = phi ptr [ %100, %98 ], [ %91, %90 ]
  %106 = phi i32 [ %99, %98 ], [ 0, %90 ]
  %107 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %105, i32 0, i32 17
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr %struct.dpu_vbif_cfg, ptr %108, i32 %106, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 5, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = tail call ptr @dpu_hw_vbif_init(i32 noundef %110, ptr noundef %112, ptr noundef %105) #16
  %114 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 %106
  store ptr %113, ptr %114, align 4
  %115 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 %110
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %98

120:                                              ; preds = %104
  %121 = ptrtoint ptr %116 to i32
  %122 = select i1 %117, i32 -22, i32 %121
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1128, i32 noundef %110, i32 noundef %122) #17
  store ptr null, ptr %115, align 4
  br label %163

124:                                              ; preds = %98, %90
  %125 = phi ptr [ %91, %90 ], [ %100, %98 ]
  %126 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 11
  %127 = tail call fastcc ptr @_dpu_kms_get_clk(ptr noundef %0, ptr noundef nonnull @.str.159)
  %128 = tail call i32 @dpu_core_perf_init(ptr noundef %126, ptr noundef %7, ptr noundef %125, ptr noundef %127) #16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %124
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1137, i32 noundef %128) #17
  br label %163

132:                                              ; preds = %124
  %133 = load ptr, ptr %19, align 4
  %134 = load ptr, ptr %62, align 8
  %135 = tail call ptr @dpu_hw_intr_init(ptr noundef %133, ptr noundef %134) #16
  %136 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  store ptr %135, ptr %136, align 8
  %137 = icmp eq ptr %135, null
  %138 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  %139 = or i1 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %132
  %141 = ptrtoint ptr %135 to i32
  %142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1144, i32 noundef %141) #17
  store ptr null, ptr %136, align 8
  br label %163

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 23
  store i32 0, ptr %144, align 4
  %145 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 24
  store i32 0, ptr %145, align 4
  %146 = load ptr, ptr %62, align 8
  %147 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = load i32, ptr %148, align 4
  %150 = shl i32 %149, 1
  %151 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 25
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 26
  store i32 4096, ptr %152, align 4
  %153 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 26
  store i32 -1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 22
  store i8 1, ptr %154, align 4
  %155 = tail call fastcc i32 @_dpu_kms_drm_obj_init(ptr noundef %0)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %143
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @__func__.dpu_kms_hw_init, i32 noundef 1170, i32 noundef %155) #17
  tail call void @dpu_core_perf_destroy(ptr noundef %126) #16
  br label %163

159:                                              ; preds = %143
  tail call void @dpu_vbif_init_memtypes(ptr noundef %0) #16
  %160 = load ptr, ptr %16, align 8
  %161 = getelementptr inbounds %struct.platform_device, ptr %160, i32 0, i32 3
  %162 = tail call i32 @__pm_runtime_idle(ptr noundef %161, i32 noundef 4) #16
  br label %170

163:                                              ; preds = %157, %140, %130, %120, %95, %81, %73, %66
  %164 = phi i32 [ %68, %66 ], [ %71, %73 ], [ %79, %81 ], [ %96, %95 ], [ %122, %120 ], [ %128, %130 ], [ %141, %140 ], [ %155, %157 ]
  %165 = load ptr, ptr %16, align 8
  %166 = getelementptr inbounds %struct.platform_device, ptr %165, i32 0, i32 3
  %167 = tail call i32 @__pm_runtime_idle(ptr noundef %166, i32 noundef 4) #16
  br label %168

168:                                              ; preds = %163, %29, %21
  %169 = phi i32 [ %22, %21 ], [ %30, %29 ], [ %164, %163 ]
  tail call fastcc void @_dpu_kms_hw_destroy(ptr noundef %0)
  br label %170

170:                                              ; preds = %168, %159, %5, %3
  %171 = phi i32 [ %169, %168 ], [ 0, %159 ], [ -22, %3 ], [ -12, %5 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_irq_preinstall(ptr noundef %0) #0 {
  tail call void @dpu_core_irq_preinstall(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_irq_postinstall(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 0
  %13 = load ptr, ptr %12, align 4
  tail call void @msm_dp_irq_postinstall(ptr noundef %13) #16
  %14 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @msm_dp_irq_postinstall(ptr noundef %15) #16
  %16 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void @msm_dp_irq_postinstall(ptr noundef %17) #16
  br label %18

18:                                               ; preds = %11, %7, %3, %1
  %19 = phi i32 [ -22, %3 ], [ -22, %1 ], [ -22, %7 ], [ 0, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_irq_uninstall(ptr noundef %0) #0 {
  tail call void @dpu_core_irq_uninstall(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_irq(ptr noundef %0) #0 {
  %2 = tail call i32 @dpu_core_irq(ptr noundef %0) #16
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_kms_enable_vblank(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @dpu_crtc_vblank(ptr noundef %1, i1 noundef zeroext true) #16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_disable_vblank(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @dpu_crtc_vblank(ptr noundef %1, i1 noundef zeroext false) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_enable_commit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_disable_commit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %4, i32 noundef 4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @dpu_kms_vsync_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  br label %10

10:                                               ; preds = %28, %8
  %11 = phi ptr [ %4, %8 ], [ %29, %28 ]
  %12 = phi ptr [ %6, %8 ], [ %30, %28 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %12, i32 36
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %10
  %22 = getelementptr i8, ptr %12, i32 -4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !9
  %23 = call i32 @dpu_encoder_vsync_time(ptr noundef %22, ptr noundef nonnull %3) #16
  %24 = icmp eq i32 %23, 0
  %25 = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br i1 %24, label %35, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8
  br label %28

28:                                               ; preds = %26, %10
  %29 = phi ptr [ %27, %26 ], [ %11, %10 ]
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 16
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %10

33:                                               ; preds = %28, %2
  %34 = call i64 @ktime_get() #16
  br label %35

35:                                               ; preds = %33, %21
  %36 = phi i64 [ %34, %33 ], [ %25, %21 ]
  ret i64 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_prepare_commit(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 19
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %12

12:                                               ; preds = %47, %10
  %13 = phi ptr [ %6, %10 ], [ %48, %47 ]
  %14 = phi i32 [ 0, %10 ], [ %49, %47 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %17, align 8
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 30, i32 16
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %47, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.__drm_crtcs_state, ptr %15, i32 %14, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 6
  br label %28

28:                                               ; preds = %40, %24
  %29 = phi ptr [ %20, %24 ], [ %41, %40 ]
  %30 = phi ptr [ %22, %24 ], [ %42, %40 ]
  %31 = load i32, ptr %27, align 4
  %32 = getelementptr i8, ptr %30, i32 36
  %33 = load i32, ptr %32, align 4
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %30, i32 -4
  tail call void @dpu_encoder_prepare_commit(ptr noundef %38) #16
  %39 = load ptr, ptr %17, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi ptr [ %39, %37 ], [ %29, %28 ]
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 30, i32 16
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %45, label %28

45:                                               ; preds = %40
  %46 = load ptr, ptr %5, align 4
  br label %47

47:                                               ; preds = %45, %19, %12
  %48 = phi ptr [ %46, %45 ], [ %13, %19 ], [ %13, %12 ]
  %49 = add nuw nsw i32 %14, 1
  %50 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 19
  %51 = load i32, ptr %50, align 4
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %12, label %53

53:                                               ; preds = %47, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_flush_commit(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %62, label %8

8:                                                ; preds = %57, %2
  %9 = phi ptr [ %58, %57 ], [ %4, %2 ]
  %10 = phi ptr [ %59, %57 ], [ %6, %2 ]
  %11 = getelementptr i8, ptr %10, i32 -8
  %12 = getelementptr i8, ptr %10, i32 72
  %13 = load i32, ptr %12, align 8
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %8
  %18 = getelementptr i8, ptr %10, i32 636
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_crtc_state, ptr %19, i32 0, i32 2
  %21 = load i8, ptr %20, align 1, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %17
  %24 = icmp eq ptr %11, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %10, i32 44
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %23
  %29 = phi i32 [ %27, %25 ], [ -1, %23 ]
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_commit, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #16
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %44 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_commit, i32 0, i32 7), align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %51, %46 ], [ %44, %43 ]
  %48 = load volatile ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tracepoint_func, ptr %47, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void %48(ptr noundef %50, i32 noundef %29) #16
  %51 = getelementptr %struct.tracepoint_func, ptr %47, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %46

54:                                               ; preds = %46, %43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  br label %55

55:                                               ; preds = %54, %32, %28
  tail call void @dpu_crtc_commit_kickoff(ptr noundef %11) #16
  %56 = load ptr, ptr %3, align 8
  br label %57

57:                                               ; preds = %55, %17, %8
  %58 = phi ptr [ %56, %55 ], [ %9, %8 ], [ %9, %17 ]
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.drm_device, ptr %58, i32 0, i32 30, i32 20
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %62, label %8

62:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_wait_flush(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %101, label %8

8:                                                ; preds = %2
  %9 = icmp ne ptr %0, null
  br label %10

10:                                               ; preds = %96, %8
  %11 = phi ptr [ %6, %8 ], [ %97, %96 ]
  %12 = getelementptr i8, ptr %11, i32 -8
  %13 = getelementptr i8, ptr %11, i32 72
  %14 = load i32, ptr %13, align 8
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %96, label %18

18:                                               ; preds = %10
  %19 = icmp ne ptr %12, null
  %20 = and i1 %9, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %11, i32 636
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @__func__.dpu_kms_wait_for_commit_done, i32 noundef 487) #17
  br label %96

27:                                               ; preds = %21
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 1
  %30 = load i8, ptr %29, align 4, !range !25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, ptr @__drm_debug, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %11, i32 44
  %38 = load i32, ptr %37, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.196, i32 noundef %38) #16
  br label %96

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.drm_crtc_state, ptr %23, i32 0, i32 2
  %41 = load i8, ptr %40, align 1, !range !25
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, ptr @__drm_debug, align 4
  %45 = and i32 %44, 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %96, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %11, i32 44
  %49 = load i32, ptr %48, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.197, i32 noundef %49) #16
  br label %96

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %96, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %11, i32 44
  br label %56

56:                                               ; preds = %93, %54
  %57 = phi ptr [ %52, %54 ], [ %94, %93 ]
  %58 = getelementptr i8, ptr %57, i32 -4
  %59 = getelementptr i8, ptr %57, i32 48
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %12
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load i32, ptr %55, align 4
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_wait_for_commit_done, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = tail call ptr @llvm.thread.pointer() #16
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %78 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_kms_wait_for_commit_done, i32 0, i32 7), align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %80, %77
  %81 = phi ptr [ %85, %80 ], [ %78, %77 ]
  %82 = load volatile ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.tracepoint_func, ptr %81, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %82(ptr noundef %84, i32 noundef %63) #16
  %85 = getelementptr %struct.tracepoint_func, ptr %81, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80

88:                                               ; preds = %80, %77
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  br label %89

89:                                               ; preds = %88, %66, %62
  %90 = tail call i32 @dpu_encoder_wait_for_event(ptr noundef %58, i32 noundef 0) #16
  switch i32 %90, label %91 [
    i32 -11, label %93
    i32 0, label %93
  ]

91:                                               ; preds = %89
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @__func__.dpu_kms_wait_for_commit_done, i32 noundef 514, i32 noundef %90) #17
  br label %96

93:                                               ; preds = %89, %89, %56
  %94 = load ptr, ptr %57, align 4
  %95 = icmp eq ptr %94, %51
  br i1 %95, label %96, label %56

96:                                               ; preds = %93, %91, %50, %47, %43, %36, %32, %25, %10
  %97 = load ptr, ptr %11, align 4
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.drm_device, ptr %98, i32 0, i32 30, i32 20
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %101, label %10

101:                                              ; preds = %96, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_complete_commit(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %5 = load i32, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, i32 noundef %5, ptr noundef nonnull @.str.199, i1 noundef zeroext true) #16
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %30

30:                                               ; preds = %29, %8, %2
  %31 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %52, label %36

36:                                               ; preds = %47, %30
  %37 = phi ptr [ %48, %47 ], [ %32, %30 ]
  %38 = phi ptr [ %49, %47 ], [ %34, %30 ]
  %39 = getelementptr i8, ptr %38, i32 72
  %40 = load i32, ptr %39, align 8
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = getelementptr i8, ptr %38, i32 -8
  tail call void @dpu_crtc_complete_commit(ptr noundef %45) #16
  %46 = load ptr, ptr %31, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %37, %36 ]
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 20
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %52, label %36

52:                                               ; preds = %47, %30
  %53 = load i32, ptr %4, align 4
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, i32 noundef %53, ptr noundef nonnull @.str.199, i1 noundef zeroext false) #16
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %78

78:                                               ; preds = %77, %56, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_get_msm_format(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_format_check_modified_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dpu_kms_round_pixclk(ptr nocapture noundef readnone %0, i32 noundef returned %1, ptr nocapture noundef readnone %2) #13 {
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef nonnull @__func__.dpu_kms_destroy, i32 noundef 833) #17
  br label %14

5:                                                ; preds = %1
  tail call fastcc void @_dpu_kms_hw_destroy(ptr noundef nonnull %0)
  %6 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 0
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %6) #16
  %7 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 1
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %7) #16
  %8 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 2
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %8) #16
  %9 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 3
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %9) #16
  %10 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 4
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %10) #16
  %11 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 5
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %11) #16
  %12 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 6
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %12) #16
  %13 = getelementptr %struct.msm_kms, ptr %0, i32 0, i32 9, i32 7
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_mdp_snapshot(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 19
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #16
  %11 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 5
  %16 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %24

17:                                               ; preds = %24, %2
  %18 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 22
  %23 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %43

24:                                               ; preds = %24, %14
  %25 = phi i32 [ 0, %14 ], [ %33, %24 ]
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr %struct.dpu_ctl_cfg, ptr %26, i32 %25, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr %struct.dpu_ctl_cfg, ptr %26, i32 %25, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %29, i32 %31
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %28, ptr noundef %32, ptr noundef nonnull @.str.200, i32 noundef %25) #16
  %33 = add nuw i32 %25, 1
  %34 = load i32, ptr %11, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %24, label %17

36:                                               ; preds = %43, %17
  %37 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 15
  %42 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %62

43:                                               ; preds = %43, %21
  %44 = phi i32 [ 0, %21 ], [ %52, %43 ]
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr %struct.dpu_dspp_cfg, ptr %45, i32 %44, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %23, align 4
  %49 = getelementptr %struct.dpu_dspp_cfg, ptr %45, i32 %44, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %48, i32 %50
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %47, ptr noundef %51, ptr noundef nonnull @.str.201, i32 noundef %44) #16
  %52 = add nuw i32 %44, 1
  %53 = load i32, ptr %18, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %43, label %36

55:                                               ; preds = %62, %36
  %56 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 11
  %61 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %81

62:                                               ; preds = %62, %40
  %63 = phi i32 [ 0, %40 ], [ %71, %62 ]
  %64 = load ptr, ptr %41, align 4
  %65 = getelementptr %struct.dpu_intf_cfg, ptr %64, i32 %63, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %42, align 4
  %68 = getelementptr %struct.dpu_intf_cfg, ptr %64, i32 %63, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %67, i32 %69
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %66, ptr noundef %70, ptr noundef nonnull @.str.202, i32 noundef %63) #16
  %71 = add nuw i32 %63, 1
  %72 = load i32, ptr %37, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %62, label %55

74:                                               ; preds = %81, %55
  %75 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 7
  %80 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %100

81:                                               ; preds = %81, %59
  %82 = phi i32 [ 0, %59 ], [ %90, %81 ]
  %83 = load ptr, ptr %60, align 4
  %84 = getelementptr %struct.dpu_pingpong_cfg, ptr %83, i32 %82, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %61, align 4
  %87 = getelementptr %struct.dpu_pingpong_cfg, ptr %83, i32 %82, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr i8, ptr %86, i32 %88
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %85, ptr noundef %89, ptr noundef nonnull @.str.203, i32 noundef %82) #16
  %90 = add nuw i32 %82, 1
  %91 = load i32, ptr %56, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %81, label %74

93:                                               ; preds = %100, %74
  %94 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %124, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %4, i32 0, i32 9
  %99 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  br label %112

100:                                              ; preds = %100, %78
  %101 = phi i32 [ 0, %78 ], [ %109, %100 ]
  %102 = load ptr, ptr %79, align 4
  %103 = getelementptr %struct.dpu_sspp_cfg, ptr %102, i32 %101, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %80, align 4
  %106 = getelementptr %struct.dpu_sspp_cfg, ptr %102, i32 %101, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %105, i32 %107
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %104, ptr noundef %108, ptr noundef nonnull @.str.204, i32 noundef %101) #16
  %109 = add nuw i32 %101, 1
  %110 = load i32, ptr %75, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %100, label %93

112:                                              ; preds = %112, %97
  %113 = phi i32 [ 0, %97 ], [ %121, %112 ]
  %114 = load ptr, ptr %98, align 4
  %115 = getelementptr %struct.dpu_lm_cfg, ptr %114, i32 %113, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = load ptr, ptr %99, align 4
  %118 = getelementptr %struct.dpu_lm_cfg, ptr %114, i32 %113, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %117, i32 %119
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %116, ptr noundef %120, ptr noundef nonnull @.str.205, i32 noundef %113) #16
  %121 = add nuw i32 %113, 1
  %122 = load i32, ptr %94, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %112, label %124

124:                                              ; preds = %112, %93
  %125 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %6, i32 0, i32 1, i32 2
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.dpu_kms, ptr %1, i32 0, i32 4
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %6, i32 0, i32 1, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr i8, ptr %128, i32 %130
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %0, i32 noundef %126, ptr noundef %131, ptr noundef nonnull @.str.206) #16
  %132 = load ptr, ptr %7, align 8
  %133 = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  %134 = tail call i32 @__pm_runtime_idle(ptr noundef %133, i32 noundef 4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_kms_debugfs_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @dpu_hw_util_get_log_mask_ptr() #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_minor, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.207, ptr noundef %11) #16
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.208, i16 noundef zeroext 384, ptr noundef %12, ptr noundef nonnull %3) #16
  %13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.209, ptr noundef %12) #16
  %14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.210, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %0, ptr noundef nonnull @dpu_debugfs_danger_stats_fops) #16
  %15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.211, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %0, ptr noundef nonnull @dpu_debugfs_safe_stats_fops) #16
  %16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.212, i16 noundef zeroext 384, ptr noundef %13, ptr noundef %0, ptr noundef nonnull @dpu_plane_danger_enable) #16
  tail call void @dpu_debugfs_vbif_init(ptr noundef %0, ptr noundef %12) #16
  tail call void @dpu_debugfs_core_irq_init(ptr noundef %0, ptr noundef %12) #16
  tail call void @dpu_debugfs_sspp_init(ptr noundef %0, ptr noundef %12) #16
  %17 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 0
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  tail call void @msm_dp_debugfs_init(ptr noundef nonnull %18, ptr noundef %1) #16
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @msm_dp_debugfs_init(ptr noundef nonnull %23, ptr noundef %1) #16
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @msm_dp_debugfs_init(ptr noundef nonnull %28, ptr noundef %1) #16
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call i32 @dpu_core_perf_debugfs_init(ptr noundef %0, ptr noundef %12) #16
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i32 [ %32, %31 ], [ -22, %2 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap_quiet(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dpu_kms_parse_data_bus_icc_path(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @of_icc_get(ptr noundef %5, ptr noundef nonnull @.str.183) #16
  %7 = load ptr, ptr %4, align 4
  %8 = tail call ptr @of_icc_get(ptr noundef %7, ptr noundef nonnull @.str.184) #16
  %9 = icmp eq ptr %6, null
  %10 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 23
  store ptr %6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 24
  store i32 1, ptr %14, align 4
  %15 = icmp eq ptr %8, null
  %16 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %17 = or i1 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 23, i32 1
  store ptr %8, ptr %19, align 4
  store i32 2, ptr %14, align 4
  br label %20

20:                                               ; preds = %18, %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_catalog_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_kms_mmu_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @msm_iommu_new(ptr noundef %8, ptr noundef nonnull %2) #16
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  tail call void @iommu_domain_free(ptr noundef nonnull %2) #16
  %12 = ptrtoint ptr %9 to i32
  br label %23

13:                                               ; preds = %4
  %14 = tail call ptr @msm_gem_address_space_create(ptr noundef %9, ptr noundef nonnull @.str.185, i64 noundef 4096, i64 noundef 4294963200) #16
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %9) #16
  %20 = ptrtoint ptr %14 to i32
  br label %23

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 3
  store ptr %14, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %16, %11, %1
  %24 = phi i32 [ %12, %11 ], [ %20, %16 ], [ 0, %21 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_rm_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_mdptop_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_vbif_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_perf_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_intr_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_dpu_kms_drm_obj_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.msm_display_info, align 4
  %3 = alloca %struct.msm_display_info, align 4
  %4 = alloca [20 x ptr], align 4
  %5 = alloca [20 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %5, i8 0, i32 80, i1 false)
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #16, !annotation !9
  %12 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 28
  %21 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 1
  br label %79

23:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %139

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 28
  %26 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 1
  %28 = tail call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef nonnull %13) #16
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load ptr, ptr %12, align 4
  %31 = tail call zeroext i1 @msm_dsi_is_master_dsi(ptr noundef %30) #16
  br i1 %31, label %32, label %79

32:                                               ; preds = %29, %24
  %33 = tail call ptr @dpu_encoder_init(ptr noundef %7, i32 noundef 6) #16
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %75, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %25, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %25, align 4
  %38 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %36
  store ptr %33, ptr %38, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, i8 0, i32 20, i1 false) #16
  %39 = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %3, align 4
  %41 = load ptr, ptr %12, align 4
  %42 = tail call i32 @msm_dsi_modeset_init(ptr noundef %41, ptr noundef %7, ptr noundef %33) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %95, %35
  %45 = phi i32 [ 0, %35 ], [ 1, %95 ]
  %46 = phi i32 [ %42, %35 ], [ %102, %95 ]
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @__func__._dpu_kms_initialize_dsi, i32 noundef 572, i32 noundef %45, i32 noundef %46) #17
  br label %131

48:                                               ; preds = %35
  store i32 1, ptr %26, align 4
  %49 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 3, i32 0
  store i32 0, ptr %49, align 4
  %50 = load ptr, ptr %12, align 4
  %51 = tail call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %50) #16
  %52 = select i1 %51, i32 2, i32 1
  store i32 %52, ptr %27, align 4
  %53 = load ptr, ptr %12, align 4
  %54 = tail call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef %53) #16
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 5, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @msm_dsi_modeset_init(ptr noundef nonnull %57, ptr noundef %7, ptr noundef %33) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %116, %59
  %63 = phi i32 [ 1, %59 ], [ 0, %116 ]
  %64 = phi i32 [ %60, %59 ], [ %117, %116 ]
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @__func__._dpu_kms_initialize_dsi, i32 noundef 585, i32 noundef %63, i32 noundef %64) #17
  br label %131

66:                                               ; preds = %59
  store i32 2, ptr %26, align 4
  %67 = getelementptr inbounds %struct.msm_display_info, ptr %3, i32 0, i32 3, i32 1
  store i32 1, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %55, %48
  %69 = call i32 @dpu_encoder_setup(ptr noundef %7, ptr noundef %33, ptr noundef nonnull %3) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.drm_encoder, ptr %33, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @__func__._dpu_kms_initialize_dsi, i32 noundef 595, i32 noundef %73, i32 noundef %69) #17
  br label %79

75:                                               ; preds = %92, %32
  %76 = phi ptr [ %33, %32 ], [ %93, %92 ]
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @__func__._dpu_kms_initialize_dsi, i32 noundef 560) #17
  %78 = ptrtoint ptr %76 to i32
  br label %133

79:                                               ; preds = %71, %68, %29, %19
  %80 = phi ptr [ %27, %68 ], [ %27, %71 ], [ %27, %29 ], [ %22, %19 ]
  %81 = phi ptr [ %26, %68 ], [ %26, %71 ], [ %26, %29 ], [ %21, %19 ]
  %82 = phi ptr [ %25, %68 ], [ %25, %71 ], [ %25, %29 ], [ %20, %19 ]
  %83 = phi i32 [ 0, %68 ], [ %69, %71 ], [ 0, %29 ], [ 0, %19 ]
  %84 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 5, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %133, label %87

87:                                               ; preds = %79
  %88 = call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef nonnull %85) #16
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load ptr, ptr %84, align 4
  %91 = call zeroext i1 @msm_dsi_is_master_dsi(ptr noundef %90) #16
  br i1 %91, label %92, label %133

92:                                               ; preds = %89, %87
  %93 = call ptr @dpu_encoder_init(ptr noundef %7, i32 noundef 6) #16
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %75, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %82, align 4
  %97 = add i32 %96, 1
  store i32 %97, ptr %82, align 4
  %98 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %96
  store ptr %93, ptr %98, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %80, i8 0, i32 20, i1 false) #16
  %99 = getelementptr inbounds %struct.drm_encoder, ptr %93, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  store i32 %100, ptr %3, align 4
  %101 = load ptr, ptr %84, align 4
  %102 = call i32 @msm_dsi_modeset_init(ptr noundef %101, ptr noundef %7, ptr noundef %93) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %44

104:                                              ; preds = %95
  %105 = load i32, ptr %81, align 4
  %106 = add i32 %105, 1
  store i32 %106, ptr %81, align 4
  %107 = getelementptr %struct.msm_display_info, ptr %3, i32 0, i32 3, i32 %105
  store i32 1, ptr %107, align 4
  %108 = load ptr, ptr %84, align 4
  %109 = call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %108) #16
  %110 = select i1 %109, i32 2, i32 1
  store i32 %110, ptr %80, align 4
  %111 = load ptr, ptr %84, align 4
  %112 = call zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef %111) #16
  br i1 %112, label %113, label %123

113:                                              ; preds = %104
  %114 = load ptr, ptr %12, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = call i32 @msm_dsi_modeset_init(ptr noundef nonnull %114, ptr noundef %7, ptr noundef %93) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %62

119:                                              ; preds = %116
  %120 = load i32, ptr %81, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %81, align 4
  %122 = getelementptr %struct.msm_display_info, ptr %3, i32 0, i32 3, i32 %120
  store i32 0, ptr %122, align 4
  br label %123

123:                                              ; preds = %119, %113, %104
  %124 = call i32 @dpu_encoder_setup(ptr noundef %7, ptr noundef %93, ptr noundef nonnull %3) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %139

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.drm_encoder, ptr %93, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @__func__._dpu_kms_initialize_dsi, i32 noundef 595, i32 noundef %129, i32 noundef %124) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %136

131:                                              ; preds = %62, %44
  %132 = phi i32 [ %46, %44 ], [ %64, %62 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %136

133:                                              ; preds = %89, %79, %75
  %134 = phi i32 [ %78, %75 ], [ %83, %89 ], [ %83, %79 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %133, %131, %127
  %137 = phi i32 [ %132, %131 ], [ %134, %133 ], [ %124, %127 ]
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @__func__._dpu_kms_setup_displays, i32 noundef 661, i32 noundef %137) #17
  br label %324

139:                                              ; preds = %133, %126, %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #16, !annotation !9
  %140 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 28
  %141 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 2
  %142 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 3
  %143 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 1
  %144 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 0
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %172, label %147

147:                                              ; preds = %139
  %148 = call ptr @dpu_encoder_init(ptr noundef %7, i32 noundef 2) #16
  %149 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %149, label %214, label %150

150:                                              ; preds = %147
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #16
  %151 = load ptr, ptr %144, align 4
  %152 = call i32 @msm_dp_modeset_init(ptr noundef %151, ptr noundef %7, ptr noundef %148) #16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %198, %179, %150
  %155 = phi i32 [ %152, %150 ], [ %181, %179 ], [ %200, %198 ]
  %156 = phi ptr [ %148, %150 ], [ %177, %179 ], [ %196, %198 ]
  %157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef nonnull @__func__._dpu_kms_initialize_displayport, i32 noundef 623, i32 noundef %155) #17
  call void @drm_encoder_cleanup(ptr noundef %156) #16
  br label %211

158:                                              ; preds = %150
  %159 = load i32, ptr %140, align 4
  %160 = add i32 %159, 1
  store i32 %160, ptr %140, align 4
  %161 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %159
  store ptr %148, ptr %161, align 4
  store i32 1, ptr %141, align 4
  store i32 0, ptr %142, align 4
  store i32 1, ptr %143, align 4
  %162 = getelementptr inbounds %struct.drm_encoder, ptr %148, i32 0, i32 4
  %163 = load i32, ptr %162, align 4
  store i32 %163, ptr %2, align 4
  %164 = call i32 @dpu_encoder_setup(ptr noundef %7, ptr noundef %148, ptr noundef nonnull %2) #16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %202, %183, %158
  %167 = phi i32 [ %164, %158 ], [ %189, %183 ], [ %208, %202 ]
  %168 = phi ptr [ %148, %158 ], [ %177, %183 ], [ %196, %202 ]
  %169 = getelementptr inbounds %struct.drm_encoder, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @__func__._dpu_kms_initialize_displayport, i32 noundef 637, i32 noundef %170, i32 noundef %167) #17
  br label %211

172:                                              ; preds = %158, %139
  %173 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %191, label %176

176:                                              ; preds = %172
  %177 = call ptr @dpu_encoder_init(ptr noundef %7, i32 noundef 2) #16
  %178 = icmp ugt ptr %177, inttoptr (i32 -4096 to ptr)
  br i1 %178, label %214, label %179

179:                                              ; preds = %176
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #16
  %180 = load ptr, ptr %173, align 4
  %181 = call i32 @msm_dp_modeset_init(ptr noundef %180, ptr noundef %7, ptr noundef %177) #16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %154

183:                                              ; preds = %179
  %184 = load i32, ptr %140, align 4
  %185 = add i32 %184, 1
  store i32 %185, ptr %140, align 4
  %186 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %184
  store ptr %177, ptr %186, align 4
  store i32 1, ptr %141, align 4
  store i32 1, ptr %142, align 4
  store i32 1, ptr %143, align 4
  %187 = getelementptr inbounds %struct.drm_encoder, ptr %177, i32 0, i32 4
  %188 = load i32, ptr %187, align 4
  store i32 %188, ptr %2, align 4
  %189 = call i32 @dpu_encoder_setup(ptr noundef %7, ptr noundef %177, ptr noundef nonnull %2) #16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %166

191:                                              ; preds = %183, %172
  %192 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 6, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %210, label %195

195:                                              ; preds = %191
  %196 = call ptr @dpu_encoder_init(ptr noundef %7, i32 noundef 2) #16
  %197 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %214, label %198

198:                                              ; preds = %195
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #16
  %199 = load ptr, ptr %192, align 4
  %200 = call i32 @msm_dp_modeset_init(ptr noundef %199, ptr noundef %7, ptr noundef %196) #16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %154

202:                                              ; preds = %198
  %203 = load i32, ptr %140, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %140, align 4
  %205 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %203
  store ptr %196, ptr %205, align 4
  store i32 1, ptr %141, align 4
  store i32 2, ptr %142, align 4
  store i32 1, ptr %143, align 4
  %206 = getelementptr inbounds %struct.drm_encoder, ptr %196, i32 0, i32 4
  %207 = load i32, ptr %206, align 4
  store i32 %207, ptr %2, align 4
  %208 = call i32 @dpu_encoder_setup(ptr noundef %7, ptr noundef %196, ptr noundef nonnull %2) #16
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %166

210:                                              ; preds = %202, %191
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  br label %221

211:                                              ; preds = %166, %154
  %212 = phi i32 [ %167, %166 ], [ %155, %154 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @__func__._dpu_kms_setup_displays, i32 noundef 667, i32 noundef %212) #17
  br label %324

214:                                              ; preds = %195, %176, %147
  %215 = phi ptr [ %148, %147 ], [ %177, %176 ], [ %196, %195 ]
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef nonnull @__func__._dpu_kms_initialize_displayport, i32 noundef 616) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  %217 = icmp eq ptr %215, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = ptrtoint ptr %215 to i32
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @__func__._dpu_kms_setup_displays, i32 noundef 667, i32 noundef %219) #17
  br label %324

221:                                              ; preds = %214, %210
  %222 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %11, i32 0, i32 8
  %223 = load i32, ptr %222, align 4
  %224 = load i32, ptr %140, align 4
  %225 = call i32 @llvm.umin.i32(i32 %223, i32 %224)
  %226 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %11, i32 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %286, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %11, i32 0, i32 7
  %231 = shl nsw i32 -1, %225
  %232 = xor i32 %231, -1
  %233 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 23
  br label %234

234:                                              ; preds = %280, %229
  %235 = phi i32 [ 0, %229 ], [ %282, %280 ]
  %236 = phi i32 [ 0, %229 ], [ %281, %280 ]
  %237 = phi i32 [ 0, %229 ], [ %283, %280 ]
  %238 = load ptr, ptr %230, align 4
  %239 = getelementptr %struct.dpu_sspp_cfg, ptr %238, i32 %237, i32 4
  %240 = load i32, ptr %239, align 4
  %241 = and i32 %240, 512
  %242 = icmp ne i32 %241, 0
  %243 = icmp slt i32 %236, %225
  %244 = select i1 %242, i1 %243, i1 false
  br i1 %244, label %248, label %245

245:                                              ; preds = %234
  %246 = icmp slt i32 %235, %225
  %247 = zext i1 %246 to i32
  br label %248

248:                                              ; preds = %245, %234
  %249 = phi i1 [ false, %234 ], [ %246, %245 ]
  %250 = phi i32 [ 2, %234 ], [ %247, %245 ]
  %251 = load i32, ptr @__drm_debug, align 4
  %252 = and i32 %251, 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %248
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.186, i32 noundef %250, i32 noundef %240, i32 noundef %241) #16
  %255 = load ptr, ptr %230, align 4
  br label %256

256:                                              ; preds = %254, %248
  %257 = phi ptr [ %238, %248 ], [ %255, %254 ]
  %258 = getelementptr %struct.dpu_sspp_cfg, ptr %257, i32 %237, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = call ptr @dpu_plane_init(ptr noundef %7, i32 noundef %259, i32 noundef %250, i32 noundef %232, i32 noundef 0) #16
  %261 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  br i1 %261, label %273, label %262

262:                                              ; preds = %256
  %263 = load i32, ptr %233, align 4
  %264 = add i32 %263, 1
  store i32 %264, ptr %233, align 4
  %265 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 24, i32 %263
  store ptr %260, ptr %265, align 4
  br i1 %244, label %266, label %269

266:                                              ; preds = %262
  %267 = add nsw i32 %236, 1
  %268 = getelementptr [20 x ptr], ptr %5, i32 0, i32 %236
  br label %276

269:                                              ; preds = %262
  br i1 %249, label %270, label %280

270:                                              ; preds = %269
  %271 = add i32 %235, 1
  %272 = getelementptr [20 x ptr], ptr %4, i32 0, i32 %235
  br label %276

273:                                              ; preds = %256
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef nonnull @__func__._dpu_kms_drm_obj_init, i32 noundef 743) #17
  %275 = ptrtoint ptr %260 to i32
  br label %324

276:                                              ; preds = %270, %266
  %277 = phi ptr [ %272, %270 ], [ %268, %266 ]
  %278 = phi i32 [ %236, %270 ], [ %267, %266 ]
  %279 = phi i32 [ %271, %270 ], [ %235, %266 ]
  store ptr %260, ptr %277, align 4
  br label %280

280:                                              ; preds = %276, %269
  %281 = phi i32 [ %236, %269 ], [ %278, %276 ]
  %282 = phi i32 [ %235, %269 ], [ %279, %276 ]
  %283 = add nuw i32 %237, 1
  %284 = load i32, ptr %226, align 4
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %234, label %286

286:                                              ; preds = %280, %221
  %287 = phi i32 [ 0, %221 ], [ %282, %280 ]
  %288 = call i32 @llvm.smin.i32(i32 %225, i32 %287)
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 25
  br label %297

292:                                              ; preds = %307, %286
  %293 = load i32, ptr %140, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %389, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.msm_drm_private, ptr %9, i32 0, i32 25
  br label %313

297:                                              ; preds = %307, %290
  %298 = phi i32 [ 0, %290 ], [ %311, %307 ]
  %299 = getelementptr [20 x ptr], ptr %4, i32 0, i32 %298
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr [20 x ptr], ptr %5, i32 0, i32 %298
  %302 = load ptr, ptr %301, align 4
  %303 = call ptr @dpu_crtc_init(ptr noundef %7, ptr noundef %300, ptr noundef %302) #16
  %304 = icmp ugt ptr %303, inttoptr (i32 -4096 to ptr)
  br i1 %304, label %305, label %307

305:                                              ; preds = %297
  %306 = ptrtoint ptr %303 to i32
  br label %324

307:                                              ; preds = %297
  %308 = load i32, ptr %291, align 8
  %309 = add i32 %308, 1
  store i32 %309, ptr %291, align 8
  %310 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 26, i32 %308
  store ptr %303, ptr %310, align 4
  %311 = add nuw nsw i32 %298, 1
  %312 = icmp eq i32 %311, %288
  br i1 %312, label %292, label %297

313:                                              ; preds = %313, %295
  %314 = phi i32 [ 0, %295 ], [ %321, %313 ]
  %315 = load i32, ptr %296, align 8
  %316 = shl nsw i32 -1, %315
  %317 = xor i32 %316, -1
  %318 = getelementptr %struct.msm_drm_private, ptr %9, i32 0, i32 29, i32 %314
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.drm_encoder, ptr %319, i32 0, i32 6
  store i32 %317, ptr %320, align 4
  %321 = add nuw i32 %314, 1
  %322 = load i32, ptr %140, align 4
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %313, label %389

324:                                              ; preds = %305, %273, %218, %211, %136
  %325 = phi i32 [ %219, %218 ], [ %275, %273 ], [ %306, %305 ], [ %137, %136 ], [ %212, %211 ]
  %326 = load ptr, ptr %6, align 8
  %327 = getelementptr inbounds %struct.drm_device, ptr %326, i32 0, i32 5
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.msm_drm_private, ptr %328, i32 0, i32 25
  %330 = load i32, ptr %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %343, label %332

332:                                              ; preds = %332, %324
  %333 = phi i32 [ %340, %332 ], [ 0, %324 ]
  %334 = getelementptr %struct.msm_drm_private, ptr %328, i32 0, i32 26, i32 %333
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.drm_crtc, ptr %335, i32 0, i32 16
  %337 = load ptr, ptr %336, align 8
  %338 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %337, i32 0, i32 5
  %339 = load ptr, ptr %338, align 4
  call void %339(ptr noundef %335) #16
  %340 = add nuw i32 %333, 1
  %341 = load i32, ptr %329, align 8
  %342 = icmp ult i32 %340, %341
  br i1 %342, label %332, label %343

343:                                              ; preds = %332, %324
  store i32 0, ptr %329, align 8
  %344 = getelementptr inbounds %struct.msm_drm_private, ptr %328, i32 0, i32 23
  %345 = load i32, ptr %344, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %358, label %347

347:                                              ; preds = %347, %343
  %348 = phi i32 [ %355, %347 ], [ 0, %343 ]
  %349 = getelementptr %struct.msm_drm_private, ptr %328, i32 0, i32 24, i32 %348
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.drm_plane, ptr %350, i32 0, i32 14
  %352 = load ptr, ptr %351, align 8
  %353 = getelementptr inbounds %struct.drm_plane_funcs, ptr %352, i32 0, i32 2
  %354 = load ptr, ptr %353, align 4
  call void %354(ptr noundef %350) #16
  %355 = add nuw i32 %348, 1
  %356 = load i32, ptr %344, align 4
  %357 = icmp ult i32 %355, %356
  br i1 %357, label %347, label %358

358:                                              ; preds = %347, %343
  store i32 0, ptr %344, align 4
  %359 = getelementptr inbounds %struct.msm_drm_private, ptr %328, i32 0, i32 32
  %360 = load i32, ptr %359, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %373, label %362

362:                                              ; preds = %362, %358
  %363 = phi i32 [ %370, %362 ], [ 0, %358 ]
  %364 = getelementptr %struct.msm_drm_private, ptr %328, i32 0, i32 33, i32 %363
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.drm_connector, ptr %365, i32 0, i32 21
  %367 = load ptr, ptr %366, align 8
  %368 = getelementptr inbounds %struct.drm_connector_funcs, ptr %367, i32 0, i32 8
  %369 = load ptr, ptr %368, align 4
  call void %369(ptr noundef %365) #16
  %370 = add nuw i32 %363, 1
  %371 = load i32, ptr %359, align 4
  %372 = icmp ult i32 %370, %371
  br i1 %372, label %362, label %373

373:                                              ; preds = %362, %358
  store i32 0, ptr %359, align 4
  %374 = getelementptr inbounds %struct.msm_drm_private, ptr %328, i32 0, i32 28
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %388, label %377

377:                                              ; preds = %377, %373
  %378 = phi i32 [ %385, %377 ], [ 0, %373 ]
  %379 = getelementptr %struct.msm_drm_private, ptr %328, i32 0, i32 29, i32 %378
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.drm_encoder, ptr %380, i32 0, i32 10
  %382 = load ptr, ptr %381, align 4
  %383 = getelementptr inbounds %struct.drm_encoder_funcs, ptr %382, i32 0, i32 1
  %384 = load ptr, ptr %383, align 4
  call void %384(ptr noundef %380) #16
  %385 = add nuw i32 %378, 1
  %386 = load i32, ptr %374, align 4
  %387 = icmp ult i32 %385, %386
  br i1 %387, label %377, label %388

388:                                              ; preds = %377, %373
  store i32 0, ptr %374, align 4
  br label %389

389:                                              ; preds = %388, %313, %292
  %390 = phi i32 [ %325, %388 ], [ 0, %292 ], [ 0, %313 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #16
  ret i32 %390
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_vbif_init_memtypes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_core_perf_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_kms_hw_destroy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @dpu_hw_intr_destroy(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8
  %7 = getelementptr inbounds %struct.msm_kms, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.msm_gem_address_space, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %12) #16
  %15 = load ptr, ptr %7, align 4
  tail call void @msm_gem_address_space_put(ptr noundef %15) #16
  store ptr null, ptr %7, align 4
  br label %16

16:                                               ; preds = %10, %6
  %17 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %18, i32 0, i32 16
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %38, %20
  %25 = phi ptr [ %39, %38 ], [ %18, %20 ]
  %26 = phi i32 [ %40, %38 ], [ 0, %20 ]
  %27 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %25, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr %struct.dpu_vbif_cfg, ptr %28, i32 %26, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 16, i32 %30
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call void @dpu_hw_vbif_destroy(ptr noundef nonnull %34) #16
  %37 = load ptr, ptr %17, align 8
  br label %38

38:                                               ; preds = %36, %32, %24
  %39 = phi ptr [ %37, %36 ], [ %25, %32 ], [ %25, %24 ]
  %40 = add nuw i32 %26, 1
  %41 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %39, i32 0, i32 16
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %24, label %44

44:                                               ; preds = %38, %20, %16
  %45 = phi ptr [ %18, %20 ], [ null, %16 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 15
  %47 = load i8, ptr %46, align 4, !range !25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 14
  %51 = tail call i32 @dpu_rm_destroy(ptr noundef %50) #16
  %52 = load ptr, ptr %17, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi ptr [ %52, %49 ], [ %45, %44 ]
  store i8 0, ptr %46, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @dpu_hw_catalog_deinit(ptr noundef nonnull %54) #16
  br label %57

57:                                               ; preds = %56, %53
  store ptr null, ptr %17, align 8
  %58 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 5
  %59 = getelementptr %struct.dpu_kms, ptr %0, i32 0, i32 5, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  tail call void @devm_iounmap(ptr noundef %65, ptr noundef nonnull %60) #16
  br label %66

66:                                               ; preds = %62, %57
  store ptr null, ptr %59, align 4
  %67 = load ptr, ptr %58, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  tail call void @devm_iounmap(ptr noundef %72, ptr noundef nonnull %67) #16
  br label %73

73:                                               ; preds = %69, %66
  store ptr null, ptr %58, align 8
  %74 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 17
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void @dpu_hw_mdp_destroy(ptr noundef nonnull %75) #16
  br label %78

78:                                               ; preds = %77, %73
  store ptr null, ptr %74, align 8
  %79 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void @devm_iounmap(ptr noundef %85, ptr noundef nonnull %80) #16
  br label %86

86:                                               ; preds = %82, %78
  store ptr null, ptr %79, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dpu_kms_global_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 128, i32 noundef 3264) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_kms_global_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_plane_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_bonded_dsi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_master_dsi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_encoder_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dp_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_intr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_vbif_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_rm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_catalog_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_mdp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_core_irq_preinstall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_irq_postinstall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_core_irq_uninstall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_crtc_vblank(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_vsync_time(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_prepare_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_crtc_commit_kickoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_encoder_wait_for_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_crtc_complete_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_destroy_pending_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_hw_util_get_log_mask_ptr() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_debugfs_vbif_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_debugfs_core_irq_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_debugfs_sspp_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dp_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_perf_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_danger_stats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dpu_debugfs_danger_stats_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_danger_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call fastcc void @_dpu_danger_signal_status(ptr noundef %0, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_danger_signal_status(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.dpu_danger_safe_status, align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @__func__._dpu_danger_signal_status, i32 noundef 62) #17
  br label %76

11:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %12 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 19
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %15 = tail call i32 @__pm_runtime_resume(ptr noundef %14, i32 noundef 4) #16
  br i1 %1, label %16, label %22

16:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.214) #16
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %17, i32 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  call void %19(ptr noundef %17, ptr noundef nonnull %3) #16
  br label %28

22:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.215) #16
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %23, i32 0, i32 4, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  call void %25(ptr noundef %23, ptr noundef nonnull %3) #16
  br label %28

28:                                               ; preds = %27, %22, %21, %16
  %29 = load ptr, ptr %12, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %31 = call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 4) #16
  %32 = load i8, ptr %3, align 1
  %33 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.216, i32 noundef %33) #16
  %34 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 0, i32 noundef %36) #16
  %37 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 1, i32 noundef %39) #16
  %40 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 2, i32 noundef %42) #16
  %43 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 3, i32 noundef %45) #16
  %46 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 4, i32 noundef %48) #16
  %49 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 5, i32 noundef %51) #16
  %52 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 7
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 6, i32 noundef %54) #16
  %55 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 8
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 7, i32 noundef %57) #16
  %58 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 9
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 8, i32 noundef %60) #16
  %61 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 10
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 9, i32 noundef %63) #16
  %64 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 11
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 10, i32 noundef %66) #16
  %67 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 12
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 11, i32 noundef %69) #16
  %70 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 13
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 12, i32 noundef %72) #16
  %73 = getelementptr inbounds %struct.dpu_danger_safe_status, ptr %3, i32 0, i32 1, i32 14
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.217, i32 noundef 13, i32 noundef %75) #16
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.157) #16
  br label %76

76:                                               ; preds = %28, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_safe_stats_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dpu_debugfs_safe_stats_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_safe_stats_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call fastcc void @_dpu_danger_signal_status(ptr noundef %0, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_plane_danger_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [40 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %5, i8 0, i32 40, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 18
  %9 = load i8, ptr %8, align 4, !range !25
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 40, ptr noundef nonnull @.str.218, i32 noundef %11) #16
  %13 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %12) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_plane_danger_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @kstrtouint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr @__drm_debug, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %12, label %20, label %16

16:                                               ; preds = %10
  br i1 %15, label %18, label %17

17:                                               ; preds = %16
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.219) #16
  br label %18

18:                                               ; preds = %17, %16
  call fastcc void @_dpu_plane_set_danger_state(ptr noundef %7, i1 noundef zeroext false)
  %19 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 18
  store i8 0, ptr %19, align 4
  br label %24

20:                                               ; preds = %10
  br i1 %15, label %22, label %21

21:                                               ; preds = %20
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.220) #16
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 18
  store i8 1, ptr %23, align 4
  call fastcc void @_dpu_plane_set_danger_state(ptr noundef %7, i1 noundef zeroext true)
  br label %24

24:                                               ; preds = %22, %18, %4
  %25 = phi i32 [ %8, %4 ], [ %2, %22 ], [ %2, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_plane_set_danger_state(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %67, label %8

8:                                                ; preds = %62, %2
  %9 = phi ptr [ %63, %62 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = getelementptr i8, ptr %9, i32 92
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 416
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %55, label %18

18:                                               ; preds = %14
  tail call void @dpu_plane_danger_signal_ctrl(ptr noundef %10, i1 noundef zeroext %1) #16
  %19 = load i32, ptr @__drm_debug, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %9, i32 44
  %24 = load i32, ptr %23, align 8
  %25 = load ptr, ptr %11, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, ptr %25, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.221, i32 noundef %24, i32 noundef %27, i32 noundef %29) #16
  %30 = load i32, ptr @__drm_debug, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %62, label %33

33:                                               ; preds = %22
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 16
  %44 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_plane_state, ptr %34, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.222, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #16
  br label %62

55:                                               ; preds = %14, %8
  %56 = load i32, ptr @__drm_debug, align 4
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %9, i32 44
  %61 = load i32, ptr %60, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.223, i32 noundef %61) #16
  br label %62

62:                                               ; preds = %59, %55, %33, %22, %18
  %63 = load ptr, ptr %9, align 4
  %64 = load ptr, ptr %3, align 8
  %65 = getelementptr inbounds %struct.drm_device, ptr %64, i32 0, i32 30, i32 18
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %67, label %8

67:                                               ; preds = %62, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_plane_danger_signal_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dss_put_clk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 21
  %5 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef 0) #16
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 21, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @msm_dss_enable_clk(ptr noundef %7, i32 noundef %8, i32 noundef 0) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @__func__.dpu_runtime_suspend, i32 noundef 1305, i32 noundef %9) #17
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %13
  %18 = phi i32 [ %22, %17 ], [ 0, %13 ]
  %19 = getelementptr %struct.dpu_kms, ptr %3, i32 0, i32 23, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @icc_set_bw(ptr noundef %20, i32 noundef 0, i32 noundef 0) #16
  %22 = add nuw i32 %18, 1
  %23 = load i32, ptr %14, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %17, label %25

25:                                               ; preds = %17, %13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 21
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 24
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !11

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1325, i32 noundef 9, ptr noundef null) #16
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %19, %14 ], [ 0, %13 ]
  %16 = getelementptr %struct.dpu_kms, ptr %3, i32 0, i32 23, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @icc_set_bw(ptr noundef %17, i32 noundef 0, i32 noundef 400000) #16
  %19 = add nuw i32 %15, 1
  %20 = load i32, ptr %7, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %14, label %22

22:                                               ; preds = %14, %10
  %23 = getelementptr inbounds %struct.dpu_kms, ptr %3, i32 0, i32 21, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %4, align 4
  %26 = tail call i32 @msm_dss_enable_clk(ptr noundef %24, i32 noundef %25, i32 noundef 1) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @__func__.dpu_runtime_resume, i32 noundef 1332, i32 noundef %26) #17
  br label %39

30:                                               ; preds = %22
  tail call void @dpu_vbif_init_memtypes(ptr noundef %3) #16
  %31 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %37, %34 ], [ %32, %30 ]
  %36 = getelementptr i8, ptr %35, i32 -4
  tail call void @dpu_encoder_virt_runtime_resume(ptr noundef %36) #16
  %37 = load ptr, ptr %35, align 4
  %38 = icmp eq ptr %37, %31
  br i1 %38, label %39, label %34

39:                                               ; preds = %34, %30, %28
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_enable_clk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_encoder_virt_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 795401}
!13 = !{!14}
!14 = distinct !{!14, !15, !"drm_plane_state_src: argument 0"}
!15 = distinct !{!15, !"drm_plane_state_src"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"drm_plane_state_dest: argument 0"}
!18 = distinct !{!18, !"drm_plane_state_dest"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"drm_plane_state_src: argument 0"}
!21 = distinct !{!21, !"drm_plane_state_src"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"drm_plane_state_dest: argument 0"}
!24 = distinct !{!24, !"drm_plane_state_dest"}
!25 = !{i8 0, i8 2}
!26 = !{i64 735975, i64 736002}
!27 = !{i64 736670, i64 736697, i64 736730, i64 736751, i64 736778, i64 736804}
!28 = !{i64 3942952}
!29 = !{i64 2156281629}
!30 = !{i64 2156281781}
!31 = !{i64 2156294650}
!32 = !{i64 2156294830}
!33 = !{i64 2156063742}
!34 = !{i64 2156063934}
