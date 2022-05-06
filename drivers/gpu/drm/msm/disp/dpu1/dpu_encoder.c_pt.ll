; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.dpu_encoder_phys = type { ptr, ptr, %struct.dpu_encoder_phys_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32, i32, i32, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [5 x %struct.dpu_encoder_irq] }
%struct.dpu_encoder_phys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dpu_encoder_irq = type { ptr, i32, i32, %struct.dpu_irq_callback }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_encoder_virt = type { %struct.drm_encoder, %struct.spinlock, i32, i8, i32, [4 x ptr], ptr, ptr, [2 x ptr], i8, ptr, ptr, %struct.mutex, [1 x i32], ptr, ptr, %struct.atomic_t, %struct.timer_list, %struct.timer_list, %struct.msm_display_info, i8, %struct.mutex, i32, %struct.delayed_work, %struct.kthread_work, %struct.msm_display_topology, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_display_info = type { i32, i32, i32, [2 x i32], i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_display_topology = type { i32, i32, i32, i32 }
%struct.split_pipe_cfg = type { i8, i32, i32, i8 }
%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_dither_cfg = type { i64, i32, i32, i32, i32, i32, [16 x i32] }
%struct.dpu_vsync_source_cfg = type { i32, i32, [8 x i32], i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
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
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [44 x i8] c"irq timeout id=%u, intf=%d, pp=%d, intr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid params\0A\00", align 1
@__func__.dpu_encoder_helper_wait_for_irq = private unnamed_addr constant [32 x i8] c"dpu_encoder_helper_wait_for_irq\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"encoder is disabled id=%u, intr=%d, irq=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"skip irq wait id=%u, intr=%d, irq=%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"id=%u, intr=%d, irq=%d, pp=%d, pending_cnt=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"irq not triggered id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"irq timeout id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\0A\00", align 1
@__func__.dpu_encoder_helper_register_irq = private unnamed_addr constant [32 x i8] c"dpu_encoder_helper_register_irq\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d pp%d invalid IRQ index:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d pp%d failed to register IRQ callback for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"duplicate unregister id=%u, intr=%d, irq=%d\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"unreg cb fail id=%u, intr=%d, irq=%d ret=%d\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"enc%d \0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), encoder %d\0A\00", align 1
@__func__.dpu_encoder_helper_split_config = private unnamed_addr constant [32 x i8] c"dpu_encoder_helper_split_config\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"enc%d enable %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder\0A\00", align 1
@__func__.dpu_encoder_register_frame_event_callback = private unnamed_addr constant [42 x i8] c"dpu_encoder_register_frame_event_callback\00", align 1
@__func__.dpu_encoder_trigger_kickoff_pending = private unnamed_addr constant [36 x i8] c"dpu_encoder_trigger_kickoff_pending\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\013[drm:%s:%d] [dpu error]crtc/crtc state object is NULL\0A\00", align 1
@__func__.dpu_encoder_vsync_time = private unnamed_addr constant [23 x i8] c"dpu_encoder_vsync_time\00", align 1
@.str.17 = private unnamed_addr constant [70 x i8] c"\013[drm:%s:%d] [dpu error]time to vsync should not be zero, vtotal=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"enc%d cur_line=%u vtotal=%u time_to_vsync=%u, cur_time=%lld, wakeup_time=%lld\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"enc_prepare_for_kickoff\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"encoder_kickoff\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__func__.dpu_encoder_prepare_commit = private unnamed_addr constant [27 x i8] c"dpu_encoder_prepare_commit\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"enc%d created\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder\0A\00", align 1
@__func__.dpu_encoder_setup = private unnamed_addr constant [18 x i8] c"dpu_encoder_setup\00", align 1
@dpu_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @dpu_encoder_destroy, ptr @dpu_encoder_late_register, ptr @dpu_encoder_early_unregister }, align 4
@dpu_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_encoder_virt_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dpu_encoder_virt_disable, ptr @dpu_encoder_virt_enable, ptr @dpu_encoder_virt_atomic_check }, align 4
@dpu_encoder_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"&dpu_enc->enc_lock\00", align 1
@dpu_encoder_init.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"&dpu_enc->rc_lock\00", align 1
@__func__.dpu_encoder_wait_for_event = private unnamed_addr constant [27 x i8] c"dpu_encoder_wait_for_event\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"\013[drm:%s:%d] [dpu error]enc%d unknown wait event %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"wait_for_completion_event\00", align 1
@__func__.dpu_encoder_get_intf_mode = private unnamed_addr constant [26 x i8] c"dpu_encoder_get_intf_mode\00", align 1
@__tracepoint_dpu_enc_irq_wait_success = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_dpu_enc_irq_register_success = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_irq_unregister_success = external dso_local global %struct.tracepoint, align 4
@.str.29 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid parameters\0A\00", align 1
@__func__._dpu_encoder_virt_enable_helper = private unnamed_addr constant [32 x i8] c"_dpu_encoder_virt_enable_helper\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid dpu encoder/master\0A\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]invalid param dpu_enc:%d or disp_info:%d\0A\00", align 1
@__func__._dpu_encoder_update_vsync_source = private unnamed_addr constant [33 x i8] c"_dpu_encoder_update_vsync_source\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid num phys enc %d/%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid mdptop\0A\00", align 1
@dither_matrix = internal unnamed_addr constant [16 x i32] [i32 15, i32 7, i32 13, i32 5, i32 3, i32 11, i32 1, i32 9, i32 12, i32 4, i32 14, i32 6, i32 0, i32 8, i32 2, i32 10], align 4
@__tracepoint_dpu_enc_vblank_cb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_frame_event_cb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_trigger_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_wait_event_timeout = external dso_local global %struct.tracepoint, align 4
@.str.34 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]get_line_count function not defined\0A\00", align 1
@__func__._dpu_encoder_calculate_linetime = private unnamed_addr constant [32 x i8] c"_dpu_encoder_calculate_linetime\00", align 1
@.str.35 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]pclk is 0, cannot calculate line time\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"\013[drm:%s:%d] [dpu error]pclk period is 0\0A\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]line time calculation is 0\0A\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"enc%d clk_rate=%lldkHz, clk_period=%d, linetime=%dns\0A\00", align 1
@__tracepoint_dpu_enc_prepare_kickoff = external dso_local global %struct.tracepoint, align 4
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@__func__.dpu_encoder_resource_control = private unnamed_addr constant [29 x i8] c"dpu_encoder_resource_control\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"enc%d sw_event:%d, work cancelled\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"id;%u, sw_event:%d, rc in ON state\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"id;%u, sw_event:%d, rc in state %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"kickoff\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"id:%d, sw_event:%d,rc:%d-unexpected\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"id:%d skip schedule work\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"frame done\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"id:%u, sw_event:%d, rc in %d state\0A\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"pre stop\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"id: %u, sw_event:%d, rc in OFF state\0A\00", align 1
@.str.50 = private unnamed_addr constant [37 x i8] c"id: %u, sw_event:%d, rc in state %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"id: %u, sw_event:%d, rc:%d !ON state\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"id:%u, sw_event:%d, rc:%d frame pending\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"id:%u, unexpected sw_event: %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@__tracepoint_dpu_enc_rc = external dso_local global %struct.tracepoint, align 4
@__func__._dpu_encoder_irq_control = private unnamed_addr constant [25 x i8] c"_dpu_encoder_irq_control\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"enc%d enable:%d\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]encoder master not set\0A\00", align 1
@__func__._dpu_encoder_resource_control_helper = private unnamed_addr constant [37 x i8] c"_dpu_encoder_resource_control_helper\00", align 1
@__tracepoint_dpu_enc_rc_helper = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_prepare_kickoff_reset = external dso_local global %struct.tracepoint, align 4
@.str.60 = private unnamed_addr constant [20 x i8] c"id:%u ctl %d reset\0A\00", align 1
@.str.61 = private unnamed_addr constant [53 x i8] c"\013[drm:%s:%d] [dpu error]enc%d ctl %d reset failure\0A\00", align 1
@__func__.dpu_encoder_helper_hw_reset = private unnamed_addr constant [28 x i8] c"dpu_encoder_helper_hw_reset\00", align 1
@__tracepoint_dpu_enc_kickoff = external dso_local global %struct.tracepoint, align 4
@.str.62 = private unnamed_addr constant [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid pingpong hw\0A\00", align 1
@__func__._dpu_encoder_trigger_flush = private unnamed_addr constant [27 x i8] c"_dpu_encoder_trigger_flush\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]missing trigger cb\0A\00", align 1
@__tracepoint_dpu_enc_trigger_flush = external dso_local global %struct.tracepoint, align 4
@.str.64 = private unnamed_addr constant [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid argument(s)\0A\00", align 1
@__func__._dpu_encoder_trigger_start = private unnamed_addr constant [27 x i8] c"_dpu_encoder_trigger_start\00", align 1
@__tracepoint_dpu_enc_early_kickoff = external dso_local global %struct.tracepoint, align 4
@.str.65 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), enc %d\0A\00", align 1
@__func__.dpu_encoder_setup_display = private unnamed_addr constant [26 x i8] c"dpu_encoder_setup_display\00", align 1
@dpu_encoder_parent_ops = internal constant %struct.dpu_encoder_virt_ops { ptr @dpu_encoder_vblank_callback, ptr @dpu_encoder_underrun_callback, ptr @dpu_encoder_frame_done_callback }, align 4
@.str.66 = private unnamed_addr constant [29 x i8] c"dsi_info->num_of_h_tiles %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"h_tile_instance %d = %d, split_role %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [67 x i8] c"\013[drm:%s:%d] [dpu error]enc%d could not get intf: type %d, id %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to add phys encs\0A\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"encoder_vblank_callback\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"encoder_underrun_callback\00", align 1
@__tracepoint_dpu_enc_underrun_cb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_frame_done_cb_not_busy = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_frame_done_cb = external dso_local global %struct.tracepoint, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.72 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]enc%d too many physical encoders %d\0A\00", align 1
@__func__.dpu_encoder_virt_add_phys_encs = private unnamed_addr constant [31 x i8] c"dpu_encoder_virt_add_phys_encs\00", align 1
@.str.73 = private unnamed_addr constant [60 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to init vid enc: %ld\0A\00", align 1
@.str.74 = private unnamed_addr constant [60 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to init cmd enc: %ld\0A\00", align 1
@__func__.dpu_encoder_frame_done_timeout = private unnamed_addr constant [31 x i8] c"dpu_encoder_frame_done_timeout\00", align 1
@.str.75 = private unnamed_addr constant [43 x i8] c"id:%u invalid timeout frame_busy_mask=%lu\0A\00", align 1
@.str.76 = private unnamed_addr constant [23 x i8] c"id:%u invalid timeout\0A\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"\013[drm:%s:%d] [dpu error]enc%d frame done timeout\0A\00", align 1
@__tracepoint_dpu_enc_frame_done_timeout = external dso_local global %struct.tracepoint, align 4
@__func__.dpu_encoder_vsync_event_handler = private unnamed_addr constant [32 x i8] c"dpu_encoder_vsync_event_handler\00", align 1
@.str.78 = private unnamed_addr constant [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc index\0A\00", align 1
@.str.79 = private unnamed_addr constant [61 x i8] c"\013[drm:%s:%d] [dpu error]event_thread not found for crtc:%d\0A\00", align 1
@__tracepoint_dpu_enc_vsync_event_work = external dso_local global %struct.tracepoint, align 4
@__func__.dpu_encoder_destroy = private unnamed_addr constant [20 x i8] c"dpu_encoder_destroy\00", align 1
@.str.80 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d expected 0 num_phys_encs not %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder or kms\0A\00", align 1
@__func__._dpu_encoder_init_debugfs = private unnamed_addr constant [26 x i8] c"_dpu_encoder_init_debugfs\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"encoder%u\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@_dpu_encoder_status_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_dpu_encoder_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.84 = private unnamed_addr constant [42 x i8] c"intf:%d    vsync:%8d     underrun:%8d    \00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"mode: video\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"mode: command\0A\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"mode: ???\0A\00", align 1
@__func__.dpu_encoder_virt_mode_set = private unnamed_addr constant [26 x i8] c"dpu_encoder_virt_mode_set\00", align 1
@.str.88 = private unnamed_addr constant [52 x i8] c"\013[drm:%s:%d] [dpu error]Failed to get global state\00", align 1
@.str.89 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to find attached connector\0A\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d invalid connector state\0A\00", align 1
@.str.91 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no pp block assigned at idx: %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [65 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no ctl block assigned at idx: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no intf block assigned at idx: %d\0A\00", align 1
@__tracepoint_dpu_enc_mode_set = external dso_local global %struct.tracepoint, align 4
@.str.94 = private unnamed_addr constant [48 x i8] c"\013[drm:%s:%d] [dpu error]enc%d timeout pending\0A\00", align 1
@__func__.dpu_encoder_virt_disable = private unnamed_addr constant [25 x i8] c"dpu_encoder_virt_disable\00", align 1
@.str.95 = private unnamed_addr constant [24 x i8] c"enc%d encoder disabled\0A\00", align 1
@__tracepoint_dpu_enc_disable = external dso_local global %struct.tracepoint, align 4
@.str.96 = private unnamed_addr constant [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d dpu resource control failed: %d\0A\00", align 1
@__func__.dpu_encoder_virt_enable = private unnamed_addr constant [24 x i8] c"dpu_encoder_virt_enable\00", align 1
@__tracepoint_dpu_enc_enable = external dso_local global %struct.tracepoint, align 4
@.str.97 = private unnamed_addr constant [76 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), drm_enc %d, crtc/conn state %d/%d\0A\00", align 1
@__func__.dpu_encoder_virt_atomic_check = private unnamed_addr constant [30 x i8] c"dpu_encoder_virt_atomic_check\00", align 1
@.str.98 = private unnamed_addr constant [62 x i8] c"\013[drm:%s:%d] [dpu error]enc%d mode unsupported, phys idx %d\0A\00", align 1
@__tracepoint_dpu_enc_atomic_check = external dso_local global %struct.tracepoint, align 4
@__tracepoint_dpu_enc_atomic_check_flags = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_report_irq_timeout(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ -1, %2 ]
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %12, i32 noundef %17, i32 noundef %1) #10
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = load ptr, ptr %0, align 4
  tail call void %21(ptr noundef %24, ptr noundef %0, i32 noundef 2) #10
  br label %25

25:                                               ; preds = %23, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = icmp eq ptr %2, null
  %6 = icmp ugt i32 %1, 4
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_encoder_helper_wait_for_irq, i32 noundef 271) #11
  br label %219

10:                                               ; preds = %3
  %11 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1
  %12 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drm_encoder, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ -1, %15 ]
  %23 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %22, i32 noundef %1, i32 noundef %24) #10
  br label %219

25:                                               ; preds = %10
  %26 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %27, 0
  %29 = load ptr, ptr %0, align 4
  %30 = icmp eq ptr %29, null
  br i1 %28, label %31, label %38

31:                                               ; preds = %25
  br i1 %30, label %35, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ %34, %32 ], [ -1, %31 ]
  %37 = load ptr, ptr %11, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %36, i32 noundef %1, ptr noundef %37) #10
  br label %219

38:                                               ; preds = %25
  br i1 %30, label %42, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ %41, %39 ], [ -1, %38 ]
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  %49 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load volatile i32, ptr %50, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef %1, i32 noundef %27, i32 noundef %48, i32 noundef %51) #10
  %52 = load ptr, ptr %0, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.drm_encoder, ptr %52, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %42
  %58 = phi i32 [ %56, %54 ], [ -1, %42 ]
  %59 = load i32, ptr %26, align 4
  %60 = tail call i64 @ktime_get() #10
  %61 = tail call i64 @llvm.abs.i64(i64 %60, i1 false) #10
  %62 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %61) #12, !srcloc !8
  %63 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %61, i64 %62, i32 0) #12, !srcloc !9
  %64 = extractvalue { i64, i32 } %63, 0
  %65 = lshr i64 %64, 18
  %66 = icmp slt i64 %60, 0
  %67 = sub nsw i64 0, %65
  %68 = select i1 %66, i64 %67, i64 %65
  %69 = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %2, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = add i64 %68, %70
  %72 = trunc i64 %70 to i32
  %73 = tail call i32 @__msecs_to_jiffies(i32 noundef %72) #10
  %74 = icmp ne i32 %73, 0
  %75 = load ptr, ptr %49, align 4
  br label %76

76:                                               ; preds = %142, %57
  %77 = phi ptr [ %143, %142 ], [ %75, %57 ]
  %78 = load volatile i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = xor i1 %79, true
  %81 = select i1 %80, i1 true, i1 %74
  %82 = select i1 %81, i32 %73, i32 1
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %79, i1 true, i1 %83
  br i1 %84, label %113, label %85

85:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #10, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #10
  %86 = load ptr, ptr %2, align 8
  %87 = call i32 @prepare_to_wait_event(ptr noundef %86, ptr noundef nonnull %4, i32 noundef 2) #10
  %88 = load ptr, ptr %49, align 4
  %89 = load volatile i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  %91 = xor i1 %90, true
  %92 = select i1 %91, i1 true, i1 %74
  %93 = select i1 %92, i32 %73, i32 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %90, i1 true, i1 %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %96, %85
  %97 = phi i32 [ %107, %96 ], [ %93, %85 ]
  %98 = call i32 @schedule_timeout(i32 noundef %97) #10
  %99 = load ptr, ptr %2, align 8
  %100 = call i32 @prepare_to_wait_event(ptr noundef %99, ptr noundef nonnull %4, i32 noundef 2) #10
  %101 = load ptr, ptr %49, align 4
  %102 = load volatile i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = xor i1 %103, true
  %105 = icmp ne i32 %98, 0
  %106 = select i1 %104, i1 true, i1 %105
  %107 = select i1 %106, i32 %98, i32 1
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %103, i1 true, i1 %108
  br i1 %109, label %110, label %96

110:                                              ; preds = %96, %85
  %111 = phi i32 [ %93, %85 ], [ %107, %96 ]
  %112 = load ptr, ptr %2, align 8
  call void @finish_wait(ptr noundef %112, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %113

113:                                              ; preds = %110, %76
  %114 = phi i32 [ %82, %76 ], [ %111, %110 ]
  %115 = call i64 @ktime_get() #10
  %116 = call i64 @llvm.abs.i64(i64 %115, i1 false) #10
  %117 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %116) #12, !srcloc !8
  %118 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %116, i64 %117, i32 0) #12, !srcloc !9
  %119 = extractvalue { i64, i32 } %118, 0
  %120 = lshr i64 %119, 18
  %121 = icmp slt i64 %115, 0
  %122 = sub nsw i64 0, %120
  %123 = select i1 %121, i64 %122, i64 %120
  %124 = load ptr, ptr %49, align 4
  %125 = load volatile i32, ptr %124, align 4
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_wait_event_timeout, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %113
  %129 = tail call ptr @llvm.thread.pointer() #10
  %130 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = lshr i32 %131, 5
  %133 = getelementptr i32, ptr @__cpu_online_mask, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %131, 31
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, %134
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %128
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %140 = call i32 @__traceiter_dpu_enc_wait_event_timeout(ptr noundef null, i32 noundef %58, i32 noundef %59, i32 noundef %114, i64 noundef %123, i64 noundef %71, i32 noundef %125) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %141 = load ptr, ptr %49, align 4
  br label %142

142:                                              ; preds = %139, %128, %113
  %143 = phi ptr [ %124, %113 ], [ %124, %128 ], [ %141, %139 ]
  %144 = load volatile i32, ptr %143, align 4
  %145 = icmp ne i32 %144, 0
  %146 = icmp eq i32 %114, 0
  %147 = select i1 %145, i1 %146, i1 false
  %148 = icmp slt i64 %123, %71
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %76, label %150

150:                                              ; preds = %142
  %151 = icmp slt i32 %114, 1
  br i1 %151, label %152, label %190

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 8
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %26, align 4
  %156 = call i32 @dpu_core_irq_read(ptr noundef %154, i32 noundef %155, i1 noundef zeroext true) #10
  %157 = icmp eq i32 %156, 0
  %158 = load ptr, ptr %0, align 4
  %159 = icmp eq ptr %158, null
  br i1 %157, label %177, label %160

160:                                              ; preds = %152
  br i1 %159, label %164, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.drm_encoder, ptr %158, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %160
  %165 = phi i32 [ %163, %161 ], [ -1, %160 ]
  %166 = load i32, ptr %26, align 4
  %167 = load ptr, ptr %44, align 4
  %168 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %167, i32 0, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, -1
  %171 = load ptr, ptr %49, align 4
  %172 = load volatile i32, ptr %171, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %165, i32 noundef %1, i32 noundef %166, i32 noundef %170, i32 noundef %172) #10
  %173 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !13
  %174 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 3, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = load i32, ptr %26, align 4
  call void %175(ptr noundef %0, i32 noundef %176) #10
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %173) #10, !srcloc !14
  br label %219

177:                                              ; preds = %152
  br i1 %159, label %181, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.drm_encoder, ptr %158, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  br label %181

181:                                              ; preds = %178, %177
  %182 = phi i32 [ %180, %178 ], [ -1, %177 ]
  %183 = load i32, ptr %26, align 4
  %184 = load ptr, ptr %44, align 4
  %185 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, -1
  %188 = load ptr, ptr %49, align 4
  %189 = load volatile i32, ptr %188, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %182, i32 noundef %1, i32 noundef %183, i32 noundef %187, i32 noundef %189) #10
  br label %219

190:                                              ; preds = %150
  %191 = load ptr, ptr %0, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.drm_encoder, ptr %191, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = phi i32 [ %195, %193 ], [ -1, %190 ]
  %198 = load i32, ptr %26, align 4
  %199 = load ptr, ptr %44, align 4
  %200 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %199, i32 0, i32 2
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %201, -1
  %203 = load volatile i32, ptr %143, align 4
  %204 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_wait_success, i32 0, i32 1), align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %196
  %207 = tail call ptr @llvm.thread.pointer() #10
  %208 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 2
  %209 = load i32, ptr %208, align 8
  %210 = lshr i32 %209, 5
  %211 = getelementptr i32, ptr @__cpu_online_mask, i32 %210
  %212 = load volatile i32, ptr %211, align 4
  %213 = and i32 %209, 31
  %214 = shl nuw i32 1, %213
  %215 = and i32 %214, %212
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %206
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %218 = call i32 @__traceiter_dpu_enc_irq_wait_success(ptr noundef null, i32 noundef %197, i32 noundef %1, i32 noundef %198, i32 noundef %202, i32 noundef %203) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  br label %219

219:                                              ; preds = %217, %206, %196, %181, %164, %35, %21, %8
  %220 = phi i32 [ -22, %8 ], [ -11, %21 ], [ 0, %35 ], [ 0, %164 ], [ -110, %181 ], [ 0, %196 ], [ 0, %206 ], [ 0, %217 ]
  ret i32 %220
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_read(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dpu_encoder_helper_register_irq, i32 noundef 344) #11
  br label %84

6:                                                ; preds = %2
  %7 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1
  %8 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = icmp eq ptr %0, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.drm_encoder, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %21, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  br label %27

27:                                               ; preds = %23, %13, %11
  %28 = phi i32 [ %19, %23 ], [ %19, %13 ], [ -1, %11 ]
  %29 = phi i32 [ %16, %23 ], [ %16, %13 ], [ -1, %11 ]
  %30 = phi i32 [ %26, %23 ], [ -1, %13 ], [ -1, %11 ]
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dpu_encoder_helper_register_irq, i32 noundef 351, i32 noundef %29, i32 noundef %28, i32 noundef %30, i32 noundef %9) #11
  br label %84

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 3
  %36 = tail call i32 @dpu_core_irq_register_callback(ptr noundef %34, i32 noundef %9, ptr noundef %35) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %32
  %39 = icmp eq ptr %0, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, -1
  %47 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %48, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  br label %54

54:                                               ; preds = %50, %40, %38
  %55 = phi i32 [ %46, %50 ], [ %46, %40 ], [ -1, %38 ]
  %56 = phi i32 [ %43, %50 ], [ %43, %40 ], [ -1, %38 ]
  %57 = phi i32 [ %53, %50 ], [ -1, %40 ], [ -1, %38 ]
  %58 = load ptr, ptr %7, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.dpu_encoder_helper_register_irq, i32 noundef 360, i32 noundef %56, i32 noundef %55, i32 noundef %57, ptr noundef %58) #11
  store i32 -22, ptr %8, align 4
  br label %84

60:                                               ; preds = %32
  %61 = load ptr, ptr %0, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.drm_encoder, ptr %61, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi i32 [ %65, %63 ], [ -1, %60 ]
  %68 = load i32, ptr %8, align 4
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_register_success, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = tail call ptr @llvm.thread.pointer() #10
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  %83 = tail call i32 @__traceiter_dpu_enc_irq_register_success(ptr noundef null, i32 noundef %67, i32 noundef %1, i32 noundef %68) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  br label %84

84:                                               ; preds = %82, %71, %66, %54, %27, %4
  %85 = phi i32 [ -22, %4 ], [ -22, %27 ], [ %36, %54 ], [ 0, %66 ], [ 0, %71 ], [ 0, %82 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %11, %9 ], [ -1, %6 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, i32 noundef %13, i32 noundef %1, i32 noundef %4) #10
  br label %53

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.dpu_encoder_phys, ptr %0, i32 0, i32 21, i32 %1, i32 3
  %18 = tail call i32 @dpu_core_irq_unregister_callback(ptr noundef %16, i32 noundef %4, ptr noundef %17) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.drm_encoder, ptr %21, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %25, %23 ], [ -1, %20 ]
  %28 = load i32, ptr %3, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %27, i32 noundef %1, i32 noundef %28, i32 noundef %18) #10
  br label %29

29:                                               ; preds = %26, %14
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.drm_encoder, ptr %30, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %34, %32 ], [ -1, %29 ]
  %37 = load i32, ptr %3, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_unregister_success, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  %52 = tail call i32 @__traceiter_dpu_enc_irq_unregister_success(ptr noundef null, i32 noundef %36, i32 noundef %1, i32 noundef %37) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  br label %53

53:                                               ; preds = %51, %40, %35, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_unregister_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dpu_encoder_get_vsync_count(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 16
  %9 = load volatile i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_get_linecount(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 %9(ptr noundef nonnull %5) #10
  br label %13

13:                                               ; preds = %11, %7, %3, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_get_hw_resources(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ %6, %4 ], [ -1, %2 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %8) #10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %1, i8 0, i32 32, i1 false)
  %9 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %22, %7
  %13 = phi i32 [ %23, %22 ], [ %10, %7 ]
  %14 = phi i32 [ %24, %22 ], [ 0, %7 ]
  %15 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %16, i32 0, i32 2, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  tail call void %18(ptr noundef %16, ptr noundef %1) #10
  %21 = load i32, ptr %9, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ %13, %12 ]
  %24 = add nuw i32 %14, 1
  %25 = icmp ult i32 %24, %23
  br i1 %25, label %12, label %26

26:                                               ; preds = %22, %7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_split_config(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.split_pipe_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %4 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7, %2
  %11 = icmp ne ptr %0, null
  %12 = zext i1 %11 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.dpu_encoder_helper_split_config, i32 noundef 488, i32 noundef %12) #11
  br label %49

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %8, i32 0, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 6
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %5, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  call void %24(ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  br label %49

27:                                               ; preds = %18
  store i8 1, ptr %3, align 4
  %28 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.split_pipe_cfg, ptr %3, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.split_pipe_cfg, ptr %3, i32 0, i32 2
  store i32 %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 2, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = tail call zeroext i1 %33(ptr noundef %0) #10
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.split_pipe_cfg, ptr %3, i32 0, i32 3
  store i8 1, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %35, %27
  %40 = load i32, ptr %19, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %44, i32 noundef 1) #10
  %45 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %5, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  call void %46(ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  br label %49

49:                                               ; preds = %48, %42, %39, %26, %22, %14, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_virt_runtime_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %8, i32 0, i32 2, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef nonnull %8) #10
  br label %15

15:                                               ; preds = %14, %10, %6
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %17, i32 0, i32 2, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void %21(ptr noundef nonnull %17) #10
  br label %24

24:                                               ; preds = %23, %19, %15
  tail call fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef %0)
  br label %25

25:                                               ; preds = %24, %1
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.dpu_hw_dither_cfg, align 8
  %3 = alloca %struct.dpu_vsync_source_cfg, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__._dpu_encoder_virt_enable_helper, i32 noundef 1091) #11
  br label %128

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__._dpu_encoder_virt_enable_helper, i32 noundef 1097) #11
  br label %128

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %12, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %22, i32 0, i32 4, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef nonnull %22) #10
  br label %29

29:                                               ; preds = %28, %24, %20, %16
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %3) #10
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %30, i8 0, i32 36, i1 false) #10
  %31 = icmp eq ptr %17, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__._dpu_encoder_update_vsync_source, i32 noundef 655, i32 noundef 1, i32 noundef 0) #11
  br label %84

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__._dpu_encoder_update_vsync_source, i32 noundef 660, i32 noundef %36, i32 noundef 2) #11
  br label %84

40:                                               ; preds = %34
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.msm_drm_private, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dpu_kms, ptr %45, i32 0, i32 17
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__._dpu_encoder_update_vsync_source, i32 noundef 671) #11
  br label %84

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %47, i32 0, i32 4, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = icmp eq i32 %36, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %60
  %63 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 0
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %3, i32 0, i32 2, i32 0
  store i32 %66, ptr %67, align 4
  %68 = icmp eq i32 %36, 1
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %71, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %3, i32 0, i32 2, i32 1
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load ptr, ptr %52, align 4
  br label %77

77:                                               ; preds = %75, %60
  %78 = phi ptr [ %76, %75 ], [ %53, %60 ]
  store i32 %36, ptr %3, align 4
  %79 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19, i32 4
  %80 = load i8, ptr %79, align 4, !range !21
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %3, i32 0, i32 3
  store i32 %82, ptr %83, align 4
  call void %78(ptr noundef nonnull %47, ptr noundef nonnull %3) #10
  br label %84

84:                                               ; preds = %77, %55, %51, %49, %38, %32
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %3) #10
  %85 = load i32, ptr %17, align 4
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92, !prof !22

91:                                               ; preds = %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1111, i32 noundef 9, ptr noundef null) #10
  br label %128

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.drm_connector, ptr %96, i32 0, i32 20, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = icmp eq i32 %98, 6
  %100 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %2, i32 0, i32 2
  %101 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %2, i32 0, i32 3
  %102 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %2, i32 0, i32 4
  %103 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %2, i32 0, i32 5
  %104 = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %2, i32 0, i32 6
  %105 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 0
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i32 96, i1 false) #10
  %109 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %106, i32 0, i32 5, i32 8
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  br i1 %99, label %113, label %114

113:                                              ; preds = %112
  store i32 6, ptr %100, align 4
  store i32 6, ptr %101, align 8
  store i32 6, ptr %102, align 4
  store i32 6, ptr %103, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %104, ptr noundef nonnull align 4 dereferenceable(64) @dither_matrix, i32 64, i1 false) #10
  call void %110(ptr noundef nonnull %106, ptr noundef nonnull %2) #10
  br label %115

114:                                              ; preds = %112
  call void %110(ptr noundef nonnull %106, ptr noundef null) #10
  br label %115

115:                                              ; preds = %114, %113, %108
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #10
  br label %116

116:                                              ; preds = %115, %92
  %117 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i32 96, i1 false) #10
  %121 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %118, i32 0, i32 5, i32 8
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  br i1 %99, label %126, label %125

125:                                              ; preds = %124
  call void %122(ptr noundef nonnull %118, ptr noundef null) #10
  br label %127

126:                                              ; preds = %124
  store i32 6, ptr %100, align 4
  store i32 6, ptr %101, align 8
  store i32 6, ptr %102, align 4
  store i32 6, ptr %103, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %104, ptr noundef nonnull align 4 dereferenceable(64) @dither_matrix, i32 64, i1 false) #10
  call void %122(ptr noundef nonnull %118, ptr noundef nonnull %2) #10
  br label %127

127:                                              ; preds = %126, %125, %120
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #10
  br label %128

128:                                              ; preds = %127, %116, %91, %84, %14, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_assign_crtc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !23

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1286, i32 noundef 9, ptr noundef null) #10
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 10
  store ptr %1, ptr %12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef %0, ptr noundef readnone %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %7, %5 ], [ -1, %3 ]
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vblank_cb, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #10
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %24 = tail call i32 @__traceiter_dpu_enc_vblank_cb(ptr noundef null, i32 noundef %9, i1 noundef zeroext %2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %25

25:                                               ; preds = %23, %12, %8
  %26 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 1
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #10
  %28 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #10
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %46, %31
  %36 = phi i32 [ %47, %46 ], [ %33, %31 ]
  %37 = phi i32 [ %48, %46 ], [ 0, %31 ]
  %38 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %39, i32 0, i32 2, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = tail call i32 %41(ptr noundef %39, i1 noundef zeroext %2) #10
  %45 = load i32, ptr %32, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi i32 [ %45, %43 ], [ %36, %35 ]
  %48 = add nuw i32 %37, 1
  %49 = icmp ult i32 %48, %47
  br i1 %49, label %35, label %50

50:                                               ; preds = %46, %31, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_register_frame_event_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_register_frame_event_callback, i32 noundef 1326) #11
  br label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_event_cb, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %25 = tail call i32 @__traceiter_dpu_enc_frame_event_cb(ptr noundef null, i32 noundef %10, i1 noundef zeroext %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %26

26:                                               ; preds = %24, %13, %8
  %27 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 1
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #10
  %29 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 14
  store ptr %1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 15
  store ptr %2, ptr %30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #10
  br label %31

31:                                               ; preds = %26, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_trigger_start(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %3) #10
  %8 = load ptr, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %12, %10 ], [ -1, %7 ]
  %15 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_start, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %31 = tail call i32 @__traceiter_dpu_enc_trigger_start(ptr noundef null, i32 noundef %14, i32 noundef %16) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  br label %32

32:                                               ; preds = %30, %19, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_trigger_kickoff_pending(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %9 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19, i32 1
  br label %12

10:                                               ; preds = %1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_trigger_kickoff_pending, i32 noundef 1585) #11
  br label %38

12:                                               ; preds = %34, %7
  %13 = phi i32 [ 0, %7 ], [ %35, %34 ]
  %14 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %17, i32 0, i32 9, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  tail call void %19(ptr noundef %17) #10
  br label %22

22:                                               ; preds = %21, %12
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %15, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, ptr %9, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %17, i32 0, i32 9, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void %31(ptr noundef %17) #10
  br label %34

34:                                               ; preds = %33, %29, %25, %22
  %35 = add nuw i32 %13, 1
  %36 = load i32, ptr %4, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %12, label %38

38:                                               ; preds = %34, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_vsync_time(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dpu_encoder_vsync_time, i32 noundef 1665) #11
  br label %99

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7
  %14 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %99, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %15, i32 0, i32 2, i32 21
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__._dpu_encoder_calculate_linetime, i32 noundef 1620) #11
  br label %99

23:                                               ; preds = %17
  %24 = load i32, ptr %13, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__._dpu_encoder_calculate_linetime, i32 noundef 1626) #11
  br label %99

29:                                               ; preds = %23
  %30 = add nsw i64 %25, 999999999
  %31 = icmp ult i64 %30, 4294967296
  br i1 %31, label %32, label %35, !prof !23

32:                                               ; preds = %29
  %33 = trunc i64 %30 to i32
  %34 = udiv i32 %33, %24
  br label %39

35:                                               ; preds = %29
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %30) #12, !srcloc !30
  %37 = extractvalue { i64, i64 } %36, 1
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i32 [ %34, %32 ], [ %38, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__._dpu_encoder_calculate_linetime, i32 noundef 1632) #11
  br label %99

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 4
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = mul i32 %40, %47
  %49 = udiv i32 %48, 1000
  %50 = icmp ult i32 %48, 1000
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__._dpu_encoder_calculate_linetime, i32 noundef 1642) #11
  br label %99

53:                                               ; preds = %44
  %54 = icmp eq ptr %0, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ %57, %55 ], [ -1, %53 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %59, i64 noundef %25, i32 noundef %40, i32 noundef %49) #10
  %60 = load ptr, ptr %14, align 4
  %61 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %60, i32 0, i32 2, i32 21
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %60) #10
  %64 = getelementptr inbounds %struct.drm_crtc_state, ptr %8, i32 0, i32 7, i32 9
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = icmp ult i32 %63, %66
  %68 = select i1 %67, i32 %63, i32 0
  %69 = sub i32 %66, %68
  %70 = mul i32 %69, %49
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.dpu_encoder_vsync_time, i32 noundef 1684, i32 noundef %66) #11
  br label %99

74:                                               ; preds = %58
  %75 = tail call i64 @ktime_get() #10
  %76 = zext i32 %70 to i64
  %77 = add i64 %75, %76
  store i64 %77, ptr %1, align 8
  br i1 %54, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i32 [ %80, %78 ], [ -1, %74 ]
  %83 = tail call i64 @llvm.abs.i64(i64 %75, i1 false) #10
  %84 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %83) #12, !srcloc !8
  %85 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %83, i64 %84, i32 0) #12, !srcloc !9
  %86 = extractvalue { i64, i32 } %85, 0
  %87 = lshr i64 %86, 18
  %88 = icmp slt i64 %75, 0
  %89 = sub nsw i64 0, %87
  %90 = select i1 %88, i64 %89, i64 %87
  %91 = tail call i64 @llvm.abs.i64(i64 %77, i1 false) #10
  %92 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %91) #12, !srcloc !8
  %93 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %91, i64 %92, i32 0) #12, !srcloc !9
  %94 = extractvalue { i64, i32 } %93, 0
  %95 = lshr i64 %94, 18
  %96 = icmp slt i64 %77, 0
  %97 = sub nsw i64 0, %95
  %98 = select i1 %96, i64 %97, i64 %95
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %82, i32 noundef %63, i32 noundef %66, i32 noundef %70, i64 noundef %90, i64 noundef %98) #10
  br label %99

99:                                               ; preds = %81, %72, %51, %42, %27, %21, %12, %10
  %100 = phi i32 [ -22, %72 ], [ 0, %81 ], [ -22, %10 ], [ -22, %27 ], [ -22, %42 ], [ -22, %51 ], [ -22, %21 ], [ -22, %12 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_prepare_for_kickoff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  %10 = tail call ptr @llvm.thread.pointer() #10
  br i1 %9, label %11, label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %22 = tail call i32 @__traceiter_dpu_enc_prepare_kickoff(ptr noundef null, i32 noundef %7) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  br label %23

23:                                               ; preds = %21, %11, %6
  %24 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 53
  %25 = load i32, ptr %24, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %39 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %25, ptr noundef nonnull @.str.19, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %40

40:                                               ; preds = %38, %28, %23
  %41 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %55, %40
  %45 = phi i32 [ %56, %55 ], [ %42, %40 ]
  %46 = phi i32 [ %61, %55 ], [ 0, %40 ]
  %47 = phi i1 [ %60, %55 ], [ false, %40 ]
  %48 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %46
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %49, i32 0, i32 2, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  tail call void %51(ptr noundef %49) #10
  %54 = load i32, ptr %41, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi i32 [ %54, %53 ], [ %45, %44 ]
  %57 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %49, i32 0, i32 14
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 4
  %60 = select i1 %59, i1 true, i1 %47
  %61 = add nuw i32 %46, 1
  %62 = icmp ult i32 %61, %56
  br i1 %62, label %44, label %63

63:                                               ; preds = %55, %40
  %64 = phi i1 [ false, %40 ], [ %60, %55 ]
  %65 = load i32, ptr %24, align 4
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %79 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %65, ptr noundef nonnull @.str.19, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %80

80:                                               ; preds = %78, %68, %63
  %81 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef 1)
  br i1 %64, label %82, label %144

82:                                               ; preds = %80
  br i1 %2, label %86, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ %85, %83 ], [ -1, %82 ]
  %88 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, i32 0, i32 1), align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %92 = load i32, ptr %91, align 8
  %93 = lshr i32 %92, 5
  %94 = getelementptr i32, ptr @__cpu_online_mask, i32 %93
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %92, 31
  %97 = shl nuw i32 1, %96
  %98 = and i32 %97, %95
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %101 = tail call i32 @__traceiter_dpu_enc_prepare_kickoff_reset(ptr noundef null, i32 noundef %87) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  br label %102

102:                                              ; preds = %100, %90, %86
  %103 = load i32, ptr %41, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %144, label %105

105:                                              ; preds = %140, %102
  %106 = phi i32 [ %141, %140 ], [ %103, %102 ]
  %107 = phi i32 [ %142, %140 ], [ 0, %102 ]
  %108 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %107
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %109, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %112, i32 0, i32 9, i32 10
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %140, label %116

116:                                              ; preds = %105
  %117 = icmp eq ptr %110, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.drm_encoder, ptr %110, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %116
  %122 = phi i32 [ %120, %118 ], [ -1, %116 ]
  %123 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %112, i32 0, i32 2
  %124 = load i32, ptr %123, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.60, i32 noundef %122, i32 noundef %124) #10
  %125 = load ptr, ptr %113, align 4
  %126 = tail call i32 %125(ptr noundef %112) #10
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %121
  br i1 %117, label %132, label %129

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.drm_encoder, ptr %110, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %128
  %133 = phi i32 [ %131, %129 ], [ -1, %128 ]
  %134 = load i32, ptr %123, align 4
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.dpu_encoder_helper_hw_reset, i32 noundef 1512, i32 noundef %133, i32 noundef %134) #11
  %136 = load ptr, ptr %110, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %136) #10
  br label %137

137:                                              ; preds = %132, %121
  %138 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %109, i32 0, i32 14
  store i32 3, ptr %138, align 4
  %139 = load i32, ptr %41, align 4
  br label %140

140:                                              ; preds = %137, %105
  %141 = phi i32 [ %106, %105 ], [ %139, %137 ]
  %142 = add nuw i32 %107, 1
  %143 = icmp ult i32 %142, %141
  br i1 %143, label %105, label %144

144:                                              ; preds = %140, %102, %80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %4, %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dpu_encoder_resource_control, i32 noundef 755) #11
  br label %283

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 20
  %21 = load i8, ptr %20, align 4, !range !21
  %22 = freeze i8 %21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  switch i32 %1, label %283 [
    i32 4, label %25
    i32 3, label %25
    i32 1, label %25
  ]

25:                                               ; preds = %24, %24, %24, %13
  %26 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ne i8 %22, 0
  %29 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 22
  %30 = load i32, ptr %29, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %25
  %34 = tail call ptr @llvm.thread.pointer() #10
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %45 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %27, i32 noundef %1, i1 noundef zeroext %28, i32 noundef %30, ptr noundef nonnull @.str.39) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %46

46:                                               ; preds = %44, %33, %25
  switch i32 %1, label %242 [
    i32 1, label %47
    i32 2, label %85
    i32 3, label %126
    i32 4, label %179
    i32 5, label %207
  ]

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 23
  %49 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %48) #10
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %51, i32 noundef 1) #10
  br label %52

52:                                               ; preds = %50, %47
  %53 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %53) #10
  %54 = load i32, ptr %29, align 4
  switch i32 %54, label %57 [
    i32 2, label %55
    i32 0, label %59
    i32 3, label %59
  ]

55:                                               ; preds = %52
  %56 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %56, i32 noundef 1) #10
  tail call void @mutex_unlock(ptr noundef %53) #10
  br label %283

57:                                               ; preds = %52
  %58 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef %58, i32 noundef 1, i32 noundef %54) #10
  tail call void @mutex_unlock(ptr noundef %53) #10
  br label %283

59:                                               ; preds = %52, %52
  %60 = xor i1 %19, true
  %61 = icmp eq i32 %54, 3
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call fastcc void @_dpu_encoder_irq_control(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %65

64:                                               ; preds = %59
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %65

65:                                               ; preds = %64, %63
  store i32 2, ptr %29, align 4
  %66 = load i32, ptr %26, align 4
  %67 = load i8, ptr %20, align 4, !range !21
  %68 = icmp ne i8 %67, 0
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = tail call ptr @llvm.thread.pointer() #10
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %83 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %66, i32 noundef 1, i1 noundef zeroext %68, i32 noundef 2, ptr noundef nonnull @.str.43) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %84

84:                                               ; preds = %82, %71, %65
  tail call void @mutex_unlock(ptr noundef %53) #10
  br label %263

85:                                               ; preds = %46
  %86 = load i32, ptr %29, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %89, i32 noundef 2, i32 noundef %86) #10
  br label %283

90:                                               ; preds = %85
  %91 = load ptr, ptr %8, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.dpu_crtc, ptr %91, i32 0, i32 13
  %95 = load volatile i32, ptr %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %98) #10
  br label %283

99:                                               ; preds = %93, %90
  %100 = getelementptr inbounds %struct.msm_drm_private, ptr %15, i32 0, i32 22
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 23
  %103 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 26
  %104 = load i32, ptr %103, align 4
  %105 = tail call i32 @__msecs_to_jiffies(i32 noundef %104) #10
  %106 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %101, ptr noundef %102, i32 noundef %105) #10
  %107 = load i32, ptr %26, align 4
  %108 = load i8, ptr %20, align 4, !range !21
  %109 = icmp ne i8 %108, 0
  %110 = load i32, ptr %29, align 4
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %263

113:                                              ; preds = %99
  %114 = tail call ptr @llvm.thread.pointer() #10
  %115 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = lshr i32 %116, 5
  %118 = getelementptr i32, ptr @__cpu_online_mask, i32 %117
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %116, 31
  %121 = shl nuw i32 1, %120
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %263, label %124

124:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %125 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %107, i32 noundef 2, i1 noundef zeroext %109, i32 noundef %110, ptr noundef nonnull @.str.46) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %263

126:                                              ; preds = %46
  %127 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 23
  %128 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %127) #10
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %130, i32 noundef 3) #10
  br label %131

131:                                              ; preds = %129, %126
  %132 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %132) #10
  %133 = load i32, ptr %29, align 4
  %134 = xor i1 %19, true
  %135 = icmp eq i32 %133, 3
  %136 = select i1 %134, i1 %135, i1 false
  br i1 %136, label %137, label %156

137:                                              ; preds = %131
  %138 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %138, i32 noundef 1) #10
  %139 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %152, %137
  %143 = phi i32 [ %153, %152 ], [ %140, %137 ]
  %144 = phi i32 [ %154, %152 ], [ 0, %137 ]
  %145 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %144
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %146, i32 0, i32 2, i32 18
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %142
  tail call void %148(ptr noundef %146, i1 noundef zeroext true) #10
  %151 = load i32, ptr %139, align 4
  br label %152

152:                                              ; preds = %150, %142
  %153 = phi i32 [ %151, %150 ], [ %143, %142 ]
  %154 = add nuw i32 %144, 1
  %155 = icmp ult i32 %154, %153
  br i1 %155, label %142, label %159

156:                                              ; preds = %131
  switch i32 %133, label %159 [
    i32 0, label %157
    i32 3, label %157
  ]

157:                                              ; preds = %156, %156
  %158 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.47, i32 noundef %158, i32 noundef 3, i32 noundef %133) #10
  tail call void @mutex_unlock(ptr noundef %132) #10
  br label %283

159:                                              ; preds = %156, %152, %137
  store i32 1, ptr %29, align 4
  %160 = load i32, ptr %26, align 4
  %161 = load i8, ptr %20, align 4, !range !21
  %162 = icmp ne i8 %161, 0
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %159
  %166 = tail call ptr @llvm.thread.pointer() #10
  %167 = getelementptr inbounds %struct.thread_info, ptr %166, i32 0, i32 2
  %168 = load i32, ptr %167, align 8
  %169 = lshr i32 %168, 5
  %170 = getelementptr i32, ptr @__cpu_online_mask, i32 %169
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %168, 31
  %173 = shl nuw i32 1, %172
  %174 = and i32 %173, %171
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %177 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %160, i32 noundef 3, i1 noundef zeroext %162, i32 noundef 1, ptr noundef nonnull @.str.48) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %178

178:                                              ; preds = %176, %165, %159
  tail call void @mutex_unlock(ptr noundef %132) #10
  br label %263

179:                                              ; preds = %46
  %180 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %180) #10
  %181 = load i32, ptr %29, align 4
  switch i32 %181, label %187 [
    i32 0, label %182
    i32 2, label %184
    i32 1, label %186
  ]

182:                                              ; preds = %179
  %183 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %183, i32 noundef 4) #10
  tail call void @mutex_unlock(ptr noundef %180) #10
  br label %283

184:                                              ; preds = %179
  %185 = load i32, ptr %26, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.50, i32 noundef %185, i32 noundef 4, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %180) #10
  br label %283

186:                                              ; preds = %179
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %187

187:                                              ; preds = %186, %179
  store i32 0, ptr %29, align 4
  %188 = load i32, ptr %26, align 4
  %189 = load i8, ptr %20, align 4, !range !21
  %190 = icmp ne i8 %189, 0
  %191 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %187
  %194 = tail call ptr @llvm.thread.pointer() #10
  %195 = getelementptr inbounds %struct.thread_info, ptr %194, i32 0, i32 2
  %196 = load i32, ptr %195, align 8
  %197 = lshr i32 %196, 5
  %198 = getelementptr i32, ptr @__cpu_online_mask, i32 %197
  %199 = load volatile i32, ptr %198, align 4
  %200 = and i32 %196, 31
  %201 = shl nuw i32 1, %200
  %202 = and i32 %201, %199
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %193
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %205 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %188, i32 noundef 4, i1 noundef zeroext %190, i32 noundef 0, ptr noundef nonnull @.str.51) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %206

206:                                              ; preds = %204, %193, %187
  tail call void @mutex_unlock(ptr noundef %180) #10
  br label %263

207:                                              ; preds = %46
  %208 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %208) #10
  %209 = load i32, ptr %29, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %26, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.52, i32 noundef %212, i32 noundef 5, i32 noundef %209) #10
  tail call void @mutex_unlock(ptr noundef %208) #10
  br label %283

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 13
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = load i32, ptr %26, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53, i32 noundef %218, i32 noundef 5, i32 noundef 2) #10
  tail call void @mutex_unlock(ptr noundef %208) #10
  br label %283

219:                                              ; preds = %213
  br i1 %19, label %221, label %220

220:                                              ; preds = %219
  tail call fastcc void @_dpu_encoder_irq_control(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %222

221:                                              ; preds = %219
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %222

222:                                              ; preds = %221, %220
  store i32 3, ptr %29, align 4
  %223 = load i32, ptr %26, align 4
  %224 = load i8, ptr %20, align 4, !range !21
  %225 = icmp ne i8 %224, 0
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %222
  %229 = tail call ptr @llvm.thread.pointer() #10
  %230 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 2
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 5
  %233 = getelementptr i32, ptr @__cpu_online_mask, i32 %232
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %231, 31
  %236 = shl nuw i32 1, %235
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %228
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %240 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %223, i32 noundef 5, i1 noundef zeroext %225, i32 noundef 3, ptr noundef nonnull @.str.54) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %241

241:                                              ; preds = %239, %228, %222
  tail call void @mutex_unlock(ptr noundef %208) #10
  br label %263

242:                                              ; preds = %46
  %243 = load i32, ptr %26, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.55, i32 noundef %243, i32 noundef %1) #10
  %244 = load i32, ptr %26, align 4
  %245 = load i8, ptr %20, align 4, !range !21
  %246 = icmp ne i8 %245, 0
  %247 = load i32, ptr %29, align 4
  %248 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %249 = icmp sgt i32 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %242
  %251 = tail call ptr @llvm.thread.pointer() #10
  %252 = getelementptr inbounds %struct.thread_info, ptr %251, i32 0, i32 2
  %253 = load i32, ptr %252, align 8
  %254 = lshr i32 %253, 5
  %255 = getelementptr i32, ptr @__cpu_online_mask, i32 %254
  %256 = load volatile i32, ptr %255, align 4
  %257 = and i32 %253, 31
  %258 = shl nuw i32 1, %257
  %259 = and i32 %258, %256
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %250
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %262 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %244, i32 noundef %1, i1 noundef zeroext %246, i32 noundef %247, ptr noundef nonnull @.str.56) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %263

263:                                              ; preds = %261, %250, %242, %241, %206, %178, %124, %113, %99, %84
  %264 = load i32, ptr %26, align 4
  %265 = load i8, ptr %20, align 4, !range !21
  %266 = icmp ne i8 %265, 0
  %267 = load i32, ptr %29, align 4
  %268 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %263
  %271 = tail call ptr @llvm.thread.pointer() #10
  %272 = getelementptr inbounds %struct.thread_info, ptr %271, i32 0, i32 2
  %273 = load i32, ptr %272, align 8
  %274 = lshr i32 %273, 5
  %275 = getelementptr i32, ptr @__cpu_online_mask, i32 %274
  %276 = load volatile i32, ptr %275, align 4
  %277 = and i32 %273, 31
  %278 = shl nuw i32 1, %277
  %279 = and i32 %278, %276
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %270
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %282 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %264, i32 noundef %1, i1 noundef zeroext %266, i32 noundef %267, ptr noundef nonnull @.str.57) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %283

283:                                              ; preds = %281, %270, %263, %217, %211, %184, %182, %157, %97, %88, %57, %55, %24, %11
  %284 = phi i32 [ 0, %211 ], [ 0, %217 ], [ 0, %182 ], [ -22, %184 ], [ 0, %157 ], [ -22, %88 ], [ 0, %97 ], [ 0, %55 ], [ -22, %57 ], [ -22, %11 ], [ 0, %24 ], [ 0, %263 ], [ 0, %270 ], [ 0, %281 ]
  ret i32 %284
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_kickoff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %5 = load i32, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %19 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %5, ptr noundef nonnull @.str.20, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %20

20:                                               ; preds = %18, %8, %1
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %24, %22 ], [ -1, %20 ]
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_kickoff, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  %40 = tail call i32 @__traceiter_dpu_enc_kickoff(ptr noundef null, i32 noundef %26) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  br label %41

41:                                               ; preds = %39, %29, %25
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_crtc, ptr %43, i32 0, i32 22
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_crtc_state, ptr %45, i32 0, i32 7
  %47 = tail call i32 @drm_mode_vrefresh(ptr noundef %46) #10
  %48 = sdiv i32 5000, %47
  %49 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 16
  store volatile i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 17
  %51 = load volatile i32, ptr @jiffies, align 64
  %52 = tail call i32 @__msecs_to_jiffies(i32 noundef %48) #10
  %53 = add i32 %52, %51
  %54 = tail call i32 @mod_timer(ptr noundef %50, i32 noundef %53) #10
  %55 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 1
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #10
  %57 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 13
  br label %62

62:                                               ; preds = %91, %60
  %63 = phi i32 [ 0, %60 ], [ %92, %91 ]
  %64 = phi i32 [ 0, %60 ], [ %93, %91 ]
  %65 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %66, i32 0, i32 14
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %91, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %66, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %66, i32 0, i32 10
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  tail call void @_set_bit(i32 noundef %64, ptr noundef %61) #10
  br label %77

77:                                               ; preds = %76, %70
  %78 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %66, i32 0, i32 2, i32 17
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = tail call zeroext i1 %79(ptr noundef %66) #10
  br i1 %82, label %84, label %83

83:                                               ; preds = %81, %77
  tail call fastcc void @_dpu_encoder_trigger_flush(ptr noundef %0, ptr noundef %66, i32 noundef 0) #10
  br label %91

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %72, i32 0, i32 9, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = tail call i32 %86(ptr noundef %72) #10
  %90 = or i32 %89, %63
  br label %91

91:                                               ; preds = %88, %84, %83, %62
  %92 = phi i32 [ %63, %62 ], [ %90, %88 ], [ %63, %84 ], [ %63, %83 ]
  %93 = add nuw i32 %64, 1
  %94 = load i32, ptr %57, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %62, label %96

96:                                               ; preds = %91
  %97 = icmp eq i32 %92, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call fastcc void @_dpu_encoder_trigger_flush(ptr noundef %0, ptr noundef nonnull %100, i32 noundef %92) #10
  br label %103

103:                                              ; preds = %102, %98, %96, %41
  %104 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__._dpu_encoder_trigger_start, i32 noundef 1444) #11
  br label %124

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %105, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__._dpu_encoder_trigger_start, i32 noundef 1449) #11
  br label %124

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %105, i32 0, i32 2, i32 16
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %105, i32 0, i32 14
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void %117(ptr noundef nonnull %105) #10
  br label %124

124:                                              ; preds = %123, %119, %115, %113, %107
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #10
  %125 = load i32, ptr %57, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %137, %124
  %128 = phi i32 [ %138, %137 ], [ %125, %124 ]
  %129 = phi i32 [ %139, %137 ], [ 0, %124 ]
  %130 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %129
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %131, i32 0, i32 2, i32 15
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  tail call void %133(ptr noundef %131) #10
  %136 = load i32, ptr %57, align 4
  br label %137

137:                                              ; preds = %135, %127
  %138 = phi i32 [ %128, %127 ], [ %136, %135 ]
  %139 = add nuw i32 %129, 1
  %140 = icmp ult i32 %139, %138
  br i1 %140, label %127, label %141

141:                                              ; preds = %137, %124
  %142 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 6
  br i1 %144, label %145, label %181

145:                                              ; preds = %141
  %146 = call i32 @dpu_encoder_vsync_time(ptr noundef %0, ptr noundef nonnull %2)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %181

148:                                              ; preds = %145
  br i1 %21, label %152, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  br label %152

152:                                              ; preds = %149, %148
  %153 = phi i32 [ %151, %149 ], [ -1, %148 ]
  %154 = load i64, ptr %2, align 8
  %155 = tail call i64 @llvm.abs.i64(i64 %154, i1 false) #10
  %156 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %155) #12, !srcloc !8
  %157 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %155, i64 %156, i32 0) #12, !srcloc !9
  %158 = extractvalue { i64, i32 } %157, 0
  %159 = lshr i64 %158, 18
  %160 = icmp slt i64 %154, 0
  %161 = sub nsw i64 0, %159
  %162 = select i1 %160, i64 %161, i64 %159
  %163 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_early_kickoff, i32 0, i32 1), align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %152
  %166 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  %176 = tail call i32 @__traceiter_dpu_enc_early_kickoff(ptr noundef null, i32 noundef %153, i64 noundef %162) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  br label %177

177:                                              ; preds = %175, %165, %152
  %178 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 18
  %179 = tail call i32 @nsecs_to_jiffies(i64 noundef %154) #10
  %180 = tail call i32 @mod_timer(ptr noundef %178, i32 noundef %179) #10
  br label %181

181:                                              ; preds = %177, %145, %141
  %182 = load i32, ptr %4, align 4
  %183 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %187 = load i32, ptr %186, align 8
  %188 = lshr i32 %187, 5
  %189 = getelementptr i32, ptr @__cpu_online_mask, i32 %188
  %190 = load volatile i32, ptr %189, align 4
  %191 = and i32 %187, 31
  %192 = shl nuw i32 1, %191
  %193 = and i32 %192, %190
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %185
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %196 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %182, ptr noundef nonnull @.str.20, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %197

197:                                              ; preds = %195, %185, %181
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_encoder_prepare_commit(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_prepare_commit, i32 noundef 1823) #11
  br label %23

9:                                                ; preds = %19, %3
  %10 = phi i32 [ %20, %19 ], [ %5, %3 ]
  %11 = phi i32 [ %21, %19 ], [ 0, %3 ]
  %12 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %13, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  tail call void %15(ptr noundef %13) #10
  %18 = load i32, ptr %4, align 4
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %10, %9 ], [ %18, %17 ]
  %21 = add nuw i32 %11, 1
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_setup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dpu_enc_phys_init_params, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.dpu_encoder_setup_display, i32 noundef 1988, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  br label %200

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 6
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %4, i32 12
  store i64 0, ptr %14, align 4
  store ptr %8, ptr %4, align 4
  %15 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %4, i32 0, i32 1
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %4, i32 0, i32 2
  store ptr @dpu_encoder_parent_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %4, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = load i32, ptr %2, align 4
  %20 = icmp eq i32 %19, 2
  %21 = select i1 %20, i32 10, i32 0
  %22 = icmp eq i32 %19, 6
  %23 = select i1 %22, i32 1, i32 %21
  %24 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !22

27:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 2009, i32 noundef 9, ptr noundef null) #10
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, ptr @__drm_debug, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %24, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dpu_caps, ptr %43, i32 0, i32 7
  %45 = load i8, ptr %44, align 2, !range !21
  %46 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 20
  store i8 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %48) #10
  %49 = load i32, ptr %24, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dpu_kms, ptr %8, i32 0, i32 3
  %53 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %4, i32 0, i32 4
  %54 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %55 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 4
  %56 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 7
  br label %62

57:                                               ; preds = %159, %155, %100, %47
  %58 = phi i32 [ 0, %47 ], [ -22, %100 ], [ %156, %155 ], [ 0, %159 ]
  %59 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %172, label %163

62:                                               ; preds = %159, %51
  %63 = phi i32 [ %49, %51 ], [ %161, %159 ]
  %64 = phi i32 [ 0, %51 ], [ %160, %159 ]
  %65 = getelementptr %struct.msm_display_info, ptr %2, i32 0, i32 3, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %63, 1
  %68 = icmp eq i32 %64, 0
  %69 = select i1 %68, i32 1, i32 2
  %70 = select i1 %67, i32 %69, i32 0
  store i32 %70, ptr %14, align 4
  %71 = load i32, ptr @__drm_debug, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.67, i32 noundef %64, i32 noundef %66, i32 noundef %70) #10
  br label %75

75:                                               ; preds = %74, %62
  %76 = load ptr, ptr %52, align 8
  %77 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %76, i32 0, i32 14
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %76, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %92, %80
  %84 = phi i32 [ 0, %80 ], [ %93, %92 ]
  %85 = getelementptr %struct.dpu_intf_cfg, ptr %82, i32 %84, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %23
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr %struct.dpu_intf_cfg, ptr %82, i32 %84, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, %66
  br i1 %91, label %96, label %92

92:                                               ; preds = %88, %83
  %93 = add nuw i32 %84, 1
  %94 = icmp eq i32 %93, %78
  br i1 %94, label %95, label %83

95:                                               ; preds = %92, %75
  store i32 8, ptr %53, align 4
  br label %100

96:                                               ; preds = %88
  %97 = getelementptr %struct.dpu_intf_cfg, ptr %82, i32 %84, i32 1
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %53, align 4
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %103

100:                                              ; preds = %96, %95
  %101 = load i32, ptr %54, align 4
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.dpu_encoder_setup_display, i32 noundef 2044, i32 noundef %101, i32 noundef %23, i32 noundef %66) #11
  br label %57

103:                                              ; preds = %96
  %104 = load i32, ptr %35, align 4
  %105 = load i32, ptr %54, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %105) #10
  %106 = load i32, ptr %55, align 4
  %107 = add i32 %106, -2
  %108 = icmp ult i32 %107, -4
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, ptr %54, align 4
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.dpu_encoder_virt_add_phys_encs, i32 noundef 1934, i32 noundef %110, i32 noundef %106) #11
  br label %155

112:                                              ; preds = %103
  %113 = and i32 %104, 1
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %112
  %116 = call ptr @dpu_encoder_phys_vid_init(ptr noundef nonnull %4) #10
  %117 = icmp eq ptr %116, null
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  %119 = or i1 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, ptr %54, align 4
  %122 = ptrtoint ptr %116 to i32
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.dpu_encoder_virt_add_phys_encs, i32 noundef 1943, i32 noundef %121, i32 noundef %122) #11
  br i1 %117, label %155, label %152

124:                                              ; preds = %115
  %125 = load i32, ptr %55, align 4
  %126 = getelementptr %struct.dpu_encoder_virt, ptr %1, i32 0, i32 5, i32 %125
  store ptr %116, ptr %126, align 4
  %127 = load i32, ptr %55, align 4
  %128 = add i32 %127, 1
  store i32 %128, ptr %55, align 4
  br label %129

129:                                              ; preds = %124, %112
  %130 = phi ptr [ %116, %124 ], [ null, %112 ]
  %131 = and i32 %104, 2
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %129
  %134 = call ptr @dpu_encoder_phys_cmd_init(ptr noundef nonnull %4) #10
  %135 = icmp eq ptr %134, null
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  %137 = or i1 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, ptr %54, align 4
  %140 = ptrtoint ptr %134 to i32
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.dpu_encoder_virt_add_phys_encs, i32 noundef 1956, i32 noundef %139, i32 noundef %140) #11
  br i1 %135, label %155, label %152

142:                                              ; preds = %133
  %143 = load i32, ptr %55, align 4
  %144 = getelementptr %struct.dpu_encoder_virt, ptr %1, i32 0, i32 5, i32 %143
  store ptr %134, ptr %144, align 4
  %145 = load i32, ptr %55, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %55, align 4
  br label %147

147:                                              ; preds = %142, %129
  %148 = phi ptr [ %134, %142 ], [ %130, %129 ]
  %149 = load i32, ptr %14, align 4
  %150 = icmp eq i32 %149, 2
  %151 = select i1 %150, ptr %56, ptr %13
  store ptr %148, ptr %151, align 4
  br label %159

152:                                              ; preds = %138, %120
  %153 = phi i32 [ %122, %120 ], [ %140, %138 ]
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152, %138, %120, %109
  %156 = phi i32 [ -22, %109 ], [ %153, %152 ], [ -22, %120 ], [ -22, %138 ]
  %157 = load i32, ptr %54, align 4
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.dpu_encoder_setup_display, i32 noundef 2053, i32 noundef %157) #11
  br label %57

159:                                              ; preds = %152, %147
  %160 = add nuw i32 %64, 1
  %161 = load i32, ptr %24, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %62, label %57

163:                                              ; preds = %163, %57
  %164 = phi i32 [ %169, %163 ], [ 0, %57 ]
  %165 = getelementptr %struct.dpu_encoder_virt, ptr %1, i32 0, i32 5, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %166, i32 0, i32 16
  store volatile i32 0, ptr %167, align 4
  %168 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %166, i32 0, i32 17
  store volatile i32 0, ptr %168, align 4
  %169 = add nuw i32 %164, 1
  %170 = load i32, ptr %59, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %163, label %172

172:                                              ; preds = %163, %57
  call void @mutex_unlock(ptr noundef %48) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %173 = icmp eq i32 %58, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 16
  store volatile i32 0, ptr %175, align 4
  %176 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 17
  call void @init_timer_key(ptr noundef %176, ptr noundef nonnull @dpu_encoder_frame_done_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %177 = load i32, ptr %2, align 4
  switch i32 %177, label %186 [
    i32 6, label %178
    i32 2, label %180
  ]

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 18
  call void @init_timer_key(ptr noundef %179, ptr noundef nonnull @dpu_encoder_vsync_event_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  br label %186

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.msm_display_info, ptr %2, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = getelementptr %struct.msm_drm_private, ptr %6, i32 0, i32 6, i32 %182
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 27
  store ptr %184, ptr %185, align 4
  br label %186

186:                                              ; preds = %180, %178, %174
  %187 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 23
  store i32 -32, ptr %187, align 4
  %188 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 23, i32 0, i32 1
  store volatile ptr %188, ptr %188, align 4
  %189 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 23, i32 0, i32 1, i32 1
  store ptr %188, ptr %189, align 4
  %190 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 23, i32 0, i32 2
  store ptr @dpu_encoder_off_work, ptr %190, align 4
  %191 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 23, i32 1
  call void @init_timer_key(ptr noundef %191, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %192 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 26
  store i32 58, ptr %192, align 4
  %193 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 24
  %194 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 24, i32 2
  store i64 0, ptr %194, align 4
  store volatile ptr %193, ptr %193, align 4
  %195 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 24, i32 0, i32 1
  store ptr %193, ptr %195, align 4
  %196 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 24, i32 1
  store ptr @dpu_encoder_vsync_event_work_handler, ptr %196, align 4
  %197 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 19
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %197, ptr noundef align 4 dereferenceable(24) %2, i32 24, i1 false)
  %198 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %199 = load i32, ptr %198, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %199) #10
  br label %203

200:                                              ; preds = %172, %10
  %201 = phi i32 [ -22, %10 ], [ %58, %172 ]
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.dpu_encoder_setup, i32 noundef 2148) #11
  br label %203

203:                                              ; preds = %200, %186
  %204 = phi i32 [ %201, %200 ], [ 0, %186 ]
  ret i32 %204
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_frame_done_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dpu_encoder_frame_done_timeout, i32 noundef 2075) #11
  br label %63

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11, %7
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %0, i32 -156
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ -1, %15 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef %21, i32 noundef %9) #10
  br label %63

22:                                               ; preds = %11
  %23 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #10, !srcloc !44
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %23) #10, !srcloc !45
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !46
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq ptr %2, null
  br i1 %26, label %28, label %34

28:                                               ; preds = %22
  br i1 %27, label %32, label %29

29:                                               ; preds = %28
  %30 = getelementptr i8, ptr %0, i32 -156
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ %31, %29 ], [ -1, %28 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %33) #10
  br label %63

34:                                               ; preds = %22
  br i1 %27, label %40, label %35

35:                                               ; preds = %34
  %36 = getelementptr i8, ptr %0, i32 -156
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.dpu_encoder_frame_done_timeout, i32 noundef 2088, i32 noundef %37) #11
  %39 = load i32, ptr %36, align 4
  br label %42

40:                                               ; preds = %34
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__.dpu_encoder_frame_done_timeout, i32 noundef 2088, i32 noundef -1) #11
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %39, %35 ], [ -1, %40 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_timeout, i32 0, i32 1), align 4
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  %58 = tail call i32 @__traceiter_dpu_enc_frame_done_timeout(ptr noundef null, i32 noundef %43, i32 noundef 2) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  br label %59

59:                                               ; preds = %57, %46, %42
  %60 = load ptr, ptr %12, align 4
  %61 = getelementptr i8, ptr %0, i32 -8
  %62 = load ptr, ptr %61, align 4
  tail call void %60(ptr noundef %62, i32 noundef 2) #10
  br label %63

63:                                               ; preds = %59, %32, %20, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_vsync_event_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -188
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -136
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5, %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dpu_encoder_vsync_event_handler, i32 noundef 1708) #11
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = icmp ugt i32 %13, 7
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.dpu_encoder_vsync_event_handler, i32 noundef 1715) #11
  br label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.msm_drm_private, ptr %19, i32 0, i32 27, i32 %13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @__func__.dpu_encoder_vsync_event_handler, i32 noundef 1721, i32 noundef %13) #11
  br label %26

24:                                               ; preds = %17
  %25 = tail call i32 @del_timer(ptr noundef %0) #10
  br label %26

26:                                               ; preds = %24, %22, %15, %9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_off_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -260
  %3 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %2, i32 noundef 5)
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -100
  %9 = load ptr, ptr %8, align 4
  tail call void %5(ptr noundef %9, i32 noundef 8) #10
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_vsync_event_work_handler(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr i8, ptr %0, i32 -304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !10
  %4 = call i32 @dpu_encoder_vsync_time(ptr noundef %3, ptr noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr i8, ptr %0, i32 -292
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %10, %8 ], [ -1, %6 ]
  %13 = load i64, ptr %2, align 8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vsync_event_work, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  %28 = tail call i32 @__traceiter_dpu_enc_vsync_event_work(ptr noundef null, i32 noundef %12, i64 noundef %13) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  br label %29

29:                                               ; preds = %27, %16, %11
  %30 = getelementptr i8, ptr %0, i32 -116
  %31 = tail call i32 @nsecs_to_jiffies(i64 noundef %13) #10
  %32 = tail call i32 @mod_timer(ptr noundef %30, i32 noundef %31) #10
  br label %33

33:                                               ; preds = %29, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_destroy, i32 noundef 449) #11
  br label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %7) #10
  %8 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %24, %5
  %13 = phi i32 [ %25, %24 ], [ %10, %5 ]
  %14 = phi i32 [ %26, %24 ], [ 0, %5 ]
  %15 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %16, i32 0, i32 2, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  tail call void %18(ptr noundef %16) #10
  %21 = load i32, ptr %9, align 4
  %22 = add i32 %21, -1
  store i32 %22, ptr %9, align 4
  store ptr null, ptr %15, align 4
  %23 = load i32, ptr %9, align 4
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi i32 [ %23, %20 ], [ %13, %12 ]
  %26 = add nuw i32 %14, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %12, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %6, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @__func__.dpu_encoder_destroy, i32 noundef 470, i32 noundef %31, i32 noundef %25) #11
  br label %33

33:                                               ; preds = %30, %28, %5
  store i32 0, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #10
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %0) #10
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 348, i32 noundef 3520) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @dpu_encoder_funcs, i32 noundef %1, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 4
  tail call void @devm_kfree(ptr noundef %11, ptr noundef nonnull %5) #10
  %12 = inttoptr i32 %8 to ptr
  br label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 11
  store ptr @dpu_encoder_helper_funcs, ptr %14, align 4
  %15 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %5, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %5, i32 0, i32 3
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %5, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull @dpu_encoder_init.__key) #10
  %18 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %5, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef nonnull @dpu_encoder_init.__key.24) #10
  br label %19

19:                                               ; preds = %13, %10, %2
  %20 = phi ptr [ %12, %10 ], [ %5, %13 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_wait_for_event(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_wait_for_event, i32 noundef 2192) #11
  br label %75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %8) #10
  %9 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %75, label %12

12:                                               ; preds = %6
  %13 = icmp ult i32 %1, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %71, %12
  %15 = phi i32 [ %72, %71 ], [ %10, %12 ]
  %16 = phi i32 [ %73, %71 ], [ 0, %12 ]
  %17 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %16
  %18 = load ptr, ptr %17, align 4
  switch i32 %1, label %23 [
    i32 0, label %19
    i32 1, label %21
  ]

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 2, i32 11
  br label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 2, i32 12
  br label %28

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 2, i32 13
  br label %28

25:                                               ; preds = %12
  %26 = load i32, ptr %7, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.dpu_encoder_wait_for_event, i32 noundef 2213, i32 noundef %26, i32 noundef %1) #11
  br label %75

28:                                               ; preds = %23, %21, %19
  %29 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %20, %19 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #10
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 53
  %35 = load i32, ptr %34, align 4
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %49 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %35, ptr noundef nonnull @.str.27, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %50

50:                                               ; preds = %48, %38, %32
  %51 = tail call i32 %30(ptr noundef %18) #10
  %52 = load i32, ptr %34, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %66 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %52, ptr noundef nonnull @.str.27, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %67

67:                                               ; preds = %65, %55, %50
  %68 = icmp eq i32 %51, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = load i32, ptr %9, align 4
  br label %71

71:                                               ; preds = %69, %28
  %72 = phi i32 [ %70, %69 ], [ %15, %28 ]
  %73 = add nuw i32 %16, 1
  %74 = icmp ult i32 %73, %72
  br i1 %74, label %14, label %75

75:                                               ; preds = %71, %67, %25, %6, %4
  %76 = phi i32 [ -22, %4 ], [ -22, %25 ], [ 0, %6 ], [ 0, %71 ], [ %51, %67 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_get_intf_mode(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_get_intf_mode, i32 noundef 2234) #11
  br label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  br label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %12, %9, %3
  %22 = phi i32 [ %11, %9 ], [ %20, %16 ], [ 0, %3 ], [ 0, %12 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_wait_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_register_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_unregister_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_vblank_cb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_event_cb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_trigger_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_wait_event_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_prepare_kickoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_irq_control(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._dpu_encoder_irq_control, i32 noundef 696) #11
  br label %27

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = zext i1 %1 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %8, i32 noundef %9) #10
  %10 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %23, %6
  %14 = phi i32 [ %24, %23 ], [ %11, %6 ]
  %15 = phi i32 [ %25, %23 ], [ 0, %6 ]
  %16 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %17, i32 0, i32 2, i32 18
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  tail call void %19(ptr noundef %17, i1 noundef zeroext %1) #10
  %22 = load i32, ptr %10, align 4
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ %22, %21 ], [ %14, %13 ]
  %25 = add nuw i32 %15, 1
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %13, label %27

27:                                               ; preds = %23, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_resource_control_helper(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ -1, %2 ]
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc_helper, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %28 = tail call i32 @__traceiter_dpu_enc_rc_helper(ptr noundef null, i32 noundef %13, i1 noundef zeroext %1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  br label %29

29:                                               ; preds = %27, %16, %12
  %30 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__._dpu_encoder_resource_control_helper, i32 noundef 726) #11
  br label %91

35:                                               ; preds = %29
  br i1 %1, label %36, label %63

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 19
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %40 = tail call i32 @__pm_runtime_resume(ptr noundef %39, i32 noundef 4) #10
  br i1 %8, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._dpu_encoder_irq_control, i32 noundef 696) #11
  br label %91

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %45, i32 noundef 1) #10
  %46 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %59, %43
  %50 = phi i32 [ %60, %59 ], [ %47, %43 ]
  %51 = phi i32 [ %61, %59 ], [ 0, %43 ]
  %52 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %53, i32 0, i32 2, i32 18
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  tail call void %55(ptr noundef %53, i1 noundef zeroext true) #10
  %58 = load i32, ptr %46, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = phi i32 [ %58, %57 ], [ %50, %49 ]
  %61 = add nuw i32 %51, 1
  %62 = icmp ult i32 %61, %60
  br i1 %62, label %49, label %91

63:                                               ; preds = %35
  br i1 %8, label %64, label %66

64:                                               ; preds = %63
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._dpu_encoder_irq_control, i32 noundef 696) #11
  br label %86

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.58, i32 noundef %68, i32 noundef 0) #10
  %69 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %82, %66
  %73 = phi i32 [ %83, %82 ], [ %70, %66 ]
  %74 = phi i32 [ %84, %82 ], [ 0, %66 ]
  %75 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %76, i32 0, i32 2, i32 18
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  tail call void %78(ptr noundef %76, i1 noundef zeroext false) #10
  %81 = load i32, ptr %69, align 4
  br label %82

82:                                               ; preds = %80, %72
  %83 = phi i32 [ %81, %80 ], [ %73, %72 ]
  %84 = add nuw i32 %74, 1
  %85 = icmp ult i32 %84, %83
  br i1 %85, label %72, label %86

86:                                               ; preds = %82, %66, %64
  %87 = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 19
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  %90 = tail call i32 @__pm_runtime_idle(ptr noundef %89, i32 noundef 4) #10
  br label %91

91:                                               ; preds = %86, %59, %43, %41, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_rc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_rc_helper(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_prepare_kickoff_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_kickoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_trigger_flush(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__._dpu_encoder_trigger_flush, i32 noundef 1412) #11
  br label %63

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %11, i32 0, i32 9, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__._dpu_encoder_trigger_flush, i32 noundef 1418) #11
  br label %63

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #10, !srcloc !44
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #10, !srcloc !54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !55
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !44
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !54
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !55
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %11, i32 0, i32 9, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %11, i32 noundef %2) #10
  br label %29

29:                                               ; preds = %28, %24, %17
  %30 = load ptr, ptr %12, align 4
  tail call void %30(ptr noundef %11) #10
  %31 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %11, i32 0, i32 9, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %11) #10
  br label %36

36:                                               ; preds = %34, %29
  %37 = phi i32 [ %35, %34 ], [ -1, %29 ]
  %38 = icmp eq ptr %0, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %41, %39 ], [ -1, %36 ]
  %44 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dpu_hw_ctl, ptr %11, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_flush, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %62 = tail call i32 @__traceiter_dpu_enc_trigger_flush(ptr noundef null, i32 noundef %43, i32 noundef %45, i32 noundef %22, i32 noundef %47, i32 noundef %2, i32 noundef %37) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !57
  br label %63

63:                                               ; preds = %61, %50, %42, %15, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_trigger_flush(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_early_kickoff(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_vblank_callback(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #10
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %9 = load i32, ptr %8, align 4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %23 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %9, ptr noundef nonnull @.str.70, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %24

24:                                               ; preds = %22, %12, %6
  %25 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 1
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @dpu_crtc_vblank_callback(ptr noundef nonnull %28) #10
  br label %31

31:                                               ; preds = %30, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  %32 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #10, !srcloc !44
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #10, !srcloc !58
  %34 = load i32, ptr %8, align 4
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %48 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %34, ptr noundef nonnull @.str.70, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %49

49:                                               ; preds = %47, %37, %31, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_underrun_callback(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %67, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %7 = load i32, ptr %6, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %21 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %7, ptr noundef nonnull @.str.71, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %22

22:                                               ; preds = %20, %10, %4
  %23 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #10, !srcloc !44
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #10, !srcloc !58
  %25 = load volatile i32, ptr %23, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %28) #10
  br label %29

29:                                               ; preds = %27, %22
  %30 = icmp eq ptr %0, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %33, %31 ], [ -1, %29 ]
  %36 = load volatile i32, ptr %23, align 4
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_underrun_cb, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !59
  %50 = tail call i32 @__traceiter_dpu_enc_underrun_cb(ptr noundef null, i32 noundef %35, i32 noundef %36) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  br label %51

51:                                               ; preds = %49, %39, %34
  %52 = load i32, ptr %6, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %66 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %52, ptr noundef nonnull @.str.71, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %67

67:                                               ; preds = %65, %55, %51, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_frame_done_callback(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %95, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %0, null
  %16 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  br label %41

17:                                               ; preds = %6
  %18 = icmp eq ptr %0, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ -1, %17 ]
  %24 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = tail call ptr @llvm.thread.pointer() #10
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %40 = tail call i32 @__traceiter_dpu_enc_frame_done_cb_not_busy(ptr noundef null, i32 noundef %23, i32 noundef %2, i32 noundef %25) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  br label %95

41:                                               ; preds = %70, %14
  %42 = phi i32 [ %12, %14 ], [ %71, %70 ]
  %43 = phi i32 [ 0, %14 ], [ %72, %70 ]
  %44 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  br i1 %15, label %50, label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %16, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ %49, %48 ], [ -1, %47 ]
  %52 = load i32, ptr %7, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %67 = tail call i32 @__traceiter_dpu_enc_frame_done_cb(ptr noundef null, i32 noundef %51, i32 noundef %43, i32 noundef %52) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  br label %68

68:                                               ; preds = %66, %55, %50
  tail call void @_clear_bit(i32 noundef %43, ptr noundef %7) #10
  %69 = load i32, ptr %11, align 4
  br label %70

70:                                               ; preds = %68, %41
  %71 = phi i32 [ %42, %41 ], [ %69, %68 ]
  %72 = add nuw i32 %43, 1
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %41, label %74

74:                                               ; preds = %70
  %75 = load i32, ptr %7, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 16
  store volatile i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 17
  %80 = tail call i32 @del_timer(ptr noundef %79) #10
  %81 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef 2)
  %82 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 14
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 15
  %87 = load ptr, ptr %86, align 4
  tail call void %83(ptr noundef %87, i32 noundef %2) #10
  br label %95

88:                                               ; preds = %3
  %89 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 15
  %94 = load ptr, ptr %93, align 4
  tail call void %90(ptr noundef %94, i32 noundef %2) #10
  br label %95

95:                                               ; preds = %92, %88, %85, %77, %74, %39, %28, %22, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_crtc_vblank_callback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_underrun_cb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_cb_not_busy(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_cb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_encoder_phys_vid_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_encoder_phys_cmd_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_vsync_event_work(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_late_register(ptr noundef %0) #0 {
  %2 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %2, i8 0, i32 12, i1 false) #10, !annotation !10
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @__func__._dpu_encoder_init_debugfs, i32 noundef 1877) #11
  br label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 12, ptr noundef nonnull @.str.82, i32 noundef %9) #10
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_minor, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @debugfs_create_dir(ptr noundef nonnull %2, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 11
  store ptr %16, ptr %17, align 4
  %18 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.83, i16 noundef zeroext 384, ptr noundef %16, ptr noundef %0, ptr noundef nonnull @_dpu_encoder_status_fops) #10
  %19 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %34, %7
  %23 = phi i32 [ %35, %34 ], [ %20, %7 ]
  %24 = phi i32 [ %36, %34 ], [ 0, %7 ]
  %25 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = load ptr, ptr %17, align 4
  %32 = call i32 %28(ptr noundef %26, ptr noundef %31) #10
  %33 = load i32, ptr %19, align 4
  br label %34

34:                                               ; preds = %30, %22
  %35 = phi i32 [ %23, %22 ], [ %33, %30 ]
  %36 = add nuw i32 %24, 1
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %22, label %38

38:                                               ; preds = %34, %7, %5
  %39 = phi i32 [ -22, %5 ], [ 0, %7 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_early_unregister(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  tail call void @debugfs_remove(ptr noundef %3) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_encoder_status_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @_dpu_encoder_status_show, ptr noundef %4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_encoder_status_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %4, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %26, %9 ], [ 0, %2 ]
  %11 = getelementptr %struct.dpu_encoder_virt, ptr %4, i32 0, i32 5, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %12, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %12, i32 0, i32 16
  %17 = load volatile i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %12, i32 0, i32 17
  %19 = load volatile i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.84, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  %20 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %12, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %22, ptr @.str.86, ptr @.str.87
  %24 = icmp eq i32 %21, 2
  %25 = select i1 %24, ptr @.str.85, ptr %23
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %25) #10
  %26 = add nuw i32 %10, 1
  %27 = load i32, ptr %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %9, label %29

29:                                               ; preds = %9, %2
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_mode_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x ptr], align 8
  %5 = alloca [2 x ptr], align 8
  %6 = alloca [2 x ptr], align 8
  %7 = alloca [2 x ptr], align 8
  %8 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  store i64 0, ptr %6, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 979) #11
  br label %195

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %14) #10
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dpu_kms, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 12
  %23 = tail call ptr @dpu_kms_get_existing_global_state(ptr noundef %19) #10
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = or i1 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 992) #11
  br label %195

29:                                               ; preds = %12
  %30 = load i32, ptr %13, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_mode_set, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #10
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %45 = tail call i32 @__traceiter_dpu_enc_mode_set(ptr noundef null, i32 noundef %30) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  br label %46

46:                                               ; preds = %44, %33, %29
  %47 = load ptr, ptr %22, align 4
  %48 = icmp eq ptr %47, %22
  br i1 %48, label %61, label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %57, %49 ], [ %47, %46 ]
  %51 = phi ptr [ %56, %49 ], [ null, %46 ]
  %52 = getelementptr i8, ptr %50, i32 -16
  %53 = getelementptr i8, ptr %50, i32 732
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %0
  %56 = select i1 %55, ptr %52, ptr %51
  %57 = load ptr, ptr %50, align 4
  %58 = icmp eq ptr %57, %22
  br i1 %58, label %59, label %49

59:                                               ; preds = %49
  %60 = icmp eq ptr %56, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %59, %46
  %62 = load i32, ptr %13, align 4
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 1003, i32 noundef %62) #11
  br label %195

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.drm_connector, ptr %56, i32 0, i32 52
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, ptr %13, align 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 1006, i32 noundef %69) #11
  br label %195

71:                                               ; preds = %64
  %72 = load ptr, ptr %0, align 4
  %73 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 30, i32 20
  %74 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 5
  br label %75

75:                                               ; preds = %79, %71
  %76 = phi ptr [ %73, %71 ], [ %77, %79 ]
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %73
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %77, i32 636
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.drm_crtc_state, ptr %81, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %74, align 4
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %75, label %88

88:                                               ; preds = %79, %75
  %89 = phi ptr [ %77, %79 ], [ %73, %75 ]
  %90 = getelementptr inbounds %struct.dpu_kms, ptr %19, i32 0, i32 14
  %91 = load i32, ptr %13, align 4
  %92 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %90, ptr noundef %23, i32 noundef %91, i32 noundef 4, ptr noundef nonnull %4, i32 noundef 2) #10
  %93 = load i32, ptr %13, align 4
  %94 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %90, ptr noundef %23, i32 noundef %93, i32 noundef 3, ptr noundef nonnull %5, i32 noundef 2) #10
  %95 = load i32, ptr %13, align 4
  %96 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %90, ptr noundef %23, i32 noundef %95, i32 noundef 2, ptr noundef nonnull %6, i32 noundef 2) #10
  %97 = load i32, ptr %13, align 4
  %98 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %90, ptr noundef %23, i32 noundef %97, i32 noundef 7, ptr noundef nonnull %7, i32 noundef 2) #10
  %99 = icmp sgt i32 %92, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %88
  %101 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 0
  store ptr null, ptr %101, align 4
  br label %109

102:                                              ; preds = %88
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 0
  store ptr %103, ptr %104, align 4
  %105 = icmp eq i32 %92, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x ptr], ptr %4, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  br label %109

109:                                              ; preds = %106, %102, %100
  %110 = phi ptr [ %108, %106 ], [ null, %102 ], [ null, %100 ]
  %111 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr i8, ptr %89, i32 636
  %113 = load ptr, ptr %112, align 4
  %114 = icmp sgt i32 %96, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %109
  %116 = add i32 %94, -1
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi i32 [ 0, %115 ], [ %130, %117 ]
  %119 = icmp slt i32 %118, %94
  %120 = select i1 %119, i32 %118, i32 %116
  %121 = getelementptr [2 x ptr], ptr %6, i32 0, i32 %118
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr %struct.dpu_crtc_state, ptr %113, i32 0, i32 7, i32 %118
  store ptr %122, ptr %123, align 4
  %124 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %120
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr %struct.dpu_crtc_state, ptr %113, i32 0, i32 7, i32 %118, i32 1
  store ptr %125, ptr %126, align 4
  %127 = getelementptr [2 x ptr], ptr %7, i32 0, i32 %118
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr %struct.dpu_crtc_state, ptr %113, i32 0, i32 7, i32 %118, i32 2
  store ptr %128, ptr %129, align 4
  %130 = add nuw nsw i32 %118, 1
  %131 = icmp eq i32 %130, %96
  br i1 %131, label %132, label %117

132:                                              ; preds = %117, %109
  %133 = getelementptr inbounds %struct.dpu_crtc_state, ptr %113, i32 0, i32 6
  store i32 %96, ptr %133, align 8
  %134 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %195, label %137

137:                                              ; preds = %191, %132
  %138 = phi i32 [ %192, %191 ], [ 0, %132 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  store i64 0, ptr %8, align 8, !annotation !10
  %139 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %138
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 8, i32 %138
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, ptr %13, align 4
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 1049, i32 noundef %145, i32 noundef %138) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %195

147:                                              ; preds = %137
  %148 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %138
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, ptr %13, align 4
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 1055, i32 noundef %152, i32 noundef %138) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %195

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 6
  store ptr %142, ptr %155, align 4
  %156 = load ptr, ptr %148, align 4
  %157 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 5
  store ptr %156, ptr %157, align 4
  %158 = load i32, ptr %13, align 4
  %159 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %90, ptr noundef %23, i32 noundef %158, i32 noundef 5, ptr noundef nonnull %8, i32 noundef 2) #10
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %154
  %162 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %138
  %163 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 12
  %164 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 7
  %165 = load i32, ptr %163, align 4
  br label %166

166:                                              ; preds = %173, %161
  %167 = phi i32 [ 0, %161 ], [ %174, %173 ]
  %168 = load ptr, ptr %162, align 4
  %169 = getelementptr inbounds %struct.dpu_hw_intf, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, %165
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store ptr %168, ptr %164, align 4
  br label %173

173:                                              ; preds = %172, %166
  %174 = add nuw nsw i32 %167, 1
  %175 = icmp eq i32 %174, %159
  br i1 %175, label %176, label %166

176:                                              ; preds = %173, %154
  %177 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 7
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i32, ptr %13, align 4
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.dpu_encoder_virt_mode_set, i32 noundef 1075, i32 noundef %181, i32 noundef %138) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  br label %195

183:                                              ; preds = %176
  %184 = load ptr, ptr %65, align 8
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 1
  store ptr %185, ptr %186, align 4
  %187 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %140, i32 0, i32 2, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  call void %188(ptr noundef %140, ptr noundef %1, ptr noundef %2) #10
  br label %191

191:                                              ; preds = %190, %183
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %192 = add nuw i32 %138, 1
  %193 = load i32, ptr %134, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %137, label %195

195:                                              ; preds = %191, %180, %151, %144, %132, %68, %61, %27, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ -1, %1 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %7) #10
  %8 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 3
  store i8 0, ptr %9, align 4
  br i1 %2, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %12, %10 ], [ -1, %6 ]
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_disable, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %29 = tail call i32 @__traceiter_dpu_enc_disable(ptr noundef null, i32 noundef %14) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  br label %30

30:                                               ; preds = %28, %17, %13
  %31 = tail call i32 @dpu_encoder_wait_for_event(ptr noundef %0, i32 noundef 1)
  %32 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef 3)
  %33 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %46, %30
  %37 = phi i32 [ %47, %46 ], [ %34, %30 ]
  %38 = phi i32 [ %48, %46 ], [ 0, %30 ]
  %39 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %40, i32 0, i32 2, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  tail call void %42(ptr noundef %40) #10
  %45 = load i32, ptr %33, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi i32 [ %45, %44 ], [ %37, %36 ]
  %48 = add nuw i32 %38, 1
  %49 = icmp ult i32 %48, %47
  br i1 %49, label %36, label %50

50:                                               ; preds = %46, %30
  %51 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #10, !srcloc !44
  %52 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %51) #10, !srcloc !45
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !46
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.dpu_encoder_virt_disable, i32 noundef 1210, i32 noundef %57) #11
  %59 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 17
  %60 = tail call i32 @del_timer_sync(ptr noundef %59) #10
  br label %61

61:                                               ; preds = %55, %50
  %62 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef 4)
  %63 = load i32, ptr %33, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %65, %61
  %66 = phi i32 [ %70, %65 ], [ 0, %61 ]
  %67 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %68, i32 0, i32 1
  store ptr null, ptr %69, align 4
  %70 = add nuw i32 %66, 1
  %71 = load i32, ptr %33, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %65, label %73

73:                                               ; preds = %65, %61
  br i1 %2, label %77, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ %76, %74 ], [ -1, %73 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.95, i32 noundef %78) #10
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ -1, %1 ]
  %13 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.drm_crtc_state, ptr %6, i32 0, i32 7, i32 6
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_enable, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %11
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %33 = tail call i32 @__traceiter_dpu_enc_enable(ptr noundef null, i32 noundef %12, i32 noundef %15, i32 noundef %18) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  br label %34

34:                                               ; preds = %32, %21, %11
  %35 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %36, i32 0, i32 2, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void %40(ptr noundef nonnull %36) #10
  br label %43

43:                                               ; preds = %42, %38, %34
  %44 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %45, i32 0, i32 2, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef nonnull %45) #10
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %0, i32 noundef 1)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  br i1 %7, label %59, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ %58, %56 ], [ -1, %55 ]
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.dpu_encoder_virt_enable, i32 noundef 1167, i32 noundef %60, i32 noundef %53) #11
  br label %64

62:                                               ; preds = %52
  tail call fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef %0)
  %63 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 3
  store i8 1, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %59
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_encoder_virt_atomic_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = zext i1 %4 to i32
  %11 = zext i1 %5 to i32
  %12 = zext i1 %7 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.dpu_encoder_virt_atomic_check, i32 noundef 586, i32 noundef %10, i32 noundef %11, i32 noundef %12) #11
  br label %169

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %16) #10
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.msm_drm_private, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 20
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @dpu_kms_get_global_state(ptr noundef %25) #10
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = ptrtoint ptr %26 to i32
  br label %169

30:                                               ; preds = %14
  %31 = load i32, ptr %15, align 4
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = tail call ptr @llvm.thread.pointer() #10
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %46 = tail call i32 @__traceiter_dpu_enc_atomic_check(ptr noundef null, i32 noundef %31) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  br label %47

47:                                               ; preds = %45, %34, %30
  %48 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %71, %47
  %52 = phi i32 [ %72, %71 ], [ 0, %47 ]
  %53 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %54, i32 0, i32 2, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %54, i32 0, i32 2, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = tail call zeroext i1 %60(ptr noundef %54, ptr noundef %22, ptr noundef %23) #10
  br i1 %63, label %71, label %67

64:                                               ; preds = %51
  %65 = tail call i32 %56(ptr noundef %54, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %65, %64 ], [ -22, %62 ]
  %69 = load i32, ptr %15, align 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.dpu_encoder_virt_atomic_check, i32 noundef 616, i32 noundef %69, i32 noundef %52) #11
  br label %75

71:                                               ; preds = %64, %62, %58
  %72 = add nuw i32 %52, 1
  %73 = load i32, ptr %48, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %51, label %75

75:                                               ; preds = %71, %67, %47
  %76 = phi i32 [ %68, %67 ], [ 0, %47 ], [ 0, %71 ]
  %77 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 0
  %78 = load ptr, ptr %77, align 4, !noalias !73
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i32
  %81 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 1
  %82 = load ptr, ptr %81, align 4, !noalias !73
  %83 = icmp ne ptr %82, null
  %84 = zext i1 %83 to i32
  %85 = add nuw nsw i32 %84, %80
  %86 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 2
  %87 = load ptr, ptr %86, align 4, !noalias !73
  %88 = icmp ne ptr %87, null
  %89 = zext i1 %88 to i32
  %90 = add nuw nsw i32 %85, %89
  %91 = getelementptr %struct.dpu_encoder_virt, ptr %0, i32 0, i32 5, i32 3
  %92 = load ptr, ptr %91, align 4, !noalias !73
  %93 = icmp ne ptr %92, null
  %94 = zext i1 %93 to i32
  %95 = add nuw nsw i32 %90, %94
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %110, label %97

97:                                               ; preds = %75
  %98 = getelementptr inbounds %struct.dpu_kms, ptr %21, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8, !noalias !73
  %100 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4, !noalias !73
  %102 = getelementptr inbounds %struct.dpu_caps, ptr %101, i32 0, i32 8
  %103 = load i8, ptr %102, align 1, !range !21, !noalias !73
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %107 = load i16, ptr %106, align 4, !noalias !73
  %108 = icmp ugt i16 %107, 1080
  %109 = select i1 %108, i32 2, i32 1
  br label %110

110:                                              ; preds = %105, %97, %75
  %111 = phi i32 [ %109, %105 ], [ 2, %75 ], [ 1, %97 ]
  %112 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %0, i32 0, i32 19
  %113 = load i32, ptr %112, align 4, !noalias !73
  %114 = icmp eq i32 %113, 6
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.dpu_kms, ptr %21, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8, !noalias !73
  %118 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %117, i32 0, i32 22
  %119 = load ptr, ptr %118, align 4, !noalias !73
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %117, i32 0, i32 21
  %123 = load i32, ptr %122, align 4, !noalias !73
  %124 = icmp ult i32 %123, %111
  %125 = select i1 %124, i32 0, i32 %111
  br label %126

126:                                              ; preds = %121, %115, %110
  %127 = phi i32 [ 0, %115 ], [ 0, %110 ], [ %125, %121 ]
  %128 = icmp eq i32 %76, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %131 = load i8, ptr %130, align 2
  %132 = and i8 %131, 14
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %129
  tail call void @dpu_rm_release(ptr noundef %26, ptr noundef nonnull %0) #10
  %135 = load i8, ptr %130, align 2
  %136 = and i8 %135, 4
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 2
  %140 = load i8, ptr %139, align 1, !range !21
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138, %134
  %143 = getelementptr inbounds %struct.dpu_kms, ptr %21, i32 0, i32 14
  %144 = insertvalue [4 x i32] poison, i32 %111, 0
  %145 = insertvalue [4 x i32] %144, i32 0, 1
  %146 = insertvalue [4 x i32] %145, i32 %95, 2
  %147 = insertvalue [4 x i32] %146, i32 %127, 3
  %148 = tail call i32 @dpu_rm_reserve(ptr noundef %143, ptr noundef %26, ptr noundef nonnull %0, ptr noundef nonnull %1, [4 x i32] %147) #10
  br label %149

149:                                              ; preds = %142, %138, %129, %126
  %150 = phi i32 [ %76, %126 ], [ %148, %142 ], [ 0, %138 ], [ 0, %129 ]
  %151 = load i32, ptr %15, align 4
  %152 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %153 = load i32, ptr %152, align 4
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check_flags, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = tail call ptr @llvm.thread.pointer() #10
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %168 = tail call i32 @__traceiter_dpu_enc_atomic_check_flags(ptr noundef null, i32 noundef %151, i32 noundef %153) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  br label %169

169:                                              ; preds = %167, %156, %149, %28, %9
  %170 = phi i32 [ %29, %28 ], [ -22, %9 ], [ %150, %149 ], [ %150, %156 ], [ %150, %167 ]
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_rm_get_assigned_resources(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_enable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_rm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_rm_reserve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, [4 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_atomic_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_atomic_check_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 763763, i64 763790}
!9 = !{i64 764458, i64 764485, i64 764518, i64 764539, i64 764566, i64 764592}
!10 = !{!"auto-init"}
!11 = !{i64 2156500701}
!12 = !{i64 2156500969}
!13 = !{i64 804489, i64 804550}
!14 = !{i64 807506}
!15 = !{i64 2156050215}
!16 = !{i64 2156050465}
!17 = !{i64 2156020451}
!18 = !{i64 2156020669}
!19 = !{i64 2156035017}
!20 = !{i64 2156035239}
!21 = !{i8 0, i8 2}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2156306883}
!25 = !{i64 2156307057}
!26 = !{i64 2156320084}
!27 = !{i64 2156320268}
!28 = !{i64 2156262760}
!29 = !{i64 2156262944}
!30 = !{i64 2148249594, i64 2148249874, i64 2148250208, i64 2148250542}
!31 = !{i64 2156122502}
!32 = !{i64 2156122672}
!33 = !{i64 2155974643}
!34 = !{i64 2155974835}
!35 = !{i64 2156135975}
!36 = !{i64 2156136157}
!37 = !{i64 2156352167}
!38 = !{i64 2156352403}
!39 = !{i64 2156105564}
!40 = !{i64 2156105718}
!41 = !{i64 2156426817}
!42 = !{i64 2156426995}
!43 = !{i64 2148688332}
!44 = !{i64 898811, i64 2148388782, i64 2148388808, i64 2148388855, i64 2148388877, i64 2148388905, i64 2148388925}
!45 = !{i64 907461, i64 907478, i64 907502, i64 907528, i64 907546}
!46 = !{i64 2148688676}
!47 = !{i64 2156440313}
!48 = !{i64 2156440503}
!49 = !{i64 2156413340}
!50 = !{i64 2156413524}
!51 = !{i64 2156293872}
!52 = !{i64 2156294046}
!53 = !{i64 2148498043}
!54 = !{i64 2148400881, i64 2148400913, i64 2148400942, i64 2148400976, i64 2148401007, i64 2148401030}
!55 = !{i64 2148498246}
!56 = !{i64 2156395680}
!57 = !{i64 2156396004}
!58 = !{i64 2148400197, i64 2148400223, i64 2148400252, i64 2148400286, i64 2148400317, i64 2148400340}
!59 = !{i64 2156249498}
!60 = !{i64 2156249674}
!61 = !{i64 2156365815}
!62 = !{i64 2156366033}
!63 = !{i64 2156380266}
!64 = !{i64 2156380476}
!65 = !{i64 2156080372}
!66 = !{i64 2156080528}
!67 = !{i64 2156092991}
!68 = !{i64 2156093145}
!69 = !{i64 2156236562}
!70 = !{i64 2156236754}
!71 = !{i64 2156067531}
!72 = !{i64 2156067695}
!73 = !{!74}
!74 = distinct !{!74, !75, !"dpu_encoder_get_topology: argument 0"}
!75 = distinct !{!75, !"dpu_encoder_get_topology"}
!76 = !{i64 2156276388}
!77 = !{i64 2156276578}
